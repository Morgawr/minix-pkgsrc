# $NetBSD: Makefile,v 1.11 2010/09/30 10:49:15 obache Exp $

MODNAME=		pdo_mysql
CATEGORIES+=		databases
COMMENT=		PHP extension for PHP Data Objects (MySQL)

PKG_DESTDIR_SUPPORT=	user-destdir
USE_PHP_EXT_PATCHES=	yes

.include "../../mk/bsd.prefs.mk"

.include "../../lang/php/ext.mk"

CONFIGURE_ARGS+=	--with-${MODNAME}
CONFIGURE_ARGS+=	--with-${PKGMODNAME}=shared,${BUILDLINK_PREFIX.mysql-client}

.include "../../mk/mysql.buildlink3.mk"
.include "../../databases/php-pdo/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

