# Automated System Health Monitoring and Reporting Tool on Ubuntu

This project implements the initial case study from the PDF: a Bash-based system health monitor for Ubuntu/Linux. It collects CPU, memory, disk, network, process, and user information, then stores the combined report in a timestamped log file.

## Objective

Build shell scripts that:

- monitor CPU usage and memory usage
- monitor disk usage and network statistics
- monitor running processes and logged-in users
- save the full report with timestamps
- support Git/GitHub submission and cron-based automation

## Project Structure

```text
case-study-ost/
|-- logs/
|-- scripts/
|   |-- monitor_cpu_memory.sh
|   |-- monitor_disk_network.sh
|   |-- monitor_process_users.sh
|   `-- main_script.sh
`-- README.md
```

## Scripts

### `monitor_cpu_memory.sh`

Shows:

- current timestamp
- system uptime and load average
- memory usage
- top memory-consuming processes

### `monitor_disk_network.sh`

Shows:

- current timestamp
- mounted disk usage
- network interface statistics

### `monitor_process_users.sh`

Shows:

- current timestamp
- logged-in users
- total running process count

### `main_script.sh`

- creates the `logs/` folder if needed
- runs all monitoring scripts
- saves output into a timestamped report file

## How to Run

Make scripts executable:

```bash
cd scripts
chmod +x *.sh
```

Run the main script:

```bash
./main_script.sh
```

Example output message:

```text
System health report saved to /path/to/logs/health_report_YYYY-MM-DD_HH-MM-SS.log
```

## Cron Automation

To run the health report every hour:

```bash
crontab -e
```

Add this line:

```cron
0 * * * * /absolute/path/to/case-study-ost/scripts/main_script.sh
```

## GitHub Workflow

Initialize Git and push to GitHub:

```bash
git init
git add .
git commit -m "Initial commit: System Health Monitor"
git remote add origin <repo_url>
git push -u origin main
```

Work collaboratively using branches:

```bash
git checkout -b cpu-module
git add scripts/monitor_cpu_memory.sh
git commit -m "Added CPU and memory monitoring script"
git push origin cpu-module
```

## Linux Commands Used

- `date` for timestamps
- `uptime` for load average
- `free -h` for memory usage
- `ps aux --sort=-%mem` for top memory-hungry processes
- `df -h` for disk usage
- `ip -s link` for network statistics
- `who` for logged-in users
- `ps -e --no-headers | wc -l` for process count
- `mkdir -p` for creating the logs folder
- redirection `>>` and `2>&1` for logging

## Notes

- The scripts are written for Ubuntu/Linux.
- Log files are generated inside [`logs/`](/home/r1ddh1/3rd_year/6th_sem/OST_Theory/case-study-ost/logs).
- If `ip` is unavailable on a system, install the `iproute2` package.
