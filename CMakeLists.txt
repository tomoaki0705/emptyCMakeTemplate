# minimum requirement
cmake_minimum_required(VERSION 3.6)

# solution
project(sampleSolution)

SET(TARGET_NAME sampleTarget)

# build TARGET_NAME from source code
add_executable(${TARGET_NAME} main.cpp)

# set TARGET_NAME as start up property
set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${TARGET_NAME})
