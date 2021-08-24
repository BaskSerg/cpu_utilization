#!/bin/bash
DATE=$(date "+%Y-%m-%d %H:%M:%S")
CPUSAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2"%"}')
mkdir -p $PWD/log/
LOGFILE=$PWD/log/checker.log
touch $LOGFILE

sleep 10
echo "$(date) %Cpu(s): $CPUSAGE" >> $LOGFILE
