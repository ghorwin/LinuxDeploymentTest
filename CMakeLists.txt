# Require a fairly recent cmake version
cmake_minimum_required( VERSION 2.8...3.10 )

# The project name
project( LinuxDeploymentTest )

# Uncomment this to enable detailed make output
#set( CMAKE_VERBOSE_MAKEFILE ON )

# on Unix we want really detailed warnings
if (UNIX)
	ADD_DEFINITIONS( -Wall -fPIC )
endif (UNIX)

# Set default build type
if (NOT CMAKE_BUILD_TYPE)
	set( CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING
		"Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif (NOT CMAKE_BUILD_TYPE)

# The submodules/binaries

add_subdirectory( DepTool )

