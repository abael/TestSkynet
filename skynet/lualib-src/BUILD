

gen_rule(name = 'gen_lualib-src',
    outs=['*.bin'],
    srcs=[],
    deps = ['#pthread', '#dl', '#rt', '#m', '//skynet/3rd/jemalloc:jemalloc', '//skynet/3rd/lua:lua', '//skynet/service-src:gate,harbor,snlua,logger', ':skynet,cluster,bson,sharedata,stm,multicast,debugchannel,clientsocket,mongo,mysqlaux,socketdriver,crypt,memory,profile,netpack,seri'],
    cmd='''set -f
    cd $BUILD_DIR/skynet && ln -svf lualib-src luaclib && cd -
    bash -c 'cd $BUILD_DIR/$DIR/  && for lib in lib*.so ; do so=$${lib:3} && ln -svf $${lib} $${so}; done && cd -' && wait 

# Example: cd $DIR && ./autogen.sh --with-jemalloc-prefix=je_ --disable-valgrind && cd - && cp -prf $DIR/include  $BUILD_DIR/skynet/3rd/jemalloc/

echo "CURR:$DIR, BUILD_DIR:$BUILD_DIR, BLADE_ROOT:$$(pwd), POSTACTION:/www/src/AAA/TestSkynet/BLADE_ROOT"
echo "EXEC: /www/src/AAA/TestSkynet/BLADE_ROOT.sh    bin    skynet/skynet-src    /www/src/AAA/TestSkynet" && DIR=$DIR BUILD_DIR=$BUILD_DIR . /www/src/AAA/TestSkynet/BLADE_ROOT.sh    bin    skynet/skynet-src    /www/src/AAA/TestSkynet && echo "DONE"

wait
'''
) 

cc_library(
    name = 'skynet',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-skynet.c', 'lua-seri.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'cluster',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-cluster.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'bson',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-bson.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'sharedata',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-sharedata.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'stm',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-stm.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'multicast',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-multicast.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'debugchannel',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-debugchannel.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'clientsocket',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-clientsocket.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'mongo',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-mongo.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'mysqlaux',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-mysqlaux.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'socketdriver',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-socket.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'crypt',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-crypt.c', 'lsha1.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'memory',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-memory.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'profile',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-profile.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'netpack',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-netpack.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)


 
cc_library(
    name = 'seri',
    incs = ['/www/src/gmsrv/skynet/lualib-src', '/www/src/gmsrv/skynet/lualib-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['lua-seri.c'],
    deps = ['#pthread', '#dl', '//skynet/3rd/lua:lua', '//skynet/skynet-src:skynet'],
    defs=['_MT', '_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=['-fPIC', '-rdynamic', '-shared'],
    extra_linkflags=[],
    link_all_symbols=True,
    optimize='O2'
)

