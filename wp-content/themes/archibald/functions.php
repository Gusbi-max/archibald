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
  wp_register_style('style_aurel_css', get_template_directory_uri() . '/assets/css/styleAurel.css');
  wp_register_script('script_js', get_template_directory_uri() . '/assets/js/script.js',false ,false ,true);
  wp_enqueue_style('style_css');
  wp_enqueue_style('style_aurel_css');
  wp_enqueue_script('script_js');
}

add_action('after_setup_theme', 'montheme_supports');
add_action('wp_enqueue_scripts', 'montheme_register_assets');

/* Coordonnées ---------------------------------------------------------------------------------------------------------- */

// Modification de l'ordre des champs de la livraison
add_filter( 'woocommerce_default_address_fields', 'shipping_reorder_checkout_fields' );

function shipping_reorder_checkout_fields( $fields ) {

 $fields['first_name']['priority'] = 10;
 $fields['last_name']['priority'] = 20;
 $fields['address_1']['priority'] = 30;
 $fields['address_2']['priority'] = 35;
 $fields['postcode']['priority'] = 40;
 $fields['city']['priority'] = 50;
 $fields['country']['priority'] = 60;
 $fields['state']['priority'] = 70;
 $fields['company']['priority'] = 85;

 return $fields;
}

// Modification de l'ordre des champs de la facturation
add_filter( 'woocommerce_billing_fields', 'billing_reorder_checkout_fields' );
 
function billing_reorder_checkout_fields( $fields ) {

    $fields['billing_email']['priority'] = 5;
    $fields['billing_phone']['priority'] = 80;

    return $fields;
}

// Suppression des champs inutiles 
add_filter( 'woocommerce_enable_order_notes_field', '__return_false' );
add_filter( 'woocommerce_checkout_fields', 'bbloomer_remove_woo_checkout_fields' );
  
function bbloomer_remove_woo_checkout_fields( $fields ) {
  unset($fields['shipping']['shipping_company']);
  unset($fields['shipping']['shipping_address_2']);
  unset($fields['billing']['billing_company']);
  unset($fields['billing']['billing_address_2']);
    
    return $fields;
}

// Personnalisation des champs
add_filter( 'woocommerce_checkout_fields', 'bbloomer_rename_woo_checkout_fields' );
  
function bbloomer_rename_woo_checkout_fields( $fields ) {
  
    $fields['billing']['billing_email']['placeholder'] = 'Email';
    $fields['billing']['billing_email']['label'] = '';
    $fields['billing']['billing_first_name']['placeholder'] = 'Prénom';
    $fields['billing']['billing_first_name']['label'] = '';
    $fields['billing']['billing_last_name']['placeholder'] = 'Nom';
    $fields['billing']['billing_last_name']['label'] = '';
    $fields['billing']['billing_address_1']['placeholder'] = 'Adresse';
    $fields['billing']['billing_address_1']['label'] = '';
    $fields['billing']['billing_city']['placeholder'] = 'Ville';
    $fields['billing']['billing_city']['label'] = '';
    $fields['billing']['billing_country']['label'] = '';
    $fields['billing']['billing_postcode']['placeholder'] = 'Code Postal';
    $fields['billing']['billing_postcode']['label'] = '';
    $fields['billing']['billing_phone']['placeholder'] = 'Téléphone';
    $fields['billing']['billing_phone']['label'] = '';
    
    $fields['shipping']['shipping_first_name']['placeholder'] = 'Prénom';
    $fields['shipping']['shipping_first_name']['label'] = '';
    $fields['shipping']['shipping_last_name']['placeholder'] = 'Nom';
    $fields['shipping']['shipping_last_name']['label'] = '';
    $fields['shipping']['shipping_address_1']['placeholder'] = 'Adresse';
    $fields['shipping']['shipping_address_1']['label'] = '';
    $fields['shipping']['shipping_city']['placeholder'] = 'Ville';
    $fields['shipping']['shipping_city']['label'] = '';
    $fields['shipping']['shipping_country']['label'] = '';
    $fields['shipping']['shipping_postcode']['placeholder'] = 'Code Postal';
    $fields['shipping']['shipping_postcode']['label'] = '';
  
  return $fields;
}



