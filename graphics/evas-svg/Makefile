# $NetBSD: Makefile,v 1.9 2010/11/15 22:57:13 abs Exp $

PKGNAME=	${DISTNAME:S/evas/evas-svg/}
PKGREVISION=	6

COMMENT=	Evas SVG image loader

EVAS_IMAGE_LOADERS=	svg

.include "../../graphics/evas/Makefile.common"

BUILD_DIRS=	src/modules/loaders/svg
MAKE_FLAGS+=	module_la_LIBADD="\$${EINA_LIBS} \$${evas_image_loader_svg_libs} ${BUILDLINK_PREFIX.evas}/lib/libevas.la" \
		module_la_DEPENDENCIES=

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/evas/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
