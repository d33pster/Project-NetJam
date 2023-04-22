#!/bin/sh
echo "

 ███▄    █ ▓█████▄▄▄█████▓    ▄▄▄██▀▀▀▄▄▄       ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀▓  ██▒ ▓▒      ▒██  ▒████▄    ▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███  ▒ ▓██░ ▒░      ░██  ▒██  ▀█▄  ▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄░ ▓██▓ ░    ▓██▄██▓ ░██▄▄▄▄██ ▒██    ▒██ 
▒██░   ▓██░░▒████▒ ▒██▒ ░     ▓███▒   ▓█   ▓██▒▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░ ▒ ░░       ▒▓▒▒░   ▒▒   ▓▒█░░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░   ░        ▒ ░▒░    ▒   ▒▒ ░░  ░      ░
   ░   ░ ░    ░    ░          ░ ░ ░    ░   ▒   ░      ░   
         ░    ░  ░            ░   ░        ░  ░       ░   
                                                          
"
echo "Version 1.0"

echo ""
echo "1. Fluxion"
echo ""


read -p "Enter Choice: " choice
echo ""


#Functions
fluxion() {
      chmod +x ./fluxion/fluxion.sh
      ./fluxion/fluxion.sh -l english
}


#conditional
if [ "$choice" = 1 ]
then
airmon-ng check kill
airmon-ng start wlan0mon
fluxion
service wpa_supplicant restart
service NetworkManager restart
else
echo "error"
fi



service wpa_supplicant restart
service NetworkManager restart









 

