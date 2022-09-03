#!/bin/bash
clear
if [[ $(id -u) -ne 0 ]] ; then
	printf "you need root assess to unpurge the tool\n\n\n"
	printf "so please enter the password to login as root!\n\n"
	sudo bash ${0}
	exit
fi
rm /usr/bin/games &>/dev/null
apt purge nudoku -y
apt purge bastet -y
apt purge nsnake -y
apt purge greed -y
apt purge pacman4consol -y
apt purge moon-buggy -y
apt purge ninvaders -y
apt purge zangband -y
apt purge nethack-console -y
apt purge bsdgames -y
apt clean
apt autoremove
printf "\nuninstalled successfully!\n"
