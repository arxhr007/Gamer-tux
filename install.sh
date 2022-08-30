#!/bin/bash
clear
echo 
echo
if [[ $(id -u) -ne 0 ]] ; then
	printf "you need root assess to install the program\n\n"

	printf  "so please enter the password to login as root!\n\n"

	sudo bash ${0}
	printf "\n\n"
	exit
fi
printf "NOTE: you also need install necessary packages in requirements.txt\n"
for i in 3 2 1
do
	echo "staring installation process in ${i}" ; 
	sleep 1
done
apt-get install nudoku
apt install bastet
apt-get install nsnake
apt-get install greed
apt-get install pacman4consol
apt-get install moon-buggy
apt-get install ninvaders
apt-get install zangband
apt-get install nethack-console
apt install bsdgames
printf "\n\n" 
rm /usr/bin/games &>/dev/null
cp games.sh /usr/bin/games
chmod +x /usr/bin/games
printf "\n\ninstalled successfully!"

