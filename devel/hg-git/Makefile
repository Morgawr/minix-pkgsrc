# $NetBSD: Makefile,v 1.7 2010/06/15 16:22:57 joerg Exp $
#

DISTNAME=		hg-git-0.2.2
EGG_NAME=		hg_git-0.2.2
PKGREVISION=		1
CATEGORIES=		devel python
MASTER_SITES=		${MASTER_SITE_LOCAL}

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://hg-git.github.com
COMMENT=		Git plugin for Mercurial

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${PYPKGPREFIX}-dulwich>=0.6.0:../../devel/py-dulwich
DEPENDS+=	mercurial>=1.3.1:../../devel/mercurial

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
