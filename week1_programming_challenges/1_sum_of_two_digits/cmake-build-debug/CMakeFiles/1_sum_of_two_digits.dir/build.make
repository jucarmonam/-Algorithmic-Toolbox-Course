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
CMAKE_SOURCE_DIR = "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/1_sum_of_two_digits.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/1_sum_of_two_digits.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1_sum_of_two_digits.dir/flags.make

CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.obj: CMakeFiles/1_sum_of_two_digits.dir/flags.make
CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.obj: ../My\ submission.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\1_sum_of_two_digits.dir\My_submission.cpp.obj -c "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\My submission.cpp"

CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\My submission.cpp" > CMakeFiles\1_sum_of_two_digits.dir\My_submission.cpp.i

CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\My submission.cpp" -o CMakeFiles\1_sum_of_two_digits.dir\My_submission.cpp.s

# Object files for target 1_sum_of_two_digits
1_sum_of_two_digits_OBJECTS = \
"CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.obj"

# External object files for target 1_sum_of_two_digits
1_sum_of_two_digits_EXTERNAL_OBJECTS =

1_sum_of_two_digits.exe: CMakeFiles/1_sum_of_two_digits.dir/My_submission.cpp.obj
1_sum_of_two_digits.exe: CMakeFiles/1_sum_of_two_digits.dir/build.make
1_sum_of_two_digits.exe: CMakeFiles/1_sum_of_two_digits.dir/linklibs.rsp
1_sum_of_two_digits.exe: CMakeFiles/1_sum_of_two_digits.dir/objects1.rsp
1_sum_of_two_digits.exe: CMakeFiles/1_sum_of_two_digits.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 1_sum_of_two_digits.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\1_sum_of_two_digits.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1_sum_of_two_digits.dir/build: 1_sum_of_two_digits.exe

.PHONY : CMakeFiles/1_sum_of_two_digits.dir/build

CMakeFiles/1_sum_of_two_digits.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\1_sum_of_two_digits.dir\cmake_clean.cmake
.PHONY : CMakeFiles/1_sum_of_two_digits.dir/clean

CMakeFiles/1_sum_of_two_digits.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits" "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits" "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\cmake-build-debug" "C:\Users\Juan Pablo\Desktop\week1_programming_challenges\1_sum_of_two_digits\cmake-build-debug\CMakeFiles\1_sum_of_two_digits.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/1_sum_of_two_digits.dir/depend

