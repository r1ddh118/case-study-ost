#!/bin/bash

echo "===== Disk and Network Usage ====="
echo "Timestamp: $(date)"
echo "Disk Usage:"
df -h
echo ""
echo "Network Statistics:"
if ip -s link >/dev/null 2>&1; then
    ip -s link
else
    echo "ip -s link is unavailable or restricted; showing /proc/net/dev instead."
    cat /proc/net/dev
fi
echo ""
