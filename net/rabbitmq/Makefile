# $NetBSD$
#

PKGNAME=		rabbitmq-${RMQ_VERSION}
DISTNAME=		rabbitmq-server-${RMQ_VERSION}
CATEGORIES=		net
MASTER_SITES=		http://www.rabbitmq.com/releases/rabbitmq-server/v${RMQ_VERSION}/

MAINTAINER=		filip@joyent.com
HOMEPAGE=		http://www.rabbitmq.com/server.html
COMMENT=		Implementation of AMQP that provides robust messaging for applications
LICENSE=		mpl-1.1

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake

BUILD_DEPENDS+=		libxslt-[0-9]*:../../textproc/libxslt
BUILD_DEPENDS+=		xmlto-[0-9]*:../../textproc/xmlto
DEPENDS+=		${PYPKGPREFIX}-simplejson>=2:../../converters/py-simplejson

.include "version.mk"
.include "../../lang/python/pyversion.mk"

BUILD_DEFS+=		VARBASE

.if !empty(TOOLS_PLATFORM.bash)
RMQ_SHELL=		${TOOLS_PLATFORM.bash}
.else
RMQ_SHELL=		/bin/sh
.endif

.include		"../../mk/bsd.prefs.mk"

RMQ_USER?=		rabbitmq
RMQ_GROUP?=		${RMQ_USER}
RMQ_DIR?=		${VARBASE}/db/rabbitmq
RMQ_LOG?=		${VARBASE}/log/rabbitmq

OWN_DIRS+=		${RMQ_DIR} ${RMQ_LOG}
OWN_DIRS_PERMS+=	${RMQ_DIR} ${RMQ_USER} ${RMQ_GROUP} 0770
OWN_DIRS_PERMS+=	${RMQ_LOG} ${RMQ_USER} ${RMQ_GROUP} 0770

PKG_GROUPS+=		${RMQ_GROUP}
PKG_USERS+=		${RMQ_USER}:${RMQ_GROUP}
PKG_GECOS.${RMQ_USER}=	RabbitMQ Server User
PKG_HOME.${RMQ_USER}=	${RMQ_DIR}
PKG_SHELL.${RMQ_USER}=	${RMQ_SHELL}

PKG_SYSCONFSUBDIR?=	${PKGBASE}
CONF_FILES+=		${PREFIX}/share/examples/rabbitmq/rabbitmq.conf ${PKG_SYSCONFDIR}/rabbitmq.conf

INSTALLATION_DIRS+=	share/examples/rabbitmq

SCRIPTS_DIR=		${WRKSRC}/scripts

PLIST_SUBST+=		RMQ_VERSION=${RMQ_VERSION}

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Setting standard paths
SUBST_STAGE.paths=	post-patch
SUBST_FILES.paths=	${SCRIPTS_DIR}/rabbitmqctl ${SCRIPTS_DIR}/rabbitmq-env
SUBST_FILES.paths+=	${SCRIPTS_DIR}/rabbitmq-multi ${SCRIPTS_DIR}/rabbitmq-server
SUBST_SED.paths=	-e 's|/etc/rabbitmq|${PKG_SYSCONFDIR}/rabbitmq|g'
SUBST_SED.paths+=	-e 's|/var/lib|${VARBASE}/db|g'
SUBST_SED.paths+=	-e 's|/var/log|${VARBASE}/log|g'
SUBST_SED.paths+=	-e 's|erl|${PREFIX}/bin/erl|g'
SUBST_SED.paths+=	-e 's|/bin/sh|/bin/ksh|g'

SUBST_CLASSES+=		shell
SUBST_MESSAGE.shell=	Setting Makefile shell
SUBST_STAGE.shell=	post-patch
SUBST_FILES.shell=	Makefile
SUBST_SED.shell=	-e 's|@SHELL@|${RMQ_SHELL}|g'

MAKE_ENV+=		TARGET_DIR="${DESTDIR}${PREFIX}/lib/erlang/lib/rabbitmq_server-${RMQ_VERSION}"
MAKE_ENV+=		SBIN_DIR="${DESTDIR}${PREFIX}/sbin/"
MAKE_ENV+=		MAN_DIR="${DESTDIR}${PREFIX}/man"
MAKE_ENV+=		RMQ_VERSION=${RMQ_VERSION}

post-install:
	${INSTALL_DATA} ${FILESDIR}/rabbitmq.conf ${DESTDIR}${PREFIX}/share/examples/rabbitmq/rabbitmq.conf

.include "../../lang/erlang/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
