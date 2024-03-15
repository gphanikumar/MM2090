# Regex applications

**Note:** All these commands follow GNU sed's standard

## Use of sed for stream editing of text

Use `np` to print the `n`th line

      sed '5p' RollList.csv
**Note**: The output might be slightly different from what you'd expect. To understand why, check out *pattern space* below.

Use of `x,yp` to print a range of lines

      sed '2,9p' RollList.csv

Use `/your_regex_here/p` to print lines that match the regular expression

      sed '/ME/p' RollList.csv
      
      sed '/ME/!p' RollList.csv     *prints all the lines that do not match the regular expression*

Use `-n` to supress pattern space

      sed -n '/ME/p' RollList.csv

Strip the roll number

      sed -n 's/....B...,//p' RollList.csv

Strip the name

      sed -n 's/,.*//p' RollList.csv

Use of sed to edit a stream of lines

      cat RollList.csv | sed -e 's/^.*,//g'

      cat RollList.csv | sed -e 's/^.*,//g' > n.txt

      cat RollList.csv | sed -e 's/,.*//g' > r.txt

Use of brackets to store fields (capturing groups)

      cat RollList.csv | sed -e 's/^\(.*\),\(.*\)$/\2,\1/g'

Changing case of fields

      cat RollList.csv | sed -e 's/^\(.*\),\(.*\)$/\2,\L\1/g'

## Changing case of fields and adding text that makes the roll number appear as an email address.

      cat RollList.csv | sed -e 's/^\(.*\),\(.*\)$/\2,\L\1@smail.iitm.ac.in/g'

