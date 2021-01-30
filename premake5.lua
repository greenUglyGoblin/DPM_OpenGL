-- premake5 project config --
-- changed by Mateusz Debowski

workspace "defaultPremake"
   configurations { "Debug", "Release" }

project "DPM_OpenGL"
   -- project base settings --
   kind "ConsoleApp"
   language "C++"
   
   -- target dir --
   targetdir "bin/%{cfg.buildcfg}"

   -- obj dir --
   objdir "obj/%{cfg.buildcfg}"
   
   -- include dirs --
   includedirs { "inc/" }
   
   -- src files --
   files { "src/**.h", "src/**.cpp", "inc/**.h" }
   
   -- lib dirs --
   libdirs { "lib/" }
   
   -- libs --
   links { "glfw3", "gdi32" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      flags { "Symbols" }

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"