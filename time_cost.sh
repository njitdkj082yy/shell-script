#!/bin/bash
start=$(date +%s)
sleep 4
end=$(date +%s)
difference=$((end - start))
echo "Time cost: $difference"
