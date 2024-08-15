#!/bin/bash

set +e

if [ -f /usr/lib/raspberrypi-sys-mods/imager_custom ]; then
   /usr/lib/raspberrypi-sys-mods/imager_custom set_wlan 'MIWIFI8' '3b7cf53441e352d075d6ebac3365f54c59c0abecb803b22b6420be1342058447' 'GB'
else
cat >/etc/wpa_supplicant/wpa_supplicant.conf <<'WPAEOF'
country=GB
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
ap_scan=1

update_config=1
network={
	ssid="MIWIFI8"
	psk=3b7cf53441e352d075d6ebac3365f54c59c0abecb803b22b6420be1342058447
}

WPAEOF
   chmod 600 /etc/wpa_supplicant/wpa_supplicant.conf
   rfkill unblock wifi
   for filename in /var/lib/systemd/rfkill/*:wlan ; do
       echo 0 > $filename
   done
fi

echo "DONE!!"
echo "DONE!!"
echo "DONE!!"
echo "DONE!!"
echo "DONE!!"
echo "DONE!!"

rm -f /boot/firstrun.sh
sed -i 's| systemd.run.*||g' /boot/cmdline.txt
exit 0
