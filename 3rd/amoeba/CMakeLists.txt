add_definitions(-DDAM_IMPLEMENTATION)
if (LINUX)
    set(SHARED_FLAGS "-fPIC --shared")
elseif (UNIX)
    set(SHARED_FLAGS "-fPIC --shared -undefined dynamic_lookup")
endif ()

include_directories(./)

add_library(amoeba SHARED lua_amoeba.c)
set_target_properties(amoeba PROPERTIES OUTPUT_NAME "amoeba" PREFIX "" SUFFIX ".so")
set_target_properties(amoeba PROPERTIES COMPILE_FLAGS "-O2" LINK_FLAGS "${SHARED_FLAGS}")
