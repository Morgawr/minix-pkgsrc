# $NetBSD: buildlink3.mk,v 1.4 2010/05/20 12:36:28 adam Exp $

BUILDLINK_TREE+=	postgresql83-client

.if !defined(POSTGRESQL83_CLIENT_BUILDLINK3_MK)
POSTGRESQL83_CLIENT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.postgresql83-client+=	postgresql83-client>=8.3.0
BUILDLINK_ABI_DEPENDS.postgresql83-client+=	postgresql83-client>=8.3.9nb1
BUILDLINK_PKGSRCDIR.postgresql83-client?=	../../databases/postgresql83-client

# This variable contains the libraries need to link most clients.
BUILDLINK_LDADD.postgresql83-client=	-lpq ${BUILDLINK_LDADD.gettext}
BUILDLINK_FILES.postgresql83-client+=	bin/pg_config

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.endif # POSTGRESQL83_CLIENT_BUILDLINK3_MK

BUILDLINK_TREE+=	-postgresql83-client
