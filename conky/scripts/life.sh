#!/bin/bash
# author Jonathan Sanfilippo
# head -1 /var/log/pacman.log | cut --complement -c 12-26 | cut --complement -c 1 | cut --complement -c 5,8 | cut --complement -c 9-14000000


date=$(date +%Y%m%d)
logdate=$( head -1 /var/log/pacman.log | cut --complement -c 12-26 | cut --complement -c 1 | cut --complement -c 5,8 | cut --complement -c 9-140000000000000000
)
let DIFF=(`date +%s -d $date`-`date +%s -d  $logdate`)/86400


echo "$DIFF Days" 


