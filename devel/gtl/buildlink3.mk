# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GTL_BUILDLINK3_MK:=	${GTL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gtl
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngtl}
BUILDLINK_PACKAGES+=	gtl

.if !empty(GTL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.gtl+=	gtl>=0.3.3
BUILDLINK_PKGSRCDIR.gtl?=	../../devel/gtl
.endif	# GTL_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
