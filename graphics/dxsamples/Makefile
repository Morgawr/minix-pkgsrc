# $NetBSD: Makefile,v 1.25 2007/02/15 14:58:20 joerg Exp $

DISTNAME=	dxsamples-4.4.0
CATEGORIES=	graphics
MASTER_SITES=	http://opendx.npaci.edu/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.research.ibm.com/dx/
COMMENT=	Sample data for Open Visualization Data Explorer

DEPENDS+=	dx-[0-9]*:../../graphics/dx

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake makeinfo
CONFIGURE_ARGS+=	MAKEINFO=${TOOLS_PATH.makeinfo}
USE_X11BASE=	yes

.include "../../mk/bsd.pkg.mk"
