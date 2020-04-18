#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:67108864:2b69ca970f2dfe5deb2a0c3ae3b8308f335daddb; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot:67108864:da9b194f0ed86f2cf70db555d09bfec70324a88e \
          --target EMMC:/dev/block/by-name/recovery:67108864:2b69ca970f2dfe5deb2a0c3ae3b8308f335daddb && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
