#!/bin/sh

touch "$1"
echo "#!/bin/sh" >> "$1"
vi $1
chmod 744 "$1"

echo "Would you like to save it into a specific path or revert to the default path? (Y/n)"

read yesno
location="~/Code/Bash-Scripts/"

if test $yesno="y";
then
	echo "Where do you want to save it?"
	read $location
fi

echo "You are saving at $location"

mv $1 $location
