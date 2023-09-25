#!/usr/bin/bash
#bash script by Dennis Salvador Ignacio
#for fresh installations

#update and upgrade system
sudo pacman-mirrors -f
sudo pacman -Syyu

#install programs
sudo pacman -S chromium smplayer smplayer-themes steam youtube-dl

#remove programs
sudo pamac remove firefox thunderbird hexchat pidgin xfburn timeshift

#remove orphans
sudo pamac list -o
sudo pamac remove -o
sudo pacman -Qdt
sudo pacman -Rs $(pacman -Qdtq)

#clean cache
sudo pacman -Sc
sudo pamac clean

#network time sync
sudo timedatectl set-ntp true

#reboot
ask_reboot() {
	echo "Do you want to reboot now? (y/n)"
	read bool
	
	if [ $bool == y ]
	then
		sudo reboot
	elif [ $bool == n ]
	then
		echo Task finished!  A reboot is recommended to be done as soon as possible.
	else
		echo
		echo Invalid input.  Please try again 
	fi
	
}

ask_reboot
while [[ ! $bool =~ ^(y|n)$ ]]; do
	ask_reboot
done
