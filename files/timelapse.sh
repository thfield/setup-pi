#!/usr/bin/env bash
DATE=$(date +"%Y-%m-%d_%H%M%S")

# if camera is right-side up
raspistill -w 1920 -h 1080 -ex auto -awb auto -n -o /home/pi/timelapse/${DATE}img%04d.jpg

# if camera is upside down
#raspistill -w 1920 -h 1080 -ex auto -awb auto -vf -hf -n -o /home/pi/Pictures/timelapse/$DATE.jpg
