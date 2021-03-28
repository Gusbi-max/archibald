<?php
/*
Template Name: Page Coordonnées
*/
?>

<?php get_header(); ?>


    <div class="contact-information">
        <div class="order-tunnel">
            <p class="title-tunnel tunnel-step">Coordonnées</p>
            <div class="line-tunnel"></div>
            <p class="title-tunnel">Livraison</p>
            <div class="line-tunnel"></div>
            <p class="title-tunnel">Paiement</p>
        </div>
        <div class="shipping-and-billing">
            <h1 class="title-page-ci">Coordonnées</h1>
            <?php do_action('woocommerce_before_checkout_form'); ?>

            <div class="shipping">
                <h3 class="title-shipping">LIVRAISON</h3>
                <?php do_action('woocommerce_checkout_shipping'); ?>
            </div>

            <div class="billing">
                <h3 class="title-billing">FACTURATION</h3>
                <?php do_action('woocommerce_checkout_billing'); ?>
            </div>
        </div>

        <div class="buttons-ci">
            <button onclick="location.href = '<?= home_url('/livraison'); ?>';" class="button-archibald margin-bottom">Continuer</button>
            <button onclick="location.href = '<?= home_url('/panier'); ?>';" class="button-archibald">Précédemment</button>
        </div>
    </div>


<?php get_footer(); ?>