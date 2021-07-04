#! /bin/bash

#Author : Akash Suchak
#Add Part TIme Employee and Wage

#Random Number Generate
check=$((RANDOM%3))

#Assign values
wagePerHr=20
fullDayHrs=8
partDayHrs=4

#Calculate Daily Wage
dailyWageFullTime=$((wagePerHr * fullDayHrs))
dailyWagePartTime=$((wagePerHr * partDayHrs))

#Check Employee is FullTime, PArtTime or Absent
#Display Wage accordingly
if [ $check -eq 1 ]
then
	echo "Employee is Full Time Present"
	echo "Daily Wage : $dailyWageFullTime"
elif [ $check -eq 2 ]
then
	echo "Employee is Part Time Present"
	echo "Daily Wage : $dailyWagePartTime"
else
	echo "Employee is Absent"
fi
