#!/bin/bash
ls /etc > loggg

maxline=$(wc -l < loggg)
echo $maxline
for filename in `seq $maxline`
do
	read filename
	if [ "$filename" = "pam.d" ]
	then
		break;
	else
		let "count +=1"
	fi
done < loggg
echo "$count times read"
echo -n "----------Pls.Input Data:-------"
read test
echo $test
