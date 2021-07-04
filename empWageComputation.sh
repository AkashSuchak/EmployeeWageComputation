#! /bin/bash -x

#Author : Akash Suchak
#Calculating wages for Month

#Random Number Generate
check=$((RANDOM%3))

#Assign values
wagePerHr=20
fullDayHrs=8
partDayHrs=4
workingDays=20

#Check Employee is FullTime, PartTime or Absent
#Display Wage accordingly
case $check in
	1)
		dailyWageFullTime=$((wagePerHr * fullDayHrs))
		monthlyWageFullTime=$((dailyWageFullTime * workingDays))
		echo "Employee is Full Time Present"
		echo "Daily Wage : $dailyWageFullTime"
		echo "Monthly Wage : $monthlyWageFullTime"
		;;
	2)
		dailyWagePartTime=$((wagePerHr * partDayHrs))
		monthlyWagePartTime=$((dailyWagePartTime * workingDays))
		echo "Employee is Part Time Present"
		echo "Daily Wage : $dailyWagePartTime"
		echo "Monthly Wage : $monthlyWagePartTime"
		;;
	*)
		echo "Employee is Absent"
		;;
esac
