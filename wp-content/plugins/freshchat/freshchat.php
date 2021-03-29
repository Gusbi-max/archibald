<?php
/*
Plugin Name: Freshchat
Version: 2.3.3
Author: Freshchat
Description: Modern messaging software that your sales and customer engagement teams will love.
Author URI: http://freshchat.com/
*/

// Prevent Direct Access
defined('ABSPATH') or die("Restricted access!");

define('FRESHCHAT_VERSION', '0.1');
define('FRESHCHAT_DIR', plugin_dir_path(__FILE__));
define('FRESHCHAT_URL', plugin_dir_url(__FILE__));

function add_admin_style() { 
  wp_enqueue_style( 'fc_plugin_css',FRESHCHAT_URL . 'css/freshchat_plugin.css' ); 
}
add_action('admin_enqueue_scripts', 'add_admin_style'); 

function update_restore_id() {
  $current_user = wp_get_current_user();
  update_user_meta($current_user->ID, "restore_id", $_POST['restoreId']);
  if ( is_wp_error( $current_user->ID) ) {
    die( "Fail" );
  } else {
    die( "Success" );
  } 
}
add_action( 'wp_ajax_update_restore_id', 'update_restore_id' );

require_once(FRESHCHAT_DIR . 'widget-settings/main.php');
require_once(FRESHCHAT_DIR . 'widget-settings/menu.php');
require_once(FRESHCHAT_DIR . 'widget-settings/settings.php');
require_once(FRESHCHAT_DIR . 'widget-settings/add_to_page.php');

?>