# $NetBSD: Makefile,v 1.2 2010/11/09 00:39:56 wiz Exp $
#

DISTNAME=	libvdpau-0.4.1
CATEGORIES=	multimedia
MASTER_SITES=	http://people.freedesktop.org/~aplattner/vdpau/

MAINTAINER=	vle@gmx.net
HOMEPAGE=	http://http.download.nvidia.com/XFree86/vdpau/doxygen/html/index.html
COMMENT=	Video Decode and Presentation API for Unix
LICENSE=	mit

ONLY_FOR_PLATFORM=	${VDPAU_AVAILABLE_ON:S/$/-*-*/}

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake
USE_LANGUAGES=	c c++
CONFIGURE_ARGS+=	--disable-documentation

INSTALLATION_DIRS+=	share/doc/libvdpau

PKGCONFIG_OVERRIDE+=	vdpau.pc.in

DOCFILES=		README NEWS COPYING AUTHORS
post-install:
	set -e; cd ${WRKSRC}; \
	${INSTALL_DATA} ${DOCFILES} ${DESTDIR}${PREFIX}/share/doc/libvdpau

.include "available.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
