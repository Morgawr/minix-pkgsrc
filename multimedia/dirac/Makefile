# $NetBSD: Makefile,v 1.7 2009/06/11 17:27:02 joerg Exp $
#

DISTNAME=		dirac-1.0.2
PKGREVISION=		1
CATEGORIES=		multimedia
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dirac/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://dirac.sourceforge.net/
COMMENT=		Open-source video codec designed at the BBC

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		pkg-config perl:run
USE_LIBTOOL=		yes
USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	dirac.pc.in

REPLACE_PERL=		tests/create_dirac_testfile.pl

.include "../../mk/bsd.pkg.mk"
