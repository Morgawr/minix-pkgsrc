# $NetBSD: Makefile,v 1.3 2008/10/19 19:17:55 he Exp $

DISTNAME=	Getopt-Mixed-1.10
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Getopt/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~rsavage/Getopt-Mixed/
COMMENT=	Mixed Getopt wrapper

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Getopt/Mixed/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
