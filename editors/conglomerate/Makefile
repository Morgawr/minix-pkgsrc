# $NetBSD: Makefile,v 1.64 2011/01/13 13:37:29 wiz Exp $
#

DISTNAME=	conglomerate-0.9.1
PKGREVISION=	16
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=conglomerate/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.conglomerate.org/
COMMENT=	XML editor for GNOME2
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		docbook-xsl>=1.64.1:../../textproc/docbook-xsl
DEPENDS+=		docbook-xml>=4.2nb6:../../textproc/docbook-xml

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--enable-printing
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc

GCONF_SCHEMAS=		conglomerate.schemas

.include "../../devel/GConf/schemas.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libbonoboui/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../print/libgnomeprint/buildlink3.mk"
.include "../../print/libgnomeprintui/buildlink3.mk"
.include "../../textproc/enchant/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtksourceview/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
