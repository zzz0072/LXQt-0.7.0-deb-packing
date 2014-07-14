#
# Regular cron jobs for the lxqt-qtplugin package
#
0 4	* * *	root	[ -x /usr/bin/lxqt-qtplugin_maintenance ] && /usr/bin/lxqt-qtplugin_maintenance
