# $NetBSD: Makefile,v 1.23 2007/02/22 19:27:00 wiz Exp $
#

DISTNAME=	scotty-${DIST_VERS}
PKGNAME=	tcl-scotty-${DIST_VERS}
PKGREVISION=	4
CATEGORIES=	net tcl
MASTER_SITES=	ftp://ftp.ibr.cs.tu-bs.de/pub/local/tkined/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.nosuchname.net/scotty/
COMMENT=	Network management extensions to TCL

BUILDLINK_API_DEPENDS.tcl+=	tcl>=8.4.6nb4

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DIST_VERS=	2.1.11

WRKSRC=		${WRKDIR}/${DISTNAME}/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-tcl-config=${BUILDLINK_PREFIX.tcl}/lib	\
		--enable-multicast				\
		--enable-gdmo --without-tk-config
CONFIGURE_ENV+=	TARGET=scotty

USE_LIBTOOL=	yes
USE_TOOLS+=	lex yacc

.include "../../lang/tcl/buildlink3.mk"

post-extract:
	@${RM} -f ${WRKSRC}/../doc/http.n
	@${RM} -f ${WRKSRC}/../doc/tkined.1

do-install:
	@${CP} ${WRKSRC}/../tnm/ntping/ntping.8 ${WRKSRC}/../doc
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} tnm-install install-man sinstall

post-install:
	cd ${PREFIX}/bin && ${LN} -f -s scotty${DIST_VERS} scotty

.include "../../mk/bsd.pkg.mk"
