# $NetBSD: Makefile,v 1.16 2008/10/19 19:18:46 he Exp $
#

DISTNAME=	Digest-Nilsimsa-0.06
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
SVR4_PKGNAME=	p5nil
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Digest-Nilsimsa/
COMMENT=	Perl5 extension module for Nilsimsa signatures

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Digest/Nilsimsa/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
