#!/usr/bin/bash
#bash script by Dennis Salvador Ignacio
#for fresh installations

#update and upgrade system
sudo apt update
sudo apt upgrade -y

#install programs
sudo apt install -y smplayer smplayer-themes steam rhythmbox htop youtube-dl tlp tlp-rdw gdebi preload synaptic

#starting tlp
sudo tlp start

#remove programs
sudo apt remove -y xfburn pidgin thunderbird parole
sudo apt autoremove

#install google-chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt-get install -f
rm google-chrome*.deb

#install obscure fonts and codecs
sudo apt install -y ubuntu-restricted-extras ttf-ancient-fonts

#install papirus icon theme
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

#clean
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y
sudo apt-get check
sudo apt-get install -f

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
