# $NetBSD: Makefile,v 1.18 2008/08/28 13:15:27 ahoka Exp $

DISTNAME=		siod
PKGNAME=		siod-3.0
PKGREVISION=		1
CATEGORIES=		lang
MASTER_SITES=		# ftp://ftp.std.com/pub/gjc/
EXTRACT_SUFX=		.tgz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://people.delphi.com/gjc/siod.html
COMMENT=		Small-footprint implementation of the Scheme programming language

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}
MAKE_FILE=		makefile
MAKE_JOBS_SAFE=		no
BUILD_TARGET=		${OPSYS}
MAKE_ENV+=		CC=${CC:Q}
CPPFLAGS+=		-Dunix=1

REPLACE_INTERPRETER+=	siod
REPLACE.siod.old=	/usr/local/bin/siod
REPLACE.siod.new=	${PREFIX}/bin/siod
REPLACE_FILES.siod=	*.scm

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
MAKE_ENV+=		CPPFLAGS=
.endif

post-patch:
	${MV} ${WRKSRC}/siod.man ${WRKSRC}/prefix-siod.man
	${SED} -e 's|@PREFIX@|${PREFIX}|g' ${WRKSRC}/prefix-siod.man > ${WRKSRC}/siod.man

.include "../../databases/sdbm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
