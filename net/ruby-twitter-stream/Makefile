# $NetBSD: Makefile,v 1.6 2011/03/15 08:30:01 obache Exp $

DISTNAME=	twitter-stream-0.1.13
CATEGORIES=	net

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://github.com/voloko/twitter-stream
COMMENT=	Twitter realtime API client
#LICENSE=	# neither copyright nor restriction notice

DEPENDS+=	${RUBY_PKGPREFIX}-eventmachine>=0.12.8:../../devel/ruby-eventmachine
DEPENDS+=	${RUBY_PKGPREFIX}-simple_oauth>=0.1.4:../../security/ruby-simple_oauth

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
