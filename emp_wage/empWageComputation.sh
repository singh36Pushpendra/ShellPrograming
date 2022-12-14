#!/bin/bash

echo "Welcome to Employee Wage Computation Program on Master(piku) branch!"
ABSENT=0
PRESENT=1
monthlyWage=0

WAGE_PER_HOUR=20

PART_TIME_HOURS=4
FULL_TIME_HOURS=8

WORKING_DAY_PER_MONTH=20

day=1
monthHours=0

function getWorkHours() {
    attendance=$((RANDOM % 2))

    fullDayHour=0

    isPartOrFull=$((RANDOM % 2))

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
}
count=0
declare -A dayAndDailyWages
while [ $monthHours -le 100 ] && [ $day -le $WORKING_DAY_PER_MONTH ]
do
    
    dailyWage=0
    getWorkHours
    monthHours=$((monthHours+fullDayHour))
    dailyWage=$((WAGE_PER_HOUR * fullDayHour))
    storeDailyWages[((count++))]=$dailyWage

    dayAndDailyWages[$day]=$dailyWage
    echo "Daily wage of employee : $dailyWage"
    ((day++))

done

monthlyWage=$((monthHours * WAGE_PER_HOUR))
echo "Daily wages : " ${storeDailyWages[@]}
echo "Daily wages in dictionary : " ${dayAndDailyWages[@]}
echo "Total monthly wage of employee : $monthlyWage"
echo "Program runs $day times!"
