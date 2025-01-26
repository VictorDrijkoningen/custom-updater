#!/bin/bash

firstdigit=`cat /proc/loadavg | head -c 1`
seconddigit=`cat /proc/loadavg | head -c 3 | tail -c 1`

if [ $firstdigit -lt 1 ] && [ $seconddigit -lt 3 ]; then
  echo "idle detected"
  dnf-automatic
else
  echo "not idle"
fi
