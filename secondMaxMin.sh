#!/bin/bash 

# WAP to find out second max and min number from array of 10-random numbers using sorting of array.

declare -a array

for (( arrValue=1; arrValue<=10; arrValue++ )) #array input
do
		array[$arrValue]=$(( RANDOM%900 + 100 ))
done

length=${#array[@]}        # length of array

temp=0
# Sort the elements of array

for (( outLoop=1; outLoop<=$(($length - 1 )); outLoop++ ))
do
		for(( inLoop=$(( $outLoop + 1 )); inLoop<=$length; inLoop++ ))
		do
				if [[ array[$outLoop] -lt array[$inLoop] ]] 
				then
						temp="${array[$outLoop]}"
						array[$outLoop]="${array[$inLoop]}"
						array[$inLoop]=$temp
				fi
		done
done
echo "Sorted array is : ${array[@]}"
echo "Second Maximun number is ${array[2]}"
echo "Second minimum number is ${array[$(( $length-1 ))]} "

