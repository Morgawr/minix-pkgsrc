# $NetBSD: buildlink3.mk,v 1.13 2006/07/08 23:11:04 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PY_ORBIT_BUILDLINK3_MK:=	${PY_ORBIT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pyorbit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npyorbit}
BUILDLINK_PACKAGES+=	pyorbit
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}pyorbit

.if !empty(PY_ORBIT_BUILDLINK3_MK:M+)
.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pyorbit+=	${PYPKGPREFIX}-ORBit>=2.0.0nb1
BUILDLINK_ABI_DEPENDS.pyorbit+=	${PYPKGPREFIX}-ORBit>=2.0.1nb1
BUILDLINK_PKGSRCDIR.pyorbit?=	../../net/py-ORBit
.endif	# PY_ORBIT_BUILDLINK3_MK

.include "../../net/ORBit2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
