#!/bin/bash -x

export dmy=`date "+%d_%m_%Y"`
echo "Todays date is $dmy"

echo "script execution is happening under user `whoami` over systemname as `uname`"

export p="/Users/Shared/Practice/Unix_Commands/"

cd $p
echo `pwd`

echo "Total number of files directory available on $p is `ls | wc -l`"

exit 0
