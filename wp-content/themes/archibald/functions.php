<?php

function montheme_supports() {
  add_theme_support( 'title-tag' );
  add_theme_support( 'post-thumbnail' );
  register_nav_menus( array(
    'desktop_menu' => 'Header Menu Desktop',
    'mobile_menu' => 'Header Menu Mobile',
    'footer_menu1'  => 'Footer Menu 1',
    'footer_menu2'  => 'Footer Menu 2', 
  ) );
}


function montheme_register_assets() {
  wp_register_style('style_css', get_template_directory_uri() . '/assets/css/style.css');
  wp_register_script('script_js', get_template_directory_uri() . '/assets/js/script.js',false ,false ,true);
  wp_enqueue_style('style_css');
  wp_enqueue_script('script_js');
}

add_action('after_setup_theme', 'montheme_supports');
add_action('wp_enqueue_scripts', 'montheme_register_assets');