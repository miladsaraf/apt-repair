#! /bin/bash
#Apt fixer
#Autor: Milad Sarraf
#Autor website: http://miladsarraf.ir
#Website: http://datanito.com
#Description: Solution for fix apt problems.
#github: http://github.com/miladsarraf
#License: GPL3
#All rights reserved
echo "                   .-.________                 ________.-."
echo "              ----/ \_)_______)    Datanito   (_______(_/ \----"
echo "                 (    ()___)  Website:datanito.com  (___()   )"
echo "                      ()__)   Autor: Milad Sarraf    (__()"
echo "              ----\___()_)Autor Website:miladsarraf.ir(_()___/----"


if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root!"
	exit 1
fi
touch /etc/apt/sources.list 
chmod 644 /etc/apt/sources.list 
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list 
apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
apt-get update 
if [ $? -eq 0  ]; then
	echo "Apt fixed successfully! GOODLUCK :)"
	
else
	echo "Failed! there is error[s] check above lines!"
fi
