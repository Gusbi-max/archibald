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
    <div class="row header">
      <div class="row logo">
        <a class="header-link" href="#"><img class="archibald" src="<?= get_template_directory_uri() . '/assets/images/logo_archibald.png' ?>" alt="archibald"></a>
      </div>

      <div class="row lines">
        <div class="line-blue"></div>
        <div class="line-white"></div>
        <div class="line-red"></div>
      </div>

      <div class="row button-shop">
        <a class="header-link text-white" href="#">E-SHOP</a>
      </div>
      <div class="row button-basket">
        <a class="header-link" href="#"><svg id="Logo_panier" data-name="Logo panier" xmlns="http://www.w3.org/2000/svg" width="30.752" height="20.65" viewBox="0 0 30.752 20.65">
           <path id="Tracé_1" data-name="Tracé 1" d="M29.677,11.218h-7.5a7.008,7.008,0,0,0-6.8-6.167,7.007,7.007,0,0,0-6.8,6.167H1.073a1.073,1.073,0,0,0,0,2.147h.589L4.953,24.331A2.047,2.047,0,0,0,6.794,25.7H23.958a2.047,2.047,0,0,0,1.841-1.37L29.09,13.365h.59a1.074,1.074,0,1,0,0-2.147ZM9.457,22.839H8.923a2.045,2.045,0,0,1-1.842-1.371l-.662-2.2H9.457v3.575Zm0-5.006H5.99l-.661-2.206a1.007,1.007,0,0,1,1.019-1.37H9.457ZM17.4,22.839H13.585V19.264H17.4Zm0-5.006H13.585V14.257H17.4Zm6.266,3.636a2.047,2.047,0,0,1-1.841,1.371h-.3V19.264h2.8Zm1.752-5.841-.66,2.206H21.533V14.258h2.872A1.006,1.006,0,0,1,25.422,15.628ZM15.375,7.2a4.852,4.852,0,0,1,4.646,4.022H10.73A4.852,4.852,0,0,1,15.375,7.2Z" transform="translate(0 -5.051)" fill="var(--basket)"/>
        </svg></a>
      </div>
      <div class="row button-menu">
        MENU
      </div>
      <div class="row button-profil">
         <a class="header-link" href="#"><svg class="basket" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="37" height="37" viewBox="0 0 37 37">
            <image id="NoPath_-_Copie_4_" data-name="NoPath - Copie (4)" width="37" height="37" xlink:href="data:image/png;base64,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"/>
         </svg></a>
      </div>

      <div class="button-burger">
         <div class="lines-burger"></div>
      </div>
    </div>

    <div class="menu-burger">
        <div class="section-burger">
            <h2 class="title-page">TONIC DE DISTILLERIE</h2>
        </div>
        <div class="section-burger">
            <h2 class="title-page">ENGAGE ET RESPONSABLE</h2>
        </div>
        <div class="section-burger">
            <h2 class="title-page">DEGUSTATION</h2>
        </div>
        <div class="section-burger">
            <h2 class="title-page">CONTACT</h2>
        </div>
        <div class="section-burger">
            <h2 class="title-page">BLOG & NEWS</h2>
        </div>
        <div class="section-burger">
            <h2 class="title-page">E-SHOP</h2>
        </div>
    </div>
  </header>

  <div class="container">
