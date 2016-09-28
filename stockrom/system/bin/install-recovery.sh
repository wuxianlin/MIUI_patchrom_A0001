#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10207232 a1d96b1448f796283efd9095cf25ba52292ed3fc 7448576 f1fa92da3d51c88964e8be87d2f083bd9a468e0c
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10207232:a1d96b1448f796283efd9095cf25ba52292ed3fc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7448576:f1fa92da3d51c88964e8be87d2f083bd9a468e0c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery a1d96b1448f796283efd9095cf25ba52292ed3fc 10207232 f1fa92da3d51c88964e8be87d2f083bd9a468e0c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
