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
   <body class="bg-slate-100">
   <?php get_header(); ?>

  get_footer();
     <?php
     if ( have_posts() ) {
       while ( have_posts() ) {
         the_post();
         the_title( '<h1 class="entry-title text-3xl">', '</h1>' );
         ?>
         <div class="entry-content">
           <?php the_content(); ?>
         </div>
         <?php
       }
     }
     ?>
   </body>
 </html>