# $NetBSD: Makefile,v 1.9 2010/07/14 15:16:15 seb Exp $

DISTNAME=	Class-C3-0.23
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Class-C3/
COMMENT=	Pragma to use the C3 method resolution order algortihm
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Class/C3/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

# As the minimum required version by pkgsrc for Perl 5 is 5.10, this
# package for the Perl 5 module Class::C3 does not need any dependency:
# it is only a stub for the CORE module mro, available since Perl
# version 5.9.5

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
