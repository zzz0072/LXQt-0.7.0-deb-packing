#
# Regular cron jobs for the lxqt-config package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-config_maintenance ] && /usr/bin/lxqt-config_maintenance
