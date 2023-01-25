#!/bin/bash -x

export dmy=`date "+%d_%m_%Y"`
echo "Todays date is $dmy"

echo "script execution is happening under user `whoami` over systemname as `uname`"

export p1="/Users/Shared/Practice/Unix_Commands/"
export p2="/Users/Shared/Practice/output/"

cd $p1
echo `pwd`

for file in test1.txt test2.txt test3.txt; do
    mv $file $p2
done

cd $p2
echo `pwd`
ls -l $p2

exit 0
-------------------------------------------------------------------------------------
Content of f_file
test1.txt
test2.txt
test3.txt
-------------------------------------------------------------------------------------
#!/bin/bash -x

export dmy=`date "+%d_%m_%Y"`
echo "Todays date is $dmy"

echo "script execution is happening under user `whoami` over systemname as `uname`"

export p1="/Users/Shared/Practice/Unix_Commands/"
export p2="/Users/Shared/Practice/output/"

cd $p1
echo `pwd`

for file in `cat f_file`; do
    mv $file $p2
done

cd $p2
echo `pwd`
ls -l $p2

exit 0
