#
# Regular cron jobs for the lxqt-powermanagement package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-powermanagement_maintenance ] && /usr/bin/lxqt-powermanagement_maintenance
