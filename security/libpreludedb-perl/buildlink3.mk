# $NetBSD$

BUILDLINK_TREE+=	libpreludedb-perl

.if !defined(LIBPRELUDEDB_PERL_BUILDLINK3_MK)
LIBPRELUDEDB_PERL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libpreludedb-perl+=	libpreludedb-perl>=0.9.15.3
BUILDLINK_PKGSRCDIR.libpreludedb-perl?=	../../security/libpreludedb-perl

.endif	# LIBPRELUDEDB_PERL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libpreludedb-perl
