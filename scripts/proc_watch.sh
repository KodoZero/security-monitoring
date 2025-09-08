#!/bin/bash

# Process Watcher
# Phase 2 - Project Axis
# Monitors running processes and flags high CPU usage

THRESHOLD=50  # CPU% threshold for alert
OUTPUT_FILE="../examples/proc_watch_output.txt"

echo "Scanning running processes for CPU usage > $THRESHOLD%..."
ps -eo pid,comm,%cpu --sort=-%cpu | awk -v threshold=$THRESHOLD '$3>threshold {print}' > $OUTPUT_FILE

echo "Processes exceeding $THRESHOLD% CPU usage saved to $OUTPUT_FILE"
