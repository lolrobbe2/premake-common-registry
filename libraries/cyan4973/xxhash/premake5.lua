project "xxhash"
	language    "C"
    kind        "StaticLib"
	warnings    "Off"

	setincludedirs("xxhash",".")
	files
	{
		"xxhash.h",
		"xxhash.c"
	}
	usage "xxhash"
        links { "xxhash" }
        includedirs { "%{IncludeDirs.xxhash}" }
	
	usage "xxhash_dynamic"
        kind "SharedLib"
        links { "xxhash" }
        includedirs { "%{IncludeDirs.xxhash}" }