# $NetBSD: Makefile,v 1.18 2008/10/19 19:18:46 he Exp $
#

DISTNAME=		Digest-MD4-1.5
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		4
SVR4_PKGNAME=		p5md4
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Digest/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Digest-MD4/
COMMENT=		Perl5 module for MD4 hash algorithm

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Digest/MD4/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
