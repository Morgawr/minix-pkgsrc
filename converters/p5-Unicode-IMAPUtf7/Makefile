# $NetBSD: Makefile,v 1.9 2008/10/19 19:17:42 he Exp $
#

DISTNAME=	Unicode-IMAPUtf7-2.00
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	converters mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Unicode/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cpan.uwinnipeg.ca/module/Unicode::IMAPUtf7
COMMENT=	Perl extension to deal with IMAP UTF7

DEPENDS+=	p5-Unicode-String>=2.06:../../converters/p5-Unicode-String

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Unicode/IMAPUtf7/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
