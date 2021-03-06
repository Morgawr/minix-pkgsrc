# $NetBSD: buildlink3.mk,v 1.7 2011/01/13 13:36:38 wiz Exp $

BUILDLINK_TREE+=	avahi

.if !defined(AVAHI_BUILDLINK3_MK)
AVAHI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.avahi+=	avahi>=0.6.23
BUILDLINK_ABI_DEPENDS.avahi?=	avahi>=0.6.27nb5
BUILDLINK_PKGSRCDIR.avahi?=	../../net/avahi

pkgbase := avahi
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.avahi:Mgdbm)
.  include "../../databases/gdbm/buildlink3.mk"
.endif
.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # AVAHI_BUILDLINK3_MK

BUILDLINK_TREE+=	-avahi
