<?php
/*
Template Name: Page Livraison
*/
?>

<?php get_header(); ?>

<div class="page-livraison">
    <div class="order-tunnel">
        <p class="title-tunnel">Coordonnées</p>
        <div class="line-tunnel"></div>
        <p class="title-tunnel tunnel-step">Livraison</p>
        <div class="line-tunnel"></div>
        <p class="title-tunnel">Paiement</p>
    </div>
    <h1 class="margin-bottom">Livraison</h1>
    <div class="line-delivery"></div>
    <div class="delivery-choice">
        <div class="choice">
            <input type="radio" />
        </div>
        <div class="delivery">
            <h3>Livraison standard</h3>
            <p>Délai : 3 à 5 jours</br>
            <p>Offerte pour toute commande de 60€ TTC minimum.</p>
            <p>France métropolitaine uniquement.</p>
        </div>
        <div class="price">
            <p>6,90 €</p>
        </div>
    </div>
    <div class="line-delivery"></div>
    <div class="delivery-choice">
        <div class="choice">
            <input type="radio" />
        </div>
        <div class="delivery">
            <h3>Livraison express</h3>
            <p>Délai : 1 jour</br>
            <p>France métropolitaine uniquement.</p>
        </div>
        <div class="price">
            <p>14,90 €</p>
        </div>
    </div>
    <div class="line-delivery"></div>
    <div class="delivery-choice">
        <div class="choice">
            <input type="radio" />
        </div>
        <div class="delivery">
            <h3>Retrait à l'Annexe de la Distillerie à Bordeaux</h3>
            <p>Délai : 2 heures</br>
            <p>Du lundi au samedi - de 11h à 19h</p>
            <p>Darwin Ecosystème - 87 quai des Queries - Bordeaux</p>
        </div>
        <div class="price">
            <p>0,00 €</p>
        </div>
    </div>
    <div class="line-delivery"></div>
    <div class="delivery-choice">
        <div class="choice">
            <input type="radio" />
        </div>
        <div class="delivery">
            <h3>Livraison à vélo sur Bordeaux Intra Muros</h3>
            <p>Délai : dans la journée</br>
            <p>Du lundi au samedi - de 11h à 20h</p>
            <p>On vous appelle pour l'heure de livraison !</p>
        </div>
        <div class="price">
            <p>4,90 €</p>
        </div>
    </div>
    <div class="line-delivery"></div>

    <div class="buttons-ci">
        <button onclick="location.href = '<?= home_url('/paiement'); ?>';" class="button-archibald margin-bottom">Continuer</button>
        <button onclick="location.href = '<?= home_url('/coordonnees'); ?>';" class="button-archibald">Précédemment</button>
    </div>
</div>

<?php get_footer(); ?>