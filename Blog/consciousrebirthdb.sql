-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 31, 2018 alle 17:12
-- Versione del server: 10.1.34-MariaDB
-- Versione PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consciousrebirthdb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2018-08-29 14:32:36', '2018-08-29 12:32:36', 'Ciao, questo è un commento.\nPer cancellare un commento effettua la login e visualizza i commenti agli articoli. Lì troverai le opzioni per modificarli o cancellarli.', 0, '1', '', '', 0, 0),
(2, 1, 'luca', 'luca.schiavon@alice.it', '', '::1', '2018-08-29 17:42:43', '2018-08-29 15:42:43', 'prova commento', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ConsciousRebirth', 'yes'),
(2, 'home', 'http://localhost/ConsciousRebirth', 'yes'),
(3, 'blogname', 'Conscious Rebirth', 'yes'),
(4, 'blogdescription', ' Get aware Plan and act !!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luca.schiavon@alice.it', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:21:\"polylang/polylang.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:31:\"cookie-notice/cookie-notice.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:2:{i:0;i:1;i:1;i:61;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Rome', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'WPLANG', 'it_IT', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:13:\"custom_html-3\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1535729620;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535761956;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535805182;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535805220;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535805669;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(118, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"luca.schiavon@alice.it\";s:7:\"version\";s:6:\"4.5.15\";s:9:\"timestamp\";i:1535545974;}', 'yes'),
(119, '_site_transient_timeout_browser_641c1b809b4a663858ef5499c3de0aaf', '1536150786', 'yes'),
(120, '_site_transient_browser_641c1b809b4a663858ef5499c3de0aaf', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'yes'),
(136, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(137, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(138, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(139, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(140, 'widget_custom_html', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:78:\"<div style=\"width:500px\">\r\n	Conscious rebirth - (c) Luca Schiavon 2018\r\n</div>\";}}', 'yes'),
(141, 'wp_page_for_privacy_policy', '17', 'yes'),
(142, 'show_comments_cookies_opt_in', '0', 'yes'),
(143, 'db_upgraded', '', 'yes'),
(147, 'can_compress_scripts', '1', 'no'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'theme_mods_twentysixteen', 'a:12:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"social\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535548300;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:12:\"header_image\";s:13:\"remove-header\";s:16:\"background_image\";s:86:\"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/fsondo-e1535722792857.jpg\";s:17:\"background_preset\";s:4:\"fill\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:11:\"custom_logo\";s:0:\"\";}', 'yes'),
(159, 'fresh_site', '0', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(178, 'current_theme', 'Twenty Sixteen', 'yes'),
(179, 'theme_mods_flat', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535549616;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(180, 'theme_switched', '', 'yes'),
(181, 'flat_install', '1535548301', 'yes'),
(182, '_transient_timeout_flat_1711versions', '1538140301', 'no'),
(183, '_transient_flat_1711versions', 'a:54:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.0.0.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.0.1.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"1.0.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.0.2.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"1.0.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.0.3.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"1.0.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.0.4.zip\";}i:5;a:2:{s:7:\"version\";s:5:\"1.0.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.0.5.zip\";}i:6;a:2:{s:7:\"version\";s:5:\"1.2.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.0.zip\";}i:7;a:2:{s:7:\"version\";s:5:\"1.2.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.1.zip\";}i:8;a:2:{s:7:\"version\";s:5:\"1.2.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.2.zip\";}i:9;a:2:{s:7:\"version\";s:5:\"1.2.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.3.zip\";}i:10;a:2:{s:7:\"version\";s:5:\"1.2.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.4.zip\";}i:11;a:2:{s:7:\"version\";s:5:\"1.2.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.5.zip\";}i:12;a:2:{s:7:\"version\";s:5:\"1.2.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.6.zip\";}i:13;a:2:{s:7:\"version\";s:5:\"1.2.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.7.zip\";}i:14;a:2:{s:7:\"version\";s:5:\"1.2.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.8.zip\";}i:15;a:2:{s:7:\"version\";s:5:\"1.2.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.2.9.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"1.2.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/flat.1.2.10.zip\";}i:17;a:2:{s:7:\"version\";s:6:\"1.2.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/flat.1.2.11.zip\";}i:18;a:2:{s:7:\"version\";s:6:\"1.2.12\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/flat.1.2.12.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"1.2.13\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/flat.1.2.13.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"1.2.14\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/flat.1.2.14.zip\";}i:21;a:2:{s:7:\"version\";s:5:\"1.3.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.0.zip\";}i:22;a:2:{s:7:\"version\";s:5:\"1.3.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.1.zip\";}i:23;a:2:{s:7:\"version\";s:5:\"1.3.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.2.zip\";}i:24;a:2:{s:7:\"version\";s:5:\"1.3.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.3.zip\";}i:25;a:2:{s:7:\"version\";s:5:\"1.3.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.4.zip\";}i:26;a:2:{s:7:\"version\";s:5:\"1.3.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.5.zip\";}i:27;a:2:{s:7:\"version\";s:5:\"1.3.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.6.zip\";}i:28;a:2:{s:7:\"version\";s:5:\"1.3.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.7.zip\";}i:29;a:2:{s:7:\"version\";s:5:\"1.3.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.3.8.zip\";}i:30;a:2:{s:7:\"version\";s:5:\"1.4.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.4.0.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"1.4.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.4.1.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"1.4.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.4.2.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"1.4.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.4.3.zip\";}i:34;a:2:{s:7:\"version\";s:3:\"1.5\";s:3:\"url\";s:50:\"https://downloads.wordpress.org/theme/flat.1.5.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"1.5.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.1.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"1.5.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.2.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"1.5.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.3.zip\";}i:38;a:2:{s:7:\"version\";s:5:\"1.5.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.4.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"1.5.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.5.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"1.5.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.6.zip\";}i:41;a:2:{s:7:\"version\";s:5:\"1.5.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.7.zip\";}i:42;a:2:{s:7:\"version\";s:5:\"1.5.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.8.zip\";}i:43;a:2:{s:7:\"version\";s:5:\"1.5.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.5.9.zip\";}i:44;a:2:{s:7:\"version\";s:3:\"1.6\";s:3:\"url\";s:50:\"https://downloads.wordpress.org/theme/flat.1.6.zip\";}i:45;a:2:{s:7:\"version\";s:3:\"1.7\";s:3:\"url\";s:50:\"https://downloads.wordpress.org/theme/flat.1.7.zip\";}i:46;a:2:{s:7:\"version\";s:5:\"1.7.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.1.zip\";}i:47;a:2:{s:7:\"version\";s:5:\"1.7.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.2.zip\";}i:48;a:2:{s:7:\"version\";s:5:\"1.7.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.4.zip\";}i:49;a:2:{s:7:\"version\";s:5:\"1.7.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.5.zip\";}i:50;a:2:{s:7:\"version\";s:5:\"1.7.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.6.zip\";}i:51;a:2:{s:7:\"version\";s:5:\"1.7.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.7.zip\";}i:52;a:2:{s:7:\"version\";s:5:\"1.7.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/flat.1.7.8.zip\";}i:53;a:2:{s:7:\"version\";s:6:\"1.7.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/flat.1.7.11.zip\";}}', 'no'),
(185, 'theme_mods_twentyfourteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535548384;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(186, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, '_transient_twentyfourteen_category_count', '1', 'yes'),
(195, 'theme_mods_twentythirteen', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:90:\"http://localhost/ConsciousRebirth/wp-content/themes/twentythirteen/images/headers/star.png\";s:17:\"header_image_data\";a:3:{s:3:\"url\";s:90:\"http://localhost/ConsciousRebirth/wp-content/themes/twentythirteen/images/headers/star.png\";s:13:\"thumbnail_url\";s:100:\"http://localhost/ConsciousRebirth/wp-content/themes/twentythirteen/images/headers/star-thumbnail.png\";s:11:\"description\";s:6:\"Stella\";}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535550507;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"custom_html-3\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(207, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535550580;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"custom_html-3\";}}}}', 'yes'),
(209, '_transient_twentyfifteen_categories', '1', 'yes'),
(226, 'polylang', 'a:15:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:4:{i:0;s:10:\"taxonomies\";i:1;s:17:\"_wp_page_template\";i:2;s:10:\"menu_order\";i:3;s:13:\"_thumbnail_id\";}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:6:\"2.3.10\";s:16:\"first_activation\";i:1535551394;s:12:\"default_lang\";s:2:\"it\";s:9:\"nav_menus\";a:1:{s:13:\"twentysixteen\";a:2:{s:7:\"primary\";a:2:{s:2:\"it\";i:2;s:2:\"en\";i:12;}s:6:\"social\";a:2:{s:2:\"it\";i:0;s:2:\"en\";i:0;}}}}', 'yes'),
(227, 'polylang_wpml_strings', 'a:9:{i:0;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:21:\"Message in the notice\";s:6:\"string\";s:171:\"Utilizziamo i cookie per essere sicuri che tu possa avere la migliore esperienza sul nostro sito. Se continui ad utilizzare questo sito noi assumiamo che tu ne sia felice.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:1;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:11:\"Button text\";s:6:\"string\";s:2:\"Ok\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:2;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:18:\"Refuse button text\";s:6:\"string\";s:2:\"No\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:3;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:18:\"Revoke button text\";s:6:\"string\";s:14:\"Revoke cookies\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:4;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:19:\"Privacy policy text\";s:6:\"string\";s:14:\"Privacy policy\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:5;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:21:\"Message in the notice\";s:6:\"string\";s:199:\"Utilizziamo i cookies per assicurarti la migliore esperienza possibile sul nostro sito. Accettando questo banner acconsenti all\'utilizzo dei cookies. <a href=\"privacy-policy\">Termini e condizioni</a>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:6;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:21:\"Message in the notice\";s:6:\"string\";s:278:\"Utilizziamo i cookies per assicurarti la migliore esperienza possibile sul nostro sito. Accettando questo banner acconsenti all\'utilizzo dei cookies. \r\nWe use cookies to ensure the best possible experience on our site. By accepting this banner you consent to the use of cookies.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:7;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:21:\"Message in the notice\";s:6:\"string\";s:282:\"Utilizziamo i cookies per assicurarti la migliore esperienza possibile sul nostro sito. Accettando questo banner acconsenti all\'utilizzo dei cookies. \r\n<br>We use cookies to ensure the best possible experience on our site. By accepting this banner you consent to the use of cookies.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:8;a:5:{s:7:\"context\";s:13:\"Cookie Notice\";s:4:\"name\";s:21:\"Message in the notice\";s:6:\"string\";s:286:\"Utilizziamo i cookies per assicurarti la migliore esperienza possibile sul nostro sito. Accettando questo banner acconsenti all\'utilizzo dei cookies. \r\n<br>We use cookies to ensure the best possible experience on our site. By accepting this banner you consent to the use of cookies.<br>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}}', 'yes'),
(228, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, 'category_children', 'a:0:{}', 'yes'),
(245, 'rewrite_rules', 'a:172:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"(en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=it&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=it&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=it&post_format=$matches[1]&embed=true\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=it&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=it&post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=it&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=it&&feed=$matches[1]\";s:13:\"(en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=it&&embed=true\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=it&&paged=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=it&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=it&&feed=$matches[1]&withcomments=1\";s:22:\"(en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=it&&embed=true\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=it&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=it&s=$matches[1]&feed=$matches[2]\";s:25:\"(en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=it&s=$matches[1]&embed=true\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=it&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=it&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=it&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=it&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=it&author_name=$matches[1]&embed=true\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=it&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=it&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(en)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(en)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(280, 'cookie_notice_options', 'a:24:{s:12:\"message_text\";s:286:\"Utilizziamo i cookies per assicurarti la migliore esperienza possibile sul nostro sito. Accettando questo banner acconsenti all\'utilizzo dei cookies. \r\n<br>We use cookies to ensure the best possible experience on our site. By accepting this banner you consent to the use of cookies.<br>\";s:11:\"accept_text\";s:2:\"Ok\";s:8:\"see_more\";s:3:\"yes\";s:12:\"see_more_opt\";a:5:{s:4:\"text\";s:14:\"Privacy policy\";s:9:\"link_type\";s:4:\"page\";s:2:\"id\";i:17;s:4:\"link\";s:0:\"\";s:4:\"sync\";b:0;}s:11:\"link_target\";s:6:\"_blank\";s:11:\"refuse_text\";s:2:\"No\";s:11:\"revoke_text\";s:14:\"Revoke cookies\";s:18:\"revoke_cookies_opt\";s:9:\"automatic\";s:16:\"refuse_code_head\";s:0:\"\";s:11:\"refuse_code\";s:0:\"\";s:16:\"on_scroll_offset\";i:100;s:4:\"time\";s:5:\"month\";s:16:\"script_placement\";s:6:\"header\";s:8:\"position\";s:6:\"bottom\";s:11:\"hide_effect\";s:4:\"fade\";s:9:\"css_style\";s:9:\"bootstrap\";s:9:\"css_class\";s:6:\"button\";s:6:\"colors\";a:2:{s:4:\"text\";s:4:\"#fff\";s:3:\"bar\";s:4:\"#000\";}s:10:\"refuse_opt\";s:2:\"no\";s:14:\"revoke_cookies\";b:0;s:9:\"on_scroll\";s:2:\"no\";s:11:\"redirection\";b:0;s:19:\"deactivation_delete\";s:2:\"no\";s:9:\"translate\";b:0;}', 'no'),
(281, 'cookie_notice_version', '1.2.44', 'no'),
(322, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"it_IT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535721741;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(323, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535721743;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:31:\"cookie-notice/cookie-notice.php\";s:6:\"1.2.44\";s:9:\"hello.php\";s:3:\"1.6\";s:21:\"polylang/polylang.php\";s:6:\"2.3.10\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"cookie-notice/cookie-notice.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/cookie-notice\";s:4:\"slug\";s:13:\"cookie-notice\";s:6:\"plugin\";s:31:\"cookie-notice/cookie-notice.php\";s:11:\"new_version\";s:6:\"1.2.44\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/cookie-notice/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/cookie-notice.1.2.44.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/cookie-notice/assets/icon-256x256.png?rev=1805756\";s:2:\"1x\";s:66:\"https://ps.w.org/cookie-notice/assets/icon-128x128.png?rev=1805756\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/cookie-notice/assets/banner-772x250.png?rev=1805749\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:6:\"2.3.10\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/polylang.2.3.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(324, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535725542;s:7:\"checked\";a:6:{s:4:\"flat\";s:6:\"1.7.11\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:14:\"twentyfourteen\";s:3:\"2.2\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:14:\"twentythirteen\";s:3:\"2.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(325, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1535564891;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(392, '_site_transient_timeout_popular_importers_4779b1a3c5ac7c7cac93bd6c5738878d', '1535813306', 'no'),
(393, '_site_transient_popular_importers_4779b1a3c5ac7c7cac93bd6c5738878d', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(407, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1535771216', 'no'),
(408, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Rome\";s:3:\"url\";s:30:\"https://2018.rome.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-09-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:11:\"Rome, Italy\";s:7:\"country\";s:2:\"IT\";s:8:\"latitude\";d:41.8548655;s:9:\"longitude\";d:12.4707298;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"WordPress Installation Party\";s:3:\"url\";s:71:\"https://www.meetup.com/Reggio-Emilia-WordPress-Meetup/events/254003275/\";s:6:\"meetup\";s:30:\"Reggio Emilia WordPress Meetup\";s:10:\"meetup_url\";s:54:\"https://www.meetup.com/Reggio-Emilia-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-09-18 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:20:\"Reggio Emilia, Italy\";s:7:\"country\";s:2:\"it\";s:8:\"latitude\";d:44.692333;s:9:\"longitude\";d:10.633345;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:68:\"Verona WordPress Meetup SETTEMBRE 2018 #23 - i nostri temi preferiti\";s:3:\"url\";s:64:\"https://www.meetup.com/Verona-WordPress-Meetup/events/254036711/\";s:6:\"meetup\";s:23:\"Verona WordPress Meetup\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/Verona-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-09-27 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Verona, Italy\";s:7:\"country\";s:2:\"it\";s:8:\"latitude\";d:45.43023;s:9:\"longitude\";d:10.998634;}}i:3;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"WordCamp Lausanne\";s:3:\"url\";s:34:\"https://2018.lausanne.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-09-28 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Lausanne, Switzerland\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.5162846;s:9:\"longitude\";d:6.6382397;}}i:4;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Verona\";s:3:\"url\";s:32:\"https://2018.verona.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-10-12 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Verona, Italy\";s:7:\"country\";s:2:\"IT\";s:8:\"latitude\";d:45.4400101;s:9:\"longitude\";d:10.9720133;}}}}', 'no'),
(419, '_site_transient_timeout_theme_roots', '1535727341', 'no'),
(420, '_site_transient_theme_roots', 'a:6:{s:4:\"flat\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}', 'no'),
(421, '_transient_pll_languages_list', 'a:2:{i:0;a:26:{s:7:\"term_id\";i:3;s:4:\"name\";s:8:\"Italiano\";s:4:\"slug\";s:2:\"it\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:3;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"it_IT\";s:6:\"parent\";i:0;s:5:\"count\";i:8;s:10:\"tl_term_id\";i:4;s:19:\"tl_term_taxonomy_id\";i:4;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"it-IT\";s:8:\"facebook\";s:5:\"it_IT\";s:8:\"flag_url\";s:74:\"http://localhost/ConsciousRebirth/wp-content/plugins/polylang/flags/it.png\";s:4:\"flag\";s:628:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAE2SURBVHjaYmSYyMDwgwEE/jEw/GF4mvT0HyqQUlX9B5aEIIAAYmH4wlDtWg1SDwT//0lKSv7/D+T9/w+nYmL+//79/88fIPll0yaAAGJhYAGJP/n69O+/v0CAUAcHt2////ULqJpRVhZoA0AAsQCtAZoMVP0HiP7+RlcNBEDVYA0Mv38DNQAEEMj8vwx//wCt/AdC/zEBkgagYoAAYgF6FGj277+///wlpAEoz8AAEEAgDX/BZv/69wuoB48GRrCTAAKICajh9//fv/6CVP/++wu7BrDxQFf/YWAACCCwk0BKf0MQdg1/gBqAPv0L9ANAALEAY+33vz+S3JIgb/z5C45CBkZGRgY4UFICKQUjoJMAAoiRoZSB4RMojkHx/YPhbNVZoM3AOISQQPUK9vaQOIYAgAADAC5Wd4RRwnKfAAAAAElFTkSuQmCC\" title=\"Italiano\" alt=\"Italiano\" />\";s:8:\"home_url\";s:34:\"http://localhost/ConsciousRebirth/\";s:10:\"search_url\";s:34:\"http://localhost/ConsciousRebirth/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"29\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"it\";}i:1;a:26:{s:7:\"term_id\";i:6;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:6;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_GB\";s:6:\"parent\";i:0;s:5:\"count\";i:4;s:10:\"tl_term_id\";i:7;s:19:\"tl_term_taxonomy_id\";i:7;s:8:\"tl_count\";i:1;s:6:\"locale\";R:35;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"flag_url\";s:74:\"http://localhost/ConsciousRebirth/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:866:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=\" title=\"English\" alt=\"English\" />\";s:8:\"home_url\";s:37:\"http://localhost/ConsciousRebirth/en/\";s:10:\"search_url\";s:37:\"http://localhost/ConsciousRebirth/en/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"30\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"gb\";}}', 'yes'),
(427, '_transient_is_multi_author', '0', 'yes'),
(428, '_transient_twentysixteen_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1535556070:1'),
(3, 4, '_edit_last', '1'),
(4, 4, '_edit_lock', '1535551850:1'),
(5, 6, '_menu_item_type', 'post_type'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '4'),
(8, 6, '_menu_item_object', 'page'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', ''),
(14, 2, '_edit_last', '1'),
(24, 9, '_edit_last', '1'),
(25, 9, '_edit_lock', '1535554104:1'),
(26, 11, '_edit_last', '1'),
(27, 11, '_edit_lock', '1535633882:1'),
(28, 13, '_menu_item_type', 'post_type'),
(29, 13, '_menu_item_menu_item_parent', '0'),
(30, 13, '_menu_item_object_id', '11'),
(31, 13, '_menu_item_object', 'page'),
(32, 13, '_menu_item_target', ''),
(33, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 13, '_menu_item_xfn', ''),
(35, 13, '_menu_item_url', ''),
(46, 15, '_edit_last', '1'),
(47, 15, '_edit_lock', '1535547673:1'),
(48, 17, '_edit_lock', '1535555427:1'),
(49, 17, '_edit_last', '1'),
(50, 15, '_wp_trash_meta_status', 'publish'),
(51, 15, '_wp_trash_meta_time', '1535547885'),
(52, 15, '_wp_desired_post_slug', 'privacy-policy'),
(53, 19, '_edit_lock', '1535549914:1'),
(54, 19, '_wp_trash_meta_status', 'publish'),
(55, 19, '_wp_trash_meta_time', '1535549927'),
(56, 20, '_edit_lock', '1535550114:1'),
(57, 20, '_wp_trash_meta_status', 'publish'),
(58, 20, '_wp_trash_meta_time', '1535550124'),
(62, 23, '_wp_attached_file', '2018/08/cropped-download.jpg'),
(63, 23, '_wp_attachment_context', 'custom-header'),
(64, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:282;s:4:\"file\";s:28:\"2018/08/cropped-download.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-download-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-download-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-download-1024x241.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-1200x282.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:22;}'),
(65, 21, '_customize_restore_dismissed', '1'),
(66, 23, '_wp_attachment_custom_header_last_used_twentysixteen', '1535550648'),
(67, 23, '_wp_attachment_is_custom_header', 'twentysixteen'),
(68, 24, '_edit_lock', '1535550640:1'),
(69, 24, '_wp_trash_meta_status', 'publish'),
(70, 24, '_wp_trash_meta_time', '1535550648'),
(71, 25, '_wp_trash_meta_status', 'publish'),
(72, 25, '_wp_trash_meta_time', '1535550732'),
(74, 26, '_wp_trash_meta_status', 'publish'),
(75, 26, '_wp_trash_meta_time', '1535550995'),
(76, 27, '_wp_trash_meta_status', 'publish'),
(77, 27, '_wp_trash_meta_time', '1535551043'),
(78, 28, '_wp_trash_meta_status', 'publish'),
(79, 28, '_wp_trash_meta_time', '1535551175'),
(80, 29, '_pll_strings_translations', 'a:0:{}'),
(81, 30, '_pll_strings_translations', 'a:0:{}'),
(82, 31, '_edit_last', '1'),
(83, 31, '_edit_lock', '1535554640:1'),
(87, 33, '_edit_last', '1'),
(88, 33, '_edit_lock', '1535551824:1'),
(89, 35, '_menu_item_type', 'custom'),
(90, 35, '_menu_item_menu_item_parent', '0'),
(91, 35, '_menu_item_object_id', '35'),
(92, 35, '_menu_item_object', 'custom'),
(93, 35, '_menu_item_target', ''),
(94, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 35, '_menu_item_xfn', ''),
(96, 35, '_menu_item_url', '#pll_switcher'),
(98, 35, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:0;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:0;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:1;}'),
(145, 41, '_edit_last', '1'),
(146, 41, '_edit_lock', '1535633960:1'),
(147, 45, '_wp_page_template', 'default'),
(148, 45, '_edit_last', '1'),
(149, 45, '_edit_lock', '1535553878:1'),
(159, 48, '_menu_item_type', 'post_type'),
(160, 48, '_menu_item_menu_item_parent', '0'),
(161, 48, '_menu_item_object_id', '41'),
(162, 48, '_menu_item_object', 'page'),
(163, 48, '_menu_item_target', ''),
(164, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(165, 48, '_menu_item_xfn', ''),
(166, 48, '_menu_item_url', ''),
(168, 49, '_menu_item_type', 'post_type'),
(169, 49, '_menu_item_menu_item_parent', '0'),
(170, 49, '_menu_item_object_id', '33'),
(171, 49, '_menu_item_object', 'page'),
(172, 49, '_menu_item_target', ''),
(173, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 49, '_menu_item_xfn', ''),
(175, 49, '_menu_item_url', ''),
(186, 51, '_menu_item_type', 'custom'),
(187, 51, '_menu_item_menu_item_parent', '0'),
(188, 51, '_menu_item_object_id', '51'),
(189, 51, '_menu_item_object', 'custom'),
(190, 51, '_menu_item_target', ''),
(191, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 51, '_menu_item_xfn', ''),
(193, 51, '_menu_item_url', '#pll_switcher'),
(195, 51, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:0;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:0;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:1;}'),
(196, 52, '_wp_trash_meta_status', 'publish'),
(197, 52, '_wp_trash_meta_time', '1535555821'),
(198, 1, '_edit_lock', '1535557183:1'),
(199, 1, '_edit_last', '1'),
(202, 54, '_menu_item_type', 'custom'),
(203, 54, '_menu_item_menu_item_parent', '0'),
(204, 54, '_menu_item_object_id', '54'),
(205, 54, '_menu_item_object', 'custom'),
(206, 54, '_menu_item_target', ''),
(207, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 54, '_menu_item_xfn', ''),
(209, 54, '_menu_item_url', '/ConsciousRebirth'),
(211, 55, '_menu_item_type', 'custom'),
(212, 55, '_menu_item_menu_item_parent', '0'),
(213, 55, '_menu_item_object_id', '55'),
(214, 55, '_menu_item_object', 'custom'),
(215, 55, '_menu_item_target', ''),
(216, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 55, '_menu_item_xfn', ''),
(218, 55, '_menu_item_url', '/ConsciousRebirth/en'),
(220, 56, '_form', '<label> Il tuo nome (richiesto)\n    [text* your-name] </label>\n\n<label> La tua email (richiesto)\n    [email* your-email] </label>\n\n<label> Oggetto\n    [text your-subject] </label>\n\n<label> Il tuo messaggio\n    [textarea your-message] </label>\n\n<label>[acceptance accept-this-1] Clicca qui per consentire a questo sito di memorizzare i miei dati affinchè sia possibile rispondere.[/acceptance]</label>\n\n[submit \"Invia\"]'),
(221, 56, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"Conscious Rebirth \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <luca.schiavon@alice.it>\";s:9:\"recipient\";s:22:\"luca.schiavon@alice.it\";s:4:\"body\";s:209:\"Da: [your-name] <[your-email]>\nOggetto: [your-subject]\n\nCorpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(222, 56, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Conscious Rebirth \"[your-subject]\"\";s:6:\"sender\";s:42:\"Conscious Rebirth <luca.schiavon@alice.it>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:153:\"Corpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\";s:18:\"additional_headers\";s:32:\"Reply-To: luca.schiavon@alice.it\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(223, 56, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:46:\"Grazie per il tuo messaggio. È stato inviato.\";s:12:\"mail_sent_ng\";s:88:\"Si è verificato un errore durante l\'invio del tuo messaggio. Per favore prova di nuovo.\";s:16:\"validation_error\";s:69:\"Uno o più campi hanno errori. Per favore controlla e prova di nuovo.\";s:4:\"spam\";s:88:\"Si è verificato un errore durante l\'invio del tuo messaggio. Per favore prova di nuovo.\";s:12:\"accept_terms\";s:70:\"Devi accettare termini e condizioni prima di inviare il tuo messaggio.\";s:16:\"invalid_required\";s:22:\"Il campo è richiesto.\";s:16:\"invalid_too_long\";s:25:\"Il campo è troppo lungo.\";s:17:\"invalid_too_short\";s:25:\"Il campo è troppo corto.\";s:12:\"invalid_date\";s:38:\"Il formato della data non è corretto.\";s:14:\"date_too_early\";s:50:\"La data è antecedente alla prima data consentita.\";s:13:\"date_too_late\";s:49:\"La data è successiva all\'ultima data consentita.\";s:13:\"upload_failed\";s:71:\"Si è verificato un errore sconosciuto durante il caricamento del file.\";s:24:\"upload_file_type_invalid\";s:56:\"Non sei abilitato al caricamenti di file di questo tipo.\";s:21:\"upload_file_too_large\";s:25:\"Il file è troppo grande.\";s:23:\"upload_failed_php_error\";s:48:\"Si è verificato un errore nel caricare il file.\";s:14:\"invalid_number\";s:34:\"Il formato numerico non è valido.\";s:16:\"number_too_small\";s:44:\"Il numero è inferiore al minimo consentito.\";s:16:\"number_too_large\";s:45:\"Il numero è superiore al massimo consentito.\";s:23:\"quiz_answer_not_correct\";s:36:\"La risposta al quiz non è corretta.\";s:17:\"captcha_not_match\";s:41:\"Il codice che hai inserito non è valido.\";s:13:\"invalid_email\";s:42:\"L\'indirizzo e-mail inserito non è valido.\";s:11:\"invalid_url\";s:20:\"L\'URL non è valido.\";s:11:\"invalid_tel\";s:36:\"Il numero di telefono non è valido.\";}'),
(224, 56, '_additional_settings', ''),
(225, 56, '_locale', 'it_IT'),
(226, 61, '_edit_last', '1'),
(227, 61, '_edit_lock', '1535643361:1'),
(230, 63, '_edit_last', '1'),
(231, 63, '_edit_lock', '1535632718:1'),
(236, 65, '_form', '<label> Your name (required)\n    [text* your-name] </label>\n\n<label> Your email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your message\n    [textarea your-message] </label>\n\n<label>[acceptance accept-this-1] Click here to allow this site to store my data so that it is possible to reply.\n[/acceptance]</label>\n\n[submit \"Send\"]'),
(237, 65, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"Conscious Rebirth \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <luca.schiavon@alice.it>\";s:9:\"recipient\";s:22:\"luca.schiavon@alice.it\";s:4:\"body\";s:209:\"Da: [your-name] <[your-email]>\nOggetto: [your-subject]\n\nCorpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(238, 65, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Conscious Rebirth \"[your-subject]\"\";s:6:\"sender\";s:42:\"Conscious Rebirth <luca.schiavon@alice.it>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:153:\"Corpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\";s:18:\"additional_headers\";s:32:\"Reply-To: luca.schiavon@alice.it\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(239, 65, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:36:\"Thanks for the message, It was sent.\";s:12:\"mail_sent_ng\";s:58:\"There was an error sending your message. Please try again.\";s:16:\"validation_error\";s:59:\"One or more fields have errors. Please check and try again.\";s:4:\"spam\";s:58:\"There was an error sending your message. Please try again.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:31:\"The date format is not correct.\";s:14:\"date_too_early\";s:42:\"The date is before the first allowed date.\";s:13:\"date_too_late\";s:40:\"The date is after the last allowed date.\";s:13:\"upload_failed\";s:49:\"An unknown error occurred while loading the file.\";s:24:\"upload_file_type_invalid\";s:52:\"You are not authorized to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:36:\"There was an error loading the file.\";s:14:\"invalid_number\";s:32:\"The numeric format is not valid.\";s:16:\"number_too_small\";s:44:\"The number is less than the minimum allowed.\";s:16:\"number_too_large\";s:47:\"The number is greater than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:38:\"The answer to the quiz is not correct.\";s:17:\"captcha_not_match\";s:41:\"Il codice che hai inserito non è valido.\";s:13:\"invalid_email\";s:40:\"The entered e-mail address is not valid.\";s:11:\"invalid_url\";s:17:\"URL is not valid.\";s:11:\"invalid_tel\";s:34:\"The telephone number is not valid.\";}'),
(240, 65, '_additional_settings', ''),
(241, 65, '_locale', 'it_IT'),
(242, 69, '_wp_trash_meta_status', 'publish'),
(243, 69, '_wp_trash_meta_time', '1535634728'),
(244, 70, '_customize_restore_dismissed', '1'),
(245, 73, '_wp_trash_meta_status', 'publish'),
(246, 73, '_wp_trash_meta_time', '1535721875'),
(247, 74, '_wp_attached_file', '2018/08/fsondo-e1535722792857.jpg'),
(248, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:698;s:6:\"height\";i:540;s:4:\"file\";s:33:\"2018/08/fsondo-e1535722792857.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"fsondo-e1535722792857-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"fsondo-e1535722792857-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 75, '_wp_attached_file', '2018/08/LogoBlog-e1535725953264.png'),
(250, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:35:\"2018/08/LogoBlog-e1535725953264.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"LogoBlog-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 74, '_wp_attachment_is_custom_background', 'twentysixteen'),
(252, 76, '_wp_trash_meta_status', 'publish'),
(253, 76, '_wp_trash_meta_time', '1535722370'),
(254, 74, '_edit_lock', '1535722603:1'),
(255, 74, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:720;s:6:\"height\";i:540;s:4:\"file\";s:10:\"fsondo.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:18:\"fsondo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:18:\"fsondo-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(256, 77, '_wp_trash_meta_status', 'publish'),
(257, 77, '_wp_trash_meta_time', '1535722887'),
(258, 78, '_wp_attached_file', '2018/08/cropped-LogoBlog.png'),
(259, 78, '_wp_attachment_context', 'custom-logo'),
(260, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:28:\"2018/08/cropped-LogoBlog.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-LogoBlog-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 79, '_wp_trash_meta_status', 'publish'),
(262, 79, '_wp_trash_meta_time', '1535725885'),
(263, 75, '_edit_lock', '1535725849:1'),
(264, 75, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:12:\"LogoBlog.png\";}}'),
(265, 75, '_edit_last', '1'),
(266, 80, '_wp_trash_meta_status', 'publish'),
(267, 80, '_wp_trash_meta_time', '1535726021'),
(268, 81, '_wp_trash_meta_status', 'publish'),
(269, 81, '_wp_trash_meta_time', '1535726209');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-29 14:32:36', '2018-08-29 12:32:36', 'Benvenuto in WordPress. Questo è il tuo primo articolo. Modificalo o cancellalo e inizia a creare il tuo blog!', 'Ciao mondo!', '', 'publish', 'open', 'open', '', 'ciao-mondo', '', '', '2018-08-29 17:28:41', '2018-08-29 15:28:41', '', 0, 'http://localhost/ConsciousRebirth/?p=1', 0, 'post', '', 2),
(2, 1, '2018-08-29 14:32:36', '2018-08-29 12:32:36', 'Questa è una pagina di esempio. Differisce da un articolo di blog per rimane in un solo posto ed appare nel menu di navigazione del sito (questo nella maggior parte dei temi). Molte persone iniziano con una pagina di Info che li introduce ai potenziali visitatori del sito. Tale pagina potrebbe contenere un testo del tipo:\r\n<blockquote>Salve! Sono un pony express di giorno, un aspirante attore di notte e questo è il mio blog. Vivo a Los Angeles, ho un gran bel cane di nome Jack e mi piace la piña coladas. (E infradiciarmi sotto la pioggia.)</blockquote>\r\n...o cose di questo genere:\r\n<blockquote>La XYZ Doohickey Company è stata fondata nel 1971, e ha fornito doohickeys di qualità al pubblico fin d\'allora. Si trova a Gotham City, XYZ impiega oltre 2,000 persone e produce ogni genere di cose impressionanti per la comunità di Gotham.</blockquote>\r\nDa nuovo utente WordPress puoi andare sulla <a href=\"http://localhost/ConsciousRebirth/wp-admin/\">tua bacheca</a> per cancellare questa pagina e creare nuove pagine per i tuoi contenuti. Buon divertimento!', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2018-08-29 14:52:57', '2018-08-29 12:52:57', '', 0, 'http://localhost/ConsciousRebirth/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-08-29 14:50:09', '2018-08-29 12:50:09', 'Lorem Ipsum è un testo <strong>segnaposto utilizzato nel settore della tipografia</strong> e della stampa. Lorem Ipsum è considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assemblò per preparare un testo campione. È sopravvissuto non solo a più di cinque secoli, ma anche <strong>al passaggio</strong> alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni ’60, con la diffusione dei fogli di caratteri trasferibili “Letraset”, che contenevano passaggi del Lorem Ipsum, e più recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.', 'Chi sono', '', 'publish', 'closed', 'closed', '', 'chi-sono', '', '', '2018-08-29 14:50:09', '2018-08-29 12:50:09', '', 0, 'http://localhost/ConsciousRebirth/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-08-29 14:50:09', '2018-08-29 12:50:09', 'Lorem Ipsum è un testo <strong>segnaposto utilizzato nel settore della tipografia</strong> e della stampa. Lorem Ipsum è considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assemblò per preparare un testo campione. È sopravvissuto non solo a più di cinque secoli, ma anche <strong>al passaggio</strong> alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni ’60, con la diffusione dei fogli di caratteri trasferibili “Letraset”, che contenevano passaggi del Lorem Ipsum, e più recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.', 'Chi sono', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-08-29 14:50:09', '2018-08-29 12:50:09', '', 4, 'http://localhost/ConsciousRebirth/2018/08/29/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-08-29 14:51:45', '2018-08-29 12:51:45', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2018-08-30 14:42:44', '2018-08-30 12:42:44', '', 0, 'http://localhost/ConsciousRebirth/?p=6', 3, 'nav_menu_item', '', 0),
(7, 1, '2018-08-29 14:52:57', '2018-08-29 12:52:57', 'Questa è una pagina di esempio. Differisce da un articolo di blog per rimane in un solo posto ed appare nel menu di navigazione del sito (questo nella maggior parte dei temi). Molte persone iniziano con una pagina di Info che li introduce ai potenziali visitatori del sito. Tale pagina potrebbe contenere un testo del tipo:\r\n<blockquote>Salve! Sono un pony express di giorno, un aspirante attore di notte e questo è il mio blog. Vivo a Los Angeles, ho un gran bel cane di nome Jack e mi piace la piña coladas. (E infradiciarmi sotto la pioggia.)</blockquote>\r\n...o cose di questo genere:\r\n<blockquote>La XYZ Doohickey Company è stata fondata nel 1971, e ha fornito doohickeys di qualità al pubblico fin d\'allora. Si trova a Gotham City, XYZ impiega oltre 2,000 persone e produce ogni genere di cose impressionanti per la comunità di Gotham.</blockquote>\r\nDa nuovo utente WordPress puoi andare sulla <a href=\"http://localhost/ConsciousRebirth/wp-admin/\">tua bacheca</a> per cancellare questa pagina e creare nuove pagine per i tuoi contenuti. Buon divertimento!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-29 14:52:57', '2018-08-29 12:52:57', '', 2, 'http://localhost/ConsciousRebirth/2018/08/29/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-08-29 14:54:38', '2018-08-29 12:54:38', 'qui lista articoli', 'Articoli', '', 'publish', 'closed', 'closed', '', 'articoli', '', '', '2018-08-29 14:54:38', '2018-08-29 12:54:38', '', 0, 'http://localhost/ConsciousRebirth/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-08-29 14:54:38', '2018-08-29 12:54:38', 'qui lista articoli', 'Articoli', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-29 14:54:38', '2018-08-29 12:54:38', '', 9, 'http://localhost/ConsciousRebirth/2018/08/29/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-08-29 14:55:23', '2018-08-29 12:55:23', 'Ciao! compila questo form ed inserisci il tuo messaggio, ti risponderò quanto prima!.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"56\" title=\"Modulo di contatto 1\"]', 'Contatti', '', 'publish', 'closed', 'closed', '', 'contatti', '', '', '2018-08-30 14:59:56', '2018-08-30 12:59:56', '', 0, 'http://localhost/ConsciousRebirth/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-08-29 14:55:23', '2018-08-29 12:55:23', 'Qui la maschera dei contatti\r\n\r\nDa dove viene?\r\nAl contrario di quanto si pensi, Lorem Ipsum non è semplicemente una sequenza casuale di caratteri. Risale ad un classico della letteratura latina del 45 AC, cosa che lo rende vecchio di 2000 anni. Richard McClintock, professore di latino al Hampden-Sydney College in Virginia, ha ricercato una delle più oscure parole latine, consectetur, da un passaggio del Lorem Ipsum e ha scoperto tra i vari testi in cui è citata, la fonte da cui è tratto il testo, le sezioni 1.10.32 and 1.10.33 del \"de Finibus Bonorum et Malorum\" di Cicerone. Questo testo è un trattato su teorie di etica, molto popolare nel Rinascimento. La prima riga del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", è tratta da un passaggio della sezione 1.10.32.\r\n\r\nIl brano standard del Lorem Ipsum usato sin dal sedicesimo secolo è riprodotto qui di seguito per coloro che fossero interessati. Anche le sezioni 1.10.32 e 1.10.33 del \"de Finibus Bonorum et Malorum\" di Cicerone sono riprodotte nella loro forma originale, accompagnate dalla traduzione inglese del 1914 di H. Rackham.', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-29 14:55:23', '2018-08-29 12:55:23', '', 11, 'http://localhost/ConsciousRebirth/2018/08/29/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-08-29 14:56:12', '2018-08-29 12:56:12', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-08-30 14:42:44', '2018-08-30 12:42:44', '', 0, 'http://localhost/ConsciousRebirth/?p=13', 2, 'nav_menu_item', '', 0),
(15, 1, '2018-08-29 15:03:33', '2018-08-29 13:03:33', 'qui i contenuti...', 'Privacy Policy', '', 'trash', 'closed', 'closed', '', 'privacy-policy__trashed', '', '', '2018-08-29 15:04:45', '2018-08-29 13:04:45', '', 0, 'http://localhost/ConsciousRebirth/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-08-29 15:03:33', '2018-08-29 13:03:33', 'qui i contenuti...', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-29 15:03:33', '2018-08-29 13:03:33', '', 15, 'http://localhost/ConsciousRebirth/2018/08/29/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-08-29 15:04:10', '2018-08-29 13:04:10', '<h2>Chi siamo</h2>\r\nL\'indirizzo del nostro sito web è: http://localhost/ConsciousRebirth.\r\n<h2>Quali dati personali raccogliamo e perché li raccogliamo</h2>\r\n<h3>Commenti</h3>\r\nQuando i visitatori lasciano commenti sul sito, raccogliamo i dati mostrati nel modulo dei commenti oltre all\'indirizzo IP del visitatore e la stringa dello user agent del browser per facilitare il rilevamento dello spam.\r\n\r\nUna stringa anonimizzata creata a partire dal tuo indirizzo email (altrimenti detta hash) può essere fornita al servizio Gravatar per vedere se lo stai usando. La privacy policy del servizio Gravatar è disponibile qui: https://automattic.com/privacy/. Dopo l\'approvazione del tuo commento, la tua immagine del profilo è visibile al pubblico nel contesto del tuo commento.\r\n<h3>Media</h3>\r\nSe carichi immagini sul sito web, dovresti evitare di caricare immagini che includono i dati di posizione incorporati (EXIF GPS). I visitatori del sito web possono scaricare ed estrarre qualsiasi dato sulla posizione dalle immagini sul sito web.\r\n<h3>Modulo di contatto</h3>\r\n<h3>Cookie</h3>\r\nSe lasci un commento sul nostro sito, puoi scegliere di salvare il tuo nome, indirizzo email e sito web nei cookie. Sono usati per la tua comodità in modo che tu non debba inserire nuovamente i tuoi dati quando lasci un altro commento. Questi cookie dureranno per un anno.\r\n\r\nSe hai un account e accedi a questo sito, verrà impostato un cookie temporaneo per determinare se il tuo browser accetta i cookie. Questo cookie non contiene dati personali e viene eliminato quando chiudi il browser.\r\n\r\nQuando effettui l\'accesso, verranno impostati diversi cookie per salvare le tue informazioni di accesso e le tue opzioni di visualizzazione dello schermo. I cookie di accesso durano due giorni mentre i cookie per le opzioni dello schermo durano un anno. Se selezioni \"Ricordami\", il tuo accesso persisterà per due settimane. Se esci dal tuo account, i cookie di accesso verranno rimossi.\r\n\r\nSe modifichi o pubblichi un articolo, un cookie aggiuntivo verrà salvato nel tuo browser. Questo cookie non include dati personali, ma indica semplicemente l\'ID dell\'articolo appena modificato. Scade dopo 1 giorno.\r\n<h3>Contenuto incorporato da altri siti web</h3>\r\nGli articoli su questo sito possono includere contenuti incorporati (ad esempio video, immagini, articoli, ecc.). I contenuti incorporati da altri siti web si comportano esattamente allo stesso modo come se il visitatore avesse visitato l\'altro sito web.\r\n\r\nQuesti siti web possono raccogliere dati su di te, usare cookie, integrare ulteriori tracciamenti di terze parti e monitorare l\'interazione con essi, incluso il tracciamento della tua interazione con il contenuto incorporato se hai un account e sei connesso a quei siti web.\r\n<h3>Analytics</h3>\r\n<h2>Con chi condividiamo i tuoi dati</h2>\r\n<h2>Per quanto tempo conserviamo i tuoi dati</h2>\r\nSe lasci un commento, il commento e i relativi metadati vengono conservati a tempo indeterminato. È così che possiamo riconoscere e approvare automaticamente eventuali commenti successivi invece di tenerli in una coda di moderazione.\r\n\r\nPer gli utenti che si registrano sul nostro sito web (se presenti), memorizziamo anche le informazioni personali che forniscono nel loro profilo utente. Tutti gli utenti possono vedere, modificare o cancellare le loro informazioni personali in qualsiasi momento (eccetto il loro nome utente che non possono cambiare). Gli amministratori del sito web possono anche vedere e modificare queste informazioni.\r\n<h2>Quali diritti hai sui tuoi dati</h2>\r\nSe hai un account su questo sito, o hai lasciato commenti, puoi richiedere di ricevere un file esportato dal sito con i dati personali che abbiamo su di te, compresi i dati che ci hai fornito. Puoi anche richiedere che cancelliamo tutti i dati personali che ti riguardano. Questo non include i dati che siamo obbligati a conservare per scopi amministrativi, legali o di sicurezza.\r\n<h2>Dove spediamo i tuoi dati</h2>\r\nI commenti dei visitatori possono essere controllati attraverso un servizio di rilevamento automatico dello spam.\r\n<h2>Le tue informazioni di contatto</h2>\r\n<h2>Informazioni aggiuntive</h2>\r\n<h3>Come proteggiamo i tuoi dati</h3>\r\n<h3>Quali procedure abbiamo predisposto per prevenire la violazione dei dati</h3>\r\n<h3>Da quali terze parti riceviamo dati</h3>\r\n<h3>Quale processo decisionale automatizzato e/o profilazione facciamo con i dati dell\'utente</h3>\r\n<h3>Requisiti di informativa normativa del settore</h3>', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2018-08-29 17:12:04', '2018-08-29 15:12:04', '', 0, 'http://localhost/ConsciousRebirth/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-08-29 15:04:10', '2018-08-29 13:04:10', '<h2>Chi siamo</h2>\r\nL\'indirizzo del nostro sito web è: http://localhost/ConsciousRebirth.\r\n<h2>Quali dati personali raccogliamo e perché li raccogliamo</h2>\r\n<h3>Commenti</h3>\r\nQuando i visitatori lasciano commenti sul sito, raccogliamo i dati mostrati nel modulo dei commenti oltre all\'indirizzo IP del visitatore e la stringa dello user agent del browser per facilitare il rilevamento dello spam.\r\n\r\nUna stringa anonimizzata creata a partire dal tuo indirizzo email (altrimenti detta hash) può essere fornita al servizio Gravatar per vedere se lo stai usando. La privacy policy del servizio Gravatar è disponibile qui: https://automattic.com/privacy/. Dopo l\'approvazione del tuo commento, la tua immagine del profilo è visibile al pubblico nel contesto del tuo commento.\r\n<h3>Media</h3>\r\nSe carichi immagini sul sito web, dovresti evitare di caricare immagini che includono i dati di posizione incorporati (EXIF GPS). I visitatori del sito web possono scaricare ed estrarre qualsiasi dato sulla posizione dalle immagini sul sito web.\r\n<h3>Modulo di contatto</h3>\r\n<h3>Cookie</h3>\r\nSe lasci un commento sul nostro sito, puoi scegliere di salvare il tuo nome, indirizzo email e sito web nei cookie. Sono usati per la tua comodità in modo che tu non debba inserire nuovamente i tuoi dati quando lasci un altro commento. Questi cookie dureranno per un anno.\r\n\r\nSe hai un account e accedi a questo sito, verrà impostato un cookie temporaneo per determinare se il tuo browser accetta i cookie. Questo cookie non contiene dati personali e viene eliminato quando chiudi il browser.\r\n\r\nQuando effettui l\'accesso, verranno impostati diversi cookie per salvare le tue informazioni di accesso e le tue opzioni di visualizzazione dello schermo. I cookie di accesso durano due giorni mentre i cookie per le opzioni dello schermo durano un anno. Se selezioni \"Ricordami\", il tuo accesso persisterà per due settimane. Se esci dal tuo account, i cookie di accesso verranno rimossi.\r\n\r\nSe modifichi o pubblichi un articolo, un cookie aggiuntivo verrà salvato nel tuo browser. Questo cookie non include dati personali, ma indica semplicemente l\'ID dell\'articolo appena modificato. Scade dopo 1 giorno.\r\n<h3>Contenuto incorporato da altri siti web</h3>\r\nGli articoli su questo sito possono includere contenuti incorporati (ad esempio video, immagini, articoli, ecc.). I contenuti incorporati da altri siti web si comportano esattamente allo stesso modo come se il visitatore avesse visitato l\'altro sito web.\r\n\r\nQuesti siti web possono raccogliere dati su di te, usare cookie, integrare ulteriori tracciamenti di terze parti e monitorare l\'interazione con essi, incluso il tracciamento della tua interazione con il contenuto incorporato se hai un account e sei connesso a quei siti web.\r\n<h3>Analytics</h3>\r\n<h2>Con chi condividiamo i tuoi dati</h2>\r\n<h2>Per quanto tempo conserviamo i tuoi dati</h2>\r\nSe lasci un commento, il commento e i relativi metadati vengono conservati a tempo indeterminato. È così che possiamo riconoscere e approvare automaticamente eventuali commenti successivi invece di tenerli in una coda di moderazione.\r\n\r\nPer gli utenti che si registrano sul nostro sito web (se presenti), memorizziamo anche le informazioni personali che forniscono nel loro profilo utente. Tutti gli utenti possono vedere, modificare o cancellare le loro informazioni personali in qualsiasi momento (eccetto il loro nome utente che non possono cambiare). Gli amministratori del sito web possono anche vedere e modificare queste informazioni.\r\n<h2>Quali diritti hai sui tuoi dati</h2>\r\nSe hai un account su questo sito, o hai lasciato commenti, puoi richiedere di ricevere un file esportato dal sito con i dati personali che abbiamo su di te, compresi i dati che ci hai fornito. Puoi anche richiedere che cancelliamo tutti i dati personali che ti riguardano. Questo non include i dati che siamo obbligati a conservare per scopi amministrativi, legali o di sicurezza.\r\n<h2>Dove spediamo i tuoi dati</h2>\r\nI commenti dei visitatori possono essere controllati attraverso un servizio di rilevamento automatico dello spam.\r\n<h2>Le tue informazioni di contatto</h2>\r\n<h2>Informazioni aggiuntive</h2>\r\n<h3>Come proteggiamo i tuoi dati</h3>\r\n<h3>Quali procedure abbiamo predisposto per prevenire la violazione dei dati</h3>\r\n<h3>Da quali terze parti riceviamo dati</h3>\r\n<h3>Quale processo decisionale automatizzato e/o profilazione facciamo con i dati dell\'utente</h3>\r\n<h3>Requisiti di informativa normativa del settore</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-29 15:04:10', '2018-08-29 13:04:10', '', 17, 'http://localhost/ConsciousRebirth/2018/08/29/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-08-29 15:38:47', '2018-08-29 13:38:47', '{\n    \"twentythirteen::header_image\": {\n        \"value\": \"http://localhost/ConsciousRebirth/wp-content/themes/twentythirteen/images/headers/star.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:35:45\"\n    },\n    \"twentythirteen::header_image_data\": {\n        \"value\": \"star\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:35:45\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"custom_html-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:38:14\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjQyOiJDb25zY2lvdXMgcmViaXJ0aCAtIChjKSBMdWNhIFNjaGlhdm9uIDIwMTgiO3M6NzoiY29udGVudCI7czowOiIiO30=\",\n            \"title\": \"Conscious rebirth - (c) Luca Schiavon 2018\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ca2402c7175a03476abd5707c87827a6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:38:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85573601-5346-4e7b-9412-6a89e85ba5f4', '', '', '2018-08-29 15:38:47', '2018-08-29 13:38:47', '', 0, 'http://localhost/ConsciousRebirth/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2018-08-29 15:42:04', '2018-08-29 13:42:04', '{\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjc4OiI8ZGl2IHN0eWxlPSJ3aWR0aDo1MDBweCI+DQoJQ29uc2Npb3VzIHJlYmlydGggLSAoYykgTHVjYSBTY2hpYXZvbiAyMDE4DQo8L2Rpdj4iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ad201344597d0c4a90e02890e9e5e042\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:42:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '50e17b49-8121-47a9-9eba-efb9868acf3a', '', '', '2018-08-29 15:42:04', '2018-08-29 13:42:04', '', 0, 'http://localhost/ConsciousRebirth/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2018-08-29 15:47:46', '0000-00-00 00:00:00', '{\n    \"twentythirteen::header_textcolor\": {\n        \"value\": \"#220e10\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:46:58\"\n    },\n    \"twentythirteen::header_image\": {\n        \"value\": \"http://localhost/ConsciousRebirth/wp-content/themes/twentythirteen/images/headers/star.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:47:46\"\n    },\n    \"twentythirteen::header_image_data\": {\n        \"value\": \"star\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:47:46\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '529d92b5-4ae1-47bb-bb2f-648e3fbb293d', '', '', '2018-08-29 15:47:46', '2018-08-29 13:47:46', '', 0, 'http://localhost/ConsciousRebirth/?p=21', 0, 'customize_changeset', '', 0),
(23, 1, '2018-08-29 15:50:33', '2018-08-29 13:50:33', '', 'cropped-download.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download-jpg', '', '', '2018-08-29 15:50:33', '2018-08-29 13:50:33', '', 0, 'http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/cropped-download.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-08-29 15:50:48', '2018-08-29 13:50:48', '{\n    \"twentysixteen::header_image\": {\n        \"value\": \"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/cropped-download.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:50:40\"\n    },\n    \"twentysixteen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/cropped-download.jpg\",\n            \"thumbnail_url\": \"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/cropped-download.jpg\",\n            \"timestamp\": 1535550633260,\n            \"attachment_id\": 23,\n            \"width\": 1200,\n            \"height\": 282\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:50:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed972af7-9eaa-42d1-8fdd-056fd4fe29cd', '', '', '2018-08-29 15:50:48', '2018-08-29 13:50:48', '', 0, 'http://localhost/ConsciousRebirth/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2018-08-29 15:52:12', '2018-08-29 13:52:12', '{\n    \"twentysixteen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:52:12\"\n    },\n    \"twentysixteen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:52:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '04e00023-2b04-48de-be9f-652e4c6fe4ce', '', '', '2018-08-29 15:52:12', '2018-08-29 13:52:12', '', 0, 'http://localhost/ConsciousRebirth/2018/08/29/04e00023-2b04-48de-be9f-652e4c6fe4ce/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-08-29 15:56:35', '2018-08-29 13:56:35', '{\n    \"twentysixteen::background_image\": {\n        \"value\": \"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/download.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:56:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ead421dc-cce2-4a2e-a450-2827a51ed804', '', '', '2018-08-29 15:56:35', '2018-08-29 13:56:35', '', 0, 'http://localhost/ConsciousRebirth/2018/08/29/ead421dc-cce2-4a2e-a450-2827a51ed804/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-08-29 15:57:23', '2018-08-29 13:57:23', '{\n    \"twentysixteen::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:57:23\"\n    },\n    \"twentysixteen::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:57:23\"\n    },\n    \"twentysixteen::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:57:23\"\n    },\n    \"twentysixteen::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:57:23\"\n    },\n    \"twentysixteen::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:57:23\"\n    },\n    \"twentysixteen::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:57:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '576def98-65de-47c1-abec-d1120b557ed2', '', '', '2018-08-29 15:57:23', '2018-08-29 13:57:23', '', 0, 'http://localhost/ConsciousRebirth/2018/08/29/576def98-65de-47c1-abec-d1120b557ed2/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-08-29 15:59:35', '2018-08-29 13:59:35', '{\n    \"twentysixteen::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 13:59:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '599b9c06-80d2-4205-a362-0d1d4376d63c', '', '', '2018-08-29 15:59:35', '2018-08-29 13:59:35', '', 0, 'http://localhost/ConsciousRebirth/2018/08/29/599b9c06-80d2-4205-a362-0d1d4376d63c/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-08-29 16:04:00', '2018-08-29 14:04:00', '', 'polylang_mo_3', '', 'private', 'closed', 'closed', '', 'polylang_mo_3', '', '', '2018-08-29 16:04:00', '2018-08-29 14:04:00', '', 0, 'http://localhost/ConsciousRebirth/?post_type=polylang_mo&p=29', 0, 'polylang_mo', '', 0),
(30, 1, '2018-08-29 16:04:32', '2018-08-29 14:04:32', '', 'polylang_mo_6', '', 'private', 'closed', 'closed', '', 'polylang_mo_6', '', '', '2018-08-29 16:04:32', '2018-08-29 14:04:32', '', 0, 'http://localhost/ConsciousRebirth/?post_type=polylang_mo&p=30', 0, 'polylang_mo', '', 0),
(31, 1, '2018-08-29 16:08:12', '2018-08-29 14:08:12', 'here content...', 'Articles', '', 'publish', 'closed', 'closed', '', 'articles', '', '', '2018-08-29 16:10:06', '2018-08-29 14:10:06', '', 0, 'http://localhost/ConsciousRebirth/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-08-29 16:08:12', '2018-08-29 14:08:12', 'here content...', 'Articles', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-29 16:08:12', '2018-08-29 14:08:12', '', 31, 'http://localhost/ConsciousRebirth/2018/08/29/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-08-29 16:12:15', '2018-08-29 14:12:15', 'some content', 'About me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2018-08-29 16:12:15', '2018-08-29 14:12:15', '', 0, 'http://localhost/ConsciousRebirth/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-08-29 16:12:15', '2018-08-29 14:12:15', 'some content', 'About me', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-08-29 16:12:15', '2018-08-29 14:12:15', '', 33, 'http://localhost/ConsciousRebirth/2018/08/29/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-29 16:14:54', '2018-08-29 14:14:54', '', 'Selettore di lingua', '', 'publish', 'closed', 'closed', '', 'selettore-di-lingua', '', '', '2018-08-30 14:42:44', '2018-08-30 12:42:44', '', 0, 'http://localhost/ConsciousRebirth/?p=35', 4, 'nav_menu_item', '', 0),
(41, 1, '2018-08-29 16:20:40', '2018-08-29 14:20:40', 'Hello! fill out this form and enter your message, I will reply as soon as possible !.\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"65\" title=\"Modulo di contatto 1_en\"]\r\n\r\n&nbsp;', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-08-30 15:00:58', '2018-08-30 13:00:58', '', 0, 'http://localhost/ConsciousRebirth/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-08-29 16:20:40', '2018-08-29 14:20:40', 'contenuti', 'Contact', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-29 16:20:40', '2018-08-29 14:20:40', '', 41, 'http://localhost/ConsciousRebirth/2018/08/29/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-29 16:21:19', '2018-08-29 14:21:19', 'contenuti', 'Contacts', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-29 16:21:19', '2018-08-29 14:21:19', '', 41, 'http://localhost/ConsciousRebirth/2018/08/29/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-08-29 16:21:39', '2018-08-29 14:21:39', 'contents of contact', 'Contacts', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-29 16:21:39', '2018-08-29 14:21:39', '', 41, 'http://localhost/ConsciousRebirth/2018/08/29/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-08-29 16:46:08', '2018-08-29 14:46:08', 'english', 'Home', '', 'publish', 'closed', 'open', '', 'home-2', '', '', '2018-08-29 16:46:08', '2018-08-29 14:46:08', '', 0, 'http://localhost/ConsciousRebirth/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-08-29 16:46:08', '2018-08-29 14:46:08', 'english', 'Home', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-08-29 16:46:08', '2018-08-29 14:46:08', '', 45, 'http://localhost/ConsciousRebirth/2018/08/29/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-08-29 16:55:27', '2018-08-29 14:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-08-30 14:42:29', '2018-08-30 12:42:29', '', 0, 'http://localhost/ConsciousRebirth/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2018-08-29 16:55:27', '2018-08-29 14:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-08-30 14:42:29', '2018-08-30 12:42:29', '', 0, 'http://localhost/ConsciousRebirth/?p=49', 3, 'nav_menu_item', '', 0),
(51, 1, '2018-08-29 16:55:27', '2018-08-29 14:55:27', '', 'Selettore di lingua', '', 'publish', 'closed', 'closed', '', 'selettore-di-lingua-3', '', '', '2018-08-30 14:42:29', '2018-08-30 12:42:29', '', 0, 'http://localhost/ConsciousRebirth/?p=51', 4, 'nav_menu_item', '', 0),
(52, 1, '2018-08-29 17:17:01', '2018-08-29 15:17:01', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-29 15:17:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7d6c9a7-3cb8-437c-8680-50a8fc4a4087', '', '', '2018-08-29 17:17:01', '2018-08-29 15:17:01', '', 0, 'http://localhost/ConsciousRebirth/2018/08/29/c7d6c9a7-3cb8-437c-8680-50a8fc4a4087/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-08-29 17:28:41', '2018-08-29 15:28:41', 'Benvenuto in WordPress. Questo è il tuo primo articolo. Modificalo o cancellalo e inizia a creare il tuo blog!', 'Ciao mondo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-29 17:28:41', '2018-08-29 15:28:41', '', 1, 'http://localhost/ConsciousRebirth/2018/08/29/1-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-08-29 17:38:20', '2018-08-29 15:38:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-30 14:42:44', '2018-08-30 12:42:44', '', 0, 'http://localhost/ConsciousRebirth/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2018-08-29 17:41:03', '2018-08-29 15:41:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-08-30 14:42:29', '2018-08-30 12:42:29', '', 0, 'http://localhost/ConsciousRebirth/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-08-29 17:48:11', '2018-08-29 15:48:11', '<label> Il tuo nome (richiesto)\r\n    [text* your-name] </label>\r\n\r\n<label> La tua email (richiesto)\r\n    [email* your-email] </label>\r\n\r\n<label> Oggetto\r\n    [text your-subject] </label>\r\n\r\n<label> Il tuo messaggio\r\n    [textarea your-message] </label>\r\n\r\n<label>[acceptance accept-this-1] Clicca qui per consentire a questo sito di memorizzare i miei dati affinchè sia possibile rispondere.[/acceptance]</label>\r\n\r\n[submit \"Invia\"]\n1\nConscious Rebirth \"[your-subject]\"\n[your-name] <luca.schiavon@alice.it>\nluca.schiavon@alice.it\nDa: [your-name] <[your-email]>\r\nOggetto: [your-subject]\r\n\r\nCorpo del messaggio:\r\n[your-message]\r\n\r\n-- \r\nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\nReply-To: [your-email]\n\n\n\n\nConscious Rebirth \"[your-subject]\"\nConscious Rebirth <luca.schiavon@alice.it>\n[your-email]\nCorpo del messaggio:\r\n[your-message]\r\n\r\n-- \r\nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\nReply-To: luca.schiavon@alice.it\n\n\n\nGrazie per il tuo messaggio. È stato inviato.\nSi è verificato un errore durante l\'invio del tuo messaggio. Per favore prova di nuovo.\nUno o più campi hanno errori. Per favore controlla e prova di nuovo.\nSi è verificato un errore durante l\'invio del tuo messaggio. Per favore prova di nuovo.\nDevi accettare termini e condizioni prima di inviare il tuo messaggio.\nIl campo è richiesto.\nIl campo è troppo lungo.\nIl campo è troppo corto.\nIl formato della data non è corretto.\nLa data è antecedente alla prima data consentita.\nLa data è successiva all\'ultima data consentita.\nSi è verificato un errore sconosciuto durante il caricamento del file.\nNon sei abilitato al caricamenti di file di questo tipo.\nIl file è troppo grande.\nSi è verificato un errore nel caricare il file.\nIl formato numerico non è valido.\nIl numero è inferiore al minimo consentito.\nIl numero è superiore al massimo consentito.\nLa risposta al quiz non è corretta.\nIl codice che hai inserito non è valido.\nL\'indirizzo e-mail inserito non è valido.\nL\'URL non è valido.\nIl numero di telefono non è valido.', 'Modulo di contatto 1', '', 'publish', 'closed', 'closed', '', 'modulo-di-contatto-1', '', '', '2018-08-29 18:00:26', '2018-08-29 16:00:26', '', 0, 'http://localhost/ConsciousRebirth/?post_type=wpcf7_contact_form&#038;p=56', 0, 'wpcf7_contact_form', '', 0),
(57, 1, '2018-08-29 17:49:42', '2018-08-29 15:49:42', 'Qui la maschera dei contatti\r\n\r\n[contact-form-7 id=\"56\" title=\"Modulo di contatto 1\"]\r\n\r\nDa dove viene?\r\nAl contrario di quanto si pensi, Lorem Ipsum non è semplicemente una sequenza casuale di caratteri. Risale ad un classico della letteratura latina del 45 AC, cosa che lo rende vecchio di 2000 anni. Richard McClintock, professore di latino al Hampden-Sydney College in Virginia, ha ricercato una delle più oscure parole latine, consectetur, da un passaggio del Lorem Ipsum e ha scoperto tra i vari testi in cui è citata, la fonte da cui è tratto il testo, le sezioni 1.10.32 and 1.10.33 del \"de Finibus Bonorum et Malorum\" di Cicerone. Questo testo è un trattato su teorie di etica, molto popolare nel Rinascimento. La prima riga del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", è tratta da un passaggio della sezione 1.10.32.\r\n\r\nIl brano standard del Lorem Ipsum usato sin dal sedicesimo secolo è riprodotto qui di seguito per coloro che fossero interessati. Anche le sezioni 1.10.32 e 1.10.33 del \"de Finibus Bonorum et Malorum\" di Cicerone sono riprodotte nella loro forma originale, accompagnate dalla traduzione inglese del 1914 di H. Rackham.', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-29 17:49:42', '2018-08-29 15:49:42', '', 11, 'http://localhost/ConsciousRebirth/2018/08/29/11-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-08-29 18:02:51', '2018-08-29 16:02:51', 'Ciao! compila questo form ed inserisci il tuo messaggio, ti risponderò quanto prima!.\r\n\r\n[contact-form-7 id=\"56\" title=\"Modulo di contatto 1\"]\r\n\r\nDa dove viene?\r\nAl contrario di quanto si pensi, Lorem Ipsum non è semplicemente una sequenza casuale di caratteri. Risale ad un classico della letteratura latina del 45 AC, cosa che lo rende vecchio di 2000 anni. Richard McClintock, professore di latino al Hampden-Sydney College in Virginia, ha ricercato una delle più oscure parole latine, consectetur, da un passaggio del Lorem Ipsum e ha scoperto tra i vari testi in cui è citata, la fonte da cui è tratto il testo, le sezioni 1.10.32 and 1.10.33 del \"de Finibus Bonorum et Malorum\" di Cicerone. Questo testo è un trattato su teorie di etica, molto popolare nel Rinascimento. La prima riga del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", è tratta da un passaggio della sezione 1.10.32.\r\n\r\nIl brano standard del Lorem Ipsum usato sin dal sedicesimo secolo è riprodotto qui di seguito per coloro che fossero interessati. Anche le sezioni 1.10.32 e 1.10.33 del \"de Finibus Bonorum et Malorum\" di Cicerone sono riprodotte nella loro forma originale, accompagnate dalla traduzione inglese del 1914 di H. Rackham.', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-29 18:02:51', '2018-08-29 16:02:51', '', 11, 'http://localhost/ConsciousRebirth/2018/08/29/11-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-29 18:03:04', '2018-08-29 16:03:04', 'Ciao! compila questo form ed inserisci il tuo messaggio, ti risponderò quanto prima!.\r\n\r\n[contact-form-7 id=\"56\" title=\"Modulo di contatto 1\"]', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-29 18:03:04', '2018-08-29 16:03:04', '', 11, 'http://localhost/ConsciousRebirth/2018/08/29/11-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-29 18:03:31', '2018-08-29 16:03:31', 'Ciao! compila questo form ed inserisci il tuo messaggio, ti risponderò quanto prima!.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"56\" title=\"Modulo di contatto 1\"]', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-29 18:03:31', '2018-08-29 16:03:31', '', 11, 'http://localhost/ConsciousRebirth/2018/08/29/11-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-30 14:36:40', '2018-08-30 12:36:40', 'questo è il contenuto del secondo articolo ma non è in evidenza', 'secondo articolo', '', 'publish', 'open', 'open', '', 'secondo-articolo', '', '', '2018-08-30 14:41:15', '2018-08-30 12:41:15', '', 0, 'http://localhost/ConsciousRebirth/?p=61', 0, 'post', '', 0),
(62, 1, '2018-08-30 14:36:40', '2018-08-30 12:36:40', 'questo è il contenuto del secondo articolo ma non è in evidenza', 'secondo articolo', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-30 14:36:40', '2018-08-30 12:36:40', '', 61, 'http://localhost/ConsciousRebirth/2018/08/30/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-08-30 14:40:48', '2018-08-30 12:40:48', 'altro articolo non in evidenza', 'terzo articolo', '', 'publish', 'open', 'open', '', 'terzo-articolo', '', '', '2018-08-30 14:40:48', '2018-08-30 12:40:48', '', 0, 'http://localhost/ConsciousRebirth/?p=63', 0, 'post', '', 0),
(64, 1, '2018-08-30 14:40:48', '2018-08-30 12:40:48', 'altro articolo non in evidenza', 'terzo articolo', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-08-30 14:40:48', '2018-08-30 12:40:48', '', 63, 'http://localhost/ConsciousRebirth/2018/08/30/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-08-30 14:50:19', '2018-08-30 12:50:19', '<label> Your name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your message\r\n    [textarea your-message] </label>\r\n\r\n<label>[acceptance accept-this-1] Click here to allow this site to store my data so that it is possible to reply.\r\n[/acceptance]</label>\r\n\r\n[submit \"Send\"]\n1\nConscious Rebirth \"[your-subject]\"\n[your-name] <luca.schiavon@alice.it>\nluca.schiavon@alice.it\nDa: [your-name] <[your-email]>\r\nOggetto: [your-subject]\r\n\r\nCorpo del messaggio:\r\n[your-message]\r\n\r\n-- \r\nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\nReply-To: [your-email]\n\n\n\n\nConscious Rebirth \"[your-subject]\"\nConscious Rebirth <luca.schiavon@alice.it>\n[your-email]\nCorpo del messaggio:\r\n[your-message]\r\n\r\n-- \r\nQuesta e-mail è stata inviata da un modulo di contatto su Conscious Rebirth (http://localhost/ConsciousRebirth)\nReply-To: luca.schiavon@alice.it\n\n\n\nThanks for the message, It was sent.\nThere was an error sending your message. Please try again.\nOne or more fields have errors. Please check and try again.\nThere was an error sending your message. Please try again.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is not correct.\nThe date is before the first allowed date.\nThe date is after the last allowed date.\nAn unknown error occurred while loading the file.\nYou are not authorized to upload files of this type.\nThe file is too big.\nThere was an error loading the file.\nThe numeric format is not valid.\nThe number is less than the minimum allowed.\nThe number is greater than the maximum allowed.\nThe answer to the quiz is not correct.\nIl codice che hai inserito non è valido.\nThe entered e-mail address is not valid.\nURL is not valid.\nThe telephone number is not valid.', 'Modulo di contatto 1_en', '', 'publish', 'closed', 'closed', '', 'modulo-di-contatto-1_copy', '', '', '2018-08-30 15:07:24', '2018-08-30 13:07:24', '', 0, 'http://localhost/ConsciousRebirth/?post_type=wpcf7_contact_form&#038;p=65', 0, 'wpcf7_contact_form', '', 0),
(66, 1, '2018-08-30 14:59:24', '2018-08-30 12:59:24', 'Ciao! compila questo form ed inserisci il tuo messaggio, ti risponderò quanto prima!.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"65\" title=\"Modulo di contatto 1_en\"]', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-30 14:59:24', '2018-08-30 12:59:24', '', 11, 'http://localhost/ConsciousRebirth/2018/08/30/11-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-08-30 14:59:56', '2018-08-30 12:59:56', 'Ciao! compila questo form ed inserisci il tuo messaggio, ti risponderò quanto prima!.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"56\" title=\"Modulo di contatto 1\"]', 'Contatti', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-30 14:59:56', '2018-08-30 12:59:56', '', 11, 'http://localhost/ConsciousRebirth/2018/08/30/11-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-08-30 15:00:58', '2018-08-30 13:00:58', 'Hello! fill out this form and enter your message, I will reply as soon as possible !.\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"65\" title=\"Modulo di contatto 1_en\"]\r\n\r\n&nbsp;', 'Contacts', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-30 15:00:58', '2018-08-30 13:00:58', '', 41, 'http://localhost/ConsciousRebirth/2018/08/30/41-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-08-30 15:12:08', '2018-08-30 13:12:08', '{\n    \"blogdescription\": {\n        \"value\": \" Get aware Plan and act !!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-30 13:12:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2d56ab85-b40d-4cd7-9ade-2464131e9431', '', '', '2018-08-30 15:12:08', '2018-08-30 13:12:08', '', 0, 'http://localhost/ConsciousRebirth/2018/08/30/2d56ab85-b40d-4cd7-9ade-2464131e9431/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-08-30 16:15:23', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-30 14:15:23\"\n    },\n    \"widget_media_audio[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-30 14:15:23\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-30 14:15:23\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2cdfde80-bac8-4228-a65c-bec1a2067dd9', '', '', '2018-08-30 16:15:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/ConsciousRebirth/?p=70', 0, 'customize_changeset', '', 0),
(72, 1, '2018-08-30 17:33:07', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-30 17:33:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/ConsciousRebirth/?p=72', 0, 'post', '', 0),
(73, 1, '2018-08-31 15:24:34', '2018-08-31 13:24:34', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-31 13:24:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59e5ef93-57c3-4059-9f21-b311691e286c', '', '', '2018-08-31 15:24:34', '2018-08-31 13:24:34', '', 0, 'http://localhost/ConsciousRebirth/2018/08/31/59e5ef93-57c3-4059-9f21-b311691e286c/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-08-31 15:32:31', '2018-08-31 13:32:31', '', 'sfondo', '', 'inherit', 'open', 'closed', '', 'fsondo', '', '', '2018-08-31 15:37:34', '2018-08-31 13:37:34', '', 0, 'http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/fsondo.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-08-31 15:32:38', '2018-08-31 13:32:38', '', 'LogoBlog', '', 'inherit', 'open', 'closed', '', 'logoblog', '', '', '2018-08-31 16:32:43', '2018-08-31 14:32:43', '', 0, 'http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/LogoBlog.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2018-08-31 15:32:50', '2018-08-31 13:32:50', '{\n    \"twentysixteen::background_image\": {\n        \"value\": \"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/fsondo.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-31 13:32:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e66284a3-8424-4f2a-8791-e532f8237011', '', '', '2018-08-31 15:32:50', '2018-08-31 13:32:50', '', 0, 'http://localhost/ConsciousRebirth/2018/08/31/e66284a3-8424-4f2a-8791-e532f8237011/', 0, 'customize_changeset', '', 0),
(77, 1, '2018-08-31 15:41:26', '2018-08-31 13:41:26', '{\n    \"twentysixteen::background_image\": {\n        \"value\": \"http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/fsondo-e1535722792857.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-31 13:41:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3c27e908-02e9-4b0b-8c7f-f9722daea53b', '', '', '2018-08-31 15:41:26', '2018-08-31 13:41:26', '', 0, 'http://localhost/ConsciousRebirth/2018/08/31/3c27e908-02e9-4b0b-8c7f-f9722daea53b/', 0, 'customize_changeset', '', 0),
(78, 1, '2018-08-31 16:31:16', '2018-08-31 14:31:16', 'http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/cropped-LogoBlog.png', 'cropped-LogoBlog.png', '', 'inherit', 'open', 'closed', '', 'cropped-logoblog-png', '', '', '2018-08-31 16:31:16', '2018-08-31 14:31:16', '', 0, 'http://localhost/ConsciousRebirth/wp-content/uploads/2018/08/cropped-LogoBlog.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2018-08-31 16:31:25', '2018-08-31 14:31:25', '{\n    \"twentysixteen::custom_logo\": {\n        \"value\": 78,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-31 14:31:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a43ce31-6fe9-438d-8b92-801e476f69dc', '', '', '2018-08-31 16:31:25', '2018-08-31 14:31:25', '', 0, 'http://localhost/ConsciousRebirth/2018/08/31/4a43ce31-6fe9-438d-8b92-801e476f69dc/', 0, 'customize_changeset', '', 0),
(80, 1, '2018-08-31 16:33:41', '2018-08-31 14:33:41', '{\n    \"twentysixteen::custom_logo\": {\n        \"value\": 75,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-31 14:33:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa76b7f6-5b8a-4a03-934d-1e28dd11e17d', '', '', '2018-08-31 16:33:41', '2018-08-31 14:33:41', '', 0, 'http://localhost/ConsciousRebirth/2018/08/31/aa76b7f6-5b8a-4a03-934d-1e28dd11e17d/', 0, 'customize_changeset', '', 0),
(81, 1, '2018-08-31 16:36:49', '2018-08-31 14:36:49', '{\n    \"twentysixteen::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-31 14:36:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0b39d901-359f-4ea3-b0ec-d7a8a6eb9396', '', '', '2018-08-31 16:36:49', '2018-08-31 14:36:49', '', 0, 'http://localhost/ConsciousRebirth/2018/08/31/0b39d901-359f-4ea3-b0ec-d7a8a6eb9396/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Conscious rebirth', 'conscious-rebirth', 0),
(2, 'Menu it', 'menu-it', 0),
(3, 'Italiano', 'it', 0),
(4, 'Italiano', 'pll_it', 0),
(5, 'pll_5b86a7d0c9673', 'pll_5b86a7d0c9673', 0),
(6, 'English', 'en', 0),
(7, 'English', 'pll_en', 0),
(8, 'Senza categoria', 'senza-categoria-en', 0),
(10, 'pll_5b86a8ccb9297', 'pll_5b86a8ccb9297', 0),
(11, 'pll_5b86a9bf78e9a', 'pll_5b86a9bf78e9a', 0),
(12, 'Menu en', 'menu-en', 0),
(13, 'pll_5b86abb824395', 'pll_5b86abb824395', 0),
(14, 'pll_5b86b1b0e40cc', 'pll_5b86b1b0e40cc', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 3, 0),
(2, 14, 0),
(4, 3, 0),
(4, 11, 0),
(6, 2, 0),
(8, 5, 0),
(8, 7, 0),
(9, 3, 0),
(9, 10, 0),
(11, 3, 0),
(11, 13, 0),
(13, 2, 0),
(17, 3, 0),
(23, 3, 0),
(31, 6, 0),
(31, 10, 0),
(33, 6, 0),
(33, 11, 0),
(35, 2, 0),
(41, 6, 0),
(41, 13, 0),
(45, 6, 0),
(45, 14, 0),
(48, 12, 0),
(49, 12, 0),
(51, 12, 0),
(54, 2, 0),
(55, 12, 0),
(61, 1, 0),
(61, 3, 0),
(63, 1, 0),
(63, 3, 0),
(72, 3, 0),
(74, 3, 0),
(75, 3, 0),
(78, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'language', 'a:3:{s:6:\"locale\";s:5:\"it_IT\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"it\";}', 0, 8),
(4, 4, 'term_language', '', 0, 1),
(5, 5, 'term_translations', 'a:2:{s:2:\"it\";i:1;s:2:\"en\";i:8;}', 0, 2),
(6, 6, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}', 0, 4),
(7, 7, 'term_language', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(10, 10, 'post_translations', 'a:2:{s:2:\"en\";i:31;s:2:\"it\";i:9;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:\"en\";i:33;s:2:\"it\";i:4;}', 0, 2),
(12, 12, 'nav_menu', '', 0, 4),
(13, 13, 'post_translations', 'a:2:{s:2:\"en\";i:41;s:2:\"it\";i:11;}', 0, 2),
(14, 14, 'post_translations', 'a:2:{s:2:\"en\";i:45;s:2:\"it\";i:2;}', 0, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'luca'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '72'),
(16, 1, 'closedpostboxes_page', 'a:0:{}'),
(17, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1535550701'),
(23, 1, 'pll_filter_content', ''),
(24, 1, 'session_tokens', 'a:5:{s:64:\"1d3d3f467361a798bdad52521c0ac20107b69c1c17a2ee4a388a9674137e4729\";a:4:{s:10:\"expiration\";i:1535730214;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535557414;}s:64:\"1d2ed82289ec4b1365e02655eb62990b5024ec5c53f7492e6cc474ac53849a8f\";a:4:{s:10:\"expiration\";i:1535808321;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535635521;}s:64:\"d8f8351e69a26b1a899d86a83c8a1e93c9afa4440438bb214023dfdce259a663\";a:4:{s:10:\"expiration\";i:1535810067;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535637267;}s:64:\"def2f86f7c2fc076f7da7d39adf45941ef5be3abc4021601e0a92b1db5beeda0\";a:4:{s:10:\"expiration\";i:1535898341;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535725541;}s:64:\"1a91cfabf43da5cde22ea92fc45305c672ddfc2302f773775c9375e847070bef\";a:4:{s:10:\"expiration\";i:1535900815;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535728015;}}'),
(25, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(26, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}'),
(27, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'luca', '$P$B4lLhNqLcHJC6lyYyx7xFh60KsLZuj.', 'luca', 'luca.schiavon@alice.it', '', '2018-08-29 12:32:36', '', 0, 'luca');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indici per le tabelle `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indici per le tabelle `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indici per le tabelle `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indici per le tabelle `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indici per le tabelle `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indici per le tabelle `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indici per le tabelle `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT per la tabella `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT per la tabella `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT per la tabella `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
