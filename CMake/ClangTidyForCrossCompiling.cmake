# When cross-compiling, clang-tidy needs manual help with the target triple and the include paths to
# find the correct standard library headers.
if(CMAKE_CXX_CLANG_TIDY AND CMAKE_CXX_COMPILER MATCHES "arm-none-eabi")
    list(APPEND CMAKE_CXX_CLANG_TIDY --extra-arg=--target=arm-none-eabi)
    # Disable standard C++ include paths. We add the correct ones manually with -isystem below.
    list(APPEND CMAKE_CXX_CLANG_TIDY --extra-arg=-nostdinc++)
    set(implicit_includes
        ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES}
        ${CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES}
    )
    list(REMOVE_DUPLICATES implicit_includes)
    foreach(include IN LISTS implicit_includes)
        # Skip GCC's builtin headers because clang does not support the same builtins and
        # intrinsics. Clang provides its own so-called resource headers for that purpose, which
        # come bundled with the compiler not the standard library.
        if(include MATCHES "lib/gcc")
            continue()
        endif()
        list(APPEND CMAKE_CXX_CLANG_TIDY "--extra-arg=-isystem${include}")
    endforeach()
endif()
