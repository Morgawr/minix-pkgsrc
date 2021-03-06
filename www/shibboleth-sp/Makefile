# $NetBSD: Makefile,v 1.1.1.1 2011/03/15 13:15:37 pettai Exp $
#

DISTNAME=	shibboleth-sp-2.4.2
PKGREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://shibboleth.internet2.edu/downloads/shibboleth/cppsp/latest/

MAINTAINER=	pettai@NetBSD.org
HOMEPAGE=	http://shibboleth.internet2.edu/
COMMENT=	Shibboleth2 Service Provider
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEFS+=	VARBASE

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-xmltooling=${PREFIX:Q}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}

WRKSRC=		${WRKDIR}/shibboleth-${PKGVERSION_NOREV}
EGDIR=		${PREFIX}/share/examples/shibboleth
SHIB_CONFDIR=	${PKG_SYSCONFDIR}/shibboleth

USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

RCD_SCRIPTS=	shibd

APACHE_MODULE=	YES

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	${WRKSRC}/configs/Makefile.in
SUBST_FILES.paths+=	${WRKSRC}/configs/keygen.sh
SUBST_STAGE.paths=	post-patch
SUBST_SED.paths=	-e 's,@EGDIR@,${EGDIR},'
SUBST_SED.paths+=	-e 's,@SHIB_CONFDIR@,${SHIB_CONFDIR},'


CONF_FILES=	${EGDIR}/console.logger \
			${SHIB_CONFDIR}/console.logger
CONF_FILES+=	${EGDIR}/native.logger \
			${SHIB_CONFDIR}/native.logger
CONF_FILES+=	${EGDIR}/shibd.logger \
			${SHIB_CONFDIR}/shibd.logger
CONF_FILES+=	${EGDIR}/syslog.logger \
			${SHIB_CONFDIR}/syslog.logger
CONF_FILES+=	${EGDIR}/shibboleth2.xml \
			${SHIB_CONFDIR}/shibboleth2.xml
CONF_FILES+=	${EGDIR}/attribute-map.xml \
			${SHIB_CONFDIR}/attribute-map.xml
CONF_FILES+=	${EGDIR}/attribute-policy.xml \
			${PKG_SYSCONFDIR}/attribute-policy.xml
CONF_FILES+=	${EGDIR}/protocols.xml \
			${SHIB_CONFDIR}/protocols.xml
CONF_FILES+=	${EGDIR}/security-policy.xml \
			${SHIB_CONFDIR}/security-policy.xml
CONF_FILES+=	${EGDIR}/accessError.html \
			${SHIB_CONFDIR}/accessError.html
CONF_FILES+=	${EGDIR}/sessionError.html \
			${SHIB_CONFDIR}/sessionError.html
CONF_FILES+=	${EGDIR}/metadataError.html \
			${SHIB_CONFDIR}/metadataError.html
CONF_FILES+=	${EGDIR}/bindingTemplate.html \
			${SHIB_CONFDIR}/bindingTemplate.html
CONF_FILES+=	${EGDIR}/discoveryTemplate.html \
			${SHIB_CONFDIR}/discoveryTemplate.html
CONF_FILES+=	${EGDIR}/postTemplate.html \
			${SHIB_CONFDIR}/postTemplate.html
CONF_FILES+=	${EGDIR}/localLogout.html \
			${SHIB_CONFDIR}/localLogout.html
CONF_FILES+=	${EGDIR}/globalLogout.html \
			${SHIB_CONFDIR}/globalLogout.html
CONF_FILES+=	${EGDIR}/partialLogout.html \
			${SHIB_CONFDIR}/partialLogout.html
CONF_FILES+=	${EGDIR}/sslError.html \
			${SHIB_CONFDIR}/sslError.html

INSTALLATION_DIRS+=	${PREFIX}/bin ${PREFIX}/sbin
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/attribute/resolver
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/binding
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/handler
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/lite
INSTALLATION_DIRS+=     ${PREFIX}/include/shibsp/metadata
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/remoting
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/security
INSTALLATION_DIRS+=	${PREFIX}/include/shibsp/util
INSTALLATION_DIRS+=	${PREFIX}/share/doc/shibboleth-${PKGVERSION_NOREV}
INSTALLATION_DIRS+=     ${PREFIX}/share/doc/shibboleth-${PKGVERSION_NOREV}/api
INSTALLATION_DIRS+=     ${PREFIX}/share/xml/shibboleth
INSTALLATION_DIRS+=     ${PREFIX}/lib/shibboleth
INSTALLATION_DIRS+=	${EGDIR} ${SHIB_CONFDIR}

OWN_DIRS+=		${VARBASE}/log/shibboleth

post-install:
	${INSTALL} ${WRKSRC}/configs/keygen.sh \
		${DESTDIR}${PREFIX}/sbin/shib-keygen
	${INSTALL} ${WRKSRC}/configs/metagen.sh \
		${DESTDIR}${PREFIX}/bin/shib-metagen

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/log4shib/buildlink3.mk"
.include "../../textproc/xerces-c/buildlink3.mk"
.include "../../security/xml-security-c/buildlink3.mk"
.include "../../textproc/xmltooling/buildlink3.mk"
.include "../../security/opensaml/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/apache.mk"
.include "../../mk/bsd.pkg.mk"
