$NetBSD: patch-png.c,v 1.2 2011/02/14 18:29:00 wiz Exp $

Fix build with png-1.5.
https://bugs.launchpad.net/panotools/+bug/719076

--- png.c.orig	2008-01-02 14:46:28.000000000 +0000
+++ png.c
@@ -56,7 +56,7 @@ int writePNG( Image *im, fullPath *sfile
    	}
 
   	/* set error handling */
-   	if (setjmp(png_ptr->jmpbuf))
+   	if (setjmp(png_jmpbuf(png_ptr)))
    	{
       /* If we get here, we had a problem reading the file */
       fclose(outfile);
@@ -68,14 +68,15 @@ int writePNG( Image *im, fullPath *sfile
    	png_init_io(png_ptr, outfile);
 	
 	FourToThreeBPP( im );
-	info_ptr->width 		= im->width;
-   	info_ptr->height 		= im->height;
-	info_ptr->bit_depth		= (im->bitsPerPixel > 32 ?  16 : 8);
-	info_ptr->color_type	= PNG_COLOR_TYPE_RGB;
+	png_set_IHDR(png_ptr, info_ptr, im->width, im->height,
+		     (im->bitsPerPixel > 32 ?  16 : 8), PNG_COLOR_TYPE_RGB,
+		     0, PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);
+
+#if 0
 	info_ptr->channels		= (png_byte)(im->bitsPerPixel / info_ptr->bit_depth);
 	info_ptr->pixel_depth	= (png_byte)(im->bitsPerPixel);
 	info_ptr->rowbytes		= im->bytesPerLine;
-	info_ptr->interlace_type= 0;
+#endif
 
   	png_write_info(png_ptr, info_ptr);
 
@@ -120,6 +121,7 @@ int readPNG	( Image *im, fullPath *sfile
 	png_bytep *row_pointers;
 	int row;
 	unsigned long  dataSize;
+	int color_type;
 
 #ifdef __Mac__
 	unsigned char the_pcUnixFilePath[256];//added by Kekus Digital
@@ -165,7 +167,7 @@ int readPNG	( Image *im, fullPath *sfile
    	}
 
    	/* set error handling if you are using the setjmp/longjmp method */
-   	if (setjmp(png_ptr->jmpbuf))
+   	if (setjmp(png_jmpbuf(png_ptr)))
    	{
       	/* Free all of the memory associated with the png_ptr and info_ptr */
       	png_destroy_read_struct(&png_ptr, &info_ptr, (png_infopp)NULL);
@@ -182,9 +184,10 @@ int readPNG	( Image *im, fullPath *sfile
    	/* read the file information */
   	 png_read_info(png_ptr, info_ptr);
 
-	if( info_ptr->color_type != PNG_COLOR_TYPE_RGB &&
-		info_ptr->color_type != PNG_COLOR_TYPE_PALETTE &&
-		info_ptr->color_type != PNG_COLOR_TYPE_RGB_ALPHA)
+	color_type = png_get_color_type(png_ptr, info_ptr);
+	if( color_type != PNG_COLOR_TYPE_RGB &&
+		color_type != PNG_COLOR_TYPE_PALETTE &&
+		color_type != PNG_COLOR_TYPE_RGB_ALPHA)
 	{
 		PrintError(" Only rgb images  supported");
       	png_destroy_read_struct(&png_ptr, &info_ptr, (png_infopp)NULL);
@@ -194,24 +197,17 @@ int readPNG	( Image *im, fullPath *sfile
 
 	 
 	    /* expand paletted colors into true RGB triplets */
-   	if (info_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
+   	if (color_type == PNG_COLOR_TYPE_PALETTE)
       png_set_expand(png_ptr);
 
 
 	SetImageDefaults( im );
 	
-	im->width 		= info_ptr->width;
-	im->height 		= info_ptr->height;
-	im->bytesPerLine	= info_ptr->rowbytes;
-	im->bitsPerPixel	= info_ptr->pixel_depth;
+	im->width 		= png_get_image_width(png_ptr, info_ptr);
+	im->height 		= png_get_image_height(png_ptr, info_ptr);
+	im->bytesPerLine	= png_get_rowbytes(png_ptr, info_ptr);
 	im->dataSize		= im->height * im->bytesPerLine;
-	if( im->bitsPerPixel == 24 )
-		dataSize = im->width * im->height *  4;
-	else if( im->bitsPerPixel == 48 )
-		dataSize = im->width * im->height *  8;
-	else
-		dataSize = im->width * im->height *  im->bitsPerPixel/8;
-	
+	im->bitsPerPixel	= 8 * im->bytesPerLine / im->width;
 
 	im->data = (unsigned char**)mymalloc( (dataSize > im->dataSize ? dataSize : im->dataSize) );
 	if( im->data == NULL ){
