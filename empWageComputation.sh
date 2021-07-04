#! /bin/bash

#Author : Akash Suchak
#Solving Using Switch Case Statement

#Random Number Generate
check=$((RANDOM%3))

#Assign values
wagePerHr=20
fullDayHrs=8
partDayHrs=4

#Calculate Daily Wage
dailyWagePartTime=$((wagePerHr * partDayHrs))
dailyWageFullTime=$((wagePerHr * fullDayHrs))

#Check Employee is FullTime, PArtTime or Absent
#Display Wage accordingly
case $check in
	1)
		echo "Employee is Full Time Present"
		echo "Daily Wage : $dailyWageFullTime"
		;;
	2)
		echo "Employee is Part Time Present"
		echo "Daily Wage : $dailyWagePartTime"
		;;
	*)
		echo "Employee is Absent"
		;;
esac
