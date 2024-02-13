cmake_minimum_required(VERSION 3.9.0)

project(Physics_Animation)

set(CMAKE_CXX_STANDARD 23)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)

add_subdirectory(deps/SFML-master)
add_subdirectory(deps/phy)

include_directories(deps/phy/include)

add_executable(freeFall src/forces/freeFall.cpp)
add_executable(inclined_plane src/forces/inclined_plane.cpp)


target_link_libraries(freeFall sfml-graphics)
target_link_libraries(inclined_plane phy sfml-graphics)