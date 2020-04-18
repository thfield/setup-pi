#!/bin/bash
indir=./2020-04-13
outdir=./temp
outfile=city-2020-04-13

mkdir -p $outdir
rm $outdir/*.jpg

i=0

for file in $indir/*.jpg; do
	echo $file, `printf "%04d" $i`

	# # rotate and rename file
	# convert -rotate "180"  $file $outdir/`printf "%04d" $i`.jpg

	# # rename file
	cp $file $outdir/`printf "%04d" $i`.jpg

	i=$((i+1))
done

ffmpeg -y -f image2 -i $outdir/%04d.jpg -r 24 -vcodec libx264 -profile high -preset slow $outfile.mp4
