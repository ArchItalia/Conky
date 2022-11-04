#!/bin/bash
# author Jonathan Sanfilippo
# inserisci la data di installazione del tuo sistema al posto di 20221007

date=$(date +%Y%m%d)
let DIFF=(`date +%s -d $date`-`date +%s -d  20221007`)/86400


echo "$DIFF Days" 


