# $NetBSD: Makefile,v 1.30 2011/01/13 13:39:05 wiz Exp $

DISTNAME=	ktorrent-${KTORRENT_VER}
PKGREVISION=	11
CATEGORIES=	net kde
MASTER_SITES=	http://ktorrent.org/downloads/${KTORRENT_VER}/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS+= automoc4>=0.9.87:../../devel/automoc4

KTORRENT_VER=	3.3

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ktorrent.org/
COMMENT=	Graphical BitTorrent client for KDE4

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		awk msgfmt pkg-config perl

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../audio/taglib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../misc/kdepimlibs4/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../security/qca2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../x11/kdebase-runtime4/buildlink3.mk"
.include "../../x11/kdebase-workspace4/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXt?=	build
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
