<?php
/*
Template Name: Page avec index
*/
?>

<?php
  get_header();
?>

<div class="container">

<?php

  global $post;
  $post_slug = $post->post_name;
  if ( have_posts() ): while ( have_posts() ): the_post();
  
    the_content();

  endwhile; endif;
?>

<?php

  $query = new WP_Query([
    'category_name' => $post_slug,
    'order' => 'ASC',
  ]);

  if ( $query->have_posts() ): while ( $query->have_posts() ): $query->the_post();
  
    the_content();

  endwhile; endif;

?>

</div>

<?php
  get_footer();
?>