include "vulkan-headers"

project "volk"
    language    "C"
    kind        "StaticLib"
    warnings    "Off"
    
    uses        { "volk_static" }

    defines {
        "_LIB",
        "API_NAME=\"vulkan\"",
    }

    setincludedirs("volk", ".")

    includedirs {
        ".",
        "%{IncludeDirs.vulkan_headers}"
    }

    files {
        "volk.c",
        "volk.h",
    }

    links {
        "vulkan-headers"
    }
    includedirs {
            "%{IncludeDirs.volk}",
            "%{IncludeDirs.vulkan_headers}"
        }
    filter "platforms:Windows"
        defines { "VK_USE_PLATFORM_WIN32_KHR" }
    filter "platforms:Linux"
        defines { "VK_USE_PLATFORM_XCB_KHR" }

    usage "volk_static"
        kind "StaticLib"