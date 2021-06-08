#!/bin/bash
c=0;
x=0;
for a_file in /bin/*; do
	if ! [ -z "`file $a_file|grep 'shell script'`" ]
	then
		((c++));
	fi
done;

echo $c;
