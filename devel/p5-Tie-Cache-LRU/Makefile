# $NetBSD: Makefile,v 1.1.1.1 2010/07/04 17:48:06 cube Exp $

DISTNAME=	Tie-Cache-LRU-20081023.2116
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tie/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Tie-Cache-LRU/
COMMENT=	Least-Recently Used cache
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Carp-Assert-[0-9]*:../../devel/p5-Carp-Assert
DEPENDS+=	p5-enum-[0-9]*:../../devel/p5-enum
DEPENDS+=	p5-Class-Data-Inheritable-[0-9]*:../../devel/p5-Class-Data-Inheritable
DEPENDS+=	p5-Class-Virtual-[0-9]*:../../devel/p5-Class-Virtual

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Tie/Cache/LRU/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
