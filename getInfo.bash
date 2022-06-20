#!/bin/bash

# Commands
IOSTAT=/usr/bin/iostat
VMSTAT=/usr/bin/vmstat
UNAME=/usr/bin/uname
CAT=/usr/bin/cat
PYTHON=/usr/bin/python
DATE=/usr/bin/date
HOSTNAMECTL=/usr/bin/hostnamectl

# Vars
INTERVAL=2
COUNT=5
RELEASE=/etc/centos-release


# System information

echo "----ooO DATE Ooo----"
${DATE}
echo "===================="

echo "----ooO SYSTEM INFORMATION Ooo----"
${HOSTNAMECTL}
echo
${CAT} ${RELEASE}
echo
${UNAME} -a 
echo
${PYTHON} --version
echo "=================================="

# Live system information
echo "----ooO LIVE SYSTEM INFORMATION Ooo----"
${IOSTAT} ${INTERVAL} ${COUNT} 
echo 
${VMSTAT} ${INTERVAL} ${COUNT} 
echo "======================================="


