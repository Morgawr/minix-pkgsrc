# $NetBSD: Makefile,v 1.5 2010/08/21 16:35:49 seb Exp $

DISTNAME=	Sys-CpuLoad-0.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	sysutils perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sys/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Sys-CpuLoad
COMMENT=	Module to retrieve system load averages
LICENSE=	gnu-gpl-v2 OR artistic

PKG_DESTDIR_SUPPORT=	user-destdir

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Sys/CpuLoad/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
