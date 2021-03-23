<?php

function montheme_supports() {
  add_theme_support( 'title-tag' );
  add_theme_support( 'post-thumbnail' );
  register_nav_menus( array(
    'desktop_menu' => __( 'Header Menu Desktop', 'text_domain' ),
    'mobile_menu' => __( 'Header Menu Mobile', 'text_domain' ),
    'footer_menu1'  => __( 'Footer Menu 1', 'text_domain' ),
    'footer_menu2'  => __( 'Footer Menu 2', 'text_domain' )
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