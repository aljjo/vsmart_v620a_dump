#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:67108864:20140e52a2ec60d4e27939520bc23901112dc4b9; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:67108864:edac2e70a4ae30d3d64ed977741584ae6c29ef04 \
          --target EMMC:/dev/block/by-name/recovery:67108864:20140e52a2ec60d4e27939520bc23901112dc4b9 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
