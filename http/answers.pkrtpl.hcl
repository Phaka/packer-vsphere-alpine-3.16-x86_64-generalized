KEYMAPOPTS="us us"
HOSTNAMEOPTS="-n localhost"
INTERFACESOPTS="auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp
"
TIMEZONEOPTS="-z UTC"
PROXYOPTS="none"
SSHDOPTS="-c openssh"
NTPOPTS="-c openntpd"
DISKOPTS="-m sys /dev/sda"