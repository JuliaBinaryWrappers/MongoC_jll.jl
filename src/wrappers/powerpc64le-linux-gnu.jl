# Autogenerated wrapper script for MongoC_jll for powerpc64le-linux-gnu
export libbson, libmongoc

using OpenSSL_jll
using Zlib_jll
using Zstd_jll
using snappy_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libbson`
const libbson_splitpath = ["lib", "libbson-1.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libbson_path = ""

# libbson-specific global declaration
# This will be filled out by __init__()
libbson_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libbson = "libbson-1.0.so.0"


# Relative path to `libmongoc`
const libmongoc_splitpath = ["lib", "libmongoc-1.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmongoc_path = ""

# libmongoc-specific global declaration
# This will be filled out by __init__()
libmongoc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmongoc = "libmongoc-1.0.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"MongoC")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (OpenSSL_jll.PATH_list, Zlib_jll.PATH_list, Zstd_jll.PATH_list, snappy_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (OpenSSL_jll.LIBPATH_list, Zlib_jll.LIBPATH_list, Zstd_jll.LIBPATH_list, snappy_jll.LIBPATH_list,))

    global libbson_path = normpath(joinpath(artifact_dir, libbson_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libbson_handle = dlopen(libbson_path)
    push!(LIBPATH_list, dirname(libbson_path))

    global libmongoc_path = normpath(joinpath(artifact_dir, libmongoc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmongoc_handle = dlopen(libmongoc_path)
    push!(LIBPATH_list, dirname(libmongoc_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()
