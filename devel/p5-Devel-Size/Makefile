# $NetBSD: Makefile,v 1.2 2008/10/19 19:17:52 he Exp $
#

DISTNAME=	Devel-Size-0.71
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-Size/
COMMENT=	Perl 5 module for finding the memory usage of variables

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Devel/Size/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
