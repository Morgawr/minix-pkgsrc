# $NetBSD: Makefile,v 1.55 2007/07/04 20:54:57 jlam Exp $

SVR4_PKGNAME=	csasl
COMMENT=	Simple Authentication and Security Layer

PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"

.if exists(/usr/include/ndbm.h)
SASL_DBTYPE?=		ndbm
.else
SASL_DBTYPE?=		berkeley
.endif
BUILD_DEFS+=		SASL_DBTYPE

.if ${SASL_DBTYPE} == "berkeley"
USE_DB185=		no
.  include "../../mk/bdb.buildlink3.mk"
CONFIGURE_ENV+=	BDB_TYPE=${BDB_TYPE:Q}
.endif

CONFIGURE_ARGS+=	--with-dblib=${SASL_DBTYPE:Q}
CONFIGURE_ARGS+=	--with-dbpath=${PKG_SYSCONFDIR}/sasldb

# Support using Cyrus saslauthd (security/cyrus-saslauthd) for plaintext
# password authentication.
#
SASLSOCKETDIR?=		${VARBASE}/run/saslauthd
CONFIGURE_ARGS+=	--with-saslauthd=${SASLSOCKETDIR:Q}
BUILD_DEFS+=		SASLSOCKETDIR

# Support using the Courier authdaemond (security/courier-authlib) for
# plaintext password authentication.
#
AUTHDAEMONVAR?=		${VARBASE}/authdaemon
CONFIGURE_ARGS+=	--with-authdaemond=${AUTHDAEMONVAR}/socket
BUILD_DEFS+=		AUTHDAEMONVAR

# Support using APOP against a POP server for plaintext password
# authentication.
#
CONFIGURE_ARGS+=	--enable-checkapop

.if exists(/dev/urandom)
SASL_ENTROPY_SOURCE?=	/dev/urandom
.endif
.if defined(SASL_ENTROPY_SOURCE)
CONFIGURE_ARGS+=	--with-devrandom=${SASL_ENTROPY_SOURCE:Q}
.endif
BUILD_DEFS+=		SASL_ENTROPY_SOURCE

# CYRUS_USER		username of the Cyrus administrator
# CYRUS_GROUP		group of the Cyrus administrator
#
CYRUS_USER?=		cyrus
CYRUS_GROUP?=		mail
FILES_SUBST+=		CYRUS_USER=${CYRUS_USER:Q}
FILES_SUBST+=		ROOT_USER=${ROOT_USER:Q}
PKG_GROUPS_VARS+=	CYRUS_GROUP
PKG_USERS_VARS+=	CYRUS_USER

PKG_GROUPS=		${CYRUS_GROUP}
PKG_USERS=		${CYRUS_USER}:${CYRUS_GROUP}
PKG_SHELL.${CYRUS_USER}=${SH}

MESSAGE_SUBST+=		PLUGINDIR=${PLUGINDIR:Q}

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${DOCDIR}
	cd ${WRKSRC}/doc; for file in *.fig *.html *.txt; do		\
		${INSTALL_DATA} $$file ${DESTDIR}${DOCDIR};		\
	done

.include "../../mk/bsd.pkg.mk"
