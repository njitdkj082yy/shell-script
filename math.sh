#!/bin/bash 
echo "let result=no1+no2"
no1=4;
no2=5;
let result=no1+no2
echo $result
echo "let no1+=1 and  let no2--"
let no1+=1
let no2--
echo $no1
echo $no2
echo "***************[ ]****************"
echo 'result=$[ no1 + no2 ]'
result=$[ no1 + no2 ]
echo $result
echo 'result=$[ $no1 + no2 ]'
result=$[ $no1 + no2 ]
echo $result
echo 'result=$((no1 + no2))'
result=$((no1 + no2))
echo $result
echo 'result=$(($no1 + no2))'
result=$(($no1 + no2))
echo $result
echo "***************[ ]****************"

echo "***************expr**************"
echo "result=`expr 3 + 4`"
result=`expr 3 + 4`
echo $result

echo 'result=$(expr $no1 + 5)'
result=$(expr $no1 + 5)
echo $result
echo "***************expr**************"

echo "***************bc***************"
echo "4 * 0.5" | bc
echo "scale=3;3/8" | bc
echo "***************bc***************"

echo "***************bc 2<->10***************"
no=100
echo "obase=2;ibase=10;$no" | bc

no=1100100
echo "obase=10;ibase=2;$no" | bc
echo "***************bc 2<->10***************"

echo "sqrt(100)" | bc
echo "10^10" | bc
