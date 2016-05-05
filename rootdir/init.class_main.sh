#!/system/bin/sh

if [ $(grep /proc/device-tree/model -i -e "Satsuki") = "SoMC Satsuki-DSDS" ]; then
    setprop persist.radio.multisim.config dsds
    setprop persist.multisim.config dsds 
    setprop ro.telephony.default_network 0,1
    start ril-daemon2
fi

if [ $(grep /proc/device-tree/model -i -e "Sumire") = "SoMC Sumire-DSDS" ]; then
    setprop persist.radio.multisim.config dsds
    setprop persist.multisim.config dsds 
    setprop ro.telephony.default_network 0,1
    start ril-daemon2
fi
