set(CMAKE_SYSTEM_NAME Generic-ELF)
set(CMAKE_SYSTEM_PROCESSOR Va416xx)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(toolchain_prefix arm-none-eabi-)
set(CMAKE_ASM_COMPILER ${toolchain_prefix}gcc)
set(CMAKE_C_COMPILER ${toolchain_prefix}gcc)
set(CMAKE_CXX_COMPILER ${toolchain_prefix}g++)
set(CMAKE_SIZE ${toolchain_prefix}size)

# Add CMake directory to CMAKE_MODULE_PATH to find platform files
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/..")

# Never search for programs in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Search for libraries, includes and packages only in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
