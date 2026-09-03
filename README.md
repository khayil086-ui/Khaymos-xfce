## Khaymos Linux (KDE Edition)

An Arch Linux-based distribution using OpenRC as its init system instead of systemd, with the Calamares graphical installer.

What is this?

Khaymos is a from-scratch attempt at bringing the Arch package ecosystem to an OpenRC init system, paired with a graphical Calamares installer configured specifically to work with OpenRC (rather than the systemd-oriented defaults most Calamares-based distros ship with).

This is a solo project, actively in development. Expect some errors

Download
ISO: [Archive](https://archive.org/upload/?identifier=khaymos-kde-2026.08.18-x86_64

Since this is early-stage, it's recommended for testing/VMs rather than daily-driver use right now.

Known issues / not yet fixed
- System Installs but ends up in a GRUB error 

Requires archiso on an Arch-based build machine.

bash
mkarchiso -v -w work/ -o out/ .

Credits / inspiration
- Artix Linux

# Related stuff:
[Khaymos-XFCE](https://github.com/khayil086-ui/Khaymos-xfce)
