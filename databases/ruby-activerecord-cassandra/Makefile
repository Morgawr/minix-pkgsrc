# $NetBSD: Makefile,v 1.3 2010/09/23 09:22:13 taca Exp $

DISTNAME=	activerecord-cassandra-adapter-0.1.0
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/-adapter//}
CATEGORIES=	databases

MAINTAINER=	tonnerre@NetBSD.org
HOMEPAGE=	http://github.com/winebarrel/activerecord-cassandra-adapter
COMMENT=	ActiveRecord Cassandra adapter

RUBY_RAILS=	# defined

DEPENDS+=	${RUBY_ACTIVERECORD_DEPENDS}
DEPENDS+=	${RUBY_PKGPREFIX}-cassandra>=0:../../databases/ruby-cassandra

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
