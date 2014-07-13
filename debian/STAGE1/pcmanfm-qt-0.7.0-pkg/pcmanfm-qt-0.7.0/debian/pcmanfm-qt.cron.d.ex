#
# Regular cron jobs for the pcmanfm-qt package
#
0 4	* * *	root	[ -x /usr/bin/pcmanfm-qt_maintenance ] && /usr/bin/pcmanfm-qt_maintenance
