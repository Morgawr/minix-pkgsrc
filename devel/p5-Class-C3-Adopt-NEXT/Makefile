# $NetBSD: Makefile,v 1.5 2010/07/18 12:01:18 seb Exp $

DISTNAME=	Class-C3-Adopt-NEXT-0.13
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Class-C3-Adopt-NEXT/
COMMENT=	Perl5 module to make NEXT suck less
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-MRO-Compat-[0-9]*:../../devel/p5-MRO-Compat

BUILD_DEPENDS+=	p5-Test-Exception>=0.27:../../devel/p5-Test-Exception

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Class/C3/Adopt/NEXT/.packlist

MAKE_PARAMS+=		--skipdeps
PERL5_MODULE_TYPE=	Module::Install::Bundled

BUILD_DEPENDS+=	p5-Test-Exception>=0.27:../../devel/p5-Test-Exception
DEPENDS+=	p5-List-MoreUtils-[0-9]*:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-MRO-Compat-[0-9]*:../../devel/p5-MRO-Compat

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
