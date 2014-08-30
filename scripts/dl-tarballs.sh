#!/bin/bash
LXQT_REMOTE_ROOT="http://lxqt.org/downloads"
LXQT_REMOTE_SRC="$LXQT_REMOTE_ROOT/0.7.0"


# Check if setenv had run
if [ -z "$LXQT_DEB_ROOT_DIR" ] ; then
    echo "Please run setenv.sh!"
    exit
fi

# Avoid re-download
if [ -f $LXQT_SRC_DIR/.all_done ] ; then
    echo "Already downloaded:"
    echo "You can remove $LXQT_SRC_DIR/.all_done then"
    echo "re-run script to re-download"
    exit
fi

# Create dir if needed
if [ ! -d $LXQT_SRC_DIR ] ; then
    mkdir -p $LXQT_SRC_DIR
fi

cd $LXQT_SRC_DIR
# Download tarballs not in LXQt release
PKG1=$LXQT_REMOTE_ROOT/libsysstat/0.1.0/libsysstat-0.1.0.tar.gz
PKG2=$LXQT_REMOTE_ROOT/lximage-qt/0.2.0/lximage-qt-0.2.0.tar.gz
PKG3=$LXQT_REMOTE_ROOT/compton-conf/0.1.0/compton-conf-0.1.0.tar.gz
PKG4=$LXQT_REMOTE_ROOT/libqtxdg/0.5.3/libqtxdg-0.5.3.tar.gz
PKGS="$PKG1 $PKG2 $PKG3 $PKG4"

for i in $PKGS ; do
    if [ -f $(basename $i) ] ; then 
        continue
    fi

    echo wget $i
    wget $i
    if [ $? != 0 ] ; then
        echo "Download $i failed. Please check if you have wget installed"
        echo "or network connection"
        exit 1
    fi
done

# Download tarballs from LXQt release
LXQT_TARBALLS="liblxqt-0.7.0.tar.gz liblxqt-mount-0.7.0.tar.gz \
               lxqt-about-0.7.0.tar.gz lxqt-common-0.7.0.tar.gz \
               lxqt-config-0.7.0.tar.gz lxqt-config-randr-0.7.0.tar.gz \
               lxqt-globalkeys-0.7.0.tar.gz lxqt-notificationd-0.7.0.tar.gz \
               lxqt-openssh-askpass-0.7.0.tar.gz lxqt-panel-0.7.0.tar.gz \
               lxqt-policykit-0.7.0.tar.gz lxqt-powermanagement-0.7.0.tar.gz \
               lxqt-qtplugin-0.7.0.tar.gz lxqt-runner-0.7.0.tar.gz \
               lxqt-session-0.7.0.tar.gz pcmanfm-qt-0.7.0.tar.gz"

for i in $LXQT_TARBALLS ; do
    if [ -f $(basename $i) ] ; then 
        continue
    fi

    echo wget $LXQT_REMOTE_SRC/$i
    wget $LXQT_REMOTE_SRC/$i
    if [ $? != 0 ] ; then
        echo "Download  failed. Please check if you have wget installed"
        echo "or network connection"
        exit 1
    fi
done

touch $LXQT_SRC_DIR/.all_done
