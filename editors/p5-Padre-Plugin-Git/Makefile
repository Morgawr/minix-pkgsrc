# $NetBSD: Makefile,v 1.2 2010/08/21 16:34:50 seb Exp $
#

DISTNAME=	Padre-Plugin-Git-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	editors perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Padre/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Padre-Plugin-Git/
COMMENT=	Simple Git interface for Padre
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Capture-Tiny>=0.03:../../devel/p5-Capture-Tiny
DEPENDS+=	p5-Padre>=0.67:../../editors/p5-Padre
DEPENDS+=	scmgit-base-[0-9]*:../../devel/scmgit-base

PERL5_PACKLIST=		auto/Padre/Plugin/Git/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

#pre-configure:
#	cd ${WRKSRC} && find `pwd` -name "*.orig" -type f | xargs rm

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
