#!/bin/bash
find  /home/yy/workspace/bsp12/bsp12/kernel/drivers/ -iname "*.c" > loggg
while [ "$filename" != "yas529.c" ]
do
	read filename
	filename=${filename: -8}
	let 'count +=1'
	echo "$count times read"
done < loggg
echo -n "--------Pls.Input data-----"
read test
echo "$test"
