#!/bin/bash -e
if [ "$#" != "2"  ] ; then
    echo $0 lxqt_tarballs_dir lxqt_debian_dir
    exit 2
fi

# Remember pwd
ROOT_DIR=$(pwd)

# Hardcode package info:
# There are dependency. Thus we need to install each of them 
# after packing
STAGE1="compton-conf-0.1.0.tar.gz libqtxdg-0.5.3.tar.gz lxqt-config-randr-0.7.0.tar.gz pcmanfm-qt-0.7.0.tar.gz"
STAGE2="liblxqt-0.7.0.tar.gz"
STAGE3="lxqt-about-0.7.0.tar.gz lxqt-common-0.7.0.tar.gz lxqt-config-0.7.0.tar.gz lxqt-lightdm-greeter-0.7.0.tar.gz lxqt-notificationd-0.7.0.tar.gz lxqt-openssh-askpass-0.7.0.tar.gz lxqt-policykit-0.7.0.tar.gz lxqt-powermanagement-0.7.0.tar.gz lxqt-qtplugin-0.7.0.tar.gz lxqt-session-0.7.0.tar.gz"
STAGE4="liblxqt-mount-0.7.0.tar.gz libsysstat-0.1.0.tar.gz lxqt-globalkeys-0.7.0.tar.gz" 
STAGE5="lxqt-panel-0.7.0.tar.gz lxqt-runner-0.7.0.tar.gz"

# Pack stage by stage
for ((i = 1; i < 6; i++)); do
    # Prepare
    echo "Handling STAGE$i"
    PACKAGES=$(eval echo \$STAGE$i) 
    echo "Packages: $PACKAGES"

    # mkdir
    cd $ROOT_DIR
    mkdir -p STAGE$i
    cd STAGE$i

    # Pack and install each one
    for j in $PACKAGES ; do
        echo "extract $j and apply debian directory"

        # extract and copy debian directory to test directory
        verify_lxqt_tarball.sh $1/$j $2/STAGE$i
        echo extract done

        echo "installing $j"
        PKG_NAME=$(basename $j)
        # sudo dpkg -i $(ls ${PKG_NAME/.tar.gz/}-pkg/*.deb)
    done
    
    echo -e "done\n\n\n"
done
