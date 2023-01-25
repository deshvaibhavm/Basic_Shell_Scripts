#!/bin/bash -x

export dmy=`date "+%d_%m_%Y"`
echo "Todays date is $dmy"
echo "script execution is happening under user `whoami` over systemname as `uname`"

export p1="/Users/Shared/Practice/Unix_Commands/"
export p2="/Users/Shared/Practice/output/"
export f="test"
export extn=".txt"
export success=1

cd $p1
echo `pwd`

if [ -e $f$extn ]
then
{
    echo "$f$extn file is available...checking if file completion message appears"
    grep -i 'Message' $f$extn
        if [ $? -eq 0 ]
        then
        {
            echo "Message appears, moving the file"
            mv $f$extn $p2
            ls -l $p2$f$extn
            success=0
        }
        else
        {
            echo "Although the file is available, Message doesnt appears...exiting"
        }
        fi
}
else
{
    echo "file is not available...exiting"
}
fi

exit $success
