#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:a490fb290c420928dd680ef5623f205abc7debac; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:4aeb6826ad889e038e26b24da95c3ee170405a3d EMMC:/dev/block/by-name/recovery a490fb290c420928dd680ef5623f205abc7debac 67108864 4aeb6826ad889e038e26b24da95c3ee170405a3d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
