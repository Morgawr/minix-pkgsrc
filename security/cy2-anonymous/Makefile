# $NetBSD: Makefile,v 1.6 2006/04/18 17:42:12 jlam Exp $

PKGNAME=	${DISTNAME:S/cyrus-sasl/cy2-anonymous/}
COMMENT=	Cyrus SASL ANONYMOUS authentication plugin
SASL_PLUGIN=	yes

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	cyrus-sasl<=2.1.19nb1

.include "../../security/cyrus-sasl/Makefile.common"

CONFIGURE_ARGS+=	--enable-anonymous

BUILD_DIRS=	${WRKSRC}/plugins
BUILD_TARGET=	libanonymous.la

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PLUGINDIR}
	cd ${WRKSRC}/plugins && ${SHLIBTOOL} --mode=install		\
		${INSTALL_PROGRAM} libanonymous.la ${DESTDIR}${PLUGINDIR}

.include "../../mk/bsd.pkg.mk"
