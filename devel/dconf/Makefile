# $NetBSD: Makefile,v 1.4 2011/02/25 20:46:11 drochner Exp $
#

DISTNAME=	dconf-0.5.1
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dconf/0.5/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://live.gnome.org/dconf
COMMENT=	Backend for gsettings
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=		vala-[0-9]*:../../lang/vala

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-editor
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake

PKGCONFIG_OVERRIDE+=	client/dconf.pc.in

.include "../../devel/glib2/modules.mk"
.include "../../mk/bsd.pkg.mk"
