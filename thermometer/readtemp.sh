#!/bin/bash
d=$(date +%Y-%m-%d)
now=$(date +"%T")
file=/home/pi/temperatures/ext_$d.log
if [ ! -f $file ]; then
	touch $file
fi
#temp=$(cat /sys/class/thermal/thermal_zone0/temp) 
#echo $now,$temp >> $file 
python3 /home/pi/bin/thermometer.py >> $file

