#!/bin/bash

# Port Scan Detector
# Phase 2 - Project Axis
# Detects open TCP ports on localhost

OUTPUT_FILE="../examples/port_scan_output.txt"

echo "Scanning open TCP ports on localhost..."
ss -tuln | awk 'NR>1 {print $5}' > $OUTPUT_FILE

echo "Open ports saved to $OUTPUT_FILE"
