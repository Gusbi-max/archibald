# Installation en local

Après avoir cloner le repo, installer wordpress à partir de `localhost/archibald`.
Nom de la base de données : `archibald`
Préfixe : `wp_`

# Suppression des tables de la base de données

Dans phpmyadmin, supprimer toutes les tables créées lors de l'installation sauf `wp_options` et `wp_users`.
Puis importer la base de données présente dans `database/archibald.sql`.

# Modifier `config.php`

Modifier les éléments relatif à la base de données et à sa connexion dans le fichier `config.php` situé à la racine.

# Changer le thème

Le thème par défaut sera le thème par défaut de wordpress. Penser à le changer en mettant le theme Archibald ;)
