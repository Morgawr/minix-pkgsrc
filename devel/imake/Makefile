# $NetBSD: Makefile,v 1.9 2010/04/11 13:30:51 obache Exp $

DISTNAME=		imake-1.0.3
CATEGORIES=		x11 devel
MASTER_SITES=		${MASTER_SITE_XORG:=util/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Imake and other utilities from modular X.org

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config makedepend:run

DEPENDS+=		xorg-cf-files>=1.0.3:../../x11/xorg-cf-files

CONFIGURE_ENV+=		APP_MAN_SUFFIX=1
CONFIGURE_ENV+=		HAS_PERL=no

REPLACE_SH+=		mkhtmlindex.sh

.include "../../mk/compiler.mk"
.if empty(PKGSRC_COMPILER:Mgcc)
CONFIGURE_ENV+=		ac_cv_path_RAWCPP="cc -E -Uunix -"

.  if ${OPSYS} == "SunOS"
SUBST_CLASSES+=		xmkmf
SUBST_MESSAGE.xmkmf=	Fixing "xmkmf" script.
SUBST_STAGE.xmkmf=	post-build
SUBST_FILES.xmkmf=	xmkmf
SUBST_SED.xmkmf=	-e "s/^configdirspec= */configdirspec=/"
.  endif
.endif

.include "../../x11/xproto/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
