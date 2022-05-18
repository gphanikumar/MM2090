#!/bin/bash
# run this as ./getopts-example.sh -a -b barg -c carg
while getopts "ab:c:" options; 
do
	case "${options}" in
		b)
			barg=${OPTARG}
			echo accepted: -b $barg
			;;
		c)
			carg=${OPTARG}
			echo accepted: -c $carg
			;;
		a)
			echo accepted: -a
			;;
		*)
			echo Usage: -a -b barg -c carg
			;;
	esac
done
