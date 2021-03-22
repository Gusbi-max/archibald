<?php
/*
Template Name: Page Blog & News
*/
?>

<?php get_header(); ?>

<?php

  if ( have_posts() ): while ( have_posts() ): the_post();

    the_content();

  endwhile; endif

?>

<!-- NEWSLETTER PART -->

  <h3>Ne ratez pas nos newsletters, abonnez-vous : ici !</h3>

  <form action="" class="newsletter-form">
    <p>Abonnement newsletter :</p>
    <p>Vous devez être majeur pour vous inscrire.</p>
    <input type="text" name="first-name" id="nl-first-name" placeholder="Prénom *" required>
    <input type="text" name="birthday" placeholder="Année de naissance *" required>
    <input type="email" name="email" placeholder="E-mail *" required>
    <input type="submit" value="OK">
  </form>

  <p>En attendant, retrouvez ci-dessous toutes les archives.</p>

<?php

  $queryNewsletter = new WP_Query([
    'category_name' => 'newsletter',
    'order' => "ASC",
  ]);

  if ( $queryNewsletter->have_posts() ): while ( $queryNewsletter->have_posts() ): $queryNewsletter->the_post();

    the_content();

  endwhile; endif;

?>

<!-- BLOG PART -->

<h2>2. Le blog d'Archibald</h2>
<p><em>Des réflexions, des interviews, des cocktails...</em></p>

<?php

  $queryBlog = new WP_Query([
    'category_name' => 'blog',
    'order' => "ASC",
  ]);

  if ( $queryBlog->have_posts() ): while ( $queryBlog->have_posts() ): $queryBlog->the_post();

    the_content();

  endwhile; endif;

?>

<?php get_footer(); ?>