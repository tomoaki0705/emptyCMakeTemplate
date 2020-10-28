
include(ExternalProject)

file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/third-party/include)
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/third-party/include/nlohmann)
file(DOWNLOAD https://github.com/nlohmann/json/releases/download/v3.9.1/json.hpp ${CMAKE_BINARY_DIR}/third-party/include/nlohmann/json.hpp)


