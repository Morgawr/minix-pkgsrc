# $NetBSD: Makefile,v 1.3 2010/08/20 18:51:25 sno Exp $
#

DISTNAME=	Padre-Plugin-PerlCritic-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	editors devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Padre/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Padre-Plugin-PerlCritic/
COMMENT=	Analyze perl files in Padre with Perl::Critic
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Padre>=0.54:../../editors/p5-Padre
DEPENDS+=	p5-Perl-Critic-[0-9]*:../../devel/p5-Perl-Critic

PERL5_PACKLIST=		auto/Padre/Plugin/PerlCritic/.packlist
PERL5_MODULE_TYPE=	Module::Install

#pre-configure:
#	cd ${WRKSRC} && find `pwd` -name "*.orig" -type f | xargs rm

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
