#!/bin/bash

echo "===== Process and User Info ====="
echo "Timestamp: $(date)"
echo "Currently Logged In Users:"
who
echo ""
echo "Running Processes Count:"
ps -e --no-headers | wc -l
echo ""
