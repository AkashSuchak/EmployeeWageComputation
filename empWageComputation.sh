#! /bin/bash 

#Author : Akash Suchak
#Store the daily wage along with the Total wage

#Assign values
wagePerHr=20
fullDayHrs=8
partDayHrs=4
totalWorkingHrs=0
index=0

#Define Array to store daily Wage
dailyWage=[]

#define Function to calculate Working Hours and Daily Wages
function workHours(){
	workingDays=$1

	if [ $workingDays -gt 0 ]
	then
		#Random Number Generate
		check=$((RANDOM%3))

		#Use Case to calculate
		case $check in
			1)
				dailyWage[$index]=$(($fullDayHrs * $wagePerHr))
				totalWorkingHrs=$(($totalWorkingHrs + $fullDayHrs))
				;;
			2)
				dailyWage[$index]=$(($partDayHrs * $wagePerHr))
				totalWorkingHrs=$(($totalWorkingHrs + $partDayHrs))
				;;
			*)
				dailyWage[$index]=0
				totalWorkingHrs=$(($totalWorkingHrs + 0))
				;;
		esac

		#Condition to check Working Hours more than 100
		if [ $totalWorkingHrs -ge 100 ]
		then
			totalWorkingHrs=100
			echo "$totalWorkingHrs"
			return
		fi
		workingDays=$(($1 - 1))
		#Display Daily Wage
		echo "Daily Wage : ${dailyWage[$index]}"
		index=$(($index+1))

		#Call function
		workHours $workingDays

	else
		echo "$totalWorkingHours"
	fi
}

#calling Function
workHours 20

#cound and Display Total Monthly wage
totalMonthlyWage=$((totalWorkingHrs * wagePerHr))
#echo "Total Working Hours of Month : $totalWorkingHrs"
echo "Total Wages of Month : $totalMonthlyWage"

