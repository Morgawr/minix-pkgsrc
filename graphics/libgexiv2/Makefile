# $NetBSD: Makefile,v 1.7 2011/04/05 17:57:41 drochner Exp $

DISTNAME=	libgexiv2-0.3.1
PKGREVISION=	1
CATEGORIES=	graphics devel
MASTER_SITES=	http://yorba.org/download/gexiv2/0.3/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://trac.yorba.org/wiki/gexiv2
COMMENT=	GObject-based wrapper around the Exiv2 library
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=		vala-[0-9]*:../../lang/vala

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake m4 pkg-config bash
HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX}

CONFIG_SHELL=		bash

PKGCONFIG_OVERRIDE=	gexiv2.m4

.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/exiv2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
