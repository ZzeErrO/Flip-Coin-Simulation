#!/bin/bash -x

HEAD=0
TAIL=0
while [ 1 -eq 1 ]
do
	flip=$((RANDOM%2))

	if [ 1 -eq $flip ]
	then
		((HEAD++))
	else
		((TAIL++))
	fi

	if [ $HEAD -eq $TAIL ]
   then
      echo TIE WITH $HEAD FOR BOTH
      break
	fi

done

while [ 1 -eq 1 ]
do
	flip=$((RANDOM%2))
	if [ $(($HEAD-$TAIL)) -eq 2 ]
	then
		echo HEAD=$HEAD
		echo TAIL=$TAIL
		break
	elif [ $flip -eq 1 ]
	then
		((HEAD++))
	else
		((TAIL++))
	fi
done
