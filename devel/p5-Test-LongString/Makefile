# $NetBSD: Makefile,v 1.7 2010/02/23 10:55:06 sno Exp $

DISTNAME=		Test-LongString-0.13
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Test-LongString/
COMMENT=		Perl5 module to test strings for equality
LICENSE=		${PERL5_LICENSE}

PERL5_REQD+=		5.10.0

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Test/LongString/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
