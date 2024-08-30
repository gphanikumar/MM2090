#!/bin/bash

# Fetch data from the online source
curl -s "https://apod.nasa.gov/apod/archivepixFull.html" >nasa.html

data=$(cat nasa.html | grep 'href="ap')
#echo "$data"

rearrange_date() {
	input_date="$1"
	# Split the input date into parts based on spaces
	IFS=' ' read -ra parts <<<"$input_date"

	# Extract parts that are numbers (day and year)
	numeric_parts=()
	text_part=""
	for part in "${parts[@]}"; do
		if [[ $part =~ ^[0-9]+$ ]]; then
			numeric_parts+=("$part")
		else
			text_part="$part"
		fi
	done

	# Sort numeric parts (day and year)
	sorted_numeric_parts=($(printf "%s\n" "${numeric_parts[@]}" | sort -n))

	# Join the sorted numeric parts and the text part
	rearranged_date="${sorted_numeric_parts[0]} ${sorted_numeric_parts[1]} $text_part"
	echo "$rearranged_date"
}

ans1a=""
ans1b=""

while IFS= read -r line; do
	date=${line%%:*}
	sorted_date=$(rearrange_date "$date")
	title=$(echo "$line" | grep -oP '(?<=>).*?(?=<\/a>)')
	ftitle="$date: $title"
	# Pair the columns
	#DD=$(echo "$sorted_date" | awk '{print $1}')
	DD=$(echo "$sorted_date" | awk '{print $1}' | sed 's/^0*//')
	YYYY=$(echo "$sorted_date" | awk '{print $2}')
	MM=$(echo "$sorted_date" | awk '{$1=$2=""; print $0}' | sed 's/^[ \t]*//')
	case "$MM" in
	January) MM=1 ;;
	February) MM=2 ;;
	March) MM=3 ;;
	April) MM=4 ;;
	May) MM=5 ;;
	June) MM=6 ;;
	July) MM=7 ;;
	August) MM=8 ;;
	September) MM=9 ;;
	October) MM=10 ;;
	November) MM=11 ;;
	December) MM=12 ;;
	esac

	if (($YYYY % $MM == 0)); then
		ans1a+="$ftitle\n"
		#echo "month $ftitle\n"
	fi
	if (($YYYY % $DD == 0)); then
		ans1b+="$ftitle\n"
		#echo "date $ftitle\n"
	fi
done <<<"$data"

# Print the results
#echo "Titles of images uploaded on dates whose YYYY is divisible by DD:"
echo -e "$ans1a" >answer_1a.csv

#echo "Titles of images uploaded on dates whose YYYY is divisible by MM:"
echo -e "$ans1b" >answer_1b.csv
