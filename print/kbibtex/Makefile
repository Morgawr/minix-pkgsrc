# $NetBSD: Makefile,v 1.18 2011/01/13 13:39:12 wiz Exp $

DISTNAME=		kbibtex-0.2.1
PKGREVISION=		8
CATEGORIES=		print kde
MASTER_SITES=		http://www.unix-ag.uni-kl.de/~fischer/kbibtex/download/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		markd@NetBSD.org
HOMEPAGE=		http://www.unix-ag.uni-kl.de/~fischer/kbibtex/
COMMENT=		BibTeX editor for KDE

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake perl msgfmt
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
