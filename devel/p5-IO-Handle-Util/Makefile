# $NetBSD: Makefile,v 1.1.1.1 2010/04/11 16:10:30 seb Exp $
#

DISTNAME=	IO-Handle-Util-0.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/IO-Handle-Util/
COMMENT=	Perl 5 module providing for working with IO::Handle like objects
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/IO/Handle/Util/.packlist

BUILD_DEPENDS+=	p5-Test-Simple>=0.88:../../devel/p5-Test-Simple
BUILD_DEPENDS+=	p5-Test-use-ok-[0-9]*:../../devel/p5-Test-use-ok

DEPENDS+=	p5-IO-String-[0-9]*:../../devel/p5-IO-String
DEPENDS+=	p5-Sub-Exporter-[0-9]*:../../devel/p5-Sub-Exporter
DEPENDS+=	p5-asa-[0-9]*:../../devel/p5-asa
DEPENDS+=	p5-parent-[0-9]*:../../devel/p5-parent

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
