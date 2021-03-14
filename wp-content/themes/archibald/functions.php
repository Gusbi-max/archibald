<?php

function montheme_supports() {
  add_theme_support( 'title-tag' );
  add_theme_support( 'post-thumbnail' );
  register_nav_menu('main', 'Menu principal');
}

function montheme_register_assets() {
  wp_register_style('style_css', get_template_directory_uri() . '/assets/css/style.css');
  wp_register_script('script_js', get_template_directory_uri() . '/assets/js/script.js',false ,false ,true);
  wp_enqueue_style('style_css');
  wp_enqueue_script('script_js');
}

add_action('after_setup_theme', 'montheme_supports');
add_action('wp_enqueue_scripts', 'montheme_register_assets');