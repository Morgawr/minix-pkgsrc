# $NetBSD: Makefile,v 1.4 2010/08/21 16:35:35 seb Exp $
#

DISTNAME=	dnssec-tools-1.8
CATEGORIES=	security
MASTER_SITES=	http://www.dnssec-tools.org/download/

MAINTAINER=	pettai@NetBSD.org
HOMEPAGE=	http://www.dnssec-tools.org/
COMMENT=	Toolkit to ease the deployment of DNSSEC related technologies
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS=	p5-Net-DNS-SEC-[0-9]*:../../security/p5-Net-DNS-SEC
DEPENDS=	p5-Text-Diff-[0-9]*:../../textproc/p5-Text-Diff
DEPENDS=	p5-ExtUtils-MakeMaker-[0-9]*:../../devel/p5-ExtUtils-MakeMaker

BUILD_DEFS+=	IPV6_READY

USE_TOOLS+=	perl

REPLACE_PERL=	tools/modules/rollrec.pm tools/modules/timetrans.pm
REPLACE_PERL+=	tools/modules/tooloptions.pm
REPLACE_PERL+=	tools/convertar/lib/Net/DNS/SEC/Tools/TrustAnchor/Makefile.PL

PERL5_PACKLIST=		auto/Net/DNS/SEC/Tools/Dnspktflow/dnspktflow/.packlist
PERL5_PACKLIST+=	auto/Net/DNS/SEC/Tools/Donuts/donuts/.packlist
PERL5_PACKLIST+=	auto/Net/DNS/SEC/Tools/Drawvalmap/drawvalmap/.packlist
PERL5_PACKLIST+=	auto/Net/DNS/SEC/Tools/Maketestzone/maketestzone/.packlist
PERL5_PACKLIST+=	auto/Net/DNS/SEC/Tools/Mapper/mapper/.packlist
PERL5_PACKLIST+=	auto/Net/DNS/SEC/Tools/conf/.packlist
PERL5_PACKLIST+=	auto/convertar/.packlist
PERL5_PACKLIST+=	auto/dnssec-tools/.packlist

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=        --with-nsec3
CONFIGURE_ARGS+=	--with-resolv-conf=${PKG_SYSCONFDIR}/dnssec-tools/resolv.conf
CONFIGURE_ARGS+=	--with-root-hints=${PKG_SYSCONFDIR}/dnssec-tools/root.hints
CONFIGURE_ARGS+=	--with-perl-build-args="INSTALLDIRS=vendor DESTDIR=${DESTDIR}"

USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

EGDIR=		${PREFIX}/share/examples/dnssec-tools
PKG_SYSCONFSUBDIR?=     dnssec-tools

CONF_FILES=	${EGDIR}/dnsval.conf ${PKG_SYSCONFDIR}/dnsval.conf
CONF_FILES+=	${EGDIR}/resolv.conf ${PKG_SYSCONFDIR}/resolv.conf
CONF_FILES+=	${EGDIR}/root.hints ${PKG_SYSCONFDIR}/root.hints

INSTALLATION_DIRS=	${EGDIR}

.include "options.mk"

post-install:
	${INSTALL_DATA} ${WRKSRC}/validator/etc/dnsval.conf ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/validator/etc/resolv.conf ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/validator/etc/root.hints ${DESTDIR}${EGDIR}

.include "../../lang/perl5/packlist.mk"
.include "../../lang/perl5/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
