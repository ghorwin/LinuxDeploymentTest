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



# The submodules/binaries

add_subdirectory( DepTool )



