#!/bin/bash -e
if [ "$#" != "2"  ] ; then
    echo $0 lxqt_tarball_name lxqt_debian_dir
    exit 2
fi

# tarball name
FILE=$(basename $1)

# Hardcode package
NON_MKDIR_TGZ="lxmenu-data-0.1.2.tar.gz menu-cache-0.5.1.tar.gz"

# Check TYPE
NEED_MKDIR=YES

for i in $NON_MKDIR_TGZ ; do
    if [ "$FILE" = "$i" ] ; then
        NEED_MKDIR=NO
    fi
done

echo $FILE
# Untar
DIR_NAME=${FILE/.tar.gz/}
mkdir -p $DIR_NAME-pkg
cd $DIR_NAME-pkg
if [ "$NEED_MKDIR" = "YES" ] ; then
    mkdir -p $DIR_NAME
    cd $DIR_NAME
    tar -zxvf $1
else
    tar -zxvf $1
    cd $DIR_NAME
fi

# Copy debian directory and set a orig tarball
cp -rv $2/$DIR_NAME-pkg/$DIR_NAME/* $(pwd)

# create _version-orig.tar.gz
ORIG_TARBALL=${FILE/.tar.gz/.orig.tar.gz}
cp -v $1 ../${ORIG_TARBALL/-0./_0.} # dirty hack

# Let's build
dpkg-buildpackage -us -uc
