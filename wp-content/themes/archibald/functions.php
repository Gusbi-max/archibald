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
  add_theme_support( 'woocommerce' );
}


function montheme_register_assets() {
  wp_register_style( 'style_css', get_template_directory_uri() . '/assets/css/style.css' );
  wp_register_style( 'frank_css', get_template_directory_uri() . '/assets/css/style-frank.css', ['style_css'] );
  wp_register_style( 'aurel_css', get_template_directory_uri() . '/assets/css/style-aurel.css', ['style_css'] );
  wp_register_style( 'max_css', get_template_directory_uri() . '/assets/css/style-max.css', ['style_css'] );
  wp_register_script( 'script_js', get_template_directory_uri() . '/assets/js/script.js',false ,false ,true );
  wp_enqueue_style( 'style_css' );
  wp_enqueue_style( 'frank_css' );
  wp_enqueue_style( 'aurel_css' );
  wp_enqueue_style( 'max_css' );
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

/* Remove all tabs in single-product */
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

function montheme_custom_related_products() {

  global $wpdb;
  global $product;

  $filtered_products = [];
  
  $products = $wpdb->get_results( "SELECT * FROM {$wpdb->prefix}posts WHERE post_type = 'product'" );

  if (in_array(23, $product->category_ids)) {
    $filtered_products = array_filter( $products, function( $product ) {
      $terms = wp_get_post_terms ( $product->ID, 'product_cat' );
      return !in_array( $terms[0]->term_id, [20, 23]  ) ;
    });
  } else {
    $filtered_products = array_filter( $products, function( $product ) {
      $terms = wp_get_post_terms ( $product->ID, 'product_cat' );
      return in_array( $terms[0]->term_id, [23]  ) ;
    });
  }

  foreach ( $filtered_products as $index => $p ) {
    $filtered_products[$index] = wc_get_product( $p->ID );
  } 

  ?>

  <div id="related-products-wrapper">

    <div class="slider-arrow slider-arrow-previous" id="slider-arrow-previous" onClick="onSliderArrow(-1)"><</div>
    <div class="slider-arrow slider-arrow-next" id="slider-arrow-next" onClick="onSliderArrow(1)">></div>

    <ul id="related-products">

    <?php

    foreach ( $filtered_products as $filtered_product ) :

      $post_object = get_post( $filtered_product->get_id() );

      setup_postdata( $GLOBALS['post'] =& $post_object );

      wc_get_template_part( 'content', 'product' );
      
    endforeach;

    ?>

    </ul>

  </div>
  <?php

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

remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20 );
add_action( 'woocommerce_after_single_product_summary', 'montheme_custom_related_products', 20 );

