# $NetBSD: buildlink3.mk,v 1.3 2011/03/22 10:47:11 obache Exp $

BUILDLINK_TREE+=	gobject-introspection

.if !defined(GOBJECT_INTROSPECTION_BUILDLINK3_MK)
GOBJECT_INTROSPECTION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gobject-introspection+=	gobject-introspection>=0.6.14nb1
BUILDLINK_ABI_DEPENDS.gobject-introspection?=	gobject-introspection>=0.10.7nb2
BUILDLINK_PKGSRCDIR.gobject-introspection?=	../../devel/gobject-introspection


.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.endif	# GOBJECT_INTROSPECTION_BUILDLINK3_MK

BUILDLINK_TREE+=	-gobject-introspection
