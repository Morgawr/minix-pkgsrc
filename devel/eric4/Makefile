# $NetBSD: Makefile,v 1.13 2011/04/22 13:43:17 obache Exp $
#

VERS=			4.4.14
DISTNAME=		eric4-${VERS}
CATEGORIES=		devel
MASTER_SITES=	http://downloads.sourceforge.net/project/eric-ide/eric4/stable/${VERS}/

MAINTAINER=		helgoman@users.sourceforge.net
HOMEPAGE=		http://eric-ide.python-projects.org/index.html
COMMENT=		Python - IDE
LICENSE=		gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir
NO_BUILD=				yes

PY_PATCHPLIST=			yes

CONFIGURE_ARGS+=		-b ${PREFIX}/bin
CONFIGURE_ARGS+=		-d ${PREFIX}/${PYSITELIB}
CONFIGURE_ARGS+=		-a ${PREFIX}/qt4/qsci/api
.include "../../mk/bsd.prefs.mk"
.if defined(DESTDIR) && !empty(DESTDIR)
CONFIGURE_ARGS+=		-i ${DESTDIR}
.endif

do-install:
	(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${PYTHONBIN} install.py ${CONFIGURE_ARGS})

.include "options.mk"
.include "../../lang/python/extension.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../x11/qt4-qscintilla/buildlink3.mk"
.include "../../x11/py-qt4-qscintilla/buildlink3.mk"
BUILDLINK_API_DEPENDS.pyxml+=	${PYPKGPREFIX}-xml>=0.8.4nb3
.include "../../mk/bsd.pkg.mk"
