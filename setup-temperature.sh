#!/usr/bin/env bash
mkdir -p /home/pi/bin
mkdir -p /home/pi/temperatures

mv files/temperatures.sh /home/pi/bin/temperature.sh
chmod +x /home/pi/bin/temperature.sh

sudo mv files/tftemp.service /lib/systemd/system/tftemp.service
sudo chmod 644 /lib/systemd/system/tftemp.service

sudo systemctl daemon-reload
sudo systemctl enable tftemp.service
sudo systemctl start tftemp.service

# https://crontab.guru/
# add to crontab
# * * * * * /home/pi/bin/temperature.sh
