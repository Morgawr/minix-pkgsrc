# $NetBSD: Makefile,v 1.5 2010/08/21 16:33:38 seb Exp $
#

DISTNAME=	EV-4.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/ML/MLEHMANN/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/EV/
COMMENT=	Perl interface to libev, a high performance full-featured event loop
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-common-sense-[0-9]*:../../devel/p5-common-sense

MAKE_ENV+=	PERL_MM_USE_DEFAULT=1

PKG_DESTDIR_SUPPORT=	user-destdir
PERL5_PACKLIST=	auto/EV/.packlist

.include "../../lang/perl5/module.mk"
.include "../../devel/libev/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
