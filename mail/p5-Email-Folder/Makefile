# $NetBSD: Makefile,v 1.3 2010/08/21 16:35:01 seb Exp $

DISTNAME=	Email-Folder-0.855
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Email/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Email-Folder/
COMMENT=	Perl 5 module to read all the messages from a folder
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST= auto/Email/Folder/.packlist

DEPENDS+=	p5-Email-FolderType>=0.6:../../mail/p5-Email-FolderType
DEPENDS+=	p5-Email-Simple-[0-9]*:../../mail/p5-Email-Simple

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
