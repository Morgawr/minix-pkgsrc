# $NetBSD: Makefile,v 1.2 2011/03/23 14:49:47 gdt Exp $
#

DISTNAME=	paexec-0.16.1
PKGREVISION=	1
CATEGORIES=	parallel sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=paexec/} \
		http://mova.org/~cheusov/pub/paexec/

MAINTAINER=	cheusov@tut.by
HOMEPAGE=	http://sourceforge.net/projects/paexec
COMMENT=	Distributes tasks over network or CPUs
LICENSE=	mit

BUILD_DEPENDS+=		mk-configure>=0.20.0:../../devel/mk-configure
DEPENDS+=		runawk>=0.20.0:../../lang/runawk

PKG_DESTDIR_SUPPORT=	user-destdir

TEST_TARGET=		test

EGDIR=			${PREFIX}/share/examples/${PKGBASE}

MAKE_ENV+=		MANDIR=${PREFIX}/${PKGMANDIR}
MAKE_ENV+=		AWK=${AWK:Q}
MAKE_ENV+=		SUBPRJ_DFLT="paexec doc examples"
MAKE_ENV+=		EGDIR=${EGDIR}

REPLACE_SH+=		examples/cc_wrapper/cc_wrapper_cmd \
			tests/broken_echo/transport_broken_echo2

.include "../../devel/libmaa/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

MAKE_PROGRAM=	${PREFIX}/bin/mkcmake
