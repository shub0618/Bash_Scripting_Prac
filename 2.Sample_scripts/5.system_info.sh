#!/bin/bash
# A script to display basic system information

echo "System Information Script"
echo "----------------------------"

# Display current date and time
echo "Date and Time:"
date
echo "----------------------------"

# Display system uptime
echo "System Uptime:"
uptime -p
echo "----------------------------"

# Display current logged-in users
echo "Logged-in Users:"
who
echo "----------------------------"

# Display memory usage
echo "Memory Usage:"
free -h
echo "----------------------------"

# Display disk usage
echo "Disk Usage:"
df -h
echo "----------------------------"

# Display CPU information
echo "CPU Information:"
lscpu | grep 'Model name\|Architecture\|CPU MHz'
echo "----------------------------"

echo "System Information Displayed."

