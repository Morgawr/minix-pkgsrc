# $NetBSD: Makefile,v 1.19 2009/08/05 07:57:17 minskim Exp $
#

DISTNAME=	lookup-1.4.1
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://openlab.jp/edict/lookup/dist/

MAINTAINER=	uebayasi@NetBSD.org
HOMEPAGE=	http://openlab.jp/edict/lookup/index.html.ja
COMMENT=	Electric dictionary agent for Emacs

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	eblook>=1.4:../../textproc/eblook

EMACS_VERSIONS_ACCEPTED=	emacs23 emacs22 emacs22nox emacs21 emacs21nox emacs20 xemacs214 xemacs215
EMACS_BUILDLINK=# defined

GNU_CONFIGURE=	YES
MAKEFLAGS+=	lispdir=${EMACS_LISPPREFIX}/lookup
INFO_FILES=	# PLIST

CONFIGURE_ARGS+=${EMACS_FLAVOR}

.include "../../editors/emacs/modules.mk"

.include "../../devel/apel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
