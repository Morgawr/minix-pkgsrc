# $NetBSD: Makefile,v 1.2 2010/02/02 18:28:54 sno Exp $

DISTNAME=	String-Escape-2010.002
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=String/}

HOMEPAGE=	http://search.cpan.org/dist/String-Escape/
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Registry of string functions, including backslash escapes
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/String/Escape/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
