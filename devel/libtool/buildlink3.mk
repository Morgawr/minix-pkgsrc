# $NetBSD: buildlink3.mk,v 1.3 2004/03/05 19:25:11 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LTDL_BUILDLINK3_MK:=	${LTDL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ltdl
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nltdl}
BUILDLINK_PACKAGES+=	ltdl

.if !empty(LTDL_BUILDLINK3_MK:M+)
BUILDLINK_PKGBASE.ltdl?=	libtool-base
BUILDLINK_DEPENDS.ltdl+=	libtool-base>=1.5.2
BUILDLINK_PKGSRCDIR.ltdl?=	../../devel/libtool-base
.endif	# LTDL_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
