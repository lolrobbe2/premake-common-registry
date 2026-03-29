project "zlib"
    language    "C"
    kind        "StaticLib" 
    
    uses        { "zlib_static" } 
    
    defines     { "N_FSEEKO" }
    warnings    "Off"

    files
    {
        -- The Core Header files
        "zconf.h",
        "zlib.h",
        "zutil.h",
        "crc32.h",
        "deflate.h",
        "gzguts.h",
        "inffast.h",
        "inffixed.h",
        "inflate.h",
        "inftrees.h",
        "trees.h",

        -- The Core Source files
        "adler32.c",
        "compress.c",
        "crc32.c",
        "deflate.c",
        "gzclose.c",
        "gzlib.c",
        "gzread.c",
        "gzwrite.c",
        "inflate.c",
        "infback.c",
        "inftrees.c",
        "inffast.c",
        "trees.c",
        "uncompr.c",
        "zutil.c"
    }

	setincludedirs("zlib", ".")

    usage "zlib_static"
        kind "StaticLib"

    usage "zlib_dynamic"
        kind "SharedLib"
        defines { "ZLIB_DLL" }
