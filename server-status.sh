#! /bin/bash 

#Creating a loop to simulate a task
while true; do :; done &
# Getting the CPU usage
top -bn 1 | grep %Cpu | awk '{print 100-$4}'
# Free memory in MB 
freeMem=free -m | awk 'NR==2 {print $3}'
# Memory in use in MB 
inUse=free -m | awk 'NR==2 {print $2}'
#on percentage
freePerc= $freeMem / $inUse * 100
inUsePerc= (($free / $inUse)*-1 * 100)*-1
echo "The free memory is: $freeMem MB and in percentage: $freePerc %"
echo "The memory in use is: $inUse MB and in percentage: $inUsePerc %"
#on percentage

