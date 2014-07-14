#!/bin/bash -e
if [ "$#" != "1"  ] ; then
    echo $0 lxqt_tarballs_dir
    exit 2
fi

# Check setenv
if [ -z "$LXQT_STAGE1" ] ; then
    echo "Please run setenv.sh first"
    exit 2
fi

cd $LXQT_DEB_ROOT_DIR
mkdir -p build/check
cd build/check
verify_debian_dir.sh $1 $LXQT_DEB_ROOT_DIR/debian

