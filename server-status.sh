#! /bin/bash 
####################################
#Creating a loop to simulate a task#
####################################

while true; do :; done &

###################################
###### Getting the CPU usage#######
###################################

CPU_usage=$(top -bn 1 | grep %Cpu | awk '{print 100-$4}')
echo "The CPU % in use is: $CPU_usage %"

###################################
### Free memory vs memory in use###
###################################

# Free memory in MB 
freeMem=$(free -m | awk 'NR==2 {print $3}')
# Memory in use in MB 
inUse=$(free -m | awk 'NR==2 {print $2}')
#Free memory percentage
per_free=$(echo "scale=2; ($freeMem / $inUse)*100" | bc -l)
echo "The memory in use is: $freeMem MB and in percentage: $per_free %"
per_use=$( echo "scale=2; (1-($freeMem / $inUse))*100" | bc -l)
echo "The memory in use is: $inUse MB and in percentage: $per_use %"

##################################
#### Disk in use vs disk free ####
##################################

disk_in_use=$(df -h / | awk 'NR==2 {print $4}')
disk_free=$(df -h / | awk 'NR==2 {print $3}')

echo "The disk in use is: $disk_in_use and the disk free is: $disk_free"