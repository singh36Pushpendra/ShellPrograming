#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master(piku) branch!"
attendance=$((RANDOM%2))
ABSENT=0
PRESENT=1

dailyWage=0
WAGE_PER_HOUR=20
FULL_DAY_HOUR=0

if [ $attendance -eq $PRESENT ]
then
    echo "Employee is present!"
    FULL_DAY_HOUR=8
else
    echo "Employee is absent!"
fi

dailyWage=$((WAGE_PER_HOUR*FULL_DAY_HOUR))
echo "Daily wage of employee : $dailyWage"
