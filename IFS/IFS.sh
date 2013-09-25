#!/bin/bash
data="name,sex,rollno,location"
lodIFS=$IFS
IFS=,
for item in $data
do
	echo Ttem: $item
done
