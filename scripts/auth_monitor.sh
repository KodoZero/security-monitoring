#!/bin/bash

# Auth Log Monitor
# Phase 2 - Project Axis
# Monitors failed login attempts

LOG_FILE="/var/log/auth.log"
OUTPUT_FILE="../examples/auth_monitor_output.txt"

echo "Scanning auth.log for failed login attempts..."
grep "Failed password" $LOG_FILE > $OUTPUT_FILE

echo "Results saved to $OUTPUT_FILE"
