# $NetBSD: Makefile,v 1.22 2010/12/15 21:52:15 riz Exp $

DISTNAME=	Botan-1.8.7
PKGNAME=	botan-1.8.7
PKGREVISION=	3
CATEGORIES=	security
MASTER_SITES=	http://files.randombit.net/botan/archive/v1.8/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://botan.randombit.net/
COMMENT=	Portable, easy to use, and efficient C++ crypto library
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

HAS_CONFIGURE=		yes
USE_LANGUAGES=		c++

PYTHON_FOR_BUILD_ONLY=	yes

CONFIG_SHELL=		${PYTHONBIN}
CONFIGURE_SCRIPT=	./configure.py
CONFIGURE_ARGS+=	--prefix=${PREFIX}

MAKE_FLAGS+=	LIB_OPT=${CXXFLAGS:Q}

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=	i386 x86 x86_64

.if ${MACHINE_ARCH} == "x86_64"
PLIST.x86_64=	yes
PLIST.x86=	yes
.elif ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--cpu=i386
PLIST.i386=	yes
PLIST.x86=	yes
.elif ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=	--cpu=ppc
.elif ${MACHINE_ARCH} == "powerpc64"
CONFIGURE_ARGS+=	--cpu=ppc64
.endif

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
