# $NetBSD: Makefile,v 1.18 2010/01/08 18:53:12 joerg Exp $

PKGNAME=	jakarta-tomcat5-${TOMCAT_VERSION}
DISTNAME=	jakarta-tomcat-${TOMCAT_VERSION}
PKGREVISION=	4
CATEGORIES=	www java
MASTER_SITES=	http://archive.apache.org/dist/tomcat/tomcat-5/v${TOMCAT_VERSION}/bin/

MAINTAINER=	erh@NetBSD.org
HOMEPAGE=	http://tomcat.apache.org/
COMMENT=	The Apache Project's Java Servlet 2.4 and JSP 2.0 server

PKG_DESTDIR_SUPPORT=	user-destdir

TOMCAT_VERSION= 5.0.30

USE_JAVA=	run
# This needs java 1.4 or higher.
USE_JAVA2=	yes

USE_TOOLS+=	pax

TOMCAT_LIB=	${PREFIX}/tomcat5
CATALINA_DIR=	Catalina/localhost

EGDIR=		${TOMCAT_LIB}/share/examples/jakarta-tomcat
EGDIR2=		${EGDIR}/${CATALINA_DIR}

REPLACE_SH+=	bin/contrib/GNU-Linux/catalina.sh

.include "../../mk/bsd.prefs.mk"

# Work around a bug in NetBSD 2.0's pax-as-tar (bin/27228)
.if !empty(MACHINE_PLATFORM:MNetBSD-2.0*)
EXTRACT_USING=	bsdtar
.endif

PKG_SYSCONFDIR.jakarta-tomcat5= ${TOMCAT_LIB}/conf
MAKE_DIRS=	${PKG_SYSCONFDIR.jakarta-tomcat5}/${CATALINA_DIR}

RCD_SCRIPTS=	tomcat5
CFILES=		server.xml web.xml tomcat-users.xml
CFILES+=	catalina.policy catalina.properties jk2.properties
CF2FILES=	admin.xml balancer.xml manager.xml

CONF_FILES=	# empty
.for f in ${CFILES}
CONF_FILES+=	${EGDIR}/${f} ${PKG_SYSCONFDIR}/${f}
.endfor
.for f in ${CF2FILES}
CONF_FILES+=	${EGDIR2}/${f} ${PKG_SYSCONFDIR}/${CATALINA_DIR}/${f}
.endfor

FILES_SUBST+=	JAVA_HOME=${PKG_JAVA_HOME:Q} TOMCAT_LIB=${TOMCAT_LIB:Q}

do-build:
	@${MV} ${WRKSRC}/conf ${WRKDIR}

INSTALLATION_DIRS=	${EGDIR} ${EGDIR2} ${TOMCAT_LIB}

do-install:
.for f in ${CFILES}
	${INSTALL_DATA} ${WRKDIR}/conf/${f} ${DESTDIR}${EGDIR}
.endfor
.for f in ${CF2FILES}
	${INSTALL_DATA} ${WRKDIR}/conf/${CATALINA_DIR}/${f} ${DESTDIR}${EGDIR2}
.endfor
	@(cd ${WRKSRC} && pax -rw -pm . ${DESTDIR}${TOMCAT_LIB};		\
	${FIND} ${DESTDIR}${TOMCAT_LIB} -type f -print | ${XARGS} ${CHMOD} a+r;	\
	${FIND} ${DESTDIR}${TOMCAT_LIB} \( -type f -o -perm -u+x \) -print	\
		| ${XARGS} ${CHMOD} a+rx;				\
	${FIND} ${DESTDIR}${TOMCAT_LIB} -type d -print | ${XARGS} ${CHMOD} a+rx;	\
	${FIND} ${DESTDIR}${TOMCAT_LIB} -type f -name \*.bat -print |		\
		${XARGS} ${RM} -f)

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
