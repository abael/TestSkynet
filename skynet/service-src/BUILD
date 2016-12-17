gen_rule(name = 'gen_service-src',
    outs=['*.bin'],
    srcs=[],
    deps = ['#pthread', '#dl', '#rt', '#m', '//skynet/3rd/jemalloc:jemalloc', '//skynet/3rd/lua:lua', ':gate,harbor,snlua,logger'],
    cmd='''
    cd  $BUILD_DIR/skynet/ &&  ln -svf service-src cservice && cd - 
    bash -c 'cd $BUILD_DIR/$DIR/ && for lib in lib*.so ; do so=$${lib:3} && ln -svf $${lib} $${so}; done && cd -' && wait

# Example: cd $DIR && ./autogen.sh --with-jemalloc-prefix=je_ --disable-valgrind && cd - && cp -prf $DIR/include  $BUILD_DIR/skynet/3rd/jemalloc/

    echo "CURR:$DIR, BUILD_DIR:$BUILD_DIR, BLADE_ROOT:$$(pwd), POSTACTION:/www/src/AAA/TestSkynet/BLADE_ROOT"
    echo "EXEC: /www/src/AAA/TestSkynet/BLADE_ROOT.sh    bin    skynet/skynet-src    /www/src/AAA/TestSkynet" && . /www/src/AAA/TestSkynet/BLADE_ROOT.sh    bin    skynet/skynet-src    /www/src/AAA/TestSkynet && echo "DONE"

    wait
    '''
) 

cc_library(
    name= 'gate',
    incs = ['/www/src/gmsrv/skynet/service-src', '/www/src/gmsrv/skynet/service-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['service_gate.c'],  
    deps = ['#pthread', '#dl', '//skynet/skynet-src:skynet'],
    defs=['_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=[],
    extra_linkflags=[],
    optimize='O2'
)

cc_library(
    name= 'harbor',
    incs = ['/www/src/gmsrv/skynet/service-src', '/www/src/gmsrv/skynet/service-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['service_harbor.c'],  
    deps = ['#pthread', '#dl', '//skynet/skynet-src:skynet'],
    defs=['_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=[],
    extra_linkflags=[],
    optimize='O2'
)

cc_library(
    name= 'snlua',
    incs = ['/www/src/gmsrv/skynet/service-src', '/www/src/gmsrv/skynet/service-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['service_snlua.c'],  
    deps = ['#pthread', '#dl', '//skynet/skynet-src:skynet'],
    defs=['_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=[],
    extra_linkflags=[],
    optimize='O2'
)

cc_library(
    name= 'logger',
    incs = ['/www/src/gmsrv/skynet/service-src', '/www/src/gmsrv/skynet/service-src/include', '/www/src/gmsrv/skynet/3rd/lua', '/www/src/gmsrv/skynet/skynet-src'],
    srcs = ['service_logger.c'],  
    deps = ['#pthread', '#dl', '//skynet/skynet-src:skynet'],
    defs=['_GNU_SOURCE', '_REENTRANT'],
    export_incs=[],
    warning=[],
    extra_cppflags=[],
    extra_linkflags=[],
    optimize='O2'
)


