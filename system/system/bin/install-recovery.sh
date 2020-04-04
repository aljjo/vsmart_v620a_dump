#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:b372211a7e2461fa48123c21a6f873b130a80e5b; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:6df4f8c0d92ae08a164a56540b048894c0982434 EMMC:/dev/block/by-name/recovery b372211a7e2461fa48123c21a6f873b130a80e5b 67108864 6df4f8c0d92ae08a164a56540b048894c0982434:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
