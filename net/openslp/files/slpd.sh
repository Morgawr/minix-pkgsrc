#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: slpd.sh,v 1.8 2002/10/20 07:56:29 jlam Exp $
#
# Service Location Protocol daemon
#
# PROVIDE: slpd
# REQUIRE: DAEMON

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="slpd"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/slp.conf"

if [ -f /etc/rc.subr ]
then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${command} ${slpd_flags} ${command_args}
fi
