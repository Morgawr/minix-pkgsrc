# $NetBSD: Makefile,v 1.9 2011/02/13 06:34:31 obache Exp $
#

DISTNAME=	json-glib-0.12.2
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/json-glib/0.12/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://live.gnome.org/JsonGlib
COMMENT=	JSON parser for GLib-based libraries and applications
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	json-glib.pc.in

TEST_TARGET=	check

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.16.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
