# $NetBSD: Makefile,v 1.1.1.1 2008/03/04 11:33:02 shannonjr Exp $
#

DISTNAME=	coolkey-1.1.0
CATEGORIES=	security
MASTER_SITES=	http://directory.fedora.redhat.com/download/coolkey/

MAINTAINER=	shannonjr@NetBSD.org
HOMEPAGE=	http://directory.fedora.redhat.com/wiki/CoolKey
COMMENT=	Driver support for the CoolKey and CAC products

PKG_DESTDIR_SUPPORT=	user-destdir

# Only for NetBSD>=4.99.0
NOT_FOR_PLATFORM=	NetBSD-[0-3].*-* NetBSD-4.[0-9].*-*
NOT_FOR_PLATFORM+=	NetBSD-4.[0-8]*.*-* NetBSD-4.9[0-8].*-*

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_TOOLS+=	autoconf
USE_TOOLS+=	gmake
USE_TOOLS+=	grep
USE_TOOLS+=	gsed
USE_LANGUAGES=	c c++
AUTOCONF_REQD=	2.59

CONFIGURE_ARGS+=        --sharedstatedir=${VARBASE:Q}
CONFIGURE_ARGS+=        --localstatedir=${VARBASE:Q}
CONFIGURE_ARGS+=        --sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--disable-dependency-tracking

PKGCONFIG_OVERRIDE+=	src/libckyapplet/libckyapplet.pc.in

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../security/pcsc-lite/buildlink3.mk"
.include "../../security/ccid/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
