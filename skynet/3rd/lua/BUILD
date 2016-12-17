 
cc_binary(
    name = 'lua-bin',
    incs = ['/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/3rd/lua/include', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['liolib.c', 'linit.c', 'ldblib.c', 'lobject.c',  'luac.c', 'lfunc.c', 'lbaselib.c', 'loadlib.c', 'lbitlib.c', 'lzio.c', 'ldebug.c', 'lauxlib.c', 'ltm.c', 'lapi.c', 'ltable.c', 'lgc.c', 'lcode.c', 'lstring.c', 'lmathlib.c', 'loslib.c', 'lctype.c', 'lstate.c', 'lundump.c', 'llex.c', 'lopcodes.c', 'lparser.c', 'lstrlib.c', 'lutf8lib.c', 'lmem.c', 'lvm.c', 'ldo.c', 'lcorolib.c', 'ltablib.c', 'ldump.c'],  
    deps = ['#pthread', '#dl', '#readline', ':lua'],
    defs=['LUA_USE_LINUX'],
    extra_libs= [],
    export_incs=[],
    warning=[],
    extra_cppflags=[],
    extra_linkflags=['-ldl', '-lreadline'],
    dynamic_link=True,
    export_dynamic=True,
    optimize='O2'
)

cc_library(
    name = 'lua',
    incs = ['/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/3rd/lua/include', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['liolib.c', 'linit.c', 'ldblib.c', 'lobject.c',  'luac.c', 'lfunc.c', 'lbaselib.c', 'loadlib.c', 'lbitlib.c', 'lzio.c', 'ldebug.c', 'lauxlib.c', 'ltm.c', 'lapi.c', 'ltable.c', 'lgc.c', 'lcode.c', 'lstring.c', 'lmathlib.c', 'loslib.c', 'lctype.c', 'lstate.c', 'lundump.c', 'llex.c', 'lopcodes.c', 'lparser.c', 'lstrlib.c', 'lutf8lib.c', 'lmem.c', 'lvm.c', 'ldo.c', 'lcorolib.c', 'ltablib.c', 'ldump.c'],  
    deps = ['#pthread', '#dl', '#readline'],
    defs=['LUA_USE_LINUX'],
    extra_libs= [],
    export_incs=[],
    warning=[],
    extra_cppflags=[],
    extra_linkflags=['-ldl', '-lreadline'],
    optimize='O2'
)


