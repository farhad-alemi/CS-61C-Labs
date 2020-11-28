cmake_minimum_required(VERSION 3.17)
project(lab09 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(lab09
        simd.c
        simd.h
        test_simd.c)
