# $NetBSD: Makefile,v 1.12 2011/03/10 10:24:52 obache Exp $

PKGNAME?=	${DISTNAME}
COMMENT?=	GNU editing macros (editor)

DISTNAME=	emacs-22.3
PKGREVISION=	14
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_GNU:=emacs/}

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/emacs/emacs.html
LICENSE=	gnu-gpl-v3

CONFLICTS+=	elisp-manual-[0-9]*
CONFLICTS+=	emacs-[0-9]*
CONFLICTS+=	emacs-nox11-[0-9]*
CONFLICTS+=	mule-[0-9]*

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake gzip mktemp:run perl:run pkg-config
GNU_CONFIGURE=		yes
INFO_FILES=		# PLIST

SETGIDGAME=		yes

.include "options.mk"

MAKEFLAGS+=		EMACSLOADPATH=${WRKSRC}/lisp

CONFIGURE_ARGS+=	--localstatedir=${VARBASE:Q}
CONFIGURE_ENV+=		GAMEOWN=${GAMEOWN:Q}

BUILD_DEFS+=		VARBASE
BUILD_DEFS+=		GAMEDATAMODE

# build PATH in the dumped emacs is not a problem
CHECK_WRKREF_SKIP+=	bin/emacs
CHECK_WRKREF_SKIP+=	bin/emacs-[0-9]*

REPLACE_PERL=		lib-src/grep-changelog

SUBST_CLASSES+=			test_equal
SUBST_STAGE.test_equal=		pre-configure
SUBST_MESSAGE.test_equal=	Fixing bashisms in test(1) usage.
SUBST_FILES.test_equal=		mac/make-package
SUBST_SED.test_equal=		-e 's/ == / = /g'

MAKE_DIRS_PERMS+=	${VARBASE}/games/emacs \
			${GAMES_USER} ${GAMES_GROUP} ${GAMEDIRMODE:Q}
CONF_FILES_PERMS+=	/dev/null ${VARBASE}/games/emacs/snake-scores \
			${GAMES_USER} ${GAMES_GROUP} ${GAMEDATAMODE:Q}
CONF_FILES_PERMS+=	/dev/null ${VARBASE}/games/emacs/tetris-scores \
			${GAMES_USER} ${GAMES_GROUP} ${GAMEDATAMODE:Q}
SPECIAL_PERMS+=		libexec/emacs/${PKGVERSION_NOREV}/${MACHINE_GNU_PLATFORM}/update-game-score ${SETGID_GAMES_PERMS}

.if (${OPSYS} == "DragonFly") && exists(/usr/lib/crtn.o)
CPPFLAGS+=		-DDFLY_CRT_USRLIB
.endif

post-extract:
	cp ${FILESDIR}/site-init.el ${WRKSRC}/lisp
	cp ${FILESDIR}/dragonfly.h ${WRKSRC}/src/s
	${CHMOD} -R go-w ${WRKSRC}

.include "../../mk/oss.buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
