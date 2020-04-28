#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:67108864:c30a2512995806b36e068c9ac3ee03404dee03fb; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:67108864:1878bbb17d9a7454bc4c0a4d70d5735e94f3b4d2 \
          --target EMMC:/dev/block/by-name/recovery:67108864:c30a2512995806b36e068c9ac3ee03404dee03fb && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
