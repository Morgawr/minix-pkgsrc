# $NetBSD: Makefile,v 1.2 2008/10/19 19:17:51 he Exp $
#

DISTNAME=	Devel-Gladiator-0.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-Gladiator/
COMMENT=	Perl 5 module to walk Perl's arena

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Devel/Gladiator/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
