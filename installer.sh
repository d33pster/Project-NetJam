#!/bin/sh

echo "Installing all Pre Requisites...."
sleep 1s
sudo apt install git
sudo git clone https://www.github.com/FluxionNetwork/fluxion.git
sudo git clone https://www.github.com/d33pster/WebRep.git





#Creating NetRestarter and NetJam main files and updater
echo "Creating NetRest..."
sleep 2s
cat > netrest.sh <<EOF
read -p 'Enter wifi Driver Name(check ifconfig in another terminal ~ ): ' response
sudo airmon-ng stop $response
sudo service wpa_supplicant restart
sudo service NetworkManager restart
EOF
sleep 0.1
echo "Creating netjam.sh..."
sleep 2
cat > netjam.sh <<EOF
sudo chmod +x ./main/driver.sh
sudo ./main/driver.sh
EOF
sleep 1
echo "Creating Updater ..."
sleep 1 
cat > updater.sh <<EOF
sudo rm -r fluxion
sudo rm -r WebRep
sudo chmod +x ./installer.sh
sudo ./installer.sh
EOF
echo "Starting..."
sleep 1
chmod +x ./main/driver.sh
./main/driver.sh