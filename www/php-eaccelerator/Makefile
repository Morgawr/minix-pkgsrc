# $NetBSD: Makefile,v 1.12 2010/10/02 19:11:35 jdolecek Exp $

MODNAME=	eaccelerator
PECL_VERSION=	0.9.6
CATEGORIES+=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eaccelerator/} \
		http://bart.eaccelerator.net/source/${PECL_VERSION}/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://eaccelerator.net/
MAINTAINER=	jdolecek@NetBSD.org
COMMENT=	PHP accelerator, optimizer, encoder and dynamic content cache
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=		php-eaccelator-[0-9]*

CONFIGURE_ARGS+=	--enable-${MODNAME}

.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
