# $NetBSD: Makefile,v 1.15 2011/01/13 13:38:49 wiz Exp $

DISTNAME=	kodos-2.4.2
PKGREVISION=	8
CATEGORIES=	misc python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kodos/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://kodos.sourceforge.net/
COMMENT=	GUI for creating, testing and debugging Python REs

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=	yes
USE_LANGUAGES=

SUBST_CLASSES+=		libpath
SUBST_STAGE.libpath=	pre-configure
SUBST_FILES.libpath=	setup.py
SUBST_SED.libpath=	-e "s|@LIBPATH@|${PREFIX}/share/kodos|g"

.include "../../lang/python/extension.mk"
.include "../../x11/py-qt3-modules/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
