#!/bin/bash

INPUT=old_new_file_names.csv
OLDIFS=$IFS
IFS=' '

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read old_name new_name
do
	mv $old_name $new_name
	echo "Renamed $old_name to $new_name."
done < $INPUT

IFS=$OLDIFS

