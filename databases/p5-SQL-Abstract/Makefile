# $NetBSD: Makefile,v 1.20 2010/08/21 16:33:05 seb Exp $
#

DISTNAME=	SQL-Abstract-1.68
PKGNAME=	p5-${DISTNAME}
#PKGREVISION=	1
SVR4_PKGNAME=	p5sqa
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SQL/}

MAINTAINER=	he@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/SQL-Abstract/
COMMENT=	Generate SQL from Perl data structures
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Class-Accessor-Grouped>=0.09005:../../devel/p5-Class-Accessor-Grouped
DEPENDS+=	p5-Hash-Merge>=0.12:../../devel/p5-Hash-Merge
DEPENDS+=	{perl>=5.7.3,p5-Scalar-List-Utils-[0-9]*}:../../devel/p5-Scalar-List-Utils

BUILD_DEPENDS+=	p5-Test-Deep>=0.106:../../devel/p5-Test-Deep
BUILD_DEPENDS+=	p5-Test-Exception-[0-9]*:../../devel/p5-Test-Exception
BUILD_DEPENDS+=	{perl>=5.10.1,p5-Test-Simple>=0.92}:../../devel/p5-Test-Simple
BUILD_DEPENDS+=	p5-Test-Warn-[0-9]*:../../devel/p5-Test-Warn

PERL5_PACKLIST=		auto/SQL/Abstract/.packlist
PERL5_MODULE_TYPE=	Module::Install

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
