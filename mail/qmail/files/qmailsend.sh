#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# Script to control qmail-send (local and outgoing mail).
#

# PROVIDE: qmailsend mail
# REQUIRE: LOGIN

. /etc/rc.subr

name="qmailsend"
rcvar=${name}
required_files="@PKG_SYSCONFDIR@/control/defaultdelivery"
required_files="${required_files} @PKG_SYSCONFDIR@/control/me"
command="@PREFIX@/bin/qmail-send"
start_precmd="qmailsend_precmd"
extra_commands="stat pause cont doqueue reload queue alrm flush hup"
stat_cmd="qmailsend_stat"
pause_cmd="qmailsend_pause"
cont_cmd="qmailsend_cont"
doqueue_cmd="qmailsend_doqueue"
queue_cmd="qmailsend_queue"
alrm_cmd="qmailsend_doqueue"
flush_cmd="qmailsend_doqueue"
hup_cmd="qmailsend_hup"

# User-settable rc.conf variables and their default values:
qmailsend_postenv=${qmailsend_postenv-"PATH=@PREFIX@/bin:$PATH"}
qmailsend_defaultdelivery=${qmailsend_defaultdelivery-"`cat @PKG_SYSCONFDIR@/control/defaultdelivery`"}

qmailsend_precmd()
{
	# qmail-start(8) starts the various qmail processes, then exits.
	# qmail-send(8) is the process we want to signal later.
	command="@SETENV@ - ${qmailsend_postenv} qmail-start '$qmailsend_defaultdelivery' splogger ${name}"
	command_args="&"
	rc_flags=""
}

qmailsend_stat()
{
	run_rc_command status
}

qmailsend_pause()
{
	if ! statusmsg=`run_rc_command status`; then
		@ECHO@ $statusmsg
		return 1
	fi
	@ECHO@ "Pausing ${name}."
	kill -STOP $rc_pid
}

qmailsend_cont()
{
	if ! statusmsg=`run_rc_command status`; then
		@ECHO@ $statusmsg
		return 1
	fi
	@ECHO@ "Continuing ${name}."
	kill -CONT $rc_pid
}

qmailsend_doqueue()
{
	if ! statusmsg=`run_rc_command status`; then
		@ECHO@ $statusmsg
		return 1
	fi
	@ECHO@ "Flushing timeout table and sending ALRM signal to qmail-send."
	@PREFIX@/bin/qmail-tcpok
	kill -ALRM $rc_pid
}

qmailsend_queue()
{
	@PREFIX@/bin/qmail-qstat
	@PREFIX@/bin/qmail-qread
}

qmailsend_hup()
{
	run_rc_command reload
}

load_rc_config $name
run_rc_command "$1"
