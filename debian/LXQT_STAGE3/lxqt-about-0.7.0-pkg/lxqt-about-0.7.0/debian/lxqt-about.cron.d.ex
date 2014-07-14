#
# Regular cron jobs for the lxqt-about package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-about_maintenance ] && /usr/bin/lxqt-about_maintenance
