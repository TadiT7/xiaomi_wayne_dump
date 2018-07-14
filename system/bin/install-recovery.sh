#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30881102:8116484dcf11bbc6a27d3985dae8a1d4370207e2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26375498:8e7a50e7f47ac5bc06a6c31ce312aecac60c2c18 EMMC:/dev/block/bootdevice/by-name/recovery 8116484dcf11bbc6a27d3985dae8a1d4370207e2 30881102 8e7a50e7f47ac5bc06a6c31ce312aecac60c2c18:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
