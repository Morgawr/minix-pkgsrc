# $NetBSD: Makefile,v 1.2 2010/01/29 01:52:59 minskim Exp $

DISTNAME=	cm
PKGNAME=	tex-${DISTNAME}-2009.15878
CATEGORIES=	fonts
TEXLIVE_REV=	15878

MAINTAINER=	minskim@NetBSD.org
COMMENT=	Computer Modern fonts

CONFLICTS+=	teTeX-texmf<=3.0nb11

TEX_MIXEDMAP_FILES+=	cmtext-bsr-interpolated.map

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
