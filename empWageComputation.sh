#!/bin/bash 
echo "Welcome to Employee Wage Computation Program on Master(piku) branch!" 
attendance=$((RANDOM%2)) 
ABSENT=0
PRESENT=1

dailyWage=0
monthlyWage=0
WAGE_PER_HOUR=20
fullDayHour=0

PART_TIME_HOURS=4
FULL_TIME_HOURS=8
isPartOrFull=$((RANDOM%2))

WORKING_DAY_PER_MONTH=20
case $attendance in 
    $PRESENT)
        echo "Employee is present!"
        case $isPartOrFull in
       	    1)
                fullDayHour=$FULL_TIME_HOURS
	        echo "Full Time Employee!"
	        ;;
	    0)
                fullDayHour=$PART_TIME_HOURS
	        echo "Part Time Employee!"
	        ;;
        esac
	;;
    $ABSENT)
        echo "Employee is absent!"
	;;
esac

dailyWage=$((WAGE_PER_HOUR*fullDayHour))
echo "Daily wage of employee : $dailyWage"

monthlyWage=$((WORKING_DAY_PER_MONTH*WAGE_PER_HOUR*fullDayHour))
echo "Daily wage of employee : $monthlyWage"
