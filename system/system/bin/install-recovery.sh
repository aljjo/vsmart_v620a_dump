#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:67108864:454598a3743b7a04da5693aed35d6c91eaa05d3a; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:67108864:20c720b2db26b61fa0973f3e9872e4794afc5258 \
          --target EMMC:/dev/block/by-name/recovery:67108864:454598a3743b7a04da5693aed35d6c91eaa05d3a && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
