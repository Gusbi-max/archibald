<?php
/*
Template Name: Page Contact
*/
?>

<?php get_header(); ?>

<?php

  if ( have_posts() ): while ( have_posts() ): the_post();

    the_content();

  endwhile; endif

?>

  <form action="">
    <input type="text" name="first-name" placeholder="Prénom" required>
    <input type="text" name="last-name" placeholder="Nom de famille">
    <input type="email" name="email" placeholder="E-mail" required>
    <input type="text" name="phone" placeholder="Téléphone">
    <input type="text" name="city" id="city" placeholder="Ville">
    <textarea name="message" placeholder="Rédigez votre message ici" rows="10" required></textarea>
    <input type="submit" value="Envoyer">
  </form>

<?php get_footer(); ?>