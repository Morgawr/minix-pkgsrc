# $NetBSD: Makefile,v 1.10 2011/01/13 13:38:33 wiz Exp $
#

DISTNAME=	uim-tomoe-gtk-0.6.0
PKGREVISION=	8
CATEGORIES=	inputmethod
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tomoe/}

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://tomoe.sourceforge.jp/
COMMENT=	UIM helper program for Tomoe
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

.include "../../inputmethod/tomoe/buildlink3.mk"
.include "../../inputmethod/tomoe-gtk/buildlink3.mk"
.include "../../inputmethod/uim/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
