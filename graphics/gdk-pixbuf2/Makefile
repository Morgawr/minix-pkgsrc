# $NetBSD: Makefile,v 1.4 2011/01/13 13:38:02 wiz Exp $
#

DISTNAME=	gdk-pixbuf-2.22.1
PKGNAME=	gdk-pixbuf2-2.22.1
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gdk-pixbuf/2.22/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	ftp://ftp.gnome.org/pub/gnome/sources/gdk-pixbuf/2.22/
COMMENT=	Image loaders for gtk2
LICENSE=	gnu-gpl-v2

CONFLICTS+=	gtk2+<2.22
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	contrib/gdk-pixbuf-xlib/gdk-pixbuf-xlib-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gdk-pixbuf-2.0.pc.in

_BUILDING_GTK2= yes
.include "loaders.mk"

# We remove the loader database during post-install since we create it
# anew in the +INSTALL script as part of the POST-INSTALL action.
#
post-install:
	${RM} -f ${DESTDIR}${GDK_PIXBUF_LOADERS_DB}

BUILDLINK_API_DEPENDS.glib2+= glib2>=2.26.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
