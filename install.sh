#!/bin/sh
cd `dirname $0`
cp ./dbus_script/com.linuxdeepin.softwarecenterupdater.service /usr/share/dbus-1/system-services/
echo "Copy .service file to /usr/share/dbus-1/system-services/"

cp ./dbus_script/com.linuxdeepin.softwarecenterupdater.policy /usr/share/polkit-1/actions/
echo "Copy .policy file to /usr/share/polkit-1/actions/"

cp ./dbus_script/com.linuxdeepin.softwarecenterupdater.conf /etc/dbus-1/system.d/
echo "Copy .conf file to /etc/dbus-1/system.d/"

rm -f /usr/bin/dsc-update-data.py
echo "Remove /usr/bin/dsc-update-data.py"

chmod +x `pwd`/dsc-update-data.py
ln -s `pwd`/dsc-update-data.py /usr/bin/dsc-update-data.py
echo "Build symbol link for dsc-update-data.py"
