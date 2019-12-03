# minimum requirement
cmake_minimum_required(VERSION 3.6)

# solution
project(sampleSolution)

# include gtest settings
include("cmake/gtest.cmake")

SET(TARGET_NAME sampleTarget)

# build TARGET_NAME from source code
cxx_test(${TARGET_NAME} main.cpp)

if(MSVC)
    # set TARGET_NAME as start up property
    set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${TARGET_NAME})
endif(MSVC)

