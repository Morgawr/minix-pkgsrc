# $NetBSD: Makefile,v 1.1.1.1 2008/04/04 15:26:58 jlam Exp $

DISTNAME=	thoth_delicious-0.1.0
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/_/-/g}
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://thothblog.org/
COMMENT=	del.icio.us plugin for the Thoth blog engine
LICENSE=	modified-bsd

DEPENDS+=	${RUBY_PKGPREFIX}-json-pure>=1.1.2:../../textproc/ruby-json-pure
DEPENDS+=	${RUBY_PKGPREFIX}-thoth>=0.1.0:../../www/thoth

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
