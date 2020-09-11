cmake_minimum_required(VERSION 3.17)
project(lab02)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(lab02
        bit_ops.c
        bit_ops.h
        lfsr.c
        lfsr.h
        make.txt
        Makefile
        test_bit_ops.c
        test_lfsr.c
        vector-test.c
        vector.c
        vector.h)
