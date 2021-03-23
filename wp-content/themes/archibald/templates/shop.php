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

  <a href="<?= the_permalink() ?>">
    <?= the_title(); ?>
  </a>

<?php
  echo woocommerce_template_single_excerpt();
  echo woocommerce_template_single_price();
  echo woocommerce_template_single_add_to_cart();
?>


<?php endwhile; endif; ?>