#!/bin/bash

###############################################################################
# System Information Script
# DevOps Intern Final Assessment
# 
# This script displays basic system information:
# - Current user
# - Current date and time
# - Disk usage statistics
###############################################################################

echo "======================================"
echo "   SYSTEM INFORMATION REPORT"
echo "======================================"
echo ""

# Display current user
echo "Current User:"
whoami
echo ""

# Display current date and time
echo "Current Date and Time:"
date
echo ""

# Display disk usage
echo "Disk Usage:"
df -h
echo ""

echo "======================================"
echo "   END OF REPORT"
echo "======================================"
