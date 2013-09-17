#!/bin/bash
MAXTOP=50
TOP=$MAXTOP
TEMP=
declare -a STACK

push()
{
	if [ -z "$1" ] 
	then	
		return
	fi
	until [ $# -eq 0 ]
	do
		let "TOP=TOP-1"
		STACK[$TOP]=$1
		shift
	done
	return 
}
pop()
{
	TEMP=
	if [ "$TOP" -eq "$MAXTOP" ]
	then
		return
	fi	
	TEMP=${STACK[$TOP]}
	unset STACK[$TOP]
	let "TOP+=1"
	return
}
status()
{
	echo "==================================="
	echo "==========STACK===================="
	for i in ${STACK[@]}
	do
		echo $i
	done
	echo "Stack Pointer=$TOP"
	echo "Just popped \""$TEMP"\" off the stack"
	echo "==================================="
	echo 
}
push 1
status
push 2 3 4
status

pop
pop
status
push 5
push 6 7
status
