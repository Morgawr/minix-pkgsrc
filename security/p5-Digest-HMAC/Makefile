# $NetBSD: Makefile,v 1.18 2010/01/20 14:43:21 wiz Exp $
#

DISTNAME=		Digest-HMAC-1.02
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
SVR4_PKGNAME=		p5hmac
CATEGORIES=		security perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Digest/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Digest-HMAC/
COMMENT=		Perl5 module for HMAC
LICENSE=		${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-Digest-SHA1>=1.00:../../security/p5-Digest-SHA1
DEPENDS+=		p5-Digest-MD5>=2.00:../../security/p5-Digest-MD5

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Digest/HMAC/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
