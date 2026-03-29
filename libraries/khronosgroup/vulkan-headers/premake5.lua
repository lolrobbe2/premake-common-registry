project "vulkan-headers"
	language    "C++"
    kind        "None"  
	warnings    "Off"
    setincludedirs("vulkan-headers","include")
    includedirs 
    {
        "include"
    }
    files 
    { 
        "include/vulkan/**.h", 
        "include/vulkan/**.hpp" 
    }
    