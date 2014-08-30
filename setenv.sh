#!/bin/bash
echo "Add $(pwd)/scripts to PATH"
echo -e "Available scripts:\n$(ls scripts)"

# Hardcode package info:
# There are dependency. Thus we need to install each of them 
# after packing
export LXQT_STAGE1="compton-conf-0.1.0.tar.gz libqtxdg-0.5.3.tar.gz lxqt-config-randr-0.7.0.tar.gz pcmanfm-qt-0.7.0.tar.gz"
export LXQT_STAGE2="liblxqt-0.7.0.tar.gz"
export LXQT_STAGE3="lxqt-about-0.7.0.tar.gz lxqt-common-0.7.0.tar.gz lxqt-config-0.7.0.tar.gz lxqt-notificationd-0.7.0.tar.gz lxqt-openssh-askpass-0.7.0.tar.gz lxqt-policykit-0.7.0.tar.gz lxqt-powermanagement-0.7.0.tar.gz lxqt-qtplugin-0.7.0.tar.gz lxqt-session-0.7.0.tar.gz"
export LXQT_STAGE4="liblxqt-mount-0.7.0.tar.gz libsysstat-0.1.0.tar.gz lxqt-globalkeys-0.7.0.tar.gz" 
export LXQT_STAGE5="lxqt-panel-0.7.0.tar.gz lxqt-runner-0.7.0.tar.gz"

export LXQT_DEB_ROOT_DIR=$(pwd)
export PATH=$PATH:$(pwd)/scripts
export LXQT_SRC_DIR=$LXQT_DEB_ROOT_DIR/downloads

function lxqt_stages() {
    for ((i = 1; i < 6; i++)); do
        PACKAGES=$(eval echo \$LXQT_STAGE$i) 
        echo "LXQT_STAGE$i:"
        echo "===================>"
        for j in $PACKAGES; do
            echo $j
        done
        echo -e "<===================\n"
    done
}
