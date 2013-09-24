#!/bin/bash
echo -n count:
tput sc  #save current mouse position

count=0
while true
do
	if [ $count -lt 10 ]
	then
		let count++
		sleep 1
		tput rc    #top saved mouse position
		tput ed	   #clear current positon to line end positon context
		echo -n $count
	else
		break
	fi
done
echo 
