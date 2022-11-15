#!/bin/bash

#store arguments from the command line
filename=$1
lastname=$2

#using if, check if both arguments were passed through the command line
if [[ -z "$filename" ]] || [[ -z "$lastname" ]]
then
    echo "You need to proved two arguments for this script to work."
    echo "Usage: <file that stores names> <search name>"
    exit 0
fi

grep -i "[A-Za-z ]$2" $filename

rows=$(grep -c -i "[A-Za-z ]$2" $filename)
if [[ $rows -eq 0 ]]
then
    echo "Sorry. No names were found :("
else
    echo "I have shown all names in the file thats lastname is: $2"
fi
