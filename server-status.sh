#! /bin/bash 
####################################
#Creating a loop to simulate a task#
####################################

while true; do :; done &

###################################
###### Getting the CPU usage#######
###################################

CPU_usage=$(top -bn 1 | grep %Cpu | awk '{print $4}')
echo " "
echo "The CPU % in use is: $CPU_usage %"
echo " "
###################################
### Free memory vs memory in use###
###################################

# Free memory in MB 
freeMem=$(free -m | awk 'NR==2 {print $3}')
# Memory in use in MB 
inUse=$(free -m | awk 'NR==2 {print $2}')
#Free memory percentage
per_free=$(echo "scale=2; ($freeMem / $inUse)*100" | bc -l)
echo " "
echo "The memory in use is: $freeMem MB and in percentage: $per_free %"
echo " "
per_use=$( echo "scale=2; (1-($freeMem / $inUse))*100" | bc -l)
echo " "
echo "The memory in use is: $inUse MB and in percentage: $per_use %"
echo " "

##################################
#### Disk in use vs disk free ####
##################################

disk_in_use=$(df -h / | awk 'NR==2 {print $4}')
disk_free=$(df -h / | awk 'NR==2 {print $3}')

echo " "
echo "The disk in use is: $disk_in_use and the disk free is: $disk_free"
echo " "

####################################
#### Top 5 processes by CPU use ####
####################################

top_5_CPU=$(top -bn 1 -o %MEM | awk '
BEGIN { printf " %-4s %-2s %-10s \n", "PID", "%CPU", "PROCESS" } 
NR > 7 && NR < 13 { printf "%-5s %-5s %-10s \n", $1, $9, $12 }')

echo " "
echo "The top 5 processes by CPU use are: "
echo " "
echo "$top_5_CPU"
echo " "
####################################
#### Top 5 processes by MEM use ####
####################################

top_5_MEM=$(top -bn 1 -o %MEM | awk '
BEGIN { printf " %-4s %-2s %-10s \n", "PID", "%MEM", "PROCESS" } 
NR > 7 && NR < 13 { printf "%-5s %-5s %-10s \n", $1, $10, $12 }')

echo " "
echo "The top 5 processes by MEM use are: "
echo " "
echo "$top_5_MEM"
echo " "