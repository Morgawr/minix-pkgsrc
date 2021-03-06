#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: lighttpd
# REQUIRE: DAEMON

. /etc/rc.subr

name="lighttpd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
conf_file="@PKG_SYSCONFDIR@/${name}.conf"
required_files="${conf_file}"
extra_commands="reload"
command_args="-f ${conf_file}"

load_rc_config $name
run_rc_command $1
