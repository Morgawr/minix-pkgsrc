# $NetBSD: Makefile,v 1.5 2010/09/10 13:25:11 taca Exp $

DISTNAME=	thoth-0.2.1
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://thothblog.org/
COMMENT=	Minimalistic blog engine
LICENSE=	modified-bsd

DEPENDS+=	${RUBY_PKGPREFIX}-ramaze>=2008.06:../../www/ramaze
DEPENDS+=	${RUBY_PKGPREFIX}-erubis>=2.6.2:../../www/erubis
DEPENDS+=	${RUBY_PKGPREFIX}-builder>=2.1.2:../../textproc/ruby-builder
DEPENDS+=	${RUBY_PKGPREFIX}-configuration>=0.0.5:../../misc/ruby-configuration
DEPENDS+=	${RUBY_PKGPREFIX}-cssmin>=1.0.2:../../www/ruby-cssmin
DEPENDS+=	${RUBY_PKGPREFIX}-hpricot>=0.6:../../textproc/ruby-hpricot
DEPENDS+=	${RUBY_PKGPREFIX}-jsmin>=1.0.0:../../www/ruby-jsmin
DEPENDS+=	${RUBY_PKGPREFIX}-json-pure>=1.1.3:../../textproc/ruby-json-pure
DEPENDS+=	${RUBY_PKGPREFIX}-redcloth>=4.0.3:../../textproc/ruby-redcloth
DEPENDS+=	${RUBY_PKGPREFIX}-sequel>=2.5.0:../../databases/ruby-sequel
DEPENDS+=	${RUBY_PKGPREFIX}-thin>=0.8.2:../../www/thin

CONFLICTS+=	ruby[1-9][0-9]-thoth-[0-9]* thoth-[0-9]*

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
