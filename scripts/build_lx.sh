#!/bin/bash -x
# Check parameter
if [ $# = "0" ] ; then
    echo $0 tarball name
    exit
fi

# tarball name
FILE=$(basename $1)

# Hardcode package
NON_MKDIR_TGZ="lxqt-lightdm-greeter-0.7.0.tar.gz lxmenu-data-0.1.2.tar.gz menu-cache-0.5.1.tar.gz"

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
mkdir $DIR_NAME-pkg
cd $DIR_NAME-pkg
if [ "$NEED_MKDIR" = "YES" ] ; then
    mkdir $DIR_NAME
    cd $DIR_NAME
    tar -zxvf $1
else
    tar -zxvf $1
    cd $DIR_NAME
fi

# Run dh_make
echo -e "\n" | dh_make -s --createorig

# Build deb?
dpkg-buildpackage -us -uc
if [ "$?" != "0" ] ; then
    echo "error in packing $1"
    exit 2
fi
