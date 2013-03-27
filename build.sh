. $1

make \
 -C $THIRD_PARTY_DIR/linuxutils/packages/ti/sdo/linuxutils/cmem/src/interface \
 MVTOOL_PREFIX=$CROSSCOMPILER_DIR/$CROSS_COMPILE \
../../lib/cmem.a470MV
 
make \
 -C $THIRD_PARTY_DIR/linuxutils/packages/ti/sdo/linuxutils/cmem/src/module \
 MVTOOL_PREFIX=$CROSSCOMPILER_DIR/$CROSS_COMPILE \
 LINUXKERNEL_INSTALL_DIR=$THIRD_PARTY_DIR/linux

make -f sdk.mk DESTDIR=$THIRD_PARTY_DIR/devkit install
