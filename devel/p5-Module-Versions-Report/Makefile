# $NetBSD: Makefile,v 1.11 2008/11/17 03:41:47 he Exp $

DISTNAME=	Module-Versions-Report-1.06
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Module-Versions-Report/
COMMENT=	Extension to report versions of all modules in memory

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Module-Versions-Report/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
