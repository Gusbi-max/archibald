<?php

// Add the Freshchat Javascript
add_action('wp_footer', 'add_fc');

// If we can indentify the current user output
function get_fc_user_identify()
{
  $current_user = wp_get_current_user();
  $user_meta = get_user_meta($current_user->ID, "restore_id");
  if ($current_user->user_email) {
    $sanitized_email = sanitize_email($current_user->user_email);
    echo "<script>\n";
    echo "window.fcSettings.externalId ='".sanitize_text_field($sanitized_email)."';\n";
    echo "window.fcSettings.restoreId ='".sanitize_text_field($user_meta[0])."';\n";
    echo "window.fcSettings.onInit = function() {
          window.fcWidget.on('widget:loaded', function() {
            window.fcWidget.user.get().then(function(resp) {
              var status = resp && resp.status,
              data = resp && resp.data;
              if (status === 200) {
                if (data.restoreId) {
                  jQuery.post( ajaxurl, {          
                    action: 'update_restore_id',     
                    restoreId: data.restoreId                  
                  }, function() {  
                    console.log('Restore id is updated successfully');
                  });
                }
              }
            }, function(err){
              var status = err && err.status;
              if((status === 401 || status === 403 || status === 404) && !window.fcSettings.restoreId && window.fcSettings.externalId){
                window.fcWidget.user.create().then(function(resp){
                  var data = resp && resp.data;
                  if (data.restoreId) {
                    jQuery.post( ajaxurl, {          
                      action: 'update_restore_id',     
                      restoreId: data.restoreId                  
                    }, function() {  
                      console.log('Restore id is updated successfully');
                    });
                  }
                },function(err){
                  console.log('User creation is failed', err);
                })
              }else if((status === 401 || status === 404 && status === 409) && window.fcSettings.restoreId && window.fcSettings.externalId){
                window.fcSettings.restoreId = undefined;
                window.fcWidget.user.create().then(function(resp){
                  var data = resp && resp.data;
                  if (data.restoreId) {
                    jQuery.post( ajaxurl, {          
                      action: 'update_restore_id',     
                      restoreId: data.restoreId                  
                    }, function() {  
                      console.log('Restore id is updated successfully');
                    });
                  }
                },function(err){
                  console.log('User creation is failed', err);
                })
              }
            });
          });
        };\n";
    echo "window.fcSettings.firstName ='".sanitize_text_field($current_user->display_name)."';\n";
    echo "window.fcSettings.email ='".$sanitized_email."';\n";
    echo "</script>\n";
  } 
}

function add_fc()
{
  echo "<script>\n";
  echo "var ajaxurl = '".admin_url('admin-ajax.php')."';\n";
  echo "</script>\n";
  // Ignore admin, feed, robots or trackbacks
  if ( is_feed() || is_robots() || is_trackback() )
  {
    return;
  }

  $options = get_option('fc_settings');

  // If options is empty then exit
  if( empty( $options ) )
  {
    return;
  }

  // Check to see if Freshchat is enabled
  if ( esc_attr( $options['fc_enabled'] ) == "on" )
  {
    $fc_snippet = $options['fc_widget_code'];

    //$options['loggedin_user']
    if ( ! empty ( $options['loggedin_user'] ) && esc_attr( $options['loggedin_user'] ) == "on" )
    {
      $current_user = wp_get_current_user();
      if($current_user->user_email){
        // Insert tracker code
        if ( '' != $fc_snippet )
        {
          echo $fc_snippet;

          // Optional
          //if ( esc_attr( $options['fc_knowned_user'] ) == "on" ){
            get_fc_user_identify();
          //}

        }
      }
    }else{
      // Insert tracker code
      if ( '' != $fc_snippet )
      {
        echo $fc_snippet;

        // Optional
        //if ( esc_attr( $options['fc_knowned_user'] ) == "on" ){
          get_fc_user_identify();
        //}

      }
    }
    
  }
}
?>