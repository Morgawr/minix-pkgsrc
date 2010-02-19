# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gnuplot
PKG_SUPPORTED_OPTIONS=	gd pdf
PKG_SUGGESTED_OPTIONS=	gd pdf

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpdf)
CONFIGURE_ARGS+=        --with-pdf
.include "../../print/pdflib/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mgd)
.include "../../graphics/gd/buildlink3.mk"
.endif
