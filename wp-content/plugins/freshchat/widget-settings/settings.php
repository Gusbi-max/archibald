<?php

// Output the options page
function freshchat_settings_page()
{
  // Get options
  $options = get_option('fc_settings');

  // Check to see if Freshchat is enabled
  $fc_activated = false;
  if ( esc_attr( $options['fc_enabled'] ) == "on" ) {
    $fc_activated = true;
    wp_cache_flush();
  }

  // Check to see if Freshchat identify is checked
  $loggedin_user = false;
  if ( ! empty ( $options['loggedin_user'] ) && esc_attr( $options['loggedin_user'] ) == "on" ) {
    $loggedin_user = true;
    wp_cache_flush();
  }

?>
        <div class="wrap">
        <form name="fc-form" action="options.php" method="post" enctype="multipart/form-data">
          <?php settings_fields( 'Freshchat_settings_group' ); ?>

            <h1>Freshchat</h1>
            <h3>Basic Options</h3>
            <?php if ( ! $fc_activated ) { ?>
                <div style="margin:10px auto; border:3px #f00 solid; background-color:#fdd; color:#000; padding:10px; text-align:center;">
                Freshchat is currently <strong>DISABLED</strong>.
                </div>
            <?php } ?>
            <?php do_settings_sections( 'Freshchat_settings_group' ); ?>

            <table class="form-table" cellspacing="2" cellpadding="5" width="100%">
                <tr>
                    <th width="30%" valign="top" style="padding-top: 10px;">
                        <label for="fc_enabled">Freshchat is:</label>
                    </th>
                    <td>
                      <?php
                          echo "<select name=\"fc_settings[fc_enabled]\"  id=\"fc_enabled\">\n";

                          echo "<option value=\"on\"";
                          if ( $fc_activated ) { echo " selected='selected'"; }
                          echo ">Enabled</option>\n";

                          echo "<option value=\"off\"";
                          if ( ! $fc_activated ) { echo" selected='selected'"; }
                          echo ">Disabled</option>\n";
                          echo "</select>\n";
                        ?>
                    </td>
                </tr>
            </table>
            <table class="form-table" cellspacing="2" cellpadding="5" width="100%">
              <tr>
                  <th valign="top" style="padding-top: 10px;">
                      <label for="fc_widget_code">Freshchat widget code:</label>
                  </th>
                  <td>
                    <textarea rows="15" cols="100" placeholder="<!-- Insert the Freshchat snippet -->" name="fc_settings[fc_widget_code]"><?php echo esc_attr( $options['fc_widget_code'] ); ?></textarea>
                  </td>
              </tr>
            </table>
            <input type="checkbox" <?php if ( $loggedin_user ) {echo " checked='checked'";}?> name="fc_settings[loggedin_user]"/><label for="loggedin_user">Enable chat only for logged in Users</label>
            <p class="submit">
                <?php echo submit_button('Save Changes'); ?>
            </p>
        </div>
        </form>

<?php
}
?>
