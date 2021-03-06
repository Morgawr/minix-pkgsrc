# $NetBSD: Makefile,v 1.30 2008/06/12 02:14:27 joerg Exp $
#

DISTNAME=	patch-2.5.4
PKGREVISION=	2
CATEGORIES=	devel
# We keep an uncompressed tar archive of the sources on
# ${MASTER_SITE_LOCAL} so that we won't need gzcat to extract the
# sources, which could potentially cause a circular dependency on
# archivers/gzip-base.
#
#MASTER_SITES=   ${MASTER_SITE_GNU:=patch/}
MASTER_SITES=	${MASTER_SITE_LOCAL}
EXTRACT_SUFX=	.tar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/patch/patch.html
COMMENT=	Patch files using diff output
LICENSE=	gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes

.include "../../mk/bsd.prefs.mk"

.if defined(GNU_PROGRAM_PREFIX)
CONFIGURE_ARGS+=	--program-prefix=${GNU_PROGRAM_PREFIX:Q}
.endif
PLIST_SUBST+=		GNU_PROGRAM_PREFIX=${GNU_PROGRAM_PREFIX:Q}
BUILD_DEFS+=		GNU_PROGRAM_PREFIX

PLIST_VARS+=		gpatch

.if !defined(GNU_PROGRAM_PREFIX) || ${GNU_PROGRAM_PREFIX} != "g"
PLIST.gpatch=		yes
.endif

INSTALL_MAKE_FLAGS=	bindir=${DESTDIR}${PREFIX}/bin \
			man1dir=${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

do-patch:
	${MV} ${WRKSRC}/pch.c ${WRKSRC}/pch.c.orig
	${AWK} '/#include <pch.h>/{print $$0 "\n#include <sys/param.h>";next;}\
		/^#if HAVE_SETMODE/					\
		{gsub(/^#if HAVE_SETMODE/,"#if defined(HAVE_SETMODE) \\&\\& !(defined(BSD) \\&\\& BSD >= 199306) \\&\\& !defined(__INTERIX)");print $$0; next; } \
		{print $$0;}'						\
		< ${WRKSRC}/pch.c.orig 					\
		> ${WRKSRC}/pch.c

.if !defined(GNU_PROGRAM_PREFIX) || ${GNU_PROGRAM_PREFIX} != "g"
post-install:
	${LN} -sf ${GNU_PROGRAM_PREFIX}patch ${DESTDIR}${PREFIX}/bin/gpatch
.endif

.include "../../mk/bsd.pkg.mk"
