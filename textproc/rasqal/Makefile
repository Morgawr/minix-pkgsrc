# $NetBSD: Makefile,v 1.9 2010/12/12 12:00:30 wiz Exp $

DISTNAME=	rasqal-0.9.21
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://download.librdf.org/source/

MAINTAINER=	mkirby@NetBSD.org
HOMEPAGE=	http://librdf.org/rasqal
COMMENT=	Library that handles RDF query syntaxes
LICENSE=	gnu-lgpl-v2.1 OR apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake pkg-config
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

PKGCONFIG_OVERRIDE+=	rasqal.pc.in

.include "../../textproc/raptor/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
