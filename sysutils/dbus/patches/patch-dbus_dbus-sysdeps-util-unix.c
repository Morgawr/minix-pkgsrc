$NetBSD$

--- dbus/dbus-sysdeps-util-unix.c.orig	Wed May  6 17:26:48 2009
+++ dbus/dbus-sysdeps-util-unix.c
@@ -862,7 +862,7 @@ fill_group_info (DBusGroupInfo    *info,
    * to add more configure checks.
    */
   
-#if defined (HAVE_POSIX_GETPWNAM_R) || defined (HAVE_NONPOSIX_GETPWNAM_R)
+#if (defined (HAVE_POSIX_GETPWNAM_R) || defined (HAVE_NONPOSIX_GETPWNAM_R)) && !defined(__minix)
   {
     struct group *g;
     int result;
@@ -1233,4 +1233,4 @@ fail:
   _dbus_string_free (&cmdline);
   _dbus_string_free (&path);
   return FALSE;
-}
\ No newline at end of file
+}
