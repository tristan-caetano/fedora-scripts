# MyBashrc.sh
# Script that is sourced from .bashrc, and acts like an extension of that script

# Shortcuts
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot -nf'
alias vi='sudo vim'
alias rebssh='sudo systemctl restart sshd.service'
alias reset_bashrc='source ~/.bashrc'
alias spotify='flatpak run com.spotify.Client'
alias deluge='flatpak run org.deluge_torrent.deluge'
alias vpn="/home/tcaetano/Documents/Applications/hide.me/hide.me-server-switch/hide.me-sw.sh"

# Making navigation or running common scripts more streamlined
alias scripts='cd ~/Documents/Scripts/'
alias apps='cd ~/Documents/Applications/'
alias startup='~/Documents/Scripts/StartupScript.sh'

# Stuff related to my server
alias homeserver='ssh tcaetano@192.168.1.135'
alias optiplexmnt="sshfs -o allow_other tcaetano@192.168.1.135:/ /mnt/optiplexhome"
