cmake_minimum_required(VERSION 3.9.0)

project(phy)

include_directories(include)
include_directories(../SFML-master/include)

add_library(phy STATIC
    src/window.cpp
    src/vector.cpp
)

target_link_libraries(phy sfml-graphics)