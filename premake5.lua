project "GLFW"
	kind "StaticLib"
	language "C"
	staticruntime "off"
	warnings "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/GLFW/**.h",
		"src/**.h",
		"src/**.c",
	}

	defines
	{
		"_GLFW_WIN32",
	}
