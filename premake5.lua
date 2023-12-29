project "imgui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir(envir_work_space_directory .. "/bin/" .. envir_output_directory .. "/%{prj.name}")
    objdir(envir_work_space_directory .. "/bin-int/" .. envir_output_directory .. "/%{prj.name}")

    defines {"_CRT_SECURE_NO_WARNINGS"}

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",
        "premake5.lua"
    }

    includedirs {
        ".",
        "bakcends",
        envir_thrid_party_directory .. "/glfw/include",
    }

    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    links {
        "glfw"
    }
