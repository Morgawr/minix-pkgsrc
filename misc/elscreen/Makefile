# $NetBSD: Makefile,v 1.16 2008/10/13 08:07:02 uebayasi Exp $
#

DISTNAME=	elscreen-1.4.5
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.morishima.net/pub/morishima.net/naoto/ElScreen/ \
		ftp://ftp.morishima.net/pub/morishima.net/naoto/ElScreen/old/
DISTFILES=	${DISTNAME}.tar.gz \
		elscreen-dired-0.1.0.tar.gz \
		elscreen-dnd-0.0.0.tar.gz \
		elscreen-gf-1.5.2.tar.gz \
		elscreen-goby-0.0.0.tar.gz \
		elscreen-howm-0.1.0.tar.gz \
		elscreen-server-0.0.1.tar.gz \
		elscreen-w3m-0.2.2.tar.gz \
		elscreen-wl-0.7.0.tar.gz

MAINTAINER=	uebayasi@NetBSD.org
HOMEPAGE=	http://www.morishima.net/~naoto/software/elscreen/
COMMENT=	Window manager within Emacs

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=	yes

EMACS_BUILDLINK=# defined

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EMACS_LISPPREFIX}/elscreen
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/elscreen
	${INSTALL_DATA} ${WRKDIR}/*/*.el ${DESTDIR}${EMACS_LISPPREFIX}/elscreen
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/elscreen

.include "../../editors/emacs/modules.mk"

.include "../../devel/apel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
