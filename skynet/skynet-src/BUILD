#!/usr/bin/env python
#coding:utf8

cc_binary(
    name = 'skynet-src',
    incs = ['/www/src/gmsrv/skynet/skynet-src', '/www/src/gmsrv/skynet/skynet-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/3rd/lua/include', '/www/src/gmsrv/skynet/skynet-src', '/www/src/gmsrv/skynet/skynet-src/include', '/www/src/gmsrv/skynet/3rd/jemalloc', '/www/src/gmsrv/skynet/3rd/jemalloc/include', '/www/src/gmsrv/skynet/3rd/jemalloc/include/jemalloc', '/www/src/gmsrv/skynet/3rd/jemalloc/include/jemalloc/include', '/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include'],

    srcs = ['skynet_handle.c', 'skynet_start.c', 'skynet_main.c', 'socket_server.c', 'skynet_error.c', 'skynet_daemon.c', 'skynet_module.c', 'skynet_env.c', 'malloc_hook.c', 'skynet_server.c', 'skynet_socket.c', 'skynet_harbor.c', 'skynet_timer.c', 'skynet_log.c', 'skynet_mq.c', 'skynet_monitor.c'],

    deps = ['#pthread', '#dl', '#m', '//skynet/3rd/lua:lua', '//skynet/3rd/jemalloc:jemalloc', '//skynet/lualib-src:skynet,cluster,bson,sharedata,stm,multicast,debugchannel,clientsocket,mongo,mysqlaux,socketdriver,crypt,memory,profile,netpack,seri'],
    defs=[],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-ggdb'],
    extra_linkflags=['-lrt', '-lm'],
    dynamic_link=True,
    export_dynamic=True,
    optimize='O2'
)
gen_rule(name = 'gen_skynet-src',
    outs=['skynet.bin'],
    srcs=[],
    deps=[],
    cmd="" 
) 

cc_library( name = 'skynet',
    incs = ['/www/src/gmsrv/skynet/skynet-src', '/www/src/gmsrv/skynet/skynet-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/3rd/lua/include', '/www/src/gmsrv/skynet/skynet-src', '/www/src/gmsrv/skynet/skynet-src/include', '/www/src/gmsrv/skynet/3rd/jemalloc', '/www/src/gmsrv/skynet/3rd/jemalloc/include', '/www/src/gmsrv/skynet/3rd/jemalloc/include/jemalloc', '/www/src/gmsrv/skynet/3rd/jemalloc/include/jemalloc/include', '/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include'],

    srcs = ['skynet_handle.c', 'skynet_start.c', 'skynet_main.c', 'socket_server.c', 'skynet_error.c', 'skynet_daemon.c', 'skynet_module.c', 'skynet_env.c', 'malloc_hook.c', 'skynet_server.c', 'skynet_socket.c', 'skynet_harbor.c', 'skynet_timer.c', 'skynet_log.c', 'skynet_mq.c', 'skynet_monitor.c'],  

    deps = ['#pthread', '#dl', '#m', '//skynet/3rd/lua:lua', '//skynet/3rd/jemalloc:jemalloc'],
    defs=[],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-ggdb'],
    extra_linkflags=['-lrt', '-lm'],
    link_all_symbols=False,
    deprecated=False,
    pre_build=False,
    prebuilt=False,
    always_optimize=False,
    optimize='O2'
)

gen_rule(name = 'gen_skynet',
    outs=[],
    srcs=[],
    deps=[],
    cmd=''
) 

###############################
# gen_rule: 需要填写 outs 才会被执行。 其中cmd 可含变量，运行时会被替换成srcs和outs中的对应值
#   $BUILD_DIR -- 可被替换为 build[64,32]_[release,debug] 输出目录
#   $DIR   -- path
#   $NAME, -- 参数 name
#   $SRCS, -- 参数 srcs
#   $OUTS, -- 参数 outs
#   $FIRST_SRC,
#   $FIRST_OUT,
# 注意！ cmd 中的双引号 ‘“’ 需要转义。

