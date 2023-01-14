#!/bin/bash -x

export ymd=`date "+%Y%m%d"`
export dmy=`date "+_%d%m%Y"`

echo "Today's date is $ymd"

export path1="/Users/Shared/Practice/dir1/"
export path2="/Users/Shared/Practice/dir2/"

export file=test
export extn=".txt"

ls $path1$file$extn
if [ $? -eq 0 ]
then
{
    mkdir $path2$ymd
    mv $path1$file$extn $path2$ymd/$file$dmy$extn
        ls $path2$ymd/$file$dmy$extn
    exit 0
}
else
{
    echo "$path1$file$extn is not available...exiting"
    exit 1
}
fi
