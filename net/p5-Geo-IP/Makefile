# $NetBSD: Makefile,v 1.19 2009/10/15 07:57:08 rhaen Exp $
#

DISTNAME=	Geo-IP-1.38
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Geo/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.maxmind.com/geoip/api/perl.shtml
#HOMEPAGE=	http://search.cpan.org/dist/Geo-IP/
COMMENT=	Gets country name by IP or hostname
LICENSE=  ${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=	c

PERL5_PACKLIST=	auto/Geo/IP/.packlist
MAKE_PARAMS+=	LIBS="-L${PREFIX:Q}/lib -Wl,-R${PREFIX:Q}/lib"
MAKE_PARAMS+=	INC="-I${PREFIX:Q}/include"

.include "../../lang/perl5/module.mk"
.include "../../net/GeoIP/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
