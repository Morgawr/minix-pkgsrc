# $NetBSD: Makefile,v 1.16 2011/01/13 13:38:53 wiz Exp $
#

DISTNAME=	fuppes-0.640
PKGREVISION=	7
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fuppes/}

MAINTAINER=	tech-multimedia@NetBSD.org
HOMEPAGE=	http://fuppes.ulrich-voelkel.de/
COMMENT=	Free UPnP Entertainment Service

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake pkg-config
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--enable-faad
CONFIGURE_ARGS+=	--enable-mad
CONFIGURE_ARGS+=	--enable-lame

.include "options.mk"

.include "../../devel/pcre/buildlink3.mk"
.include "../../audio/faad2/buildlink3.mk"
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/lame/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/libmpcdec/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../audio/taglib/buildlink3.mk"
.include "../../audio/twolame/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../graphics/ImageMagick/buildlink3.mk"
.include "../../graphics/exiv2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../graphics/simage/buildlink3.mk"
.include "../../multimedia/ffmpeg/buildlink3.mk"
.include "../../multimedia/mpeg4ip/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
