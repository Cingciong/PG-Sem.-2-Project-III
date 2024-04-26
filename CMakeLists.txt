cmake_minimum_required(VERSION 3.22.1)

set(MODULE_NAME "a1")
project(pyBind)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_subdirectory(matplotplusplus)

include_directories(/usr/include/python3.8)
add_subdirectory(pybind11)
pybind11_add_module(${MODULE_NAME} main.cpp)
target_link_libraries(${MODULE_NAME} PUBLIC matplot)
set(CMAKE_CXX_STANDARD 17)