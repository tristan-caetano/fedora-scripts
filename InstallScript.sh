#! /bin/bash

DNF_INSTALL="dnf -y install"
FLAT_INSTALL="flatpak install -y"

# RPM Fusion
$DNF_INSTALL https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
$DNF_INSTALL https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf update

# VSCode
$DNF_INSTALL code

# Discord
$FLAT_INSTALL https://flathub.org/repo/appstream/com.visualstudio.code.flatpakref

# SQLite
$DNF_INSTALL sqlite
$DNF_INSTALL sqlite-devel sqlite-tcl
$DNF_INSTALL sqlitebrowser

# Vim
$DNF_INSTALL vim

# Steam
$DNF_INSTALL steam

# NVidia Drivers
$DNF_INSTALL akmod-nvidia
$DNF_INSTALL xorg-x11-drv-nvidia-cuda
$DNF_INSTALL xorg-x11-drv-nvidia-libs

# Sourcing script in .bashrc
echo source /home/tcaetano/Documents/Scripts/MyBashrc.sh >> /home/tcaetano/.bashrc

# Chmod stuff
chmod +x MyBashrc.sh
chmod +x StartupScript.sh

# Downloaded RPMS
#$DNF_INSTALL /home/tcaetano/Downloads/goxlr-utility-*.x86_64.rpm
#$DNF_INSTALL /home/tcaetano/Downloads/VNC-Viewer-*-Linux-x64.rpm
#$DNF_INSTALL /home/tcaetano/Downloads/powershell-*.rh.x86_64.rpm
