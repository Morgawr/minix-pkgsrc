#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: sj3
# REQUIRE: LOGIN
#

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="sj3"
rcvar="${name}"
command="@PREFIX@/bin/sj3serv"

if [ -f /etc/rc.subr ]; then
	load_rc_config "${name}"
	run_rc_command "$1"
else
	printf " sj3"
	eval ${command} ${sj3_flags} ${command_args}
fi
