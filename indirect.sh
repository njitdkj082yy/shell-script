#!/bin/bash
variable1=variable2
variable2=Hadoop

echo "variable1=$variable1"

eval temp=\$$variable1
echo "temp=$temp"

echo "Indirect ref variable1 is :${!variable1}"
