#! /bin/bash

#Author : Akash Suchak
#Refactor the code to write a function to get work hours

#Assign values
	wagePerHr=20
	fullDayHrs=8
	partDayHrs=4
	#workingDays=20
	totalWorkingHrs=0

function workHours(){
	workingDays=$1

	if [ $workingDays -gt 0 ]
	then
		#Random Number Generate
		check=$((RANDOM%3))

		case $check in
			1)
				totalWorkingHrs=$(($totalWorkingHrs + $fullDayHrs))
				;;
			2)
				totalWorkingHrs=$(($totalWorkingHrs + $partDayHrs))
				;;
			*)
				totalWorkingHrs=$(($totalWorkingHrs + 0))
				;;
		esac

		if [ $totalWorkingHrs -ge 100 ]
		then
			totalWorkingHrs=100
			echo "$totalWorkingHrs"
			return
		fi
		workingDays=$(($1 - 1))
		workHours $workingDays

	else
		echo "$totalWorkingHours"
	fi
}

#calling Function
workHours 20

#cound and Display Total Monthly wage
totalMonthlyWage=$((totalWorkingHrs * wagePerHr))
echo "Total Working Hours of Month : $totalWorkingHrs"
echo "Total Wages of Month : $totalMonthlyWage"

