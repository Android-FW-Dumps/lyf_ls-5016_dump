#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:8910124:b349db87fc66582fb19735f5a982d39ad15f830c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8351015:a9f1836ca952e74db9156b8aa8280ea72567a666 EMMC:/dev/block/bootdevice/by-name/recovery b349db87fc66582fb19735f5a982d39ad15f830c 8910124 a9f1836ca952e74db9156b8aa8280ea72567a666:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
