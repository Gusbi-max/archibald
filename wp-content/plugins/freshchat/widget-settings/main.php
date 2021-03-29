<?php

// Register settings
function Freshchat_register_settings()
{
  register_setting( 'Freshchat_settings_group', 'fc_settings' );
}
add_action( 'admin_init', 'Freshchat_register_settings' );

// Delete options on uninstall
function Freshchat_uninstall()
{
  delete_option( 'fc_settings' );
}
register_uninstall_hook( __FILE__, 'Freshchat_uninstall' );


?>