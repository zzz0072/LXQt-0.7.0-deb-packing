#
# Regular cron jobs for the lxqt-config-randr package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-config-randr_maintenance ] && /usr/bin/lxqt-config-randr_maintenance
