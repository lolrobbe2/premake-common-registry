require "vulkan-headers"
project "volk"
	language    "C"
    kind        "StaticLib"  
	warnings    "Off"
    defines {
        "_LIB",
        "API_NAME=\"vulkan\"",
    }
    includedirs {
        ".",
    }
    files {
        "volk.c",
        "volk.h",
    }
    links {
        "Vulkan-Headers"
    }
    filter "platforms:Windows"
        defines {
            "VK_USE_PLATFORM_WIN32_KHR",
        }
    filter("platforms:Linux")
        defines {
            "VK_USE_PLATFORM_XCB_KHR",
        }