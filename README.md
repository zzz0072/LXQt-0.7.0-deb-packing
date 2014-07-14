LxQT-0.7.0-deb-packing
---
This is a trail project to pack LXQt 0.7.0 into Debian packages

NOTICE: Due to dependency, the scripts require ROOT PRIVILEGE to install all generated Debian packages. Please take your own risk. Test it under a isolated virtual machine in highly recommend.

---
# Test environment
* Debian GNU/Linux unstable (sid)

---
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
