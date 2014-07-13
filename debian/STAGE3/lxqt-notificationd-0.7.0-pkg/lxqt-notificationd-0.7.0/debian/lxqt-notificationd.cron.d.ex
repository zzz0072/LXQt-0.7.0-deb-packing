#
# Regular cron jobs for the lxqt-notificationd package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-notificationd_maintenance ] && /usr/bin/lxqt-notificationd_maintenance
