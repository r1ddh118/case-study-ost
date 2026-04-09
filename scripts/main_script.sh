#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="$SCRIPT_DIR/../logs"

mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/health_report_$(date +%F_%H-%M-%S).log"

{
    "$SCRIPT_DIR/monitor_cpu_memory.sh"
    "$SCRIPT_DIR/monitor_disk_network.sh"
    "$SCRIPT_DIR/monitor_process_users.sh"
} >> "$LOG_FILE" 2>&1

echo "System health report saved to $LOG_FILE"
