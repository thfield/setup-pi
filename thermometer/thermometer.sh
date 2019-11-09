#!/bin/bash
d=$(date +%Y-%m-%d)
#now=$(date +"%T")
file=/home/pi/temperatures/$d.log
if [ ! -f $file ]; then
	touch $file
fi
python3 /home/pi/bin/thermometer.py >> $file

