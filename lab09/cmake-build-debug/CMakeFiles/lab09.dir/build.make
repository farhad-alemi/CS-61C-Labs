# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\AbdM\cs61c\labs\lab09

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab09.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab09.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab09.dir/flags.make

CMakeFiles/lab09.dir/simd.c.obj: CMakeFiles/lab09.dir/flags.make
CMakeFiles/lab09.dir/simd.c.obj: CMakeFiles/lab09.dir/includes_C.rsp
CMakeFiles/lab09.dir/simd.c.obj: ../simd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab09.dir/simd.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab09.dir\simd.c.obj   -c C:\Users\AbdM\cs61c\labs\lab09\simd.c

CMakeFiles/lab09.dir/simd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab09.dir/simd.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\AbdM\cs61c\labs\lab09\simd.c > CMakeFiles\lab09.dir\simd.c.i

CMakeFiles/lab09.dir/simd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab09.dir/simd.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\AbdM\cs61c\labs\lab09\simd.c -o CMakeFiles\lab09.dir\simd.c.s

CMakeFiles/lab09.dir/test_simd.c.obj: CMakeFiles/lab09.dir/flags.make
CMakeFiles/lab09.dir/test_simd.c.obj: CMakeFiles/lab09.dir/includes_C.rsp
CMakeFiles/lab09.dir/test_simd.c.obj: ../test_simd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab09.dir/test_simd.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab09.dir\test_simd.c.obj   -c C:\Users\AbdM\cs61c\labs\lab09\test_simd.c

CMakeFiles/lab09.dir/test_simd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab09.dir/test_simd.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\AbdM\cs61c\labs\lab09\test_simd.c > CMakeFiles\lab09.dir\test_simd.c.i

CMakeFiles/lab09.dir/test_simd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab09.dir/test_simd.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\AbdM\cs61c\labs\lab09\test_simd.c -o CMakeFiles\lab09.dir\test_simd.c.s

# Object files for target lab09
lab09_OBJECTS = \
"CMakeFiles/lab09.dir/simd.c.obj" \
"CMakeFiles/lab09.dir/test_simd.c.obj"

# External object files for target lab09
lab09_EXTERNAL_OBJECTS =

lab09.exe: CMakeFiles/lab09.dir/simd.c.obj
lab09.exe: CMakeFiles/lab09.dir/test_simd.c.obj
lab09.exe: CMakeFiles/lab09.dir/build.make
lab09.exe: CMakeFiles/lab09.dir/linklibs.rsp
lab09.exe: CMakeFiles/lab09.dir/objects1.rsp
lab09.exe: CMakeFiles/lab09.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable lab09.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab09.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab09.dir/build: lab09.exe

.PHONY : CMakeFiles/lab09.dir/build

CMakeFiles/lab09.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab09.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lab09.dir/clean

CMakeFiles/lab09.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\AbdM\cs61c\labs\lab09 C:\Users\AbdM\cs61c\labs\lab09 C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug C:\Users\AbdM\cs61c\labs\lab09\cmake-build-debug\CMakeFiles\lab09.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab09.dir/depend

