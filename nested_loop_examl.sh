#!/bin/bash
i=1
j=1
sum=0
while [ "$i" -le 9 ]
do
	while [ "$j" -le "$i" ]
	do
		let "sum=i*j"
		echo -n "$i*$j=$sum "		
		let "j+=1"
	done
	let "j=1"
	let "i+=1"
	echo ""
done
