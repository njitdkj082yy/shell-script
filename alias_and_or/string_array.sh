#!/bin/bash
city=(Nanjing Atlanta Massachusetts Marseilles)
for i in "${city[@]}"
do
	echo "${city[@]}=$i"
done
echo "Extracting Substring"
echo ${city[*]:0}
echo ${city[*]:1}
echo ${city[*]:3}
echo ${city[*]:0:2}
echo 
echo "Removing Substring"
echo ${city[*]#M*a}
echo ${city[*]##M*a}
echo 
echo "Replcing Substring"
echo ${city[*]/M*s/Year}
echo ${city[*]//M*s/Year} 
