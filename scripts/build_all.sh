#!/bin/bash -e
if [ "$#" != "1" ] ; then
    echo "Usage $0 lxqt_tarballs_dir"
fi

# TODO?: Verify if ALL needed tarball exists
# Create build/raw directory and build LXQt
cd $LXQT_DEB_ROOT_DIR
mkdir -p build/raw
cd build/raw
build_lxqt.sh $1

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
verify_debian_dir.sh $1 $(pwd)/../debian

