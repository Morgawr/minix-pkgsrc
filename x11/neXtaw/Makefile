# $NetBSD: Makefile,v 1.25 2008/01/04 01:25:51 rillig Exp $

DISTNAME=	neXtaw-0.15.1
PKGREVISION=	3
CATEGORIES=	x11
MASTER_SITES=	http://siag.nu/pub/neXtaw/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://siag.nu/neXtaw/
COMMENT=	NeXTstep-like widgets based on the Athena Widget set

PKG_DESTDIR_SUPPORT=	user-destdir

USE_X11BASE=		yes
GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes

DOCDIR=		${PREFIX}/share/doc/${PKGBASE}
EGDIR=		${PREFIX}/share/examples/${PKGBASE}

.include "../../mk/bsd.prefs.mk"

.if !empty(MACHINE_PLATFORM:MNetBSD-*-alpha)
GCC_REQD+=	2.95
.endif

INSTALLATION_DIRS=	${DOCDIR} ${EGDIR}

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${DESTDIR}${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/README.XAW3D ${DESTDIR}${DOCDIR}
	set -e; cd ${WRKSRC}/doc/app-defaults; for file in *; do	\
		case "$${file}" in					\
		Makefile*)	continue ;;				\
		esac;							\
		${INSTALL_DATA} "$$file" ${DESTDIR}${EGDIR};			\
	done

.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
