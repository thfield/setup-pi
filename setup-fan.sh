#!/usr/bin/env bash
mkdir -p /home/pi/bin

mv files/fan.py /home/pi/bin/fan.py
chmod +x /home/pi/bin/fan.py

sudo mv files/fancontrol.sh /etc/init.d/
sudo chmod +x /etc/init.d/fancontrol.sh
sudo update-rc.d fancontrol.sh defaults
sudo /etc/init.d/fancontrol.sh start
