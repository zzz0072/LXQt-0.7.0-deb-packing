#
# Regular cron jobs for the lxqt-common package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-common_maintenance ] && /usr/bin/lxqt-common_maintenance
