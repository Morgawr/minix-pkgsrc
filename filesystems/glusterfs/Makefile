# $NetBSD: Makefile,v 1.7 2011/05/09 09:38:26 manu Exp $
#

DISTNAME=	glusterfs-3.2.0
CATEGORIES=	filesystems
MASTER_SITES=	http://download.gluster.com/pub/gluster/glusterfs/3.2/LATEST/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gluster.org/
COMMENT=	Cluster filesystem
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		flex bison

PYTHON_VERSIONS_ACCEPTED= 27 26 25
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}

# Make sure we do not attept to link with -lfl
# Only libfl.a is available, and libtool wants libfl.so
MAKE_FLAGS+=		LEXLIB=""
MAKE_FLAGS+=		libglusterfs_la_LIBADD=""
MAKE_ENV+=		AM_MAKEFLAGS=${MAKE_FLAGS:Q}

SUBST_CLASSES+=		py
SUBST_STAGE.py=		post-build
SUBST_FILES.py=		extras/volgen/glusterfs-volgen
SUBST_SED.py=		-e "s,/usr/bin/python,${PYTHONBIN},g"

SUBST_CLASSES+=		bash
SUBST_STAGE.bash=	post-build
SUBST_FILES.bash=	xlators/mount/fuse/utils/mount.glusterfs
SUBST_SED.bash=		-e "s,/bin/bash,/bin/sh,g"

SUBST_CLASSES+=		mtab
SUBST_STAGE.mtab=	post-build
SUBST_FILES.mtab=	xlators/mount/fuse/utils/mount.glusterfs
SUBST_SED.mtab=		-e "s,/etc/mtab,/proc/mounts,g"

SUBST_CLASSES+=		etc
SUBST_STAGE.etc=	pre-build
SUBST_FILES.etc+=	cli/src/cli-rpc-ops.c
SUBST_FILES.etc+=	libglusterfs/src/compat.h
SUBST_FILES.etc+=	xlators/mgmt/glusterd/src/glusterd-op-sm.c
SUBST_FILES.etc+=	xlators/mgmt/glusterd/src/glusterd.h
SUBST_FILES.etc+=	doc/examples/replicate.vol
SUBST_FILES.etc+=	doc/examples/protocol-server.vol
SUBST_FILES.etc+=	doc/examples/unify.vol
SUBST_FILES.etc+=	doc/examples/stripe.vol
SUBST_FILES.etc+=	doc/glusterd.vol
SUBST_FILES.etc+=	doc/glusterfsd.8
SUBST_FILES.etc+=	doc/glusterfsd.vol.sample
SUBST_SED.etc=		-e "s,/etc/gluster,${PREFIX}/etc/gluster,g"

REPLACE_PYTHON+=	${WRKSRC}/extras/volgen/glusterfs-volgen

EGDIR=			${PREFIX}/etc/glusterfs
CONF_FILES+=		${EGDIR}/glusterfs.vol.sample ${EGDIR}/glusterfs.vol
CONF_FILES+=		${EGDIR}/glusterfsd.vol.sample ${EGDIR}/glusterfsd.vol
CONF_FILES+=		${EGDIR}/glusterd.vol ${EGDIR}/glusterd.vol
OWN_DIRS+=		${VARBASE}/log/glusterfs
BUILD_DEFS+=		VARBASE

RCD_SCRIPTS=		glusterfsd glusterd

post-install:
	${INSTALL_SCRIPT} ${DESTDIR}/sbin/mount.glusterfs \
	    ${DESTDIR}/${PREFIX}/sbin/
	${INSTALL_SCRIPT} ${FILESDIR}/xattr-init.sh \
	    ${DESTDIR}/${PREFIX}/etc/glusterfs/

# Debug
CFLAGS+=		-g
INSTALL_UNSTRIPPED=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../lang/python/application.mk"
.if ${OPSYS} == "NetBSD"
.include "../../filesystems/perfuse/buildlink3.mk"
.endif

.include "../../mk/bsd.pkg.mk"
