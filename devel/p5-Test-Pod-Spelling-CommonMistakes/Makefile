# $NetBSD: Makefile,v 1.1.1.1 2010/07/31 07:38:30 sno Exp $
#

DISTNAME=	Test-Pod-Spelling-CommonMistakes-0.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-Pod-Spelling-CommonMistakes/
COMMENT=	Checks POD for common spelling mistake
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Pod-Spell-CommonMistakes>=0.01:../../textproc/p5-Pod-Spell-CommonMistakes
DEPENDS+=	{perl>=5.12,p5-Test-Simple>=0.94}:../../devel/p5-Test-Simple
DEPENDS+=	p5-Test-Pod>=1.40:../../devel/p5-Test-Pod

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Test/Pod/Spelling/CommonMistakes/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
