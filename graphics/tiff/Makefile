# $NetBSD: Makefile,v 1.100 2011/03/31 11:05:44 drochner Exp $

DISTNAME=	tiff-3.9.5
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/ \
		http://libtiff.maptools.org/dl/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.remotesensing.org/libtiff/
COMMENT=	Library and tools for reading and writing TIFF data files

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-rpath
CONFIGURE_ARGS+=	--enable-cxx
CONFIGURE_ARGS+=	--with-docdir=${PREFIX}/share/doc/tiff
CONFIGURE_ARGS+=	--without-x # just in case detects gl to build tiffgt

TEST_TARGET=		check

post-install:
	cd ${DESTDIR}/${PREFIX}/${PKGMANDIR}/man3 && for file in *.3tiff; do\
		target=`echo $$file | sed "s/3tiff/3/"`; \
		${MV} $$file $$target; \
	done

.include "options.mk"

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
