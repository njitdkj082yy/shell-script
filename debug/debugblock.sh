#!/bin/bash
DEBUG()
{
	if [ "$DEBUG" = "true" ]
	then
		echo "$@"
		$@
	fi
}
a=0
b=2
c=100
DEBUG echo "a=$a b=$b c=$c"
while :
do
	DEBUG echo "a=$a b=$b c=$c"
	if ((a>=10))
	then
		break
	fi
	let "a=a+2"
	let "b=b*2"
	let "c=c-10"
done
