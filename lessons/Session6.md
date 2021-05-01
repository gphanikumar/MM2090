# Regex applications

## Use of sed for stream editing of text

Use of -n to supress lines that do not match

      sed \'/,A/p\' RollList.csv

      sed -n \'/,A/p\' RollList.csv

Use of regex in sed

      sed \'s/,A/,a/p\' RollList.csv

      sed -n \'s/,A/,a/p\' RollList.csv

Strip the roll number

      sed -n \'s/\....B\...,//p\' RollList.csv

      sed -n \'s/.\*,//p\' RollList.csv

Strip the name

      sed -n \'s/,.\*//p\' RollList.csv

Use of sed to edit a stream of lines

      cat RollList.csv \| sed -e \'s/\^.\*,//g\'

      cat RollList.csv \| sed -e \'s/\^.\*,//g\' \> n.txt

      cat RollList.csv \| sed -e \'s/,.\*//g\' \> r.txt

Use of brackets to store fields

      cat RollList.csv \| sed -e \'s/\^\\(.\*\\),\\(.\*\\)\$/\\2,\\1/g\'

Changing case of fields

      cat RollList.csv \| sed -e \'s/\^\\(.\*\\),\\(.\*\\)\$/\\2,\\L\\1/g\'

## Changing case of fields and adding text that makes the roll number appear as an email address.

      cat RollList.csv \| sed -e \'s/\^\\(.\*\\),\\(.\*\\)\$/\\2,\\L\\1\@smail.iitm.ac.in/g\'

