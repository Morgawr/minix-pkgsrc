# $NetBSD: Makefile,v 1.5 2009/08/12 02:31:20 obache Exp $

DISTNAME=	sqlsharpgtk-0.4
PKGREVISION=	3
CATEGORIES=	databases
MASTER_SITES=	http://forgeftp.novell.com/sqlsharpgtk/SQL-Sharp%20For%20GTK-Sharp%200.4/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://forge.novell.com/modules/xfmod/project/?sqlsharpgtk
COMMENT=	GUI client for entering and running SQL commands and scripts

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config
MAKE_JOBS_SAFE=	no

.include "../../lang/mono/buildlink3.mk"
.include "../../x11/gtk-sharp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
