# $NetBSD: Makefile,v 1.3 2010/12/26 00:58:40 minskim Exp $

DISTNAME=	latex-bin
PKGNAME=	tex-${DISTNAME}-2010
TEXLIVE_REV=	21345

MAINTAINER=	minskim@NetBSD.org
COMMENT=	LaTeX executables

CONFLICTS+=	teTeX-texmf<=3.0nb21
CONFLICTS+=	tex-bin-latex<2009
DEPENDS+=	tex-latex>=2010:../../print/tex-latex
SUPERSEDES=	tex-bin-latex<2009

INSTALLATION_DIRS=	bin

TEX_FORMATS+=	"latex pdftex language.dat -translate-file=cp227.tcx *latex.ini\\npdflatex pdftex language.dat -translate-file=cp227.tcx *pdflatex.ini\\ndvilualatex luatex language.dat,language.dat.lua dvilualatex.ini\\nlualatex luatex language.dat,language.dat.lua lualatex.ini\\n"
TEX_TEXMF_DIRS=	# empty

.include "../../print/texlive/package.mk"

post-install:
	${LN} -sf pdftex ${DESTDIR}${PREFIX}/bin/latex
	${LN} -sf pdftex ${DESTDIR}${PREFIX}/bin/pdflatex
	${LN} -sf luatex ${DESTDIR}${PREFIX}/bin/dvilualatex
	${LN} -sf luatex ${DESTDIR}${PREFIX}/bin/lualatex

.include "../../mk/bsd.pkg.mk"
