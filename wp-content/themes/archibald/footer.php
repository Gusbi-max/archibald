<?php 
  wp_footer(); 
?>
  </div>
  <footer>
	<div class="footer-section">
		<div id="first-column">
			<img class="footer-logo" src="<?= get_template_directory_uri() . '/assets/images/logo_archibald.png' ?>" alt="archibald">
			<p class="footer-text text-white">
				Sed ut perspiciatis unde omnis iste natus error sit voluptatem<br> 
				accusantium doloremque laudantium, totam rem aperiam, eaque<br> 
				ipsa quae ab illo inventore veritatis et quasi architecto beatae<br> 
				vitae dicta sunt explicabo.
			</p>
		</div>

		<div id="second-column">
			<div>
				<h3 class="text-white">LIENS UTILES</h3>
				<div class="line-title"></div>
			</div>
			<?php wp_nav_menu([
        			'theme_location' => 'footer_menu1',
        			'container' => false,
        			'menu_class' => 'footer-menus',
      			]);
    		?>
		</div>

		<div id="third-column">
			<?php wp_nav_menu([
        			'theme_location' => 'footer_menu2',
        			'container' => false,
        			'menu_class' => 'footer-menus',
      			]);
    		?>
		</div>

		<div id="fourth-column">
			<div>
				<h3 class="text-white">LIVRAISON</h3>
				<div class="line-title"></div>
			</div>
			<p class="footer-text text-white">
				Livraison standard en 3 à 5 jours ouvrées !<br>
				6,90€ TTC, offerts à partir de 60€ d'achat*<br>
				Livraison express en 1 jour à 14,90€ TTC*<br>
				Prix et Délais de livraison par pays Paiement 100% sécurisé
			</p>
		</div>
	</div>

	<div class="copyright">
		<div>
			<div class="line-grey"></div>
			<p class="text-white text-center">&copy; 2021, Archibald Tonic</p>
		</div>
	</div>
  </footer>
  <script src="<?= get_template_directory_uri() . '/assets/js/script.js>' ?>"></script>
</body>
</html>