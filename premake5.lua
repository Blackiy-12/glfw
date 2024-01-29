project "GLFW"
	kind "StaticLib"
	language "C"
	staticruntime "off"
	warnings "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/GLFW/**.h",
		"src/glfw_config.h",
		"src/**.c",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
