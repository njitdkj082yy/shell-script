#!/bin/bash 
#Filename: echo.sh
#1: echo "1\t2\t3"
#2: echo -e "1\t2\t3"
echo "1\t2\t3"
echo -e "1\t2\t3"
#3: red=31 
 #	green=32
	#echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;32m This is green text \e[0m"
echo -e "\e[1;32m This is green text "
