# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule MongoC_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("MongoC")
JLLWrappers.@generate_main_file("MongoC", UUID("90100e71-7732-535a-9be7-2e9affd1cfc1"))
end  # module MongoC_jll
