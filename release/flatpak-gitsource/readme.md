To build run in flatpak directory:

First setup flatpak in this directory:

You need to install the kde runtime and sdk:

flatpak install 

#flatpak-builder --user --ccache --repo=repo --subject="LinuxDeploymentTest `date`" --force-clean build org.ghowin.linuxdeptool.yml

flatpak-builder build org.ghowin.linuxdeptool.yml
