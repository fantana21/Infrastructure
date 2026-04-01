set(CMAKE_SYSTEM_NAME Linux)

add_compile_options(-m32)
# The -no-pie option is to suppress linker warnings about relocation in .text sections caused by
# RODOS. It probably comes from some hand-written assembly code in RODOS that is not position
# independent.
add_link_options(-m32 -no-pie)
