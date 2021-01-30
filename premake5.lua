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
   includedirs { "include/" }
   
   -- src files --
   files { "src/**.h", "src/**.cpp", "include/**.h" }
   
   -- lib dirs --
   libdirs { "lib/" }
   
   -- libs --
   --links { "references" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      flags { "Symbols" }

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"