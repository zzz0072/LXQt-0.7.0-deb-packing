#
# Regular cron jobs for the libqtxdg package
#
0 4	* * *	root	[ -x /usr/bin/libqtxdg_maintenance ] && /usr/bin/libqtxdg_maintenance
