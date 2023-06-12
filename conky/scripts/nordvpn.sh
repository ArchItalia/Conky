#!/bin/bash

wifi=$( iwgetid -r)
ip=$( curl icanhazip.com) 
status=$( nordvpn status | grep "Status" | cut -d "C" -f 2-) 
country=$( nordvpn status | grep "Country" | cut -d " " -f 2-)
city=$( nordvpn status | grep "City" | cut -d " " -f 2-)
uptime=$( nordvpn status | grep "Uptime" | cut -d " " -f 2-)
transfer=$( nordvpn status | grep "Transfer" | cut -d " " -f 2-)
protocol=$( nordvpn status | grep "Current protocol" | cut -d " " -f 3-)
tecnology=$( nordvpn status | grep "Current technology" | cut -d " " -f 3-)
hostname=$( nordvpn status | grep "Hostname" | cut -d " " -f 2-)
x="onnected"
c=$(if [ "$country" = "United Kingdom" ]; then echo "UK"; elif [ "$country" = "Italy" ]; then echo "IT"; else echo "$country"; fi )
w=$(if [ "$wifi" = "" ]; then echo "[Disconnected]"  > ~/.config/conky/data/nowifi; echo "" > ~/.config/conky/data/wifi; else echo ""  > ~/.config/conky/data/nowifi;  echo "[$wifi]" > ~/.config/conky/data/wifi; fi)
isp=$(lynx -dump https://www.iplocation.net | grep "ISP:" | cut -d ":" -f 2- | cut -c 2-200)

echo "[$isp]" > ~/.config/conky/data/isp


if [ "$status" = "$x" ]; then
        echo "[$c]" > ~/.config/conky/data/nordvpn
        echo "[VPN]" > ~/.config/conky/data/vpnstatus
else
       
       echo "" > ~/.config/conky/data/nordvpn
       echo "" > ~/.config/conky/data/vpnstatus
fi       
       





