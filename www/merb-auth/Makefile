# $NetBSD$

DISTNAME=	merb-auth-1.1.1
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.merbivore.com/
COMMENT=	Merb plugin that provides authentication support
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-merb-core>=1.1:../../www/merb-core
DEPENDS+=	${RUBY_PKGPREFIX}-merb-auth-core>=1.1.1:../../www/merb-auth-core
DEPENDS+=	${RUBY_PKGPREFIX}-merb-auth-more>=1.1.1:../../www/merb-auth-more
DEPENDS+=	${RUBY_PKGPREFIX}-merb-auth-slice-password>=1.1.1:../../www/merb-auth-slice-password

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
