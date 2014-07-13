#
# Regular cron jobs for the liblxqt package
#
0 4	* * *	root	[ -x /usr/bin/liblxqt_maintenance ] && /usr/bin/liblxqt_maintenance
