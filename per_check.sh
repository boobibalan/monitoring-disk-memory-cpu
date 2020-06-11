#!/bin/bash
#per_check.sh

i=1
printf "Memory-vol10\t\tDisk\t\tCPU\n"

end=$((SECONDS+3600))
while [ $SECONDS -lt $end ]; do

echo $i
free -m | awk 'NR==2{printf "RAM %.2f%%\t\t", $3*100/$2}'
df -h | awk '$NF==2"/"{printf "%s\t\t", $5}'
top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'

#echo "$i$memory$disk$cpu"
let "i=i+1"
sleep 5
done

