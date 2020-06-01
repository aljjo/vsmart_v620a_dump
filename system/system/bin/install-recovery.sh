#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:67108864:bf4714a90dbf363f1d0c2c5b5e42fd440ff84672; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:67108864:db7f46100146c6c8bc4b16c40e3c375e72ea3664 \
          --target EMMC:/dev/block/by-name/recovery:67108864:bf4714a90dbf363f1d0c2c5b5e42fd440ff84672 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
