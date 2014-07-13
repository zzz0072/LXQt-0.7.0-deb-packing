#
# Regular cron jobs for the compton-conf package
#
0 4	* * *	root	[ -x /usr/bin/compton-conf_maintenance ] && /usr/bin/compton-conf_maintenance
