# $NetBSD: Makefile,v 1.4 2009/06/30 00:07:13 joerg Exp $

DISTNAME=	Judy-1.0.5
PKGNAME=	${DISTNAME:S/Judy/libjudy/}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=judy/}

MAINTAINER=	vle@gmx.net
HOMEPAGE=	http://judy.sourceforge.net/
COMMENT=	High-performance sparse dynamic array library
LICENSE=	gnu-lgpl-v2

MAKE_JOBS_SAFE=		no

WRKSRC=			${WRKDIR}/${DISTNAME:S/Judy/judy/}

USE_TOOLS+=		gmake
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

TEST_TARGET=		check

DOCDIR=			${PREFIX}/share/doc/${PKGBASE}
AUTO_MKDIRS=		yes
PKG_DESTDIR_SUPPORT=	user-destdir

post-install:
.for i in AUTHORS ChangeLog COPYING README
	${INSTALL_DATA} ${WRKSRC}/${i} ${DESTDIR}${DOCDIR}
.endfor

.include "../../mk/bsd.pkg.mk"
