#!/bin/bash
echo "==========================================" > system-report.txt
echo "       Linux System Health Report         " >> system-report.txt
echo "==========================================" >> system-report.txt
echo "Hostname     : $(hostname)" >> system-report.txt
echo "Kernel       : $(uname -r)" >> system-report.txt
echo "Disk Usage   : $(df -h / | awk 'NR==2 {print $5 " used"}')" >> system-report.txt
echo "Memory Usage : Available" >> system-report.txt
echo "" >> system-report.txt
echo "Top Processes:" >> system-report.txt
ps | head -n 6 >> system-report.txt

cat system-report.txt
