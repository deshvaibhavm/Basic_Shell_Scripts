#!/bin/bash -x

export dmy=`date "+%d_%m_%Y"`
echo "Todays date is $dmy"

echo "script execution is happening under user `whoami` over systemname as `uname`"

export p="/Users/Shared/Practice/Unix_Commands/"

cd $p
echo `pwd`

ls -lh check.txt cloud.pdf document.doc

zip archive.zip check.txt cloud.pdf document.doc

echo "To view the zip files, check the below output"
unzip -v archive.zip

echo "To unzip particular file over different directory"
unzip -o archive.zip check.txt -d /Users/Shared/Practice/output/

ls -lh /Users/Shared/Practice/output/check.txt

exit 0
