# $NetBSD: Makefile,v 1.13 2011/02/20 22:19:52 wiz Exp $
#

DISTNAME=		ckmame-0.11
PKGREVISION=		1
CATEGORIES=		emulators
MASTER_SITES=		http://www.nih.at/ckmame/
EXTRACT_SUFX=		.tar.bz2

OWNER=			dillo@NetBSD.org
HOMEPAGE=		http://www.nih.at/ckmame/
COMMENT=		Check ROM sets for MAME
LICENSE=		modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes
TEST_TARGET=		check

BUILDLINK_API_DEPENDS.libzip+=  libzip>=0.9

.include "../../archivers/libzip/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
