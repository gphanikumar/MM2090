#!/usr/bin/gawk -f
BEGIN{
	FS = ",";

	# Printing the header
	printf("Roll,Name,Password\n");
};

{	
	# Saving the roll number in the variable roll
	roll = $1;
	# Saving the name in the variable name
	name = $2;

	# Stripping the 1st and 2nd characters of the roll number
	depart = substr(roll, 1, 2);
	# Stripping the last three characters of the roll number
	id = substr(roll, 6, 3);
	# Stripping the 5th characrer of the roll number and storing its lower case
	group = tolower(substr(roll, 5, 1));

	# Finding the length of name
	len_name = length(name);

	printf("%s,%s,%s%s%s%s\n", roll, name, depart, id, len_name, group);

};

END{
};
