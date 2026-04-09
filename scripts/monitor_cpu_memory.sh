#!/bin/bash

echo "===== CPU and Memory Usage ====="
echo "Timestamp: $(date)"
echo "System Uptime and Load Average:"
uptime
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6
echo ""
