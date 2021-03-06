# $NetBSD: Makefile,v 1.1.1.1 2011/05/11 19:24:47 cheusov Exp $

DISTNAME=	pkg_summary-utils-${VERSION}
CATEGORIES=	pkgtools
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	cheusov@tut.by
HOMEPAGE=	http://www.mova.org/~cheusov/pub/pkg_summary-utils/
COMMENT=	Utilities for manipulating pkg_summary(5) files
LICENSE=	2-clause-bsd

DEPENDS+=	runawk>=1.1.0:../../lang/runawk
DEPENDS+=	pipestatus-[0-9]*:../../devel/pipestatus

BUILD_DEPENDS+=	mk-configure>=0.20.0:../../devel/mk-configure

CONFLICTS+=	paexec<0.15.0
CONFLICTS+=	awk-pkgsrc-dewey-[0-9]*
CONFLICTS+=	pkg_src_summary-[0-9]*
CONFLICTS+=	pkg_cmp_summary-[0-9]*
CONFLICTS+=	pkg_src_update_summary-[0-9]*
CONFLICTS+=	pkg_update_summary-[0-9]*
CONFLICTS+=	pkg_summary4view-[0-9]*

TEST_TARGET=		test

NO_CHECKSUM=		yes

USE_LANGUAGES=		#empty
USE_TOOLS+=		gzip:run

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/files

EGDIR=		${PREFIX}/share/examples/pkg_summary-utils

CONF_FILES=	${EGDIR}/pkg_digger.conf ${PKG_SYSCONFDIR}/pkg_digger.conf

REPLACE_INTERPRETER+=	runawk
REPLACE.runawk.old=	.*runawk
REPLACE.runawk.new=	${PREFIX}/bin/runawk
REPLACE_FILES.runawk=	get_processed_pkgs.in pkg_*.in XB2bin_summary.in direct_deps.in

MAKE_ENV+=	AWKMODDIR=${PREFIX}/share/runawk
MAKE_ENV+=	EGDIR=${EGDIR}
MAKE_ENV+=	SH=${SH:Q}
MAKE_ENV+=	BMAKE=${MAKE:Q}
MAKE_ENV+=	DISTDIR=${DISTDIR}
MAKE_ENV+=	PKGSRCDIR=${PKGSRCDIR}
MAKE_ENV+=	PKG_SUFX=${PKG_SUFX}
MAKE_ENV+=	PKG_INFO_CMD=${PKG_INFO:Q}

AUTO_MKDIRS=	yes

MAKE_PROGRAM=	mkcmake

do-extract:
	${CP} -Rp ${FILESDIR} ${WRKSRC}

.include "../../pkgtools/pkg_summary-utils/files/version.mk"
.include "../../mk/bsd.pkg.mk"
