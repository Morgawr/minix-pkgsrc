# $NetBSD: Makefile,v 1.14 2011/03/21 13:10:58 pettai Exp $

DISTNAME=	ldns-1.6.9
CATEGORIES=	net
MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/

MAINTAINER=	he@NetBSD.org
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/
COMMENT=	Library for simplified DNS programming
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake perl
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

REPLACE_PERL=	doc/doxyparse.pl

BUILDLINK_ABI_DEPENDS.openssl+= openssl>=0.9.8
.include "../../security/openssl/buildlink3.mk"

PLIST_VARS+=		sha2
.if defined(USE_BUILTIN.openssl) && !empty(USE_BUILTIN.openssl:M[yY][eE][sS])
PLIST_VARS.sha2!=	\
	if ${PKG_ADMIN} pmatch 'openssl>=0.9.8' ${BUILTIN_PKG.openssl:Q}; then \
		${ECHO} "yes";						\
	else								\
		${ECHO} "no";						\
	fi
.else
PLIST_VARS.sha2!=	\
	if ${PKG_INFO} -qe 'openssl>=0.9.8'; then			\
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
.endif
.if ${PLIST_VARS.sha2} == "yes"
CONFIGURE_ARGS+=	--enable-sha2
.else
CONFIGURE_ARGS+=	--disable-sha2
.endif
CONFIGURE_ARGS+=	--with-ssl=${SSLBASE}
CONFIGURE_ARGS+=	DOXYGEN=${FALSE}

.include "../../mk/bsd.pkg.mk"
