# $NetBSD: Makefile,v 1.1.1.1 2009/04/29 05:28:22 minskim Exp $

DISTNAME=	marvosym
PKGNAME=	tex-${DISTNAME}-2.1
TEXLIVE_REV=	15878

MAINTAINER=	minskim@NetBSD.org
COMMENT=	Martin Vogel's Symbols font

CONFLICTS+=	teTeX-texmf<=3.0nb13

TEX_MAP_FILES+=	marvosym.map

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
