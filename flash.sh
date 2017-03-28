#!/bin/bash

FLASHPROG_PATH=sdk/tools/OpenOCD/flashprog.py

# Erase everything in Flash
#sudo python sdk/tools/OpenOCD/flashprog.py -l sdk/tools/OpenOCD/mw300/layout.txt

sudo $FLASHPROG_PATH -i ftdi \
		--mcufw bin/mw302_rd/aws_starter_demo.bin \
		--boot2 boot2/boot2.bin \
		--wififw wifi-firmware/mw30x/mw30x_uapsta_14.76.36.p103.bin.xz \
		--ftfs bin/mw302_rd/aws_starter_demo.ftfs
