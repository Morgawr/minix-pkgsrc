# $NetBSD: Makefile,v 1.2 2010/01/29 08:38:03 minskim Exp $

DISTNAME=	stmaryrd
PKGNAME=	tex-${DISTNAME}-2009
TEXLIVE_REV=	15878

MAINTAINER=	minskim@NetBSD.org
COMMENT=	St Mary Road symbols for theoretical computer science

CONFLICTS+=	teTeX-texmf<=3.0nb15

TEX_MIXEDMAP_FILES+=	stmaryrd.map

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
