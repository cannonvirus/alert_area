# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /works/alert_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /works/alert_code/build

# Include any dependencies generated for this target.
include CMakeFiles/alert.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/alert.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/alert.dir/flags.make

CMakeFiles/alert.dir/src/main.cpp.o: CMakeFiles/alert.dir/flags.make
CMakeFiles/alert.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/works/alert_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/alert.dir/src/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/alert.dir/src/main.cpp.o -c /works/alert_code/src/main.cpp

CMakeFiles/alert.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alert.dir/src/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /works/alert_code/src/main.cpp > CMakeFiles/alert.dir/src/main.cpp.i

CMakeFiles/alert.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alert.dir/src/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /works/alert_code/src/main.cpp -o CMakeFiles/alert.dir/src/main.cpp.s

CMakeFiles/alert.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/alert.dir/src/main.cpp.o.requires

CMakeFiles/alert.dir/src/main.cpp.o.provides: CMakeFiles/alert.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/alert.dir/build.make CMakeFiles/alert.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/alert.dir/src/main.cpp.o.provides

CMakeFiles/alert.dir/src/main.cpp.o.provides.build: CMakeFiles/alert.dir/src/main.cpp.o


CMakeFiles/alert.dir/src/my_area_check.cpp.o: CMakeFiles/alert.dir/flags.make
CMakeFiles/alert.dir/src/my_area_check.cpp.o: ../src/my_area_check.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/works/alert_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/alert.dir/src/my_area_check.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/alert.dir/src/my_area_check.cpp.o -c /works/alert_code/src/my_area_check.cpp

CMakeFiles/alert.dir/src/my_area_check.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alert.dir/src/my_area_check.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /works/alert_code/src/my_area_check.cpp > CMakeFiles/alert.dir/src/my_area_check.cpp.i

CMakeFiles/alert.dir/src/my_area_check.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alert.dir/src/my_area_check.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /works/alert_code/src/my_area_check.cpp -o CMakeFiles/alert.dir/src/my_area_check.cpp.s

CMakeFiles/alert.dir/src/my_area_check.cpp.o.requires:

.PHONY : CMakeFiles/alert.dir/src/my_area_check.cpp.o.requires

CMakeFiles/alert.dir/src/my_area_check.cpp.o.provides: CMakeFiles/alert.dir/src/my_area_check.cpp.o.requires
	$(MAKE) -f CMakeFiles/alert.dir/build.make CMakeFiles/alert.dir/src/my_area_check.cpp.o.provides.build
.PHONY : CMakeFiles/alert.dir/src/my_area_check.cpp.o.provides

CMakeFiles/alert.dir/src/my_area_check.cpp.o.provides.build: CMakeFiles/alert.dir/src/my_area_check.cpp.o


# Object files for target alert
alert_OBJECTS = \
"CMakeFiles/alert.dir/src/main.cpp.o" \
"CMakeFiles/alert.dir/src/my_area_check.cpp.o"

# External object files for target alert
alert_EXTERNAL_OBJECTS =

../bin/alert: CMakeFiles/alert.dir/src/main.cpp.o
../bin/alert: CMakeFiles/alert.dir/src/my_area_check.cpp.o
../bin/alert: CMakeFiles/alert.dir/build.make
../bin/alert: /usr/local/lib/libopencv_gapi.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_stitching.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_aruco.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_bgsegm.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_bioinspired.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_ccalib.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudabgsegm.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudafeatures2d.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudaobjdetect.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudastereo.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cvv.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_dnn_objdetect.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_dnn_superres.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_dpm.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_face.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_freetype.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_fuzzy.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_hfs.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_img_hash.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_line_descriptor.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_quality.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_reg.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_rgbd.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_saliency.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_stereo.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_structured_light.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_superres.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_surface_matching.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_tracking.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_videostab.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_xfeatures2d.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_xobjdetect.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_xphoto.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_shape.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_highgui.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_datasets.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_plot.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_text.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_dnn.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_ml.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_phase_unwrapping.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudacodec.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_videoio.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudaoptflow.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudalegacy.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudawarping.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_optflow.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_ximgproc.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_video.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_imgcodecs.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_objdetect.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_calib3d.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_features2d.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_flann.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_photo.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudaimgproc.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudafilters.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_imgproc.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudaarithm.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_core.so.4.2.0
../bin/alert: /usr/local/lib/libopencv_cudev.so.4.2.0
../bin/alert: CMakeFiles/alert.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/works/alert_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/alert"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alert.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/alert.dir/build: ../bin/alert

.PHONY : CMakeFiles/alert.dir/build

CMakeFiles/alert.dir/requires: CMakeFiles/alert.dir/src/main.cpp.o.requires
CMakeFiles/alert.dir/requires: CMakeFiles/alert.dir/src/my_area_check.cpp.o.requires

.PHONY : CMakeFiles/alert.dir/requires

CMakeFiles/alert.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/alert.dir/cmake_clean.cmake
.PHONY : CMakeFiles/alert.dir/clean

CMakeFiles/alert.dir/depend:
	cd /works/alert_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /works/alert_code /works/alert_code /works/alert_code/build /works/alert_code/build /works/alert_code/build/CMakeFiles/alert.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/alert.dir/depend

