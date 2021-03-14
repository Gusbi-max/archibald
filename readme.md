# Installation en local

Après avoir cloner le repo, installer wordpress à partir de `localhost/archibald`.

# Suppression des tables de la base de données

Dans phpmyadmin, supprimer toutes les tables créées lors de l'installation sauf `wp_options` et `wp_users`.
Puis importer la base de données présente dans `database/archibald.sql`.