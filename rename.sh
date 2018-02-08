#!/bin/bash
while read line
do
	old=$(echo "$line" | awk -F"," '{print $1}')
	new=$(echo "$line" | awk -F"," '{print $2}')
	for f in $old*.jpg; do mv -i "$f" "${f/$old/$new}"; done
done < filerename.csv
