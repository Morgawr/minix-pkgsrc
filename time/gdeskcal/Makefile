# $NetBSD: Makefile,v 1.35 2011/01/13 13:39:29 wiz Exp $
#

DISTNAME=		gDeskCal-0_57_1
PKGNAME=		gdeskcal-0.57.1
PKGREVISION=		11
CATEGORIES=		time
MASTER_SITES=		http://www.pycage.de/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.pycage.de/\#gdeskcal
COMMENT=		Desktop calendar

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/gDeskCal-0.57.1
NO_BUILD=	yes

PYTHON_PATCH_SCRIPTS=	gdeskcal
INSTALLATION_DIRS=	bin lib/gdeskcal

post-extract:
	${RM} ${WRKSRC}/data/format.xml~

do-install:
	(cd ${WRKSRC} && ${CP} -r . ${DESTDIR}${PREFIX}/lib/gdeskcal)
	${PY_COMPILE_ALL} ${DESTDIR}${PREFIX}/lib/gdeskcal/code
	${LN} -s ../lib/gdeskcal/gdeskcal ${DESTDIR}${PREFIX}/bin

.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../textproc/py-xml/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
