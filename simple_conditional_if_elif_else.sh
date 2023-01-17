#!/bin/sh

read -p "Enter any number: " number

if [ $number -gt 10 ]
then
   echo "number entered is greater than 10"
elif [ $number -lt 10 ]
then
   echo "number entered is lesser than 10"
else
   echo "you have entered exactly 10"
fi
