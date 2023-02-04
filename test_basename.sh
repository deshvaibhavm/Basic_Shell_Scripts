#!/bin/bash -x

export dmy=`date "+_%d%m%y"`

export p1="/Users/Shared/Practice/Unix_Commands/directory1/"
export p2="/Users/Shared/Practice/Unix_Commands/directory2/"
export extn1=".txt"
export extn2=".doc"
export success=1

cd $p1
echo `pwd`

for file in `ls *$extn1` ;do
    basefilename=`basename $file $extn1`
    echo $basefilename
    mv $file $p2${basefilename}$dmy$extn2
done
