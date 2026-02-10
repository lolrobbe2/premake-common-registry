project "zlib"
	language    "C"
    uses        { "ZlibStatic" }
	defines     { "N_FSEEKO" }
	warnings    "Off"

	files
	{
		"**.h",
		"**.c"
	}

	filter "system:windows"
		defines { "_WINDOWS" }

	filter "system:not windows"
		defines { 'HAVE_UNISTD_H' }

    usage "ZlibStatic"
	    kind "StaticLib"

    usage "ZlibDynamic"
        kind "SharedLib"
        defines { "ZLIB_DLL"}
