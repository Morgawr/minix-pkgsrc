# $NetBSD: buildlink3.mk,v 1.4 2010/09/15 10:02:15 drochner Exp $

BUILDLINK_TREE+=	xfconf

.if !defined(XFCONF_BUILDLINK3_MK)
XFCONF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfconf+=	xfconf>=4.6.0
BUILDLINK_ABI_DEPENDS.xfconf?=	xfconf>=4.6.1nb5
BUILDLINK_PKGSRCDIR.xfconf?=	../../devel/xfconf

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.endif	# XFCONF_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfconf
