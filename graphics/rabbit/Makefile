# $NetBSD: Makefile,v 1.28 2011/03/11 12:29:23 zafer Exp $
#

DISTNAME=	rabbit-0.9.2
CATEGORIES=	graphics ruby
MASTER_SITES=	http://www.cozmixng.org/~kou/download/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://rabbit-shockers.org/
COMMENT=	Application to do presentation with RD document
LICENSE=	gnu-gpl-v2 # or later

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${RUBY_PKGPREFIX}-gnome2-gtk>=0.16.0:../../x11/ruby-gnome2-gtk
DEPENDS+=	${RUBY_PKGPREFIX}-rdtool>=0.6.20:../../textproc/ruby-rdtool
DEPENDS+=	${RUBY_PKGPREFIX}-rttool>=1.0.2:../../textproc/ruby-rttool
DEPENDS+=	${RUBY_PKGPREFIX}-net-irc>=0.0.5:../../chat/ruby-net-irc

USE_RUBY_SETUP=	yes
REPLACE_RUBY=	bin/rabbit bin/rabbit-theme-manager bin/rabrick

CONFIGURE_ARGS+=	--siteruby=${PREFIX}/${RUBY_VENDORLIB_BASE} \
			--siterubyver=${PREFIX}/${RUBY_VENDORLIB} \
			--siterubyverarch=${PREFIX}/${RUBY_VENDORARCHLIB}

post-install:
	rm -f ${DESTDIR}${PREFIX}/bin/rabbit.bat

do-test:
	cd ${WRKSRC} && ${RUBY} test/run-test.rb

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
