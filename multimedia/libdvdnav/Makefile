# $NetBSD: Makefile,v 1.7 2007/07/01 16:00:10 heinz Exp $
#

DISTNAME=	libdvdnav-4.1.3
CATEGORIES=	multimedia
MASTER_SITES=	http://www.mplayerhq.hu/MPlayer/releases/dvdnav/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.mplayerhq.hu/
COMMENT=	Library to navigate DVDs

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_TOOLS+=		automake autoconf aclocal autoreconf

pre-configure:
	cd ${WRKSRC} && autoreconf -vi

.include "../../multimedia/libdvdread/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
