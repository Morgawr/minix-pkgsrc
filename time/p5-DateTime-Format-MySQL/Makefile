# $NetBSD: Makefile,v 1.5 2008/10/19 19:19:00 he Exp $

DISTNAME=	DateTime-Format-MySQL-0.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	time perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DateTime/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DateTime-Format-MySQL/
COMMENT=	Parse and format MySQL dates and times

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/DateTime/Format/MySQL/.packlist

DEPENDS+=	p5-DateTime-Format-Builder>=0.60:../../time/p5-DateTime-Format-Builder

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
