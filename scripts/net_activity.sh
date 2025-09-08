#!/bin/bash

# Network Activity Logger
# Phase 2 - Project Axis
# Logs active network connections with timestamps

OUTPUT_FILE="../examples/net_activity_output.txt"

echo "Logging active network connections..."
echo "=== $(date) ===" >> $OUTPUT_FILE
ss -tuln | awk 'NR==1 {print; next} {sub(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/, "XXX.XXX.XXX.XXX"); print}' >> $OUTPUT_FILE

echo "Active connections logged to $OUTPUT_FILE"
