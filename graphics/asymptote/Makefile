# $NetBSD: Makefile,v 1.3 2009/08/31 14:53:10 wiz Exp $
#

DISTNAME=	asymptote-1.85
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=asymptote/}
EXTRACT_SUFX=	.tgz
DISTFILES=	${DISTNAME}.src${EXTRACT_SUFX}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://asymptote.sourceforge.net/
COMMENT=	Powerful descriptive vector graphics language for technical drawings
LICENSE=	gnu-gpl-v3 AND gnu-lgpl-v3

BUILD_DEPENDS+=	dvipsk-[0-9]*:../../print/dvipsk
BUILD_DEPENDS+=	tex-pdftex-[0-9]*:../../print/tex-pdftex
BUILD_DEPENDS+=	ghostscript-[0-9]*:../../print/ghostscript

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
INFO_FILES=		yes
USE_LANGUAGES=          c c++

CONFIGURE_ARGS+=	--enable-gc=system
CONFIGURE_ARGS+=	--infodir=${PREFIX}/info
USE_TOOLS+=		gmake makeinfo perl
CFLAGS+=		-DGC_NO_THREAD_REDIRECTS

post-install:
	${MV} ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/xasy.1x \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/xasy.1

.include "../../mk/bsd.prefs.mk"

# DragonFly has stripped makeinfo in the base - without texi2dvi.
.if ${OPSYS} == "DragonFly"
BUILD_DEPENDS+=         gtexinfo-[0-9]*:../../devel/gtexinfo
.endif

.include "../../devel/boehm-gc/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
# next two could be split off into options
.include "../../math/fftw/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
# freeglut too old, not recognized
#.include "../../graphics/freeglut/buildlink3.mk"
# recognized, but makes asy dump core during creation of documentation
#.include "../../graphics/glut/buildlink3.mk"

.include "../../mk/tex.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
