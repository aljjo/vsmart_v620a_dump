#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:180427bbe9906cd3988acb3fca01a64548126fcc; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:ef008bff8c57cf7cfd53be6d44994b520cb5e4c4 EMMC:/dev/block/by-name/recovery 180427bbe9906cd3988acb3fca01a64548126fcc 67108864 ef008bff8c57cf7cfd53be6d44994b520cb5e4c4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
