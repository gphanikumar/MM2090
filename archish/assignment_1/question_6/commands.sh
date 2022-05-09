#!/bin/bash

atomic=$1
element=`cat AtomicRadii.csv | sed 's/\t/,/g' | awk -v atomic=$atomic -F, '{if($1==atomic) print $2;}'`
key=`cat AtomicRadii.csv | sed 's/\t/,/g' | awk -v atomic=$atomic -F, '{if($1==atomic) print $3;}'`

echo "Choosing Element $element with Atomic Number $atomic and Radius $key"
echo "Criterion is $2% deviation in Atomic Radius from the chosen element"
awk -v atomic=$atomic -v element=$element -v key=$key -v criterion=$2 -f radius.awk < AtomicRadii.csv > Similar.csv

