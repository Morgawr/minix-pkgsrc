# $NetBSD: Makefile,v 1.5 2010/10/24 17:49:50 shattered Exp $

DISTNAME=		ocp-0.1.20
CATEGORIES=		audio
MASTER_SITES=		http://stian.cubic.org/ocp/
EXTRACT_SUFX=		.tar.lzma

MAINTAINER=		shattered@NetBSD.org
HOMEPAGE=		http://stian.cubic.org/project-ocp.php
COMMENT=		Open Cubic Player

LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake makeinfo
USE_LANGUAGES=		c c++
USE_NCURSES=		yes	# resize_term
INFO_FILES=		yes

# ymtype.so wants to link -llzh before it's finished building
MAKE_JOBS_SAFE=		no

CONFIGURE_ARGS+=	--exec-prefix=${PREFIX}
CONFIGURE_ARGS+=	--infodir=${PREFIX}/info

.include "../../audio/libid3tag/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
