<?php
/*
Template Name: Page Paiement
*/
?>

<?php get_header(); ?>
<div class="page-payment">
    <div class="order-tunnel">
        <p class="title-tunnel">Coordonnées</p>
        <div class="line-tunnel"></div>
        <p class="title-tunnel">Livraison</p>
        <div class="line-tunnel"></div>
        <p class="title-tunnel tunnel-step">Paiement</p>
    </div>
    <div class="payment">
        <?php do_action('woocommerce_checkout_order_review'); ?>
    </div>
</div>

<?php get_footer(); ?>