# $NetBSD: Makefile,v 1.6 2011/04/17 10:30:48 ryoon Exp $
#

DISTNAME=	quvi-0.2.15
PKGREVISION=	1
CATEGORIES=	net multimedia www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quvi/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://quvi.sourceforge.net/
COMMENT=	The quvi is command line tool and library for parsing video links
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	pkg-config
USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

CONFIGURE_ARGS+=	--enable-nsfw

PKGCONFIG_OVERRIDE+=	libquvi.pc.in

BUILDLINK_API_DEPENDS.pcre+=		pcre>=7.8
.include "../../devel/pcre/buildlink3.mk"
BUILDLINK_API_DEPENDS.curl+=		curl>=7.18.0
.include "../../www/curl/buildlink3.mk"
BUILDLINK_API_DEPENDS.libiconv+=	libiconv>=1.12.0
.include "../../converters/libiconv/buildlink3.mk"
BUILDLINK_API_DEPENDS.lua+=		lua>=5.1
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
