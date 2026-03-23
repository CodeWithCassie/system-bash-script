#!/bin/bash

LOG_FILE="/var/log/syslog"

Hostname=$(hostname)
echo "Hostname:$Hostname"

Operating_system=$(uname -o)
echo "Operating System: $Operating_system"

System_uptime=$(uptime -p)
echo "System Uptime:$System_uptime"


Kernel_version=$(uname -r -s -v)
echo "Kernel_version: $Kernel_version"

Memory_free=$(free -h)
echo "Memory: $Memory_free"

Ip_address=$(hostname -i)
echo "IP ADDRESS: $Ip_address"

File_sys=$(df -h)
echo "$File_sys"
echo CPU:
CPU_cores=$(nproc)
echo "Cores: $CPU_cores" 

CPU_load=$(uptime | awk -F'load average:' '{print $2}')
echo "Load:$CPU_load"








