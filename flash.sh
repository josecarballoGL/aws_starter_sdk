#!/bin/bash

FLASHPROG_PATH=sdk/tools/OpenOCD/flashprog.py

# Erase everything in Flash
#sudo python sdk/tools/OpenOCD/flashprog.py -l sdk/tools/OpenOCD/mw300/layout.txt

sudo $FLASHPROG_PATH -i ftdi --mcufw bin/mw302_rd/hello_world.bin \
		--boot2 boot2/boot2.bin