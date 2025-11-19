# CMakeLists.txt file for command line test tool
# This CMakeLists.txt file is included from the top level master CMakeLists file

project( DepTool )

add_executable( ${PROJECT_NAME} ${PROJECT_SOURCE_DIR}/src/main.cpp )

# we want the binary to be named 'deptool' as linux command line tools
# are usually in lower case
set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "deptool")

if (UNIX AND NOT APPLE)

	# installation targets for Unix systems
	include(GNUInstallDirs)
	
	# DepTool -> /usr/bin/deptool
	install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
	
	# Man-page -> /usr/share/man/man1/deptool.1.gz
	install(FILES ${PROJECT_SOURCE_DIR}/doc/deptool.1 
		DESTINATION ${CMAKE_INSTALL_MANDIR}/man1)

endif (UNIX AND NOT APPLE)
