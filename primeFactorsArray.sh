#! /bin/bash -x

# WAP to find prime factor of given number and store in array.

declare -a array

read -p "Enter number " no
count=0
for (( fact=2; fact<=$no; fact++ ))
do
		while (( $(( $no % $fact )) == 0 ))
		do
				array[$count]=$fact
				(( count++ ))
				no=$(( $no / $fact ))
		done
done
echo ${array[@]}
