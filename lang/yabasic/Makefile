# $NetBSD: Makefile,v 1.12 2007/02/19 20:18:25 joerg Exp $

DISTNAME=		yabasic-2.722
PKGREVISION=		3
CATEGORIES=		lang
MASTER_SITES=		http://www.yabasic.de/download/

MAINTAINER=		david@silicium.ath.cx
HOMEPAGE=		http://www.yabasic.de/
COMMENT=		Yet another Basic for Unix and Windows

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES

INSTALLATION_DIRS+=	share/doc/html/yabasic

post-install:
	${INSTALL_DATA} ${WRKSRC}/yabasic.htm \
		${DESTDIR}${PREFIX}/share/doc/html/yabasic

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../devel/ncurses/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
