# $NetBSD: Makefile,v 1.1.1.1 2011/05/17 10:39:42 dmcmahill Exp $

DISTNAME=	MARC-XML-0.92
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MARC/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MARC-XML/
COMMENT=	Work with MARC data encoded as XML, SAX handler for parsing MARCXML
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-XML-SAX>=0.12:../../textproc/p5-XML-SAX
DEPENDS+=	p5-MARC-Record>=2.0:../../databases/p5-MARC-Record
DEPENDS+=	p5-MARC-Charset>=0.98:../../converters/p5-MARC-Charset

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MARC-XML/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
