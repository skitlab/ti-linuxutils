#
#  Copyright 2011 by Texas Instruments Incorporated.
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; version 2 of the License.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>
#
#

ROOTDIR = ../..

# We conditionally include $(ROOTDIR)/Rules.make because when the
# kernel make system invokes us, it won't be found... but that's okay.
-include $(ROOTDIR)/Rules.make

TARGET = cmemk.ko

obj-m += cmemk.o

EXTRA_CFLAGS +=	-DUSE_UDEV=$(USE_UDEV) \
		-DMAX_POOLS=$(MAX_POOLS)

MAKE_ENV = ARCH=arm CROSS_COMPILE=$(MVTOOL_PREFIX)
MAKE_ENV_BIONIC = ARCH=arm CROSS_COMPILE=$(BIONICTOOL_PREFIX)

debug: EXTRA_CFLAGS += -D__DEBUG

.PHONY: clean debug release install default

default: release

docs:

release:
	@echo Making module release...
	make -C $(LINUXKERNEL_INSTALL_DIR) M=`pwd` $(MAKE_ENV) \
		EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules

debug:
	@echo Making module debug...
	make -C $(LINUXKERNEL_INSTALL_DIR) M=`pwd` $(MAKE_ENV) \
		EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules

bionic:
	@echo Making module bionic...
	make -C $(LINUXKERNEL_INSTALL_DIR) M=`pwd` $(MAKE_ENV_BIONIC) \
		EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules

install:
	@echo Making module install...
	install -d $(EXEC_DIR)
	install $(TARGET) $(EXEC_DIR)

clean:
	-rm -rf *.o *mod* *.ko .cmem* .tmp*
#
#  @(#) ti.sdo.linuxutils.cmem; 2, 2, 0,3; 12-13-2011 18:43:21; /db/atree/library/trees/linuxutils/linuxutils-k02/src/ xlibrary

#

