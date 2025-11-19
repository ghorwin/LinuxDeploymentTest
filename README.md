# LinuxDeploymentTest

A test repository with CMake based command line and Qt based GUI tool (tool calls command line program), used to test various linux deployment methods.

## General software setup

To test deployment we start with a simple console application written in C++, using CMake as build system. This minimalistic setup is being used with various deployment methods:

1. Build from source
2. debian package
3. flatpak
4. AppImage

Afterwards we add resources (data files installed together with the application and accessed at runtime). Here we look at the problem of resolving resource paths during development and deployment and introduce deployment build flags.

Next will be the addition of a Qt Gui Tool that executes the command line tool. Here we need to deal with runtime dependencies (mostly Qt libraries), but also how to allow individual install targets to execute each other.



