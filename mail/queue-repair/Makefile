# $NetBSD: Makefile,v 1.5 2009/02/09 22:56:25 joerg Exp $
#

DISTNAME=		queue-repair-0.9.0
PKGREVISION=		4
CATEGORIES=		mail
MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://pyropus.ca/software/queue-repair/
COMMENT=		Check or correct most corruptions of the queue in qmail

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=		YES

PYTHON_PATCH_SCRIPTS=	queue_repair.py
INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/queue_repair.py \
		${DESTDIR}${PREFIX}/bin/queue_repair

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
