#! /bin/bash

#Author : Akash Suchak
#Check Employee is Present or Not

#Random Number Generate
check=$((RANDOM%2))

#Check Employee is Present or Absent
if [ $check -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
