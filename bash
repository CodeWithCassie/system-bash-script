#!/bin/bash

CPU=$(top -bn1 | grep "CPU" | awk '{print $2 + $4})

Memory=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')

Disk Space=$(df -h / | awk 'NR==2 {


Echo "System Details"

Echo "CPU: $CPU%"

Echo "Memory Used: $Memory%"

Echo "Memory Free: $Memfree"

Echo: "Disk Space: $Disk Space"

