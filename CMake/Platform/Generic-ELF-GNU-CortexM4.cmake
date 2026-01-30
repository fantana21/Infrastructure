include_guard()

block()
    set(compile_and_link_options -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard)
    add_compile_options(${compile_and_link_options})
    add_link_options(${compile_and_link_options})
endblock()
