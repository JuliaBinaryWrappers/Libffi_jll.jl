# Autogenerated wrapper script for Libffi_jll for i686-w64-mingw32
export libffi

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libffi`
const libffi_splitpath = ["bin", "libffi-6.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libffi_path = ""

# libffi-specific global declaration
# This will be filled out by __init__()
libffi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libffi = "libffi-6.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Libffi")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libffi_path = normpath(joinpath(artifact_dir, libffi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libffi_handle = dlopen(libffi_path)
    push!(LIBPATH_list, dirname(libffi_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()

