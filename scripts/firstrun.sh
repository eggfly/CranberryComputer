#!/bin/bash

set +e

CURRENT_HOSTNAME=`cat /etc/hostname | tr -d " \t\n\r"`
if [ -f /usr/lib/raspberrypi-sys-mods/imager_custom ]; then
   /usr/lib/raspberrypi-sys-mods/imager_custom set_hostname eggfly
else
   echo eggfly >/etc/hostname
   sed -i "s/127.0.1.1.*$CURRENT_HOSTNAME/127.0.1.1\teggfly/g" /etc/hosts
fi
FIRSTUSER=`getent passwd 1000 | cut -d: -f1`
FIRSTUSERHOME=`getent passwd 1000 | cut -d: -f6`
if [ -f /usr/lib/userconf-pi/userconf ]; then
   /usr/lib/userconf-pi/userconf 'eggfly' '$5$xffBJRVP.C$oo0UHaVpIe4ImVAfmSmlXjt5Ia6.LFrW6FicA4Y6EiC'
else
   echo "$FIRSTUSER:"'$5$xffBJRVP.C$oo0UHaVpIe4ImVAfmSmlXjt5Ia6.LFrW6FicA4Y6EiC' | chpasswd -e
   if [ "$FIRSTUSER" != "eggfly" ]; then
      usermod -l "eggfly" "$FIRSTUSER"
      usermod -m -d "/home/eggfly" "eggfly"
      groupmod -n "eggfly" "$FIRSTUSER"
      if grep -q "^autologin-user=" /etc/lightdm/lightdm.conf ; then
         sed /etc/lightdm/lightdm.conf -i -e "s/^autologin-user=.*/autologin-user=eggfly/"
      fi
      if [ -f /etc/systemd/system/getty@tty1.service.d/autologin.conf ]; then
         sed /etc/systemd/system/getty@tty1.service.d/autologin.conf -i -e "s/$FIRSTUSER/eggfly/"
      fi
      if [ -f /etc/sudoers.d/010_pi-nopasswd ]; then
         sed -i "s/^$FIRSTUSER /eggfly /" /etc/sudoers.d/010_pi-nopasswd
      fi
   fi
fi
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
rm -f /boot/firstrun.sh
sed -i 's| systemd.run.*||g' /boot/cmdline.txt
exit 0
