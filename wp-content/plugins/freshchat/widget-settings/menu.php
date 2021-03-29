<?php

// Create a option page for settings
add_action('admin_menu', 'add_fc_option');

// Hook in the options page 
function add_fc_option()
{
  add_menu_page( 'Freshchat Settings', 'Freshchat', 'manage_options', 'freshchat-settings-handle', 'freshchat_settings_page');
}

?>
