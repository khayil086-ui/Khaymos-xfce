#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="khaymos-kde"
iso_label="KHAYMOS_KDE_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Khayil98x95"
iso_application="Arch Linux Live/Rescue DVD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.grub')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'gzip' '-Xcompression-level' '1')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/etc/sudoers.d/calamares"]="0:0:0440"
  ["/etc/polkit-1/rules.d/49-nopasswd-calamares.rules"]="0:0:0644"
  ["/etc/init.d/sddm"]="0:0:0755"
  ["/etc/skel/.config/autostart/calamares-autostart.desktop"]="0:0:0755"
  ["/etc/skel/Desktop/install-khaymos.desktop"]="0:0:0755"
  ["/usr/local/bin/sync-pacman-db"]="0:0:0755"
  ["/etc/skel/.config/autostart/sync-pacman-db.desktop"]="0:0:0755"
  ["/usr/local/bin/init-pacman"]="0:0:0755"
  ["/etc/init.d/init-pacman"]="0:0:0755"
)
