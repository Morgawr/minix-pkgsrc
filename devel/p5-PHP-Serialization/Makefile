# $NetBSD: Makefile,v 1.5 2010/08/21 16:34:12 seb Exp $
#

DISTNAME=	PHP-Serialization-0.34
PKGNAME=	p5-${DISTNAME}
#PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PHP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/PHP-Serialization/
COMMENT=	Perl 5 module providing PHP-like (de)serialization
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/PHP/Serialization/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
