local skynet = require "skynet"
local snax = require "snax"
local cluster = require "cluster"

skynet.start(function()
    skynet.error("gmsrv login service start")
    if not skynet.getenv "daemon" then
        local console = skynet.newservice("console")
    end
    skynet.newservice("debug_console", 7000)
    snax.uniqueservice("roomkeeper")

    local loginserver = cluster.query("login", "loginserver")
    local gateserver = skynet.newservice("gated", loginserver)
    cluster.register("gateserver", gateserver)
    cluster.open(skynet.getenv "gate_name")

    skynet.call(gateserver, "lua", "open" , {
        address = skynet.getenv "gate_address",
        port = tonumber(skynet.getenv "gate_port"),
        maxclient = tonumber(skynet.getenv "max_client"),
        servername = skynet.getenv "gate_name",
    })

    skynet.exit()
end)
