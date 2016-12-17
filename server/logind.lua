local login = require "snax.loginserver"
local crypt = require "crypt"
local skynet = require "skynet"
local cluster = require "cluster"

local server = {
	host = skynet.getenv "login_address",
	port = tonumber(skynet.getenv "login_port"),
	multilogin = false,	-- disallow multilogin
	name = "login_master",
}

local server_list = {}
local user_online = {}
local user_login = {}

function server.auth_handler(token)
	-- the token is base64(user)@base64(server):base64(password)
	local user, server, password = token:match("([^@]+)@([^:]+):(.+)")
	user = crypt.base64decode(user)
	server = crypt.base64decode(server)
	password = crypt.base64decode(password)
	-- todo : auth user's real password
	assert(password == "password")
	return server, user
end

function server.login_handler(server, uid, secret)
	skynet.error(string.format("%s@%s is login, secret is %s", uid, server, crypt.hexencode(secret)))
	local gameserver = assert(server_list[server], "Unknown server")
	-- only one can login, because disallow multilogin
	local last = user_online[uid]
	if last then
		skynet.call(last.address, "lua", "kick", uid, last.subid)
	end
	if user_online[uid] then
		error(string.format("user %s is already online", uid))
	end

	local subid = tostring(skynet.call(gameserver, "lua", "login", uid, secret))
	user_online[uid] = {address = gameserver, subid = subid, server = server}
	return subid
end

local CMD = {}

function CMD.register_gate(server)
	print("start gateserver->"..server)
	local gateserver = cluster.query(server, "gateserver")
	local gateproxy = cluster.proxy(server, gateserver)
	server_list[server] = gateproxy
end

function CMD.logout(uid, subid)
	local u = user_online[uid]
	if u then
		skynet.error(string.format("%s@%s is logout", uid, u.server))
		user_online[uid] = nil
	end
end

function server.command_handler(command, ...)
	local f = assert(CMD[command])
	return f(...)
end

login(server)
