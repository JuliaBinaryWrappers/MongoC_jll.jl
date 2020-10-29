# Autogenerated wrapper script for MongoC_jll for i686-w64-mingw32
export libbson, libmongoc

using OpenSSL_jll
using Zlib_jll
using Zstd_jll
using snappy_jll
JLLWrappers.@generate_wrapper_header("MongoC")
JLLWrappers.@declare_library_product(libbson, "libbson-1.0.dll")
JLLWrappers.@declare_library_product(libmongoc, "libmongoc-1.0.dll")
function __init__()
    JLLWrappers.@generate_init_header(OpenSSL_jll, Zlib_jll, Zstd_jll, snappy_jll)
    JLLWrappers.@init_library_product(
        libbson,
        "bin\\libbson-1.0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmongoc,
        "bin\\libmongoc-1.0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
