#
# Regular cron jobs for the lxqt-globalkeys package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-globalkeys_maintenance ] && /usr/bin/lxqt-globalkeys_maintenance
