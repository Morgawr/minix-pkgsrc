# $NetBSD: Makefile,v 1.3 2009/11/23 14:10:26 fhajny Exp $

DISTNAME=	ParseTree-3.0.6
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://parsetree.rubyforge.org/
COMMENT=	Extract and enumerate Ruby parse trees
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-inline>=3.7.0:../../devel/ruby-inline
DEPENDS+=	${RUBY_PKGPREFIX}-sexp-processor>=3.0.0:../../devel/ruby-sexp-processor

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
