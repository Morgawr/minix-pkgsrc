# $NetBSD: Makefile,v 1.16 2007/12/29 09:52:10 wiz Exp $

DISTNAME=	defendguin-0.0.10
PKGREVISION=	7
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.billsgames.com/unix/x/defendguin/src/

MAINTAINER=	reed@reedmedia.net
HOMEPAGE=	http://www.newbreedsoftware.com/defendguin/
COMMENT=	Clone of the arcade game Defender

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man6

INSTALL_MAKE_FLAGS+=	PREFIX=${DESTDIR}${PREFIX}

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
