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
CMAKE_SOURCE_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/MaximunValueLoot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MaximunValueLoot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MaximunValueLoot.dir/flags.make

CMakeFiles/MaximunValueLoot.dir/main.cpp.obj: CMakeFiles/MaximunValueLoot.dir/flags.make
CMakeFiles/MaximunValueLoot.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MaximunValueLoot.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MaximunValueLoot.dir\main.cpp.obj -c "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\main.cpp"

CMakeFiles/MaximunValueLoot.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MaximunValueLoot.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\main.cpp" > CMakeFiles\MaximunValueLoot.dir\main.cpp.i

CMakeFiles/MaximunValueLoot.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MaximunValueLoot.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\main.cpp" -o CMakeFiles\MaximunValueLoot.dir\main.cpp.s

# Object files for target MaximunValueLoot
MaximunValueLoot_OBJECTS = \
"CMakeFiles/MaximunValueLoot.dir/main.cpp.obj"

# External object files for target MaximunValueLoot
MaximunValueLoot_EXTERNAL_OBJECTS =

MaximunValueLoot.exe: CMakeFiles/MaximunValueLoot.dir/main.cpp.obj
MaximunValueLoot.exe: CMakeFiles/MaximunValueLoot.dir/build.make
MaximunValueLoot.exe: CMakeFiles/MaximunValueLoot.dir/linklibs.rsp
MaximunValueLoot.exe: CMakeFiles/MaximunValueLoot.dir/objects1.rsp
MaximunValueLoot.exe: CMakeFiles/MaximunValueLoot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MaximunValueLoot.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MaximunValueLoot.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MaximunValueLoot.dir/build: MaximunValueLoot.exe

.PHONY : CMakeFiles/MaximunValueLoot.dir/build

CMakeFiles/MaximunValueLoot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MaximunValueLoot.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MaximunValueLoot.dir/clean

CMakeFiles/MaximunValueLoot.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\MaximunValueLoot\cmake-build-debug\CMakeFiles\MaximunValueLoot.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/MaximunValueLoot.dir/depend
