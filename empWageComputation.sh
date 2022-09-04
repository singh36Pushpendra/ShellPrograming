#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master(piku) branch!"
attendance=$((RANDOM%2))
ABSENT=0
PRESENT=1

if [ $attendance -eq $PRESENT ]
then
    echo "Employee is present!"
else
    echo "Employee is absent!"
fi
