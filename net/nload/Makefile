# $NetBSD: Makefile,v 1.3 2008/04/19 10:57:34 obache Exp $
#

DISTNAME=		nload-0.7.2
CATEGORIES=		net sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nload/}

MAINTAINER=		bartosz.kuzma@gmail.com
HOMEPAGE=		http://www.roland-riegel.de/nload/
COMMENT=		Monitoring network traffic and bandwidth usage
LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
MANCOMPRESSED=		yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
