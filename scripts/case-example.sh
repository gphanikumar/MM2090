#!/bin/bash
echo what is your favorite image processor?
read pname
case $pname in
	[gG]imp | inkscape)
		echo good choice
		;;
	[aA]dobe*)
		echo that costs a lot and needs cloud
		;;
	imagej | ImageJ)
		echo measuring things on the image?
		;;
	*)
		echo I did not know $pname could do image stuff
		;;
esac
