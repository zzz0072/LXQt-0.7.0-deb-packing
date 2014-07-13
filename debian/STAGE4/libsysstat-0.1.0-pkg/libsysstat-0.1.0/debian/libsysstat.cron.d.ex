#
# Regular cron jobs for the libsysstat package
#
0 4	* * *	root	[ -x /usr/bin/libsysstat_maintenance ] && /usr/bin/libsysstat_maintenance
