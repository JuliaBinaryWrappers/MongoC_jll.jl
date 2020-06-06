# `MongoC_jll.jl` (v1.16.2+0)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl). The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/377218d548a00814d9e0fc2d36cb2754334744e1/M/MongoC/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://juliapackaging.github.io/BinaryBuilder.jl/dev/jll/).

## Sources

The tarballs for `MongoC_jll.jl` have been built from these sources:

* compressed archive: https://github.com/mongodb/mongo-c-driver/releases/download/1.16.2/mongo-c-driver-1.16.2.tar.gz (SHA256 checksum: `0a722180e5b5c86c415b9256d753b2d5552901dc5d95c9f022072c3cd336887e`)

## Platforms

`MongoC_jll.jl` is available for the following platforms:

* `Linux(:aarch64, libc=:glibc)` (`aarch64-linux-gnu`)
* `Linux(:aarch64, libc=:musl)` (`aarch64-linux-musl`)
* `Linux(:armv7l, libc=:glibc, call_abi=:eabihf)` (`armv7l-linux-gnueabihf`)
* `Linux(:armv7l, libc=:musl, call_abi=:eabihf)` (`armv7l-linux-musleabihf`)
* `Linux(:i686, libc=:glibc)` (`i686-linux-gnu`)
* `Linux(:i686, libc=:musl)` (`i686-linux-musl`)
* `Windows(:i686)` (`i686-w64-mingw32`)
* `Linux(:powerpc64le, libc=:glibc)` (`powerpc64le-linux-gnu`)
* `MacOS(:x86_64)` (`x86_64-apple-darwin14`)
* `Linux(:x86_64, libc=:glibc)` (`x86_64-linux-gnu`)
* `Linux(:x86_64, libc=:musl)` (`x86_64-linux-musl`)
* `FreeBSD(:x86_64)` (`x86_64-unknown-freebsd11.1`)
* `Windows(:x86_64)` (`x86_64-w64-mingw32`)

## Dependencies

The following JLL packages are required by `MongoC_jll.jl`:

* [`OpenSSL_jll`](https://github.com/JuliaBinaryWrappers/OpenSSL_jll.jl)
* [`Zlib_jll`](https://github.com/JuliaBinaryWrappers/Zlib_jll.jl)
* [`Zstd_jll`](https://github.com/JuliaBinaryWrappers/Zstd_jll.jl)
* [`snappy_jll`](https://github.com/JuliaBinaryWrappers/snappy_jll.jl)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `LibraryProduct`: `libbson`
* `LibraryProduct`: `libmongoc`
