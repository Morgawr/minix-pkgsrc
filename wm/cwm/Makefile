# $NetBSD: Makefile,v 1.7 2006/12/27 13:37:41 joerg Exp $
#

DISTNAME=	cwm-3
PKGREVISION=	2
CATEGORIES=	wm
MASTER_SITES=	http://monkey.org/~marius/cwm/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://monkey.org/~marius/cwm/
COMMENT=	Window manager for X11 initially inspired by evilwm

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
