#!/bin/bash -x

cd /Users/Shared/Practice/Unix_Commands/
echo `pwd`

echo "Below is the first file in the list"
ls -t | head -n 1

echo "Below is the last file in the list"
ls -t | tail -n 1

echo "Below are the first two lines from the mentioned file"
head -n 2 employee_details.txt

echo "Below are the last two lines from the mentioned file"
tail -n 5 employee_details.txt
