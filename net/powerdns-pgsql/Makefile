# $NetBSD: Makefile,v 1.7 2008/08/11 14:38:33 ghen Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../net/powerdns/Makefile.backend"

PKGNAME=		${DISTNAME:S/pdns/powerdns-pgsql/}
PKGREVISION=		1
COMMENT=		PostgreSQL backend module for PowerDNS

CONFIGURE_ARGS+=	--with-dynmodules="gpgsql"
CONFIGURE_ARGS+=	--with-pgsql-lib=${BUILDLINK_PREFIX.${PGSQL_TYPE}}/lib
CONFIGURE_ARGS+=	--with-pgsql-includes=${BUILDLINK_PREFIX.${PGSQL_TYPE}}/include

.include "../../mk/pgsql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
