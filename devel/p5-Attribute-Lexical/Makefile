# $NetBSD: Makefile,v 1.2 2010/04/24 16:33:57 seb Exp $

DISTNAME=	Attribute-Lexical-0.002
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Attribute/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Attribute-Lexical/
COMMENT=	Sane scoping of function/variable attributes
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Lexical-SealRequireHints>=0.003:../../devel/p5-Lexical-SealRequireHints
DEPENDS+=	p5-Params-Classify-[0-9]*:../../devel/p5-Params-Classify

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=		# none

PERL5_PACKLIST=		auto/Attribute/Lexical/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
