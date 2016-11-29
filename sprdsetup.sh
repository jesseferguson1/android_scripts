#!/bin/sh
sudo apt-get install git
mkdir tmp
cd tmp
git clone https://github.com/ngoquang2708/android_build -b cm-13.0
git clone https://github.com/ngoquang2708/android_external_tinyalsa -b cm-13.0
git clone https://github.com/ngoquang2708/android_frameworks_av -b cm-13.0
git clone https://github.com/ngoquang2708/android_frameworks_base -b cm-13.0
git clone https://github.com/ngoquang2708/android_frameworks_opt_telephony -b cm-13.0
git clone https://github.com/ngoquang2708/android_hardware_libhardware -b cm-13.0
git clone https://github.com/ngoquang2708/android_packages_apps_CellBroadcastReceiver -b cm-13.0
git clone https://github.com/ngoquang2708/android_system_core -b cm-13.0
git clone https://github.com/ngoquang2708/android_system_media -b cm-13.0
git clone https://github.com/CyanogenMod/android_external_stlport -b cm-13.0
git clone https://github.com/CyanogenMod/android_packages_apps_SamsungServiceMode -b cm-13.0
git clone https://github.com/ngoquang2708/android_hardware_sprd -b cm-13.0
git clone https://github.com/ngoquang2708/android_device_samsung_sprd-common -b cm-13.0
git clone https://github.com/ngoquang2708/android_bootable_recovery-twrp -b cm-13.0
cd ../
rm -rf build
rm -rf external/tinyalsa
rm -rf frameworks/av
rm -rf frameworks/base
rm -rf frameworks/opt/telephony
rm -rf hardware/libhardware
rm -rf packages/apps/CellBroadcastReceiver
rm -rf system/core
rm -rf system/media
rm -rf external/stlport
rm -rf packages/apps/SamsungServiceMode
rm -rf hardware/sprd
rm -rf device/samsung/sprd-common
rm -rf bootable/recovery-twrp
cp -r tmp/android_build build
cp -r tmp/android_external_tinyalsa external/tinyalsa
cp -r tmp/android_frameworks_av frameworks/av
cp -r tmp/android_frameworks_base frameworks/base
cp -r tmp/android_frameworks_opt_telephony frameworks/opt/telephony
cp -r tmp/android_hardware_libhardware hardware/libhardware
cp -r tmp/android_packages_apps_CellBroadcastReceiver packages/apps/CellBroadcastReceiver
cp -r tmp/android_system_core system/core
cp -r tmp/android_system_media system/media
cp -r tmp/android_external_stlport external/stlport
cp -r tmp/android_packages_apps_SamsungServiceMode packages/apps/SamsungServiceMode
cp -r tmp/android_hardware_sprd hardware/sprd
cp -r tmp/android_device_samsung_sprd-common device/samsung/sprd-common
cp -r tmp/android_bootable_recovery-twrp bootable/recovery-twrp
rm -rf tmp/

