#!/bin/bash -x

read -p "Enter the number of times to be looped for Coin: " Num
x=0
HEAD=0
TAIL=0
while [ $Num -ne $x ]
do
	flip=$((RANDOM%2))

	if [ 1 -eq $flip ]
	then
		((HEAD++))
	else
		((TAIL++))
	fi

	x=$(($x+1))
done

echo $HEAD
echo $TAIL
