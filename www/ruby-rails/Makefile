# $NetBSD: Makefile,v 1.2 2011/02/09 12:44:07 taca Exp $

DISTNAME=	rails-${RUBY_RAILS2_VERSION}
CATEGORIES=	www

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Framework for developing database-backed web applications
LICENSE=	mit

USE_RAKE=	YES
RUBY_RAILS=	2

DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_ACTIVERECORD_DEPENDS}
DEPENDS+=	${RUBY_ACTIONPACK_DEPENDS}
DEPENDS+=	${RUBY_ACTIONMAILER_DEPENDS}
DEPENDS+=	${RUBY_ACTIVERESOURCE_DEPENDS}

CONFLICTS+=	ruby[1-9][0-9]-rails-[0-9]* rails-[0-9]*

REPLACE_RUBY_DIRS=	bin
REPLACE_RUBY_PAT=	*

pre-configure:
	${RM} -f ${WRKSRC}/railties-3.0.0.beta3.gem

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
