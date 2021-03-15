<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="robots" content="all" />
  <?php
    wp_head(); 
  ?>
</head>
<body>
  <header>
    <div class="line-blue"></div>
    <div class="line-red"></div>
    <div class="navigation">
      <a href="<?= home_url('/') ?>">
        <img class="logo" src="<?= get_template_directory_uri() . '/assets/images/logo_small.png' ?>" alt="Logo Archibald">
      </a>
      <div class="menu">
        <div class="menu-burger">
          <span class="burger-line line-top"></span>
          <span class="burger-line line-middle"></span>
          <span class="burger-line line-bottom"></span>
        </div>
      </div>
    </div>
  </header>
