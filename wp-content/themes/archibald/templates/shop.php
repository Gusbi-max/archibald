<?php
/*
Template Name: Boutique
Template Post Type: page
*/
?>
<?php get_header(); ?>
<?php
$query = new WP_Query([
  'post_type' => 'product',
  'product_cat' => 'archibald'
]);
?>
<img class="background-img" src="<?= get_template_directory_uri() . '/assets/images/backdrop-shop.png' ?>" alt="">
<div class="input-container">
  <select name="" id="select">
      <option value="">Trier par :</option>
      <option value="dog">test1</option>
      <option value="cat">test2</option>
  </select>
  <?php get_product_search_form() ?>
  </div>
<div class="shop-container">
<div class="filter-container">
</div>
<div class="products-container">
  <h1>Archibald Tonic</h1>
  <div class="product-container">

    <?php if ($query->have_posts()): while ($query->have_posts()): $query->the_post(); ?>
    <div class="product-item">
      <?php global $product; ?>
      <div class="product-item-image">
        <img src="<?php echo wp_get_attachment_url( $product->get_image_id() ); ?>" />
      </div>
      <?php
        echo the_title();
        echo woocommerce_template_single_price();
      ?>
      <div class="product-item-add-block">
        <?php
        echo woocommerce_template_single_add_to_cart();
        ?>
      </div>
    </div>

    <?php endwhile; endif; ?>
  </div>

<?php
  $query = new WP_Query([
    'post_type' => 'product',
    'product_cat' => 'accompagnements'
  ]);
?>
  <h1>Archibald Tonic Edition Limités</h1>
  <div class="product-container">

    <?php if ($query->have_posts()): while ($query->have_posts()): $query->the_post(); ?>
    <div class="product-item">
      <?php global $product; ?>
      <div class="product-item-image">
        <img src="<?php echo wp_get_attachment_url( $product->get_image_id() ); ?>" />
      </div>
      <?php
        echo the_title();
        echo woocommerce_template_single_price();
      ?>
      <div class="product-item-add-block">
        <?php
        echo woocommerce_template_single_add_to_cart();
        ?>
      </div>
    </div>

    <?php endwhile; endif; ?>
  </div>
<?php
  $query = new WP_Query([
    'post_type' => 'product',
    'product_cat' => 'spiritueux'
  ]);
?>
  <h1>Nos Gin</h1>
  <div class="product-container">

    <?php if ($query->have_posts()): while ($query->have_posts()): $query->the_post(); ?>
    <div class="product-item">
      <?php global $product; ?>
      <div class="product-item-image">
        <img src="<?php echo wp_get_attachment_url( $product->get_image_id() ); ?>" />
      </div>
      <?php
        echo the_title();
        echo woocommerce_template_single_price();
      ?>
      <div class="product-item-add-block">
        <?php
        echo woocommerce_template_single_add_to_cart();
        ?>
      </div>
    </div>

    <?php endwhile; endif; ?>
  </div>
</div>
</div>
<?php get_footer(); ?>
