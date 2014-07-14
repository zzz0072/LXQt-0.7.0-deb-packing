#
# Regular cron jobs for the lxqt-runner package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-runner_maintenance ] && /usr/bin/lxqt-runner_maintenance
