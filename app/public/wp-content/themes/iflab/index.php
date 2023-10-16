<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link
 *
 * @package Iflab
 * @subpackage Iflab
 * @since 1.0.0
 */
?>

 <!doctype html>
 <html lang="en">
   <head>
     <?php wp_head(); ?>
     <link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" media="all" />
   </head>
   <body class="bg-slate-100 mt-48 p-6 max-w-6xl flex flex-col justify-center items-center mx-auto">
   <?php get_header(); ?>

  
    <?php
     if ( have_posts() ) {
       while ( have_posts() ) {
        
         the_post();?>
        <div class="flex flex-col w-full rounded-2xl bg-gray-200 shadow-sm hover:shadow-lg transition duration-300 ease-in-out hover:bg-gray-300 p-2 md:p-4 mt-4 relative">
            <img src="<?php the_post_thumbnail_url() ?>" alt="thumbnail" class="w-full h-48 object-cover rounded-2xl">
            <?php the_title( '<h1 class="text-gray-900 entry-title text-3xl">', '</h1>' );?>
            <div class="text-gray-700">
            <?php the_content();?>
            </div>
            <a href="<?php the_permalink( ); ?>" class="absolute w-full h-full top-0 left-0"></a>
        </div>
         <?php
        }
      }?>
    <?php get_footer(); ?>
   </body>
 </html>