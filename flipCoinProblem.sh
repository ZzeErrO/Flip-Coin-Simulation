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

	if [ $HEAD -eq 21 ]
	then
		echo HEAD=$HEAD
		echo TAIL=$TAIL
		echo HEAD WINS BY $(($HEAD-$TAIL))
		break
	elif [ $TAIL -eq 21 ]
	then
		echo HEAD=$HEAD
		echo TAIL=$TAIL
		echo TAIL WINS BY $(($TAIL-$HEAD))
		break
	fi
	if [ $HEAD -eq $TAIL ]
   then
      echo TIE WITH $HEAD FOR BOTH
      break
	fi
	x=$(($x+1))

done
