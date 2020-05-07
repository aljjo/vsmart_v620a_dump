#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:67108864:fbf84235719e32f4cff5a0abd0248816637a4bf6; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:67108864:86e23b2f9f4332d9afecbd02ca78150620c4fc21 \
          --target EMMC:/dev/block/by-name/recovery:67108864:fbf84235719e32f4cff5a0abd0248816637a4bf6 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
