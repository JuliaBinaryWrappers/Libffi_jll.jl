# Autogenerated wrapper script for Libffi_jll for armv7l-linux-musleabihf
export libffi

JLLWrappers.@generate_wrapper_header("Libffi")
JLLWrappers.@declare_library_product(libffi, "libffi.so.8")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libffi,
        "lib/libffi.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
