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
echo "Version 2.0"

echo ""
echo "1. Fluxion"
echo "2. WebRep"
echo ""


read -p "Enter Choice: " choice
echo ""


#Functions
fluxion() {
      sudo chmod +x ./fluxion/fluxion.sh
      sudo ./fluxion/fluxion.sh -l english
}

webrep() {
      sudo chmod +x ./WebRep/webrep.py
      cd WebRep
      sudo ./webrep.py
}


#conditional
if [ "$choice" = 1 ]
then
sudo airmon-ng check kill
sudo airmon-ng start wlan0mon
fluxion
sudo service wpa_supplicant restart
sudo service NetworkManager restart
elif [ "$choice" = 2 ]
then
webrep
cd ..
else
echo "error"
fi



sudo service wpa_supplicant restart
sudo service NetworkManager restart









 

