# $NetBSD: Makefile,v 1.9 2008/04/13 09:54:42 wiz Exp $

.include "Makefile.common"

PKGREVISION=	4
COMMENT=	Windowing toolkit based on libslang

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes
NO_EXPORT_CPP=	yes
GNU_CONFIGURE=	yes

INSTALLATION_DIRS=	bin include lib

do-install:
	cd ${WRKSRC}; \
	 ${LIBTOOL} --mode=install ${INSTALL_PROGRAM} libnewt.la ${DESTDIR}${PREFIX}/lib;\
	 ${INSTALL_DATA} newt.h ${DESTDIR}${PREFIX}/include; \
	 ${LIBTOOL} --mode=install ${INSTALL} whiptail ${DESTDIR}${PREFIX}/bin

.include "../../devel/libslang/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
