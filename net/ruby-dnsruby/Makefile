# $NetBSD: Makefile,v 1.8 2010/11/17 11:21:12 pettai Exp $

DISTNAME=	dnsruby-1.52
CATEGORIES=	net

MAINTAINER=	pettai@NetBSD.org
HOMEPAGE=	http://dnsruby.rubyforge.org/
COMMENT=	Ruby DNS client library
LICENSE=	apache-1.1

PKG_DESTDIR_SUPPORT=	user-destdir

post-extract:
	${MKDIR} ${WRKSRC}/html/classes
	${MKDIR} ${WRKSRC}/html/files

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
