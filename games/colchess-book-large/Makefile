# $NetBSD: Makefile,v 1.12 2006/03/04 21:29:40 jlam Exp $

DISTNAME=		book_large
PKGNAME=		${CHESS_ENGINE}-book-large-20000512
CATEGORIES=		games
MASTER_SITES=		http://www.ast.cam.ac.uk/~cmf/chess/
EXTRACT_SUFX=		.tgz

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Chess opening book for ColChess (large)

DEPENDS+=		colchess>=7.0:../../games/colchess

CONFLICTS=		${CHESS_ENGINE}-book-[0-9]*

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}
CHESS_ENGINE=		colchess
DIST_SUBDIR=		chessbooks
NO_CONFIGURE=		yes

PLIST_SUBST+=		CHESS_ENGINE=${CHESS_ENGINE:Q}
PLIST_SUBST+=		BOOK_FILE=${BOOK_FILE:Q}

BOOKDIR=		${PREFIX}/share/${CHESS_ENGINE}
BOOK_FILE=		book.dat

do-build:
	cd ${WRKSRC}; ${LN} ${DISTNAME}.dat ${BOOK_FILE}

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${BOOKDIR}
	${INSTALL_DATA} ${WRKSRC}/${BOOK_FILE} ${DESTDIR}${BOOKDIR}

.include "../../mk/bsd.pkg.mk"
