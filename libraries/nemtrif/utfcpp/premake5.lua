project "utf8cpp"
	language    "C++"
    kind        "None"  
	warnings    "Off"
    includedirs 
    {
        "source"
    }
    setincludedirs("utf8cpp","source")
    files 
    { 
        "source/**.h", 
    }
    