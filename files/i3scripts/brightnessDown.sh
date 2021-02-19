#!/bin/bash
CURRENT=`ddcutil getvcp 10 | awk ' {gsub(",", "", $9); print $9}' 2>/dev/null`
((RES = $CURRENT-10))
echo $CURRENT
echo "ddcutil setvcp 10 $RES"
ddcutil setvcp 10 $RES 2>/dev/null
