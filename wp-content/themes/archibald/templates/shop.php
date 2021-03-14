<?php
/*
Template Name: Boutique
Template Post Type: page
*/
?>

<?php
$query = new WP_Query([
  'post_type' => 'product'
]);
?>

<?php if ($query->have_posts()): while ($query->have_posts()): $query->the_post(); ?>
<?php
  echo the_title();
  echo woocommerce_template_single_excerpt();
  echo woocommerce_template_single_price();
  echo woocommerce_template_single_add_to_cart();
?>


<?php endwhile; endif; ?>