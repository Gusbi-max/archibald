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
  wp_register_style( 'frank_css', get_template_directory_uri() . '/assets/css/frank.css', ['style_css'] );
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
  echo '<div class="container">';
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

function new_loop_shop_per_page() {
  global $wpdb;

  $products = $wpdb->get_results( "SELECT * FROM {$wpdb->prefix}posts WHERE post_type = 'product'" );
  return count($products);
}

function eshop_banner() {
  ?>
  <div class="eshop-banner" style="background-image: url('<?= get_template_directory_uri().'/assets/images/eshop-banner.png' ?>')"></div>
  <?php
}

function montheme_products_list_wrapper() {

  $filters = [
    ['category_name' => 'Produits', 'filters' => ['Archibald', 'Spiritueux']],
    ['category_name' => 'Catégories', 'filters' => ['Archibald Tonic', 'Gin', 'Autres Spiritueux', 'Garnish & Accessoires']],
    ['category_name' => 'Saveurs', 'filters' => ['Frais & Floral', 'Sucré', 'Agrumes & Plantes', 'Genièvre et Puissance']],
    ['category_name' => 'Caractéritiques', 'filters' => ['Cadeau', 'Bio']],
  ];

  ?>
  <div class="products-list-wrapper">
    <div class="filters">
      <h2>Filtres</h2>
      <?php
        foreach ( $filters as $filter ) {
          ?>
          <h3 class="filter-title"><?= $filter['category_name'] ?></h3>
          <?php foreach ( $filter['filters'] as $the_filter ) { ?>
            <p>
              <input type="checkbox" name="<?= $the_filter ?>" id="<?= $the_filter ?>">
              <label for="<?= $the_filter ?>"><?= $the_filter ?></label>
            </p>
          <?php }
        }

      ?>
    </div>

  <?php
}

function montheme_products_list_wrapper_end() {
  echo '</div>';
}

/* WooCommerce hooks */
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10 );
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10 );

remove_action( 'woocommerce_sidebar', 'woocommerce_get_sidebar', 10 );

remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_title', 5 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 30 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40 );

remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20 );

remove_action( 'woocommerce_after_shop_loop', 'woocommerce_pagination', 10 );



add_action( 'woocommerce_before_main_content', 'montheme_wrapper_start', 10 );
add_action( 'woocommerce_after_main_content', 'montheme_wrapper_end', 10 );

add_action( 'woocommerce_before_single_product_summary', 'woocommerce_template_single_title', 5 );

add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 15 );


add_action( 'woocommerce_after_single_product_summary', 'montheme_add_single_product_categories_label', 12);
add_action( 'woocommerce_after_single_product_summary', 'montheme_custom_related_products', 20 );

add_action( 'woocommerce_before_main_content', 'eshop_banner', 15 );

add_action( 'woocommerce_before_shop_loop', 'montheme_products_list_wrapper', 40 );
add_action( 'woocommerce_after_shop_loop', 'montheme_products_list_wrapper_end', 5 );

/**
 * Change the tabs to display in single product
 */
add_filter( 'woocommerce_product_tabs', 'montheme_remove_product_tabs' );

/**
 * Change the number of product per page
 */
add_filter( 'loop_shop_per_page', 'new_loop_shop_per_page', 20 );