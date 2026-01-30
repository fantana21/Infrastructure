set(VCPKG_CRT_LINKAGE static) # Not used on embedded systems but required to be set
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE "${CMAKE_CURRENT_LIST_DIR}/../CMake/Toolchains/Va416xx.cmake")
# Hash all files included by the toolchain file
set(VCPKG_HASH_ADDITIONAL_FILES
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU-C.cmake"
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU-CXX.cmake"
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU.cmake"
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU-C-Va416xx.cmake"
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU-CXX-Va416xx.cmake"
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU-Va416xx.cmake"
    "${CMAKE_CURRENT_LIST_DIR}/../CMake/Platform/Generic-ELF-GNU-CortexM4.cmake"
)

set(RODOS_PORT_NAME va41620.eo_ce)
