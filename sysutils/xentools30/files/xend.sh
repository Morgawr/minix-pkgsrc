#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: xend.sh,v 1.5 2005/11/08 00:47:35 jlam Exp $
#
# PROVIDE: xend
# REQUIRE: disks network

. /etc/rc.subr

name="xend"
rcvar=$name
command="@PREFIX@/sbin/xend"
command_interpreter="@RCD_INTERPRETER@"
start_cmd="@ECHO@ Starting ${name}. && PATH=${PATH}:@PREFIX@/sbin ${command} start"
start_precmd="xen_precmd"
privcmd_path="@PROCPATH@/xen/privcmd"

xen_precmd()
{
	if [ ! -f ${privcmd_path} ]; then
		@ECHO@ "${name}: Cannot find ${privcmd_path}!"
		exit 1
	fi
	mkdir -p /var/run/xend || exit 1
	mkdir -p /var/run/xenstored || exit 1
}

load_rc_config $name
run_rc_command "$1"
