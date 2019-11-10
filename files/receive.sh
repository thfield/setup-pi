#! /bin/bash
nc -l 2222 | mplayer -fps 25 -demuxer h264es -
