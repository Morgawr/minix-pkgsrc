# $NetBSD: Makefile,v 1.19 2010/08/21 16:36:13 seb Exp $
#

DISTNAME=	XML-LibXSLT-1.70
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
SVR4_PKGNAME=	p5xlt
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	adam@migus.org
HOMEPAGE=	http://search.cpan.org/dist/XML-LibXSLT/
COMMENT=	Perl interface to the libxslt library
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-XML-LibXML>=1.70:../../textproc/p5-XML-LibXML

USE_TOOLS+=	pkg-config
PERL5_PACKLIST=	auto/XML/LibXSLT/.packlist

.include "../../textproc/libxslt/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
