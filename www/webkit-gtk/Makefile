# $NetBSD: Makefile,v 1.40 2011/04/14 18:11:45 drochner Exp $

DISTNAME=	webkit-1.2.7
PKGNAME=	${DISTNAME:S/webkit/webkit-gtk/}
PKGREVISION=	4
CATEGORIES=	www
MASTER_SITES=	http://www.webkitgtk.org/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.webkitgtk.org/
COMMENT=	GTK2 port of the WebKit browser engine

USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes
USE_TOOLS+=	bison gmake perl:build pkg-config msgfmt

PKGCONFIG_OVERRIDE=	WebKit/gtk/webkit.pc.in

PKG_DESTDIR_SUPPORT=	user-destdir
MAKE_JOBS_SAFE=		no

MAKE_FILE=	GNUmakefile
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--with-target=x11 \
			--with-font-backend=freetype
.include "options.mk"

REPLACE_PERL+=	JavaScriptCore/pcre/dftables \
		JavaScriptCore/create_hash_table \
		WebCore/bindings/scripts/generate-bindings.pl \
		WebCore/bindings/scripts/InFilesParser.pm \
		WebCore/platform/text/mac/make-charset-table.pl \
		WebCore/css/*.pl \
		WebCore/dom/*.pl \
		WebCore/platform/text/mac/*.pl

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/flex/buildlink3.mk"
.include "../../devel/gperf/buildlink3.mk"
# This is optional, but needs testing.
#.include "../../devel/pango/buildlink3.mk"
# A correct Webkit build requires flex 2.5.33
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
BUILDLINK_API_DEPENDS.png+= png>=1.5.1beta08
.include "../../graphics/png/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
BUILDLINK_API_DEPENDS.libsoup24+= libsoup24>=2.28.0
.include "../../net/libsoup24/buildlink3.mk"
.include "../../textproc/enchant/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.10
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
