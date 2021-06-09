#!/bin/bash
t=`date|cut -c 1,2,3`
echo $t
if [ $t == "Mon" ]
then
	echo "Today is Monday"
else
	echo "Today is not Monday"
fi
if [ $t == "Tue" ]
then
	echo "Today is Tuesday"
else
	echo "Today is not Tuesday"
fi
if [ $t == "Wed" ]
then
	echo "Today is Wednesday"
else
	echo "Today is not Wednesday"
fi
if [ $t == "Thu" ]
then
	echo "Today is Thursday"
else
	echo "Today is not Thursday"
fi
if [ $t == "Fri" ]
then
	echo "Today is Friday"
else
	echo "Today is not Friday"
fi
if [ $t == "Sat" ]
then
	echo "Today is Saturday"
else
	echo "Today is not Saturday"
fi
if [ $t == "Sun" ]
then
	echo "Today is Sunday"
else
	echo "Today is not Sunday"
fi

