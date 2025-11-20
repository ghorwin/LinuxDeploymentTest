# Require a fairly recent cmake version
cmake_minimum_required( VERSION 2.8...3.10 )

# The project name
project( LinuxDeploymentTest VERSION 1.0.0 )

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

# CPack-Support
set(CPACK_PACKAGE_VENDOR "org.ghorwin")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Deployment test tool")

set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Andreas Nicolai")
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE amd64)
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "A test tool for deployment on linux.")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.39), libgcc-s1 (>= 3.3.1), libstdc++6 (>= 13.1)")
set(CPACK_GENERATOR DEB TGZ) # deb und tar.gz generieren
include(CPack)
