# $NetBSD: Makefile,v 1.13 2011/02/28 14:52:41 wiz Exp $

VERSION=	1.27
DISTNAME=	pidgin-facebookchat-source-${VERSION}
PKGNAME=	pidgin-facebookchat-${VERSION}
PKGREVISION=	9
CATEGORIES=	chat
MASTER_SITES=	http://pidgin-facebookchat.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2
WRKSRC=		${WRKDIR}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/pidgin-facebookchat/
COMMENT=	Plugin for pidgin to support Facebook IM

PKG_DESTDIR_SUPPORT=	user-destdir

SUBST_CLASSES+=	paths
SUBST_STAGE.paths=	pre-configure
SUBST_MESSAGE.paths=	Fixing absolute paths.
SUBST_FILES.paths=	Makefile
SUBST_SED.paths=	-e 's+-I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include+-I${BUILDLINK_DIR}/include/glib/glib-2.0/glib -I${BUILDLINK_DIR}/include/glib/glib-2.0 -I${BUILDLINK_DIR}/lib/glib-2.0/include+g'
SUBST_SED.paths+=	-e 's+-I/usr/include/libpurple+-I${BUILDLINK_DIR}/include/libpurple+g'
SUBST_SED.paths+=	-e 's+/usr/share/+${DESTDIR}${PREFIX}/share/+g'
SUBST_SED.paths+=	-e 's+/usr/lib/+${DESTDIR}${PREFIX}/lib/+g'

INSTALLATION_DIRS+=	lib/purple-2 \
			share/pixmaps/pidgin/protocols/16 \
			share/pixmaps/pidgin/protocols/22 \
			share/pixmaps/pidgin/protocols/48

.include "../../chat/pidgin/buildlink3.mk"
.include "../../chat/libpurple/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
