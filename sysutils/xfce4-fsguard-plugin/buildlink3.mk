# $NetBSD: buildlink3.mk,v 1.18 2011/01/13 13:36:49 wiz Exp $

BUILDLINK_TREE+=	xfce4-fsguard-plugin

.if !defined(XFCE4_FSGUARD_PLUGIN_BUILDLINK3_MK)
XFCE4_FSGUARD_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-fsguard-plugin+=	xfce4-fsguard-plugin>=0.4.0
BUILDLINK_ABI_DEPENDS.xfce4-fsguard-plugin?=	xfce4-fsguard-plugin>=0.4.0nb6
BUILDLINK_PKGSRCDIR.xfce4-fsguard-plugin?=	../../sysutils/xfce4-fsguard-plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_FSGUARD_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-fsguard-plugin
