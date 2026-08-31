#!/usr/bin/env bash
set -e -u

useradd -m -G wheel -s /bin/bash liveuser
echo "liveuser:liveuser" | chpasswd
groupadd -r autologin
gpasswd -a liveuser autologin
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

rc-update add dbus default
rc-update add elogind default
rc-update add NetworkManager
rc-update add sddm default
rc-update add udev sysinit
rc-update add udev-trigger sysinit

gtk-update-icon-cache /usr/share/icons/hicolor || true



rc-update add init-pacman default
dbus-uuidgen > /etc/machine-id
