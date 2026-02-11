project "Vulkan-Headers"
	language    "C++"
    kind        "None"  
	warnings    "Off"
    includedirs 
    {
        "include"
    }
    files 
    { 
        "include/vulkan/**.h", 
        "include/vulkan/**.hpp" 
    }
    