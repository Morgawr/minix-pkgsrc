# $NetBSD: buildlink3.mk,v 1.11 2010/01/17 12:02:05 wiz Exp $

BUILDLINK_TREE+=	libtunepimp

.if !defined(LIBTUNEPIMP_BUILDLINK3_MK)
LIBTUNEPIMP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libtunepimp+=	libtunepimp>=0.5.0
BUILDLINK_ABI_DEPENDS.libtunepimp?=	libtunepimp>=0.5.3nb9
BUILDLINK_PKGSRCDIR.libtunepimp?=	../../audio/libtunepimp

.include "../../audio/musicbrainz/buildlink3.mk"
.include "../../audio/libofa/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.endif # LIBTUNEPIMP_BUILDLINK3_MK

BUILDLINK_TREE+=	-libtunepimp
