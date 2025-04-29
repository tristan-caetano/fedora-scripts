#! /bin/bash

# This script can be cloned anywhere, but it should be cloned in ~/Documents/Scripts

# Setting up install commands
DNF_INSTALL="dnf -y install"
FLAT_INSTALL="flatpak install -y"

# Setting up important directories
SCRIPTS_DIR=$(pwd)
APPLICATIONS_DIR="/home/$USER/Documents/Applications"
PACKAGES_DIR="/home/$USER/Documents/Packages"

# Creating directories
mkdir $APPLICATIONS_DIR
mkdir $PACKAGES_DIR

# DNF INSTALLATIONS *************************************************************************

# RPM Fusion
$DNF_INSTALL https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
$DNF_INSTALL https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf -y update

# VSCode
$DNF_INSTALL code

# Discord
$DNF_INSTALL discord

# SQLite
$DNF_INSTALL sqlite
$DNF_INSTALL sqlite-devel sqlite-tcl
$DNF_INSTALL sqlitebrowser

# Vim
$DNF_INSTALL vim

# Steam
$DNF_INSTALL steam

# VLC Media Player
$DNF_INSTALL vlc

# Polychromatic (for Razer Stuff)
dnf config-manager addrepo --from-repofile=https://openrazer.github.io/hardware:razer.repo
$DNF_INSTALL polychromatic
gpasswd -a $USER plugdev

# NVidia Drivers
$DNF_INSTALL akmod-nvidia
$DNF_INSTALL xorg-x11-drv-nvidia-cuda
$DNF_INSTALL xorg-x11-drv-nvidia-libs

# SSHFS
$DNF_INSTALL sshfs
mkdir /mnt/optiplexhome
sudo chmod +777 /mnt/optiplexhome

# Crontab
$DNF_INSTALL cronie

# Dolphin Emulator
$DNF_INSTALL dolphin-emu

# RetroArch
$DNF_INSTALL retroarch

# Input Remapper
$DNF_INSTALL input-remapper
systemctl enable --now input-remapper

# FLATPAK INSTALLATIONS *********************************************************************

# Spotify
$FLAT_INSTALL spotify

# Deluge
flatpak install fedora -y deluge

# RPM INSTALLATIONS *************************************************************************

# Team Viewer
cd $PACKAGES_DIR
mkdir TeamViewer
cd TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer.x86_64.rpm
$DNF_INSTALL teamviewer.x86_64.rpm

# MANUAL INSTALLATIONS **********************************************************************

# hide.me install
cd $APPLICATIONS_DIR
mkdir hide.me
cd hide.me
curl -L https://hide.me/download/linux-amd64 | tar -xz && sudo ./install.sh
git clone https://github.com/Seyloria/hide.me-server-switch.git

# Minecraft download
cd $APPLICATIONS_DIR
wget https://launcher.mojang.com/download/Minecraft.tar.gz
tar -xvf Minecraft.tar.gz
rm Minecraft.tar.gz

# Runelite download
cd $APPLICATIONS_DIR
mkdir RuneLite
cd RuneLite
wget https://github.com/runelite/launcher/releases/download/2.7.3/RuneLite.AppImage
chmod +x RuneLite.AppImage

# Runelite download
cd $APPLICATIONS_DIR
mkdir ArduinoIDE
cd ArduinoIDE
wget https://downloads.arduino.cc/arduino-ide/nightly/arduino-ide_nightly-latest_Linux_64bit.AppImage
chmod +x arduino-ide_nightly-latest_Linux_64bit.AppImage

# Sourcing script in .bashrc
echo source $SCRIPTS_DIR/MyBashrc.sh >> /home/tcaetano/.bashrc

# Chmod stuff
cd $SCRIPTS_DIR
chmod +x MyBashrc.sh
chmod +x StartupScript.sh

# Downloaded RPMS
# The version numbers in the url prevent these from being automatically downloaded without webscraping
#$DNF_INSTALL /home/$USER/Downloads/goxlr-utility-*.x86_64.rpm
#$DNF_INSTALL /home/$USER/Downloads/VNC-Viewer-*-Linux-x64.rpm
#$DNF_INSTALL /home/$USER/Downloads/powershell-*.rh.x86_64.rpm

# Reboot
reboot -nf
