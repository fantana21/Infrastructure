include_guard()

block()
    set(compile_and_link_options --specs=nano.specs)
    add_compile_options(${compile_and_link_options} -ffunction-sections -fdata-sections)
    add_link_options(
        ${compile_and_link_options}
        -nostartfiles
        -static
        -Wl,--gc-sections
        -fno-unwind-tables
        -fno-asynchronous-unwind-tables
    )
endblock()
