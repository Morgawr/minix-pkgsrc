# $NetBSD: Makefile,v 1.14 2011/01/13 13:37:01 wiz Exp $
#

DISTNAME=	gimmix-0.5.7.1
PKGREVISION=	6
CATEGORIES=	audio
MASTER_SITES=	http://download.berlios.de/gimmix/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gimmix.berlios.de/
COMMENT=	Graphical Music player daemon (MPD) client
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=	intltool gmake msgfmt pkg-config

# fixes broken symbolic link to /usr/share/intltool/Makefile.in.in
post-extract:
	rm -f ${WRKSRC}/po/Makefile.in.in
	ln -s ${TOOLS_PREFIX.intltool:Q}/share/intltool/Makefile.in.in \
		${WRKSRC}/po/Makefile.in.in

.include "../../x11/gtk2/buildlink3.mk"
BUILDLINK_API_DEPENDS.libmpd+=		libmpd>=0.17.0
.include "../../audio/libmpd/buildlink3.mk"
BUILDLINK_API_DEPENDS.libglade+=	libglade>=2.6
.include "../../devel/libglade/buildlink3.mk"
BUILDLINK_API_DEPENDS.taglib+=		taglib>=1.4
.include "../../audio/taglib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/libnxml/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
