# $NetBSD: Makefile,v 1.7 2007/01/07 09:13:54 rillig Exp $
#

DISTNAME=		type1inst-0.6.1
PKGREVISION=		1
CATEGORIES=		fonts
MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/xutils/}

MAINTAINER=		groo@NetBSD.org
COMMENT=		Automatically generate fonts.scale/fonts.dir for Type1 fonts

PKG_DESTDIR_SUPPORT=	user-destdir

USE_X11BASE=		yes
USE_TOOLS+=		perl:run
REPLACE_PERL=		t1embed type1inst

NO_BUILD=		yes
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/type1inst ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/t1embed ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/type1inst.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/type1inst.1
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/type1inst
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/type1inst

.include "../../mk/bsd.pkg.mk"
