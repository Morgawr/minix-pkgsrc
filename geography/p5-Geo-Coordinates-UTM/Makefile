# $NetBSD: Makefile,v 1.2 2010/08/21 16:34:53 seb Exp $
#

DISTNAME=		Geo-Coordinates-UTM-0.09
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		geography perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Geo/}

MAINTAINER=		he@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Geo-Coordinates-UTM/
COMMENT=		Perl extension for Latitude Longitude conversions
LICENSE=		${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Geo/Coordinates/UTM/.packlist

PREV_PKGPATH=		misc/p5-Geo-Coordinates-UTM

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
