# $NetBSD: Makefile,v 1.3 2010/08/21 16:35:11 seb Exp $
#

DISTNAME=		Math-BigInt-Pari-1.14
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		math perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Math/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Math-BigInt-Pari/
COMMENT=		Perl5 library to use Math::Pari for Math::BigInt routines
LICENSE=		${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-Math-Pari>=2.010709:../../math/p5-Math-Pari
PERL5_REQD+=		5.12.2nb1

PERL5_PACKLIST=		auto/Math/BigInt/Pari/.packlist
PERL5_MODULE_TYPE=	Module::Install

.include "../../devel/gmp/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
