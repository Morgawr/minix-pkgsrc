# $NetBSD: Makefile,v 1.15 2010/08/25 19:30:23 sno Exp $

DISTNAME=		JSON-2.27
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5 converters
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=JSON/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/JSON/
COMMENT=		Perl module converts between JSON and Perl data structure
LICENSE=		${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/JSON/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
