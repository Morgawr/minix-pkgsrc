# $NetBSD: Makefile,v 1.7 2010/08/29 09:17:31 obache Exp $
#

DISTNAME=		liboobs-2.22.2
PKGREVISION=		1
CATEGORIES=		sysutils gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/liboobs/2.22/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Lightweight GObject based interface to system-tools-backends
LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

.include "options.mk"

GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_LIBTOOL=		YES

.include "../../sysutils/system-tools-backends/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
