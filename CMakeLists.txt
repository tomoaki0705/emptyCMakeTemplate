# minimum requirement
cmake_minimum_required(VERSION 3.6)

# solution
project(sampleSolution)

# include gtest settings
include("cmake/gtest.cmake")
include("cmake/nlohmann_json.cmake")

SET(TARGET_NAME sampleTarget)
SET(TEST_NAME sampleTest)

# build TARGET_NAME from source code
cxx_test(${TEST_NAME} main.cpp)
add_executable(${TARGET_NAME} main.cpp)
target_include_directories(${TARGET_NAME} PUBLIC ${CMAKE_BINARY_DIR}/third-party/include)

if(MSVC)
    # set TARGET_NAME as start up property
    set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${TARGET_NAME})
endif(MSVC)

