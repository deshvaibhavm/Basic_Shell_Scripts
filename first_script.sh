#!/bin/bash -x

echo "Lets move on to script dir and print the same"

cd /Users/Shared/Practice/Scripts/
echo `pwd`

touch test_test.text

echo "Execute command to direct the output to a file"
ls > /Users/Shared/Practice/output/list_of_files

echo "Below is the inside file content of list_of_files"
cat /Users/Shared/Practice/output/list_of_files

exit 0
