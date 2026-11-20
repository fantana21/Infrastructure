set(CMAKE_SYSTEM_NAME Linux)

add_compile_options(-m32)
# The hand-written context switching assembly of RODOS's linux-x86 port is not position independent,
# so linking it into a PIE creates text relocations. -z notext allows them without a warning. We
# don't use -no-pie instead, because since binutils 2.45, ld then relaxes some GOT accesses to
# instructions that Valgrind cannot decode.
add_link_options(-m32 -Wl,-z,notext)
