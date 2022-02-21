#!/bin/bash
# Build and flash the Klipper controller firmware.

cd /home/pi/klipper

# build the firmware. Assumes that 'make menuconfig' has been run.
make
# flash XYE board with latest firmware build.
scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1769_0DF0FF0EA69869AF2046415EC42000F5-if00 btt-skr-turbo-v1.4
# flash the Z board with latest firmware build.
scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1769_10D0FF0BA39869AFC04E405EC12000F5-if00 btt-skr-turbo-v1.4

