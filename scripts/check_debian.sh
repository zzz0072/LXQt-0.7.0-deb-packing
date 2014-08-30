#!/bin/bash -e
# Check setenv
if [ -z "$LXQT_STAGE1" ] ; then
    echo "Please run setenv.sh first"
    exit 1
fi

cd $LXQT_DEB_ROOT_DIR
mkdir -p build/check
cd build/check
verify_debian_dir.sh $LXQT_SRC_DIR $LXQT_DEB_ROOT_DIR/debian

