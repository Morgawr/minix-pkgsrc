# $NetBSD: Makefile,v 1.12 2006/03/04 21:30:24 jlam Exp $
#

DISTNAME=	rootprobe-20030115
PKGNAME=	rootprobe-200301
CATEGORIES=	net
MASTER_SITES=	http://mawi.wide.ad.jp/mawi/dnsprobe/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mawi.wide.ad.jp/mawi/dnsprobe/
COMMENT=	Root DNS server performance analysis

PKG_DESTDIR_SUPPORT=	user-destdir

NOT_FOR_PLATFORM=	Interix-*-* # no <net/if.h> support

WRKSRC=		${WRKDIR}/rootprobe

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rootprobe ${DESTDIR}${PREFIX}/bin
	(cd ${DESTDIR}${PREFIX}/bin; ${LN} rootprobe cctldprobe)

.include "../../mk/bsd.pkg.mk"
