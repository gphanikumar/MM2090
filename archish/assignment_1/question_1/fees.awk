#!/usr/bin/gawk -f
BEGIN{
	FS = ",";
	sum = 0;
};

{	
	# Saving the roll number in the variable roll
	roll = $1;

	# Stripping the 3rd and 4th characters of the roll number
	year = int(substr(roll, 3, 2));

	# Incrementing the number of students belonging to that year
	num[year]++;	
	
};

END{
	for (year in num){
		
		# Calculating the rate first then the sum - doing in one step gave scientific representation
		rate = (1.1)**(year-17)*num[year];
		sum+= 20000*rate;
	}
       	print sum;	
};
