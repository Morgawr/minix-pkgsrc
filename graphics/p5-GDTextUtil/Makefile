# $NetBSD: Makefile,v 1.17 2008/10/19 19:18:10 he Exp $

DISTNAME=	GDTextUtil-0.86
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	5
SVR4_PKGNAME=	p5gdt
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

MAINTAINER=	damon@brodiefamily.org
HOMEPAGE=	http://theoryx5.uwinnipeg.ca/CPAN/data/GDTextUtil/Text.html
COMMENT=	Perl 5 text utilities for use with the GD drawing package

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-GD>=1.30:../../graphics/p5-GD

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/GD/Text/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
