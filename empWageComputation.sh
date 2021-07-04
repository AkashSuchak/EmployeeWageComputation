#! /bin/bash 

#Author : Akash Suchak
#Store the day and daily wage along with the Total wage

#Assign values
wagePerHr=20
fullDayHrs=8
partDayHrs=4
totalWorkingHrs=0
index=0
totalWage=0

#Define Array to store day, daily Wage and total wage
day=[]
dailyWage=[]
totalWages=[]

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

		#Storing Value in Day, Daily wage and Total wages
		day[$index]=$(($index+1))
		totalWage=$(($totalWage + ${dailyWage[$index]}))
		totalWages[$index]=$totalWage

		index=$(($index+1))

		#Call function
		workHours $workingDays

	else
		echo "Invalid"
	fi
}

#calling Function with parameter (working days=20)
workHours 20

#display Day, Daily Wage, Total Wage
echo "Day: Daily = Total"
echo "     wage    wage"
echo "------------------"
for ((i=0; i<20; i++))
do
	echo "${day[$i]} : ${dailyWage[$i]} = ${totalWages[$i]}"
done


#cound and Display Total Monthly wage
totalMonthlyWage=$((totalWorkingHrs * wagePerHr))
echo "Total Working Hours of Month : $totalWorkingHrs"
echo "Total Wages of Month : $totalMonthlyWage"
