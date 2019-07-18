#!/usr/bin/env bash
mkdir -p /home/pi/bin
mkdir -p /home/pi/timelapse

mv files/timelapse.sh /home/pi/bin/timelapse.sh
chmod +x /home/pi/bin/timelapse.sh

touch /tmp/timelapse.log

# https://crontab.guru/
# add to crontab
# * 5-23 * 7 * /home/pi/bin/timelapse.sh > /tmp/timelapse.log 2>&1
