#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:17233920:b2ad8eedcf4759ed69615b644acd76a18a910798; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:16482304:8ac449cbbd2fec583e4226ff109a26dca362108e EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery b2ad8eedcf4759ed69615b644acd76a18a910798 17233920 8ac449cbbd2fec583e4226ff109a26dca362108e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
