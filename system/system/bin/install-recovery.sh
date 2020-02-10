#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:ef3f77e5dacdc559f98454c69ab74fc75ee425cc; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:35e76476550579417bf36ef0ed22dcff3563baa5 EMMC:/dev/block/by-name/recovery ef3f77e5dacdc559f98454c69ab74fc75ee425cc 67108864 35e76476550579417bf36ef0ed22dcff3563baa5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
