-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 19 Mars 2021 à 21:37
-- Version du serveur :  5.7.33-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `archibald`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(23, 'action_scheduler/migration_hook', 'complete', '2021-03-13 14:01:09', '2021-03-13 15:01:09', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1615644069;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1615644069;}', 1, 1, '2021-03-13 14:01:13', '2021-03-13 15:01:13', 0, NULL),
(24, 'action_scheduler/migration_hook', 'complete', '2021-03-13 14:02:14', '2021-03-13 15:02:14', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1615644134;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1615644134;}', 1, 1, '2021-03-13 14:02:22', '2021-03-13 15:02:22', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Structure de la table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 23, 'action créée', '2021-03-13 14:00:09', '2021-03-13 15:00:09'),
(2, 23, 'action lancée via Async Request', '2021-03-13 14:01:13', '2021-03-13 15:01:13'),
(3, 23, 'action terminée via Async Request', '2021-03-13 14:01:13', '2021-03-13 15:01:13'),
(4, 24, 'action créée', '2021-03-13 14:01:14', '2021-03-13 15:01:14'),
(5, 24, 'action lancée via WP Cron', '2021-03-13 14:02:22', '2021-03-13 15:02:22'),
(6, 24, 'action terminée via WP Cron', '2021-03-13 14:02:22', '2021-03-13 15:02:22');

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-13 14:48:39', '2021-03-13 13:48:39', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://projets.bdx.digital-campus.net/archibald', 'yes'),
(2, 'home', 'http://projets.bdx.digital-campus.net/archibald', 'yes'),
(3, 'blogname', 'ArchibaldTonic', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bigot.max@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'j F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:161:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:17:"index.php/shop/?$";s:27:"index.php?post_type=product";s:47:"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:42:"index.php/shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"index.php/shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:45:"index.php/produit/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/produit/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/produit/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/produit/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/produit/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/produit/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/produit/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:42:"index.php/produit/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/produit/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/produit/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/produit/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:43:"index.php/produit/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:66:"index.php/categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:61:"index.php/categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:42:"index.php/categorie-produit/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:54:"index.php/categorie-produit/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:36:"index.php/categorie-produit/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:68:"index.php/etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:63:"index.php/etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:44:"index.php/etiquette-produit/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:56:"index.php/etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:38:"index.php/etiquette-produit/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:37:"post-types-order/post-types-order.php";i:1;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1631195315', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'fr_FR', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:18:{i:1616181966;a:1:{s:28:"wp_1_wc_privacy_cleanup_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:37:"wp_1_wc_privacy_cleanup_cron_interval";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1616182012;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1616183320;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1616184005;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1616184006;a:1:{s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1616184015;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1616185561;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1616194800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616204920;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1616248120;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616248131;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616248133;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616248808;a:1:{s:14:"wc_admin_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616248815;a:2:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616259605;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1616334520;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1616940065;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwenty', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"background_color";s:3:"fff";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:27;}}', 'yes'),
(129, '_site_transient_timeout_browser_8fa89bdfafbee438d8adfbaadcd9c3cc', '1616248132', 'no'),
(130, '_site_transient_browser_8fa89bdfafbee438d8adfbaadcd9c3cc', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"89.0.4389.82";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_4e2f0e3f4afdd1b38897ab5217652a3e', '1616248132', 'no'),
(132, '_site_transient_php_check_4e2f0e3f4afdd1b38897ab5217652a3e', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:0;}', 'no'),
(134, 'can_compress_scripts', '0', 'no'),
(145, 'finished_updating_comment_type', '1', 'yes'),
(146, 'ftp_credentials', 'a:3:{s:8:"hostname";s:30:"projets.bdx.digital-campus.net";s:8:"username";s:9:"archibald";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(152, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:6:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.7";s:7:"version";s:3:"5.7";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.7";s:7:"version";s:3:"5.7";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.7";s:7:"version";s:3:"5.7";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.2.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.6.2";s:7:"version";s:5:"5.6.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.1.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.6.1";s:7:"version";s:5:"5.6.1";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:5;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.6";s:7:"version";s:3:"5.6";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1616181962;s:15:"version_checked";s:5:"5.5.3";s:12:"translations";a:0:{}}', 'no'),
(153, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1616181963;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.1.9";s:9:"hello.php";s:5:"1.7.2";s:37:"post-types-order/post-types-order.php";s:7:"1.9.5.5";s:27:"woocommerce/woocommerce.php";s:5:"5.1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.9";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:37:"post-types-order/post-types-order.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/post-types-order";s:4:"slug";s:16:"post-types-order";s:6:"plugin";s:37:"post-types-order/post-types-order.php";s:11:"new_version";s:7:"1.9.5.5";s:3:"url";s:47:"https://wordpress.org/plugins/post-types-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/post-types-order.1.9.5.5.zip";s:5:"icons";a:1:{s:2:"1x";s:69:"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428";}s:7:"banners";a:2:{s:2:"2x";s:72:"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574";s:2:"1x";s:71:"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"5.1.0";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.5.1.0.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(154, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1616181963;s:7:"checked";a:5:{s:9:"archibald";s:0:"";s:14:"twentynineteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"2.6";s:12:"twentytwenty";s:3:"1.7";s:15:"twentytwentyone";s:3:"1.2";}s:8:"response";a:0:{}s:9:"no_update";a:4:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentyseventeen";a:6:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.6";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.6.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.7";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.2";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
(163, 'category_children', 'a:0:{}', 'yes'),
(164, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'action_scheduler_hybrid_store_demarkation', '22', 'yes'),
(166, 'schema-ActionScheduler_StoreSchema', '3.0.1615643991', 'yes'),
(167, 'schema-ActionScheduler_LoggerSchema', '2.0.1615643992', 'yes'),
(170, 'woocommerce_schema_version', '430', 'yes'),
(171, 'woocommerce_store_address', 'La Société des Vieux Copains', 'yes'),
(172, 'woocommerce_store_address_2', 'Darwin Ecosystème - 87 quai des Queyries', 'yes'),
(173, 'woocommerce_store_city', 'Bordeaux', 'yes'),
(174, 'woocommerce_default_country', 'FR', 'yes'),
(175, 'woocommerce_store_postcode', '33100', 'yes'),
(176, 'woocommerce_allowed_countries', 'all', 'yes'),
(177, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(178, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(179, 'woocommerce_ship_to_countries', '', 'yes'),
(180, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(181, 'woocommerce_default_customer_address', 'base', 'yes'),
(182, 'woocommerce_calc_taxes', 'no', 'yes'),
(183, 'woocommerce_enable_coupons', 'yes', 'yes'),
(184, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(185, 'woocommerce_currency', 'EUR', 'yes'),
(186, 'woocommerce_currency_pos', 'right', 'yes'),
(187, 'woocommerce_price_thousand_sep', '', 'yes'),
(188, 'woocommerce_price_decimal_sep', ',', 'yes'),
(189, 'woocommerce_price_num_decimals', '2', 'yes'),
(190, 'woocommerce_shop_page_id', '22', 'yes'),
(191, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(192, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(193, 'woocommerce_placeholder_image', '0', 'yes'),
(194, 'woocommerce_weight_unit', 'kg', 'yes'),
(195, 'woocommerce_dimension_unit', 'cm', 'yes'),
(196, 'woocommerce_enable_reviews', 'yes', 'yes'),
(197, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(198, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(199, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(200, 'woocommerce_review_rating_required', 'yes', 'no'),
(201, 'woocommerce_manage_stock', 'yes', 'yes'),
(202, 'woocommerce_hold_stock_minutes', '60', 'no'),
(203, 'woocommerce_notify_low_stock', 'yes', 'no'),
(204, 'woocommerce_notify_no_stock', 'yes', 'no'),
(205, 'woocommerce_stock_email_recipient', 'bigot.max@gmail.com', 'no'),
(206, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(207, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(208, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(209, 'woocommerce_stock_format', '', 'yes'),
(210, 'woocommerce_file_download_method', 'force', 'no'),
(211, 'woocommerce_downloads_require_login', 'no', 'no'),
(212, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(213, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(214, 'woocommerce_prices_include_tax', 'no', 'yes'),
(215, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(216, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(217, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(218, 'woocommerce_tax_classes', '', 'yes'),
(219, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(220, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(221, 'woocommerce_price_display_suffix', '', 'yes'),
(222, 'woocommerce_tax_total_display', 'itemized', 'no'),
(223, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(224, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(225, 'woocommerce_ship_to_destination', 'billing', 'no'),
(226, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(227, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(228, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(229, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(230, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(231, 'woocommerce_registration_generate_username', 'yes', 'no'),
(232, 'woocommerce_registration_generate_password', 'yes', 'no'),
(233, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(234, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(235, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(236, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(237, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(238, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(239, 'woocommerce_trash_pending_orders', '', 'no'),
(240, 'woocommerce_trash_failed_orders', '', 'no'),
(241, 'woocommerce_trash_cancelled_orders', '', 'no'),
(242, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(243, 'woocommerce_email_from_name', 'ArchibaldTonic', 'no'),
(244, 'woocommerce_email_from_address', 'bigot.max@gmail.com', 'no'),
(245, 'woocommerce_email_header_image', '', 'no'),
(246, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(247, 'woocommerce_email_base_color', '#96588a', 'no'),
(248, 'woocommerce_email_background_color', '#f7f7f7', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(249, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(250, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(251, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(252, 'woocommerce_cart_page_id', '23', 'no'),
(253, 'woocommerce_checkout_page_id', '24', 'no'),
(254, 'woocommerce_myaccount_page_id', '25', 'no'),
(255, 'woocommerce_terms_page_id', '', 'no'),
(256, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(257, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(259, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(260, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(261, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(262, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(263, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(264, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(265, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(266, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(267, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(268, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(269, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(270, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(271, 'woocommerce_api_enabled', 'no', 'yes'),
(272, 'woocommerce_allow_tracking', 'no', 'no'),
(273, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(274, 'woocommerce_single_image_width', '600', 'yes'),
(275, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(276, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(277, 'woocommerce_demo_store', 'no', 'no'),
(278, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"produit";s:13:"category_base";s:17:"categorie-produit";s:8:"tag_base";s:17:"etiquette-produit";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(279, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(280, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(281, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(283, 'default_product_cat', '22', 'yes'),
(286, 'woocommerce_version', '5.1.0', 'yes'),
(287, 'woocommerce_db_version', '5.1.0', 'yes'),
(291, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:"{{WP_PLUGIN_DIR}}/woocommerce";}', 'yes'),
(292, 'action_scheduler_lock_async-request-runner', '1616182026', 'yes'),
(293, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:"no_secure_connection";i:2;s:31:"wp_php_min_requirements_7.2_5.2";}', 'yes'),
(294, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:"database_prefix";s:32:"KfLZZhYnUNSjtKQhwaRApa5BDv5iBlUf";}', 'yes'),
(295, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(296, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(297, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(298, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(299, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(300, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(301, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(302, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(303, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(304, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(305, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(306, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(307, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(310, 'woocommerce_admin_version', '2.0.2', 'yes'),
(311, 'woocommerce_admin_install_timestamp', '1615644008', 'yes'),
(315, 'wc_remote_inbox_notifications_specs', 'a:11:{s:23:"facebook_pixel_api_2021";O:8:"stdClass":8:{s:4:"slug";s:23:"facebook_pixel_api_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:44:"Improve the performance of your Facebook ads";s:7:"content";s:168:"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:30:"upgrade_now_facebook_pixel_api";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:11:"Upgrade now";}}s:3:"url";s:67:"plugin-install.php?tab=plugin-information&plugin=&section=changelog";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-02-15 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-02-29 00:00:00";}i:2;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:24:"facebook-for-woocommerce";s:7:"version";s:5:"2.1.4";s:8:"operator";s:2:"<=";}}}s:16:"facebook_ec_2021";O:8:"stdClass":8:{s:4:"slug";s:16:"facebook_ec_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:59:"Sync your product catalog with Facebook to help boost sales";s:7:"content";s:170:"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:22:"learn_more_facebook_ec";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:42:"https://woocommerce.com/products/facebook/";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-03-01 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-03-15 00:00:00";}i:2;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:24:"facebook-for-woocommerce";}}}}s:37:"ecomm-need-help-setting-up-your-store";O:8:"stdClass":8:{s:4:"slug";s:37:"ecomm-need-help-setting-up-your-store";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:32:"Need help setting up your Store?";s:7:"content";s:350:"Schedule a free 30-min <a href="https://wordpress.com/support/concierge-support/">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:16:"set-up-concierge";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:21:"Schedule free session";}}s:3:"url";s:34:"https://wordpress.com/me/concierge";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:1:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:3:{i:0;s:35:"woocommerce-shipping-australia-post";i:1;s:32:"woocommerce-shipping-canada-post";i:2;s:30:"woocommerce-shipping-royalmail";}}}}s:20:"woocommerce-services";O:8:"stdClass":8:{s:4:"slug";s:20:"woocommerce-services";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"WooCommerce Shipping & Tax";s:7:"content";s:255:"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:84:"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:20:"woocommerce-services";}}i:1;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:"<";s:4:"days";i:2;}}}s:32:"ecomm-unique-shopping-experience";O:8:"stdClass":8:{s:4:"slug";s:32:"ecomm-unique-shopping-experience";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:53:"For a shopping experience as unique as your customers";s:7:"content";s:274:"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:43:"learn-more-ecomm-unique-shopping-experience";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:71:"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:3:{i:0;s:35:"woocommerce-shipping-australia-post";i:1;s:32:"woocommerce-shipping-canada-post";i:2;s:30:"woocommerce-shipping-royalmail";}}i:1;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:"<";s:4:"days";i:2;}}}s:37:"wc-admin-getting-started-in-ecommerce";O:8:"stdClass":8:{s:4:"slug";s:37:"wc-admin-getting-started-in-ecommerce";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:38:"Getting Started in eCommerce - webinar";s:7:"content";s:174:"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:17:"watch-the-webinar";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:17:"Watch the webinar";}}s:3:"url";s:28:"https://youtu.be/V_2XtCOyZ7o";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:12:"setup_client";s:9:"operation";s:2:"!=";s:5:"value";b:1;}i:1;O:8:"stdClass":2:{s:4:"type";s:2:"or";s:8:"operands";a:3:{i:0;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:13:"product_count";s:9:"operation";s:1:"=";s:5:"value";s:1:"0";}i:1;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:7:"revenue";s:9:"operation";s:1:"=";s:5:"value";s:4:"none";}i:2;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:7:"revenue";s:9:"operation";s:1:"=";s:5:"value";s:10:"up-to-2500";}}}}}s:18:"your-first-product";O:8:"stdClass":8:{s:4:"slug";s:18:"your-first-product";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:18:"Your first product";s:7:"content";s:461:"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:82:"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:12:"stored_state";s:5:"index";s:22:"there_were_no_products";s:9:"operation";s:1:"=";s:5:"value";b:1;}i:1;O:8:"stdClass":4:{s:4:"type";s:12:"stored_state";s:5:"index";s:22:"there_are_now_products";s:9:"operation";s:1:"=";s:5:"value";b:1;}i:2;O:8:"stdClass":3:{s:4:"type";s:13:"product_count";s:9:"operation";s:2:">=";s:5:"value";i:1;}i:3;O:8:"stdClass":5:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:13:"product_types";s:9:"operation";s:8:"contains";s:5:"value";s:8:"physical";s:7:"default";a:0:{}}}}s:31:"wc-square-apple-pay-boost-sales";O:8:"stdClass":8:{s:4:"slug";s:31:"wc-square-apple-pay-boost-sales";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"Boost sales with Apple Pay";s:7:"content";s:191:"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:27:"boost-sales-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:97:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:5:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:18:"woocommerce-square";s:8:"operator";s:2:">=";s:7:"version";s:3:"2.3";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:27:"wc_square_apple_pay_enabled";s:5:"value";i:1;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:38:"wc-square-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:4;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:38:"wc-square-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:38:"wc-square-apple-pay-grow-your-business";O:8:"stdClass":8:{s:4:"slug";s:38:"wc-square-apple-pay-grow-your-business";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:45:"Grow your business with Square and Apple Pay ";s:7:"content";s:178:"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:34:"grow-your-business-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:104:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:5:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:18:"woocommerce-square";s:8:"operator";s:2:">=";s:7:"version";s:3:"2.3";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:27:"wc_square_apple_pay_enabled";s:5:"value";i:2;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:31:"wc-square-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:4;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:31:"wc-square-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:37:"wc-admin-optimizing-the-checkout-flow";O:8:"stdClass":8:{s:4:"slug";s:37:"wc-admin-optimizing-the-checkout-flow";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:28:"Optimizing the checkout flow";s:7:"content";s:171:"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:28:"optimizing-the-checkout-flow";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:78:"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:">";s:4:"days";i:3;}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:9:"operation";s:8:"contains";s:5:"value";s:8:"payments";s:7:"default";a:0:{}}}}s:39:"wc-admin-first-five-things-to-customize";O:8:"stdClass":8:{s:4:"slug";s:39:"wc-admin-first-five-things-to-customize";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:45:"The first 5 things to customize in your store";s:7:"content";s:173:"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:82:"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:">";s:4:"days";i:2;}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:5:"value";s:9:"NOT EMPTY";s:7:"default";s:9:"NOT EMPTY";s:9:"operation";s:2:"!=";}}}}', 'yes'),
(316, 'wc_remote_inbox_notifications_stored_state', 'O:8:"stdClass":3:{s:22:"there_were_no_products";b:1;s:22:"there_are_now_products";b:1;s:17:"new_product_count";i:0;}', 'yes'),
(317, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:12:"post-trashed";s:1:"1";s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;}', 'yes'),
(318, 'wc_blocks_db_schema_version', '260', 'yes'),
(319, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(322, '_transient_woocommerce_reports-transient-version', '1615644082', 'yes'),
(323, '_transient_timeout_orders-all-statuses', '1616248928', 'no'),
(324, '_transient_orders-all-statuses', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";a:0:{}}', 'no'),
(332, 'action_scheduler_migration_status', 'complete', 'yes'),
(334, 'woocommerce_onboarding_profile', 'a:9:{s:12:"setup_client";b:1;s:8:"industry";a:1:{i:0;a:1:{s:4:"slug";s:10:"food-drink";}}s:13:"product_types";a:1:{i:0;s:8:"physical";}s:13:"product_count";s:6:"11-100";s:14:"selling_venues";s:2:"no";s:19:"business_extensions";a:0:{}s:5:"theme";s:12:"twentytwenty";s:7:"plugins";s:7:"skipped";s:9:"completed";b:1;}', 'yes'),
(335, '_transient_timeout_wc_report_orders_stats_f7692695684721f262c859ec4ab29a7c', '1616248931', 'no'),
(336, '_transient_timeout_wc_report_orders_stats_c61584ee0448fc3a0987e69345e86fa7', '1616248931', 'no'),
(337, '_transient_wc_report_orders_stats_f7692695684721f262c859ec4ab29a7c', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-10";s:10:"date_start";s:19:"2021-03-13 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-12 23:00:00";s:8:"date_end";s:19:"2021-03-13 15:02:00";s:12:"date_end_gmt";s:19:"2021-03-13 14:02:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
(338, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:13:"store_details";}', 'yes'),
(339, '_transient_wc_report_orders_stats_c61584ee0448fc3a0987e69345e86fa7', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-10";s:10:"date_start";s:19:"2021-03-12 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-11 23:00:00";s:8:"date_end";s:19:"2021-03-12 23:59:59";s:12:"date_end_gmt";s:19:"2021-03-12 22:59:59";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
(340, '_transient_timeout_wc_report_orders_stats_867a7f3556146bcaa922eec7ad1886b9', '1616248931', 'no'),
(341, '_transient_timeout_wc_report_orders_stats_261a87252bd5b36471d7120a4854ea7a', '1616248931', 'no'),
(342, '_transient_wc_report_orders_stats_867a7f3556146bcaa922eec7ad1886b9', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-10";s:10:"date_start";s:19:"2021-03-13 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-12 23:00:00";s:8:"date_end";s:19:"2021-03-13 15:02:00";s:12:"date_end_gmt";s:19:"2021-03-13 14:02:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
(343, '_transient_wc_report_orders_stats_261a87252bd5b36471d7120a4854ea7a', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-10";s:10:"date_start";s:19:"2021-03-12 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-11 23:00:00";s:8:"date_end";s:19:"2021-03-12 23:59:59";s:12:"date_end_gmt";s:19:"2021-03-12 22:59:59";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
(344, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(346, 'cpto_options', 'a:7:{s:23:"show_reorder_interfaces";a:6:{s:4:"post";s:4:"show";s:10:"attachment";s:4:"show";s:8:"wp_block";s:4:"show";s:7:"product";s:4:"show";s:10:"shop_order";s:4:"show";s:11:"shop_coupon";s:4:"show";}s:8:"autosort";i:1;s:9:"adminsort";i:1;s:18:"use_query_ASC_DESC";s:0:"";s:17:"archive_drag_drop";i:1;s:10:"capability";s:14:"manage_options";s:21:"navigation_sort_apply";i:1;}', 'yes'),
(347, 'CPT_configured', 'TRUE', 'yes'),
(348, '_site_transient_timeout_browser_66ec6a80fa7013fddb1e67d9da0622a8', '1616248995', 'no'),
(349, '_site_transient_browser_66ec6a80fa7013fddb1e67d9da0622a8', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"87.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:32:"https://www.mozilla.org/firefox/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(359, '_transient_product_query-transient-version', '1615753653', 'yes'),
(489, '_site_transient_timeout_browser_5207a86dff55cfd6920cb92e1b49f6df', '1616266525', 'no'),
(490, '_site_transient_browser_5207a86dff55cfd6920cb92e1b49f6df', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"86.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:32:"https://www.mozilla.org/firefox/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(496, '_transient_timeout_wc_report_orders_stats_66635f3e0e59c6a926f0d81e2dd13f4d', '1616266565', 'no'),
(497, '_transient_wc_report_orders_stats_66635f3e0e59c6a926f0d81e2dd13f4d', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-10";s:10:"date_start";s:19:"2021-03-13 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-12 23:00:00";s:8:"date_end";s:19:"2021-03-13 19:56:00";s:12:"date_end_gmt";s:19:"2021-03-13 18:56:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
(498, '_transient_timeout_wc_report_orders_stats_d09402398cdf4cbef3a4ea59bd76aa38', '1616266565', 'no'),
(499, '_transient_wc_report_orders_stats_d09402398cdf4cbef3a4ea59bd76aa38', 'a:2:{s:7:"version";s:10:"1615644082";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-10";s:10:"date_start";s:19:"2021-03-13 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-12 23:00:00";s:8:"date_end";s:19:"2021-03-13 19:56:00";s:12:"date_end_gmt";s:19:"2021-03-13 18:56:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
(584, '_transient_product-transient-version', '1615753653', 'yes'),
(608, 'product_cat_children', 'a:0:{}', 'yes'),
(689, '_transient_health-check-site-status-result', '{"good":"9","recommended":"10","critical":"1"}', 'yes'),
(831, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(999, '_site_transient_timeout_browser_0dfb3ef9c1b48f7db77c2e3064864c91', '1616426250', 'no'),
(1000, '_site_transient_browser_0dfb3ef9c1b48f7db77c2e3064864c91', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"88.0.4324.190";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(1001, '_transient_timeout_wc_low_stock_count', '1618413450', 'no'),
(1002, '_transient_wc_low_stock_count', '0', 'no'),
(1003, '_transient_timeout_wc_outofstock_count', '1618413450', 'no'),
(1004, '_transient_wc_outofstock_count', '0', 'no'),
(1132, '_transient_timeout__woocommerce_helper_updates', '1616187256', 'no'),
(1133, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1616144056;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(1141, '_transient_timeout__woocommerce_helper_subscriptions', '1616182862', 'no'),
(1142, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1143, '_site_transient_timeout_theme_roots', '1616183762', 'no'),
(1144, '_site_transient_theme_roots', 'a:5:{s:9:"archibald";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1615643725'),
(5, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1615643843'),
(9, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(10, 3, '_wp_trash_meta_status', 'draft'),
(11, 3, '_wp_trash_meta_time', '1615643844'),
(12, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(13, 8, '_edit_lock', '1615643744:1'),
(14, 10, '_edit_lock', '1615643767:1'),
(15, 12, '_edit_lock', '1615886042:1'),
(16, 14, '_edit_lock', '1615643791:1'),
(17, 16, '_edit_lock', '1615831683:1'),
(18, 18, '_edit_lock', '1615643816:1'),
(19, 20, '_edit_lock', '1615643829:1'),
(20, 20, '_wp_trash_meta_status', 'publish'),
(21, 20, '_wp_trash_meta_time', '1615644153'),
(22, 20, '_wp_desired_post_slug', 'e-shop'),
(23, 22, '_edit_last', '1'),
(24, 22, '_wp_page_template', 'default'),
(25, 22, '_edit_lock', '1615644176:1'),
(26, 27, '_edit_lock', '1615742533:1'),
(28, 29, '_edit_lock', '1615742626:1'),
(30, 31, '_edit_lock', '1615644785:1'),
(32, 31, '_edit_last', '1'),
(33, 31, '_wp_page_template', 'default'),
(35, 27, '_edit_last', '1'),
(36, 27, '_wp_page_template', 'default'),
(38, 29, '_edit_last', '1'),
(39, 29, '_wp_page_template', 'default'),
(41, 33, '_edit_lock', '1615742664:1'),
(43, 35, '_edit_lock', '1615645967:1'),
(45, 37, '_edit_lock', '1615645972:1'),
(47, 39, '_edit_lock', '1615645979:1'),
(49, 33, '_edit_last', '1'),
(50, 33, '_wp_page_template', 'default'),
(52, 35, '_edit_last', '1'),
(53, 35, '_wp_page_template', 'default'),
(55, 37, '_edit_last', '1'),
(56, 37, '_wp_page_template', 'default'),
(58, 39, '_edit_last', '1'),
(59, 39, '_wp_page_template', 'default'),
(63, 27, '_wp_old_slug', 'introduction'),
(64, 42, '_edit_lock', '1615646047:1'),
(66, 44, '_edit_lock', '1615646248:1'),
(68, 46, '_edit_lock', '1615646676:1'),
(70, 48, '_edit_lock', '1615647468:1'),
(72, 50, '_edit_lock', '1615647614:1'),
(74, 52, '_edit_lock', '1615648260:1'),
(76, 54, '_edit_lock', '1615648651:1'),
(78, 56, '_edit_lock', '1615648987:1'),
(80, 58, '_edit_lock', '1615649081:1'),
(82, 60, '_edit_lock', '1615742368:1'),
(83, 64, '_edit_last', '1'),
(84, 64, '_edit_lock', '1615749995:1'),
(85, 64, '_regular_price', '23.50'),
(86, 64, 'total_sales', '0'),
(87, 64, '_tax_status', 'taxable'),
(88, 64, '_tax_class', ''),
(89, 64, '_manage_stock', 'no'),
(90, 64, '_backorders', 'no'),
(91, 64, '_sold_individually', 'no'),
(92, 64, '_virtual', 'no'),
(93, 64, '_downloadable', 'no'),
(94, 64, '_download_limit', '-1'),
(95, 64, '_download_expiry', '-1'),
(96, 64, '_stock', NULL),
(97, 64, '_stock_status', 'instock'),
(98, 64, '_wc_average_rating', '0'),
(99, 64, '_wc_review_count', '0'),
(100, 64, '_product_version', '5.1.0'),
(101, 64, '_price', '23.50'),
(102, 66, '_edit_last', '1'),
(103, 66, '_edit_lock', '1615753515:1'),
(104, 66, '_regular_price', '31.10'),
(105, 66, 'total_sales', '0'),
(106, 66, '_tax_status', 'taxable'),
(107, 66, '_tax_class', ''),
(108, 66, '_manage_stock', 'no'),
(109, 66, '_backorders', 'no'),
(110, 66, '_sold_individually', 'no'),
(111, 66, '_virtual', 'no'),
(112, 66, '_downloadable', 'no'),
(113, 66, '_download_limit', '-1'),
(114, 66, '_download_expiry', '-1'),
(115, 66, '_stock', NULL),
(116, 66, '_stock_status', 'instock'),
(117, 66, '_wc_average_rating', '0'),
(118, 66, '_wc_review_count', '0'),
(119, 66, '_product_version', '5.1.0'),
(120, 66, '_price', '31.10'),
(121, 67, '_edit_last', '1'),
(122, 67, '_edit_lock', '1615753485:1'),
(123, 67, '_regular_price', '57.90'),
(124, 67, 'total_sales', '0'),
(125, 67, '_tax_status', 'taxable'),
(126, 67, '_tax_class', ''),
(127, 67, '_manage_stock', 'no'),
(128, 67, '_backorders', 'no'),
(129, 67, '_sold_individually', 'no'),
(130, 67, '_virtual', 'no'),
(131, 67, '_downloadable', 'no'),
(132, 67, '_download_limit', '-1'),
(133, 67, '_download_expiry', '-1'),
(134, 67, '_stock', NULL),
(135, 67, '_stock_status', 'instock'),
(136, 67, '_wc_average_rating', '0'),
(137, 67, '_wc_review_count', '0'),
(138, 67, '_product_version', '5.1.0'),
(139, 67, '_price', '57.90'),
(140, 68, '_edit_last', '1'),
(141, 68, '_edit_lock', '1615753448:1'),
(142, 68, '_regular_price', '154.50'),
(143, 68, 'total_sales', '0'),
(144, 68, '_tax_status', 'taxable'),
(145, 68, '_tax_class', ''),
(146, 68, '_manage_stock', 'no'),
(147, 68, '_backorders', 'no'),
(148, 68, '_sold_individually', 'no'),
(149, 68, '_virtual', 'no'),
(150, 68, '_downloadable', 'no'),
(151, 68, '_download_limit', '-1'),
(152, 68, '_download_expiry', '-1'),
(153, 68, '_stock', NULL),
(154, 68, '_stock_status', 'instock'),
(155, 68, '_wc_average_rating', '0'),
(156, 68, '_wc_review_count', '0'),
(157, 68, '_product_version', '5.1.0'),
(158, 68, '_price', '154.50'),
(159, 69, '_edit_last', '1'),
(160, 69, '_edit_lock', '1615753419:1'),
(161, 69, '_regular_price', '29.50'),
(162, 69, 'total_sales', '0'),
(163, 69, '_tax_status', 'taxable'),
(164, 69, '_tax_class', ''),
(165, 69, '_manage_stock', 'no'),
(166, 69, '_backorders', 'no'),
(167, 69, '_sold_individually', 'no'),
(168, 69, '_virtual', 'no'),
(169, 69, '_downloadable', 'no'),
(170, 69, '_download_limit', '-1'),
(171, 69, '_download_expiry', '-1'),
(172, 69, '_stock', NULL),
(173, 69, '_stock_status', 'instock'),
(174, 69, '_wc_average_rating', '0'),
(175, 69, '_wc_review_count', '0'),
(176, 69, '_product_version', '5.1.0'),
(177, 69, '_price', '29.50'),
(178, 70, '_edit_last', '1'),
(179, 70, '_edit_lock', '1615753389:1'),
(180, 70, '_regular_price', '56.30'),
(181, 70, 'total_sales', '0'),
(182, 70, '_tax_status', 'taxable'),
(183, 70, '_tax_class', ''),
(184, 70, '_manage_stock', 'no'),
(185, 70, '_backorders', 'no'),
(186, 70, '_sold_individually', 'no'),
(187, 70, '_virtual', 'no'),
(188, 70, '_downloadable', 'no'),
(189, 70, '_download_limit', '-1'),
(190, 70, '_download_expiry', '-1'),
(191, 70, '_stock', NULL),
(192, 70, '_stock_status', 'instock'),
(193, 70, '_wc_average_rating', '0'),
(194, 70, '_wc_review_count', '0'),
(195, 70, '_product_version', '5.1.0'),
(196, 70, '_price', '56.30'),
(197, 71, '_edit_last', '1'),
(198, 71, '_edit_lock', '1615753361:1'),
(199, 71, '_regular_price', '134.90'),
(200, 71, 'total_sales', '0'),
(201, 71, '_tax_status', 'taxable'),
(202, 71, '_tax_class', ''),
(203, 71, '_manage_stock', 'no'),
(204, 71, '_backorders', 'no'),
(205, 71, '_sold_individually', 'no'),
(206, 71, '_virtual', 'no'),
(207, 71, '_downloadable', 'no'),
(208, 71, '_download_limit', '-1'),
(209, 71, '_download_expiry', '-1'),
(210, 71, '_stock', NULL),
(211, 71, '_stock_status', 'instock'),
(212, 71, '_wc_average_rating', '0'),
(213, 71, '_wc_review_count', '0'),
(214, 71, '_product_version', '5.1.0'),
(215, 71, '_price', '134.90'),
(216, 73, '_edit_last', '1'),
(217, 73, '_edit_lock', '1615753280:1'),
(218, 73, '_regular_price', '29.90'),
(219, 73, 'total_sales', '0'),
(220, 73, '_tax_status', 'taxable'),
(221, 73, '_tax_class', ''),
(222, 73, '_manage_stock', 'no'),
(223, 73, '_backorders', 'no'),
(224, 73, '_sold_individually', 'no'),
(225, 73, '_virtual', 'no'),
(226, 73, '_downloadable', 'no'),
(227, 73, '_download_limit', '-1'),
(228, 73, '_download_expiry', '-1'),
(229, 73, '_stock', NULL),
(230, 73, '_stock_status', 'instock'),
(231, 73, '_wc_average_rating', '0'),
(232, 73, '_wc_review_count', '0'),
(233, 73, '_product_version', '5.1.0'),
(234, 73, '_price', '29.90'),
(235, 74, '_edit_last', '1'),
(236, 74, '_edit_lock', '1615753255:1'),
(237, 74, '_regular_price', '56.80'),
(238, 74, 'total_sales', '0'),
(239, 74, '_tax_status', 'taxable'),
(240, 74, '_tax_class', ''),
(241, 74, '_manage_stock', 'no'),
(242, 74, '_backorders', 'no'),
(243, 74, '_sold_individually', 'no'),
(244, 74, '_virtual', 'no'),
(245, 74, '_downloadable', 'no'),
(246, 74, '_download_limit', '-1'),
(247, 74, '_download_expiry', '-1'),
(248, 74, '_stock', NULL),
(249, 74, '_stock_status', 'instock'),
(250, 74, '_wc_average_rating', '0'),
(251, 74, '_wc_review_count', '0'),
(252, 74, '_product_version', '5.1.0'),
(253, 74, '_price', '56.80'),
(254, 75, '_edit_last', '1'),
(255, 75, '_edit_lock', '1615753222:1'),
(256, 75, '_regular_price', '110.40'),
(257, 75, 'total_sales', '0'),
(258, 75, '_tax_status', 'taxable'),
(259, 75, '_tax_class', ''),
(260, 75, '_manage_stock', 'no'),
(261, 75, '_backorders', 'no'),
(262, 75, '_sold_individually', 'no'),
(263, 75, '_virtual', 'no'),
(264, 75, '_downloadable', 'no'),
(265, 75, '_download_limit', '-1'),
(266, 75, '_download_expiry', '-1'),
(267, 75, '_stock', NULL),
(268, 75, '_stock_status', 'instock'),
(269, 75, '_wc_average_rating', '0'),
(270, 75, '_wc_review_count', '0'),
(271, 75, '_product_version', '5.1.0'),
(272, 75, '_price', '110.40'),
(273, 76, '_edit_last', '1'),
(274, 76, '_edit_lock', '1615753183:1'),
(275, 76, '_regular_price', '29.90'),
(276, 76, 'total_sales', '0'),
(277, 76, '_tax_status', 'taxable'),
(278, 76, '_tax_class', ''),
(279, 76, '_manage_stock', 'no'),
(280, 76, '_backorders', 'no'),
(281, 76, '_sold_individually', 'no'),
(282, 76, '_virtual', 'no'),
(283, 76, '_downloadable', 'no'),
(284, 76, '_download_limit', '-1'),
(285, 76, '_download_expiry', '-1'),
(286, 76, '_stock', NULL),
(287, 76, '_stock_status', 'instock'),
(288, 76, '_wc_average_rating', '0'),
(289, 76, '_wc_review_count', '0'),
(290, 76, '_product_version', '5.1.0'),
(291, 76, '_price', '29.90'),
(292, 77, '_edit_last', '1'),
(293, 77, '_edit_lock', '1615753133:1'),
(294, 77, '_regular_price', '19.50'),
(295, 77, 'total_sales', '0'),
(296, 77, '_tax_status', 'taxable'),
(297, 77, '_tax_class', ''),
(298, 77, '_manage_stock', 'no'),
(299, 77, '_backorders', 'no'),
(300, 77, '_sold_individually', 'no'),
(301, 77, '_virtual', 'no'),
(302, 77, '_downloadable', 'no'),
(303, 77, '_download_limit', '-1'),
(304, 77, '_download_expiry', '-1'),
(305, 77, '_stock', NULL),
(306, 77, '_stock_status', 'instock'),
(307, 77, '_wc_average_rating', '0'),
(308, 77, '_wc_review_count', '0'),
(309, 77, '_product_version', '5.1.0'),
(310, 77, '_price', '19.50'),
(311, 78, '_edit_last', '1'),
(312, 78, '_edit_lock', '1615753108:1'),
(313, 78, '_regular_price', '37.90'),
(314, 78, 'total_sales', '0'),
(315, 78, '_tax_status', 'taxable'),
(316, 78, '_tax_class', ''),
(317, 78, '_manage_stock', 'no'),
(318, 78, '_backorders', 'no'),
(319, 78, '_sold_individually', 'no'),
(320, 78, '_virtual', 'no'),
(321, 78, '_downloadable', 'no'),
(322, 78, '_download_limit', '-1'),
(323, 78, '_download_expiry', '-1'),
(324, 78, '_stock', NULL),
(325, 78, '_stock_status', 'instock'),
(326, 78, '_wc_average_rating', '0'),
(327, 78, '_wc_review_count', '0'),
(328, 78, '_product_version', '5.1.0'),
(329, 78, '_price', '37.90'),
(330, 79, '_edit_last', '1'),
(331, 79, '_edit_lock', '1615753077:1'),
(332, 79, '_regular_price', '37.90'),
(333, 79, 'total_sales', '0'),
(334, 79, '_tax_status', 'taxable'),
(335, 79, '_tax_class', ''),
(336, 79, '_manage_stock', 'no'),
(337, 79, '_backorders', 'no'),
(338, 79, '_sold_individually', 'no'),
(339, 79, '_virtual', 'no'),
(340, 79, '_downloadable', 'no'),
(341, 79, '_download_limit', '-1'),
(342, 79, '_download_expiry', '-1'),
(343, 79, '_stock', NULL),
(344, 79, '_stock_status', 'instock'),
(345, 79, '_wc_average_rating', '0'),
(346, 79, '_wc_review_count', '0'),
(347, 79, '_product_version', '5.1.0'),
(348, 79, '_price', '37.90'),
(349, 81, '_edit_last', '1'),
(350, 81, '_edit_lock', '1615753028:1'),
(351, 81, '_regular_price', '1.90'),
(352, 81, 'total_sales', '0'),
(353, 81, '_tax_status', 'taxable'),
(354, 81, '_tax_class', ''),
(355, 81, '_manage_stock', 'no'),
(356, 81, '_backorders', 'no'),
(357, 81, '_sold_individually', 'no'),
(358, 81, '_virtual', 'no'),
(359, 81, '_downloadable', 'no'),
(360, 81, '_download_limit', '-1'),
(361, 81, '_download_expiry', '-1'),
(362, 81, '_stock', NULL),
(363, 81, '_stock_status', 'instock'),
(364, 81, '_wc_average_rating', '0'),
(365, 81, '_wc_review_count', '0'),
(366, 81, '_product_version', '5.1.0'),
(367, 81, '_price', '1.90'),
(368, 82, '_edit_last', '1'),
(369, 82, '_edit_lock', '1615752997:1'),
(370, 82, '_regular_price', '55.00'),
(371, 82, 'total_sales', '0'),
(372, 82, '_tax_status', 'taxable'),
(373, 82, '_tax_class', ''),
(374, 82, '_manage_stock', 'no'),
(375, 82, '_backorders', 'no'),
(376, 82, '_sold_individually', 'no'),
(377, 82, '_virtual', 'no'),
(378, 82, '_downloadable', 'no'),
(379, 82, '_download_limit', '-1'),
(380, 82, '_download_expiry', '-1'),
(381, 82, '_stock', NULL),
(382, 82, '_stock_status', 'instock'),
(383, 82, '_wc_average_rating', '0'),
(384, 82, '_wc_review_count', '0'),
(385, 82, '_product_version', '5.1.0'),
(386, 82, '_price', '55.00'),
(387, 83, '_edit_last', '1'),
(388, 83, '_edit_lock', '1615752950:1'),
(389, 83, '_regular_price', '39.00'),
(390, 83, 'total_sales', '0'),
(391, 83, '_tax_status', 'taxable'),
(392, 83, '_tax_class', ''),
(393, 83, '_manage_stock', 'no'),
(394, 83, '_backorders', 'no'),
(395, 83, '_sold_individually', 'no'),
(396, 83, '_virtual', 'no'),
(397, 83, '_downloadable', 'no'),
(398, 83, '_download_limit', '-1'),
(399, 83, '_download_expiry', '-1'),
(400, 83, '_stock', NULL),
(401, 83, '_stock_status', 'instock'),
(402, 83, '_wc_average_rating', '0'),
(403, 83, '_wc_review_count', '0'),
(404, 83, '_product_version', '5.1.0'),
(405, 83, '_price', '39.00'),
(406, 84, '_edit_last', '1'),
(407, 84, '_edit_lock', '1615752918:1'),
(408, 84, '_regular_price', '49.00'),
(409, 84, 'total_sales', '0'),
(410, 84, '_tax_status', 'taxable'),
(411, 84, '_tax_class', ''),
(412, 84, '_manage_stock', 'no'),
(413, 84, '_backorders', 'no'),
(414, 84, '_sold_individually', 'no'),
(415, 84, '_virtual', 'no'),
(416, 84, '_downloadable', 'no'),
(417, 84, '_download_limit', '-1'),
(418, 84, '_download_expiry', '-1'),
(419, 84, '_stock', NULL),
(420, 84, '_stock_status', 'instock'),
(421, 84, '_wc_average_rating', '0'),
(422, 84, '_wc_review_count', '0'),
(423, 84, '_product_version', '5.1.0'),
(424, 84, '_price', '49.00'),
(425, 85, '_edit_last', '1'),
(426, 85, '_edit_lock', '1615752876:1'),
(427, 85, '_regular_price', '46.00'),
(428, 85, 'total_sales', '0'),
(429, 85, '_tax_status', 'taxable'),
(430, 85, '_tax_class', ''),
(431, 85, '_manage_stock', 'no'),
(432, 85, '_backorders', 'no'),
(433, 85, '_sold_individually', 'no'),
(434, 85, '_virtual', 'no'),
(435, 85, '_downloadable', 'no'),
(436, 85, '_download_limit', '-1'),
(437, 85, '_download_expiry', '-1'),
(438, 85, '_stock', NULL),
(439, 85, '_stock_status', 'instock'),
(440, 85, '_wc_average_rating', '0'),
(441, 85, '_wc_review_count', '0'),
(442, 85, '_product_version', '5.1.0'),
(443, 85, '_price', '46.00'),
(444, 86, '_edit_last', '1'),
(445, 86, '_edit_lock', '1615752843:1'),
(446, 86, '_regular_price', '45.00'),
(447, 86, 'total_sales', '0'),
(448, 86, '_tax_status', 'taxable'),
(449, 86, '_tax_class', ''),
(450, 86, '_manage_stock', 'no'),
(451, 86, '_backorders', 'no'),
(452, 86, '_sold_individually', 'no'),
(453, 86, '_virtual', 'no'),
(454, 86, '_downloadable', 'no'),
(455, 86, '_download_limit', '-1'),
(456, 86, '_download_expiry', '-1'),
(457, 86, '_stock', NULL),
(458, 86, '_stock_status', 'instock'),
(459, 86, '_wc_average_rating', '0'),
(460, 86, '_wc_review_count', '0'),
(461, 86, '_product_version', '5.1.0'),
(462, 86, '_price', '45.00'),
(463, 87, '_edit_last', '1'),
(464, 87, '_edit_lock', '1615750568:1'),
(465, 87, '_regular_price', '42.00'),
(466, 87, 'total_sales', '0'),
(467, 87, '_tax_status', 'taxable'),
(468, 87, '_tax_class', ''),
(469, 87, '_manage_stock', 'no'),
(470, 87, '_backorders', 'no'),
(471, 87, '_sold_individually', 'no'),
(472, 87, '_virtual', 'no'),
(473, 87, '_downloadable', 'no'),
(474, 87, '_download_limit', '-1'),
(475, 87, '_download_expiry', '-1'),
(476, 87, '_stock', NULL),
(477, 87, '_stock_status', 'instock'),
(478, 87, '_wc_average_rating', '0'),
(479, 87, '_wc_review_count', '0'),
(480, 87, '_product_version', '5.1.0'),
(481, 87, '_price', '42.00'),
(482, 88, '_edit_last', '1'),
(483, 88, '_edit_lock', '1615750540:1'),
(484, 88, '_regular_price', '46.00'),
(485, 88, 'total_sales', '0'),
(486, 88, '_tax_status', 'taxable'),
(487, 88, '_tax_class', ''),
(488, 88, '_manage_stock', 'no'),
(489, 88, '_backorders', 'no'),
(490, 88, '_sold_individually', 'no'),
(491, 88, '_virtual', 'no'),
(492, 88, '_downloadable', 'no'),
(493, 88, '_download_limit', '-1'),
(494, 88, '_download_expiry', '-1'),
(495, 88, '_stock', NULL),
(496, 88, '_stock_status', 'instock'),
(497, 88, '_wc_average_rating', '0'),
(498, 88, '_wc_review_count', '0'),
(499, 88, '_product_version', '5.1.0'),
(500, 88, '_price', '46.00'),
(501, 89, '_edit_last', '1'),
(502, 89, '_edit_lock', '1615750517:1'),
(503, 89, '_regular_price', '37.00'),
(504, 89, 'total_sales', '0'),
(505, 89, '_tax_status', 'taxable'),
(506, 89, '_tax_class', ''),
(507, 89, '_manage_stock', 'no'),
(508, 89, '_backorders', 'no'),
(509, 89, '_sold_individually', 'no'),
(510, 89, '_virtual', 'no'),
(511, 89, '_downloadable', 'no'),
(512, 89, '_download_limit', '-1'),
(513, 89, '_download_expiry', '-1'),
(514, 89, '_stock', NULL),
(515, 89, '_stock_status', 'instock'),
(516, 89, '_wc_average_rating', '0'),
(517, 89, '_wc_review_count', '0'),
(518, 89, '_product_version', '5.1.0'),
(519, 89, '_price', '37.00'),
(520, 90, '_edit_last', '1'),
(521, 90, '_edit_lock', '1615750491:1'),
(522, 90, '_regular_price', '40.00'),
(523, 90, 'total_sales', '0'),
(524, 90, '_tax_status', 'taxable'),
(525, 90, '_tax_class', ''),
(526, 90, '_manage_stock', 'no'),
(527, 90, '_backorders', 'no'),
(528, 90, '_sold_individually', 'no'),
(529, 90, '_virtual', 'no'),
(530, 90, '_downloadable', 'no'),
(531, 90, '_download_limit', '-1'),
(532, 90, '_download_expiry', '-1'),
(533, 90, '_stock', NULL),
(534, 90, '_stock_status', 'instock'),
(535, 90, '_wc_average_rating', '0'),
(536, 90, '_wc_review_count', '0'),
(537, 90, '_product_version', '5.1.0'),
(538, 90, '_price', '40.00'),
(539, 91, '_edit_last', '1'),
(540, 91, '_edit_lock', '1615750464:1'),
(541, 91, '_regular_price', '49.00'),
(542, 91, 'total_sales', '0'),
(543, 91, '_tax_status', 'taxable'),
(544, 91, '_tax_class', ''),
(545, 91, '_manage_stock', 'no'),
(546, 91, '_backorders', 'no'),
(547, 91, '_sold_individually', 'no'),
(548, 91, '_virtual', 'no'),
(549, 91, '_downloadable', 'no'),
(550, 91, '_download_limit', '-1'),
(551, 91, '_download_expiry', '-1'),
(552, 91, '_stock', NULL),
(553, 91, '_stock_status', 'instock'),
(554, 91, '_wc_average_rating', '0'),
(555, 91, '_wc_review_count', '0'),
(556, 91, '_product_version', '5.1.0'),
(557, 91, '_price', '49.00'),
(558, 92, '_edit_last', '1'),
(559, 92, '_edit_lock', '1615750435:1'),
(560, 92, '_regular_price', '42.00'),
(561, 92, 'total_sales', '0'),
(562, 92, '_tax_status', 'taxable'),
(563, 92, '_tax_class', ''),
(564, 92, '_manage_stock', 'no'),
(565, 92, '_backorders', 'no'),
(566, 92, '_sold_individually', 'no'),
(567, 92, '_virtual', 'no'),
(568, 92, '_downloadable', 'no'),
(569, 92, '_download_limit', '-1'),
(570, 92, '_download_expiry', '-1'),
(571, 92, '_stock', NULL),
(572, 92, '_stock_status', 'instock'),
(573, 92, '_wc_average_rating', '0'),
(574, 92, '_wc_review_count', '0'),
(575, 92, '_product_version', '5.1.0'),
(576, 92, '_price', '42.00'),
(577, 93, '_edit_last', '1'),
(578, 93, '_edit_lock', '1615750411:1'),
(579, 93, '_regular_price', '46.00'),
(580, 93, 'total_sales', '0'),
(581, 93, '_tax_status', 'taxable'),
(582, 93, '_tax_class', ''),
(583, 93, '_manage_stock', 'no'),
(584, 93, '_backorders', 'no'),
(585, 93, '_sold_individually', 'no'),
(586, 93, '_virtual', 'no'),
(587, 93, '_downloadable', 'no'),
(588, 93, '_download_limit', '-1'),
(589, 93, '_download_expiry', '-1'),
(590, 93, '_stock', NULL),
(591, 93, '_stock_status', 'instock'),
(592, 93, '_wc_average_rating', '0'),
(593, 93, '_wc_review_count', '0'),
(594, 93, '_product_version', '5.1.0'),
(595, 93, '_price', '46.00'),
(596, 94, '_edit_last', '1'),
(597, 94, '_edit_lock', '1615750390:1'),
(598, 94, '_regular_price', '47.00'),
(599, 94, 'total_sales', '0'),
(600, 94, '_tax_status', 'taxable'),
(601, 94, '_tax_class', ''),
(602, 94, '_manage_stock', 'no'),
(603, 94, '_backorders', 'no'),
(604, 94, '_sold_individually', 'no'),
(605, 94, '_virtual', 'no'),
(606, 94, '_downloadable', 'no'),
(607, 94, '_download_limit', '-1'),
(608, 94, '_download_expiry', '-1'),
(609, 94, '_stock', NULL),
(610, 94, '_stock_status', 'instock'),
(611, 94, '_wc_average_rating', '0'),
(612, 94, '_wc_review_count', '0'),
(613, 94, '_product_version', '5.1.0'),
(614, 94, '_price', '47.00'),
(615, 95, '_edit_last', '1'),
(616, 95, '_edit_lock', '1615750359:1'),
(617, 95, '_regular_price', '42.00'),
(618, 95, 'total_sales', '0'),
(619, 95, '_tax_status', 'taxable'),
(620, 95, '_tax_class', ''),
(621, 95, '_manage_stock', 'no'),
(622, 95, '_backorders', 'no'),
(623, 95, '_sold_individually', 'no'),
(624, 95, '_virtual', 'no'),
(625, 95, '_downloadable', 'no'),
(626, 95, '_download_limit', '-1'),
(627, 95, '_download_expiry', '-1'),
(628, 95, '_stock', NULL),
(629, 95, '_stock_status', 'instock'),
(630, 95, '_wc_average_rating', '0'),
(631, 95, '_wc_review_count', '0'),
(632, 95, '_product_version', '5.1.0'),
(633, 95, '_price', '42.00'),
(634, 96, '_edit_last', '1'),
(635, 96, '_edit_lock', '1615750322:1'),
(636, 96, '_regular_price', '44.00'),
(637, 96, 'total_sales', '0'),
(638, 96, '_tax_status', 'taxable'),
(639, 96, '_tax_class', ''),
(640, 96, '_manage_stock', 'no'),
(641, 96, '_backorders', 'no'),
(642, 96, '_sold_individually', 'no'),
(643, 96, '_virtual', 'no'),
(644, 96, '_downloadable', 'no'),
(645, 96, '_download_limit', '-1'),
(646, 96, '_download_expiry', '-1'),
(647, 96, '_stock', NULL),
(648, 96, '_stock_status', 'instock'),
(649, 96, '_wc_average_rating', '0'),
(650, 96, '_wc_review_count', '0'),
(651, 96, '_product_version', '5.1.0'),
(652, 96, '_price', '44.00'),
(653, 97, '_edit_last', '1'),
(654, 97, '_edit_lock', '1615750293:1'),
(655, 97, '_regular_price', '59.00'),
(656, 97, 'total_sales', '0'),
(657, 97, '_tax_status', 'taxable'),
(658, 97, '_tax_class', ''),
(659, 97, '_manage_stock', 'no'),
(660, 97, '_backorders', 'no'),
(661, 97, '_sold_individually', 'no'),
(662, 97, '_virtual', 'no'),
(663, 97, '_downloadable', 'no'),
(664, 97, '_download_limit', '-1'),
(665, 97, '_download_expiry', '-1'),
(666, 97, '_stock', NULL),
(667, 97, '_stock_status', 'instock'),
(668, 97, '_wc_average_rating', '0'),
(669, 97, '_wc_review_count', '0'),
(670, 97, '_product_version', '5.1.0'),
(671, 97, '_price', '59.00'),
(672, 98, '_edit_last', '1'),
(673, 98, '_edit_lock', '1615750259:1'),
(674, 98, '_regular_price', '59.00'),
(675, 98, 'total_sales', '0'),
(676, 98, '_tax_status', 'taxable'),
(677, 98, '_tax_class', ''),
(678, 98, '_manage_stock', 'no'),
(679, 98, '_backorders', 'no'),
(680, 98, '_sold_individually', 'no'),
(681, 98, '_virtual', 'no'),
(682, 98, '_downloadable', 'no'),
(683, 98, '_download_limit', '-1'),
(684, 98, '_download_expiry', '-1'),
(685, 98, '_stock', NULL),
(686, 98, '_stock_status', 'instock'),
(687, 98, '_wc_average_rating', '0'),
(688, 98, '_wc_review_count', '0'),
(689, 98, '_product_version', '5.1.0'),
(690, 98, '_price', '59.00'),
(691, 99, '_edit_last', '1'),
(692, 99, '_edit_lock', '1615750231:1'),
(693, 99, '_regular_price', '59.00'),
(694, 99, 'total_sales', '0'),
(695, 99, '_tax_status', 'taxable'),
(696, 99, '_tax_class', ''),
(697, 99, '_manage_stock', 'no'),
(698, 99, '_backorders', 'no'),
(699, 99, '_sold_individually', 'no'),
(700, 99, '_virtual', 'no'),
(701, 99, '_downloadable', 'no'),
(702, 99, '_download_limit', '-1'),
(703, 99, '_download_expiry', '-1'),
(704, 99, '_stock', NULL),
(705, 99, '_stock_status', 'instock'),
(706, 99, '_wc_average_rating', '0'),
(707, 99, '_wc_review_count', '0'),
(708, 99, '_product_version', '5.1.0'),
(709, 99, '_price', '59.00'),
(710, 100, '_edit_last', '1'),
(711, 100, '_edit_lock', '1615750209:1'),
(712, 100, '_regular_price', '59.00'),
(713, 100, 'total_sales', '0'),
(714, 100, '_tax_status', 'taxable'),
(715, 100, '_tax_class', ''),
(716, 100, '_manage_stock', 'no'),
(717, 100, '_backorders', 'no'),
(718, 100, '_sold_individually', 'no'),
(719, 100, '_virtual', 'no'),
(720, 100, '_downloadable', 'no'),
(721, 100, '_download_limit', '-1'),
(722, 100, '_download_expiry', '-1'),
(723, 100, '_stock', NULL),
(724, 100, '_stock_status', 'instock'),
(725, 100, '_wc_average_rating', '0'),
(726, 100, '_wc_review_count', '0'),
(727, 100, '_product_version', '5.1.0'),
(728, 100, '_price', '59.00'),
(729, 101, '_edit_last', '1'),
(730, 101, '_edit_lock', '1615750161:1'),
(731, 101, '_regular_price', '90.00'),
(732, 101, 'total_sales', '0'),
(733, 101, '_tax_status', 'taxable'),
(734, 101, '_tax_class', ''),
(735, 101, '_manage_stock', 'no'),
(736, 101, '_backorders', 'no'),
(737, 101, '_sold_individually', 'no'),
(738, 101, '_virtual', 'no'),
(739, 101, '_downloadable', 'no'),
(740, 101, '_download_limit', '-1'),
(741, 101, '_download_expiry', '-1'),
(742, 101, '_stock', NULL),
(743, 101, '_stock_status', 'instock'),
(744, 101, '_wc_average_rating', '0'),
(745, 101, '_wc_review_count', '0'),
(746, 101, '_product_version', '5.1.0'),
(747, 101, '_price', '90.00'),
(748, 102, '_edit_last', '1'),
(749, 102, '_edit_lock', '1615750135:1'),
(750, 102, '_regular_price', '58.00'),
(751, 102, 'total_sales', '0'),
(752, 102, '_tax_status', 'taxable'),
(753, 102, '_tax_class', ''),
(754, 102, '_manage_stock', 'no'),
(755, 102, '_backorders', 'no'),
(756, 102, '_sold_individually', 'no'),
(757, 102, '_virtual', 'no'),
(758, 102, '_downloadable', 'no'),
(759, 102, '_download_limit', '-1'),
(760, 102, '_download_expiry', '-1'),
(761, 102, '_stock', NULL),
(762, 102, '_stock_status', 'instock'),
(763, 102, '_wc_average_rating', '0'),
(764, 102, '_wc_review_count', '0'),
(765, 102, '_product_version', '5.1.0'),
(766, 102, '_price', '58.00'),
(767, 103, '_edit_last', '1'),
(768, 103, '_edit_lock', '1615750104:1'),
(769, 103, '_regular_price', '54.90'),
(770, 103, 'total_sales', '0'),
(771, 103, '_tax_status', 'taxable'),
(772, 103, '_tax_class', ''),
(773, 103, '_manage_stock', 'no'),
(774, 103, '_backorders', 'no'),
(775, 103, '_sold_individually', 'no'),
(776, 103, '_virtual', 'no'),
(777, 103, '_downloadable', 'no'),
(778, 103, '_download_limit', '-1'),
(779, 103, '_download_expiry', '-1'),
(780, 103, '_stock', NULL),
(781, 103, '_stock_status', 'instock'),
(782, 103, '_wc_average_rating', '0'),
(783, 103, '_wc_review_count', '0'),
(784, 103, '_product_version', '5.1.0'),
(785, 103, '_price', '54.90'),
(786, 104, '_edit_last', '1'),
(787, 104, '_edit_lock', '1615750074:1'),
(788, 104, '_regular_price', '57.00'),
(789, 104, 'total_sales', '0'),
(790, 104, '_tax_status', 'taxable'),
(791, 104, '_tax_class', ''),
(792, 104, '_manage_stock', 'no'),
(793, 104, '_backorders', 'no'),
(794, 104, '_sold_individually', 'no'),
(795, 104, '_virtual', 'no'),
(796, 104, '_downloadable', 'no'),
(797, 104, '_download_limit', '-1'),
(798, 104, '_download_expiry', '-1'),
(799, 104, '_stock', NULL),
(800, 104, '_stock_status', 'instock'),
(801, 104, '_wc_average_rating', '0'),
(802, 104, '_wc_review_count', '0'),
(803, 104, '_product_version', '5.1.0'),
(804, 104, '_price', '57.00'),
(805, 105, '_edit_last', '1'),
(806, 105, '_edit_lock', '1615750047:1'),
(807, 105, '_regular_price', '19.90'),
(808, 105, 'total_sales', '0'),
(809, 105, '_tax_status', 'taxable'),
(810, 105, '_tax_class', ''),
(811, 105, '_manage_stock', 'no'),
(812, 105, '_backorders', 'no'),
(813, 105, '_sold_individually', 'no'),
(814, 105, '_virtual', 'no'),
(815, 105, '_downloadable', 'no'),
(816, 105, '_download_limit', '-1'),
(817, 105, '_download_expiry', '-1'),
(818, 105, '_stock', NULL),
(819, 105, '_stock_status', 'instock'),
(820, 105, '_wc_average_rating', '0'),
(821, 105, '_wc_review_count', '0'),
(822, 105, '_product_version', '5.1.0'),
(823, 105, '_price', '19.90'),
(824, 106, '_edit_last', '1'),
(825, 106, '_edit_lock', '1615750025:1'),
(826, 106, '_regular_price', '29.90'),
(827, 106, 'total_sales', '0'),
(828, 106, '_tax_status', 'taxable'),
(829, 106, '_tax_class', ''),
(830, 106, '_manage_stock', 'no'),
(831, 106, '_backorders', 'no'),
(832, 106, '_sold_individually', 'no'),
(833, 106, '_virtual', 'no'),
(834, 106, '_downloadable', 'no'),
(835, 106, '_download_limit', '-1'),
(836, 106, '_download_expiry', '-1'),
(837, 106, '_stock', NULL),
(838, 106, '_stock_status', 'instock'),
(839, 106, '_wc_average_rating', '0'),
(840, 106, '_wc_review_count', '0'),
(841, 106, '_product_version', '5.1.0'),
(842, 106, '_price', '29.90'),
(844, 108, '_edit_lock', '1615731338:1'),
(846, 110, '_edit_lock', '1615731112:1'),
(848, 112, '_edit_lock', '1615731310:1'),
(851, 115, '_edit_lock', '1615731810:1'),
(853, 117, '_edit_lock', '1615732108:1'),
(855, 119, '_edit_lock', '1615732939:1'),
(860, 124, '_wp_attached_file', '2021/03/linkedin.png'),
(861, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:54;s:6:"height";i:54;s:4:"file";s:20:"2021/03/linkedin.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(862, 124, '_wp_attachment_image_alt', 'linkedin'),
(866, 129, '_wp_attached_file', '2021/03/introduction_accueil.png'),
(867, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:324;s:4:"file";s:32:"2021/03/introduction_accueil.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:32:"introduction_accueil-300x152.png";s:5:"width";i:300;s:6:"height";i:152;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"introduction_accueil-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"introduction_accueil-450x324.png";s:5:"width";i:450;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"introduction_accueil-600x304.png";s:5:"width";i:600;s:6:"height";i:304;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"introduction_accueil-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"introduction_accueil-450x324.png";s:5:"width";i:450;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:32:"introduction_accueil-600x304.png";s:5:"width";i:600;s:6:"height";i:304;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"introduction_accueil-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(868, 129, '_wp_attachment_image_alt', 'accueil Archibald'),
(870, 27, '_thumbnail_id', '129'),
(871, 130, '_wp_attached_file', '2021/03/accueil_tonic_de_distillerie.png'),
(872, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:980;s:6:"height";i:359;s:4:"file";s:40:"2021/03/accueil_tonic_de_distillerie.png";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-300x110.png";s:5:"width";i:300;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-768x281.png";s:5:"width";i:768;s:6:"height";i:281;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:40:"accueil_tonic_de_distillerie-450x359.png";s:5:"width";i:450;s:6:"height";i:359;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-600x220.png";s:5:"width";i:600;s:6:"height";i:220;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-450x359.png";s:5:"width";i:450;s:6:"height";i:359;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-600x220.png";s:5:"width";i:600;s:6:"height";i:220;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"accueil_tonic_de_distillerie-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(873, 130, '_wp_attachment_image_alt', 'tonic de distillerie'),
(875, 29, '_thumbnail_id', '130'),
(876, 131, '_wp_attached_file', '2021/03/accueil_archi_engage.png'),
(877, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:955;s:6:"height";i:384;s:4:"file";s:32:"2021/03/accueil_archi_engage.png";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:32:"accueil_archi_engage-300x121.png";s:5:"width";i:300;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"accueil_archi_engage-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:32:"accueil_archi_engage-768x309.png";s:5:"width";i:768;s:6:"height";i:309;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"accueil_archi_engage-450x384.png";s:5:"width";i:450;s:6:"height";i:384;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"accueil_archi_engage-600x241.png";s:5:"width";i:600;s:6:"height";i:241;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"accueil_archi_engage-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"accueil_archi_engage-450x384.png";s:5:"width";i:450;s:6:"height";i:384;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:32:"accueil_archi_engage-600x241.png";s:5:"width";i:600;s:6:"height";i:241;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"accueil_archi_engage-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(878, 131, '_wp_attachment_image_alt', 'engagé et responsable'),
(880, 33, '_thumbnail_id', '131'),
(881, 132, '_menu_item_type', 'post_type'),
(882, 132, '_menu_item_menu_item_parent', '0'),
(883, 132, '_menu_item_object_id', '23'),
(884, 132, '_menu_item_object', 'page'),
(885, 132, '_menu_item_target', ''),
(886, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(887, 132, '_menu_item_xfn', ''),
(888, 132, '_menu_item_url', ''),
(889, 132, '_menu_item_orphaned', '1615742848'),
(890, 133, '_menu_item_type', 'post_type'),
(891, 133, '_menu_item_menu_item_parent', '0'),
(892, 133, '_menu_item_object_id', '22'),
(893, 133, '_menu_item_object', 'page'),
(894, 133, '_menu_item_target', ''),
(895, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(896, 133, '_menu_item_xfn', ''),
(897, 133, '_menu_item_url', ''),
(899, 134, '_menu_item_type', 'post_type'),
(900, 134, '_menu_item_menu_item_parent', '0'),
(901, 134, '_menu_item_object_id', '18'),
(902, 134, '_menu_item_object', 'page'),
(903, 134, '_menu_item_target', ''),
(904, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(905, 134, '_menu_item_xfn', ''),
(906, 134, '_menu_item_url', ''),
(908, 135, '_menu_item_type', 'post_type'),
(909, 135, '_menu_item_menu_item_parent', '0'),
(910, 135, '_menu_item_object_id', '16'),
(911, 135, '_menu_item_object', 'page'),
(912, 135, '_menu_item_target', ''),
(913, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(914, 135, '_menu_item_xfn', ''),
(915, 135, '_menu_item_url', ''),
(917, 136, '_menu_item_type', 'post_type'),
(918, 136, '_menu_item_menu_item_parent', '0'),
(919, 136, '_menu_item_object_id', '14'),
(920, 136, '_menu_item_object', 'page'),
(921, 136, '_menu_item_target', ''),
(922, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(923, 136, '_menu_item_xfn', ''),
(924, 136, '_menu_item_url', ''),
(926, 137, '_menu_item_type', 'post_type'),
(927, 137, '_menu_item_menu_item_parent', '0'),
(928, 137, '_menu_item_object_id', '12'),
(929, 137, '_menu_item_object', 'page'),
(930, 137, '_menu_item_target', ''),
(931, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(932, 137, '_menu_item_xfn', ''),
(933, 137, '_menu_item_url', ''),
(935, 138, '_menu_item_type', 'post_type'),
(936, 138, '_menu_item_menu_item_parent', '0'),
(937, 138, '_menu_item_object_id', '10'),
(938, 138, '_menu_item_object', 'page'),
(939, 138, '_menu_item_target', ''),
(940, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(941, 138, '_menu_item_xfn', ''),
(942, 138, '_menu_item_url', ''),
(953, 140, '_wp_attached_file', '2021/03/archibald_6_20cl.png'),
(954, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:28:"2021/03/archibald_6_20cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:28:"archibald_6_20cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"archibald_6_20cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"archibald_6_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"archibald_6_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"archibald_6_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"archibald_6_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(955, 64, '_thumbnail_id', '140'),
(956, 141, '_wp_attached_file', '2021/03/coffret.png'),
(957, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:19:"2021/03/coffret.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:19:"coffret-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"coffret-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"coffret-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"coffret-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"coffret-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"coffret-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(958, 106, '_thumbnail_id', '141'),
(959, 142, '_wp_attached_file', '2021/03/folle_envie.png'),
(960, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:23:"2021/03/folle_envie.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"folle_envie-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"folle_envie-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"folle_envie-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"folle_envie-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"folle_envie-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"folle_envie-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(961, 105, '_thumbnail_id', '142'),
(962, 143, '_wp_attached_file', '2021/03/verre_printanier.png'),
(963, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:28:"2021/03/verre_printanier.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:28:"verre_printanier-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"verre_printanier-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"verre_printanier-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"verre_printanier-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"verre_printanier-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"verre_printanier-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(964, 104, '_thumbnail_id', '143'),
(965, 144, '_wp_attached_file', '2021/03/planat_cognac_VSOP_bio.png'),
(966, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:34:"2021/03/planat_cognac_VSOP_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:34:"planat_cognac_VSOP_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:34:"planat_cognac_VSOP_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"planat_cognac_VSOP_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"planat_cognac_VSOP_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"planat_cognac_VSOP_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"planat_cognac_VSOP_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(967, 103, '_thumbnail_id', '144'),
(968, 145, '_wp_attached_file', '2021/03/cognac_planat_oscar_bio.png'),
(969, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:35:"2021/03/cognac_planat_oscar_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:35:"cognac_planat_oscar_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"cognac_planat_oscar_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"cognac_planat_oscar_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"cognac_planat_oscar_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"cognac_planat_oscar_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"cognac_planat_oscar_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(970, 102, '_thumbnail_id', '145'),
(971, 146, '_wp_attached_file', '2021/03/cognac_planat_overproof_bio.png'),
(972, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:39:"2021/03/cognac_planat_overproof_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:39:"cognac_planat_overproof_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:39:"cognac_planat_overproof_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:39:"cognac_planat_overproof_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:39:"cognac_planat_overproof_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"cognac_planat_overproof_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"cognac_planat_overproof_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(973, 101, '_thumbnail_id', '146'),
(974, 147, '_wp_attached_file', '2021/03/liqueur_H_matador.png'),
(975, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/liqueur_H_matador.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"liqueur_H_matador-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"liqueur_H_matador-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"liqueur_H_matador-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"liqueur_H_matador-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"liqueur_H_matador-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"liqueur_H_matador-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(976, 100, '_thumbnail_id', '147'),
(977, 148, '_wp_attached_file', '2021/03/liqueur_H_cuir.png'),
(978, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:26:"2021/03/liqueur_H_cuir.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"liqueur_H_cuir-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"liqueur_H_cuir-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"liqueur_H_cuir-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"liqueur_H_cuir-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"liqueur_H_cuir-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"liqueur_H_cuir-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(979, 99, '_thumbnail_id', '148'),
(980, 149, '_wp_attached_file', '2021/03/liqueur_H_fauve.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(981, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:27:"2021/03/liqueur_H_fauve.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:27:"liqueur_H_fauve-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"liqueur_H_fauve-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"liqueur_H_fauve-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"liqueur_H_fauve-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"liqueur_H_fauve-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"liqueur_H_fauve-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(982, 98, '_thumbnail_id', '149'),
(983, 150, '_wp_attached_file', '2021/03/liqueur_H_velvet.png'),
(984, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:28:"2021/03/liqueur_H_velvet.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:28:"liqueur_H_velvet-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"liqueur_H_velvet-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"liqueur_H_velvet-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"liqueur_H_velvet-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"liqueur_H_velvet-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"liqueur_H_velvet-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(985, 97, '_thumbnail_id', '150'),
(986, 151, '_wp_attached_file', '2021/03/moon_gin.png'),
(987, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:20:"2021/03/moon_gin.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"moon_gin-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"moon_gin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"moon_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"moon_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"moon_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"moon_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(988, 96, '_thumbnail_id', '151'),
(989, 152, '_wp_attached_file', '2021/03/bacalan_dry_gin.png'),
(990, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:27:"2021/03/bacalan_dry_gin.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:27:"bacalan_dry_gin-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"bacalan_dry_gin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"bacalan_dry_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"bacalan_dry_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"bacalan_dry_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"bacalan_dry_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(991, 95, '_thumbnail_id', '152'),
(992, 153, '_wp_attached_file', '2021/03/avem_hippolais_gin.png'),
(993, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:30:"2021/03/avem_hippolais_gin.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:30:"avem_hippolais_gin-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"avem_hippolais_gin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"avem_hippolais_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"avem_hippolais_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"avem_hippolais_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"avem_hippolais_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(994, 94, '_thumbnail_id', '153'),
(995, 154, '_wp_attached_file', '2021/03/gin_bandarel_dry.png'),
(996, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:28:"2021/03/gin_bandarel_dry.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:28:"gin_bandarel_dry-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"gin_bandarel_dry-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"gin_bandarel_dry-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"gin_bandarel_dry-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"gin_bandarel_dry-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"gin_bandarel_dry-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(997, 93, '_thumbnail_id', '154'),
(998, 155, '_wp_attached_file', '2021/03/gin_ganesh.png'),
(999, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:22:"2021/03/gin_ganesh.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:22:"gin_ganesh-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"gin_ganesh-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"gin_ganesh-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"gin_ganesh-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"gin_ganesh-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"gin_ganesh-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1000, 92, '_thumbnail_id', '155'),
(1001, 156, '_wp_attached_file', '2021/03/oli_gin.png'),
(1002, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:19:"2021/03/oli_gin.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:19:"oli_gin-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"oli_gin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"oli_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"oli_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"oli_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"oli_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1003, 91, '_thumbnail_id', '156'),
(1004, 157, '_wp_attached_file', '2021/03/blurry_moon_gin_bio.png'),
(1005, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:31:"2021/03/blurry_moon_gin_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:31:"blurry_moon_gin_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"blurry_moon_gin_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"blurry_moon_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"blurry_moon_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"blurry_moon_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"blurry_moon_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1006, 90, '_thumbnail_id', '157'),
(1007, 158, '_wp_attached_file', '2021/03/erika_dry_gin.png'),
(1008, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:25:"2021/03/erika_dry_gin.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:25:"erika_dry_gin-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"erika_dry_gin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:25:"erika_dry_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:25:"erika_dry_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"erika_dry_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"erika_dry_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1009, 89, '_thumbnail_id', '158'),
(1010, 159, '_wp_attached_file', '2021/03/bercloux_gin_bio.png'),
(1011, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:28:"2021/03/bercloux_gin_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:28:"bercloux_gin_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"bercloux_gin_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"bercloux_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"bercloux_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"bercloux_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"bercloux_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1012, 88, '_thumbnail_id', '159'),
(1013, 160, '_wp_attached_file', '2021/03/balea_gin_bio.png'),
(1014, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:25:"2021/03/balea_gin_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:25:"balea_gin_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"balea_gin_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:25:"balea_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:25:"balea_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"balea_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"balea_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1015, 87, '_thumbnail_id', '160'),
(1016, 161, '_menu_item_type', 'post_type'),
(1017, 161, '_menu_item_menu_item_parent', '0'),
(1018, 161, '_menu_item_object_id', '8'),
(1019, 161, '_menu_item_object', 'page'),
(1020, 161, '_menu_item_target', ''),
(1021, 161, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1022, 161, '_menu_item_xfn', ''),
(1023, 161, '_menu_item_url', ''),
(1024, 161, '_menu_item_orphaned', '1615751858'),
(1025, 162, '_menu_item_type', 'custom'),
(1026, 162, '_menu_item_menu_item_parent', '0'),
(1027, 162, '_menu_item_object_id', '162'),
(1028, 162, '_menu_item_object', 'custom'),
(1029, 162, '_menu_item_target', ''),
(1030, 162, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1031, 162, '_menu_item_xfn', ''),
(1032, 162, '_menu_item_url', 'http://projets.bdx.digital-campus.net/archibald/'),
(1034, 163, '_menu_item_type', 'post_type'),
(1035, 163, '_menu_item_menu_item_parent', '0'),
(1036, 163, '_menu_item_object_id', '8'),
(1037, 163, '_menu_item_object', 'page'),
(1038, 163, '_menu_item_target', ''),
(1039, 163, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1040, 163, '_menu_item_xfn', ''),
(1041, 163, '_menu_item_url', ''),
(1042, 163, '_menu_item_orphaned', '1615751896'),
(1043, 164, '_wp_attached_file', '2021/03/lachanenche_gin_bio.png'),
(1044, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:31:"2021/03/lachanenche_gin_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:31:"lachanenche_gin_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"lachanenche_gin_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"lachanenche_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"lachanenche_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"lachanenche_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"lachanenche_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1045, 86, '_thumbnail_id', '164'),
(1046, 165, '_wp_attached_file', '2021/03/gin_mist.png'),
(1047, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:20:"2021/03/gin_mist.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"gin_mist-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"gin_mist-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"gin_mist-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"gin_mist-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"gin_mist-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"gin_mist-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1048, 85, '_thumbnail_id', '165'),
(1049, 166, '_wp_attached_file', '2021/03/petit_grain_gin_agrume.png'),
(1050, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:34:"2021/03/petit_grain_gin_agrume.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:34:"petit_grain_gin_agrume-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:34:"petit_grain_gin_agrume-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"petit_grain_gin_agrume-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"petit_grain_gin_agrume-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"petit_grain_gin_agrume-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"petit_grain_gin_agrume-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1051, 84, '_thumbnail_id', '166'),
(1052, 167, '_wp_attached_file', '2021/03/residence_gin_bio.png'),
(1053, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/residence_gin_bio.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"residence_gin_bio-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"residence_gin_bio-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"residence_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"residence_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"residence_gin_bio-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"residence_gin_bio-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1054, 83, '_thumbnail_id', '167'),
(1055, 168, '_wp_attached_file', '2021/03/pink_pepper_gin.png'),
(1056, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:27:"2021/03/pink_pepper_gin.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:27:"pink_pepper_gin-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"pink_pepper_gin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"pink_pepper_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"pink_pepper_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"pink_pepper_gin-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"pink_pepper_gin-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1057, 82, '_thumbnail_id', '168'),
(1058, 169, '_wp_attached_file', '2021/03/sachet_15_baies_genievre.png'),
(1059, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:440;s:6:"height";i:442;s:4:"file";s:36:"2021/03/sachet_15_baies_genievre.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:36:"sachet_15_baies_genievre-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:36:"sachet_15_baies_genievre-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:36:"sachet_15_baies_genievre-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"sachet_15_baies_genievre-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1060, 81, '_thumbnail_id', '169'),
(1061, 170, '_wp_attached_file', '2021/03/archibald_lot_decouverte_3.png'),
(1062, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:38:"2021/03/archibald_lot_decouverte_3.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:38:"archibald_lot_decouverte_3-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_3-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_3-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_3-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1063, 79, '_thumbnail_id', '170'),
(1064, 171, '_wp_attached_file', '2021/03/archibald_lot_decouverte_2.png'),
(1065, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:38:"2021/03/archibald_lot_decouverte_2.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:38:"archibald_lot_decouverte_2-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_2-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"archibald_lot_decouverte_2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1066, 78, '_thumbnail_id', '171'),
(1067, 172, '_wp_attached_file', '2021/03/archibald_lot_decouverte.png'),
(1068, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:36:"2021/03/archibald_lot_decouverte.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:36:"archibald_lot_decouverte-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:36:"archibald_lot_decouverte-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:36:"archibald_lot_decouverte-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:36:"archibald_lot_decouverte-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"archibald_lot_decouverte-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"archibald_lot_decouverte-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1069, 77, '_thumbnail_id', '172'),
(1070, 173, '_wp_attached_file', '2021/03/archibald_lot_multi.png'),
(1071, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:31:"2021/03/archibald_lot_multi.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:31:"archibald_lot_multi-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"archibald_lot_multi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"archibald_lot_multi-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"archibald_lot_multi-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"archibald_lot_multi-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"archibald_lot_multi-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1072, 76, '_thumbnail_id', '173'),
(1073, 174, '_wp_attached_file', '2021/03/archibald_16_1L.png'),
(1074, 174, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:27:"2021/03/archibald_16_1L.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:27:"archibald_16_1L-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"archibald_16_1L-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"archibald_16_1L-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"archibald_16_1L-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"archibald_16_1L-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"archibald_16_1L-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1075, 75, '_thumbnail_id', '174'),
(1076, 175, '_wp_attached_file', '2021/03/archibald_8_1L.png'),
(1077, 175, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:26:"2021/03/archibald_8_1L.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"archibald_8_1L-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"archibald_8_1L-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"archibald_8_1L-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"archibald_8_1L-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"archibald_8_1L-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"archibald_8_1L-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1078, 74, '_thumbnail_id', '175'),
(1079, 176, '_wp_attached_file', '2021/03/archibald_4_1L.png'),
(1080, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:26:"2021/03/archibald_4_1L.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"archibald_4_1L-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"archibald_4_1L-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"archibald_4_1L-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"archibald_4_1L-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"archibald_4_1L-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"archibald_4_1L-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1081, 73, '_thumbnail_id', '176'),
(1082, 177, '_wp_attached_file', '2021/03/archibald_30_50cl.png'),
(1083, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/archibald_30_50cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"archibald_30_50cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"archibald_30_50cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"archibald_30_50cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"archibald_30_50cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"archibald_30_50cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"archibald_30_50cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1084, 71, '_thumbnail_id', '177'),
(1085, 178, '_wp_attached_file', '2021/03/archibald_12_50cl.png'),
(1086, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/archibald_12_50cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"archibald_12_50cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"archibald_12_50cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"archibald_12_50cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"archibald_12_50cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"archibald_12_50cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"archibald_12_50cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1087, 70, '_thumbnail_id', '178'),
(1088, 179, '_wp_attached_file', '2021/03/archibald_6_50cl.png'),
(1089, 179, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:28:"2021/03/archibald_6_50cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:28:"archibald_6_50cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"archibald_6_50cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"archibald_6_50cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"archibald_6_50cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"archibald_6_50cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"archibald_6_50cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1090, 69, '_thumbnail_id', '179'),
(1091, 180, '_wp_attached_file', '2021/03/archibald_70_20cl.png'),
(1092, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/archibald_70_20cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"archibald_70_20cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"archibald_70_20cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"archibald_70_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"archibald_70_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"archibald_70_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"archibald_70_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1093, 68, '_thumbnail_id', '180'),
(1094, 181, '_wp_attached_file', '2021/03/archibald_24_20cl.png'),
(1095, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/archibald_24_20cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"archibald_24_20cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"archibald_24_20cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"archibald_24_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"archibald_24_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"archibald_24_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"archibald_24_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1096, 67, '_thumbnail_id', '181'),
(1097, 182, '_wp_attached_file', '2021/03/archibald_12_20cl.png'),
(1098, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:484;s:6:"height";i:486;s:4:"file";s:29:"2021/03/archibald_12_20cl.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:29:"archibald_12_20cl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"archibald_12_20cl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"archibald_12_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"archibald_12_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"archibald_12_20cl-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"archibald_12_20cl-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1099, 66, '_thumbnail_id', '182');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-13 14:48:39', '2021-03-13 13:48:39', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2021-03-13 14:55:25', '2021-03-13 13:55:25', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-13 14:48:39', '2021-03-13 13:48:39', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://projets.bdx.digital-campus.net/archibald/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2021-03-13 14:57:23', '2021-03-13 13:57:23', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-13 14:48:39', '2021-03-13 13:48:39', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://projets.bdx.digital-campus.net/archibald.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’inscrivent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2021-03-13 14:57:24', '2021-03-13 13:57:24', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-03-13 14:48:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-13 14:48:52', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=4', 0, 'post', '', 0),
(5, 1, '2021-03-13 14:55:25', '2021-03-13 13:55:25', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-13 14:55:25', '2021-03-13 13:55:25', '', 1, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2021-03-13 14:57:23', '2021-03-13 13:57:23', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://projets.bdx.digital-campus.net/archibald/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-03-13 14:57:23', '2021-03-13 13:57:23', '', 2, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2021-03-13 14:57:24', '2021-03-13 13:57:24', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://projets.bdx.digital-campus.net/archibald.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’inscrivent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-03-13 14:57:24', '2021-03-13 13:57:24', '', 3, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/3-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2021-03-13 14:58:04', '2021-03-13 13:58:04', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-03-13 14:58:04', '2021-03-13 13:58:04', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-03-13 14:58:04', '2021-03-13 13:58:04', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-03-13 14:58:04', '2021-03-13 13:58:04', '', 8, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2021-03-13 14:58:29', '2021-03-13 13:58:29', '', 'Tonic de distillerie', '', 'publish', 'closed', 'closed', '', 'tonic-de-distillerie', '', '', '2021-03-13 14:58:29', '2021-03-13 13:58:29', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-03-13 14:58:29', '2021-03-13 13:58:29', '', 'Tonic de distillerie', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-03-13 14:58:29', '2021-03-13 13:58:29', '', 10, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2021-03-13 14:58:42', '2021-03-13 13:58:42', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {"ordered":true} -->\n<ol><li>ARCHIBALD : VERTUEUX POUR L\'HOMME ET LA PLANÈTE ​ </li><li>EN TOUTE TRANSPARENCE : ON VOUS DIT TOUT ​</li><li>ENCORE MIEUX DEMAIN</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:pullquote -->\n<figure class="wp-block-pullquote"><blockquote><p>Archibald, Aujourd\'hui vertueux et demain circulaire.</p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:separator -->\n<hr class="wp-block-separator"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2><strong>1. ARCHIBALD : VERTUEUX POUR L\'HOMME ET LA PLANÈTE</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite&nbsp;<em>vertueuse</em>. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text -->\n<div class="wp-block-media-text alignwide is-stacked-on-mobile"><figure class="wp-block-media-text__media"></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- PROTÉGER LA SANTÉ DE TOUS</strong><strong>&nbsp;/ PROPOSER DES PRODUITS SAINS</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- RÉDUIRE NOS IMPACTS SUR NOTRE PLANÈTE</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d’abord les réduire avant de pouvoir un jour réussir à en éviter certains…</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- SOUTENIR LES HOMMES</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane&nbsp;</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- UNE MISSION PRÉCISE, 4 ENGAGEMENTS "POSITIVE SPIRIT"</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : « Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème. »</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class="wp-block-pullquote"><blockquote><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te avec des boissons d’adulte  positives et responsables ! </p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {"ordered":true} -->\n<ol><li>Concevoir des produits vertueux pour l\'homme et la planète</li><li>Transformer notre écosystème avec nos parties prenantes</li><li>Soutenir des actions à fort impact social dans la gastronomie sociale</li><li>Réinventer le commerce de demain</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>​Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>​Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {"mediaPosition":"right"} -->\n<div class="wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile"><figure class="wp-block-media-text__media"></figure><div class="wp-block-media-text__content"><!-- wp:paragraph -->\n<p>Suivez notre aventure entrepreneuriale engagée sur Linkedin ! <br>#positivespirit</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- CERTIFIÉ ET MEMBRE DE LA COMMUNAUTÉ ENGAGÉE B CORP</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie, déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2><strong>2. EN TOUTE TRANSPARENCE... ON VOUS DIT TOUT !</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Construire des relations fortes avec tous ceux qui nous entourent est impossible sans transparence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La transparence, c\'est aussi accepter de ne pas être parfait.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une liste de thèmatiques pour lesquelles on vous livre des informations factuelles, des explications.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>>> Cliquer sur celle qui vous intéresse !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>​Et si vous avez d\'autres questions, posez-les nous via <a href="https://www.archibaldtonic.com/contact">notre formulaire en ligne</a> ;)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Argh ! Il va falloir attendre quelques jours pour que les informations de chaque thématique s\'affichent... Teasing teasing !</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong>LE PLUS LOCAL POSSIBLE</strong></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>la carte des origines</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong>NOTRE PRIX</strong></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Notre prix de revient est plus élevé que la plupart des tonics : pourquoi ?</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong>VALEURS NUTRITIONNELLES</strong></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong><strong> LES COPIES ET DÉTAILS DE NOS CERTIFICATIONS</strong></strong></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong><strong><strong>CHARTE FOURNISSEURS</strong></strong></strong></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:paragraph -->\n<p><strong><strong>QUI EST DERRIÈRE LA SOCIÉTÉ DES VIEUX COPAINS ?</strong></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2><strong>3. ENCORE MIEUX DEMAIN !</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:pullquote -->\n<figure class="wp-block-pullquote"><blockquote><p>Nos grands projets pour inscrire Archibald dans le monde de demain...</p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph -->\n<p>Parce qu\'on veut toujours faire mieux, parce qu\'on vous dit tout... voici les projets sur lesquels nous travaillons :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>créer une filière de cueillette de baies de genièvre bio, sauvages et françaises !</li><li>bonifier notre produit : à la recherche constante des meilleurs ingrédients… les plus proches de nous mais avant tout les meilleurs</li><li>faire d\'Archibald une marque solidaire … une surprise pour la fin de de l\'année !</li><li>mettre au point une verrerie intégrant un maximum de verre recyclé</li><li>faire d\'Archibald une MARQUE CIRCULAIRE - le Graal ! : des pistes, des projets, des réflexions en cours…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Engagé et responsable', '', 'publish', 'closed', 'closed', '', 'engage-et-responsable', '', '', '2021-03-15 19:38:37', '2021-03-15 18:38:37', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-03-13 14:58:42', '2021-03-13 13:58:42', '', 'Engagé et responsable', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-03-13 14:58:42', '2021-03-13 13:58:42', '', 12, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2021-03-13 14:58:53', '2021-03-13 13:58:53', '', 'Dégustation', '', 'publish', 'closed', 'closed', '', 'degustation', '', '', '2021-03-13 14:58:53', '2021-03-13 13:58:53', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=14', 0, 'page', '', 0),
(15, 1, '2021-03-13 14:58:53', '2021-03-13 13:58:53', '', 'Dégustation', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-03-13 14:58:53', '2021-03-13 13:58:53', '', 14, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2021-03-13 14:59:05', '2021-03-13 13:59:05', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-03-13 14:59:05', '2021-03-13 13:59:05', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-03-13 14:59:05', '2021-03-13 13:59:05', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-03-13 14:59:05', '2021-03-13 13:59:05', '', 16, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2021-03-13 14:59:19', '2021-03-13 13:59:19', '', 'Blog & News', '', 'publish', 'closed', 'closed', '', 'blog-news', '', '', '2021-03-13 14:59:19', '2021-03-13 13:59:19', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=18', 0, 'page', '', 0),
(19, 1, '2021-03-13 14:59:19', '2021-03-13 13:59:19', '', 'Blog & News', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-03-13 14:59:19', '2021-03-13 13:59:19', '', 18, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2021-03-13 14:59:32', '2021-03-13 13:59:32', '', 'E-Shop', '', 'trash', 'closed', 'closed', '', 'e-shop__trashed', '', '', '2021-03-13 15:02:33', '2021-03-13 14:02:33', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?page_id=20', 0, 'page', '', 0),
(21, 1, '2021-03-13 14:59:32', '2021-03-13 13:59:32', '', 'E-Shop', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-03-13 14:59:32', '2021-03-13 13:59:32', '', 20, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2021-03-13 15:00:05', '2021-03-13 14:00:05', '', 'E-shop', '', 'publish', 'closed', 'closed', '', 'e-shop', '', '', '2021-03-13 15:02:56', '2021-03-13 14:02:56', '', 0, 'http://projets.bdx.digital-campus.net/archibald/index.php/boutique/', 0, 'page', '', 0),
(23, 1, '2021-03-13 15:00:05', '2021-03-13 14:00:05', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2021-03-13 15:00:05', '2021-03-13 14:00:05', '', 0, 'http://projets.bdx.digital-campus.net/archibald/index.php/panier/', 0, 'page', '', 0),
(24, 1, '2021-03-13 15:00:05', '2021-03-13 14:00:05', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Validation de la commande', '', 'publish', 'closed', 'closed', '', 'commander', '', '', '2021-03-13 15:00:05', '2021-03-13 14:00:05', '', 0, 'http://projets.bdx.digital-campus.net/archibald/index.php/commander/', 0, 'page', '', 0),
(25, 1, '2021-03-13 15:00:05', '2021-03-13 14:00:05', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2021-03-13 15:00:05', '2021-03-13 14:00:05', '', 0, 'http://projets.bdx.digital-campus.net/archibald/index.php/mon-compte/', 0, 'page', '', 0),
(26, 1, '2021-03-13 15:02:56', '2021-03-13 14:02:56', '', 'E-shop', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-03-13 15:02:56', '2021-03-13 14:02:56', '', 22, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/22-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2021-03-13 15:08:25', '2021-03-13 14:08:25', '<!-- wp:paragraph -->\n<p>Plus qu\'un simple tonic artisanal, bio et français, Archibald est une expression nouvelle et écoresponsable du savoir-faire de distillateur.</p>\n<!-- /wp:paragraph -->', 'Introduction accueil', '', 'publish', 'open', 'open', '', 'introduction-accueil', '', '', '2021-03-14 18:23:48', '2021-03-14 17:23:48', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=27', 0, 'post', '', 0),
(28, 1, '2021-03-13 15:08:25', '2021-03-13 14:08:25', '<!-- wp:paragraph -->\n<p>Plus qu\'un simple tonic artisanal, bio et français, Archibald est une expression nouvelle et écoresponsable du savoir-faire de distillateur.</p>\n<!-- /wp:paragraph -->', 'Introduction', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-03-13 15:08:25', '2021-03-13 14:08:25', '', 27, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2021-03-13 15:12:11', '2021-03-13 14:12:11', '<!-- wp:paragraph -->\n<p>Pas de quinine pour obtenir l\'amertume, mais de la racine de gentiane et des baies de genièvre patiemment distillées, puis assemblées à l\'eau de source par notre Maître Distillateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C\'est donc avec ce vieux savoir-faire artisanal français qu\'est élaboré dans notre distillerie ce tonic à part : Archibald, le tonic de distillerie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/tonic-de-distillerie/" data-type="page" data-id="10">En savoir plus sur notre savoir-faire...</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Réinventer Archibald le temps d\'un batch limité pour affirmer son identité de tonic de distillerie !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/tonic-de-distillerie/" data-type="page" data-id="10">Découvrir notre premier batch limité d\'Archibald...</a></p>\n<!-- /wp:paragraph -->', 'Le tonic de distillerie', '', 'publish', 'open', 'open', '', 'le-tonic-de-distillerie', '', '', '2021-03-14 18:25:08', '2021-03-14 17:25:08', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=29', 1, 'post', '', 0),
(30, 1, '2021-03-13 15:12:11', '2021-03-13 14:12:11', '<!-- wp:paragraph -->\n<p>Pas de quinine pour obtenir l\'amertume, mais de la racine de gentiane et des baies de genièvre patiemment distillées, puis assemblées à l\'eau de source par notre Maître Distillateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C\'est donc avec ce vieux savoir-faire artisanal français qu\'est élaboré dans notre distillerie ce tonic à part : Archibald, le tonic de distillerie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/tonic-de-distillerie/" data-type="page" data-id="10">En savoir plus sur notre savoir-faire...</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Réinventer Archibald le temps d\'un batch limité pour affirmer son identité de tonic de distillerie !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/tonic-de-distillerie/" data-type="page" data-id="10">Découvrir notre premier batch limité d\'Archibald...</a></p>\n<!-- /wp:paragraph -->', 'Le tonic de distillerie', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2021-03-13 15:12:11', '2021-03-13 14:12:11', '', 29, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2021-03-13 15:12:53', '2021-03-13 14:12:53', '<!-- wp:paragraph -->\n<p>#positivespirit</p>\n<!-- /wp:paragraph -->', 'Hashtag', '', 'publish', 'open', 'open', '', 'hashtag', '', '', '2021-03-13 15:13:05', '2021-03-13 14:13:05', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=31', 2, 'post', '', 0),
(32, 1, '2021-03-13 15:12:53', '2021-03-13 14:12:53', '<!-- wp:paragraph -->\n<p>#positivespirit</p>\n<!-- /wp:paragraph -->', 'Hashtag', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-03-13 15:12:53', '2021-03-13 14:12:53', '', 31, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2021-03-13 15:16:38', '2021-03-13 14:16:38', '<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a une mission. Une envie de faire bouger les choses, de faire toujours mieux pour le bien de l\'homme et de l\'environnement.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela va de la conception de notre tonic (qualité bio, taux de sucre maîtrisé, packaging écologique,...) jusqu\'à la manière de travailler ensemble avec nos clients, nos fournisseurs, sur notre territoire. Et ce en toute transparence !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Archibald, tonic vertueux et bientôt circulaire, pour s\'inscrire pleinement dans le monde de demain !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/engage-et-responsable/" data-type="page" data-id="12">Tous les détails de nos engagements...</a></p>\n<!-- /wp:paragraph -->', 'Archi engagé & responsable', '', 'publish', 'open', 'open', '', 'archi-engage-responsable', '', '', '2021-03-14 18:26:39', '2021-03-14 17:26:39', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=33', 3, 'post', '', 0),
(34, 1, '2021-03-13 15:16:38', '2021-03-13 14:16:38', '<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a une mission. Une envie de faire bouger les choses, de faire toujours mieux pour le bien de l\'homme et de l\'environnement.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela va de la conception de notre tonic (qualité bio, taux de sucre maîtrisé, packaging écologique,...) jusqu\'à la manière de travailler ensemble avec nos clients, nos fournisseurs, sur notre territoire. Et ce en toute transparence !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Archibald, tonic vertueux et bientôt circulaire, pour s\'inscrire pleinement dans le monde de demain !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/engage-et-responsable/" data-type="page" data-id="12">Tous les détails de nos engagements...</a></p>\n<!-- /wp:paragraph -->', 'Archi engagé & responsable', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-03-13 15:16:38', '2021-03-13 14:16:38', '', 33, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2021-03-13 15:28:03', '2021-03-13 14:28:03', '<!-- wp:paragraph -->\n<p>Pas de quinine mais des distillats de gentiane et de baies de genièvre bio qui offrent</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>UNE SIGNATURE GUSTATIVE SINGULIERE</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une amertume douce aux notes herbacées</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Un vrai parti pris gustatif car différent des autres tonics à base de quinine qui apporte une amertume très forte et neutre en goût.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Un goût herbacé, et même un peu racinaire qui émane de la gentiane et de la baie de genièvre</li><li>Une amertume délicate, douce qui arrive surtout en fin de bouche</li><li>Des bulles très fines pour plus de fraîcheur et d\'élégance</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Sublimeur de Cocktail ou Rafraîchissement de dégustation sans alcool</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>BREF, PUR OU A MIXER, C\'EST COMME VOUS VOULEZ !</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Avec une amertume justement dosée, et ses notes complexes et agréables, Archibald peut se savourer seul, très frais et offrir un véritable moment de dégustation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Son amertume, ses notes herbacées, ses bulles fines en font un excellent mixer qui sublime les cocktails d\'une part parce qu\'il est un exhausteur de goût élégant, d\'autre part parce qu\'il vient complexifier l\'aromatique globale.<br>Ainsi Archibald est reconnu par les amateurs de gin tonic : son amertume ne vient pas couvrir l\'aromatique du gin mais la met en valeur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Plus de détails sur la dégustation...</a></p>\n<!-- /wp:paragraph -->', 'Une signature gustative singulière', '', 'publish', 'open', 'open', '', 'une-signature-gustative-singuliere', '', '', '2021-03-13 15:32:46', '2021-03-13 14:32:46', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=35', 4, 'post', '', 0),
(36, 1, '2021-03-13 15:28:03', '2021-03-13 14:28:03', '<!-- wp:paragraph -->\n<p>Pas de quinine mais des distillats de gentiane et de baies de genièvre bio qui offrent</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>UNE SIGNATURE GUSTATIVE SINGULIERE</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une amertume douce aux notes herbacées</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Un vrai parti pris gustatif car différent des autres tonics à base de quinine qui apporte une amertume très forte et neutre en goût.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Un goût herbacé, et même un peu racinaire qui émane de la gentiane et de la baie de genièvre</li><li>Une amertume délicate, douce qui arrive surtout en fin de bouche</li><li>Des bulles très fines pour plus de fraîcheur et d\'élégance</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Sublimeur de Cocktail ou Rafraîchissement de dégustation sans alcool</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>BREF, PUR OU A MIXER, C\'EST COMME VOUS VOULEZ !</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Avec une amertume justement dosée, et ses notes complexes et agréables, Archibald peut se savourer seul, très frais et offrir un véritable moment de dégustation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Son amertume, ses notes herbacées, ses bulles fines en font un excellent mixer qui sublime les cocktails d\'une part parce qu\'il est un exhausteur de goût élégant, d\'autre part parce qu\'il vient complexifier l\'aromatique globale.<br>Ainsi Archibald est reconnu par les amateurs de gin tonic : son amertume ne vient pas couvrir l\'aromatique du gin mais la met en valeur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Plus de détails sur la dégustation...</a></p>\n<!-- /wp:paragraph -->', 'Une signature gustative singulière', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-03-13 15:28:03', '2021-03-13 14:28:03', '', 35, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2021-03-13 15:30:12', '2021-03-13 14:30:12', '<!-- wp:paragraph -->\n<p>Reconnu par le Collège Culinaire de France, Archibald est le seul tonic qui s\'inscrit dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Archibald &amp; la Gastronomie : en savoir plus !</a></p>\n<!-- /wp:paragraph -->', 'Plébiscité par les chefs et la gastronomie', '', 'publish', 'open', 'open', '', 'plebiscite-par-les-chefs-et-la-gastronomie', '', '', '2021-03-13 15:32:52', '2021-03-13 14:32:52', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=37', 5, 'post', '', 0),
(38, 1, '2021-03-13 15:30:12', '2021-03-13 14:30:12', '<!-- wp:paragraph -->\n<p>Reconnu par le Collège Culinaire de France, Archibald est le seul tonic qui s\'inscrit dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Archibald &amp; la Gastronomie : en savoir plus !</a></p>\n<!-- /wp:paragraph -->', 'Plébiscité par les chefs et la gastronomie', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-03-13 15:30:12', '2021-03-13 14:30:12', '', 37, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/37-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2021-03-13 15:32:21', '2021-03-13 14:32:21', '<!-- wp:paragraph -->\n<p>Archibald existe en 20cl, 50cl et 1L.<br>3 formats de bouteille à retrouver dans notre eshop.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/e-shop/" data-type="page" data-id="22">Accéder à votre ESHOP !</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Qui sont les revendeurs les plus proches de chez vous ?<br>Envoyez-nous un message avec votre adresse via <a href="http://projets.bdx.digital-campus.net/archibald/index.php/contact/" data-type="page" data-id="16">notre formulaire</a>.</p>\n<!-- /wp:paragraph -->', 'Retrouvez Archibald en boutique', '', 'publish', 'open', 'open', '', 'retrouvez-archibald-en-boutique', '', '', '2021-03-13 15:32:58', '2021-03-13 14:32:58', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=39', 6, 'post', '', 0),
(40, 1, '2021-03-13 15:32:21', '2021-03-13 14:32:21', '<!-- wp:paragraph -->\n<p>Archibald existe en 20cl, 50cl et 1L.<br>3 formats de bouteille à retrouver dans notre eshop.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/e-shop/" data-type="page" data-id="22">Accéder à votre ESHOP !</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Qui sont les revendeurs les plus proches de chez vous ?<br>Envoyez-nous un message avec votre adresse via <a href="http://projets.bdx.digital-campus.net/archibald/index.php/contact/" data-type="page" data-id="16">notre formulaire</a>.</p>\n<!-- /wp:paragraph -->', 'Retrouvez Archibald en boutique', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-03-13 15:32:21', '2021-03-13 14:32:21', '', 39, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2021-03-13 15:34:28', '2021-03-13 14:34:28', '<!-- wp:paragraph -->\n<p>Plus qu\'un simple tonic artisanal, bio et français, Archibald est une expression nouvelle et écoresponsable du savoir-faire de distillateur.</p>\n<!-- /wp:paragraph -->', 'Introduction accueil', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-03-13 15:34:28', '2021-03-13 14:34:28', '', 27, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/27-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2021-03-13 15:36:30', '2021-03-13 14:36:30', '<!-- wp:list {"ordered":true} -->\n<ol><li>LA DISTILLERIE : UN SAVOIR-FAIRE ARTISANAL ET DES HOMMES</li><li>L\'ELABORATION SINGULIERE D\'ARCHIBALD</li><li>LES BATCHES LIMITES ARCHIBALD : UNE AUTRE VISION DU TONIC DE DISTILLERIE</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Introduction le tonic de distillerie', '', 'publish', 'open', 'open', '', 'introduction-le-tonic-de-distillerie', '', '', '2021-03-13 15:36:30', '2021-03-13 14:36:30', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=42', 7, 'post', '', 0),
(43, 1, '2021-03-13 15:36:30', '2021-03-13 14:36:30', '<!-- wp:list {"ordered":true} -->\n<ol><li>LA DISTILLERIE : UN SAVOIR-FAIRE ARTISANAL ET DES HOMMES</li><li>L\'ELABORATION SINGULIERE D\'ARCHIBALD</li><li>LES BATCHES LIMITES ARCHIBALD : UNE AUTRE VISION DU TONIC DE DISTILLERIE</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Introduction le tonic de distillerie', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-03-13 15:36:30', '2021-03-13 14:36:30', '', 42, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2021-03-13 15:39:51', '2021-03-13 14:39:51', '<!-- wp:paragraph -->\n<p>Avant toute chose... Pourquoi Archibald ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Tout commence par une idée... ou plutôt un besoin, celui de créer un tonic bio français pour allonger l\'apéritif Folle Envie. Oui, mais comment faire un tonic quand on est distillateur ? On fait comme pour un spiritueux. Après tout, rien de mieux que la distillation pour extraire les quintessences aromatiques.</li><li>Mais pourquoi ce nom ? Archibald signifie "naturel &amp; audacieux", 2 maîtres mots qui ont une résonance permanente dans ce projet !</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Avant toute chose...', '', 'publish', 'open', 'open', '', 'avant-toute-chose', '', '', '2021-03-13 15:39:51', '2021-03-13 14:39:51', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=44', 8, 'post', '', 0),
(45, 1, '2021-03-13 15:39:51', '2021-03-13 14:39:51', '<!-- wp:paragraph -->\n<p>Avant toute chose... Pourquoi Archibald ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Tout commence par une idée... ou plutôt un besoin, celui de créer un tonic bio français pour allonger l\'apéritif Folle Envie. Oui, mais comment faire un tonic quand on est distillateur ? On fait comme pour un spiritueux. Après tout, rien de mieux que la distillation pour extraire les quintessences aromatiques.</li><li>Mais pourquoi ce nom ? Archibald signifie "naturel &amp; audacieux", 2 maîtres mots qui ont une résonance permanente dans ce projet !</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Avant toute chose...', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-03-13 15:39:51', '2021-03-13 14:39:51', '', 44, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2021-03-13 15:46:59', '2021-03-13 14:46:59', '<!-- wp:paragraph -->\n<p>Distiller est un art, un savoir-faire ancestral ancré dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et quand on parle de savoir-faire de distillerie, c\'est tout un éventail large d\'expertises qui se déploie. Parce que oui, dans une distillerie, on ne fait pas que distiller : on est à la recherche d\'ingrédients précis, on infuse, on macère, on sélectionne des fûts, on fait vieillir, on assemble...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Distillateur depuis 6 générations</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Dans l\'aventure Archibald, il y a 3 vieux copains dont un distillateur qui a repris le flambeau de la distillerie familiale, succédant aux 5 générations précédentes. Ainsi Archibald est élaboré par des experts en spiritueux dans une vieille distillerie de 1830 près de Cognac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Des hommes passionnés avec un savoir-faire de spiritueux</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Avant tout, derrière Archibald, ce sont donc des hommes. Des hommes investis, des hommes obnubilés par le goût et le travail bien fait, et des hommes fiers. Car c\'est aussi une grande fierté qui plane dans notre vieille distillerie : celle de mettre notre savoir-faire de spiritueux au service d\'un tonic.</p>\n<!-- /wp:paragraph -->', '1. La distillerie : un savoir-faire artisanal et des hommes', '', 'publish', 'open', 'open', '', '1-la-distillerie-un-savoir-faire-artisanal-et-des-hommes', '', '', '2021-03-13 15:46:59', '2021-03-13 14:46:59', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=46', 9, 'post', '', 0),
(47, 1, '2021-03-13 15:46:59', '2021-03-13 14:46:59', '<!-- wp:paragraph -->\n<p>Distiller est un art, un savoir-faire ancestral ancré dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et quand on parle de savoir-faire de distillerie, c\'est tout un éventail large d\'expertises qui se déploie. Parce que oui, dans une distillerie, on ne fait pas que distiller : on est à la recherche d\'ingrédients précis, on infuse, on macère, on sélectionne des fûts, on fait vieillir, on assemble...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Distillateur depuis 6 générations</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Dans l\'aventure Archibald, il y a 3 vieux copains dont un distillateur qui a repris le flambeau de la distillerie familiale, succédant aux 5 générations précédentes. Ainsi Archibald est élaboré par des experts en spiritueux dans une vieille distillerie de 1830 près de Cognac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Des hommes passionnés avec un savoir-faire de spiritueux</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Avant tout, derrière Archibald, ce sont donc des hommes. Des hommes investis, des hommes obnubilés par le goût et le travail bien fait, et des hommes fiers. Car c\'est aussi une grande fierté qui plane dans notre vieille distillerie : celle de mettre notre savoir-faire de spiritueux au service d\'un tonic.</p>\n<!-- /wp:paragraph -->', '1. La distillerie : un savoir-faire artisanal et des hommes', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-03-13 15:46:59', '2021-03-13 14:46:59', '', 46, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2021-03-13 16:00:06', '2021-03-13 15:00:06', '<!-- wp:heading {"level":3} -->\n<h3>Un tonic bio et français... donc sans quinine</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>C\'est du bon sens : un tonic français, c\'est à base de plantes qui poussent en France.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Il a donc fallu réinventer la recette du tonic, qui contient normalement de la quinine pour l\'amertume car la quinine est un extrait du quinina qui pousse en Amérique du Sud ou en Inde... mais pas en France.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La plante française choisie pour jouer ce rôle crucial est alors la gentiane qui pousse dans les prés auvergnats, à laquelle on associera des baies de genièvre (souvent associées au gin).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Des distillats de racine de gentiane et de baies de genièvre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Oui, mais alors... comment incorporer qualitativement la gentiane et les baies de genièvre à un tonic ? une évidence quand on est dans une distillerie car s\'il existe bien une technique permettant à la fois de sélectionner les meilleures notes aromatiques et de les concentrer... c\'est la distillation ! Et ici, ce sont deux distillations dans un alambic en cuivre dédié à Archibald : celle d\'une macération de baies de genièvre et celle de racines de gentiane.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Véritable fruit d\'un savoir-faire de maître distillateur, ces extraits très concentrés seront ajoutés en quantité si infime qu\'au final Archibald demeure une boisson sans alcool.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Un assemblage minutieux et des bulles très fines</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Et l\'eau dans tout ça ? Inutile de chercher loin : celle qui jouxte la distillerie sera parfaite pour être assemblée aux extraits de gentiane et de baies de genièvre.<br>Enfin, qui dit tonic, dit effervescence ! L\'assemblage obtenu reste donc à gazéifier avec, ici encore, une technique artisanale particulière donnant naissance à des bulles d\'une finesse extrême.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center"><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Comment déguster Archibald ?...</a></p>\n<!-- /wp:paragraph -->', '2. L\'élaboration singulière d\'Archibald', '', 'publish', 'open', 'open', '', '2-lelaboration-singuliere-darchibald', '', '', '2021-03-13 16:00:06', '2021-03-13 15:00:06', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=48', 10, 'post', '', 0),
(49, 1, '2021-03-13 16:00:06', '2021-03-13 15:00:06', '<!-- wp:heading {"level":3} -->\n<h3>Un tonic bio et français... donc sans quinine</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>C\'est du bon sens : un tonic français, c\'est à base de plantes qui poussent en France.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Il a donc fallu réinventer la recette du tonic, qui contient normalement de la quinine pour l\'amertume car la quinine est un extrait du quinina qui pousse en Amérique du Sud ou en Inde... mais pas en France.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La plante française choisie pour jouer ce rôle crucial est alors la gentiane qui pousse dans les prés auvergnats, à laquelle on associera des baies de genièvre (souvent associées au gin).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Des distillats de racine de gentiane et de baies de genièvre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Oui, mais alors... comment incorporer qualitativement la gentiane et les baies de genièvre à un tonic ? une évidence quand on est dans une distillerie car s\'il existe bien une technique permettant à la fois de sélectionner les meilleures notes aromatiques et de les concentrer... c\'est la distillation ! Et ici, ce sont deux distillations dans un alambic en cuivre dédié à Archibald : celle d\'une macération de baies de genièvre et celle de racines de gentiane.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Véritable fruit d\'un savoir-faire de maître distillateur, ces extraits très concentrés seront ajoutés en quantité si infime qu\'au final Archibald demeure une boisson sans alcool.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Un assemblage minutieux et des bulles très fines</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Et l\'eau dans tout ça ? Inutile de chercher loin : celle qui jouxte la distillerie sera parfaite pour être assemblée aux extraits de gentiane et de baies de genièvre.<br>Enfin, qui dit tonic, dit effervescence ! L\'assemblage obtenu reste donc à gazéifier avec, ici encore, une technique artisanale particulière donnant naissance à des bulles d\'une finesse extrême.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center"><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Comment déguster Archibald ?...</a></p>\n<!-- /wp:paragraph -->', '2. L\'élaboration singulière d\'Archibald', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-03-13 16:00:06', '2021-03-13 15:00:06', '', 48, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2021-03-13 16:02:37', '2021-03-13 15:02:37', '<!-- wp:paragraph -->\n<p>"Réinventer Archibald le temps d\'un batch limité pour affirmer son identité de tonic de distillerie"</p>\n<!-- /wp:paragraph -->', 'Citation tonic de distillerie', '', 'publish', 'open', 'open', '', 'citation-tonic-de-distillerie', '', '', '2021-03-13 16:02:37', '2021-03-13 15:02:37', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=50', 11, 'post', '', 0),
(51, 1, '2021-03-13 16:02:37', '2021-03-13 15:02:37', '<!-- wp:paragraph -->\n<p>"Réinventer Archibald le temps d\'un batch limité pour affirmer son identité de tonic de distillerie"</p>\n<!-- /wp:paragraph -->', 'Citation tonic de distillerie', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-03-13 16:02:37', '2021-03-13 15:02:37', '', 50, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2021-03-13 16:13:23', '2021-03-13 15:13:23', '<!-- wp:heading {"level":3} -->\n<h3>Des éditions limitées...<br>... qui ont du sens pour Archibald</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Un ADN qui offre d\'incroyables opportunités à explorer</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une expression nouvelle et écoresponsable du savoir-faire de distillerie. Voilà l\'essence même du tonic de distillerie Archibald : un potentiel extraordinaire qui invite à être exploré. Et le champ des possibles est grand, très grand !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Le besoin d’échappées créatives des Maîtres-Distillateurs</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Peu importe la catégorie - Single Malt, Rhum, Whisky, Cognac... - un Maître-Distillateur met sa rigueur et son expertise au service d\'une qualité produit immuable. Mais comme tout artiste passionné, il aime également exprimer son savoir-faire et sa créativité à l\'occasion de batch limité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bref... "Parce que réinventer Archibald le temps d\'un batch limité, c\'est affirmer son identité de tonic de distillerie". La voilà, la raison d\'être des Batches Limités Archibald !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>... à la fois créatives et encadrées</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Exploiter tous les savoir-faire d\'une distillerie</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Explorer d\'autres facettes, d\'autres expertises d\'une distillerie au service d\'un tonic au nom du goût et de nouvelles saveurs pour créer des expériences gustatives inédites.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Préserver les signes distinctifs d\'Archibald</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Etre un tonic de distillerie, mais ce n\'est pas tout... 2 autres points caractérisent Archibald : un double usage (Archibald se déguste mixé ou se déguste seul) et un engagement écoresponsable, qualifié de "Positive Spirit", qui s\'inscrit dans le projet de faire d\'Archibald une marque vertueuse et demain circulaire.</p>\n<!-- /wp:paragraph -->', '3. Les batches limités : une autre vision du tonic de distillerie', '', 'publish', 'open', 'open', '', '3-les-batches-limites-une-autre-vision-du-tonic-de-distillerie', '', '', '2021-03-13 16:13:23', '2021-03-13 15:13:23', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=52', 12, 'post', '', 0),
(53, 1, '2021-03-13 16:13:23', '2021-03-13 15:13:23', '<!-- wp:heading {"level":3} -->\n<h3>Des éditions limitées...<br>... qui ont du sens pour Archibald</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Un ADN qui offre d\'incroyables opportunités à explorer</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une expression nouvelle et écoresponsable du savoir-faire de distillerie. Voilà l\'essence même du tonic de distillerie Archibald : un potentiel extraordinaire qui invite à être exploré. Et le champ des possibles est grand, très grand !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Le besoin d’échappées créatives des Maîtres-Distillateurs</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Peu importe la catégorie - Single Malt, Rhum, Whisky, Cognac... - un Maître-Distillateur met sa rigueur et son expertise au service d\'une qualité produit immuable. Mais comme tout artiste passionné, il aime également exprimer son savoir-faire et sa créativité à l\'occasion de batch limité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bref... "Parce que réinventer Archibald le temps d\'un batch limité, c\'est affirmer son identité de tonic de distillerie". La voilà, la raison d\'être des Batches Limités Archibald !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>... à la fois créatives et encadrées</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Exploiter tous les savoir-faire d\'une distillerie</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Explorer d\'autres facettes, d\'autres expertises d\'une distillerie au service d\'un tonic au nom du goût et de nouvelles saveurs pour créer des expériences gustatives inédites.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Préserver les signes distinctifs d\'Archibald</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Etre un tonic de distillerie, mais ce n\'est pas tout... 2 autres points caractérisent Archibald : un double usage (Archibald se déguste mixé ou se déguste seul) et un engagement écoresponsable, qualifié de "Positive Spirit", qui s\'inscrit dans le projet de faire d\'Archibald une marque vertueuse et demain circulaire.</p>\n<!-- /wp:paragraph -->', '3. Les batches limités : une autre vision du tonic de distillerie', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-03-13 16:13:23', '2021-03-13 15:13:23', '', 52, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2021-03-13 16:19:54', '2021-03-13 15:19:54', '<!-- wp:heading -->\n<h2>La première édition limitée Archibald : un tonic aux distillats de gentiane et de bergamote vieillis en fût de chêne !</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>C’est tout naturellement que le Maître-Distillateur d’Archibald signe cette première édition limitée avec le pari audacieux de faire un tonic vieilli en fût !  Un tonic de distillerie dans les règles de l’art.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Son élaboration reprend évidemment des étapes de la recette originale d’Archibald - comme l’assemblage à l’eau de source locale, pas d’ajout de quinine, le recours à une méthode de gazéification artisanale garantissant une bulle fine -  en revanche, des partis pris différenciant en font un produit bien à part...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Racine de Gentiane et Bergamote</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Exit la baie de genièvre que l’on remplace ici par un agrume : la bergamote. Quant à la racine de gentiane, elle est conservée, mais uniquement sur une qualité fraîche.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prenant en compte nos exigences en termes de profil aromatique, de qualité, de certification bio, de bonnes pratiques et d’origine la plus proche possible : après plusieurs essais, les choix se portent sur un producteur italien pour la bergamote et sur nos arracheurs habituels en Auvergne pour la racine de gentiane sauvage.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une distillation précise en alambic</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Des macérats de racine de gentiane et d’écorces de bergamote sont d’abord réalisés. Une partie de ces 2 macérats sera intégrée telle quelle, l’autre partie sera distillée séparément pour tirer la quintessence aromatique de chaque ingrédient, dans notre alambic traditionnel charentais en cuivre dédié aujourd’hui à Archibald.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L’assemblage des macérâts et des distillats renforce alors la complexité aromatique.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une mise en fût audacieuse, encore jamais expérimentée</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’idée est d’avoir une proposition subtilement boisée, voire fumée.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces notes empyreumatiques, notre Maître-Distillateur les connaît bien et les maîtrise à la perfection : mettre en fût, faire vieillir patiemment dans les chais, suivre régulièrement l’évolution organoleptique du produit et déterminer ainsi le moment idéal de l’extraction.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour notre tonic, il a choisi un fût neuf de 114 litres en chêne blanc... américain. Mais fait par les maîtres tonneliers localement ;)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Le résultat ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Un profil aromatique atypique et parfaitement équilibré à la fois qui associe subtilement des notes fumées et acidulées : mixée ou savourée seule, cette édition limitée surprend et séduit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Notes de dégustation et usage de l\'Edition Limitée #1...</a></p>\n<!-- /wp:paragraph -->', 'La première édition limitée Archibald', '', 'publish', 'open', 'open', '', 'la-premiere-edition-limitee-archibald', '', '', '2021-03-13 16:19:54', '2021-03-13 15:19:54', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=54', 13, 'post', '', 0),
(55, 1, '2021-03-13 16:19:54', '2021-03-13 15:19:54', '<!-- wp:heading -->\n<h2>La première édition limitée Archibald : un tonic aux distillats de gentiane et de bergamote vieillis en fût de chêne !</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>C’est tout naturellement que le Maître-Distillateur d’Archibald signe cette première édition limitée avec le pari audacieux de faire un tonic vieilli en fût !  Un tonic de distillerie dans les règles de l’art.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Son élaboration reprend évidemment des étapes de la recette originale d’Archibald - comme l’assemblage à l’eau de source locale, pas d’ajout de quinine, le recours à une méthode de gazéification artisanale garantissant une bulle fine -  en revanche, des partis pris différenciant en font un produit bien à part...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Racine de Gentiane et Bergamote</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Exit la baie de genièvre que l’on remplace ici par un agrume : la bergamote. Quant à la racine de gentiane, elle est conservée, mais uniquement sur une qualité fraîche.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prenant en compte nos exigences en termes de profil aromatique, de qualité, de certification bio, de bonnes pratiques et d’origine la plus proche possible : après plusieurs essais, les choix se portent sur un producteur italien pour la bergamote et sur nos arracheurs habituels en Auvergne pour la racine de gentiane sauvage.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une distillation précise en alambic</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Des macérats de racine de gentiane et d’écorces de bergamote sont d’abord réalisés. Une partie de ces 2 macérats sera intégrée telle quelle, l’autre partie sera distillée séparément pour tirer la quintessence aromatique de chaque ingrédient, dans notre alambic traditionnel charentais en cuivre dédié aujourd’hui à Archibald.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L’assemblage des macérâts et des distillats renforce alors la complexité aromatique.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une mise en fût audacieuse, encore jamais expérimentée</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’idée est d’avoir une proposition subtilement boisée, voire fumée.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces notes empyreumatiques, notre Maître-Distillateur les connaît bien et les maîtrise à la perfection : mettre en fût, faire vieillir patiemment dans les chais, suivre régulièrement l’évolution organoleptique du produit et déterminer ainsi le moment idéal de l’extraction.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour notre tonic, il a choisi un fût neuf de 114 litres en chêne blanc... américain. Mais fait par les maîtres tonneliers localement ;)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Le résultat ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Un profil aromatique atypique et parfaitement équilibré à la fois qui associe subtilement des notes fumées et acidulées : mixée ou savourée seule, cette édition limitée surprend et séduit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://projets.bdx.digital-campus.net/archibald/index.php/degustation/" data-type="page" data-id="14">Notes de dégustation et usage de l\'Edition Limitée #1...</a></p>\n<!-- /wp:paragraph -->', 'La première édition limitée Archibald', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-03-13 16:19:54', '2021-03-13 15:19:54', '', 54, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2021-03-13 16:23:05', '2021-03-13 15:23:05', '<!-- wp:list {"ordered":true} -->\n<ol><li>ARCHIBALD : VERTUEUX POUR L\'HOMME ET LA PLANETE</li><li>EN TOUTE TRANSPARENCE : ON VOUS DIT TOUT</li><li>ENCORE MIEUX DEMAIN</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Introduction archi engagé & responsable', '', 'publish', 'open', 'open', '', 'introduction-archi-engage-responsable', '', '', '2021-03-13 16:23:05', '2021-03-13 15:23:05', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=56', 14, 'post', '', 0),
(57, 1, '2021-03-13 16:23:05', '2021-03-13 15:23:05', '<!-- wp:list {"ordered":true} -->\n<ol><li>ARCHIBALD : VERTUEUX POUR L\'HOMME ET LA PLANETE</li><li>EN TOUTE TRANSPARENCE : ON VOUS DIT TOUT</li><li>ENCORE MIEUX DEMAIN</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Introduction archi engagé & responsable', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-03-13 16:23:05', '2021-03-13 15:23:05', '', 56, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2021-03-13 16:27:03', '2021-03-13 15:27:03', '<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Archibald,<br>Aujourd\'hui vertueux<br>et demain circulaire.</p>\n<!-- /wp:paragraph -->', 'Citation engagé & responsable', '', 'publish', 'open', 'open', '', 'citation-engage-responsable', '', '', '2021-03-13 16:27:03', '2021-03-13 15:27:03', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=58', 15, 'post', '', 0),
(59, 1, '2021-03-13 16:27:03', '2021-03-13 15:27:03', '<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Archibald,<br>Aujourd\'hui vertueux<br>et demain circulaire.</p>\n<!-- /wp:paragraph -->', 'Citation engagé & responsable', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-03-13 16:27:03', '2021-03-13 15:27:03', '', 58, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2021-03-14 14:50:38', '2021-03-14 13:50:38', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : «&nbsp;Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème.&nbsp;»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte&nbsp; positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left"><img class="wp-image-124" style="width: 54px;" src="http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/linkedin.png" alt="linkedin">Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises&nbsp;pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie,&nbsp;déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'publish', 'open', 'open', '', '1-archibald-vertueux-pour-lhomme-et-la-planete', '', '', '2021-03-14 18:21:42', '2021-03-14 17:21:42', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=60', 16, 'post', '', 0),
(61, 1, '2021-03-13 16:45:15', '2021-03-13 15:45:15', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-13 16:45:15', '2021-03-13 15:45:15', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2021-03-13 19:55:41', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-03-13 19:55:41', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&p=62', 0, 'product', '', 0),
(63, 1, '2021-03-13 19:56:26', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-03-13 19:56:26', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&p=63', 0, 'product', '', 0),
(64, 1, '2021-03-13 21:22:39', '2021-03-13 20:22:39', '', 'Archibald 6 x 20cl - Bergamote & Gentiane - vieilli en fût', 'Lot de 6 bouteilles 20cl Archibald ÉDITION LIMITÉE - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ÉDITION LIMITÉE AUX DISTILLATS DE BERGAMOTE ET DE GENTIANE VIEILLIS EN FÛT DE CHÊNE :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE WHISKY ET AUTRES SPIRITUEUX BRUNS\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE, SUBTILEMENT FUMÉ ET SANS ALCOOL\r\n\r\n \r\n\r\nArchibald, le temps d’un batch limité, se réinvente pour mieux affirmer son identité de tonic de distillerie. C’est donc avec audace que notre Maître-Distillateur explore d’autres facettes de son savoir-faire avec des distillats de racine de gentiane fraîche et de bergamote vieillis en fût de chêne.\r\n\r\nLe résultat ?\r\n\r\n    une amertume douce et délicate\r\n    des notes acidulées et subtilement fumées\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, typé, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Édition Limitée :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait pour allonger un whisky ou un cognac\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité et sa force en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-6-x-20cl-bergamote-gentiane-vieilli-en-fut', '', '', '2021-03-14 20:28:48', '2021-03-14 19:28:48', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2021-03-14 20:28:26', '2021-03-14 19:28:26', '', 'Archibald 6 x 20cl - Bergamote & Gentiane - vieilli en fût', 'Lot de 6 bouteilles 20cl Archibald ÉDITION LIMITÉE - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ÉDITION LIMITÉE AUX DISTILLATS DE BERGAMOTE ET DE GENTIANE VIEILLIS EN FÛT DE CHÊNE :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE WHISKY ET AUTRES SPIRITUEUX BRUNS\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE, SUBTILEMENT FUMÉ ET SANS ALCOOL\r\n\r\n \r\n\r\nArchibald, le temps d’un batch limité, se réinvente pour mieux affirmer son identité de tonic de distillerie. C’est donc avec audace que notre Maître-Distillateur explore d’autres facettes de son savoir-faire avec des distillats de racine de gentiane fraîche et de bergamote vieillis en fût de chêne.\r\n\r\nLe résultat ?\r\n\r\n    une amertume douce et délicate\r\n    des notes acidulées et subtilement fumées\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, typé, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Édition Limitée :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait pour allonger un whisky ou un cognac\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité et sa force en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'inherit', 'closed', 'closed', '', '64-autosave-v1', '', '', '2021-03-14 20:28:26', '2021-03-14 19:28:26', '', 64, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/64-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2021-03-13 21:25:24', '2021-03-13 20:25:24', '', 'Archibald 12 x 20cl', 'Lot de 12 bouteilles 20cl Archibald Original - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-12-x-20cl', '', '', '2021-03-14 21:27:33', '2021-03-14 20:27:33', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=66', 0, 'product', '', 0),
(67, 1, '2021-03-13 21:26:12', '2021-03-13 20:26:12', '', 'Archibald 24 x 20cl', 'Lot de 24 bouteilles 20cl Archibald Original - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-24-x-20cl', '', '', '2021-03-14 21:27:06', '2021-03-14 20:27:06', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2021-03-13 21:26:47', '2021-03-13 20:26:47', '', 'Archibald 70 x 20cl Livraison Standard uniquement', 'Lot de 70 bouteilles 20cl Archibald Original - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-70-x-20cl-livraison-standard-uniquement', '', '', '2021-03-14 21:26:30', '2021-03-14 20:26:30', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=68', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2021-03-13 21:27:20', '2021-03-13 20:27:20', '', 'Archibald 6 x 50cl', 'Lot de 6 bouteilles 50cl Archibald Original - bouteilles en verre avec capsule à vis.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-6-x-50cl', '', '', '2021-03-14 21:25:59', '2021-03-14 20:25:59', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2021-03-13 21:28:03', '2021-03-13 20:28:03', '', 'Archibald 12 x 50cl', 'Lot de 12 bouteilles 50cl Archibald Original - bouteilles en verre avec capsule à vis.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-12-x-50cl', '', '', '2021-03-14 21:25:31', '2021-03-14 20:25:31', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=70', 0, 'product', '', 0),
(71, 1, '2021-03-13 21:28:33', '2021-03-13 20:28:33', '', 'Archibald 30 x 50cl Livraison Standard uniquement', 'Lot de 30 bouteilles 50cl Archibald Original - bouteilles en verre avec capsule à vis.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-30-x-50cl-livraison-standard-uniquement', '', '', '2021-03-14 21:25:02', '2021-03-14 20:25:02', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2021-03-13 21:28:37', '2021-03-13 20:28:37', '', 'Archibald 30 x 50cl Livraison Standard uniquement', 'Lot de 30 bouteilles 50cl Archibald Original - bouteilles en verre avec capsule à vis.\n\n \n\nARCHIBALD ORIGINAL :\n\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\n\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\n\n \n\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\n\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\n    très frais, complexe avec une belle longueur en bouche\n\n \n\n2 manières de déguster Archibald Original :\n\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\n\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\n\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\n\n \n\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'inherit', 'closed', 'closed', '', '71-autosave-v1', '', '', '2021-03-13 21:28:37', '2021-03-13 20:28:37', '', 71, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/13/71-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2021-03-13 21:29:14', '2021-03-13 20:29:14', '', 'Archibald 4 x 1L', 'Lot de 4 bouteilles 1L Archibald Original - bouteilles en verre avec capsule à vis.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-4-x-1l', '', '', '2021-03-14 21:23:42', '2021-03-14 20:23:42', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2021-03-13 21:30:10', '2021-03-13 20:30:10', '', 'Archibald 8 x 1L', 'Lot de 8 bouteilles 1L Archibald Original - bouteilles en verre avec capsule à vis.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-8-x-1l', '', '', '2021-03-14 21:23:13', '2021-03-14 20:23:13', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2021-03-13 21:30:38', '2021-03-13 20:30:38', '', 'Archibald 16 x 1L Livraison Standard uniquement', 'Lot de 16 bouteilles 1L Archibald Original - bouteilles en verre avec capsule à vis.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'archibald-16-x-1l-livraison-standard-uniquement', '', '', '2021-03-14 21:22:41', '2021-03-14 20:22:41', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2021-03-13 21:31:10', '2021-03-13 20:31:10', '', 'Lot Multi Archibald Original : 2 x 20cl + 2 x 50cl + 2 x 1L', 'Lot Multi Archibald Original  : 2 bouteilles 20cl + 2 bouteilles 50cl + 2 bouteilles 1L - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'lot-multi-archibald-original-2-x-20cl-2-x-50cl-2-x-1l', '', '', '2021-03-14 21:22:04', '2021-03-14 20:22:04', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2021-03-13 21:31:52', '2021-03-13 20:31:52', '', 'Lot Découverte Archibald : Original 3x20cl + Édition Limitée 3x20cl', 'Lot Découverte Archibald : Original (3 bouteilles 20cl) et Édition Limitée (3 bouteilles 20cl) - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nARCHIBALD ÉDITION LIMITÉE AUX DISTILLATS DE BERGAMOTE ET DE GENTIANE VIEILLIS EN FÛT DE CHÊNE :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE WHISKY ET AUTRES SPIRITUEUX BRUNS\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE, SUBTILEMENT FUMÉ ET SANS ALCOOL\r\n\r\n \r\n\r\nArchibald, le temps d’un batch limité, se réinvente pour mieux affirmer son identité de tonic de distillerie. C’est donc avec audace que notre Maître-Distillateur explore d’autres facettes de son savoir-faire avec des distillats de racine de gentiane fraîche et de bergamote vieillis en fût de chêne.\r\n\r\nLe résultat ?\r\n\r\n    une amertume douce et délicate\r\n    des notes acidulées et subtilement fumées\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, typé, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Édition Limitée :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait pour allonger un whisky ou un cognac\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité et sa force en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'lot-decouverte-archibald-original-3x20cl-edition-limitee-3x20cl', '', '', '2021-03-14 21:21:14', '2021-03-14 20:21:14', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2021-03-13 21:32:27', '2021-03-13 20:32:27', '', 'Lot Découverte Archibald Original 2x20cl + 2x50cl + 2x1L + Ed. Lim. 2x20cl', 'Lot Découverte Archibald : Original (2 bouteilles 20cl + 2 bouteilles 50cl + 2 bouteilles 1L) et Édition Limitée (2 bouteilles 20cl) - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nARCHIBALD ÉDITION LIMITÉE AUX DISTILLATS DE BERGAMOTE ET DE GENTIANE VIEILLIS EN FÛT DE CHÊNE :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE WHISKY ET AUTRES SPIRITUEUX BRUNS\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE, SUBTILEMENT FUMÉ ET SANS ALCOOL\r\n\r\n \r\n\r\nArchibald, le temps d’un batch limité, se réinvente pour mieux affirmer son identité de tonic de distillerie. C’est donc avec audace que notre Maître-Distillateur explore d’autres facettes de son savoir-faire avec des distillats de racine de gentiane fraîche et de bergamote vieillis en fût de chêne.\r\n\r\nLe résultat ?\r\n\r\n    une amertume douce et délicate\r\n    des notes acidulées et subtilement fumées\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, typé, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Édition Limitée :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait pour allonger un whisky ou un cognac\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité et sa force en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'lot-decouverte-archibald-original-2x20cl-2x50cl-2x1l-ed-lim-2x20cl', '', '', '2021-03-14 21:20:47', '2021-03-14 20:20:47', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2021-03-13 21:33:13', '2021-03-13 20:33:13', '', 'Lot Découverte Archibald : Original 6x20cl + Édition Limitée 6x20cl', 'Lot Découverte Archibald : Original (6 bouteilles 20cl) et Édition Limitée (6 bouteilles 20cl) - bouteilles en verre.\r\n\r\n \r\n\r\nARCHIBALD ORIGINAL :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE GIN ET AUTRES SPIRITUEUX\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE ET SANS ALCOOL\r\n\r\n \r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Original :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait, pour les grands amateurs de gin tonic, Archibald est le tonic parfait pour les gins mais aussi les liqueurs de gentiane, les apéritifs comme Folle Envie, le cognac, etc...\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité en goût permet un moment de dégustation\r\n\r\n \r\n\r\nARCHIBALD ÉDITION LIMITÉE AUX DISTILLATS DE BERGAMOTE ET DE GENTIANE VIEILLIS EN FÛT DE CHÊNE :\r\n\r\n- À MIXER : POUR SUBLIMER VOTRE WHISKY ET AUTRES SPIRITUEUX BRUNS\r\n\r\n- À DÉGUSTER SEUL : POUR UN RAFRAÎCHISSEMENT COMPLEXE, SUBTILEMENT FUMÉ ET SANS ALCOOL\r\n\r\n \r\n\r\nArchibald, le temps d’un batch limité, se réinvente pour mieux affirmer son identité de tonic de distillerie. C’est donc avec audace que notre Maître-Distillateur explore d’autres facettes de son savoir-faire avec des distillats de racine de gentiane fraîche et de bergamote vieillis en fût de chêne.\r\n\r\nLe résultat ?\r\n\r\n    une amertume douce et délicate\r\n    des notes acidulées et subtilement fumées\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, typé, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\n2 manières de déguster Archibald Édition Limitée :\r\n\r\n    comme un mixer pour sublimer vos cocktails en mettant en valeur le spiritueux et en renforçant la complexité de l\'aromatique\r\n\r\n>> Parfait pour allonger un whisky ou un cognac\r\n\r\n    comme une boisson rafraîchissante sans alcool qui par sa complexité et sa force en goût permet un moment de dégustation\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'lot-decouverte-archibald-original-6x20cl-edition-limitee-6x20cl', '', '', '2021-03-14 21:20:18', '2021-03-14 20:20:18', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2021-03-13 21:33:18', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-03-13 21:33:18', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&p=80', 0, 'product', '', 0),
(81, 1, '2021-03-13 21:36:55', '2021-03-13 20:36:55', '', 'Sachet de 15 Baies de Genièvre', 'Sachet kraft contenant 15 baies de genièvre.\r\n\r\nAjoutez 1 à 3 baies de genièvre dans votre verre de gin tonic ou d\'Archibald pur pour une dégustation dans les règles de l\'art !', 'publish', 'open', 'closed', '', 'sachet-de-15-baies-de-genievre', '', '', '2021-03-14 21:19:30', '2021-03-14 20:19:30', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2021-03-13 21:37:33', '2021-03-13 20:37:33', '', 'Pink Pepper Gin 44% 70cl', '1 bouteille de gin Pink Pepper 70cl - 44% vol\r\n\r\nPINK PEPPER GIN, UN GIN AUX NOTES DE POIVRE ROSE PUISSANT ET AUDACIEUX !\r\n\r\n \r\n\r\nDISTILLERIE : AUDEMUS SPIRITS\r\n\r\nDISTILLATEUR & CO-FONDATEUR : MIKO ABOUAF\r\n\r\nFRANCE - Cognac (pas très loin de la distillerie d\'Archibald ;)\r\n\r\n \r\n\r\nPINK PEPPER GIN AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR PINK PEPPER GIN :\r\n\r\n    Élaboration : un assemblage unique et artisanal de 9 botanicals, infusés séparément dans un alcool de grain pur et neutre. Les notes de tête sont le poivre rose, la cardamome et la baie de genièvre - distillés séparément dans «Brunhilda», un alambic en verre sur mesure à basse pression. Les notes de fond proviennent d\'une distillation d\'un miel local, d\'infusions de vanille et de fève tonka, ainsi que de trois ingrédients distillés qui restent secrets. Des mois et des mois ont été nécessaires pour que Miko, le Maître-Distillateur finalise sa recette parfaite, et c\'est le même perfectionnisme à chaque batch - au final : un gin doux et élégant.\r\n\r\n    Dégustation : la première gorgée de Pink Pepper Gin révèle des notes fraîches et épicées de poivre rose, de genièvre et de cardamome. Allongé ou servi frais sur de la glace, l\'esprit évolue et les notes pâtissières de vanille, de  fève tonka et de miel passent au premier plan. En bouche, le gin est corsé et intensément aromatique - il est donc parfait pour être dégusté seul ou en cocktail', 'publish', 'open', 'closed', '', 'pink-pepper-gin-44-70cl', '', '', '2021-03-14 21:18:59', '2021-03-14 20:18:59', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2021-03-13 21:38:09', '2021-03-13 20:38:09', '', 'Résidence Gin Bio 43% 70cl', '1 bouteille de gin bio Résidence 70cl - 43% vol\r\n\r\nRÉSIDENCE GIN, LENTEMENT DISTILLÉ DANS LES CHARENTES !\r\n\r\n \r\n\r\nPROPRIÉTAIRE : MATHIEU LEBOEUF\r\n\r\nFRANCE - Chevanceaux près de Cognac\r\n\r\n \r\n\r\nRÉSIDENCE GIN AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR RÉSIDENCE GIN :\r\n\r\n    Pourquoi une Cagouille et non pas un escargot ? Une Cagouille est charentaise, à l’instar de la gamme de spiritueux Résidence, sinon il s’agit d’un escargot ! \r\n\r\n    Tous les spiritueux Résidence sont distillés au cœur de la région des Charentes, en alambic traditionnel charentais, bénéficiant d’une expertise datant de prêt de deux siècles. \r\n\r\n    Élaboration : Toutes les botaniques sont distillées individuellement avant d’être assemblées. Les baies de genièvre biologiques sont distillées en alambic traditionnel charentais. Autre botanique phare, la bergamote dont seule la peau est utilisée, est séchée directement sur le lieu de récolte avant d\'être infusée. Ne pouvant tout dévoiler de cette superbe recette, il ne faut retenir que quatre autres botaniques viennent compléter la palette aromatique.\r\n    Dégustation :\r\n        À l\'oeil : Une couleur cristalline pouvant laisser apparaître un léger voile à basse température.\r\n        Au nez : Une attaque franche, fruitée, ronde et épicée. Suivent des notes de coeur de baies de genièvre fraîches, légèrement résineuses, de fleur d’oranger, bergamote et une pointe de racine d’angélique. La découverte des notes de fond révèle un ensemble harmonieux de noix de muscade, clous de girofle et de poivre du Timut.\r\n        En bouche : ’attaque est soyeuse, chaude, d’une grande richesse. Suit un généreux bouquet d’oranges confites mêlant zeste d’agrumes et délicates épices que l’on trouve au nez en notes de fond avec la cannelle en plus.\r\n', 'publish', 'open', 'closed', '', 'residence-gin-bio-43-70cl', '', '', '2021-03-14 21:18:11', '2021-03-14 20:18:11', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2021-03-13 21:38:45', '2021-03-13 20:38:45', '', 'Petit Grain Gin aux Agrumes 47% 50cl', '1 bouteille de gin Petit Grain - gin aux Agrumes -  50cl - 47% vol\r\n\r\nGIN PETIT GRAIN, UN GIN ARTISANAL AUX AGRUMES QUI FRÔLE EN TOUTE SIMPLICITÉ LA PERFECTION\r\n\r\n \r\n\r\nDISTILLERIE DU PETIT GRAIN\r\n\r\nDISTILLATEUR & PROPRIÉTAIRE : LAURENT GASPARD\r\n\r\nFRANCE - Saint-Jean-de-Minervois\r\n\r\n \r\n\r\nGIN PETIT GRAIN AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN PETIT GRAIN :\r\n\r\n \r\n\r\n    Philosophie d\'approvisionnement : une eau-de-vie ne doit rien devoir qu’à sa matière première. Cette logique concorde avec l’idée que Laurent Gaspard se fait de la distillation : la consommation de l’alcool trouve sa meilleure justification dans la transparence des étapes qui conduisent à la dégustation; quand le distillat doit tout au produit dont il est issu. C’est pourquoi La Disitillerie du Petit Grain choisit des produits purs, issus de préférence de l’agriculture biologique. Une volonté forte de respecter la logique des terroirs, et une auto-interdiction d’avoir une aire d’approvisionnement importante afin de garder un ancrage géographique fort, sans bilan carbone lourd.\r\n    Élaboration : le but de la Distillerie du Petit Grain est de produire des eaux-de-vie fraîches, pures, parfumées, dépourvues d’agressivité. Comment ? avec des méthodes modernes et un savoir-faire traditionnel.\r\n    Laetitia et Laurent Gaspard choisissent des fruits parfumés, sains, à leur maturité optimale. Ils refusent ainsi le manque de maturité comme la surmaturité et ne distillent ainsi que ce qu\'ils mangeraient volontiers. Règle simple, mais qui implique un examen de chaque fruit.\r\n    Savoir-faire de la distillerie : L\'alambic de la distillerie sort des ateliers de M. Jean-Louis Stupfler dont le travail est réputé pour être présent dans les distilleries françaises et étrangères les plus exigeantes et a reçu le titre d’ Entreprise du patrimoine vivant. Cet alambic est à feu nu, ce qui implique un maniement délicat, mais permet de conduire des chauffes précises et favorise le développement d’arômes. Il est en cuivre, exclusivement -un gage de qualité. C’est aussi une obligation pour tous ceux qui ont choisi la bio-dynamie, (l’inox, certes durable, contient du chrome et du nickel). Les distillats ne sont pas filtrés. Les têtes et les queues de distillation en ont été soigneusement écartées. Les rendements sont faibles car seuls les cœurs de chauffe sont conservés.\r\n    Élaboration : Le Gin aux agrumes est une association de baies de genièvre, de poivres frais dont les célèbres poivres de Sichuan et de Timut et des agrumes soigneusement choisis parmi les variétés cultivées par Christophe Comes, chef étoilé de Perpignan : cédrats, yuzus, bigarades, kumquat. C’est un mariage des baies résineuses du Haut-Languedoc et des agrumes cultivés sur les rives du bassin méditerranéen.\r\n    Dégustation : très frais, dense, un peu charnu. En bouche, l\'attaque est délicate mais franche avec des premières notes d\'agrumes légèrement amères, suivie d\'une aromatique complexe qui explose avec des notes de poivre et une pointe d\'acidité agréable. ', 'publish', 'open', 'closed', '', 'petit-grain-gin-aux-agrumes-47-50cl', '', '', '2021-03-14 21:17:40', '2021-03-14 20:17:40', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2021-03-13 21:39:13', '2021-03-13 20:39:13', '', 'Gin Mist - Awen N. Bio 37,5% 70cl', '1 bouteille de gin bio Mist - Awen Nature 70cl - 37,5% vol\r\n\r\nGIN MIST, NATURELLEMENT TROUBLE... ENGAGÉ ET MÉDAILLÉ D\'OR AU CONCOURS MONDIAL DE BRUXELLES !\r\n\r\n \r\n\r\nMédaille D\'OR pour GIN MIST lors du Spirits Selection by Concours Mondial de Bruxelles 2016.\r\n\r\n \r\n\r\nARTISAN DISTILLATEUR & PROPRIÉTAIRE : JULIEN FANNY\r\n\r\nFRANCE - La Bouëxière près de Rennes (Bretagne)\r\n\r\n \r\n\r\nGIN MIST AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR GIN MIST :\r\n\r\n    Philosophie :\r\n        A l’origine, une passion pour la plante ! Passionné depuis toujours par la plante, sa culture et ses vertus, le fondateur d’Awen Nature s’est forgé au fil des années un véritable savoir-faire dans la production artisanale d\'alcool de plantes (Absinthe, Gin et autres spiritueux).\r\n        Awen Nature s’engage pour la préservation de l’environnement avec une production bio qui résulte de la conviction profonde suivante : une agriculture plus respectueuse de l’environnement est nécessaire pour assurer la pérennité des ressources de notre planète. La démarche de développement durable d’Awen Nature passe aussi par l’utilisation d’emballages et de supports de communication respectueux de l’environnement, recyclés ou issus d’une gestion durable des forêts.\r\n        Une fabrication artisanale : les spiritueux artisanaux d’Awen Nature sont fabriqués à partir d’alcool biologique distillé. Parce que la Nature nous apporte ses saveurs, ses parfums et ses couleurs, leurs produits ne contiennent ni conservateurs, ni colorants artificiels.\r\n\r\n    GIN MIST tient son goût des baies de genièvre distillées. La citronnelle lui apporte une note fraîche des plus agréables. D’autres plantes sont également présentes pour l’assemblage d’un arôme chaleureux comme le houblon, la coriandre et la racine d’angélique. L’assemblage spécifique de ces plantes de qualité trouble le gin après la distillation, c’est pour cela qu’il a été baptisé GIN MIST ( brouillard ).\r\n    Élaboration :  Une macération de 48 heures de baies de genévrier, de houblon sauvage, de coriandre, de citronnelle et de racine d’angélique, suivie d\'une distillation simple en alambic à bain-marie\r\n\r\n    Dégustation :\r\n        En bouche : Un gin très doux porté sur la baie de genévrier, en première bouche. Une légère amertume en seconde bouche adoucie par la citronnelle qui donne à Mist un côté floral\r\n        Grâce à son arôme puissant et pénétrant, le gin Mist peut se suffir à lui seul... ou s\'alonge d\'un tonic ou d\'une limonade avec une simple rondelle de citron (idéalement bio).\r\n\r\n \r\n\r\nBio label AB - label Nature et Progrès - Élaboré en France - Médaille d\'Or au concours Mondial de Bruxelles (2016)', 'publish', 'open', 'closed', '', 'gin-mist-awen-n-bio-375-70cl', '', '', '2021-03-14 21:16:58', '2021-03-14 20:16:58', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2021-03-13 21:39:44', '2021-03-13 20:39:44', '', 'Lachanenche Gin Bio 40% 70cl', '1 bouteille de gin Lachanenche 70cl - 40% vol - bio\r\n\r\nLACHANENCHE, UN GIN  100% BIO DISTILLÉ AU COEUR DES ALPES, À LA FOIS VIF ET SUBTIL\r\n\r\n \r\n\r\nMÉDAILLE DE BRONZE ISC 2017 (International Spirits Challenge)\r\n\r\n \r\n\r\nDISTILLERIE : LACHANENCHE\r\n\r\nDISTILLATEURS & PROPRIÉTAIRES : JÉRÔME ET BENOÎT MILLION\r\n\r\nFRANCE - La Fresquière / Méolans-Revel (dans les Alpes, près de Barcelonnette)\r\n\r\n \r\n\r\nLACHANENCHE GIN AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LACHANENCHE GIN :\r\n\r\n    Histoire :\r\n        C\'est dans la Vallée de l\'Ubaye au cœur des Alpes du sud et aux portes du Parc national du Mercantour que la petite distillerie artisane se niche.\r\n        Lachanenche, c\'est avant tout une histoire de famille et de valeurs. Elle commence en 1994 quand nos parents, Nicole et Daniel Million Rousseau, agriculteurs et passionnés des saveurs de la vallée de l\'Ubaye, créent une liqueur de framboise après une récolte particulièrement abondante de fruits.\r\n        Après plusieurs années de partage et de formation, les 2 frères Jérôme et Benoît décident de reprendre l\'entreprise de leurs parents en 2019. Fiers de ce patrimoine, ils préservent une méthode respectueuse de l\'environnement et créent une nouvelle gamme de spiritueux, toujours à base de produits locaux.\r\n    Philosophie :\r\n        Pastis, liqueurs, génépi, eau-de-vie et gin sont élaborés en circuits courts et certifiés bio, 100 % naturels, sans additifs et sans extraits ni concentrés.\r\n\r\n         Cette terre d\'exception où la biodiversité est l\'une des plus riches d\'Europe abrite un jardin naturel dans lequel les plantes sont sélectionnées pour leur intensité aromatique\r\n\r\n        pour ce gin, les baies de genièvre et les fleurs de sureau sont ainsi cueillies à 1600 mètres d\'altiture\r\n    Élaboration : Dans un vieil alambic datant de 1900, une triple distillation lente d\'une macération de baies de genièvre, aromatisée avec des zestes de citron, de la coriandre, de la rose à parfum, et de la fleur de sureau sauvage... Une réduction à l\'eau de source locale qui assure une grande richesse aromatique.\r\n    Dégustation :	\r\n        Nez : puissant et complexe sur une dominante végétale. Notes d\'agrumes (citron vert / kumquat) équilibrées par des touches épicées de poivre et de résine de pin.\r\n        En bouche : attaque assez ronde où s\'exprime les notes florales de rose et de fleur de sureau laissant place petit à petit à l\'amertume du genièvre et aux notes d\'épices. La fin de bouche est longue et laisse pleinement s\'exprimer le caractère bien trempé du genièvre de montagne.\r\n        Ce gin complexe par sa composition et sa richesse aromatique saura combler les amateurs qui pourront le déguster sec ou en en cocktail\r\n\r\n \r\n\r\n100% Bio (label AB) - Élaboré en France', 'publish', 'open', 'closed', '', 'lachanenche-gin-bio-40-70cl', '', '', '2021-03-14 21:16:23', '2021-03-14 20:16:23', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2021-03-13 21:40:10', '2021-03-13 20:40:10', '', 'Balea Gin Bio 40% 70cl', '1 bouteille de gin bio Balea 70cl - 40% vol\r\n\r\nBALEA, UN GIN 100% BASQUE AUX ACCENTS D\'AGRUME ET D\'IODE\r\n\r\n \r\n\r\nBALEA & CO CRAFT COMPANY x DOMAINE LABALLE\r\n\r\nPAYS BASQUE\r\n\r\n \r\n\r\nLE GIN BALEA AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN BALEA :\r\n\r\n    Histoire :\r\n\r\n        "La baleine n\'avale jamais ce qu\'elle ne peut pas digérer"\r\n\r\n        Cyril et ses amis se sont rassemblés pour créer ce Gin 100% Pays Basque! Associant la culture du Pays Basque et les mystères de l’océan Atlantique, BALEA incarne les subtilités propres à notre territoire : modernité, tradition et caractère\r\n\r\n    Élaboration :\r\n        dans un des plus vieux alambics d\'Europe de la marque Hervé Moulin - un alambic en cuivre datant de 1880, distillation d\'un mélange de plantes aromatiques et d\'agrumes issus de l\'agriculture biologique\r\n        12 ingrédients macérés pendant 20 jours puis distillés individuellement\r\n        une réduction à l\'eau de source du parc naturel de Gorbeia, au Pays Basque.\r\n    Dégustation :\r\n        au nez : un parfum envoûtant, légèrement salin, délicat, élégant avec des notes d\'agrumes\r\n        en bouche : des notes fraîches citronnées, conjuguées à l\'intensité de la genièvre qui qui offre une bouche suave et savoureuse, avec une finale finement iodée\r\n\r\n \r\n\r\nProduit au Pays Basque', 'publish', 'open', 'closed', '', 'balea-gin-bio-40-70cl', '', '', '2021-03-14 20:38:30', '2021-03-14 19:38:30', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2021-03-13 21:40:47', '2021-03-13 20:40:47', '', 'Bercloux Gin Bio 45% 70cl', '1 bouteille de gin bio Bercloux 70cl - 45% vol\r\n\r\nBERCLOUX, UN GIN POUR LES AMOUREUX DE LA GENIÈVRE ET DE LA CORIANDRE\r\n\r\nDISTILLERIE BERCLOUX\r\n\r\nDISTILLATEUR : Philippe Laclie\r\n\r\nFRANCE - Bercloux (près de Cognac)\r\n\r\n \r\n\r\nLE GIN BERCLOUX AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN BERCLOUX :\r\n\r\n    Histoire : tout commence par une brasserie fondée en 2002 par Philippe Laclie, dans la région du Cognac... qui en 2014 passera une étape supérieure avec l\'acquisition d\'un alambic Stupfler pour devenir une distillerie : La Distillerie de Bercloux.\r\n\r\n    Élaboration :\r\n        5 botaniques bio : baies de genévriers, coriandre, racines d\'angélique, racine de calamus et maniguette* (graines du paradis)\r\n        distillation dans un alambic Stupfler® après avoir laissé macérer les plantes pendant 48 heures\r\n    Dégustation :\r\n        aux yeux : une robe voluptueuse et limpide\r\n        au nez : des notes fraîches et épicées grâce à la coriandre, suivies par par des arômes herbacés grâce aux racines d\'angélique et de calamus\r\n        en bouche : une belle longueur due à la genièvre, tout en restant sur un ensemble délicat et suave.\r\n\r\n \r\n\r\nBio - Produit en France', 'publish', 'open', 'closed', '', 'bercloux-gin-bio-45-70cl', '', '', '2021-03-14 20:38:01', '2021-03-14 19:38:01', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2021-03-13 21:41:30', '2021-03-13 20:41:30', '', 'Erika Dry Gin 45% 50cl', '1 bouteille de gin Erika - Dry gin -  50cl - 45% vol\r\n\r\nERIKA DRY GIN, DE LA RUCHE À L\'ALAMBIC : IL N\'Y A QU\'UN PAS !\r\n\r\n \r\n\r\nERIKA GIN\r\n\r\nPROPRIÉTAIRES : PAUL, VIANNEY & THIBAULT\r\n\r\nFRANCE - Bergerac\r\n\r\n \r\n\r\nERIKA DRY GIN AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR ERIKA DRY GIN :\r\n\r\n \r\n\r\n    Histoire : Le Dry est la marque de fabrique des spiritueux d’Erika. C’est avec ce gin que tout à commencé.... Flashback : fin 2017, 3 copains passionnés de gin, Paul, Vianney et Thibault refont le monde au Café Brun à Bordeaux et finissent la soirée avec la décision de créer leur propre gin. Leur souhait, comme un fil conducteur, était de retrouver le Genièvre, base du gin, en tant que colonne vertébrale de notre gin et d’y incorporer le miel de Bruyère Erica récolté par Paul. L\'idée était d\'éviter un gin trop sucré, et surtout d\'embellir et conserver les arômes du miel de bruyère.\r\n    Philosophie d\'approvisionnement : Les ingrédients ainsi que la fabrication sont issus en très grande majorité de Nouvelle Aquitaine.\r\n    Élaboration : 8 botaniques  ont été sélectionnés pour ce gin : le Genièvre, la coriandre, le miel de bruyère ERIKA (produit et récolté par Paul Thirion, un des 3 co-fondateurs), la physalis, la feuille de noyer, la fleur de sureau, l’estragon, la baie de Sansho. Quant à l\'alambic, c\'est un Stupfler, pour avoir un côté gras ainsi qu’une texture soyeuse.\r\n    Dégustation : Rond, puissant, aromatique, ce gin, bien fait, vous surprendra par ses notes d’épices et de miel sans en en avoir la sucrosité.', 'publish', 'open', 'closed', '', 'erika-dry-gin-45-50cl', '', '', '2021-03-14 20:37:38', '2021-03-14 19:37:38', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2021-03-13 21:42:14', '2021-03-13 20:42:14', '', 'Blurry Moon Gin Bio 42% 50cl', '1 bouteille de gin bio Blurry Moon 50cl - 42% vol\r\n\r\nGIN BLURRY MOON, FRAÎCHEUR ET ÉLÉGANCE\r\n\r\n \r\n\r\nDISTILLERIE GIMET EN COLLABORATION AVEC LA DISTILLERIE AWEN NATURE\r\n\r\nPROPRIÉTAIRES : NICOLAS SINOQUET (directeur du Château Gruaud-Larose)\r\n\r\nFRANCE - Laujuzan - (Gers)\r\n\r\n \r\n\r\nLE GIN BLURRY MOON AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN BLURRY MOON :\r\n\r\n    « Blurry Moon » signifie « lune troublée » qui renvoie à cet effet flou produit par l’absence de filtration du gin, et le précipité des huiles essentielles qui le composent.\r\n    Histoire :\r\n        La distillerie Gimet  à Cazeneuve, institution armagnacaise fondée en 1929 par Clémence Gimet et installée au rang des piliers de l’eau de vie gasconne par les descendants Roger et Jean-Pierre. Au décès de ce dernier en 2009, qui pourrait de nouveau incarner le distillateur gascon ? Un Jean-Pierre Gimet aussi à l’aise dans ce corps à corps sensuel avec l’alambic -prestigitateur de la transformation du vin en eau-de-vie- qu’autour d’une table gourmande pimentée de gasconnes anecdotes ? Personne, croyait-on. D’autant que la famille Gimet ne vendrait pas au seul dessein mercantile.\r\n            C\'est un brillant ingénieur, Nicolas Sinoquet, qui depuis très longtemps rêvait d’investir dans une distillerie. « Mais pas dans l’Est de la France ou en Charente, c’est l’armagnac, son histoire, son authenticité et sa qualité qui m’attiraient ».\r\n    Philosophie : située dans le Gers, depuis 1929, la distillerie Gimet place l’excellence de ses produits au cœur de ses préoccupations. La démarche a consisté à révéler, à travers la trame puissante d’un london dry (macération, puis distillation des plantes), la typicité et la puissance des plantes qui participent de sa composition.\r\n\r\n    Élaboration : distillé à base de blé dans laquelle est mis à macérer un ensemble de cinq botaniques (genièvre, citronnelle, quinquina rouge, houblon sauvage, coriandre)\r\n    Dégustation :\r\n        Au nez : genièvre, citronnelle, quinquina rouge, houblon sauvage, coriandre\r\n        En bouche : Belle fraîcheur sur la citronnelle, balancée immédiatement par la subtile amertume du quinquina rouge.\r\n        Finale : Longue, raffinée et mentholée\r\n        À déguster pur ou avec un joli tonic ;) (suivez mon regard)\r\n\r\n \r\n\r\nBio Label AB - Produit en France', 'publish', 'open', 'closed', '', 'blurry-moon-gin-bio-42-50cl', '', '', '2021-03-14 20:37:10', '2021-03-14 19:37:10', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2021-03-13 21:42:41', '2021-03-13 20:42:41', '', 'Oli\' Gin 41% 50cl', '1 bouteille de gin Oli\' Gin 50cl - 41% vol\r\n\r\nQUAND LA DISTILLERIE ARTISANALE MANGUIN CAPTURE LA QUINTESSENCE DE L\'OLIVE POUR CRÉER OLI\' GIN...\r\n\r\n \r\n\r\nDISTILLERIE : MANGUIN\r\n\r\nDISTILLATEUR & PROPRIÉTAIRE : EMMANUEL HANQUIEZ\r\n\r\nFRANCE - Ile de la Barthelasse - Avignon\r\n\r\n \r\n\r\nOLI\' GIN AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR OLI\' GIN :\r\n\r\n    Élaboration : Distillation en alambic Charentais, réductions progressives, maturation dans l\'atelier aux températures contrastées.\r\n    Dégustation : Dominante de genièvre et d\'olive.Tonalités salines et iodées. Touches de violette et de truffe.', 'publish', 'open', 'closed', '', 'oli-gin-41-50cl', '', '', '2021-03-14 20:36:44', '2021-03-14 19:36:44', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=91', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2021-03-13 21:43:13', '2021-03-13 20:43:13', '', 'Gin Ganesh - Awen N. Bio 44,8% 70cl', '1 bouteille de gin bio Ganesh - Awen Nature 70cl - 44,8% vol\r\n\r\nGANESH, UN GIN ÉPICÉ VIEILLI EN FÛT DE CHÊNE FRANÇAIS ET AFFINÉ EN FÛT D\'ARMAGNAC !\r\n\r\n \r\n\r\n \r\n\r\nARTISAN DISTILLATEUR & PROPRIÉTAIRE : JULIEN FANNY\r\n\r\nFRANCE - La Bouëxière près de Rennes (Bretagne)\r\n\r\n \r\n\r\nGIN GANESH AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN GANESH :\r\n\r\n    Philosophie :\r\n        A l’origine, une passion pour la plante ! Passionné depuis toujours par la plante, sa culture et ses vertus, le fondateur d’Awen Nature s’est forgé au fil des années un véritable savoir-faire dans la production artisanale d\'alcool de plantes (Absinthe, Gin et autres spiritueux).\r\n        Awen Nature s’engage pour la préservation de l’environnement avec une production bio qui résulte de la conviction profonde suivante : une agriculture plus respectueuse de l’environnement est nécessaire pour assurer la pérennité des ressources de notre planète. La démarche de développement durable d’Awen Nature passe aussi par l’utilisation d’emballages et de supports de communication respectueux de l’environnement, recyclés ou issus d’une gestion durable des forêts.\r\n        Une fabrication artisanale : les spiritueux artisanaux d’Awen Nature sont fabriqués à partir d’alcool biologique distillé. Parce que la Nature nous apporte ses saveurs, ses parfums et ses couleurs, leurs produits ne contiennent ni conservateurs, ni colorants artificiels.\r\n        une étiquette conçue par l\'artiste Gwladys Rose\r\n\r\n    Élaboration : \r\n        Une macération puis distillation de baies de genièvre, gingembre, curcuma, galanga, zeste d’orange, poivre cubèbe, macis, cardamome, graine de paradis, racine de maca, clou de girofle et écorce de bois bandé.\r\n        vieilli en fût de chêne français puis un affiné en fût d\'armagnac\r\n\r\n    Dégustation :\r\n        En bouche : épicé avec une sucrosité agréable et une belle longueur\r\n\r\n \r\n\r\nBio label AB - Élaboré en France', 'publish', 'open', 'closed', '', 'gin-ganesh-awen-n-bio-448-70cl', '', '', '2021-03-14 20:36:16', '2021-03-14 19:36:16', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2021-03-13 21:43:41', '2021-03-13 20:43:41', '', 'Gin Bandarel Dry 43% 70cl', '1 bouteille de gin Bandarel Dry 70cl - 43% vol\r\n\r\nBANDAREL DRY, UN GIN PUISSANT, RACÉ ET OCCITAN !\r\n\r\nmédaille de bronze au Concours Général Agricole 2019\r\n\r\n \r\n\r\nDISTILLERIE ARTISANALE : BOWS\r\n\r\nDISTILLATEUR CRÉATEUR : BENOÎT GARCIA\r\n\r\nFRANCE - Montauban\r\n\r\n \r\n\r\nLE GIN BANDAREL DRY AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN BANDAREL DRY :\r\n\r\n    Histoire :\r\n        née en 2016 à Montauban, la distillerie  artisanale BOWS doit son nom aux initiales de "Brave occitan Wild spirit", traduire : "l’esprit sauvage du courage Occitan"\r\n\r\n        Oeuvrant dans le génie climatique, l’idée de créer une distillerie à émergé dans la tête de Benoît Garcia au cours des mises en service de machines sophistiquées pour des installations complexes. Pourquoi ne pas gérer une installation de gestion de « fluides » distillés?\r\n\r\n         \r\n\r\n        Après avoir monté les murs de sa future distillerie, et après quelques semaines de mises aux normes, son premier distillat est là !\r\n        Quant au gin "Bandarel", ce nom signifie "Plantes Sauvages" en occitan\r\n         \r\n\r\n    Un état d\'esprit éco-responsable et créatif\r\n        BOWS travaille avec des acteurs locaux et en économie circulaire, tous les résidus sont revalorisés et les empreintes carbone amoindries.\r\n        Le brassin, la fermentation, le vieillissement et la mise en bouteille sont élaborés sur place.\r\n        Benoît Garcia, le distillateur créateur, a  designé sa bouteille ainsi que ses étiquettes. Son âme réside dans chaque produit.\r\n    Élaboration :\r\n        à base de 14 botaniques dont les baies de genièvre, la coriandre, la cardamome, le thym, la menthe, le poivre\r\n    Dégustation :\r\n        à la fois rond et typé,  des notes agréables de garrigue conjugées à une grande énergie\r\n        Se prête parfaitement à la réalisation de cocktails\r\n\r\n \r\n\r\nProduit en France', 'publish', 'open', 'closed', '', 'gin-bandarel-dry-43-70cl', '', '', '2021-03-14 20:35:53', '2021-03-14 19:35:53', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2021-03-13 21:44:09', '2021-03-13 20:44:09', '', 'Avem Hippolais Gin 40,4% 50cl', '1 bouteille de gin Avem Hippolais 50cl - 40,4% vol\r\n\r\nAVEM HIPPOLAIS, UN LONDON DRY GIN GOURMAND\r\n\r\n \r\n\r\nMAISON MOUNIQ\r\n\r\nPROPRIÉTAIRES : CÉDRIK ET AXEL NADÉ\r\n\r\nFRANCE - Cognac\r\n\r\n \r\n\r\nLE GIN AVEM HIPPOLAIS AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN AVEM HIPPOLAIS :\r\n\r\n    Histoire :\r\n        Après avoir lancé la VODKA NADÉ, Cédrik Nadé avait à cœur d’impliquer son petit frère Axel dans cette aventure. Pour cela il a décidé de l’associer dans l’élaboration de gins expérimentaux qui soient le reflet de leurs personnalités. L\'exigence, la rigueur et le gout du détail de l\'un couplé à la créativité, la fougue et l\'insouciance de l\'autre.\r\n\r\n        Pour cela, ils sont partis à la rencontre de distillateurs passionnés et passionnants, qui puissent apporter leur expertise et leur savoir-faire à leurs expérimentations. Pour symboliser ce voyage et surtout cette collaboration ils ont baptisé le résultat de leurs travaux, Avem qui signifie oiseau en latin. Fils d’ornithologue, ce choix fut une évidence. Bercés par leurs chants, ils aiment tout ce qu’ils incarnent à commencer par la liberté, une ligne de conduite pour la création de leurs gins. ”\r\n    Avem Hippolais est le fruit de la collaboration de Cédrik et Axel Nadé avec Christophe Gauville, Maitre distillateur de la distillerie Des Moisans, située à Sireuil au sud-est de Cognac.\r\n\r\n    Élaboration :\r\n        en adaptant la méthode ancestrale, généralement utilisée pour la confection de cognacs, de whiskys ou encore de grands vins : l’art de l’assemblage.\r\n        à base de 3 eaux-de-vie assemblées avec précision. Une première, réalisée à base de baies de genévrier, une seconde, avec les plantes et aromates, et une troisième, créée uniquement avec des raisins originaires de la région bordelaise (merlot, cabernet franc, cabernet sauvignon et sémillon).\r\n    Dégustation :\r\n        de fines notes de citrons confits, ponctuée de subtiles touches florales ainsi qu’une belle longueur poivrée en bouche.\r\n        un gin gourmand, aussi bien servi en dégustation pure à température ambiante ou agrémentée d’un tonic sur un écrasé de raisins blancs, rappelant ses origines viniques.\r\n\r\n \r\n\r\nProduit en France', 'publish', 'open', 'closed', '', 'avem-hippolais-gin-404-50cl', '', '', '2021-03-14 20:35:32', '2021-03-14 19:35:32', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2021-03-13 21:44:37', '2021-03-13 20:44:37', '', 'Bacalan Dry Gin 43,3% 50cl', '1 bouteille de gin Bacalan Dry 50cl - 43,3% vol\r\n\r\nBACALAN DRY, UN GIN SEC, ÉPICÉ ET PRÉCIS\r\n\r\n \r\n\r\nDISTILLERIE : BORDEAUX DISTILLING CO\r\n\r\nDISTILLATEURS PROPRIÉTAIRES : ANTOINE GRAVOUIL ET ARNAUD CHEVALIER\r\n\r\nFRANCE - Bordeaux\r\n\r\n \r\n\r\nLE GIN BACALAN DRY AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN BACALAN DRY :\r\n\r\n    Histoire :\r\n        Fondée en 2018, Bordeaux Distilling Company est une distillerie artisanale située à Bordeaux, dans le quartier de Bacalan, pas très loin de la Cité du Vin. Elle est équipée d’une brasserie complète et d’un alambic Carl de 750l, construit sur mesure. Ce qui lui permet de produire des spiritueux d’une grande diversité : gin, whisky, rhum, liqueur ou bitters.\r\n        Tout est réalisé très artisanalement et en petit lots (400 à 500 bouteilles en moyenne), de la mise en œuvre des céréales à la mise ne bouteille, en passant par la macération, la fermentation, la distillation et le vieillissement sous bois\r\n        Bordeaux Distilling Company produit des gins saisonniers en toute petite cuvée\r\n\r\n    Élaboration :\r\n        Bacalan est un gin de type London Dry, dont tous les ingrédients sont distillés ensemble, par la combinaison de deux techniques : macération dans la bouilloire pendant la distillation et extraction douce à la vapeur dans un panier suspendu.\r\n        Ni les têtes, ni les queues ne sont gardées et redistillées au cours de la distillation suivante.\r\n        Bacalan gin est aussi distillé en une seule passe avec le juste volume d’alcool neutre et la quantité exacte d’ingrédients nécessaires à son parfait équilibre. Il est simplement réduit lentement au degré de dégustation sur plusieurs semaines avant son embouteillage.\r\n        Botaniques : Genièvre, coriandre, Angélique, réglisse, Orange, citron, bergamote, pamplemousse, …\r\n    Dégustation :\r\n        Arômes secs et épicés\r\n        à déguster pur ou en mode gin & tonic\r\n\r\n \r\n\r\nProduit en France', 'publish', 'open', 'closed', '', 'bacalan-dry-gin-433-50cl', '', '', '2021-03-14 20:35:00', '2021-03-14 19:35:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2021-03-13 21:45:03', '2021-03-13 20:45:03', '', 'Moon Gin 45,8% 70cl', '1 bouteille de gin Moon 70cl - 45,8% vol\r\n\r\nMOON GIN, UN LONDON DRY GIN ÉLABORÉ DANS L\'ANCIENNE BASE SOUS-MARINE DE BORDEAUX !\r\n\r\n \r\n\r\nDISTILLERIE DE MOON HARBOUR\r\n\r\nPROPRIÉTAIRES : JEAN-PHILIPPE BALLANGER ET YVES MEDINA\r\n\r\nFRANCE - Bordeaux\r\n\r\n \r\n\r\nLE GIN MOON AVEC ARCHIBALD ?  en gin tonic avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LE GIN MOON :\r\n\r\n    Histoire :\r\n\r\n         la distillerie Moon Harbour : ce nom, elle le doit au fameux croissant de lune que dessine la Garonne à l’entrée de la ville, si emblématique de celle-ci qu’il figure sur ses armoiries ! Belle façon de rappeler que jadis, sur les pavés du bien nommé Port de la Lune, les fûts à quai tamponnés « Bordeaux » attendaient d’être embarqués de nuit sur les navires en partance…\r\n\r\n \r\n\r\n    Élaboration :\r\n        réalisé dans la plus pure tradition du London Dry Gin\r\n        Elaboré dans un alambic haut de gamme de conception bordelaise, il est distillé en une seule fois, de façon très lente et méthodique, ce qui lui confère un bouquet aromatique exceptionnellement préservé\r\n    Dégustation :  des notes de baies de genièvre, coriandre, citron Combava de l’île de la Réunion, poivre Timut du Népal, baies de Goji de Chine, piment d’Espelette\r\n\r\n \r\n\r\nProduit en France', 'publish', 'open', 'closed', '', 'moon-gin-458-70cl', '', '', '2021-03-14 20:34:23', '2021-03-14 19:34:23', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2021-03-13 21:45:34', '2021-03-13 20:45:34', '', 'Liqueur H Theoria Electric Velvet 25,2% 50cl', '1 bouteille de liqueur H Theoria - Electric Velvet -  50cl - 25,2% vol\r\n\r\nAVEC ELECTRIC VELVET, THEORIA OSE L\'EXCITATION INFINIE DES SAVEURS !\r\n\r\n \r\n\r\nH THEORIA\r\n\r\nCRÉATRICES & PROPRIÉTAIRES : CAMILLE HEDIN & MARLÈNE STEIGER\r\n\r\nFRANCE - créé en Ile de France / distillé en Bourgogne\r\n\r\n \r\n\r\nH THEORIA ELECTRIC VELVET AVEC ARCHIBALD ?  en long drink avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LA LIQUEUR ELECTRIC VELVET DE H THEORIA :\r\n\r\n \r\n\r\n    Philosophie : Moderne, surprenante et exigeante, H.Théoria bouscule les codes du spiritueux tant par sa complexité gustative que par son univers graphique et son ADN littéraire. Onirique, poétique, destructurée, tentatrice, H. Theoria casse les codes de la liqueur. À l’instar d’un parfumeur qui crée une fragrance, H.Theoria retranscrit la sensation impalpable d’un trait de caractère par le prisme du goût et de l’odeur.\r\n    Savoir-faire : C’est en Bourgogne, au sein de la maison Gabriel Boudier - élue meilleure Liquoriste au monde, que le meilleur des plantes, des épices, des fruits et des fleurs est extrait grâce à un savoir-faire ancestral.\r\n    Élaboration : La finesse des arômes des liqueurs effrontées repose sur la précision des process de fabrication. Des ingrédients venants du monde entier sont macérés indépendamment dans un mélange d’eau et d’alcool pendant 8 à 10 semaines afin d’obtenir une “teinture” gorgée d’arômes des fruits ou des plantes et de leur si jolies couleurs. Cette teinture est ensuite distillée dans un alambic de plusieurs décennies pour en retirer la puissance éthérée du végétal dans ce qu’on nomme un “alcoolat”. On procède ensuite à l’assemblage des teintures et des alcoolats entre eux suivant les formules originales et atypiques de H.Theoria dont l’élaboration a pris plus d’un an. Une fois l’assemblage réalisé, on laisse danser, s’entremêler et s’émouvoir les aromes pendant presque 4 semaines avant d’embouteiller le précieux elixir.\r\n    Aromatiques et ingrédients : Cardamome, Cranberries, Fruits de la passion, Galanga, Violette, Piment d\'Espelette, Estragon.\r\n    Dégustation :\r\n        Le palais navigue entre les fleurs, les baies, les épices. Cranberry, cardamome, violette mais aussi fruits de la passion, piment et même estragon, il est impossible de fixer son goût sur l\'un des ingrédients. Les notes se répondent, s’assemblent et se mélangent.\r\n        au nez : floral et féminin, se dévoile une caresse parfumée.\r\n        en bouche : l’acidité et le piquant explosent de saveurs surprenantes.\r\n\r\n \r\n\r\nLa liqueur Hystérie se métamorphose et devient Electric Velvet. Si l’habillage fait peau neuve, la formule unique de la liqueur, elle, reste inchangée.', 'publish', 'open', 'closed', '', 'liqueur-h-theoria-electric-velvet-252-50cl', '', '', '2021-03-14 20:33:46', '2021-03-14 19:33:46', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2021-03-13 21:45:57', '2021-03-13 20:45:57', '', 'Liqueur H Theoria Midi Fauve 26% 50cl', '1 bouteille de liqueur H Theoria - Midi Fauve -  50cl - 26% vol\r\n\r\nAVEC MIDI FAUVE, H THEORIA SIGNE L\'HISTOIRE FANTASMÉE D\'UN MOMENT ! CALIENTE, CALIENTE.\r\n\r\n \r\n\r\nH THEORIA\r\n\r\nCRÉATRICES & PROPRIÉTAIRES : CAMILLE HEDIN & MARLÈNE STEIGER\r\n\r\nFRANCE - créé en Ile de France / distillé en Bourgogne\r\n\r\n \r\n\r\nH THEORIA MIDI FAUVE AVEC ARCHIBALD ?  en long drink avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LA LIQUEUR MIDI FAUVE DE H THEORIA :\r\n\r\n \r\n\r\n    Philosophie : Moderne, surprenante et exigeante, H.Théoria bouscule les codes du spiritueux tant par sa complexité gustative que par son univers graphique et son ADN littéraire. Onirique, poétique, destructurée, tentatrice, H. Theoria casse les codes de la liqueur. À l’instar d’un parfumeur qui crée une fragrance, H.Theoria retranscrit la sensation impalpable d’un trait de caractère par le prisme du goût et de l’odeur.\r\n    Savoir-faire : C’est en Bourgogne, au sein de la maison Gabriel Boudier - élue meilleure Liquoriste au monde, que le meilleur des plantes, des épices, des fruits et des fleurs est extrait grâce à un savoir-faire ancestral.\r\n    Élaboration : La finesse des arômes des liqueurs effrontées repose sur la précision des process de fabrication. Des ingrédients venants du monde entier sont macérés indépendamment dans un mélange d’eau et d’alcool pendant 8 à 10 semaines afin d’obtenir une “teinture” gorgée d’arômes des fruits ou des plantes et de leur si jolies couleurs. Cette teinture est ensuite distillée dans un alambic de plusieurs décennies pour en retirer la puissance éthérée du végétal dans ce qu’on nomme un “alcoolat”. On procède ensuite à l’assemblage des teintures et des alcoolats entre eux suivant les formules originales et atypiques de H.Theoria dont l’élaboration a pris plus d’un an. Une fois l’assemblage réalisé, on laisse danser, s’entremêler et s’émouvoir les aromes pendant presque 4 semaines avant d’embouteiller le précieux elixir.\r\n    Aromatiques et ingrédients : Eau de fleur d’oranger, figues, olives noires, racine d’iris, feuilles de coriandre, algues nori, poivre de Timut, cumin noir, vanille.\r\n    Dégustation :\r\n        Figue violette, douce fleur d\'oranger, cumin noir, coriandre. Association déroutante telle une énigme à résoudre. Les sens se mêlent et s’emmêlent pour ne laisser qu’une longue harmonie à la fois chaude et lumineuse.\r\n        Au nez : des notes solaires et animales se font délicates et profondes.\r\n        En bouche : les notes vanillées, florales et vertes teintent cet accord d\'une intense langueur.\r\n', 'publish', 'open', 'closed', '', 'liqueur-h-theoria-midi-fauve-26-50cl', '', '', '2021-03-14 20:33:20', '2021-03-14 19:33:20', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2021-03-13 21:46:26', '2021-03-13 20:46:26', '', 'Liqueur H Theoria Cuir Lointain 28,6% 50cl', '1 bouteille de liqueur H Theoria - Cuir Lointain -  50cl - 28,6% vol\r\n\r\nAVEC CUIR LOINTAIN DE H THEORIA, PLONGEZ-VOUS DANS LE FAUTEUIL EN CUIR D\'UN CLUB ANGLAIS, LUMIÈRES TAMISÉES, ODEURS BOISÉES... LIBÉREZ-VOUS DU QUOTIDIEN.\r\n\r\n \r\n\r\nH THEORIA\r\n\r\nCRÉATRICES & PROPRIÉTAIRES : CAMILLE HEDIN & MARLÈNE STEIGER\r\n\r\nFRANCE - créé en Ile de France / distillé en Bourgogne\r\n\r\n \r\n\r\nH THEORIA CUIR LOINTAIN AVEC ARCHIBALD ?  en long drink avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LA LIQUEUR CUIR LOINTAIN DE H THEORIA :\r\n\r\n \r\n\r\n    Philosophie : Moderne, surprenante et exigeante, H.Théoria bouscule les codes du spiritueux tant par sa complexité gustative que par son univers graphique et son ADN littéraire. Onirique, poétique, destructurée, tentatrice, H. Theoria casse les codes de la liqueur. À l’instar d’un parfumeur qui crée une fragrance, H.Theoria retranscrit la sensation impalpable d’un trait de caractère par le prisme du goût et de l’odeur.\r\n    Savoir-faire : C’est en Bourgogne, au sein de la maison Gabriel Boudier - élue meilleure Liquoriste au monde, que le meilleur des plantes, des épices, des fruits et des fleurs est extrait grâce à un savoir-faire ancestral.\r\n    Élaboration : La finesse des arômes des liqueurs effrontées repose sur la précision des process de fabrication. Des ingrédients venants du monde entier sont macérés indépendamment dans un mélange d’eau et d’alcool pendant 8 à 10 semaines afin d’obtenir une “teinture” gorgée d’arômes des fruits ou des plantes et de leur si jolies couleurs. Cette teinture est ensuite distillée dans un alambic de plusieurs décennies pour en retirer la puissance éthérée du végétal dans ce qu’on nomme un “alcoolat”. On procède ensuite à l’assemblage des teintures et des alcoolats entre eux suivant les formules originales et atypiques de H.Theoria dont l’élaboration a pris plus d’un an. Une fois l’assemblage réalisé, on laisse danser, s’entremêler et s’émouvoir les aromes pendant presque 4 semaines avant d’embouteiller le précieux elixir.\r\n    Aromatiques et ingrédients : Thé noir, rooibos, fleurs de jasmin, azukis, oranges amères, chêne américain, romarin.\r\n    Dégustation : 	\r\n        D’abord, les notes encaustiques du chêne américain, aussitôt désarmées par le goût miellé de l\'orange qui se mêle au jasmin et au rooibos. Rondeur ancienne et patinée.\r\n        Au nez : des notes de fruits cuits, tanniques et agrestes.\r\n        En bouche : une longueur boisée couplée d’agrumes.\r\n\r\n \r\n\r\nLa liqueur Procrastination se métamorphose et devient Cuir Lointain. Si l’habillage fait peau neuve, la formule unique de la liqueur, elle, reste inchangée.', 'publish', 'open', 'closed', '', 'liqueur-h-theoria-cuir-lointain-286-50cl', '', '', '2021-03-14 20:32:51', '2021-03-14 19:32:51', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2021-03-13 21:46:56', '2021-03-13 20:46:56', '', 'Liqueur H Theoria Amour Matador 34,1% 50cl', '1 bouteille de liqueur H Theoria - Amour Matador -  50cl - 34,1% vol\r\n\r\nAVEC AMOUR MATADOR, H THEORIA SIGNE LA PLUS SULFUREUSE DES RENCONTRES !\r\n\r\n \r\n\r\nH THEORIA\r\n\r\nCRÉATRICES & PROPRIÉTAIRES : CAMILLE HEDIN & MARLÈNE STEIGER\r\n\r\nFRANCE - créé en Ile de France / distillé en Bourgogne\r\n\r\n \r\n\r\nH THEORIA AMOUR MATADOR AVEC ARCHIBALD ?  en long drink avec Archibald Original\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR LA LIQUEUR AMOUR MATADOR DE H THEORIA :\r\n\r\n \r\n\r\n    Philosophie : Moderne, surprenante et exigeante, H.Théoria bouscule les codes du spiritueux tant par sa complexité gustative que par son univers graphique et son ADN littéraire. Onirique, poétique, destructurée, tentatrice, H. Theoria casse les codes de la liqueur. À l’instar d’un parfumeur qui crée une fragrance, H.Theoria retranscrit la sensation impalpable d’un trait de caractère par le prisme du goût et de l’odeur.\r\n    Savoir-faire : C’est en Bourgogne, au sein de la maison Gabriel Boudier - élue meilleure Liquoriste au monde, que le meilleur des plantes, des épices, des fruits et des fleurs est extrait grâce à un savoir-faire ancestral.\r\n    Élaboration : La finesse des arômes des liqueurs effrontées repose sur la précision des process de fabrication. Des ingrédients venants du monde entier sont macérés indépendamment dans un mélange d’eau et d’alcool pendant 8 à 10 semaines afin d’obtenir une “teinture” gorgée d’arômes des fruits ou des plantes et de leur si jolies couleurs. Cette teinture est ensuite distillée dans un alambic de plusieurs décennies pour en retirer la puissance éthérée du végétal dans ce qu’on nomme un “alcoolat”. On procède ensuite à l’assemblage des teintures et des alcoolats entre eux suivant les formules originales et atypiques de H.Theoria dont l’élaboration a pris plus d’un an. Une fois l’assemblage réalisé, on laisse danser, s’entremêler et s’émouvoir les aromes pendant presque 4 semaines avant d’embouteiller le précieux elixir.\r\n    Aromatiques et ingrédients : Prunelles, cassis, rhubarbes, myrtilles, tomates, oranges sanguines, poivre de Tasmanie, cannelle, gingembre, lavande, sauge.\r\n    Dégustation : Imaginée comme un délicieux poison...\r\n        L’amertume de la prunelle se teinte d’orange sanguine tandis que le cassis révèle avec facétie une note de poivre noir et de sauge parfaitement inattendue.\r\n        Au nez, une note étonnante de tomate confite et un parfum quelque peu sanguin.\r\n        En bouche, des saveurs de fruits noirs épicés, une astringence racée de racines terreuses.\r\n\r\n \r\n\r\nLa liqueur Perfidie se métamorphose et devient Amour Matador. Si l’habillage fait peau neuve, la formule unique de la liqueur, elle, reste inchangée.', 'publish', 'open', 'closed', '', 'liqueur-h-theoria-amour-matador-341-50cl', '', '', '2021-03-14 20:32:30', '2021-03-14 19:32:30', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2021-03-13 21:47:18', '2021-03-13 20:47:18', '', 'Cognac Planat Overproof - Bio – 65% 70cl', '1 bouteille de Cognac Planat OVERPROOF - Bio – 65% 70cl\r\n\r\nNon filtré à froid\r\n\r\nCELUI QUI DYNAMITE LE COGNAC !\r\n\r\n \r\n\r\nMAISON COGNAC PLANAT\r\n\r\nDISTILLATEUR : Julien NAU\r\n\r\nFRANCE - Chevanceaux (Charente-Maritime)\r\n\r\n \r\n\r\nCOGNAC PLANAT OVERPROOF AVEC ARCHIBALD ?  Avec Archibald Edition Limitée (aux distillats de bergamote et de gentiane vieillis en fût de chêne), avec une tranche d’orange fraîche, pour un cocktail aux notes explosives\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR COGNAC PLANAT OVERPROOF :\r\n\r\n    Philosophie : L’équipe de Cognac Planat s’est investie dans le cognac bio dès 2008. Unique Maison de Cognac à s’afficher 100% bio ! C’est la maison qui monte dans le monde du cocktail, préparez vos shakers !\r\n    Sélectionnées exclusivement pour les bartenders, les eaux-de-vie brutes de fût qui composent le Planat Overproof 65% se distinguent par leur complexité aromatique.\r\n    Dégustation :\r\n        À l\'oeil : jaune pâle aux reflets dorés et cuivrés.\r\n        Au nez : attaque opulente et montante : fruits exotiques, orange confite, pamplemousse, ananas rôti, rose. Evoluant ensuite sur un bel ensemble mélange de fruits confits et d’épices : poivre timut, mangue, angélique confite, bois exotiques. La finale est exubérante : rhum vieux, belle minéralité, légèrement iodée et métalliquee\r\n        En bouche : attaque puissante, exotique et minérale. Grande complexité avec des notes vineuses et une belle dominante de fruits exotiques : ananas et mangue rôtie, pandan, léger umami, finale ronde sur notes pâtissières de chêne délicatement toasté et vanille bourbon\r\n        Réservé aux meilleurs cocktails\r\n\r\n \r\n\r\n Bio - Élaboré en France ', 'publish', 'open', 'closed', '', 'cognac-planat-overproof-bio-65-70cl', '', '', '2021-03-14 20:31:43', '2021-03-14 19:31:43', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2021-03-13 21:47:53', '2021-03-13 20:47:53', '', 'Cognac Planat OSCAR « Pour le bar » Bio – 45% 70cl', '1 bouteille de Cognac Planat OSCAR « Pour le bar » Bio – 45% 70cl\r\n\r\nNon filtré à froid\r\n\r\nLE COGNAC CRÉÉ AVEC ET POUR LES BARTENDERS\r\n\r\n \r\n\r\nMAISON COGNAC PLANAT\r\n\r\nDISTILLATEUR : Julien NAU\r\n\r\nFRANCE - Chevanceaux (Charente-Maritime)\r\n\r\n \r\n\r\nCOGNAC PLANAT "OSCAR POUR LE BAR" AVEC ARCHIBALD ?  Simplement, avec Archibald Original en High Ball avec un zeste de citron bio\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR COGNAC PLANAT "OSCAR POUR LE BAR" :\r\n\r\n    Philosophie : L’équipe de Cognac Planat s’est investie dans le cognac bio dès 2008. Unique Maison de Cognac à s’afficher 100% bio ! C’est la maison qui monte dans le monde du cocktail, préparez vos shakers !\r\n    Hommage à Oscar, l’un des pères fondateurs et habile Maître de Chai de la Maison Planat, Oscar pour le Bar est issu d’un assemblage d’eaux-de-vie bio spécialement sélectionnées pour leur capacité à révéler les cocktails.\r\n    Dégustation :\r\n        À l\'oeil : paille aux reflets ambrés\r\n        Au nez : fruité et charnu. Belle amplitude avec une attaque dominée par les fruits exotiques, la poire, raisin sultana, puis évolue vers des notes florales : fleurs blanche, rose, cerisier. Enfin apparaissent les notes épicées et pâtissières : vanille bourbon, chêne toasté, brioche, finale légèrement fumée\r\n        En bouche : attaque ronde et complexe: ensemble de raisin frais, bois de chêne toasté, ananas rôti et letchi. Se poursuit par des notes de fruits confits et les premiers épices: cannelle, poivre timut. Finale longue et précise\r\n\r\n \r\n\r\n Bio - Élaboré en France ', 'publish', 'open', 'closed', '', 'cognac-planat-oscar-pour-le-bar-bio-45-70cl', '', '', '2021-03-14 20:31:17', '2021-03-14 19:31:17', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2021-03-13 21:48:27', '2021-03-13 20:48:27', '', 'Planat Cognac VSOP Bio - Virgin Oak - 40% 70cl', '1 bouteille de Cognac Planat  VSOP Bio - ÉDITION SPÉCIALE Virgin Oak - 40% 70cl\r\n\r\nUN COGNAC BIO EXTRAORDINAIRE NÉ DE L\'AUDACE...\r\n\r\n \r\n\r\nMAISON PLANAT\r\n\r\nDISTILLATEUR : J. NAU\r\n\r\nFRANCE - Chevanceaux (Charente)\r\n\r\n \r\n\r\nCOGNAC PLANAT VSOP VIRGIN OAK AVEC ARCHIBALD ?  en highball avec Archibald Original ou avec Archibald Édition Limitée (aux distillats de bergamote et de gentiane vieillis en fût de chêne) pour plus de caractère\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR COGNAC PLANAT VSOP VIRGIN OAK :\r\n\r\n    Élaboration : La Maison Planat est allée chercher dans ses chais ses cognacs bio les plus étonnants pour réaliser cet assemblage ; ils ont vieilli en fût de chêne roux pendant au minimum cinq ans avant d’être passés quelques semaines dans des fûts neufs de chêne à grain fin. Le résultat est extraordinaire. .\r\n    Dégustation :\r\n        À l\'oeil : la robe est cuivrée, reflets chocolat et légèrement dorée\r\n        Au nez : se découvre toute la complexité des cognacs bio : nez étonnant d’abricots secs, pamplemousse, bergamote, se structurant par le tanin particulier du chêne neuf et du fût juste bousiné avec la vanille fraîche, le pain grillé, et des notes torréfiées robustes et envoutantes.\r\n        En bouche : après la délicate astringence laissée par le chêne à grain fin, étonnante complexité : vinosité, prune, fruit exotique, chêne, délicate note de fumée en fin de bouche. Une persistance gourmande.\r\n\r\n \r\n\r\n Bio - Élaboré en France ', 'publish', 'open', 'closed', '', 'planat-cognac-vsop-bio-virgin-oak-40-70cl', '', '', '2021-03-14 20:30:46', '2021-03-14 19:30:46', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2021-03-13 21:49:08', '2021-03-13 20:49:08', '', '(D\'un) Verre Printanier - Benjamin Kuentz - Single Malt Whisky - 46% 50cl', '1 bouteille de Single Malt Whisky (D\'un) Verre Printanier - Benjamin Kuentz 50cl - 46% vol\r\n\r\nLÉGÈRETÉ ET FRAÎCHEUR POUR CE SINGLE MALT FRANÇAIS AUX NOTES FLORALES ET FRUITÉES...\r\n\r\n \r\n\r\nMAISON BENJAMIN KUENTZ\r\n\r\nPROPRIÉTAIRE : BENJAMIN KUENTZ\r\n\r\nFRANCE - Lorraine\r\n\r\n \r\n\r\n(D\'UN) VERRE PRINTANIER AVEC ARCHIBALD ?  en highball avec Archibald Édition Limitée (aux distillats de bergamote et de gentiane vieillis en fût de chêne)\r\n\r\n \r\n\r\nEN SAVOIR PLUS SUR (D\'UN) VERRE PRINTANIER DE BENJAMIN KUENTZ :\r\n\r\n    (D\'un) Verre Printanier surprend par sa légèreté et sa fraîcheur. Comme la Nature quand elle renaît, ce Single Malt du pays des mirabelles éveille à des senteurs et des couleurs nouvelles. Il se distingue par un goût bien défini entre l\'arôme brut et la fragrance. Mais réserve sa part de secret qui tient en haleine. La dominante est fruitée, jouant de notes de fruits blancs et de céréale fraîche, quand le final s\'avère épicé, d\'une jolie souplesse. Une promenade olfactive à ciel ouvert, hors des sentiers battus du whisky.\r\n    Élaboration : Vieilli entre 5 et 7 ans en fût de Cognac et en fût de Bourbon. Le souhait de Benjamin était de créer un whisky que l\'on peut définir comme frais, qui garde l\'esprit du distillat de départ, et que l\'on puisse déguster même quand il fait chaud.\r\n    Dégustation :\r\n        Nez : Fleurs blanches, fruits du verger (la poire en particulier). Notes de céréales et d\'herbes fraîches, légèrement épicé\r\n        Bouche : Attaque croquante, tout en souplesse. Fruité (la poire encore, mais aussi des notes de fruits jaunes comme la mirabelle), végétal.\r\n        Finale : Maltée, légèrement épicée, aérienne, qui ouvre l\'appétit. Une tension maintenue, qui donne envie d\'y revenir.\r\n', 'publish', 'open', 'closed', '', 'dun-verre-printanier-benjamin-kuentz-single-malt-whisky-46-50cl', '', '', '2021-03-14 20:30:15', '2021-03-14 19:30:15', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2021-03-13 21:49:36', '2021-03-13 20:49:36', '', 'Folle Envie - Apéritif 100% Bio 12% 75cl (infusions de citron jaune & cardamome)', '1 bouteille de Folle Envie 75cl - 12% d\'alcool\r\n\r\nApéritif frais et bio élaboré avec des infusions d’écorce de citron jaune et de cardamome, sur une base de moûts de raisin fermentés.\r\n\r\n \r\n\r\nFOLLE ENVIE :\r\n\r\n- À DÉGUSTER SEUL TRÈS FRAIS\r\n\r\nou\r\n\r\n- À ALLONGER AVEC ARCHIBALD POUR UN COCKTAIL FRAIS À 7 DEGRÉS, 100% FRANÇAIS ET 100% BIO : dans un verre rempli de glaçons, ajoutez 2 volumes de Folle Envie pour 1 volume d\'Archibald, 1 tranche de citron jaune et pour les yeux... 1 brin de romarin !\r\n\r\n \r\n\r\n« Inspirée d’une recette de mon arrière-grand-mère Zilda, Folle Envie était une boisson pour les clients de son épicerie, le samedi. Et 80 ans plus tard, en hommage à Zilda, celle qui aimait tant la vie, j’ai fait revivre cet apéritif frais et bio aux infusions d’écorce de citron jaune et de cardamome ! » Estelle, créatrice de Folle Envie (et co-créatrice du tonic Archibald ;)\r\n\r\nFolle Envie...?\r\n\r\n    au nez : frais et parfumé (agrumes), réhaussé de notes poivrées de cardamome\r\n    en bouche : vif tout en restant délicieux, avec une sucrosité nettement moins prononcée que la plupart des apéritifs. Remarquable équilibre entre la fraîcheur des agrumes et les notes gourmandes.\r\n    finale : une belle longueur malgré le faible taux d\'alcool, toujours sur la fraîcheur et une fine amertume herbacée-épicée\r\n\r\n \r\n\r\n 100% Bio - Élaboré en France ', 'publish', 'open', 'closed', '', 'folle-envie-aperitif-100-bio-12-75cl-infusions-de-citron-jaune-cardamome', '', '', '2021-03-14 20:29:48', '2021-03-14 19:29:48', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=105', 0, 'product', '', 0),
(106, 1, '2021-03-13 21:50:10', '2021-03-13 20:50:10', '', 'Coffret Folle Envie & Archibald', '1 bouteille de Folle Envie 75cl - 11.2% d\'alcool + 1 bouteille d\'Archibald Original 50cl\r\n\r\nLa version cadeau du kit parfait pour un cocktail frais, 100% bio et français. Un joli coffret qui renferme l’histoire de Zilda, l\'arrière-grand-mère de la créatrice de Folle Envie et qui souligne l’importance de transmettre entre générations. Un coffret en kraft brut issu de forêts bien gérées (label FSC) et imprimé en France avec des encres sans solvants\r\n\r\n \r\n\r\nFOLLE ENVIE + ARCHIBALD :  POUR UN COCKTAIL FRAIS À 7 DEGRÉS, 100% FRANÇAIS ET 100% BIO : dans un verre rempli de glaçons, ajoutez 2 volumes de Folle Envie pour 1 volume d\'Archibald, 1 tranche de citron jaune et pour les yeux... 1 brin de romarin !\r\n\r\n \r\n\r\nFOLLE ENVIE :\r\n\r\n« Inspirée d’une recette de mon arrière-grand-mère Zilda, Folle Envie était une boisson pour les clients de son épicerie, le samedi. Et 80 ans plus tard, en hommage à Zilda, celle qui aimait tant la vie, j’ai fait revivre cet apéritif frais et bio aux infusions d’écorce de citron jaune et de cardamome ! » Estelle, créatrice de Folle Envie (et co-créatrice du tonic Archibald ;)\r\n\r\nFolle Envie...?\r\n\r\n    au nez : frais et parfumé (agrumes), réhaussé de notes poivrées de cardamome\r\n    en bouche : vif tout en restant délicieux, avec une sucrosité nettement moins prononcée que la plupart des apéritifs. Remarquable équilibre entre la fraîcheur des agrumes et les notes gourmandes.\r\n    finale : une belle longueur malgré le faible taux d\'alcool, toujours sur la fraîcheur et une fine amertume herbacée-épicée\r\n\r\n \r\n\r\n Bio - Élaboré en France\r\n\r\n \r\n\r\n \r\n\r\nARCHIBALD TONIC DE DISTILLERIE :\r\n\r\nTonic élaboré artisanalement dans notre vieille distillerie, Bio, Français, Archibald est un assemblage d\'eau de source et de distillats de plantes qui poussent en France : donc pas de quinine mais de la racine de gentiane et des baies de genièvre. Le résultat ?\r\n\r\n    une amertume douce et délicate, aux notes herbacées voire un peu racinaires et qui arrive en fin de bouche\r\n    des bulles très fines qui font d\'Archibald un tonic plus perlant qu\'effervescent\r\n    une teneur en sucre faible qui ne sature pas le palais et qui en fait une boisson désaltérante\r\n    très frais, complexe avec une belle longueur en bouche\r\n\r\n \r\n\r\nSans quinine - Non Alcoolisé - Bio - Élaboré en France - Reconnu par le Collège Culinaire de France', 'publish', 'open', 'closed', '', 'coffret-folle-envie-archibald', '', '', '2021-03-14 20:29:24', '2021-03-14 19:29:24', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2021-03-14 14:50:38', '2021-03-14 13:50:38', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement  à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays  </li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : « Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème. »</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte  positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, « La Société des Vieux Copains » crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée « <strong>Positive Spirit</strong> » s’appuie sur 4 engagements :<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image -->\n<figure class="wp-block-image"><img src="https://static.wixstatic.com/media/aa0402eb9ba2430d9d0620b59556efca.png/v1/fill/w_39,h_39,al_c,q_85,usm_0.66_1.00_0.01/aa0402eb9ba2430d9d0620b59556efca.webp" alt="LinkedIn - Black Circle"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie, déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-14 14:50:38', '2021-03-14 13:50:38', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/60-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2021-03-14 15:12:10', '2021-03-14 14:12:10', '<!-- wp:paragraph -->\n<p>Construire des relations fortes avec tous ceux qui nous entourent est impossible sans transparence.<br>La transparence, c\'est aussi accepter de ne pas être parfait.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une liste de thématiques pour lesquelles on vous livre des informations factuelles, des explications.<br>>> Cliquer sur celle qui vous intéresse !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et si vous avez d\'autres questions, posez-les nous via <a href="http://projets.bdx.digital-campus.net/archibald/index.php/contact/" data-type="page" data-id="16">notre formulaire en ligne</a> ;)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>​<strong>Argh ! Il va falloir attendre quelques jours pour que les informations de chaque thématique s\'affichent... Teasing teasing !</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '2. En toute transparence... on vous dit tout !', '', 'publish', 'open', 'open', '', '2-en-toute-transparence-on-vous-dit-tout', '', '', '2021-03-14 15:12:10', '2021-03-14 14:12:10', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=108', 17, 'post', '', 0),
(109, 1, '2021-03-14 15:12:10', '2021-03-14 14:12:10', '<!-- wp:paragraph -->\n<p>Construire des relations fortes avec tous ceux qui nous entourent est impossible sans transparence.<br>La transparence, c\'est aussi accepter de ne pas être parfait.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une liste de thématiques pour lesquelles on vous livre des informations factuelles, des explications.<br>>> Cliquer sur celle qui vous intéresse !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et si vous avez d\'autres questions, posez-les nous via <a href="http://projets.bdx.digital-campus.net/archibald/index.php/contact/" data-type="page" data-id="16">notre formulaire en ligne</a> ;)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>​<strong>Argh ! Il va falloir attendre quelques jours pour que les informations de chaque thématique s\'affichent... Teasing teasing !</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '2. En toute transparence... on vous dit tout !', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2021-03-14 15:12:10', '2021-03-14 14:12:10', '', 108, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2021-03-14 15:14:14', '2021-03-14 14:14:14', '<!-- wp:paragraph -->\n<p>Nos grands projets pour inscrire Archibald dans le monde de demain...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Parce qu\'on veut toujours faire mieux, parce qu\'on vous dit tout... voici les projets sur lesquels nous travaillons :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>créer une filière de cueillette de baies de genièvre bio, sauvages et françaises !</li><li>bonifier notre produit : à la recherche constante des meilleurs ingrédients… les plus proches de nous mais avant tout les meilleurs</li><li>faire d\'Archibald une marque solidaire … une surprise pour la fin de de l\'année !</li><li>mettre au point une verrerie intégrant un maximum de verre recyclé</li><li>faire d\'Archibald une MARQUE CIRCULAIRE - le Graal ! : des pistes, des projets, des réflexions en cours…</li></ul>\n<!-- /wp:list -->', '3. Encore mieux demain !', '', 'publish', 'open', 'open', '', '3-encore-mieux-demain', '', '', '2021-03-14 15:14:14', '2021-03-14 14:14:14', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=110', 18, 'post', '', 0),
(111, 1, '2021-03-14 15:14:14', '2021-03-14 14:14:14', '<!-- wp:paragraph -->\n<p>Nos grands projets pour inscrire Archibald dans le monde de demain...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Parce qu\'on veut toujours faire mieux, parce qu\'on vous dit tout... voici les projets sur lesquels nous travaillons :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>créer une filière de cueillette de baies de genièvre bio, sauvages et françaises !</li><li>bonifier notre produit : à la recherche constante des meilleurs ingrédients… les plus proches de nous mais avant tout les meilleurs</li><li>faire d\'Archibald une marque solidaire … une surprise pour la fin de de l\'année !</li><li>mettre au point une verrerie intégrant un maximum de verre recyclé</li><li>faire d\'Archibald une MARQUE CIRCULAIRE - le Graal ! : des pistes, des projets, des réflexions en cours…</li></ul>\n<!-- /wp:list -->', '3. Encore mieux demain !', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2021-03-14 15:14:14', '2021-03-14 14:14:14', '', 110, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2021-03-14 15:17:27', '2021-03-14 14:17:27', '<!-- wp:list {"ordered":true} -->\n<ol><li>Archibald, l\'original : 1 signature gustative, 2 usages</li><li>Les batches limités Archibald, des expériences inédites</li><li>Archibald, reconnu par les chefs</li></ol>\n<!-- /wp:list -->', 'Introduction dégustation', '', 'publish', 'open', 'open', '', 'introduction-degustation', '', '', '2021-03-14 15:17:27', '2021-03-14 14:17:27', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=112', 19, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(113, 1, '2021-03-14 15:17:27', '2021-03-14 14:17:27', '<!-- wp:list {"ordered":true} -->\n<ol><li>Archibald, l\'original : 1 signature gustative, 2 usages</li><li>Les batches limités Archibald, des expériences inédites</li><li>Archibald, reconnu par les chefs</li></ol>\n<!-- /wp:list -->', 'Introduction dégustation', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2021-03-14 15:17:27', '2021-03-14 14:17:27', '', 112, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2021-03-14 15:22:09', '2021-03-14 14:22:09', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : «&nbsp;Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème.&nbsp;»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte&nbsp; positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:paragraph -->\n<p>Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises&nbsp;pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie,&nbsp;déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-14 15:22:09', '2021-03-14 14:22:09', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/60-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2021-03-14 15:25:52', '2021-03-14 14:25:52', '<!-- wp:paragraph -->\n<p><em>Plus qu\'un simple tonic, Archibald, c\'est... Archibald !<br>Une signature gustative unique qui permet 2 usages et qui en fait son succès.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>En bouche</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Des bulles très fines, une amertume légèrement marquée avec des notes herbacées prononcées, voire un peu racinaires. Peu sucré, le palais n’est pas saturé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Sublimeur de gin ou autre spiritueux</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Archibald est un mixer haut de gamme qui rehausse les cocktails car il est un exhausteur de goût élégant et vient complexifier l\'aromatique globale.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Autre signe distinctif : lorsqu’Archibald est dilué, la sensation d’effervescence s’atténue et trouve alors un juste équilibre pour mettre en valeur l’aromatique du cocktail : c’est tout simplement dû à son taux d’acide citrique faiblement dosé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ainsi parce que légèrement amer, sans quinine et perlant, Archibald ne masque pas l\'aromatique du spiritueux qu\'il accompagne, mais la réhausse avec élégance.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C\'est la raison pour laquelle Archibald est <strong>plébiscité par les amateurs de gin tonic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une boisson d\'adulte à part entière, sans alcool</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Avec son amertume justement dosée et son goût de plantes, Archibald peut se savourer seul, très frais.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>​Certains l’apprécient en toute simplicité comme une boisson désaltérante, quand d’autres le dégustent comme une boisson d’adulte donnant presque l’impression d’un gin ou autre spiritueux sans alcool.</strong></p>\n<!-- /wp:paragraph -->', '1. Archibald, l\'original : 1 signature gustative, 2 usages', '', 'publish', 'open', 'open', '', '1-archibald-loriginal-1-signature-gustative-2-usages', '', '', '2021-03-14 15:25:52', '2021-03-14 14:25:52', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=115', 20, 'post', '', 0),
(116, 1, '2021-03-14 15:25:52', '2021-03-14 14:25:52', '<!-- wp:paragraph -->\n<p><em>Plus qu\'un simple tonic, Archibald, c\'est... Archibald !<br>Une signature gustative unique qui permet 2 usages et qui en fait son succès.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>En bouche</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Des bulles très fines, une amertume légèrement marquée avec des notes herbacées prononcées, voire un peu racinaires. Peu sucré, le palais n’est pas saturé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Sublimeur de gin ou autre spiritueux</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Archibald est un mixer haut de gamme qui rehausse les cocktails car il est un exhausteur de goût élégant et vient complexifier l\'aromatique globale.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Autre signe distinctif : lorsqu’Archibald est dilué, la sensation d’effervescence s’atténue et trouve alors un juste équilibre pour mettre en valeur l’aromatique du cocktail : c’est tout simplement dû à son taux d’acide citrique faiblement dosé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ainsi parce que légèrement amer, sans quinine et perlant, Archibald ne masque pas l\'aromatique du spiritueux qu\'il accompagne, mais la réhausse avec élégance.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C\'est la raison pour laquelle Archibald est <strong>plébiscité par les amateurs de gin tonic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une boisson d\'adulte à part entière, sans alcool</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Avec son amertume justement dosée et son goût de plantes, Archibald peut se savourer seul, très frais.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>​Certains l’apprécient en toute simplicité comme une boisson désaltérante, quand d’autres le dégustent comme une boisson d’adulte donnant presque l’impression d’un gin ou autre spiritueux sans alcool.</strong></p>\n<!-- /wp:paragraph -->', '1. Archibald, l\'original : 1 signature gustative, 2 usages', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2021-03-14 15:25:52', '2021-03-14 14:25:52', '', 115, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2021-03-14 15:30:42', '2021-03-14 14:30:42', '<!-- wp:heading {"level":3} -->\n<h3>La première édition limitée Archibald :<br>Un tonic aux distillas de gentiane et de bergamote vieillis en fût de chêne !</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>Un profil aromatique atypique et parfaitement équilibré à la fois : mixée ou savourée seule, cette édition limitée surprend et séduit.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>De l\'agrume aux notes fumées : une véritable expérience sensorielle</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Au nez : une note de tête acidulée, un zeste de bergamote et baie de genièvre fraîche, puis apparaît en note de coeur un ensemble complexe et envoûtant d’arômes puissants : orange amère, racines, sous-bois, camphre, pour finir sur une note de fond délicieusement intrigante : thé au jasmin, résineux, fumée de hêtre.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En bouche : l’amertume domine avec une attaque puissante en gentiane, ronde et ample. Suivent de délicieuses notes de pamplemousse, earl grey, chêne toasté et une très longue finale aux notes empyreumatiques et médicinales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>A déguster seul ou en mix avec des alcools bruns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Un profil aromatique atypique qui en fait un mixer unique pour les alcools de caractère, particulièrement les whiskies et les cognacs : ses bulles fines, ses notes acidulées et fumées apportent fraîcheur et complexité, sans dénaturer l’aromatique initiale. Au final, le spiritueux est sublimé.<br>Ainsi, un usage aussi simple que merveilleux, est le Highball : dans un verre long drink, de gros cubes de glace, 2 cl de whisky et notre Archibald Édition Limitée.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On peut également le savourer seul : sa complexité aromatique permet un véritable moment dégustation et devient alors une alternative à une boisson alcoolisée... sans alcool !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Et par rapport à Archibald, l\'Original ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Comme l’Original, cette première édition limitée aux distillats de bergamote s’inscrit dans l’équilibre, la complexité et la finesse.<br>Mais encore ? Quelles sont les différences ? Gustativement, cette Édition Limitée aux distillats de Bergamote et de Gentiane vieillis en fût de chêne offre plus de puissance, de typicité tout en étant légèrement moins de sucrée.</p>\n<!-- /wp:paragraph -->', '2. Les batches limités Archibald', '', 'publish', 'open', 'open', '', '2-les-batches-limites-archibald', '', '', '2021-03-14 15:30:42', '2021-03-14 14:30:42', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=117', 21, 'post', '', 0),
(118, 1, '2021-03-14 15:30:42', '2021-03-14 14:30:42', '<!-- wp:heading {"level":3} -->\n<h3>La première édition limitée Archibald :<br>Un tonic aux distillas de gentiane et de bergamote vieillis en fût de chêne !</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>Un profil aromatique atypique et parfaitement équilibré à la fois : mixée ou savourée seule, cette édition limitée surprend et séduit.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>De l\'agrume aux notes fumées : une véritable expérience sensorielle</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Au nez : une note de tête acidulée, un zeste de bergamote et baie de genièvre fraîche, puis apparaît en note de coeur un ensemble complexe et envoûtant d’arômes puissants : orange amère, racines, sous-bois, camphre, pour finir sur une note de fond délicieusement intrigante : thé au jasmin, résineux, fumée de hêtre.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En bouche : l’amertume domine avec une attaque puissante en gentiane, ronde et ample. Suivent de délicieuses notes de pamplemousse, earl grey, chêne toasté et une très longue finale aux notes empyreumatiques et médicinales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>A déguster seul ou en mix avec des alcools bruns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Un profil aromatique atypique qui en fait un mixer unique pour les alcools de caractère, particulièrement les whiskies et les cognacs : ses bulles fines, ses notes acidulées et fumées apportent fraîcheur et complexité, sans dénaturer l’aromatique initiale. Au final, le spiritueux est sublimé.<br>Ainsi, un usage aussi simple que merveilleux, est le Highball : dans un verre long drink, de gros cubes de glace, 2 cl de whisky et notre Archibald Édition Limitée.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On peut également le savourer seul : sa complexité aromatique permet un véritable moment dégustation et devient alors une alternative à une boisson alcoolisée... sans alcool !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Et par rapport à Archibald, l\'Original ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Comme l’Original, cette première édition limitée aux distillats de bergamote s’inscrit dans l’équilibre, la complexité et la finesse.<br>Mais encore ? Quelles sont les différences ? Gustativement, cette Édition Limitée aux distillats de Bergamote et de Gentiane vieillis en fût de chêne offre plus de puissance, de typicité tout en étant légèrement moins de sucrée.</p>\n<!-- /wp:paragraph -->', '2. Les batches limités Archibald', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-03-14 15:30:42', '2021-03-14 14:30:42', '', 117, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2021-03-14 15:34:26', '2021-03-14 14:34:26', '<!-- wp:heading {"level":3} -->\n<h3>Plébiscité par la gastronomie et les foodies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Archibald et la Gastronomie : une véritable histoire d\'amour !<br>Notre tonic de distillerie suscite ainsi engouement et enthousiasme auprès des Chefs : les Chefs Étoilés, les Chefs de la bistronomie, les Chefs engagés, les Chefs "Fooding", les Chefs de la nouvelle génération...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"width":610,"height":172} -->\n<figure class="wp-block-image is-resized"><img src="https://static.wixstatic.com/media/240db9_cb014aef8d9d46d7bbc45f81166eeccc~mv2.png/v1/fill/w_1369,h_387,al_c,q_90,usm_0.66_1.00_0.01/nuage%20chefs%20archibald%20tonic.webp" alt="nuage chefs archibald tonic.png" width="610" height="172"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Le seul tonic français reconnu par le Collège Culinaire de France</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Par cette reconnaissance, l’association fondée par 15 Chefs prestigieux (comme Alain Ducasse, Anne-Sophie Pic, Thierry Marx,...), fait entrer Archibald dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En outre, Archibald partage et soutient les engagements du Collège Culinaire de France :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>promouvoir les valeurs de la gastronomie dans le monde</li><li>faire émerger un nouvel écosystème alimentaire fondé sur l’artisanat, la diversité, et sur une haute qualité relationnelle.</li><li>transmettre la convivialité et le lien social du « bon manger pour tous »</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '3. Archibald, reconnu par les chefs', '', 'publish', 'open', 'open', '', '3-archibald-reconnu-par-les-chefs', '', '', '2021-03-14 15:43:56', '2021-03-14 14:43:56', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=119', 22, 'post', '', 0),
(120, 1, '2021-03-14 15:34:26', '2021-03-14 14:34:26', '<!-- wp:heading {"level":3} -->\n<h3>Plébiscité par la gastronomie et les foodies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Archibald et la Gastronomie : une véritable histoire d\'amour !<br>Notre tonic de distillerie suscite ainsi engouement et enthousiasme auprès des Chefs : les Chefs Étoilés, les Chefs de la bistronomie, les Chefs engagés, les Chefs "Fooding", les Chefs de la nouvelle génération...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"width":610,"height":172} -->\n<figure class="wp-block-image is-resized"><img src="https://static.wixstatic.com/media/240db9_cb014aef8d9d46d7bbc45f81166eeccc~mv2.png/v1/fill/w_1369,h_387,al_c,q_90,usm_0.66_1.00_0.01/nuage%20chefs%20archibald%20tonic.webp" alt="nuage chefs archibald tonic.png" width="610" height="172"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Le seul tonic français reconnu par le Collège Culinaire de France</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Par cette reconnaissance, l’association fondée par 15 Chefs prestigieux (comme Alain Ducasse, Anne-Sophie Pic, Thierry Marx,...), fait entrer Archibald dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En outre, Archibald partage et soutient les engagements du Collège Culinaire de France :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>promouvoir les valeurs de la gastronomie dans le monde</li><li>faire émerger un nouvel écosystème alimentaire fondé sur l’artisanat, la diversité, et sur une haute qualité relationnelle.</li><li>transmettre la convivialité et le lien social du « bon manger pour tous »</li></ul>\n<!-- /wp:list -->', '3. Archibald, reconnu par les chefs', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2021-03-14 15:34:26', '2021-03-14 14:34:26', '', 119, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/119-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2021-03-14 15:43:56', '2021-03-14 14:43:56', '<!-- wp:heading {"level":3} -->\n<h3>Plébiscité par la gastronomie et les foodies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Archibald et la Gastronomie : une véritable histoire d\'amour !<br>Notre tonic de distillerie suscite ainsi engouement et enthousiasme auprès des Chefs : les Chefs Étoilés, les Chefs de la bistronomie, les Chefs engagés, les Chefs "Fooding", les Chefs de la nouvelle génération...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"width":610,"height":172} -->\n<figure class="wp-block-image is-resized"><img src="https://static.wixstatic.com/media/240db9_cb014aef8d9d46d7bbc45f81166eeccc~mv2.png/v1/fill/w_1369,h_387,al_c,q_90,usm_0.66_1.00_0.01/nuage%20chefs%20archibald%20tonic.webp" alt="nuage chefs archibald tonic.png" width="610" height="172"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Le seul tonic français reconnu par le Collège Culinaire de France</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Par cette reconnaissance, l’association fondée par 15 Chefs prestigieux (comme Alain Ducasse, Anne-Sophie Pic, Thierry Marx,...), fait entrer Archibald dans le patrimoine français.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En outre, Archibald partage et soutient les engagements du Collège Culinaire de France :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>promouvoir les valeurs de la gastronomie dans le monde</li><li>faire émerger un nouvel écosystème alimentaire fondé sur l’artisanat, la diversité, et sur une haute qualité relationnelle.</li><li>transmettre la convivialité et le lien social du « bon manger pour tous »</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '3. Archibald, reconnu par les chefs', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2021-03-14 15:43:56', '2021-03-14 14:43:56', '', 119, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/119-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2021-03-14 16:32:35', '2021-03-14 15:32:35', '', 'linkedin', '', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2021-03-14 18:16:48', '2021-03-14 17:16:48', '', 0, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/linkedin.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2021-03-14 18:19:04', '2021-03-14 17:19:04', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : «&nbsp;Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème.&nbsp;»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte&nbsp; positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left"><img class="wp-image-124" style="width: 54px;" src="http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/linkedin.png" alt="linkedin">Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises&nbsp;pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie,&nbsp;déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-14 18:19:04', '2021-03-14 17:19:04', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/60-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2021-03-14 18:20:47', '2021-03-14 17:20:47', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : «&nbsp;Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème.&nbsp;»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte&nbsp; positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left" style="display: flex; align-items: center"><img class="wp-image-124" style="width: 54px;" src="http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/linkedin.png" alt="linkedin">Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises&nbsp;pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie,&nbsp;déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-14 18:20:47', '2021-03-14 17:20:47', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/60-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(127, 1, '2021-03-14 18:21:15', '2021-03-14 17:21:15', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : «&nbsp;Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème.&nbsp;»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte&nbsp; positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:html -->\n<p class="has-text-align-left" style="display: flex; align-items: center;"><img class="wp-image-124" style="width: 54px;" src="http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/linkedin.png" alt="linkedin">Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:html --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises&nbsp;pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie,&nbsp;déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-14 18:21:15', '2021-03-14 17:21:15', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/60-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2021-03-14 18:21:42', '2021-03-14 17:21:42', '<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite vertueuse. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?<br>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Protéger la santé de tous / proposer des produits sains</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Réduire nos impacts sur notre planète</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d\'abord les réduire avant de pouvoir un jour réussir à en éviter certains...</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Soutenir les hommes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Une mission précise, 4 engagements "POSITIVE SPIRIT"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.<br>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : «&nbsp;Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème.&nbsp;»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {"align":"center"} -->\n<blockquote class="wp-block-quote has-text-align-center"><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te<br>avec des boissons d’adulte&nbsp; positives et responsables !</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:<br>1. Concevoir des produits vertueux pour l\'homme et la planète<br>2. Transformer notre écosystème avec nos parties prenantes<br>3. Soutenir des actions à fort impact social dans la gastronomie sociale<br>4. Réinventer le commerce de demain</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left"><img class="wp-image-124" style="width: 54px;" src="http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/linkedin.png" alt="linkedin">Suivez notre aventure entrepreneuriale engagée sur Linkedin !<br>#positivespirit</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {"level":4} -->\n<h4>- Certifié et membre de la communauté engagée B Corp</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises&nbsp;pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie,&nbsp;déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph -->', '1. Archibald : vertueux pour l\'Homme et la planète', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-03-14 18:21:42', '2021-03-14 17:21:42', '', 60, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/14/60-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2021-03-14 18:23:27', '2021-03-14 17:23:27', '', 'introduction_accueil', '', 'inherit', 'open', 'closed', '', 'introduction_accueil', '', '', '2021-03-14 18:23:43', '2021-03-14 17:23:43', '', 27, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/introduction_accueil.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2021-03-14 18:24:52', '2021-03-14 17:24:52', '', 'accueil_tonic_de_distillerie', '', 'inherit', 'open', 'closed', '', 'accueil_tonic_de_distillerie', '', '', '2021-03-14 18:25:05', '2021-03-14 17:25:05', '', 29, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/accueil_tonic_de_distillerie.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2021-03-14 18:26:26', '2021-03-14 17:26:26', '', 'accueil_archi_engagé', '', 'inherit', 'open', 'closed', '', 'accueil_archi_engage', '', '', '2021-03-14 18:26:37', '2021-03-14 17:26:37', '', 33, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/accueil_archi_engage.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2021-03-14 18:27:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-14 18:27:28', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2021-03-14 18:30:47', '2021-03-14 17:30:47', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=133', 7, 'nav_menu_item', '', 0),
(134, 1, '2021-03-14 18:30:47', '2021-03-14 17:30:47', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=134', 6, 'nav_menu_item', '', 0),
(135, 1, '2021-03-14 18:30:47', '2021-03-14 17:30:47', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=135', 5, 'nav_menu_item', '', 0),
(136, 1, '2021-03-14 18:30:47', '2021-03-14 17:30:47', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=136', 4, 'nav_menu_item', '', 0),
(137, 1, '2021-03-14 18:30:47', '2021-03-14 17:30:47', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=137', 3, 'nav_menu_item', '', 0),
(138, 1, '2021-03-14 18:30:47', '2021-03-14 17:30:47', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=138', 2, 'nav_menu_item', '', 0),
(140, 1, '2021-03-14 20:28:12', '2021-03-14 19:28:12', '', 'archibald_6_20cl', '', 'inherit', 'open', 'closed', '', 'archibald_6_20cl', '', '', '2021-03-14 20:28:12', '2021-03-14 19:28:12', '', 64, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_6_20cl.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2021-03-14 20:29:16', '2021-03-14 19:29:16', '', 'coffret', '', 'inherit', 'open', 'closed', '', 'coffret', '', '', '2021-03-14 20:29:16', '2021-03-14 19:29:16', '', 106, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/coffret.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2021-03-14 20:29:42', '2021-03-14 19:29:42', '', 'folle_envie', '', 'inherit', 'open', 'closed', '', 'folle_envie', '', '', '2021-03-14 20:29:42', '2021-03-14 19:29:42', '', 105, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/folle_envie.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2021-03-14 20:30:09', '2021-03-14 19:30:09', '', 'verre_printanier', '', 'inherit', 'open', 'closed', '', 'verre_printanier', '', '', '2021-03-14 20:30:09', '2021-03-14 19:30:09', '', 104, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/verre_printanier.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2021-03-14 20:30:34', '2021-03-14 19:30:34', '', 'planat_cognac_VSOP_bio', '', 'inherit', 'open', 'closed', '', 'planat_cognac_vsop_bio', '', '', '2021-03-14 20:30:34', '2021-03-14 19:30:34', '', 103, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/planat_cognac_VSOP_bio.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2021-03-14 20:31:11', '2021-03-14 19:31:11', '', 'cognac_planat_oscar_bio', '', 'inherit', 'open', 'closed', '', 'cognac_planat_oscar_bio', '', '', '2021-03-14 20:31:11', '2021-03-14 19:31:11', '', 102, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/cognac_planat_oscar_bio.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2021-03-14 20:31:34', '2021-03-14 19:31:34', '', 'cognac_planat_overproof_bio', '', 'inherit', 'open', 'closed', '', 'cognac_planat_overproof_bio', '', '', '2021-03-14 20:31:34', '2021-03-14 19:31:34', '', 101, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/cognac_planat_overproof_bio.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2021-03-14 20:32:25', '2021-03-14 19:32:25', '', 'liqueur_H_matador', '', 'inherit', 'open', 'closed', '', 'liqueur_h_matador', '', '', '2021-03-14 20:32:25', '2021-03-14 19:32:25', '', 100, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/liqueur_H_matador.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2021-03-14 20:32:46', '2021-03-14 19:32:46', '', 'liqueur_H_cuir', '', 'inherit', 'open', 'closed', '', 'liqueur_h_cuir', '', '', '2021-03-14 20:32:46', '2021-03-14 19:32:46', '', 99, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/liqueur_H_cuir.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2021-03-14 20:33:14', '2021-03-14 19:33:14', '', 'liqueur_H_fauve', '', 'inherit', 'open', 'closed', '', 'liqueur_h_fauve', '', '', '2021-03-14 20:33:14', '2021-03-14 19:33:14', '', 98, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/liqueur_H_fauve.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2021-03-14 20:33:40', '2021-03-14 19:33:40', '', 'liqueur_H_velvet', '', 'inherit', 'open', 'closed', '', 'liqueur_h_velvet', '', '', '2021-03-14 20:33:40', '2021-03-14 19:33:40', '', 97, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/liqueur_H_velvet.png', 0, 'attachment', 'image/png', 0),
(151, 1, '2021-03-14 20:34:17', '2021-03-14 19:34:17', '', 'moon_gin', '', 'inherit', 'open', 'closed', '', 'moon_gin', '', '', '2021-03-14 20:34:17', '2021-03-14 19:34:17', '', 96, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/moon_gin.png', 0, 'attachment', 'image/png', 0),
(152, 1, '2021-03-14 20:34:54', '2021-03-14 19:34:54', '', 'bacalan_dry_gin', '', 'inherit', 'open', 'closed', '', 'bacalan_dry_gin', '', '', '2021-03-14 20:34:54', '2021-03-14 19:34:54', '', 95, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/bacalan_dry_gin.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2021-03-14 20:35:26', '2021-03-14 19:35:26', '', 'avem_hippolais_gin', '', 'inherit', 'open', 'closed', '', 'avem_hippolais_gin', '', '', '2021-03-14 20:35:26', '2021-03-14 19:35:26', '', 94, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/avem_hippolais_gin.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2021-03-14 20:35:48', '2021-03-14 19:35:48', '', 'gin_bandarel_dry', '', 'inherit', 'open', 'closed', '', 'gin_bandarel_dry', '', '', '2021-03-14 20:35:48', '2021-03-14 19:35:48', '', 93, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/gin_bandarel_dry.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2021-03-14 20:36:10', '2021-03-14 19:36:10', '', 'gin_ganesh', '', 'inherit', 'open', 'closed', '', 'gin_ganesh', '', '', '2021-03-14 20:36:10', '2021-03-14 19:36:10', '', 92, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/gin_ganesh.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2021-03-14 20:36:37', '2021-03-14 19:36:37', '', 'oli_gin', '', 'inherit', 'open', 'closed', '', 'oli_gin', '', '', '2021-03-14 20:36:37', '2021-03-14 19:36:37', '', 91, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/oli_gin.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-03-14 20:37:04', '2021-03-14 19:37:04', '', 'blurry_moon_gin_bio', '', 'inherit', 'open', 'closed', '', 'blurry_moon_gin_bio', '', '', '2021-03-14 20:37:04', '2021-03-14 19:37:04', '', 90, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/blurry_moon_gin_bio.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2021-03-14 20:37:33', '2021-03-14 19:37:33', '', 'erika_dry_gin', '', 'inherit', 'open', 'closed', '', 'erika_dry_gin', '', '', '2021-03-14 20:37:33', '2021-03-14 19:37:33', '', 89, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/erika_dry_gin.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2021-03-14 20:37:56', '2021-03-14 19:37:56', '', 'bercloux_gin_bio', '', 'inherit', 'open', 'closed', '', 'bercloux_gin_bio', '', '', '2021-03-14 20:37:56', '2021-03-14 19:37:56', '', 88, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/bercloux_gin_bio.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2021-03-14 20:38:24', '2021-03-14 19:38:24', '', 'balea_gin_bio', '', 'inherit', 'open', 'closed', '', 'balea_gin_bio', '', '', '2021-03-14 20:38:24', '2021-03-14 19:38:24', '', 87, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/balea_gin_bio.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2021-03-14 20:57:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-14 20:57:38', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=161', 1, 'nav_menu_item', '', 0),
(162, 1, '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 'Archibald', '', 'publish', 'closed', 'closed', '', 'archibald-2', '', '', '2021-03-14 20:58:49', '2021-03-14 19:58:49', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=162', 1, 'nav_menu_item', '', 0),
(163, 1, '2021-03-14 20:58:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-14 20:58:16', '0000-00-00 00:00:00', '', 0, 'http://projets.bdx.digital-campus.net/archibald/?p=163', 1, 'nav_menu_item', '', 0),
(164, 1, '2021-03-14 21:16:10', '2021-03-14 20:16:10', '', 'lachanenche_gin_bio', '', 'inherit', 'open', 'closed', '', 'lachanenche_gin_bio', '', '', '2021-03-14 21:16:10', '2021-03-14 20:16:10', '', 86, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/lachanenche_gin_bio.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2021-03-14 21:16:50', '2021-03-14 20:16:50', '', 'gin_mist', '', 'inherit', 'open', 'closed', '', 'gin_mist', '', '', '2021-03-14 21:16:50', '2021-03-14 20:16:50', '', 85, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/gin_mist.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2021-03-14 21:17:28', '2021-03-14 20:17:28', '', 'petit_grain_gin_agrume', '', 'inherit', 'open', 'closed', '', 'petit_grain_gin_agrume', '', '', '2021-03-14 21:17:28', '2021-03-14 20:17:28', '', 84, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/petit_grain_gin_agrume.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2021-03-14 21:18:05', '2021-03-14 20:18:05', '', 'residence_gin_bio', '', 'inherit', 'open', 'closed', '', 'residence_gin_bio', '', '', '2021-03-14 21:18:05', '2021-03-14 20:18:05', '', 83, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/residence_gin_bio.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2021-03-14 21:18:49', '2021-03-14 20:18:49', '', 'pink_pepper_gin', '', 'inherit', 'open', 'closed', '', 'pink_pepper_gin', '', '', '2021-03-14 21:18:49', '2021-03-14 20:18:49', '', 82, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/pink_pepper_gin.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2021-03-14 21:19:24', '2021-03-14 20:19:24', '', 'sachet_15_baies_genievre', '', 'inherit', 'open', 'closed', '', 'sachet_15_baies_genievre', '', '', '2021-03-14 21:19:24', '2021-03-14 20:19:24', '', 81, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/sachet_15_baies_genievre.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2021-03-14 21:20:09', '2021-03-14 20:20:09', '', 'archibald_lot_decouverte_3', '', 'inherit', 'open', 'closed', '', 'archibald_lot_decouverte_3', '', '', '2021-03-14 21:20:09', '2021-03-14 20:20:09', '', 79, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_lot_decouverte_3.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2021-03-14 21:20:42', '2021-03-14 20:20:42', '', 'archibald_lot_decouverte_2', '', 'inherit', 'open', 'closed', '', 'archibald_lot_decouverte_2', '', '', '2021-03-14 21:20:42', '2021-03-14 20:20:42', '', 78, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_lot_decouverte_2.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2021-03-14 21:21:08', '2021-03-14 20:21:08', '', 'archibald_lot_decouverte', '', 'inherit', 'open', 'closed', '', 'archibald_lot_decouverte', '', '', '2021-03-14 21:21:08', '2021-03-14 20:21:08', '', 77, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_lot_decouverte.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2021-03-14 21:21:59', '2021-03-14 20:21:59', '', 'archibald_lot_multi', '', 'inherit', 'open', 'closed', '', 'archibald_lot_multi', '', '', '2021-03-14 21:21:59', '2021-03-14 20:21:59', '', 76, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_lot_multi.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2021-03-14 21:22:36', '2021-03-14 20:22:36', '', 'archibald_16_1L', '', 'inherit', 'open', 'closed', '', 'archibald_16_1l', '', '', '2021-03-14 21:22:36', '2021-03-14 20:22:36', '', 75, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_16_1L.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2021-03-14 21:23:07', '2021-03-14 20:23:07', '', 'archibald_8_1L', '', 'inherit', 'open', 'closed', '', 'archibald_8_1l', '', '', '2021-03-14 21:23:07', '2021-03-14 20:23:07', '', 74, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_8_1L.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2021-03-14 21:23:36', '2021-03-14 20:23:36', '', 'archibald_4_1L', '', 'inherit', 'open', 'closed', '', 'archibald_4_1l', '', '', '2021-03-14 21:23:36', '2021-03-14 20:23:36', '', 73, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_4_1L.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2021-03-14 21:24:56', '2021-03-14 20:24:56', '', 'archibald_30_50cl', '', 'inherit', 'open', 'closed', '', 'archibald_30_50cl', '', '', '2021-03-14 21:24:56', '2021-03-14 20:24:56', '', 71, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_30_50cl.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2021-03-14 21:25:24', '2021-03-14 20:25:24', '', 'archibald_12_50cl', '', 'inherit', 'open', 'closed', '', 'archibald_12_50cl', '', '', '2021-03-14 21:25:24', '2021-03-14 20:25:24', '', 70, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_12_50cl.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2021-03-14 21:25:52', '2021-03-14 20:25:52', '', 'archibald_6_50cl', '', 'inherit', 'open', 'closed', '', 'archibald_6_50cl', '', '', '2021-03-14 21:25:52', '2021-03-14 20:25:52', '', 69, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_6_50cl.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2021-03-14 21:26:24', '2021-03-14 20:26:24', '', 'archibald_70_20cl', '', 'inherit', 'open', 'closed', '', 'archibald_70_20cl', '', '', '2021-03-14 21:26:24', '2021-03-14 20:26:24', '', 68, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_70_20cl.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2021-03-14 21:27:01', '2021-03-14 20:27:01', '', 'archibald_24_20cl', '', 'inherit', 'open', 'closed', '', 'archibald_24_20cl', '', '', '2021-03-14 21:27:01', '2021-03-14 20:27:01', '', 67, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_24_20cl.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2021-03-14 21:27:27', '2021-03-14 20:27:27', '', 'archibald_12_20cl', '', 'inherit', 'open', 'closed', '', 'archibald_12_20cl', '', '', '2021-03-14 21:27:27', '2021-03-14 20:27:27', '', 66, 'http://projets.bdx.digital-campus.net/archibald/wp-content/uploads/2021/03/archibald_12_20cl.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2021-03-15 19:38:37', '2021-03-15 18:38:37', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {"ordered":true} -->\n<ol><li>ARCHIBALD : VERTUEUX POUR L\'HOMME ET LA PLANÈTE ​ </li><li>EN TOUTE TRANSPARENCE : ON VOUS DIT TOUT ​</li><li>ENCORE MIEUX DEMAIN</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:pullquote -->\n<figure class="wp-block-pullquote"><blockquote><p>Archibald, Aujourd\'hui vertueux et demain circulaire.</p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:separator -->\n<hr class="wp-block-separator"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2><strong>1. ARCHIBALD : VERTUEUX POUR L\'HOMME ET LA PLANÈTE</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Vertueux... kezako ?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>"Vertueux, adj. : qui manifeste de la vertu, des qualités morales : Conduite&nbsp;<em>vertueuse</em>. Qui est inspiré par de nobles sentiments. Qui fait le bien, qui est juste, qui est honnête."</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Et pour nous, qu\'est-ce que cela signifie ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>faire les meilleurs choix quand ils existent, œuvrer pour développer des solutions qui n’existent pas encore, pour nous et pour les autres….</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C’est ce que nous appelons contribuer !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cela veut dire travailler avec les hommes et les femmes qui fabriquent Archibald pour imaginer de nouvelles solutions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text -->\n<div class="wp-block-media-text alignwide is-stacked-on-mobile"><figure class="wp-block-media-text__media"></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":3} -->\n<h3>Depuis sa création, 3 axes de travail nous ont mobilisés pour rendre Archibald vertueux :</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- PROTÉGER LA SANTÉ DE TOUS</strong><strong>&nbsp;/ PROPOSER DES PRODUITS SAINS</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>surtout sur une catégorie plaisir</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>taux et qualité du sucre : aucun d\'édulcorant mais du sucre de canne bio avec un taux maîtrisé parmi les plus bas de la catégorie (7g / 100ML vs une moyenne de 8g/100ML)</li><li>une qualité Bio (certification AB)</li><li>des bouteilles en verre uniquement, pas de PET</li><li>un sourcing des meilleurs ingrédients, aucun colorant…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- RÉDUIRE NOS IMPACTS SUR NOTRE PLANÈTE</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>car on a des impacts et il faut d’abord les réduire avant de pouvoir un jour réussir à en éviter certains…</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>une qualité Bio qui requiert des ingrédients issus de productions respectueuses de l\'environnement</li><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires, ce qui limite les émissions de CO2</li><li>des encres végétales sans solvants pour nos étiquettes et cartons</li><li>des colles écologiques pour la pose de nos étiquettes</li><li>des cartons issus de forêts gérées durablement (label FSC), imprimés en 1 seule couleur</li><li>des imprimeurs (packaging et PLV) locaux et certifiés Imprim\'Vert</li><li>des papiers d\'étiquettes faits essentiellement&nbsp; à base de fibres recyclées</li><li>les chutes de cartons exploitées au maximum pour donner naissance à des cartes de correspondance, des sous-verres...</li><li>des PLV en bois brut recyclé</li><li>anti-gaspillage optimisé avec 3 formats bouteille adaptés à chaque besoin, avec capsule à vis</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- SOUTENIR LES HOMMES</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>le local privilégié pour le choix de nos ingrédients et de nos prestataires pour soutenir notre territoire, notre pays&nbsp;&nbsp;</li><li>protection des savoir-faire comme celui de nos cueilleurs de gentiane&nbsp;</li><li>réalisation de nos coffrets et présentoirs par un ESAT local</li><li>utilisation de sucre de canne issu du commerce équitable</li></ul>\n<!-- /wp:list --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading {"level":3} -->\n<h3>POSITIVE SPIRIT, la démarche de la Société des Vieux Copains</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- UNE MISSION PRÉCISE, 4 ENGAGEMENTS "POSITIVE SPIRIT"</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Derrière Archibald, il y a La Société des Vieux Copains.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Et derrière La Société des Vieux Copains, il y a une aventure entrepreneuriale qui s\'est construire sur une conviction : « Parce que nous voulons un monde meilleur, responsable et enthousiaste, et parce que nous sommes convaincus que les boissons d’adulte – spiritueux et boissons sans alcool –doivent aussi aller dans ce sens, nous repensons cette catégorie et son écosystème. »</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une conviction qui a rapidement abouti à notre raison d\'être, notre mission d’entreprise :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class="wp-block-pullquote"><blockquote><p>Redonner le sourire aux hommes et <strong>à</strong> la plan<strong>è</strong>te avec des boissons d’adulte  positives et responsables ! </p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph -->\n<p>Ainsi, basée à Bordeaux au sein de l’écosystème Darwin, «&nbsp;La Société des Vieux Copains&nbsp;» crée des boissons d’adulte (alcoolisées et non alcoolisées) non pas pour être les meilleurs du monde, mais dans le but d’être meilleur pour le monde !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette stratégie globale à 360°, nommée «&nbsp;<strong>Positive Spirit</strong>&nbsp;» s’appuie sur 4 engagements&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {"ordered":true} -->\n<ol><li>Concevoir des produits vertueux pour l\'homme et la planète</li><li>Transformer notre écosystème avec nos parties prenantes</li><li>Soutenir des actions à fort impact social dans la gastronomie sociale</li><li>Réinventer le commerce de demain</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>​Cette stratégie "Positive Spirit" est en permanence au coeur de nos décisions et stimule constamment notre créativité pour faire toujours mieux, pour repousser nos limites. En dehors de la distillerie, notre équipe est composée de 4 personnes. Et 1 personne dédie 100% de son temps à notre politique "Positive Spirit", c\'est dire l\'importance que nous lui attribuons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>​Ainsi tel est l\'esprit de la Société des Vieux Copains où règnent 3 grandes valeurs : la liberté, le respect et l\'optimisme ! Nous ne sommes pas des militants, mais juste des personnes qui veulent bien faire les choses et qui sont persuadées qu\'ensemble on peut faire bouger les choses !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {"mediaPosition":"right"} -->\n<div class="wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile"><figure class="wp-block-media-text__media"></figure><div class="wp-block-media-text__content"><!-- wp:paragraph -->\n<p>Suivez notre aventure entrepreneuriale engagée sur Linkedin ! <br>#positivespirit</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4><strong>- CERTIFIÉ ET MEMBRE DE LA COMMUNAUTÉ ENGAGÉE B CORP</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une preuve de nos engagements ?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La Société des vieux copains est membre de la communauté <strong>BCORP</strong> depuis juillet 2019 et fait ainsi partie des 2800 entreprises pionnières dans le monde qui veulent réconcilier but lucratif (for profit) et intérêt général (for purpose).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On pense qu\'on peut vendre des produits, générer du chiffre d’affaires tout en cherchant à avoir un impact positif sur notre planète!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cette certification est une reconnaissance des efforts que nous faisons pour réduire nos impacts (dépenses en eau, énergie, déchets, matières premières françaises et bio…) et, en plus, contribuer à la création d’un monde plus juste, plus responsable et plus enthousiaste.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Plus qu\'une certification, B Corp est un mouvement, une commauté qui rassemble des marques comme Patagonia, Veja, Nature &amp; Découverte, La Camif,…</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2><strong>2. EN TOUTE TRANSPARENCE... ON VOUS DIT TOUT !</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Construire des relations fortes avec tous ceux qui nous entourent est impossible sans transparence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>La transparence, c\'est aussi accepter de ne pas être parfait.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une liste de thèmatiques pour lesquelles on vous livre des informations factuelles, des explications.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>>> Cliquer sur celle qui vous intéresse !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>​Et si vous avez d\'autres questions, posez-les nous via <a href="https://www.archibaldtonic.com/contact">notre formulaire en ligne</a> ;)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Argh ! Il va falloir attendre quelques jours pour que les informations de chaque thématique s\'affichent... Teasing teasing !</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong>LE PLUS LOCAL POSSIBLE</strong></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>la carte des origines</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong>NOTRE PRIX</strong></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Notre prix de revient est plus élevé que la plupart des tonics : pourquoi ?</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong>VALEURS NUTRITIONNELLES</strong></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong><strong> LES COPIES ET DÉTAILS DE NOS CERTIFICATIONS</strong></strong></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:list -->\n<ul><li><strong><strong><strong>CHARTE FOURNISSEURS</strong></strong></strong></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:paragraph -->\n<p><strong><strong>QUI EST DERRIÈRE LA SOCIÉTÉ DES VIEUX COPAINS ?</strong></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2><strong>3. ENCORE MIEUX DEMAIN !</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:pullquote -->\n<figure class="wp-block-pullquote"><blockquote><p>Nos grands projets pour inscrire Archibald dans le monde de demain...</p></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph -->\n<p>Parce qu\'on veut toujours faire mieux, parce qu\'on vous dit tout... voici les projets sur lesquels nous travaillons :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>créer une filière de cueillette de baies de genièvre bio, sauvages et françaises !</li><li>bonifier notre produit : à la recherche constante des meilleurs ingrédients… les plus proches de nous mais avant tout les meilleurs</li><li>faire d\'Archibald une marque solidaire … une surprise pour la fin de de l\'année !</li><li>mettre au point une verrerie intégrant un maximum de verre recyclé</li><li>faire d\'Archibald une MARQUE CIRCULAIRE - le Graal ! : des pistes, des projets, des réflexions en cours…</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Engagé et responsable', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-03-15 19:38:37', '2021-03-15 18:38:37', '', 12, 'http://projets.bdx.digital-campus.net/archibald/index.php/2021/03/15/12-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 23, 'order', '0'),
(2, 23, 'display_type', ''),
(3, 23, 'thumbnail_id', '0'),
(4, 24, 'order', '0'),
(5, 24, 'display_type', ''),
(6, 24, 'thumbnail_id', '0'),
(7, 23, 'product_count_product_cat', '14'),
(8, 25, 'order', '0'),
(9, 25, 'display_type', ''),
(10, 25, 'thumbnail_id', '0'),
(11, 26, 'order', '0'),
(12, 26, 'display_type', ''),
(13, 26, 'thumbnail_id', '0'),
(14, 25, 'product_count_product_cat', '1'),
(15, 24, 'product_count_product_cat', '24'),
(16, 26, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'accueil', 'accueil', 0),
(3, 'tonic de distillerie', 'tonic-de-distillerie', 0),
(4, 'engagé et responsable', 'engage-et-responsable', 0),
(5, 'dégustation', 'degustation', 0),
(6, 'contact', 'contact', 0),
(7, 'blog et news', 'blog-et-news', 0),
(8, 'e-shop', 'e-shop', 0),
(9, 'simple', 'simple', 0),
(10, 'grouped', 'grouped', 0),
(11, 'variable', 'variable', 0),
(12, 'external', 'external', 0),
(13, 'exclude-from-search', 'exclude-from-search', 0),
(14, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(15, 'featured', 'featured', 0),
(16, 'outofstock', 'outofstock', 0),
(17, 'rated-1', 'rated-1', 0),
(18, 'rated-2', 'rated-2', 0),
(19, 'rated-3', 'rated-3', 0),
(20, 'rated-4', 'rated-4', 0),
(21, 'rated-5', 'rated-5', 0),
(22, 'Non classé', 'non-classe', 0),
(23, 'Archibald', 'archibald', 0),
(24, 'Spiritueux', 'spiritueux', 0),
(25, 'Accompagnements', 'accompagnements', 0),
(26, 'Coffrets', 'coffrets', 0),
(27, 'Menu principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(29, 2, 0),
(31, 2, 0),
(33, 2, 0),
(35, 2, 0),
(37, 2, 0),
(39, 2, 0),
(42, 3, 0),
(44, 3, 0),
(46, 3, 0),
(48, 3, 0),
(50, 3, 0),
(52, 3, 0),
(54, 3, 0),
(56, 4, 0),
(58, 4, 0),
(60, 4, 0),
(64, 9, 0),
(64, 23, 0),
(66, 9, 0),
(66, 23, 0),
(67, 9, 0),
(67, 23, 0),
(68, 9, 0),
(68, 23, 0),
(69, 9, 0),
(69, 23, 0),
(70, 9, 0),
(70, 23, 0),
(71, 9, 0),
(71, 23, 0),
(73, 9, 0),
(73, 23, 0),
(74, 9, 0),
(74, 23, 0),
(75, 9, 0),
(75, 23, 0),
(76, 9, 0),
(76, 23, 0),
(77, 9, 0),
(77, 23, 0),
(78, 9, 0),
(78, 23, 0),
(79, 9, 0),
(79, 23, 0),
(81, 9, 0),
(81, 25, 0),
(82, 9, 0),
(82, 24, 0),
(83, 9, 0),
(83, 24, 0),
(84, 9, 0),
(84, 24, 0),
(85, 9, 0),
(85, 24, 0),
(86, 9, 0),
(86, 24, 0),
(87, 9, 0),
(87, 24, 0),
(88, 9, 0),
(88, 24, 0),
(89, 9, 0),
(89, 24, 0),
(90, 9, 0),
(90, 24, 0),
(91, 9, 0),
(91, 24, 0),
(92, 9, 0),
(92, 24, 0),
(93, 9, 0),
(93, 24, 0),
(94, 9, 0),
(94, 24, 0),
(95, 9, 0),
(95, 24, 0),
(96, 9, 0),
(96, 24, 0),
(97, 9, 0),
(97, 24, 0),
(98, 9, 0),
(98, 24, 0),
(99, 9, 0),
(99, 24, 0),
(100, 9, 0),
(100, 24, 0),
(101, 9, 0),
(101, 24, 0),
(102, 9, 0),
(102, 24, 0),
(103, 9, 0),
(103, 24, 0),
(104, 9, 0),
(104, 24, 0),
(105, 9, 0),
(105, 24, 0),
(106, 9, 0),
(106, 26, 0),
(108, 4, 0),
(110, 4, 0),
(112, 5, 0),
(115, 5, 0),
(117, 5, 0),
(119, 5, 0),
(133, 27, 0),
(134, 27, 0),
(135, 27, 0),
(136, 27, 0),
(137, 27, 0),
(138, 27, 0),
(162, 27, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 7),
(3, 3, 'category', '', 0, 7),
(4, 4, 'category', '', 0, 5),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'product_type', '', 0, 40),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_type', '', 0, 0),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_cat', '', 0, 0),
(23, 23, 'product_cat', 'Produits Archibald', 0, 14),
(24, 24, 'product_cat', 'Spiritueux', 0, 24),
(25, 25, 'product_cat', 'Accompagnements pour spiritueux', 0, 1),
(26, 26, 'product_cat', 'Coffrets de bouteilles Archibald et spiritueux', 0, 1),
(27, 27, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:8:{s:64:"56343b81771f1c9a3052068359513ccea6e811bd82f521818d8625e9a207d722";a:4:{s:10:"expiration";i:1615834525;s:2:"ip";s:13:"86.213.86.230";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0";s:5:"login";i:1615661725;}s:64:"4287170adb7823ff1c9171b384b6036d3f1e13b0c0356eeb6375ea46c95dc0cd";a:4:{s:10:"expiration";i:1615900873;s:2:"ip";s:14:"86.234.133.224";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0";s:5:"login";i:1615728073;}s:64:"5469a00df91bb6c60ba9801cf749794f7756ee484dacc1ff065601eb1fb77177";a:4:{s:10:"expiration";i:1615903432;s:2:"ip";s:14:"86.234.133.224";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0";s:5:"login";i:1615730632;}s:64:"66dba5fdc6828520100081f86352dec3fadc75e599f580e4a153613998f42f98";a:4:{s:10:"expiration";i:1615922847;s:2:"ip";s:13:"86.213.86.230";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0";s:5:"login";i:1615750047;}s:64:"bab2d3ea98feed318c552d73b875ab547154921643f3f889c2236545ef445a5a";a:4:{s:10:"expiration";i:1615924406;s:2:"ip";s:14:"86.234.133.224";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0";s:5:"login";i:1615751606;}s:64:"bc4c3d451f8d99b26b7143460d6f4a96bc6e5c4a476de7f2e2705f5ff4d37d2f";a:4:{s:10:"expiration";i:1615924501;s:2:"ip";s:14:"86.234.133.224";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0";s:5:"login";i:1615751701;}s:64:"0597e88a094ae9bae656638d0ee12752b5e98b490a56ab727dbfe6856b0de833";a:4:{s:10:"expiration";i:1615924611;s:2:"ip";s:14:"86.234.133.224";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0";s:5:"login";i:1615751811;}s:64:"042cac1fce86d7855e8ffdc0ce9ea0d5dff10b793e5eb49fbc2a33236a6e685c";a:4:{s:10:"expiration";i:1617031049;s:2:"ip";s:14:"176.180.91.210";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36";s:5:"login";i:1615821449;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"176.180.86.0";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:AnW7kAKTl0Yzl0Pxu3/ZjNNb'),
(20, 1, 'last_update', '1615644013'),
(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1615644012630'),
(22, 1, 'wc_last_active', '1616112000'),
(24, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&posts_list_mode=list'),
(25, 1, 'wp_user-settings-time', '1615733203'),
(26, 1, '_order_count', '0'),
(29, 1, 'edit_post_per_page', '54'),
(30, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(31, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(36, 1, 'nav_menu_recently_edited', '27');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BGErPGGnQdnOcMIvFDNk45NsHS9R82/', 'admin', 'bigot.max@gmail.com', 'http://projets.bdx.digital-campus.net/archibald', '2021-03-13 13:48:38', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Inscrivez-vous pour recevoir des astuces, des mises à jour des produits et des sources d’inspiration', 'Nous sommes là pour vous, obtenir des astuces, mises à jour de produits et inspirations directement dans votre boîte e-mail', '{}', 'unactioned', 'woocommerce-admin', '2021-03-13 14:00:09', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connectez-vous à votre audience', 'Faites croître votre base clients et augmentez vos ventes avec les outils marketing créés pour WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-13 14:00:09', NULL, 0, 'plain', '', 0, 'info'),
(3, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:09', NULL, 0, 'plain', '', 0, 'info'),
(4, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:09', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href="https://wordpress.com/support/concierge-support/">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:09', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:09', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:10', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Se connecter à WooCommerce.com', 'Connectez-vous pour obtenir des notifications et des mises à jour importantes sur les produits.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-13 14:00:10', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:10', NULL, 0, 'plain', '', 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2021-03-10 07:22:40', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:10', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:10', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-03-09 22:00:10', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2021-03-15 11:14:27', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'La gestion des codes promo a changé d’emplacement !', 'Vous gérez désormais les codes promo dans Marketing &gt; Codes promo. Cliquez sur le bouton ci-dessous pour supprimer l’élément de menu hérité WooCommerce &gt; Codes promo.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-13 18:55:32', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'En savoir plus sur les produits variables', 'Les produits variables sont un type de produit puissant qui vous permet de proposer un ensemble de variantes d’un produit avec contrôle des prix, du stock, de l’image et plus pour chaque variante. Vous pouvez l’appliquer à un produit comme une chemise, disponible en plusieurs tailles et dans différentes couleurs.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-13 20:22:39', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Vous cherchez un thème ?', 'Découvrez les thèmes compatibles avec WooCommerce et choisissez celui qui correspond le mieux à l’image de votre marque et à vos besoins.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-14 14:03:32', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Tendances', 'Plus de 80 % des nouveaux commerçants ajoutent leur premier produit et configurent au moins un moyen de paiement durant la première semaine. Nous sommes là pour contribuer à la réussite de votre entreprise ! Trouvez-vous ce type d\'information utile ?', '{}', 'unactioned', 'woocommerce-admin', '2021-03-14 14:03:32', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-mobile-app', 'info', 'en_US', 'Installer l’application mobile Woo', 'Installez l’application mobile WooCommerce pour gérer les commandes, recevoir des notifications de vente et afficher les statistiques principales où que vous soyez.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-15 15:14:26', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'Comment personnaliser votre catalogue de produits', 'Vous souhaitez soigner l’apparence de vos images et de votre catalogue de produits tout en vous conformant à votre marque. Ce guide contient tous les conseils dont vous avez besoin pour mettre en valeur vos produits dans votre boutique.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-15 15:14:26', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Commencer à accepter les paiements sur votre boutique !', 'Accepter les paiements avec le fournisseur qui vous convient, parmi plus de 100 passerelles de paiement pour WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-18 15:51:10', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Oui, s’il vous plait !', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Espace marketing', 'http://projets.bdx.digital-campus.net/archibald/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(8, 8, 'connect', 'Connecter', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(37, 15, 'remove-legacy-coupon-menu', 'Retirer le menu de code promo hérité', 'http://projets.bdx.digital-campus.net/archibald/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', 1, ''),
(38, 16, 'learn-more', 'En savoir plus', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', 0, ''),
(479, 17, 'visit-the-theme-marketplace', 'Consulter la bibliothèque de thèmes', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, ''),
(480, 18, 'affirm-insight-first-product-and-payment', 'Oui', '', 'actioned', 0, 'Merci pour vos retours'),
(932, 19, 'learn-more', 'En savoir plus', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(933, 20, 'day-after-first-product', 'En savoir plus', 'https://docs.woocommerce.com/document/woocommerce-customizer/?utm_source=inbox', 'actioned', 0, ''),
(967, 21, 'view-payment-gateways', 'En savoir plus', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(979, 3, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
(980, 4, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
(981, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(982, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(983, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(984, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
(985, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
(986, 11, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
(987, 12, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
(988, 13, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
(989, 14, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(22, 22);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(64, '', 0, 0, '23.5000', '23.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(66, '', 0, 0, '31.1000', '31.1000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(67, '', 0, 0, '57.9000', '57.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(68, '', 0, 0, '154.5000', '154.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(69, '', 0, 0, '29.5000', '29.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(70, '', 0, 0, '56.3000', '56.3000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(71, '', 0, 0, '134.9000', '134.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(73, '', 0, 0, '29.9000', '29.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(74, '', 0, 0, '56.8000', '56.8000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(75, '', 0, 0, '110.4000', '110.4000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(76, '', 0, 0, '29.9000', '29.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(77, '', 0, 0, '19.5000', '19.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(78, '', 0, 0, '37.9000', '37.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(79, '', 0, 0, '37.9000', '37.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(81, '', 0, 0, '1.9000', '1.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(82, '', 0, 0, '55.0000', '55.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(83, '', 0, 0, '39.0000', '39.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(84, '', 0, 0, '49.0000', '49.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(85, '', 0, 0, '46.0000', '46.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, '', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(87, '', 0, 0, '42.0000', '42.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(88, '', 0, 0, '46.0000', '46.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(89, '', 0, 0, '37.0000', '37.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, '', 0, 0, '40.0000', '40.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, '', 0, 0, '49.0000', '49.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(92, '', 0, 0, '42.0000', '42.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(93, '', 0, 0, '46.0000', '46.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(94, '', 0, 0, '47.0000', '47.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(95, '', 0, 0, '42.0000', '42.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(96, '', 0, 0, '44.0000', '44.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(97, '', 0, 0, '59.0000', '59.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(98, '', 0, 0, '59.0000', '59.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, '', 0, 0, '59.0000', '59.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(100, '', 0, 0, '59.0000', '59.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, '', 0, 0, '90.0000', '90.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(102, '', 0, 0, '58.0000', '58.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(103, '', 0, 0, '54.9000', '54.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(104, '', 0, 0, '57.0000', '57.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(105, '', 0, 0, '19.9000', '19.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(106, '', 0, 0, '29.9000', '29.9000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taux réduit', 'taux-reduit'),
(2, 'Taux zéro', 'taux-zero');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:733:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2021-03-13T15:00:13+01:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"FR";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"FR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:19:"bigot.max@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1616255467);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Index pour la table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Index pour la table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Index pour la table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Index pour la table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Index pour la table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Index pour la table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Index pour la table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Index pour la table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Index pour la table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Index pour la table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Index pour la table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Index pour la table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;
--
-- AUTO_INCREMENT pour la table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1148;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1100;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;
--
-- AUTO_INCREMENT pour la table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
