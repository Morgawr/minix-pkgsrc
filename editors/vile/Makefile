# $NetBSD: Makefile,v 1.55 2009/04/28 21:06:16 zafer Exp $

DISTNAME=		vile-9.7
PKGREVISION=		2
CATEGORIES=		editors
MASTER_SITES=		ftp://invisible-island.net/vile/ 
EXTRACT_SUFX=		.tgz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://invisible-island.net/vile/
COMMENT=		VI Like Emacs.  a vi "workalike", with many additional features

PKG_DESTDIR_SUPPORT=	user-destdir

.include "options.mk"

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-perl
CONFIGURE_ARGS+=	--datadir=${DATADIR:Q}
CONFIGURE_ARGS+=	--with-libdir-path=${FILTERDIR:Q}
USE_TOOLS+=		perl:run

REPLACE_PERL=		perl/vileget

CPPFLAGS.NetBSD+=	-DMISSING_EXTERN_ENVIRON

MAKE_FILE=		makefile
INSTALL_TARGET=		install install-doc install-perl

DATADIR=		${PREFIX}/share/vile
FILTERDIR=		${PREFIX}/libexec/vile
EGDIR=			${PREFIX}/share/examples/vile

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/perl/vileget			\
		${DESTDIR}${PREFIX}/bin/vileget
	${INSTALL_DATA_DIR} ${DESTDIR}${EGDIR}
	set -e;								\
	for f in filters/spell.rc filters/filters.rc			\
		macros/digraphs.rc macros/pictmode.rc			\
		macros/manpage.rc visvile/visvile.rc; do		\
		${INSTALL_DATA} ${WRKSRC}/$$f ${DESTDIR}${EGDIR};	\
	done

.include "../../lang/perl5/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
