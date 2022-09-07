#!/bin/bash -x

declare -A dictArithmetics
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
dictArithmetics[1]=$((a+b*c))
dictArithmetics[2]=$((a*b+c))
dictArithmetics[3]=$((c+a/b))
dictArithmetics[4]=$((a%b+c))
echo ${dictArithmetics[@]}
