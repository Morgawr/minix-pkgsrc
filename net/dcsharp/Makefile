# $NetBSD: Makefile,v 1.15 2011/01/13 13:39:01 wiz Exp $

DISTNAME=	dcsharp-0.11.1
PKGREVISION=	13
CATEGORIES=	net
MASTER_SITES=	http://dcsharp.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/dcsharp/
COMMENT=	File sharing client for the Direct Connect protocol

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	pkg-config msgfmt
USE_LANGUAGES=	c++
NO_CONFIGURE=	yes

BUILD_DEPENDS+=	scons>=0.96.1:../../devel/scons
DEPENDS+=	notification-daemon>=0.3.7:../../sysutils/notification-daemon

INSTALLATION_DIRS+=	bin lib share

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${PREFIX}/bin/scons PREFIX=${PREFIX}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${PREFIX}/bin/scons PREFIX=${DESTDIR}${PREFIX} install

.include "../../lang/mono/buildlink3.mk"
.include "../../x11/gtk-sharp/buildlink3.mk"
.include "../../x11/gnome-sharp/buildlink3.mk"
.include "../../sysutils/ndesk-dbus/buildlink3.mk"
.include "../../sysutils/ndesk-dbus-glib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
