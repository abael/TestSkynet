root       = "$ROOT/"
build_root = root.."build64_debug/"
thread     = 8
logger     = nil
logpath    = root.."run"
harbor     = 0
start      = "main.login"	-- main script
bootstrap  = "snlua bootstrap"	-- The service for bootstrap
luaservice = root.."skynet/service/?.lua;"..root.."server/?.lua"
lualoader  = root.."skynet/lualib/loader.lua"
cpath      = build_root.."skynet/cservice/?.so"
cluster    = root.."server/clustername.lua"
snax       = "server/?.lua"
lua_path   = root.."skynet/lualib/?.lua"
lua_cpath  = build_root.."skynet/luaclib/?.so;"..build_root.."skynet/cservice/?.so"

login_address = "$LOGIN_ADDRESS"
login_port    = "$LOGIN_PORT"
gate_address  = "$GATE_ADDRESS"
gate_port     = "$GATE_PORT"
gate_name     = "$GATE_NAME"	-- for multi gate
max_client    = "$MAX_CLIENT"
udp_host      = "$UDP_ADDRESS"

if $DAEMON then
    logger = root.."run/skynet.log"
    daemon = root.."run/skynet.pid"
end
