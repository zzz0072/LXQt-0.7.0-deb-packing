#
# Regular cron jobs for the lxqt-openssh-askpass package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-openssh-askpass_maintenance ] && /usr/bin/lxqt-openssh-askpass_maintenance
