#!/bin/bash
# author Jonathan Sanfilippo

SSID_NAME=$(/sbin/iwgetid -r | cut -b 1-18)

if [[ "${SSID_NAME}" != "" ]]; then
	if  [[ $1 = "-i" ]]; then
    echo "  ${SSID_NAME}"
	else
    echo "${SSID_NAME}"
	fi
else
echo "Not Connected"
fi

exit
