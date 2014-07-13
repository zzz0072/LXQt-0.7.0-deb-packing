#
# Regular cron jobs for the lxqt-policykit package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-policykit_maintenance ] && /usr/bin/lxqt-policykit_maintenance
