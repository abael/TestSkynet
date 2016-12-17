cmake_minimum_required(VERSION 2.6)
project(gmsrv)

set(SHARED_FLAGS "-fPIC --shared")
set(EXPORT "-Wl,-E")

if (LINUX)
    message(STATUS "Now is LINUX")
elseif (WIN32)
    message(STATUS "Windows cannot support")
elseif (UNIX)
    message(STATUS "Now is UNIX-like OS's. Including Apple osx and CygWin")
    set(SHARED_FLAGS "${SHARED_FLAGS} -dynamiclib -Wl,-undefined,dynamic_lookup")
    set(EXPORT "")
endif ()

set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -Wall")
set(CMAKE_C_FLAGS_RELEASE "-g -O2 -Wall")

message(STATUS "CMAKE_C_FLAGS_DEBUG -> ${CMAKE_C_FLAGS_DEBUG}")
message(STATUS "CMAKE_C_FLAGS_RELEASE -> ${CMAKE_C_FLAGS_RELEASE}")

#set(CMAKE_C_FLAGS "-g -O2 -Wall")
#set(CMAKE_VERBOSE_MAKEFILE on)

find_package(Threads)

add_definitions(-DNOUSE_JEMALLOC)

if ("${CMAKE_C_COMPILER_ID}" STREQUAL "TinyCC")
    message(STATUS "using pthread lock")
    add_definitions(-DUSE_PTHREAD_LOCK)
endif ()

include_directories(./skynet/3rd/lua)
include_directories(./skynet/skynet-src)
include_directories(service-src)

add_subdirectory(./3rd/amoeba)
add_subdirectory(./skynet)
add_subdirectory(./client)

#aux_source_directory(csrc GMSRV_CSRCS)
add_library(package SHARED service-src/service_package.c)
set_target_properties(package PROPERTIES OUTPUT_NAME "package")
set_target_properties(package
        PROPERTIES PREFIX "" SUFFIX ".so" LINK_FLAGS "${SHARED_FLAGS}" LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/cservice")
