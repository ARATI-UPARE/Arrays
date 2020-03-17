#! /bin/bash -x

# Loop to check 0-100 number and display repeat number like 11,22,33 etc
start=1
end=100
echo " Repeat numbers are : "
for (( number=$start; number<=$end; number++ ))
do	
		if [[ $(( number % 11 )) -eq 0 ]]
		then
				echo $number
		fi
done

