# $NetBSD: Makefile,v 1.2 2008/10/19 19:18:54 he Exp $
#

DISTNAME=	Lingua-EN-Inflect-Number-1.1
PKGNAME=	p5-${DISTNAME}
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	textproc perl5
MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=../../authors/id/S/SI/SIMON/}
#MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/S/SI/SIMON/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/S/SI/SIMON/
COMMENT=	Force number of words to singular or plural

DEPENDS+=	p5-Lingua-EN-Inflect>=0:../../textproc/p5-Lingua-EN-Inflect

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Lingua/EN/Inflect/Number/.packlist

PKG_DESTDIR_SUPPORT=    user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
