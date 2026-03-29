project "stb"
	language    "C"
    kind        "StaticLib"
	warnings    "Off"
	setincludedirs("utf8cpp",".")
	files
	{
		"**.h"
	}