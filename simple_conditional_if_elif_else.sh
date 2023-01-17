#!/bin/sh

echo "Enter a number: "
read number

if [ $number -gt 10 ]
then
   echo "number entered is greater than 10"
elif [ $number -lt 10 ]
then
   echo "number entered is lesser than 10"
else
   echo "you have entered exactly 10"
fi
***********************************************
#!/bin/sh

#export number=25
#export compare=30

echo "Enter two numbers:"
read number compare

if [ $number -gt $compare ]
then
   echo "$number entered is greater than $compare"
elif [ $number -lt $compare ]
then
   echo "$number entered is lesser than $compare"
else
   echo "you have entered exactly $number & $compare same numbers"
fi
***********************************************
