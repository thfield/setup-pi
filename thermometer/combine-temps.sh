#! /usr/bin/env bash
output=/home/pi/temps.log
echo 'time,temp' > $output
for file in /home/pi/temperatures/*.log
do
	date=`basename ${file%.*}`

	sed -r "s/^(.+?),/${date}T\1\-07:00,/"  $file >> $output
done

