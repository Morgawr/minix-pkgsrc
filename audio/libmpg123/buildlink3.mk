# $NetBSD: buildlink3.mk,v 1.1.1.1 2008/09/07 00:56:15 bjs Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBMPG123_BUILDLINK3_MK:=	${LIBMPG123_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libmpg123
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibmpg123}
BUILDLINK_PACKAGES+=	libmpg123
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libmpg123

.if ${LIBMPG123_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libmpg123+=	libmpg123>=0.7.0
BUILDLINK_PKGSRCDIR.libmpg123?=	../../audio/libmpg123
.endif	# LIBMPG123_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
