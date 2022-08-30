#!/bin/bash
clear
if [[ $(id -u) -ne 0 ]] ; then
	printf "you need root assess to unpurge the tool\n\n\n"
	printf "so please enter the password to login as root!\n\n"
	sudo bash ${0}
	exit
fi
rm /usr/bin/games &>/dev/null
apt purge nudoku
apt purge bastet
apt purge nsnake
apt purge greed
apt purge pacman4consol
apt purge moon-buggy
apt purge ninvaders
apt purge zangband
apt purge nethack-console
apt purge bsdgames
apt clean
apt autoremove
printf "\nuninstalled successfully!\n"