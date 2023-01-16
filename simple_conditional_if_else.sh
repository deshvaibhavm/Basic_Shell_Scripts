#!/bin/bash -x

export ymd=`date "+%Y%m%d"`

echo "Today's date is $ymd"

export path1="/Users/Shared/Practice/dir1/"

export file=test
export extn=".txt"

if ls $path1$file$extn
then
{
    echo "$path1$file$extn File exist"
    exit 0
}
else
{
    echo "$path1$file$extn File doesnt exist...exiting"
    exit 1
}
fi
