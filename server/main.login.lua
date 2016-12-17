local skynet = require "skynet"
local snax = require "snax"
local cluster = require "cluster"

skynet.start(function()
    skynet.error("gmsrv login service start")
    if not skynet.getenv "daemon" then
        local console = skynet.newservice("console")
    end
    skynet.newservice("debug_console", 8000)

    local loginserver = skynet.newservice("logind")
    cluster.register("loginserver", loginserver)

    cluster.open "login"

    skynet.exit()
end)
