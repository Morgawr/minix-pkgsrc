$NetBSD: patch-av,v 1.2 2010/09/21 15:57:30 taca Exp $

* Handle DragonFly as the same as FreeBSD.

--- sql/mysqld.cc.orig	2010-02-04 11:39:50.000000000 +0000
+++ sql/mysqld.cc
@@ -163,7 +163,7 @@ static void getvolumeID(BYTE *volumeName
 int initgroups(const char *,unsigned int);
 #endif
 
-#if defined(__FreeBSD__) && defined(HAVE_IEEEFP_H)
+#if (defined(__FreeBSD__) || defined(__DragonFly__)) && defined(HAVE_IEEEFP_H)
 #include <ieeefp.h>
 #ifdef HAVE_FP_EXCEPT				// Fix type conflict
 typedef fp_except fp_except_t;
