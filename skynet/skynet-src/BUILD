#!/usr/bin/env python
#coding:utf8

cc_binary(
    name = 'skynet-src',
    incs = ['/www/src/AAA/TestSkynet/skynet/skynet-src', '/www/src/AAA/TestSkynet/skynet/skynet-src/include', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc/include', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc/include/jemalloc', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc/include/jemalloc/include', '/www/src/AAA/TestSkynet/skynet/3rd/lua', '/www/src/AAA/TestSkynet/skynet/3rd/lua/include', '/www/src/AAA/TestSkynet/skynet/service-src', '/www/src/AAA/TestSkynet/skynet/service-src/include', '/www/src/AAA/TestSkynet/skynet/lualib-src', '/www/src/AAA/TestSkynet/skynet/lualib-src/include'],

    srcs = ['skynet_handle.c', 'skynet_start.c', 'skynet_main.c', 'socket_server.c', 'skynet_error.c', 'skynet_daemon.c', 'skynet_module.c', 'skynet_env.c', 'malloc_hook.c', 'skynet_server.c', 'skynet_socket.c', 'skynet_harbor.c', 'skynet_timer.c', 'skynet_log.c', 'skynet_mq.c', 'skynet_monitor.c'],

    deps = ['#pthread', '#dl', '#rt', '#m', '//skynet/3rd/jemalloc:jemalloc', '//skynet/3rd/lua:lua', '//skynet/service-src:gate,harbor,snlua,logger', '//skynet/lualib-src:skynet,cluster,bson,sharedata,stm,multicast,debugchannel,clientsocket,mongo,mysqlaux,socketdriver,crypt,memory,profile,netpack,seri', '//skynet/lualib-src:gen_lualib-src','//skynet/service-src:gen_service-src', '//skynet/3rd/lua-md5:lua-md5', '//skynet/3rd/lpeg:lpeg'],
    defs=[],
    extra_libs= [],
    export_incs=[],
    warning=[],
    extra_cppflags=[ '-ggdb'],
    extra_linkflags=[],
    dynamic_link=True,
    export_dynamic=True,
    optimize='O2'
)
gen_rule(name = 'gen_skynet-src',
    outs=['*.bin'],
    srcs=[],
    deps=[':skynet-src'],
    cmd='''
    ln -svf $BUILD_DIR/skynet/3rd/lpeg/liblpeg.so  $BUILD_DIR/skynet/cservice/lpeg.so
# Example: cd $DIR && ./autogen.sh --with-jemalloc-prefix=je_ --disable-valgrind && cd - && cp -prf $DIR/include  $BUILD_DIR/skynet/3rd/jemalloc/

echo "CURR:$DIR, BUILD_DIR:$BUILD_DIR, BLADE_ROOT:$$(pwd), POSTACTION:/www/src/AAA/TestSkynet/BLADE_ROOT"
echo "EXEC: /www/src/AAA/TestSkynet/BLADE_ROOT.sh    bin    skynet/skynet-src    /www/src/AAA/TestSkynet" && . /www/src/AAA/TestSkynet/BLADE_ROOT.sh    bin    skynet/skynet-src    /www/src/AAA/TestSkynet && echo "DONE"

'''
) 
cc_library(
    name = 'skynet',
    incs = ['/www/src/AAA/TestSkynet/skynet/skynet-src', '/www/src/AAA/TestSkynet/skynet/skynet-src/include', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc/include', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc/include/jemalloc', '/www/src/AAA/TestSkynet/skynet/3rd/jemalloc/include/jemalloc/include', '/www/src/AAA/TestSkynet/skynet/3rd/lua', '/www/src/AAA/TestSkynet/skynet/3rd/lua/include', '/www/src/AAA/TestSkynet/skynet/service-src', '/www/src/AAA/TestSkynet/skynet/service-src/include', '/www/src/AAA/TestSkynet/skynet/lualib-src', '/www/src/AAA/TestSkynet/skynet/lualib-src/include'],

    srcs = ['skynet_handle.c', 'skynet_start.c', 'skynet_main.c', 'socket_server.c', 'skynet_error.c', 'skynet_daemon.c', 'skynet_module.c', 'skynet_env.c', 'malloc_hook.c', 'skynet_server.c', 'skynet_socket.c', 'skynet_harbor.c', 'skynet_timer.c', 'skynet_log.c', 'skynet_mq.c', 'skynet_monitor.c'],

    deps = ['#pthread', '#dl', '#rt', '#m', '//skynet/3rd/jemalloc:jemalloc', '//skynet/3rd/lua:lua'], 
    defs=[],
    extra_libs= [],
    export_incs=[],
    warning=[],
    extra_cppflags=[ '-ggdb'],
    extra_linkflags=[],
    dynamic_link=True,
    export_dynamic=True,
    optimize='O2'
)
