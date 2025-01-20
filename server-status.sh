#! /bin/bash 

#Creating a loop to simulate a task
while true; do :; done &
# Getting the CPU usage
top -bn 1 | grep %Cpu | awk '{print 100-$4}'


