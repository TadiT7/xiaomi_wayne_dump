#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32408910:3e6324cd43712bddc56d47b14d6710de98b617b4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26248522:61850ad677e864e51556cb4110a31de9824869aa EMMC:/dev/block/bootdevice/by-name/recovery 3e6324cd43712bddc56d47b14d6710de98b617b4 32408910 61850ad677e864e51556cb4110a31de9824869aa:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
