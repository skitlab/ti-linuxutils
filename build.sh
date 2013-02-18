. /opt/dm8168-toolchain-env.sh

make \
 -C $THIRD_PARTY_DIR/linuxutils/packages/ti/sdo/linuxutils/cmem/src/interface \
 MVTOOL_PREFIX=$CROSSCOMPILER_DIR/arm-none-linux-gnueabi- \
../../lib/cmem.a470MV
 
make \
 -C $THIRD_PARTY_DIR/linuxutils/packages/ti/sdo/linuxutils/cmem/src/module \
 MVTOOL_PREFIX=$CROSSCOMPILER_DIR/arm-none-linux-gnueabi- \
 LINUXKERNEL_INSTALL_DIR=$THIRD_PARTY_DIR/linux-stable

