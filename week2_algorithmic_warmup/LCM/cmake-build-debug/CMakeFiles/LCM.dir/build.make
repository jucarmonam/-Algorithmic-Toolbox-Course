# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/LCM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LCM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LCM.dir/flags.make

CMakeFiles/LCM.dir/main.cpp.obj: CMakeFiles/LCM.dir/flags.make
CMakeFiles/LCM.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LCM.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\LCM.dir\main.cpp.obj -c "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\main.cpp"

CMakeFiles/LCM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LCM.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\main.cpp" > CMakeFiles\LCM.dir\main.cpp.i

CMakeFiles/LCM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LCM.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\main.cpp" -o CMakeFiles\LCM.dir\main.cpp.s

# Object files for target LCM
LCM_OBJECTS = \
"CMakeFiles/LCM.dir/main.cpp.obj"

# External object files for target LCM
LCM_EXTERNAL_OBJECTS =

LCM.exe: CMakeFiles/LCM.dir/main.cpp.obj
LCM.exe: CMakeFiles/LCM.dir/build.make
LCM.exe: CMakeFiles/LCM.dir/linklibs.rsp
LCM.exe: CMakeFiles/LCM.dir/objects1.rsp
LCM.exe: CMakeFiles/LCM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LCM.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LCM.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LCM.dir/build: LCM.exe

.PHONY : CMakeFiles/LCM.dir/build

CMakeFiles/LCM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LCM.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LCM.dir/clean

CMakeFiles/LCM.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LCM\cmake-build-debug\CMakeFiles\LCM.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/LCM.dir/depend

