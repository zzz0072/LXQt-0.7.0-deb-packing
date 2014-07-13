#
# Regular cron jobs for the lxqt-session package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-session_maintenance ] && /usr/bin/lxqt-session_maintenance
