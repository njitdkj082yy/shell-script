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
