#!/bin/sh

echo "Installing all Pre Requisites...."
sleep 1s
apt install git
git clone https://www.github.com/FluxionNetwork/fluxion.git






#Creating NetRestarter and NetJam main files.
echo "Creating NetRest..."
sleep 2s
echo "read -p 'Enter wifi Driver Name(check ifconfig in another terminal ~ ): ' response" > netrest.sh
echo "airmon-ng stop $response" >> netrest.sh
sleep 0.1
echo "service wpa_supplicant restart" >> netrest.sh 
echo "service NetworkManager restart" >> netrest.sh
echo "Creating netjam.sh..."
sleep 2
echo "chmod +x ./main/driver.sh" > netjam.sh
echo "./main/driver.sh" >> netjam.sh
sleep 1
echo "Starting..."
sleep 1
chmod +x ./main/driver.sh
./main/driver.sh