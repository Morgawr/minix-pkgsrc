# $NetBSD: Makefile,v 1.4 2011/02/20 15:44:17 taca Exp $

DISTNAME=	actionpack-${RUBY_RAILS3_VERSION}
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Toolkit for building modeling frameworks (part of Rails)
LICENSE=	mit

RUBY_RAILS=	3

DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_ACTIVEMODEL_DEPENDS}
DEPENDS+=	${RUBY_PKGPREFIX}-builder>=2.1.2:../../textproc/ruby-builder
DEPENDS+=	${RUBY_PKGPREFIX}-i18n>=0.4<1:../../devel/ruby-i18n
DEPENDS+=	${RUBY_PKGPREFIX}-rack>=1.2.1<1.3:../../www/ruby-rack
DEPENDS+=	${RUBY_PKGPREFIX}-rack-test>=0.5.7<0.6:../../www/ruby-rack-test
DEPENDS+=	${RUBY_PKGPREFIX}-rack-mount>=0.6.13<0.7:../../www/ruby-rack-mount
DEPENDS+=	${RUBY_PKGPREFIX}-tzinfo>=0.3.23<0.4:../../time/ruby-tzinfo
DEPENDS+=	${RUBY_PKGPREFIX}-erubis>=2.6.6<2.7:../../www/erubis

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
