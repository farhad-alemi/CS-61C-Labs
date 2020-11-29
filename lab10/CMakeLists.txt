cmake_minimum_required(VERSION 3.17)
project(lab10 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
#include_directories(libbmp)
#include_directories(libhttp)

add_executable(lab10
#        libbmp/libbmp.c
#        libbmp/libbmp.h
#        libhttp/libhttp.c
#        libhttp/libhttp.h
#        dotp.c
#        hello.c
#        omp_apps.c
#        omp_apps.h
        server.c
        server_utils.c
        server_utils.h
#        v_add.c
        )
