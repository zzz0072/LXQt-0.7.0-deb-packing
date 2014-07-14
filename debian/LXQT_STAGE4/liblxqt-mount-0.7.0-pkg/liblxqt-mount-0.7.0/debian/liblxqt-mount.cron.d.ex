#
# Regular cron jobs for the liblxqt-mount package
#
0 4	* * *	root	[ -x /usr/bin/liblxqt-mount_maintenance ] && /usr/bin/liblxqt-mount_maintenance
