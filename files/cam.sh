#!/usr/bin/env bash
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H%M%S")
mkdir -p /home/pi/timelapse/${DATE}

# if camera is right-side up
#raspistill -a 4 -w 1920 -h 1080 -ex auto -awb auto -n -o /home/pi/timelapse/${DATE}/${TIME}img%03d.jpg

# if camera is upside down
#raspistill -a 4 -w 1920 -h 1080 -ex auto -awb auto -vf -hf -n -o /home/pi/Pictures/timelapse/$DATE/${TIME}img%03d.jpg

# add timestamp overlay
raspistill -a 1036 -ae +25+25 -w 1920 -h 1080 -ex auto -awb auto -vf -hf -n -o /home/pi/timelapse/$DATE/${TIME}img%03d.jpg
