#!/usr/bin/bash

timeStamp=$(date +%d%b%Y_%H%M%S)

if !(test -f "backup_$timestamp") 
then
	touch "backup_$timeStamp"
fi
#echo "$timeStamp"
