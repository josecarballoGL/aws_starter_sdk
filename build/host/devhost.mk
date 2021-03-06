# Copyright (C) 2008-2016, Marvell International Ltd.
# All Rights Reserved.

OS := $(shell python sdk/tools/bin/get_os.py -s)

ifeq ($(OS), Linux)
  include build/host/devhost_linux.mk
endif

ifneq ($(findstring windows, ${OS}), )
  include build/host/devhost_gnuwin32.mk
endif

ifeq ($(OS), Darwin)
  include build/host/devhost_darwin.mk
endif
