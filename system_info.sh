#!/bin/bash
chmod u+x system_info.sh

LOG_FILE="/var/log/syslog"

Hostname=$(hostname)
echo "HOSTNAME:$Hostname"

Operating_system=$(uname -o)
echo "OPERATING SYSTEM: $Operating_system"

System_uptime=$(uptime -p)
echo "SYSTEM UPTIME:$System_uptime"

Kernel_version=$(uname -r -s -v)
echo "KERNEL VERSION: $Kernel_version"

Memory_free=$(free -h)
echo "MEMORY: $Memory_free"

Ip_address=$(hostname -i)
echo "IP ADDRESS: $Ip_address"

File_sys=$(df -h)
echo "$File_sys"

CPU_usage=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')
echo "CPU USAGE: $CPU_usage"

CPU_cores=$(nproc)
echo "CORES: $CPU_cores" 

CPU_load=$(uptime | awk -F'load average:' '{print $2}')
echo "LOAD:$CPU_load"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file not found at $LOG_FILE"
    exit 1
fi
echo "Searching for the last five lines containing 'error' (case-insensitive) in $LOG_FILE..."
grep -i "error" "$LOG_FILE" | tail -n 5









