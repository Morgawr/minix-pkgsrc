# $NetBSD: Makefile,v 1.3 2011/02/09 13:04:29 taca Exp $

DISTNAME=	railties-${RUBY_RAILS3_VERSION}
CATEGORIES=	databases

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Tools for creating, working with, and running Rails applications
LICENSE=	mit

RUBY_RAILS=	3

DEPENDS+=	${RUBY_PKGPREFIX}-thor>=0.14.4<0.15:../../devel/ruby-thor
DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_ACTIONPACK_DEPENDS}

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
