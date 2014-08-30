#!/bin/bash -e
# Check setenv
if [ -z "$LXQT_STAGE1" ] ; then
    echo "Please run setenv.sh first"
    exit 2
fi

# Verify if ALL needed tarball exists
if [ ! -f $LXQT_SRC_DIR/.all_done ] ; then
    echo "tarballs are not ready. Use dl-tarballs.sh to download "
    exit 1
fi

# Create build/raw directory and build LXQt
cd $LXQT_DEB_ROOT_DIR
mkdir -p build/raw
cd build/raw
build_lxqt.sh $LXQT_SRC_DIR

# Prepare to extract debian directory from build/raw directory
cd ../
mkdir -p debian
cd debian
DEB_DIR=$(find ../raw -name debian -type d)

# make directory and copy debian directory
for i in $DEB_DIR ; do mkdir -p $(dirname $i | cut -f 3- -d / ) ; done
for i in $DEB_DIR ; do cp -r $i $(dirname $i | cut -f 3- -d / ) ; done

# TODO: remove build result at debian directory

cd ../
mkdir -p verify
cd verify
verify_debian_dir.sh $LXQT_SRC_DIR $(pwd)/../debian

