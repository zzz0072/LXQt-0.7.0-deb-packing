#!/bin/bash -e
if [ "$#" = "0" ] ; then
    echo $0 lxqt_tarballs_dir
    exit 2
fi

# Check setenv
if [ -z "$LXQT_STAGE1" ] ; then
    echo "Please run setenv.sh first"
    exit 2
fi

# Remember pwd
ROOT_DIR=$(pwd)

# Pack stage by stage
for ((i = 1; i < 6; i++)); do
    # Prepare
    echo "Handling LXQT_STAGE$i"
    PACKAGES=$(eval echo \$LXQT_STAGE$i) 
    echo "Packages: $PACKAGES"

    # mkdir
    cd $ROOT_DIR
    mkdir -p LXQT_STAGE$i
    cd LXQT_STAGE$i

    # Pack and install each one
    for j in $PACKAGES ; do
        echo "packing $j"

        build_lx.sh $1/$j
        echo packing done

        echo "installing $j"
        PKG_NAME=$(basename $j)
        sudo dpkg -i $(ls ${PKG_NAME/.tar.gz/}-pkg/*.deb)
    done
    
    echo -e "done\n\n\n"
done
