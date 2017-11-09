#!/bin/bash
echo "checking if adb device is present"
sleep 2
adb devices
echo "copying files to device"
sleep 2
adb push tmp /data/local/
adb shell chmod 755 /data/local/tmp/lordroot
adb shell chmod 755 /data/local/tmp/busybox
adb shell chmod 755 /data/local/tmp/mkdevsh