# $NetBSD: Makefile,v 1.2 2008/10/19 19:18:01 he Exp $
#

DISTNAME=	Test-MockModule-0.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5 net
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-MockModule/
COMMENT=	Perl 5 module to override subroutines in a module for unit testing

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Test/MockModule/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
