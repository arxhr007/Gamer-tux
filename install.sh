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
printf "NOTE: you also need install necessary packages\n"
for i in 3 2 1
do
	echo "staring installation process in ${i}" ; 
	sleep 1
done
apt-get install nudoku -y
apt install bastet -y
apt-get install nsnake -y
apt-get install greed -y
apt-get install pacman4consol -y
apt-get install moon-buggy -y
apt-get install ninvaders -y
apt-get install zangband -y
apt-get install nethack-console -y
apt install bsdgames -y
printf "\n\n" 
rm /usr/bin/games &>/dev/null
cp games.sh /usr/bin/games
chmod +x /usr/bin/games
printf "\n\ninstalled successfully!"

