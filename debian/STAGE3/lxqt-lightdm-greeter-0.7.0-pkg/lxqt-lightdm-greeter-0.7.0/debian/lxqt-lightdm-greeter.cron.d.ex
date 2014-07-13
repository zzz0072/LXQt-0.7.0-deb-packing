#
# Regular cron jobs for the lxqt-lightdm-greeter package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-lightdm-greeter_maintenance ] && /usr/bin/lxqt-lightdm-greeter_maintenance
