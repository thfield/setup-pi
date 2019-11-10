#! /bin/bash
raspivid -t 0 -fps 25 -w 800 -h 480 -o - | nc 192.168.55.1 2222
