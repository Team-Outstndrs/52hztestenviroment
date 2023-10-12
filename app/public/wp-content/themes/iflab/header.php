<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link
 *
 * @package Iflab
 * @subpackage Iflab
 * @since 1.0.0
 */
?><!doctype html>
<!-- -->
<html <?php language_attributes(); ?>>
<head>    
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="profile" href="https://gmpg.org/xfn/11" />
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<nav class="menu-wrapper flex grow justify-between p-6 m-4 rounded-3xl bg-sky-200 shadow-lg sticky">
      <div class="">
          <input type="checkbox" id="menu-toggle" class="hidden">
          <label for="menu-toggle" class="menu-button">
              <span></span>
              <span></span>
              <span></span>
          </label>
          <div class="menu">
          <ul class="flex flex-col font-medium mt-4 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-transparent dark:bg-gray-800 md:dark:bg-transparent dark:border-gray-700">
          <?php
            wp_nav_menu([
              'menu'            => 'top',
              'theme_location'  => 'top',
              'container'       => 'ul',
              'container_id'    => 'bs4navbar',
              'container_class' => 'collapse navbar-collapse',
              'menu_id'         => false,
              'menu_class'      => 'block py-2 pl-3 pr-4 text-black hover:bg-gray-100',
              'depth'           => 2,
              'fallback_cb'     => 'bs4navwalker::fallback',
              'walker'          => new bs4navwalker()
            ]);
            ?>
        </ul>
        </div> 
    </div>
    <!--ロゴ -->
    <div class="absolute left-[50%] up-[50%] translate-x-[-50%] translate-y-[-50%] p-6 bg-white shadow rounded-3xl">
      Logo
    </div>
</nav>

<div id="content" class="site-content">
<style>
.menu-wrapper {
    position: relative;
}

.menu-button {
    display: inline-block;
    width: 30px;
    height: 22px;
    position: relative;
    cursor: pointer;
}

.menu-button span {
    display: block;
    width: 100%;
    height: 3px;
    background: black;
    margin: 4px 0;
    transition: all 0.3s;
}

.menu {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease-in-out;
}

#menu-toggle:checked ~ .menu-button span:nth-child(1) {
    transform: translateY(9px) rotate(45deg);
}

#menu-toggle:checked ~ .menu-button span:nth-child(2) {
    opacity: 0;
}

#menu-toggle:checked ~ .menu-button span:nth-child(3) {
    transform: translateY(-9px) rotate(-45deg);
}

#menu-toggle:checked ~ .menu {
    max-height: 200px; /* 必要に応じて調整してください */
}

.menu ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.menu li {
    padding: 10px;
}
</style>
