# $NetBSD: Makefile,v 1.5 2010/01/17 12:02:19 wiz Exp $

PKGNAME=	${DISTNAME:S/evas/evas-pmaps/}
PKGREVISION=	2

COMMENT=	Evas PMAPS image loader

EVAS_IMAGE_LOADERS=	pmaps

.include "../../graphics/evas/Makefile.common"

BUILD_DIRS=	src/modules/loaders/pmaps
MAKE_FLAGS+=	module_la_LIBADD="\$${eavs_image_loader_pmaps_libs} \$${EINA_LIBS} ${BUILDLINK_PREFIX.evas}/lib/libevas.la" \
		module_la_DEPENDENCIES=

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/evas/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
