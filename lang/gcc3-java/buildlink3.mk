# $NetBSD: buildlink3.mk,v 1.6 2004/03/05 19:25:36 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GCC3JAVA_BUILDLINK3_MK:=	${GCC3JAVA_BUILDLINK3_MK}+

.include "../../mk/bsd.prefs.mk"

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gcc3java
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngcc3java}
BUILDLINK_PACKAGES+=	gcc3java

.if !empty(GCC3JAVA_BUILDLINK3_MK:M+)
.  if defined(GCC3_INSTALLTO_SUBPREFIX)
.    if ${GCC3_INSTALLTO_SUBPREFIX} != "gcc3"
GCC3_PKGMODIF=	_${GCC3_INSTALLTO_SUBPREFIX}
.    endif
.  endif
BUILDLINK_PKGBASE.gcc3java?=	gcc3${GCC3_PKGMODIF}-java
BUILDLINK_DEPENDS.gcc3java+=	gcc3${GCC3_PKGMODIF}-java>=${_GCC_REQD}
BUILDLINK_PKGSRCDIR.gcc3java?=	../../lang/gcc3-java
BUILDLINK_LIBDIRS.gcc3java?=	\
	lib ${_GCC_ARCHDIR:S/^${BUILDLINK_PREFIX.gcc3java}\///}

# Packages that link against shared libraries need a full dependency.
.if defined(USE_GCC_SHLIB)
BUILDLINK_DEPMETHOD.gcc3java+=	full
.else
BUILDLINK_DEPMETHOD.gcc3java?=	build
.endif

.endif	# GCC3JAVA_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
