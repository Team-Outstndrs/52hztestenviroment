<?php

// トップナビゲーショn
register_nav_menu('top', 'ナビゲーションメニュー');

// フッターナビゲーション
register_nav_menu('footer', 'ページ下部（フッターメニュー）');

//サムネイルを有効
add_theme_support('post-thumbnails');

class custom_walker_nav_menu extends Walker_Nav_Menu {
    function start_lvl(&$output, $depth = 0, $args = array()) {
      $output .= '<div class="header-nav-child"><div class="container"><ul class="sub-menu text-lg text-gray-600 list-disc">';
    }
    function end_lvl(&$output, $depth = 0, $args = array()) {
      $output .= '</ul></div></div>';
    }
  }