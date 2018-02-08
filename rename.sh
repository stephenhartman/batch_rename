#!/bin/bash
echo " " >> filerename.csv
> output.log
while read line
do
  old=$(echo "$line" | awk -F"," '{print $1}')
  new=$(echo "$line" | awk -F"," '{print $2}')
  for filename in $old*.jpg
  do
    if [ -f $filename ]; then
      mv -i "$filename" "${filename/$old/$new}"
    else
      echo "No filename containing '$old' found." >> output.log 2>&1
    fi
  done
done < filerename.csv
perl -pi -e 'chomp if eof' filerename.csv
