#!/bin/bash

# Unzipping the screenshots
tar -xvzf screenshots.tar.gz
mkdir cropped

# Renaming the files for ease of access
cd screenshots/
for f in *\ *; do mv "$f" "${f// /_}"; done
i=0;
for files in `ls`;
do
	mv $files $(basename $i).png;
	i=$(( $i+1 ));
done;

# size: 1450x865+1475+40
cd ..

# Cropping the images
for files in `ls screenshots/`;
do
	if [ -z "$1" ]; then
		width=`identify -ping -format '%w' screenshots/$files`
		height=`identify -ping -format '%h' screenshots/$files`
		x=0
		y=0
	else
		width=$1
		height=$2
		x=$3
		y=$4
	fi
	convert screenshots/$files -crop $width\x$height+$x+$y cropped/$(basename $files .png).png
done;

rm -r screenshots/
mkdir combined

# Combining two images into one by appending them vertically
for j in $(seq 0 $(($i/2-1)) );
do
	convert -append cropped/$(basename $(($j*2))).png cropped/$(basename $(($j*2+1))).png combined/$(basename $j).png
done;

rm -r cropped/

# Joining the combined images into a pdf
convert -page A4 -resize 3508x2480 combined/*.png Screenshots.pdf


rm -r combined/
