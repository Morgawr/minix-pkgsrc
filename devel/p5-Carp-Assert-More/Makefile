# $NetBSD: Makefile,v 1.4 2008/10/19 19:17:48 he Exp $
#

DISTNAME=	Carp-Assert-More-1.12
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
SVR4_PKGNAME=	p5cam
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Carp/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Carp-Assert-More/
COMMENT=	Perl5 module providing convenience wrappers around Carp::Assert

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Carp/Assert/More/.packlist

DEPENDS+=	p5-Carp-Assert-[0-9]*:../../devel/p5-Carp-Assert
DEPENDS+=	p5-Test-Exception-[0-9]*:../../devel/p5-Test-Exception

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
