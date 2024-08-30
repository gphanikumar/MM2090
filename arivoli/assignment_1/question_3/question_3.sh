#!/usr/bin/bash
<<COMMENT
Name: Arivoli Ramamoorthy
Roll number: EE23B008
Date: 02-03-2024
Description: 
-The program decodes encoded names using provided encoding rules.
Input: Encoded values for usernames/roll numbers.
Output: Roll number, Decoded names saved in "output.txt".
COMMENT


#Tried dividing the encoded number by the ASCII of the corresponding alphabet. Found a pattern
#A=65*202; B=66*204; C=67*206.....
#for increment by 1 in ascii, the multiplying factor increased by two.
#so figured that formula was x*(2x+c) and by substitution found that c = 72.
#A = 65 * (2*65 + 72) where 65 is the ascii value of A.
#didnt bother plotting on gnuplot but it should give a parabalo as the equation is quadratic

# Fetch the file using curl
curl -s "$1" >temp_file.txt

decode_username() {
	# Ignore the first element (roll number)
	encode="$@"
	roll_num=$(awk '{print $1}' <<<"$encode")
	encoded=${encode#* }
	decoded=""
	for x in $encoded; do
		# Applying transformation ((x-72)/2)^0.5
		ascii_value=$(echo "if (d=72*72-4*2*(-$x)) { x1=(-72+sqrt(d))/(2*2); x2=(-72-sqrt(d))/(2*2); if (x1>=0) x1; if (x2>=0) x2; }" | bc)
		# Converting the ascii value to character
		decoded+="$(printf \\$(printf '%03o' $ascii_value))"
	done
	echo "$roll_num","$decoded"
}

# Decode usernames from the remaining lines
tail -n +53 temp_file.txt | while read -r line; do
	username=$(decode_username "$line")
	echo "$username"
done >output.txt

# Clean up temporary file
rm temp_file.txt

