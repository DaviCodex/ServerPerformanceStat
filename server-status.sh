#! /bin/bash 
#Creating a loop to simulate a task
while true; do :; done &
# Getting the CPU usage
CPU_usage=$(top -bn 1 | grep %Cpu | awk '{print 100-$4}')
echo "The CPU % in use is: $CPU_usage %"
# Free memory in MB 
freeMem=$(free -m | awk 'NR==2 {print $3}')
# Memory in use in MB 
inUse=$(free -m | awk 'NR==2 {print $2}')
#Free memory percentage
per_free=$(echo "scale=2; ($freeMem / $inUse)*100" | bc -l)
echo "The memory in use is: $freeMem MB and in percentage: $per_free %"
per_use=$( echo "scale=2; (1-($freeMem / $inUse))*100" | bc -l)
echo "The memory in use is: $inUse MB and in percentage: $per_use %"


