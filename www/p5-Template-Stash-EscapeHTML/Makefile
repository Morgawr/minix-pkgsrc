# $NetBSD: Makefile,v 1.4 2010/08/17 06:03:02 sno Exp $

DISTNAME=	Template-Stash-EscapeHTML-0.02
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/I/IK/IKEBE/}

MAINTAINER=	abs@absd.org
HOMEPAGE=	http://search.cpan.org/~ikebe/Template-Stash-EscapeHTML/
COMMENT=	Escape HTML automatically in Template-Toolkit
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Template-Toolkit>=2.13:../../www/p5-Template-Toolkit

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST= 	auto/Template/Stash/EscapeHTML/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
