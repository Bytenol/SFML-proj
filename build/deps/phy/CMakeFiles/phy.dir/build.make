# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build

# Include any dependencies generated for this target.
include deps/phy/CMakeFiles/phy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/phy/CMakeFiles/phy.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/phy/CMakeFiles/phy.dir/progress.make

# Include the compile flags for this target's objects.
include deps/phy/CMakeFiles/phy.dir/flags.make

deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj: deps/phy/CMakeFiles/phy.dir/flags.make
deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj: deps/phy/CMakeFiles/phy.dir/includes_CXX.rsp
deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj: C:/Users/bytenol/Documents/Programming/Github/SFML-proj-main/deps/phy/src/window.cpp
deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj: deps/phy/CMakeFiles/phy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj -MF CMakeFiles\phy.dir\src\window.cpp.obj.d -o CMakeFiles\phy.dir\src\window.cpp.obj -c C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy\src\window.cpp

deps/phy/CMakeFiles/phy.dir/src/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/phy.dir/src/window.cpp.i"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy\src\window.cpp > CMakeFiles\phy.dir\src\window.cpp.i

deps/phy/CMakeFiles/phy.dir/src/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/phy.dir/src/window.cpp.s"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy\src\window.cpp -o CMakeFiles\phy.dir\src\window.cpp.s

deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj: deps/phy/CMakeFiles/phy.dir/flags.make
deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj: deps/phy/CMakeFiles/phy.dir/includes_CXX.rsp
deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj: C:/Users/bytenol/Documents/Programming/Github/SFML-proj-main/deps/phy/src/vector.cpp
deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj: deps/phy/CMakeFiles/phy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj -MF CMakeFiles\phy.dir\src\vector.cpp.obj.d -o CMakeFiles\phy.dir\src\vector.cpp.obj -c C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy\src\vector.cpp

deps/phy/CMakeFiles/phy.dir/src/vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/phy.dir/src/vector.cpp.i"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy\src\vector.cpp > CMakeFiles\phy.dir\src\vector.cpp.i

deps/phy/CMakeFiles/phy.dir/src/vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/phy.dir/src/vector.cpp.s"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy\src\vector.cpp -o CMakeFiles\phy.dir\src\vector.cpp.s

# Object files for target phy
phy_OBJECTS = \
"CMakeFiles/phy.dir/src/window.cpp.obj" \
"CMakeFiles/phy.dir/src/vector.cpp.obj"

# External object files for target phy
phy_EXTERNAL_OBJECTS =

lib/libphy.a: deps/phy/CMakeFiles/phy.dir/src/window.cpp.obj
lib/libphy.a: deps/phy/CMakeFiles/phy.dir/src/vector.cpp.obj
lib/libphy.a: deps/phy/CMakeFiles/phy.dir/build.make
lib/libphy.a: deps/phy/CMakeFiles/phy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ..\..\lib\libphy.a"
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && $(CMAKE_COMMAND) -P CMakeFiles\phy.dir\cmake_clean_target.cmake
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\phy.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/phy/CMakeFiles/phy.dir/build: lib/libphy.a
.PHONY : deps/phy/CMakeFiles/phy.dir/build

deps/phy/CMakeFiles/phy.dir/clean:
	cd /d C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy && $(CMAKE_COMMAND) -P CMakeFiles\phy.dir\cmake_clean.cmake
.PHONY : deps/phy/CMakeFiles/phy.dir/clean

deps/phy/CMakeFiles/phy.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\deps\phy C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy C:\Users\bytenol\Documents\Programming\Github\SFML-proj-main\build\deps\phy\CMakeFiles\phy.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : deps/phy/CMakeFiles/phy.dir/depend

