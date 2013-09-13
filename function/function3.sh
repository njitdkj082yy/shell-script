#!/bin/bash
directory(){
	let "filenum = 0"
	let "dirnum = 0"
	ls $1
	echo ""
	for file in $( ls )
	do 
		if [ -d $file ]
		then
			let "dirnum+=1"
		else
			let "filenum+=1"
		fi
	done
	echo "The number of directories if $dirnum"
	echo "The number of files is $filenum"
}
directory
