#!/usr/bin/gawk -f
BEGIN{
	FS = "\t";
	criterion = criterion/100;
	# Printing the header
	printf("Atomic Number,Element,Atomic Radii,Deviation\n")
	printf("%d,%s,%.2f,0\%\n", atomic, element, key);
};

{	
	# Getting the absolute difference in atomic radii between the chosen element and iterated
	diff = $3-key;
	if (diff<0) diff = -1*diff;

	# Checking if the deviation is <10% and outputting if True
	if (diff<=key*criterion && $1!=32) printf("%d,%s,%.2f,%.2f\%\n", $1, $2, $3,diff/key*100);
};

END{
};
