#!/bin/bash -x

export ymd=`date "+%Y%m%d"`
export dmy=`date "+_%d%m%Y"`

echo "Today's date is $ymd"

export path1="/Users/Shared/Practice/dir1/"
export path2="/Users/Shared/Practice/dir2/"

export file=test
export extn=".txt"

mkdir $path2$ymd

mv $path1$file$extn $path2$ymd$file$dmy$extn

exit 0
