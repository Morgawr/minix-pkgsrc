# $NetBSD: buildlink3.mk,v 1.4 2006/02/05 23:10:49 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DBUS_BUILDLINK3_MK:=	${DBUS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	dbus
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndbus}
BUILDLINK_PACKAGES+=	dbus

.if !empty(DBUS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.dbus+=	dbus>=0.61
BUILDLINK_PKGSRCDIR.dbus?=	../../sysutils/dbus

PRINT_PLIST_AWK+=	/^@dirrm share\/dbus-1\/services/ \
				{ print "@comment in dbus: " $$0; next }
.endif	# DBUS_BUILDLINK3_MK

.include "../../textproc/expat/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
