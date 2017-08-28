#!/bin/sh

printf "[`free -h | awk '/Mem:/ {print "RAM " $3 "] "}'`"
printf "[`cut -f -3 -d ' ' /proc/loadavg`]"
