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
CMAKE_SOURCE_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/LastDigitFibonacci.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LastDigitFibonacci.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LastDigitFibonacci.dir/flags.make

CMakeFiles/LastDigitFibonacci.dir/main.cpp.obj: CMakeFiles/LastDigitFibonacci.dir/flags.make
CMakeFiles/LastDigitFibonacci.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LastDigitFibonacci.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\LastDigitFibonacci.dir\main.cpp.obj -c "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\main.cpp"

CMakeFiles/LastDigitFibonacci.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LastDigitFibonacci.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\main.cpp" > CMakeFiles\LastDigitFibonacci.dir\main.cpp.i

CMakeFiles/LastDigitFibonacci.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LastDigitFibonacci.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\main.cpp" -o CMakeFiles\LastDigitFibonacci.dir\main.cpp.s

# Object files for target LastDigitFibonacci
LastDigitFibonacci_OBJECTS = \
"CMakeFiles/LastDigitFibonacci.dir/main.cpp.obj"

# External object files for target LastDigitFibonacci
LastDigitFibonacci_EXTERNAL_OBJECTS =

LastDigitFibonacci.exe: CMakeFiles/LastDigitFibonacci.dir/main.cpp.obj
LastDigitFibonacci.exe: CMakeFiles/LastDigitFibonacci.dir/build.make
LastDigitFibonacci.exe: CMakeFiles/LastDigitFibonacci.dir/linklibs.rsp
LastDigitFibonacci.exe: CMakeFiles/LastDigitFibonacci.dir/objects1.rsp
LastDigitFibonacci.exe: CMakeFiles/LastDigitFibonacci.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LastDigitFibonacci.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LastDigitFibonacci.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LastDigitFibonacci.dir/build: LastDigitFibonacci.exe

.PHONY : CMakeFiles/LastDigitFibonacci.dir/build

CMakeFiles/LastDigitFibonacci.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LastDigitFibonacci.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LastDigitFibonacci.dir/clean

CMakeFiles/LastDigitFibonacci.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\LastDigitFibonacci\cmake-build-debug\CMakeFiles\LastDigitFibonacci.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/LastDigitFibonacci.dir/depend
