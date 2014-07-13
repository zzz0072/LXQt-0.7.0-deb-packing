#
# Regular cron jobs for the lxqt-panel package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-panel_maintenance ] && /usr/bin/lxqt-panel_maintenance
