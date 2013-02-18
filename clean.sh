
. /opt/dm8168-toolchain-env.sh

make \
 -C $THIRD_PARTY_DIR/linuxutils/packages/ti/sdo/linuxutils/cmem/src/module \
clean
 
make \
 -C $THIRD_PARTY_DIR/linuxutils/packages/ti/sdo/linuxutils/cmem/src/interface \
clean

