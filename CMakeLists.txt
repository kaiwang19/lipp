# project(lipp)
# cmake_minimum_required(VERSION 2.8)

# add_compile_options(--std=c++11 -O3 -Wall)

cmake_minimum_required(VERSION 3.12)
project(lipp)

set(CMAKE_CXX_STANDARD 14)

# Define the macro ‘DEBUG' in the debug mode
if(CMAKE_BUILD_TYPE STREQUAL Debug)        
    ADD_DEFINITIONS(-DDEBUG)               
endif()

if(MSVC)
    set(CMAKE_CXX_FLAGS "/O2 /arch:AVX2 /W1 /EHsc")
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
    set(CMAKE_CXX_FLAGS "-O3 -xHost")
else()
    # clang and gcc
    set(CMAKE_CXX_FLAGS "-O3 -march=native -Wall -Wextra")
endif()

include_directories(src/core)

# add_executable(example src/examples/example.cpp)
# add_executable(example_without_fmcd src/examples/example_without_fmcd.cpp)
# add_executable(example_bulk_load src/examples/example_bulk_load.cpp)
add_executable(throughput src/examples/throughput.cpp)
add_executable(throughput_lgn src/examples/throughput_lgn.cpp)
add_executable(throughput_ycsb src/examples/throughput_ycsb.cpp)

