# $NetBSD: Makefile,v 1.16 2007/10/09 11:40:30 rillig Exp $
#

DISTNAME=	arphic-ttf-2.11
PKGREVISION=	4
CATEGORIES=	fonts
MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/zh-arphicttf/
DISTFILES=	${FONT_FILES:=.gz} ${MISC_FILES}

MAINTAINER=	rxg@NetBSD.org
COMMENT=	Chinese TrueType fonts from Arphic Technology

CONFLICTS=	arphicttf-[0-9]*

FONT_FILES=	bkai00mp.ttf bsmi00lp.ttf gbsn00lp.ttf gkai00mp.ttf
MISC_FILES=	ARPHICPL.TXT logo.gif release.txt

PKG_DESTDIR_SUPPORT=	user-destdir

DIST_SUBDIR=	arphic-ttf
WRKSRC=		${WRKDIR}

USE_X11BASE=	YES
NO_CONFIGURE=	YES
NO_BUILD=	YES

FONTS_DIRS.ttf=	${PREFIX}/lib/X11/fonts/TTF
DOCDIR=		${PREFIX}/share/doc/arphic-ttf

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${FONTS_DIRS.ttf}
	cd ${WRKSRC} && ${INSTALL_DATA} ${FONT_FILES} \
		${DESTDIR}${FONTS_DIRS.ttf}
	${INSTALL_DATA_DIR} ${DESTDIR}${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${MISC_FILES} ${DESTDIR}${DOCDIR}

.include "../../mk/bsd.pkg.mk"
