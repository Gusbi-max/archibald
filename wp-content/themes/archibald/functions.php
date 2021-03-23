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
  wp_register_style( 'style_css', get_template_directory_uri() . '/assets/css/style.css' );
  wp_register_script( 'script_js', get_template_directory_uri() . '/assets/js/script.js',false ,false ,true );
  wp_enqueue_style( 'style_css' );
  wp_enqueue_script( 'script_js' );
}

add_action('after_setup_theme', 'montheme_supports');
add_action('wp_enqueue_scripts', 'montheme_register_assets');

/* Woocomerce */

/* Single product */

function montheme_wrapper_start() {
  echo '<div class="product-wrapper">';
}

function montheme_wrapper_end() {
  echo '</div>';
}

function montheme_remove_product_tabs( $tabs ) {
  unset( $tabs[ 'reviews' ] );
  return $tabs;
}

function montheme_add_single_product_categories_label() {
  
  global $post;
  
  $terms = get_the_terms( $post->ID, 'product_cat' );

  $t = '<div class="labels-wrapper">';
  
  foreach( $terms as $term ) {
    $filename = get_template_directory() . '/assets/images/' . $term->slug . '.png';
    if ( file_exists( $filename ) ) {
      $file_uri = get_template_directory_uri() . '/assets/images/' . $term->slug . '.png';
      $t .= "<img src='$file_uri' alt='$term->slug logo' />";
    }
  }

  $t .= '</div>';
  
  echo $t;
}

// Wrap product content into a div with "product-wrapper" class
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10 );
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10 );

add_action( 'woocommerce_before_main_content', 'montheme_wrapper_start', 10 );
add_action( 'woocommerce_after_main_content', 'montheme_wrapper_end', 10 );

// Remove sidebar
remove_action( 'woocommerce_sidebar', 'woocommerce_get_sidebar', 10 );

// Remove the product title from the single product summary
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_title', 5 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_rating', 10 );

// Add the product title before the product summary and before the product images
add_action( 'woocommerce_before_single_product_summary', 'woocommerce_template_single_title', 5 );

// Put the add_to_card before the product excerpt
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 30 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 15 );

// Remove the categories
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40 );
// remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_sharing', 50 );

// remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_output_product_data_tabs', 10 );  
add_filter( 'woocommerce_product_tabs', 'montheme_remove_product_tabs' );

add_action( 'woocommerce_after_single_product_summary', 'montheme_add_single_product_categories_label', 12);

