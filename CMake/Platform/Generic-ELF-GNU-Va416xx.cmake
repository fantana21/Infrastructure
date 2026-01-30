include_guard()

include(Platform/Generic-ELF-GNU-CortexM4)

add_compile_definitions(VA416xx)
# RWX segments are needed to support functions running from RAM (.RamFunc)
add_link_options(-Wl,--no-warn-rwx-segments)
