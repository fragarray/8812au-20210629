!# /usr/bin/bash
echo "Installando dipendenze"
sudo apt install -y raspberrypi-kernel-headers bc build-essential dkms git screen -y
ecgo "Creo cartella src"
sudo echo # pre-authorise sudo
mkdir -p ~/src
cd ~/src
echo " "
echo "Clono driver"
git clone https://github.com/morrownr/8812au-20210629.git
cd ~/src/8812au-20210629
echo " "
echo "Configuro per RP"
./ARM_RPI.sh
echo " "
echo "Installando driver processo lungo"
sudo ./install-driver.sh
