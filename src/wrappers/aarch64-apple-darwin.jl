# Autogenerated wrapper script for Libffi_jll for aarch64-apple-darwin
export libffi

JLLWrappers.@generate_wrapper_header("Libffi")
JLLWrappers.@declare_library_product(libffi, "@rpath/libffi.8.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libffi,
        "lib/libffi.8.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
