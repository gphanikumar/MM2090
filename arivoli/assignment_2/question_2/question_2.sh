#!/usr/bin/bash

data=$(tail -n +2 "$1")

# Function to perform complement operation
complement() {
	input="$1"
	complement=""
	for ((i = 0; i < ${#input}; i++)); do
		char="${input:$i:1}"
		if [[ "$char" =~ [A-Z] ]]; then
			offset=$((25 - ($(printf "%d" "'$char") - $(printf "%d" "'A"))))
			complement+=$(printf "\\$(printf '%03o' $(($(printf "%d" "'A") + offset)))")
		elif [[ "$char" =~ [a-z] ]]; then
			offset=$((25 - ($(printf "%d" "'$char") - $(printf "%d" "'a"))))
			complement+=$(printf "\\$(printf '%03o' $(($(printf "%d" "'a") + offset)))")
		else
			complement+="$char"
		fi
	done
	echo "$complement"
}

# Read the input file line by line
while IFS= read -r line; do
	# Remove rows with missing parameters
	# Split the line into columns
	IFS=' ' read -r vehicle_number soc mileage charging_time soh driver_name <<<"$line"
	#echo "$vehicle_number $soc $mileage $charging_time $soh $driver_name"
	# Check if the line has 6 columns
	if [[ $(echo "$line" | tr -s ' ' | wc -w) -eq 6 ]]; then
		# Correct the alphabets in the data
		#echo "$vehicle_number"
		#vehicle_number=$(complement "$vehicle_number")
		#echo "$vehicle_number"
		#soh=$(complement "$soh")
		#echo "$soh"
		driver_name=$(complement "$driver_name")

		# Swap SoH and SoC columns for Vehicle Number AG
		if [[ $vehicle_number == "AG"* || $vehicle_number == *"AG" ]]; then
			temp=$soc
			soc=$soh
			soh=$temp
		fi

		# Flag misreported entries
		if [[ $soc -eq 0 && $mileage -ne 0 ]]; then
			flag="Fake"
		else
			flag=""
		fi

		# Print the corrected line with the flag
		echo "$vehicle_number $soc $mileage $charging_time $soh $driver_name $flag" | column -t
		#echo "$vehicle_number       $soc                $mileage             $charging_time                    $soh                $driver_name        $flag"
	fi
done <<<"$data"
