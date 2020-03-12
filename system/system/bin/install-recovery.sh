#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:b4af05433f8360347f0654fb16daf661b191b520; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:1027c2c386af81a0e45ccb223813a6bb5cbfcb91 EMMC:/dev/block/by-name/recovery b4af05433f8360347f0654fb16daf661b191b520 67108864 1027c2c386af81a0e45ccb223813a6bb5cbfcb91:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
