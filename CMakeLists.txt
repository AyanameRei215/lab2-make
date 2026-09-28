cmake_minimum_required(VERSION 3.10)
project(Calculator CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Статична бібліотека з calculator.cpp
add_library(calculator STATIC calculator.cpp)
target_include_directories(calculator PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(calculator PRIVATE -Wall -Wextra)

# Виконуваний файл, що лінкується з бібліотекою
add_executable(calc main.cpp)
target_link_libraries(calc PRIVATE calculator)
target_compile_options(calc PRIVATE -Wall -Wextra)
