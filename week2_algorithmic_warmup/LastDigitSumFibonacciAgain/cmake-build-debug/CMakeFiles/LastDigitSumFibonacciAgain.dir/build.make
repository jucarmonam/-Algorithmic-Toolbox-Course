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
CMAKE_SOURCE_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/LastDigitSumFibonacciAgain.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LastDigitSumFibonacciAgain.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LastDigitSumFibonacciAgain.dir/flags.make

CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.obj: CMakeFiles/LastDigitSumFibonacciAgain.dir/flags.make
CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\LastDigitSumFibonacciAgain.dir\main.cpp.obj -c "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\main.cpp"

CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\main.cpp" > CMakeFiles\LastDigitSumFibonacciAgain.dir\main.cpp.i

CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\main.cpp" -o CMakeFiles\LastDigitSumFibonacciAgain.dir\main.cpp.s

# Object files for target LastDigitSumFibonacciAgain
LastDigitSumFibonacciAgain_OBJECTS = \
"CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.obj"

# External object files for target LastDigitSumFibonacciAgain
LastDigitSumFibonacciAgain_EXTERNAL_OBJECTS =

LastDigitSumFibonacciAgain.exe: CMakeFiles/LastDigitSumFibonacciAgain.dir/main.cpp.obj
LastDigitSumFibonacciAgain.exe: CMakeFiles/LastDigitSumFibonacciAgain.dir/build.make
LastDigitSumFibonacciAgain.exe: CMakeFiles/LastDigitSumFibonacciAgain.dir/linklibs.rsp
LastDigitSumFibonacciAgain.exe: CMakeFiles/LastDigitSumFibonacciAgain.dir/objects1.rsp
LastDigitSumFibonacciAgain.exe: CMakeFiles/LastDigitSumFibonacciAgain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LastDigitSumFibonacciAgain.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LastDigitSumFibonacciAgain.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LastDigitSumFibonacciAgain.dir/build: LastDigitSumFibonacciAgain.exe

.PHONY : CMakeFiles/LastDigitSumFibonacciAgain.dir/build

CMakeFiles/LastDigitSumFibonacciAgain.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LastDigitSumFibonacciAgain.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LastDigitSumFibonacciAgain.dir/clean

CMakeFiles/LastDigitSumFibonacciAgain.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\Curso de algoritmos\week2_algorithmic_warmup\LastDigitSumFibonacciAgain\cmake-build-debug\CMakeFiles\LastDigitSumFibonacciAgain.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/LastDigitSumFibonacciAgain.dir/depend

