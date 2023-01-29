#!/bin/bash -x

#export dmy=`date "+%d_%m_%Y"`
#echo "Todays date is $dmy"
#echo "script execution is happening under user `whoami` over systemname as `uname`"

export p1="/Users/Shared/Practice/dir1/"
export p2="/Users/Shared/Practice/dir2/"
export success=1

cd $p1
echo "Inside `pwd`"

ls -l | grep '^-'
if [ $? -eq 0 ]
then
{
    echo "files are available...checking for 2 mins old files"
    find . -maxdepth 1 -type f -mmin +2 | xargs -I {} mv {} $p2
        ls $p2*
        if [ $? -eq 0 ]
        then
        {
            echo "2 mins old files have been moved to $p2"
            success=0
        }
        else
        {
            echo "Files are available but not 2 mins old...exiting"
        }
        fi
}
else
{
    echo "file is not available...exiting"
}
fi

echo "Success is $success"
exit $success
