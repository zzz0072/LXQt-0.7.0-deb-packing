LxQT-0.7.0-deb-packing
---
This is a trail project to pack LXQt 0.7.0 into Debian packages

NOTICE: Due to dependency, the scripts require ROOT PRIVILEGE to install all generated Debian packages. Please take your own risk. Test it under a isolated virtual machine in highly recommend.


# Test environment
* Debian GNU/Linux unstable (sid)


# How to build?
* Get LXQt 0.7.0 tarballs (tar.gz) from [http://lxqt.org/ source page](http://lxqt.org/downloads/lxqt/0.7.0/)
* Get other tarballs (tar.gz) listed below that LXQt needed from [http://lxqt.org/ source page](http://lxqt.org/downloads/).
  * libsysstat-0.1.0
  * lximage-qt-0.2.0
  * compton-conf-0.1.0
* source setenv.sh
* Generate debian directory from scratch (optional)
  * run build_all.sh [your tarball directory]. This will generate a raw debian directory for each tarball, and extract them in build/debian directory.
* Test debian directory from repository
  * run check_debian.sh [your tarball directory].


# tarball list
* compton-conf-0.1.0.tar.gz
* libsysstat-0.1.0.tar.gz
* lxqt-config-randr-0.7.0.tar.gz
* lxqt-openssh-askpass-0.7.0.tar.gz
* lxqt-qtplugin-0.7.0.tar.gz
* liblxqt-0.7.0.tar.gz
* lxqt-about-0.7.0.tar.gz
* lxqt-globalkeys-0.7.0.tar.gz
* lxqt-panel-0.7.0.tar.gz
* lxqt-runner-0.7.0.tar.gz
* liblxqt-mount-0.7.0.tar.gz
* lxqt-common-0.7.0.tar.gz
* lxqt-lightdm-greeter-0.7.0.tar.gz
* lxqt-policykit-0.7.0.tar.gz
* lxqt-session-0.7.0.tar.gz
* libqtxdg-0.5.3.tar.gz
* lxqt-config-0.7.0.tar.gz
* lxqt-notificationd-0.7.0.tar.gz
* lxqt-powermanagement-0.7.0.tar.gz
* pcmanfm-qt-0.7.0.tar.gz
