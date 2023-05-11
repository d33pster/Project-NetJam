#!/bin/sh

echo "Installing all Pre Requisites...."
sleep 1s
sudo apt install git
sudo git clone https://www.github.com/FluxionNetwork/fluxion.git
sudo git clone https://www.github.com/d33pster/WebRep.git





#Creating NetRestarter and NetJam main files and updater
echo "Creating NetRest..."
sleep 2s
echo "read -p 'Enter wifi Driver Name(check ifconfig in another terminal ~ ): ' response" > netrest.sh
echo "sudo airmon-ng stop $response" >> netrest.sh
sleep 0.1
echo "sudo service wpa_supplicant restart" >> netrest.sh 
echo "sudo service NetworkManager restart" >> netrest.sh
echo "Creating netjam.sh..."
sleep 2
echo "sudo chmod +x ./main/driver.sh" > netjam.sh
echo "sudo ./main/driver.sh" >> netjam.sh
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