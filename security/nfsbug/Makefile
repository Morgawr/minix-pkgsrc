# $NetBSD: Makefile,v 1.18 2007/02/22 19:27:08 wiz Exp $

DISTNAME=	nfsshell-1.0
PKGREVISION=	1
CATEGORIES=	net security
MASTER_SITES=	http://www.asmodeus.com/archive/Xnix/
DISTFILES=	nfsBugFerret.tgz \
		nfsShell.c

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	NFS security verification suite

PKG_DESTDIR_SUPPORT=	user-destdir

EXTRACT_ONLY=	nfsBugFerret.tgz
WRKSRC=		${WRKDIR}/nfsbug


INSTALLATION_DIRS=	bin

post-extract:
	${CP} ${DISTDIR}/nfsShell.c ${WRKSRC}/nfsshell.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nfsbug ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/nfsshell ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
