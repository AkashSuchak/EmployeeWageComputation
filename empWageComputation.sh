#! /bin/bash 

#Author : Akash Suchak
#Calculate Wages till toal working hours or days is reached for a month

#Assign values
wagePerHr=20
fullDayHrs=8
partDayHrs=4
workingDays=20
totalWorkingHrs=0

#Check Employee is FullTime, PartTime or Absent
for (( days=1; days<=$workingDays; days++ ))
do
	#Random Number Generate
	check=$((RANDOM%3))

	case $check in
		1)
			#dailyWageFullTime=$((wagePerHr * fullDayHrs))
			#monthlyWageFullTime=$((dailyWageFullTime * workingDays))
			totalWorkingHrs=$((totalWorkingHrs + fullDayHrs))
			;;
		2)
			#dailyWagePartTime=$((wagePerHr * partDayHrs))
			#monthlyWagePartTime=$((dailyWagePartTime * workingDays))
			totalWorkingHrs=$((totalWorkingHrs + partDaysHrs))
			;;
		*)
			totalWorkingHrs=$((totalWorkingHrs + 0))
			;;
	esac

	if [ $totalWorkingDays > 100 ]
	then
		totalWorkingHrs=100
	fi
done
totalMonthlyWage=$((totalWorkingHrs * wagePerHr))
echo "Total Working Hours of Month : $totalWorkingHrs"
echo "Total Wages of Month : $totalMonthlyWage"
