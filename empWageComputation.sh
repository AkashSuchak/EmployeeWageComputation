#! /bin/bash

#Author : Akash Suchak
#Check Employee is Present or Not

#Random Number Generate
check=$((RANDOM%2))

#Assign values
wagePerHr=20
fullDayHrs=8

#Calculate Daily Wage
dailyWage=$((wagePerHr * fullDayHrs))

#Check Employee is Present or Absent
if [ $check -eq 1 ]
then
	echo "Employee is Present"
	echo "Daily Wage : $dailyWage"
else
	echo "Employee is Absent"
fi
