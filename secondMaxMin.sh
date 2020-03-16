#!/bin/bash

# WAP to find out second max and min number from array of 10-random numbers

declare -a array

for (( arrValue=1; arrValue<=10; arrValue++ )) #array input
do
		array[$arrValue]=$(( RANDOM%900 + 100 ))
done
echo ${array[@]}                              #display array elements

max=0
secmax=0

for key in "${!array[@]}";
do
		if [[ array[$key] -gt $max ]]				# array element is greater than max 
		then
				secmax=$max
				max="${array[$key]}"
		fi
done
echo $secmax

min=1000
secmin=1000

for key in "${!array[@]}"
do
		if [[ array[$key] -lt $min ]]
		then
				secmin=$min
				min="${array[$key]}"
		fi
done
echo $secmin
