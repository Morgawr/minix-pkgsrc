# $NetBSD: Makefile,v 1.8 2010/02/02 11:46:44 sno Exp $

DISTNAME=	Catalyst-Plugin-Static-Simple-0.29
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Catalyst-Plugin-Static/
COMMENT=	Serve static files with Catalyst
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Catalyst-Runtime>=5.80008:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-MIME-Types>=1.25:../../mail/p5-MIME-Types
DEPENDS+=	p5-Moose-[0-9]*:../../devel/p5-Moose
DEPENDS+=	p5-MooseX-Types-[0-9]*:../../devel/p5-MooseX-Types
DEPENDS+=	p5-namespace-autoclean-[0-9]*:../../devel/p5-namespace-autoclean

USE_LANGUAGES=		# empty
PERL5_PACKLIST= 	auto/Catalyst/Plugin/Static/Simple/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
