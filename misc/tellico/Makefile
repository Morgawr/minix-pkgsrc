# $NetBSD: Makefile,v 1.34 2011/03/19 02:20:44 wiz Exp $
#

DISTNAME=	tellico-2.3.2
PKGREVISION=	3
CATEGORIES=	misc
MASTER_SITES=	http://tellico-project.org/files/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tellico-project.org/
COMMENT=	Collection manager for KDE
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	automoc4-[0-9]*:../../devel/automoc4

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++
USE_CMAKE=	yes
USE_TOOLS+=	msgfmt pkg-config

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../audio/taglib/buildlink3.mk"
.include "../../devel/exempi/buildlink3.mk"
.include "../../graphics/kdegraphics4/buildlink3.mk"
.include "../../graphics/qimageblitz/buildlink3.mk"
.include "../../misc/kdepimlibs4/buildlink3.mk"
.include "../../multimedia/kdemultimedia4/buildlink3.mk"
.include "../../net/yaz/buildlink3.mk"
.include "../../print/poppler-qt4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
