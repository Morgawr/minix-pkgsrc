# $NetBSD: Makefile,v 1.27 2009/12/15 23:41:45 joerg Exp $

DISTNAME=		gforth-0.7.0
PKGREVISION=		2
CATEGORIES=		lang
MASTER_SITES=		${MASTER_SITE_GNU:=gforth/}
MASTER_SITES+=		http://www.complang.tuwien.ac.at/forth/gforth/

MAINTAINER=		simonb@NetBSD.org
HOMEPAGE=		http://www.complang.tuwien.ac.at/forth/gforth/
COMMENT=		Fast interpreter for the Forth language
LICENSE=		gnu-gpl-v3

ONLY_FOR_PLATFORM=	*-*-alpha *-*-i386 *-*-m68k *-*-powerpc *-*-sparc

PKG_DESTDIR_SUPPORT=	user-destdir
INFO_FILES=		yes

GNU_CONFIGURE=		YES

USE_LIBTOOL=		yes
USE_TOOLS+=		autoconf automake aclocal
USE_TOOLS+=		makeinfo gzip
USE_TOOLS+=		perl:build

MAKE_JOBS_SAFE=		no # fresh Gforth is required to build doc
BUILD_TARGET=		all info # doc
TEST_TARGET=		check

# Make sure elisp will be installed even if no emacs installed.
CONFIGURE_ENV+=		EMACS=${PREFIX}/bin/emacs
CFLAGS+=		-Dunix
INSTALL_MAKE_FLAGS=	${MAKE_FLAGS}					\
			infodir=${PREFIX:Q}/${PKGINFODIR:Q}		\
			mandir=${PREFIX:Q}/${PKGMANDIR:Q}

INSTALLATION_DIRS=	share/emacs/site-lisp

# Kernel image filename is arch dependent
KERNEL_FI_cmd=								\
	if ${TEST} ! -f ${WRKSRC}/Makefile; then			\
		${ECHO} "__nonexistent__";				\
		exit 0;							\
	fi;								\
	cd ${WRKSRC} &&							\
	{ ${ECHO} 'prkern:';						\
	  ${ECHO} '	@${ECHO} $$(kernel_fi)';			\
	  ${ECHO} ;							\
	  ${CAT} Makefile; } | ${MAKE_PROGRAM} -f - prkern
PLIST_SUBST+=	KERNEL_FI=${KERNEL_FI_cmd:sh:Q}

# XXX Need test.
#.include "../../mk/dlopen.buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/ffcall/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
