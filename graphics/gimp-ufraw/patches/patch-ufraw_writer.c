$NetBSD$

png.h no longer includes zlib.h.

--- ufraw_writer.c.orig	2010-02-23 17:53:25.000000000 +0000
+++ ufraw_writer.c
@@ -24,6 +24,7 @@
 #endif
 #ifdef HAVE_LIBPNG
 #include <png.h>
+#include <zlib.h>
 #endif
 
 #ifdef _OPENMP
