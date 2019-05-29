-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 29, 2019 lúc 04:18 PM
-- Phiên bản máy phục vụ: 5.7.26-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.1.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pomm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
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
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://pomm.com', 'yes'),
(4, 'home', 'http://pomm.com', 'yes'),
(5, 'blogname', 'Pomm and friends', 'yes'),
(6, 'blogdescription', 'Family big', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'admin@wpextra.me', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '', 'yes'),
(13, 'comments_notify', '', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'closed', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '1', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'F j, Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"duplicate-post/duplicate-post.php\";}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'comment_max_links', '2', 'yes'),
(39, 'gmt_offset', '0', 'yes'),
(40, 'default_email_category', '1', 'yes'),
(41, 'recently_edited', 'a:3:{i:0;s:80:\"/var/www/html/KIN-DEV/pomm/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:2;s:72:\"/var/www/html/KIN-DEV/pomm/wp-content/themes/pomm-theme/editor-style.css\";i:3;s:0:\"\";}', 'no'),
(42, 'template', 'pomm-theme', 'yes'),
(43, 'stylesheet', 'pomm-theme', 'yes'),
(44, 'comment_whitelist', '1', 'yes'),
(45, 'blacklist_keys', '', 'no'),
(46, 'comment_registration', '', 'yes'),
(47, 'html_type', 'text/html', 'yes'),
(48, 'use_trackback', '0', 'yes'),
(49, 'default_role', 'subscriber', 'yes'),
(50, 'db_version', '44719', 'yes'),
(51, 'uploads_use_yearmonth_folders', '1', 'yes'),
(52, 'upload_path', '', 'yes'),
(53, 'blog_public', '1', 'yes'),
(54, 'default_link_category', '0', 'yes'),
(55, 'show_on_front', 'page', 'yes'),
(56, 'tag_base', '', 'yes'),
(57, 'show_avatars', '1', 'yes'),
(58, 'avatar_rating', 'G', 'yes'),
(59, 'upload_url_path', '', 'yes'),
(60, 'thumbnail_size_w', '150', 'yes'),
(61, 'thumbnail_size_h', '150', 'yes'),
(62, 'thumbnail_crop', '1', 'yes'),
(63, 'medium_size_w', '300', 'yes'),
(64, 'medium_size_h', '300', 'yes'),
(65, 'avatar_default', 'mystery', 'yes'),
(66, 'large_size_w', '1024', 'yes'),
(67, 'large_size_h', '1024', 'yes'),
(68, 'image_default_link_type', 'none', 'yes'),
(69, 'image_default_size', '', 'yes'),
(70, 'image_default_align', '', 'yes'),
(71, 'close_comments_for_old_posts', '', 'yes'),
(72, 'close_comments_days_old', '14', 'yes'),
(73, 'thread_comments', '', 'yes'),
(74, 'thread_comments_depth', '5', 'yes'),
(75, 'page_comments', '', 'yes'),
(76, 'comments_per_page', '50', 'yes'),
(77, 'default_comments_page', 'newest', 'yes'),
(78, 'comment_order', 'asc', 'yes'),
(79, 'sticky_posts', 'a:0:{}', 'yes'),
(80, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(83, 'uninstall_plugins', 'a:1:{s:41:\"better-wp-security/better-wp-security.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:16:\"handle_uninstall\";}}', 'no'),
(84, 'timezone_string', '', 'yes'),
(85, 'page_for_posts', '0', 'yes'),
(86, 'page_on_front', '16', 'yes'),
(87, 'default_post_format', '0', 'yes'),
(88, 'link_manager_enabled', '0', 'yes'),
(89, 'finished_splitting_shared_terms', '1', 'yes'),
(90, 'site_icon', '202', 'yes'),
(91, 'medium_large_size_w', '768', 'yes'),
(92, 'medium_large_size_h', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'bedrock_autoloader', 'a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}', 'no'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'cron', 'a:13:{i:1559121453;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559123520;a:1:{s:15:\"my_hourly_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1559123524;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1559124390;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1559135084;a:1:{s:16:\"itsec_purge_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559155754;a:1:{s:20:\"itsec_purge_lockouts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559164626;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559181990;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559189913;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559191119;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559203502;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559204087;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'nonce_key', '{+(p7Dte7_::];wW<z61$uDnS7#G~Tba3R[-tU#6%U:t+aNmomJP4i#L0aHPsCCE', 'no'),
(109, 'nonce_salt', '/rM,@4rT)TcQoq:dl*:0)Nih<?goM0uc{I.B(sS`2HFiaZQ~?7^.y`}YXtZn ~G3', 'no'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527582772;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(113, 'auth_key', 'Ne>,~|klFxG&aa+QHoGnXt$Ae!WL.1UmYr}I5r#8#TeYD_j{-XtC{F%k2E};23Lg', 'no'),
(114, 'auth_salt', 'nUF7$|oLX[m3O~.bS3=yI!ahz.ZVY)p$>VI!.=F@}V{Ec:OB} GoxYvi1HDGt*WE', 'no'),
(115, 'logged_in_key', 'm}:ahT@4dQIS?S0|dv&hUq0Nvi)v~F Slv +B0iw6h[1,,?ZbC/Mrt.. 34H?XfY', 'no'),
(116, 'logged_in_salt', '3lpf&of*jj~W,.X0)ZK&YJH3-[Q&92Wf# B&K!<@Et+&|,wWb||A}k_v/ZqUno0R', 'no'),
(141, 'recently_activated', 'a:10:{s:37:\"tinymce-advanced/tinymce-advanced.php\";i:1559104084;s:44:\"just-tinymce-styles/just-tiny-mce-styles.php\";i:1559104080;s:33:\"classic-editor/classic-editor.php\";i:1559103551;s:47:\"tinymce-custom-styles/tinymce-custom-styles.php\";i:1559102447;s:24:\"wordpress-seo/wp-seo.php\";i:1558598626;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1558598619;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:1558598605;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1558598569;s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";i:1558598564;s:39:\"so-widgets-bundle/so-widgets-bundle.php\";i:1558598555;}', 'yes'),
(144, 'current_theme', 'wpExtra', 'yes'),
(145, 'theme_mods_wpTwig', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1495421069;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(155, 'acf_version', '5.8.0', 'yes'),
(163, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1490267671;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(169, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"10.0.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1490268150;s:13:\"myyoast-oauth\";a:2:{s:6:\"config\";a:2:{s:8:\"clientId\";N;s:6:\"secret\";N;}s:13:\"access_tokens\";a:0:{}}}', 'yes'),
(171, 'wpseo_titles', 'a:66:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:0;s:23:\"is-media-purge-relevant\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:22:\"noindex-subpages-wpseo\";b:0;}', 'yes'),
(172, 'wpseo_social', 'a:17:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";}', 'yes'),
(176, 'wpseo_flush_rewrite', '1', 'yes'),
(179, 'postman_state', 'a:3:{s:15:\"locking_enabled\";b:0;s:12:\"install_date\";i:1490268228;s:7:\"version\";s:5:\"1.7.2\";}', 'yes'),
(180, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRNeE5ERTBmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9DMHdOUzB4TnlBd05EbzBORG93Tnc9PSI7czozOiJ1cmwiO3M6MTU6Imh0dHA6Ly9wb21tLmNvbSI7fQ==', 'yes'),
(188, 'wordfence_version', '6.3.5', 'yes'),
(189, 'wordfenceActivated', '1', 'yes'),
(190, 'wf_plugin_act_error', '', 'yes'),
(196, 'itsec-storage', 'a:3:{s:6:\"global\";a:31:{s:18:\"notification_email\";a:1:{i:0;s:17:\"phuptqn@gmail.com\";}s:12:\"backup_email\";a:1:{i:0;s:17:\"phuptqn@gmail.com\";}s:15:\"lockout_message\";s:5:\"error\";s:20:\"user_lockout_message\";s:64:\"You have been locked out due to too many invalid login attempts.\";s:25:\"community_lockout_message\";s:77:\"Your IP address has been flagged as a threat by the iThemes Security network.\";s:9:\"blacklist\";b:1;s:15:\"blacklist_count\";i:3;s:16:\"blacklist_period\";i:7;s:19:\"email_notifications\";b:1;s:14:\"lockout_period\";i:15;s:18:\"lockout_white_list\";a:0:{}s:12:\"log_rotation\";i:14;s:8:\"log_type\";s:8:\"database\";s:12:\"log_location\";s:68:\"D:\\wamp\\www\\Phu\\myRepos\\wpTwig/web/app/uploads/ithemes-security/logs\";s:8:\"log_info\";s:37:\"wptwig-ox1EjfKgR7Ri9OlXYJsN70gCh3dBX1\";s:14:\"allow_tracking\";b:0;s:11:\"write_files\";b:1;s:10:\"nginx_file\";s:48:\"D:\\wamp\\www\\Phu\\myRepos\\wpTwig\\web\\wp/nginx.conf\";s:24:\"infinitewp_compatibility\";b:0;s:11:\"did_upgrade\";b:0;s:9:\"lock_file\";b:0;s:12:\"digest_email\";b:0;s:14:\"proxy_override\";b:0;s:14:\"hide_admin_bar\";b:0;s:16:\"show_error_codes\";b:0;s:25:\"show_new_dashboard_notice\";b:0;s:19:\"show_security_check\";b:0;s:16:\"digest_last_sent\";i:1490274284;s:15:\"digest_messages\";a:0:{}s:5:\"build\";i:4070;s:20:\"activation_timestamp\";i:0;}s:19:\"network-brute-force\";a:5:{s:7:\"api_key\";s:0:\"\";s:10:\"api_secret\";s:0:\"\";s:10:\"enable_ban\";b:1;s:13:\"updates_optin\";b:1;s:7:\"api_nag\";b:0;}s:16:\"wordpress-tweaks\";a:13:{s:18:\"wlwmanifest_header\";b:0;s:14:\"edituri_header\";b:0;s:12:\"comment_spam\";b:0;s:11:\"file_editor\";b:1;s:14:\"disable_xmlrpc\";i:0;s:22:\"allow_xmlrpc_multiauth\";b:0;s:8:\"rest_api\";s:14:\"default-access\";s:11:\"safe_jquery\";b:0;s:12:\"login_errors\";b:0;s:21:\"force_unique_nicename\";b:0;s:27:\"disable_unused_author_pages\";b:0;s:14:\"jquery_version\";s:6:\"1.12.4\";s:16:\"block_tabnapping\";b:0;}}', 'yes'),
(204, 'itsec_active_modules', 'a:6:{s:9:\"ban-users\";b:1;s:11:\"brute-force\";b:1;s:6:\"backup\";b:1;s:19:\"network-brute-force\";b:1;s:16:\"strong-passwords\";b:1;s:16:\"wordpress-tweaks\";b:1;}', 'yes'),
(279, 'flamingo_inbound_channel_children', 'a:1:{i:2;a:1:{i:0;i:3;}}', 'yes'),
(419, 'theme_mods_wpExtra', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558599528;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(421, 'theme_switched_via_customizer', '', 'yes'),
(422, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(490, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(491, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(492, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(602, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(634, 'category_children', 'a:0:{}', 'yes'),
(733, 'wpseo_license_server_version', '2', 'yes'),
(791, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(841, 'widget_category-posts-tabber', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(921, 'siteorigin_panels_settings', 'a:23:{s:10:\"post-types\";a:2:{i:0;s:4:\"page\";i:1;s:4:\"post\";}s:22:\"live-editor-quick-link\";b:1;s:18:\"admin-widget-count\";b:0;s:15:\"parallax-motion\";s:0:\"\";s:17:\"sidebars-emulator\";b:0;s:14:\"display-teaser\";b:1;s:13:\"display-learn\";b:1;s:14:\"load-on-attach\";b:0;s:10:\"title-html\";s:39:\"<h3 class=\"widget-title\">{{title}}</h3>\";s:16:\"add-widget-class\";b:1;s:15:\"bundled-widgets\";b:0;s:19:\"recommended-widgets\";b:1;s:10:\"responsive\";b:1;s:13:\"tablet-layout\";b:0;s:13:\"legacy-layout\";s:4:\"auto\";s:12:\"tablet-width\";i:1024;s:12:\"mobile-width\";i:991;s:13:\"margin-bottom\";i:0;s:22:\"margin-bottom-last-row\";b:0;s:12:\"margin-sides\";i:30;s:20:\"full-width-container\";s:4:\"body\";s:12:\"copy-content\";b:1;s:11:\"copy-styles\";b:0;}', 'yes'),
(922, 'siteorigin_panels_initial_version', '2.6.7', 'no'),
(923, 'siteorigin_panels_active_version', '2.10.2', 'yes'),
(924, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(925, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(926, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(930, 'lsow_option_dismissed_notices', 'a:1:{s:4:\"rate\";i:1554368119;}', 'yes'),
(931, 'widget_sow-button', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(932, 'widget_sow-google-map', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(933, 'widget_sow-image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(934, 'widget_sow-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(935, 'widget_sow-post-carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(936, 'widget_sow-editor', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(937, 'siteorigin_widget_bundle_version', '1.15.4', 'yes'),
(938, 'siteorigin_widgets_old_widgets', 'D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/accordion/accordion.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/button/button.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/cta/cta.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/contact/contact.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/editor/editor.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/features/features.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/google-map/google-map.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/headline/headline.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/hero/hero.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/icon/icon.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/image/image.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/image-grid/image-grid.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/slider/slider.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/layout-slider/layout-slider.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-accordion-widget/lsow-accordion-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-button-widget/lsow-button-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-carousel-widget/lsow-carousel-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-clients-widget/lsow-clients-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-portfolio-widget/lsow-portfolio-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-heading-widget/lsow-heading-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-hero-image-widget/lsow-hero-image-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-icon-list-widget/lsow-icon-list-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-odometers-widget/lsow-odometers-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-piecharts-widget/lsow-piecharts-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-posts-carousel-widget/lsow-posts-carousel-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-pricing-table-widget/lsow-pricing-table-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-services-widget/lsow-services-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-stats-bar-widget/lsow-stats-bar-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-tabs-widget/lsow-tabs-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-team-members-widget/lsow-team-members-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-testimonials-widget/lsow-testimonials-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\livemesh-siteorigin-widgets/includes/widgets/lsow-testimonials-slider-widget/lsow-testimonials-slider-widget.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/post-carousel/post-carousel.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/price-table/price-table.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/simple-masonry/simple-masonry.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/social-media-buttons/social-media-buttons.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/tabs/tabs.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/taxonomy/taxonomy.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/testimonial/testimonial.php,D:\\wamp\\www\\Phu\\myRepos\\wpExtra\\wp-content\\plugins\\so-widgets-bundle/widgets/video/video.php', 'yes'),
(945, 'lsow_settings', 'a:5:{s:16:\"lsow_theme_color\";s:7:\"#f94213\";s:22:\"lsow_theme_hover_color\";s:7:\"#888888\";s:21:\"lsow_autoload_widgets\";s:0:\"\";s:15:\"lsow_custom_css\";s:0:\"\";s:17:\"lsow_enable_debug\";s:0:\"\";}', 'yes'),
(984, 'wp_mail_smtp_version', '1.2.5', 'yes'),
(985, 'wp_mail_smtp', 'a:5:{s:4:\"mail\";a:4:{s:10:\"from_email\";s:16:\"admin@wpextra.me\";s:9:\"from_name\";s:7:\"wpExtra\";s:6:\"mailer\";s:7:\"mailgun\";s:11:\"return_path\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:4:\"port\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"user\";s:5:\"admin\";s:4:\"pass\";s:3:\"123\";s:4:\"auth\";b:0;}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:2:{s:7:\"api_key\";s:36:\"key-186d2ce32bb8f39c4a81387a5da8119f\";s:6:\"domain\";s:20:\"dev.phanthanhphu.com\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}}', 'no'),
(986, '_amn_smtp_last_checked', '1558569600', 'yes'),
(987, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(993, 'siteorigin_widgets_active', 'a:7:{s:6:\"button\";b:1;s:10:\"google-map\";b:1;s:5:\"image\";b:1;s:6:\"slider\";b:1;s:13:\"post-carousel\";b:1;s:6:\"editor\";b:1;s:26:\"lsow-posts-carousel-widget\";b:1;}', 'yes'),
(994, 'widget_lsow-posts-carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1033, 'options_code_before_head_closing', '', 'no'),
(1034, '_options_code_before_head_closing', 'field_5b0eb72b5b71b', 'no'),
(1035, 'options_code_after_body_opening', '', 'no'),
(1036, '_options_code_after_body_opening', 'field_5b0eb7865b71c', 'no'),
(1037, 'options_code_before_body_closing', '', 'no'),
(1038, '_options_code_before_body_closing', 'field_5b0eb79c5b71d', 'no'),
(1106, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"livemesh-siteorigin-widgets/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.2.4\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1558598574;s:11:\"plugin_path\";s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";}}s:7:\"abspath\";s:27:\"/var/www/html/KIN-DEV/pomm/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";s:8:\"sdk_path\";s:36:\"livemesh-siteorigin-widgets/freemius\";s:7:\"version\";s:5:\"2.2.4\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1558598574;}}', 'yes'),
(1107, 'fs_debug_mode', '', 'yes'),
(1108, 'fs_accounts', 'a:14:{s:21:\"id_slug_type_path_map\";a:1:{i:2181;a:3:{s:4:\"slug\";s:27:\"livemesh-siteorigin-widgets\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";}}s:11:\"plugin_data\";a:1:{s:27:\"livemesh-siteorigin-widgets\";a:20:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";}s:17:\"install_timestamp\";i:1532420057;s:16:\"sdk_last_version\";s:5:\"2.1.1\";s:11:\"sdk_version\";s:5:\"2.2.4\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";s:5:\"2.2.1\";s:14:\"plugin_version\";s:5:\"2.5.2\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:10:\"wpextra.me\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1532420057;s:7:\"version\";s:5:\"2.2.1\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1558598574;s:20:\"activation_timestamp\";i:1532420075;s:14:\"sync_timestamp\";i:1558598500;s:19:\"keepalive_timestamp\";i:1558598574;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"7\";s:4:\"info\";s:1:\"s\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";s:27:\"livemesh-siteorigin-widgets\";}s:7:\"plugins\";a:1:{s:27:\"livemesh-siteorigin-widgets\";O:9:\"FS_Plugin\":20:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:27:\"Livemesh SiteOrigin Widgets\";s:4:\"slug\";s:27:\"livemesh-siteorigin-widgets\";s:12:\"premium_slug\";s:35:\"livemesh-siteorigin-widgets-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";s:7:\"version\";s:5:\"2.5.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_2aea13291408db02386483997de7e\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2181\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"7a6a1919be9ee8af0fb0e8b359e67422\";s:5:\"plans\";a:1:{s:27:\"livemesh-siteorigin-widgets\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjE4MQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";s:80:\"aHR0cHM6Ly93b3JkcHJlc3Mub3JnL3BsdWdpbnMvbGl2ZW1lc2gtc2l0ZW9yaWdpbi13aWRnZXRzLw==\";s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MzI4Nw==\";s:7:\"updated\";s:28:\"MjAxOC0wNi0zMCAwNzozNDoyMw==\";s:7:\"created\";s:28:\"MjAxOC0wNi0wNyAwNDo1NTo0Mw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjE4MQ==\";s:4:\"name\";s:4:\"cHJv\";s:5:\"title\";s:4:\"UHJv\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:0:\"\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";s:112:\"aHR0cHM6Ly9zdXBwb3J0LmxpdmVtZXNodGhlbWVzLmNvbS9mb3J1bXMvZm9ydW0vbGl2ZW1lc2gtc2l0ZW9yaWdpbi13aWRnZXRzLXN1cHBvcnQv\";s:13:\"support_email\";s:36:\"c3VwcG9ydEBsaXZlbWVzaHRoZW1lcy5jb20=\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MzI4OA==\";s:7:\"updated\";s:28:\"MjAxOC0wNi0zMCAwNzoyMzowNQ==\";s:7:\"created\";s:28:\"MjAxOC0wNi0wNyAwNTowMDowMQ==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1558598500;s:3:\"md5\";s:32:\"35b27c0458c878f1dc5284d950aae10c\";s:7:\"plugins\";a:8:{s:34:\"advanced-custom-fields-pro/acf.php\";a:5:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.7.1\";s:5:\"title\";s:26:\"Advanced Custom Fields PRO\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";a:5:{s:4:\"slug\";s:14:\"contact-form-7\";s:7:\"version\";s:5:\"5.0.3\";s:5:\"title\";s:14:\"Contact Form 7\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";a:5:{s:4:\"slug\";s:27:\"livemesh-siteorigin-widgets\";s:7:\"version\";s:5:\"2.2.1\";s:5:\"title\";s:27:\"Livemesh SiteOrigin Widgets\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:39:\"siteorigin-panels/siteorigin-panels.php\";a:5:{s:4:\"slug\";s:17:\"siteorigin-panels\";s:7:\"version\";s:5:\"2.7.3\";s:5:\"title\";s:26:\"Page Builder by SiteOrigin\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:39:\"so-widgets-bundle/so-widgets-bundle.php\";a:5:{s:4:\"slug\";s:17:\"so-widgets-bundle\";s:7:\"version\";s:6:\"1.12.1\";s:5:\"title\";s:25:\"SiteOrigin Widgets Bundle\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:37:\"tinymce-advanced/tinymce-advanced.php\";a:5:{s:4:\"slug\";s:16:\"tinymce-advanced\";s:7:\"version\";s:6:\"4.7.11\";s:5:\"title\";s:16:\"TinyMCE Advanced\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";a:5:{s:4:\"slug\";s:12:\"wp-mail-smtp\";s:7:\"version\";s:5:\"1.3.3\";s:5:\"title\";s:12:\"WP Mail SMTP\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:24:\"wordpress-seo/wp-seo.php\";a:5:{s:4:\"slug\";s:13:\"wordpress-seo\";s:7:\"version\";s:3:\"7.8\";s:5:\"title\";s:9:\"Yoast SEO\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1558598500;s:3:\"md5\";s:32:\"069410e7c26f3e4cfcfe0cd315974ad0\";s:7:\"plugins\";a:8:{s:34:\"advanced-custom-fields-pro/acf.php\";a:6:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.7.1\";s:5:\"title\";s:26:\"Advanced Custom Fields PRO\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:6:\"5.7.13\";}s:36:\"contact-form-7/wp-contact-form-7.php\";a:6:{s:4:\"slug\";s:14:\"contact-form-7\";s:7:\"version\";s:5:\"5.0.3\";s:5:\"title\";s:14:\"Contact Form 7\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:5:\"5.1.1\";}s:59:\"livemesh-siteorigin-widgets/livemesh-siteorigin-widgets.php\";a:6:{s:4:\"slug\";s:27:\"livemesh-siteorigin-widgets\";s:7:\"version\";s:5:\"2.2.1\";s:5:\"title\";s:27:\"Livemesh SiteOrigin Widgets\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:5:\"2.5.2\";}s:39:\"siteorigin-panels/siteorigin-panels.php\";a:6:{s:4:\"slug\";s:17:\"siteorigin-panels\";s:7:\"version\";s:5:\"2.7.3\";s:5:\"title\";s:26:\"Page Builder by SiteOrigin\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:6:\"2.10.2\";}s:39:\"so-widgets-bundle/so-widgets-bundle.php\";a:6:{s:4:\"slug\";s:17:\"so-widgets-bundle\";s:7:\"version\";s:6:\"1.12.1\";s:5:\"title\";s:25:\"SiteOrigin Widgets Bundle\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:6:\"1.15.4\";}s:37:\"tinymce-advanced/tinymce-advanced.php\";a:6:{s:4:\"slug\";s:16:\"tinymce-advanced\";s:7:\"version\";s:6:\"4.7.11\";s:5:\"title\";s:16:\"TinyMCE Advanced\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:5:\"5.1.0\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";a:6:{s:4:\"slug\";s:12:\"wp-mail-smtp\";s:7:\"version\";s:5:\"1.3.3\";s:5:\"title\";s:12:\"WP Mail SMTP\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:5:\"1.4.2\";}s:24:\"wordpress-seo/wp-seo.php\";a:6:{s:4:\"slug\";s:13:\"wordpress-seo\";s:7:\"version\";s:3:\"7.8\";s:5:\"title\";s:9:\"Yoast SEO\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:6:\"10.0.1\";}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1558598501;s:3:\"md5\";s:32:\"65cd964777f414a154aabe195419bcfd\";s:6:\"themes\";a:3:{s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"2.1\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:7:\"wpExtra\";a:5:{s:4:\"slug\";s:7:\"wpExtra\";s:7:\"version\";s:5:\"1.0.0\";s:5:\"title\";s:7:\"wpExtra\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:14:\"twentynineteen\";a:5:{s:4:\"slug\";s:14:\"twentynineteen\";s:7:\"version\";s:3:\"1.3\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:27:\"livemesh-siteorigin-widgets\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:7:\"4667586\";s:9:\"plugin_id\";s:4:\"2181\";s:7:\"user_id\";s:7:\"1331260\";s:5:\"title\";s:7:\"wpExtra\";s:3:\"url\";s:15:\"http://pomm.com\";s:7:\"version\";s:5:\"2.5.2\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.1.1\";s:11:\"sdk_version\";s:5:\"2.2.4\";s:28:\"programming_language_version\";s:16:\"7.1.26-1+ubuntu1\";s:7:\"plan_id\";s:4:\"3287\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_4afb85d18e7039370664436c813a1\";s:10:\"secret_key\";s:32:\"sk_UKMl2k62AEhz&%}&#I{ByVIXxS<F0\";s:2:\"id\";s:7:\"1793665\";s:7:\"updated\";s:19:\"2019-05-23 08:02:44\";s:7:\"created\";s:19:\"2018-07-24 08:14:33\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:1331260;O:7:\"FS_User\":12:{s:5:\"email\";s:16:\"admin@wpextra.me\";s:5:\"first\";s:6:\"Please\";s:4:\"last\";s:32:\"create a new one and DELETE THIS\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_6b451ce34e05d471de19f81a7f15b\";s:10:\"secret_key\";s:32:\"sk_:y7E%b>[]#~lb9i2uQ{v6gl~QozHa\";s:2:\"id\";s:7:\"1331260\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2018-07-24 08:14:33\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:23:\"user_id_license_ids_map\";a:1:{i:2181;a:1:{i:1331260;a:0:{}}}s:12:\"all_licenses\";a:1:{i:2181;a:0:{}}s:13:\"admin_notices\";a:1:{s:27:\"livemesh-siteorigin-widgets\";a:0:{}}}', 'yes'),
(1109, 'fs_api_cache', 'a:0:{}', 'yes'),
(1110, 'fs_gdpr', 'a:1:{s:2:\"u2\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(1113, '_site_transient_timeout_locked_2', '1847780077', 'no'),
(1114, '_site_transient_locked_2', '1', 'no'),
(1129, '_transient_timeout_wpseo_link_table_inaccessible', '1585644473', 'no'),
(1130, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(1131, '_transient_timeout_wpseo_meta_table_inaccessible', '1585644473', 'no'),
(1132, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(1164, 'wp_page_for_privacy_policy', '0', 'yes'),
(1165, 'show_comments_cookies_opt_in', '', 'yes'),
(1166, 'db_upgraded', '', 'yes'),
(1171, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1174, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1179, '_transient_timeout_sow:cleared', '1559203276', 'no'),
(1180, '_transient_sow:cleared', '1', 'no'),
(1186, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1559121438;s:7:\"checked\";a:1:{s:10:\"pomm-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1188, '_site_transient_timeout_browser_e9a573fe2d66b116770527bcfc899f49', '1559203337', 'no'),
(1189, '_site_transient_browser_e9a573fe2d66b116770527bcfc899f49', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"72.0.3626.119\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1190, '_site_transient_timeout_php_check_2ed2272762b8184a6392593d79912c4c', '1559203338', 'no'),
(1191, '_site_transient_php_check_2ed2272762b8184a6392593d79912c4c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1215, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1559121435;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1217, 'recovery_keys', 'a:0:{}', 'yes'),
(1230, 'WPLANG', '', 'yes'),
(1231, 'new_admin_email', 'nhatphamcdn@gmail.com', 'yes'),
(1232, 'adminhash', 'a:2:{s:4:\"hash\";s:32:\"4f46932856f5d8bdf238aa1c549ee2dc\";s:8:\"newemail\";s:21:\"nhatphamcdn@gmail.com\";}', 'yes'),
(1237, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558599537;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(1239, 'theme_mods_pomm-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:129;}', 'yes'),
(1245, '_transient_timeout_acf_plugin_updates', '1559125956', 'no'),
(1246, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.0\";}}', 'no'),
(1251, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1559106965', 'no'),
(1252, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2019.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2019-06-20 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Berlin, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:52.50697;s:9:\"longitude\";d:13.2843064;}}}}', 'no'),
(1253, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1254, 'options_footer_copyright', '&copy; {year} Pomm blog ', 'no'),
(1255, '_options_footer_copyright', 'field_5ced70f0b6e6d', 'no'),
(1256, '_transient_timeout_plugin_slugs', '1559198577', 'no'),
(1257, '_transient_plugin_slugs', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(1275, 'tcs_locstyle', 'themes_directory', 'yes'),
(1299, 'jtmce_source_settings', 'theme', 'no'),
(1300, 'jtmce_source_theme_path', 'editor-formats.json', 'no'),
(1301, 'jtmce_features', 'selector,classes,editor_css', 'no'),
(1309, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1559122940', 'no'),
(1310, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4581;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3444;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2622;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2487;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1919;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1734;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1728;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1468;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1439;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1433;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1432;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1364;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1316;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1292;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1140;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1107;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1093;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1062;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1002;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:933;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:853;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:842;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:836;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:791;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:737;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:732;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:727;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:714;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:703;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:699;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:693;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:684;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:672;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:655;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:653;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:650;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:631;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:622;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:620;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:619;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:588;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:574;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:570;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:564;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:560;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:553;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:544;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:541;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:532;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:526;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:524;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:516;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:510;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:504;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:502;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:497;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:481;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:477;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:476;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:473;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:469;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:465;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:457;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:451;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:435;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:430;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:421;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:417;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:416;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:416;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:408;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:398;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:394;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:392;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:391;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:387;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:381;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:380;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:375;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:369;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:362;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:361;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:359;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:355;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:348;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:346;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:346;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:344;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:339;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:330;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:327;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:324;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:320;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:318;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:316;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:314;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:311;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:310;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:310;}}', 'no'),
(1314, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1559121438;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"11.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(1315, 'duplicate_post_copytitle', '1', 'yes'),
(1316, 'duplicate_post_copydate', '0', 'yes'),
(1317, 'duplicate_post_copystatus', '0', 'yes'),
(1318, 'duplicate_post_copyslug', '0', 'yes'),
(1319, 'duplicate_post_copyexcerpt', '1', 'yes'),
(1320, 'duplicate_post_copycontent', '1', 'yes'),
(1321, 'duplicate_post_copythumbnail', '1', 'yes'),
(1322, 'duplicate_post_copytemplate', '1', 'yes'),
(1323, 'duplicate_post_copyformat', '1', 'yes'),
(1324, 'duplicate_post_copyauthor', '0', 'yes'),
(1325, 'duplicate_post_copypassword', '0', 'yes'),
(1326, 'duplicate_post_copyattachments', '0', 'yes'),
(1327, 'duplicate_post_copychildren', '0', 'yes'),
(1328, 'duplicate_post_copycomments', '0', 'yes'),
(1329, 'duplicate_post_copymenuorder', '1', 'yes'),
(1330, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(1331, 'duplicate_post_blacklist', '', 'yes'),
(1332, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(1333, 'duplicate_post_show_row', '1', 'yes'),
(1334, 'duplicate_post_show_adminbar', '1', 'yes'),
(1335, 'duplicate_post_show_submitbox', '1', 'yes'),
(1336, 'duplicate_post_show_bulkactions', '1', 'yes'),
(1337, 'duplicate_post_version', '3.2.2', 'yes'),
(1338, 'duplicate_post_show_notice', '1', 'no'),
(1353, 'options_read_more_text', 'Xem thêm', 'no'),
(1354, '_options_read_more_text', 'field_5cee2f6390d5b', 'no'),
(1358, 'options_button_next_text', 'Tới', 'no'),
(1359, '_options_button_next_text', 'field_5cee3e72297ea', 'no'),
(1360, 'options_button_previous_text', 'Lùi', 'no'),
(1361, '_options_button_previous_text', 'field_5cee3e84297eb', 'no'),
(1367, '_site_transient_timeout_theme_roots', '1559123237', 'no'),
(1368, '_site_transient_theme_roots', 'a:1:{s:10:\"pomm-theme\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(8, 5, '_email', 'phuptqn@gmail.com'),
(9, 5, '_name', 'phuptqn'),
(10, 5, '_props', 'a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}'),
(11, 5, '_last_contacted', '2017-03-30 02:55:18'),
(12, 6, '_email', 'wapuu@wordpress.example'),
(13, 6, '_name', 'A WordPress Commenter'),
(14, 6, '_props', 'a:0:{}'),
(15, 6, '_last_contacted', '2017-03-23 11:22:26'),
(132, 16, '_edit_last', '2'),
(133, 16, '_edit_lock', '1559099986:2'),
(134, 16, '_wp_page_template', 'page-templates/home.php'),
(135, 16, '_yoast_wpseo_content_score', '30'),
(158, 77, '_wp_attached_file', '2018/05/cropped-tom.jpg'),
(159, 77, '_wp_attachment_context', 'site-icon'),
(160, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2018/05/cropped-tom.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-tom-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-tom-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:23:\"cropped-tom-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:23:\"cropped-tom-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:23:\"cropped-tom-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:21:\"cropped-tom-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 16, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:4:\"Home\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:27:\"226035b0d256721d7d897049161\";s:19:\"_sow_form_timestamp\";s:13:\"1527651281484\";s:11:\"panels_info\";a:8:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"f46ad64a-7898-4642-989f-125adc584321\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}s:5:\"label\";s:7:\"Content\";}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:4:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:12:\"lsow_dark_bg\";s:0:\"\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(169, 82, '_edit_last', '2'),
(170, 82, '_edit_lock', '1559117316:2'),
(171, 83, '_edit_last', '1'),
(172, 83, '_edit_lock', '1527588601:1'),
(176, 16, 'body_css_classes', ''),
(177, 16, '_body_css_classes', 'field_5b0d264d72cde'),
(276, 129, '_wp_attached_file', '2019/05/logo.png'),
(277, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:111;s:4:\"file\";s:16:\"2019/05/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x111.png\";s:5:\"width\";i:150;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 130, '_wp_trash_meta_status', 'publish'),
(279, 130, '_wp_trash_meta_time', '1558602582'),
(280, 131, '_edit_last', '2'),
(281, 131, '_edit_lock', '1558607167:2'),
(282, 138, '_edit_last', '2'),
(283, 138, '_edit_lock', '1558605431:2'),
(284, 144, '_wp_attached_file', '2019/05/03.png'),
(285, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:404;s:4:\"file\";s:14:\"2019/05/03.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 145, '_wp_attached_file', '2019/05/02.png'),
(287, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:404;s:4:\"file\";s:14:\"2019/05/02.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 16, 'slideshow_item_0_image', '145'),
(291, 16, '_slideshow_item_0_image', 'field_5ce6660b9c956'),
(292, 16, 'slideshow_item_0_title', 'Gia đình Pomm đi picnic'),
(293, 16, '_slideshow_item_0_title', 'field_5ce666199c957'),
(294, 16, 'slideshow_item_0_summary', 'Chuyến đi chơi quẩy tẹc ga của gia đình nhà Pomm'),
(295, 16, '_slideshow_item_0_summary', 'field_5ce666319c958'),
(296, 16, 'slideshow_item_0_link_to', ''),
(297, 16, '_slideshow_item_0_link_to', 'field_5ce6663f9c959'),
(298, 16, 'slideshow_item_1_image', '144'),
(299, 16, '_slideshow_item_1_image', 'field_5ce6660b9c956'),
(300, 16, 'slideshow_item_1_title', 'Pomm đi khai giảng'),
(301, 16, '_slideshow_item_1_title', 'field_5ce666199c957'),
(302, 16, 'slideshow_item_1_summary', 'Hôm nay Pomm đi học mẫu giáo'),
(303, 16, '_slideshow_item_1_summary', 'field_5ce666319c958'),
(304, 16, 'slideshow_item_1_link_to', ''),
(305, 16, '_slideshow_item_1_link_to', 'field_5ce6663f9c959'),
(306, 16, 'slideshow_item', '2'),
(307, 16, '_slideshow_item', 'field_5ce665e89c955'),
(308, 16, 'block_item_0_block_title', 'Giới thiệu về Pomm'),
(309, 16, '_block_item_0_block_title', 'field_5ce6646d5c0d7'),
(310, 16, 'block_item_0_block_summary', '<img class=\"alignnone size-full wp-image-155\" src=\"http://pomm.com/wp-content/uploads/2019/05/58463177_2842984189064269_4382529090616295424_n.jpg\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ut.'),
(311, 16, '_block_item_0_block_summary', 'field_5ce664905c0d8'),
(312, 16, 'block_item_0_read_more_text', 'Xem thêm'),
(313, 16, '_block_item_0_read_more_text', 'field_5ce664fa5c0da'),
(314, 16, 'block_item_0_read_more_link', ''),
(315, 16, '_block_item_0_read_more_link', 'field_5ce664ff5c0db'),
(316, 16, 'block_item_0_read_more', ''),
(317, 16, '_block_item_0_read_more', 'field_5ce664d95c0d9'),
(318, 16, 'block_item', '3'),
(319, 16, '_block_item', 'field_5ce663feb679e'),
(384, 149, '_wp_attached_file', '2019/05/orange-mid.png'),
(385, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:186;s:4:\"file\";s:22:\"2019/05/orange-mid.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"orange-mid-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 16, 'block_item_1_block_title', 'Bài viết của Pomm'),
(387, 16, '_block_item_1_block_title', 'field_5ce6646d5c0d7'),
(388, 16, 'block_item_1_block_summary', '<img class=\"alignnone size-full wp-image-149\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange-mid.png\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nNam lorem urna, vitae ultrices ac pellentesque tincidunt augue.'),
(389, 16, '_block_item_1_block_summary', 'field_5ce664905c0d8'),
(390, 16, 'block_item_1_read_more_text', 'Xem bài viết của Pomm'),
(391, 16, '_block_item_1_read_more_text', 'field_5ce664fa5c0da'),
(392, 16, 'block_item_1_read_more_link', ''),
(393, 16, '_block_item_1_read_more_link', 'field_5ce664ff5c0db'),
(394, 16, 'block_item_1_read_more', ''),
(395, 16, '_block_item_1_read_more', 'field_5ce664d95c0d9'),
(438, 151, '_wp_attached_file', '2019/05/yellow-mid.png'),
(439, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:186;s:4:\"file\";s:22:\"2019/05/yellow-mid.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"yellow-mid-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 16, 'block_item_2_block_title', 'Hình ảnh của Pomm'),
(441, 16, '_block_item_2_block_title', 'field_5ce6646d5c0d7'),
(442, 16, 'block_item_2_block_summary', 'Nam lorem urna, vitae ultrices ac pellentesque tincidunt augue.\r\n\r\n<img class=\"alignnone size-full wp-image-151\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow-mid.png\" alt=\"\" width=\"285\" height=\"186\" />'),
(443, 16, '_block_item_2_block_summary', 'field_5ce664905c0d8'),
(444, 16, 'block_item_2_read_more_text', 'Xem hình ảnh của Pomm'),
(445, 16, '_block_item_2_read_more_text', 'field_5ce664fa5c0da'),
(446, 16, 'block_item_2_read_more_link', ''),
(447, 16, '_block_item_2_read_more_link', 'field_5ce664ff5c0db'),
(448, 16, 'block_item_2_read_more', ''),
(449, 16, '_block_item_2_read_more', 'field_5ce664d95c0d9'),
(556, 155, '_wp_attached_file', '2019/05/58463177_2842984189064269_4382529090616295424_n.jpg'),
(557, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:186;s:4:\"file\";s:59:\"2019/05/58463177_2842984189064269_4382529090616295424_n.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"58463177_2842984189064269_4382529090616295424_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(610, 157, 'body_css_classes', ''),
(611, 157, '_body_css_classes', 'field_5b0d264d72cde'),
(612, 157, 'slideshow_item_0_image', '145'),
(613, 157, '_slideshow_item_0_image', 'field_5ce6660b9c956'),
(614, 157, 'slideshow_item_0_title', 'Gia đình Pomm đi picnic'),
(615, 157, '_slideshow_item_0_title', 'field_5ce666199c957'),
(616, 157, 'slideshow_item_0_summary', 'Chuyến đi chơi quẩy tẹc ga của gia đình nhà Pomm'),
(617, 157, '_slideshow_item_0_summary', 'field_5ce666319c958'),
(618, 157, 'slideshow_item_0_link_to', ''),
(619, 157, '_slideshow_item_0_link_to', 'field_5ce6663f9c959'),
(620, 157, 'slideshow_item_1_image', '144'),
(621, 157, '_slideshow_item_1_image', 'field_5ce6660b9c956'),
(622, 157, 'slideshow_item_1_title', 'Pomm đi khai giảng'),
(623, 157, '_slideshow_item_1_title', 'field_5ce666199c957'),
(624, 157, 'slideshow_item_1_summary', 'Hôm nay Pomm đi học mẫu giáo'),
(625, 157, '_slideshow_item_1_summary', 'field_5ce666319c958'),
(626, 157, 'slideshow_item_1_link_to', ''),
(627, 157, '_slideshow_item_1_link_to', 'field_5ce6663f9c959'),
(628, 157, 'slideshow_item', '2'),
(629, 157, '_slideshow_item', 'field_5ce665e89c955'),
(630, 157, 'block_item_0_block_title', 'Giới thiệu về Pomm'),
(631, 157, '_block_item_0_block_title', 'field_5ce6646d5c0d7'),
(632, 157, 'block_item_0_block_summary', '<img class=\"alignnone size-full wp-image-155\" src=\"http://pomm.com/wp-content/uploads/2019/05/58463177_2842984189064269_4382529090616295424_n.jpg\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ut.'),
(633, 157, '_block_item_0_block_summary', 'field_5ce664905c0d8'),
(634, 157, 'block_item_0_read_more_text', 'Xem thêm'),
(635, 157, '_block_item_0_read_more_text', 'field_5ce664fa5c0da'),
(636, 157, 'block_item_0_read_more_link', ''),
(637, 157, '_block_item_0_read_more_link', 'field_5ce664ff5c0db'),
(638, 157, 'block_item_0_read_more', ''),
(639, 157, '_block_item_0_read_more', 'field_5ce664d95c0d9'),
(640, 157, 'block_item', '3'),
(641, 157, '_block_item', 'field_5ce663feb679e'),
(642, 157, 'block_item_1_block_title', 'Bài viết của Pomm'),
(643, 157, '_block_item_1_block_title', 'field_5ce6646d5c0d7'),
(644, 157, 'block_item_1_block_summary', '<img class=\"alignnone size-full wp-image-149\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange-mid.png\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nNam lorem urna, vitae ultrices ac pellentesque tincidunt augue.'),
(645, 157, '_block_item_1_block_summary', 'field_5ce664905c0d8'),
(646, 157, 'block_item_1_read_more_text', 'Xem bài viết của Pomm'),
(647, 157, '_block_item_1_read_more_text', 'field_5ce664fa5c0da'),
(648, 157, 'block_item_1_read_more_link', ''),
(649, 157, '_block_item_1_read_more_link', 'field_5ce664ff5c0db'),
(650, 157, 'block_item_1_read_more', ''),
(651, 157, '_block_item_1_read_more', 'field_5ce664d95c0d9'),
(652, 157, 'block_item_2_block_title', 'Hình ảnh của Pomm'),
(653, 157, '_block_item_2_block_title', 'field_5ce6646d5c0d7'),
(654, 157, 'block_item_2_block_summary', 'Nam lorem urna, vitae ultrices ac pellentesque tincidunt augue.\r\n\r\n<img class=\"alignnone size-full wp-image-151\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow-mid.png\" alt=\"\" width=\"285\" height=\"186\" />'),
(655, 157, '_block_item_2_block_summary', 'field_5ce664905c0d8'),
(656, 157, 'block_item_2_read_more_text', 'Xem hình ảnh của Pomm'),
(657, 157, '_block_item_2_read_more_text', 'field_5ce664fa5c0da'),
(658, 157, 'block_item_2_read_more_link', ''),
(659, 157, '_block_item_2_read_more_link', 'field_5ce664ff5c0db'),
(660, 157, 'block_item_2_read_more', ''),
(661, 157, '_block_item_2_read_more', 'field_5ce664d95c0d9'),
(662, 158, '_menu_item_type', 'post_type'),
(663, 158, '_menu_item_menu_item_parent', '0'),
(664, 158, '_menu_item_object_id', '16'),
(665, 158, '_menu_item_object', 'page'),
(666, 158, '_menu_item_target', ''),
(667, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(668, 158, '_menu_item_xfn', ''),
(669, 158, '_menu_item_url', ''),
(671, 159, '_menu_item_type', 'post_type'),
(672, 159, '_menu_item_menu_item_parent', '0'),
(673, 159, '_menu_item_object_id', '16'),
(674, 159, '_menu_item_object', 'page'),
(675, 159, '_menu_item_target', ''),
(676, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(677, 159, '_menu_item_xfn', ''),
(678, 159, '_menu_item_url', ''),
(679, 159, '_menu_item_orphaned', '1559064550'),
(680, 160, '_menu_item_type', 'post_type'),
(681, 160, '_menu_item_menu_item_parent', '0'),
(682, 160, '_menu_item_object_id', '16'),
(683, 160, '_menu_item_object', 'page'),
(684, 160, '_menu_item_target', ''),
(685, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(686, 160, '_menu_item_xfn', ''),
(687, 160, '_menu_item_url', ''),
(688, 160, '_menu_item_orphaned', '1559064553'),
(716, 165, 'body_css_classes', ''),
(717, 165, '_body_css_classes', 'field_5b0d264d72cde'),
(718, 165, 'slideshow_item_0_image', '145'),
(719, 165, '_slideshow_item_0_image', 'field_5ce6660b9c956'),
(720, 165, 'slideshow_item_0_title', ''),
(721, 165, '_slideshow_item_0_title', 'field_5ce666199c957'),
(722, 165, 'slideshow_item_0_summary', 'Chuyến đi chơi quẩy tẹc ga của gia đình nhà Pomm'),
(723, 165, '_slideshow_item_0_summary', 'field_5ce666319c958'),
(724, 165, 'slideshow_item_0_link_to', ''),
(725, 165, '_slideshow_item_0_link_to', 'field_5ce6663f9c959'),
(726, 165, 'slideshow_item_1_image', '144'),
(727, 165, '_slideshow_item_1_image', 'field_5ce6660b9c956'),
(728, 165, 'slideshow_item_1_title', 'Pomm đi khai giảng'),
(729, 165, '_slideshow_item_1_title', 'field_5ce666199c957'),
(730, 165, 'slideshow_item_1_summary', 'Hôm nay Pomm đi học mẫu giáo'),
(731, 165, '_slideshow_item_1_summary', 'field_5ce666319c958'),
(732, 165, 'slideshow_item_1_link_to', ''),
(733, 165, '_slideshow_item_1_link_to', 'field_5ce6663f9c959'),
(734, 165, 'slideshow_item', '2'),
(735, 165, '_slideshow_item', 'field_5ce665e89c955'),
(736, 165, 'block_item_0_block_title', 'Giới thiệu về Pomm'),
(737, 165, '_block_item_0_block_title', 'field_5ce6646d5c0d7'),
(738, 165, 'block_item_0_block_summary', '<img class=\"alignnone size-full wp-image-155\" src=\"http://pomm.com/wp-content/uploads/2019/05/58463177_2842984189064269_4382529090616295424_n.jpg\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ut.'),
(739, 165, '_block_item_0_block_summary', 'field_5ce664905c0d8'),
(740, 165, 'block_item_0_read_more_text', 'Xem thêm'),
(741, 165, '_block_item_0_read_more_text', 'field_5ce664fa5c0da'),
(742, 165, 'block_item_0_read_more_link', ''),
(743, 165, '_block_item_0_read_more_link', 'field_5ce664ff5c0db'),
(744, 165, 'block_item_0_read_more', ''),
(745, 165, '_block_item_0_read_more', 'field_5ce664d95c0d9'),
(746, 165, 'block_item', '3'),
(747, 165, '_block_item', 'field_5ce663feb679e'),
(748, 165, 'block_item_1_block_title', 'Bài viết của Pomm'),
(749, 165, '_block_item_1_block_title', 'field_5ce6646d5c0d7'),
(750, 165, 'block_item_1_block_summary', '<img class=\"alignnone size-full wp-image-149\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange-mid.png\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nNam lorem urna, vitae ultrices ac pellentesque tincidunt augue.'),
(751, 165, '_block_item_1_block_summary', 'field_5ce664905c0d8'),
(752, 165, 'block_item_1_read_more_text', 'Xem bài viết của Pomm'),
(753, 165, '_block_item_1_read_more_text', 'field_5ce664fa5c0da'),
(754, 165, 'block_item_1_read_more_link', ''),
(755, 165, '_block_item_1_read_more_link', 'field_5ce664ff5c0db'),
(756, 165, 'block_item_1_read_more', ''),
(757, 165, '_block_item_1_read_more', 'field_5ce664d95c0d9'),
(758, 165, 'block_item_2_block_title', 'Hình ảnh của Pomm'),
(759, 165, '_block_item_2_block_title', 'field_5ce6646d5c0d7'),
(760, 165, 'block_item_2_block_summary', 'Nam lorem urna, vitae ultrices ac pellentesque tincidunt augue.\r\n\r\n<img class=\"alignnone size-full wp-image-151\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow-mid.png\" alt=\"\" width=\"285\" height=\"186\" />'),
(761, 165, '_block_item_2_block_summary', 'field_5ce664905c0d8'),
(762, 165, 'block_item_2_read_more_text', 'Xem hình ảnh của Pomm'),
(763, 165, '_block_item_2_read_more_text', 'field_5ce664fa5c0da'),
(764, 165, 'block_item_2_read_more_link', ''),
(765, 165, '_block_item_2_read_more_link', 'field_5ce664ff5c0db'),
(766, 165, 'block_item_2_read_more', ''),
(767, 165, '_block_item_2_read_more', 'field_5ce664d95c0d9'),
(768, 166, 'body_css_classes', ''),
(769, 166, '_body_css_classes', 'field_5b0d264d72cde'),
(770, 166, 'slideshow_item_0_image', '145'),
(771, 166, '_slideshow_item_0_image', 'field_5ce6660b9c956'),
(772, 166, 'slideshow_item_0_title', 'Gia đình Pomm đi picnic'),
(773, 166, '_slideshow_item_0_title', 'field_5ce666199c957'),
(774, 166, 'slideshow_item_0_summary', 'Chuyến đi chơi quẩy tẹc ga của gia đình nhà Pomm'),
(775, 166, '_slideshow_item_0_summary', 'field_5ce666319c958'),
(776, 166, 'slideshow_item_0_link_to', ''),
(777, 166, '_slideshow_item_0_link_to', 'field_5ce6663f9c959'),
(778, 166, 'slideshow_item_1_image', '144'),
(779, 166, '_slideshow_item_1_image', 'field_5ce6660b9c956'),
(780, 166, 'slideshow_item_1_title', 'Pomm đi khai giảng'),
(781, 166, '_slideshow_item_1_title', 'field_5ce666199c957'),
(782, 166, 'slideshow_item_1_summary', 'Hôm nay Pomm đi học mẫu giáo'),
(783, 166, '_slideshow_item_1_summary', 'field_5ce666319c958'),
(784, 166, 'slideshow_item_1_link_to', ''),
(785, 166, '_slideshow_item_1_link_to', 'field_5ce6663f9c959'),
(786, 166, 'slideshow_item', '2'),
(787, 166, '_slideshow_item', 'field_5ce665e89c955'),
(788, 166, 'block_item_0_block_title', 'Giới thiệu về Pomm'),
(789, 166, '_block_item_0_block_title', 'field_5ce6646d5c0d7'),
(790, 166, 'block_item_0_block_summary', '<img class=\"alignnone size-full wp-image-155\" src=\"http://pomm.com/wp-content/uploads/2019/05/58463177_2842984189064269_4382529090616295424_n.jpg\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ut.'),
(791, 166, '_block_item_0_block_summary', 'field_5ce664905c0d8'),
(792, 166, 'block_item_0_read_more_text', 'Xem thêm'),
(793, 166, '_block_item_0_read_more_text', 'field_5ce664fa5c0da'),
(794, 166, 'block_item_0_read_more_link', ''),
(795, 166, '_block_item_0_read_more_link', 'field_5ce664ff5c0db'),
(796, 166, 'block_item_0_read_more', ''),
(797, 166, '_block_item_0_read_more', 'field_5ce664d95c0d9'),
(798, 166, 'block_item', '3'),
(799, 166, '_block_item', 'field_5ce663feb679e'),
(800, 166, 'block_item_1_block_title', 'Bài viết của Pomm'),
(801, 166, '_block_item_1_block_title', 'field_5ce6646d5c0d7'),
(802, 166, 'block_item_1_block_summary', '<img class=\"alignnone size-full wp-image-149\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange-mid.png\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nNam lorem urna, vitae ultrices ac pellentesque tincidunt augue.'),
(803, 166, '_block_item_1_block_summary', 'field_5ce664905c0d8'),
(804, 166, 'block_item_1_read_more_text', 'Xem bài viết của Pomm'),
(805, 166, '_block_item_1_read_more_text', 'field_5ce664fa5c0da'),
(806, 166, 'block_item_1_read_more_link', ''),
(807, 166, '_block_item_1_read_more_link', 'field_5ce664ff5c0db'),
(808, 166, 'block_item_1_read_more', ''),
(809, 166, '_block_item_1_read_more', 'field_5ce664d95c0d9'),
(810, 166, 'block_item_2_block_title', 'Hình ảnh của Pomm'),
(811, 166, '_block_item_2_block_title', 'field_5ce6646d5c0d7'),
(812, 166, 'block_item_2_block_summary', 'Nam lorem urna, vitae ultrices ac pellentesque tincidunt augue.\r\n\r\n<img class=\"alignnone size-full wp-image-151\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow-mid.png\" alt=\"\" width=\"285\" height=\"186\" />'),
(813, 166, '_block_item_2_block_summary', 'field_5ce664905c0d8'),
(814, 166, 'block_item_2_read_more_text', 'Xem hình ảnh của Pomm'),
(815, 166, '_block_item_2_read_more_text', 'field_5ce664fa5c0da'),
(816, 166, 'block_item_2_read_more_link', ''),
(817, 166, '_block_item_2_read_more_link', 'field_5ce664ff5c0db'),
(818, 166, 'block_item_2_read_more', ''),
(819, 166, '_block_item_2_read_more', 'field_5ce664d95c0d9'),
(820, 167, '_edit_lock', '1559111614:2'),
(821, 168, '_menu_item_type', 'post_type'),
(822, 168, '_menu_item_menu_item_parent', '0'),
(823, 168, '_menu_item_object_id', '167'),
(824, 168, '_menu_item_object', 'page'),
(825, 168, '_menu_item_target', ''),
(826, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(827, 168, '_menu_item_xfn', ''),
(828, 168, '_menu_item_url', ''),
(829, 167, '_wp_page_template', 'page-templates/about.php'),
(830, 167, '_edit_last', '2'),
(831, 167, 'body_css_classes', ''),
(832, 167, '_body_css_classes', 'field_5b0d264d72cde'),
(837, 171, 'body_css_classes', ''),
(838, 171, '_body_css_classes', 'field_5b0d264d72cde'),
(839, 171, 'slideshow_item_0_image', '145'),
(840, 171, '_slideshow_item_0_image', 'field_5ce6660b9c956'),
(841, 171, 'slideshow_item_0_title', 'Gia đình Pomm đi picnic'),
(842, 171, '_slideshow_item_0_title', 'field_5ce666199c957'),
(843, 171, 'slideshow_item_0_summary', 'Chuyến đi chơi quẩy tẹc ga của gia đình nhà Pomm'),
(844, 171, '_slideshow_item_0_summary', 'field_5ce666319c958'),
(845, 171, 'slideshow_item_0_link_to', ''),
(846, 171, '_slideshow_item_0_link_to', 'field_5ce6663f9c959'),
(847, 171, 'slideshow_item_1_image', '144'),
(848, 171, '_slideshow_item_1_image', 'field_5ce6660b9c956'),
(849, 171, 'slideshow_item_1_title', 'Pomm đi khai giảng'),
(850, 171, '_slideshow_item_1_title', 'field_5ce666199c957'),
(851, 171, 'slideshow_item_1_summary', 'Hôm nay Pomm đi học mẫu giáo'),
(852, 171, '_slideshow_item_1_summary', 'field_5ce666319c958'),
(853, 171, 'slideshow_item_1_link_to', ''),
(854, 171, '_slideshow_item_1_link_to', 'field_5ce6663f9c959'),
(855, 171, 'slideshow_item', '2'),
(856, 171, '_slideshow_item', 'field_5ce665e89c955'),
(857, 171, 'block_item_0_block_title', 'Giới thiệu về Pomm'),
(858, 171, '_block_item_0_block_title', 'field_5ce6646d5c0d7'),
(859, 171, 'block_item_0_block_summary', '<img class=\"alignnone size-full wp-image-155\" src=\"http://pomm.com/wp-content/uploads/2019/05/58463177_2842984189064269_4382529090616295424_n.jpg\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ut.'),
(860, 171, '_block_item_0_block_summary', 'field_5ce664905c0d8'),
(861, 171, 'block_item_0_read_more_text', 'Xem thêm'),
(862, 171, '_block_item_0_read_more_text', 'field_5ce664fa5c0da'),
(863, 171, 'block_item_0_read_more_link', ''),
(864, 171, '_block_item_0_read_more_link', 'field_5ce664ff5c0db'),
(865, 171, 'block_item_0_read_more', ''),
(866, 171, '_block_item_0_read_more', 'field_5ce664d95c0d9'),
(867, 171, 'block_item', '3'),
(868, 171, '_block_item', 'field_5ce663feb679e'),
(869, 171, 'block_item_1_block_title', 'Bài viết của Pomm'),
(870, 171, '_block_item_1_block_title', 'field_5ce6646d5c0d7'),
(871, 171, 'block_item_1_block_summary', '<img class=\"alignnone size-full wp-image-149\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange-mid.png\" alt=\"\" width=\"285\" height=\"186\" />\r\n\r\nNam lorem urna, vitae ultrices ac pellentesque tincidunt augue.'),
(872, 171, '_block_item_1_block_summary', 'field_5ce664905c0d8'),
(873, 171, 'block_item_1_read_more_text', 'Xem bài viết của Pomm'),
(874, 171, '_block_item_1_read_more_text', 'field_5ce664fa5c0da'),
(875, 171, 'block_item_1_read_more_link', ''),
(876, 171, '_block_item_1_read_more_link', 'field_5ce664ff5c0db'),
(877, 171, 'block_item_1_read_more', ''),
(878, 171, '_block_item_1_read_more', 'field_5ce664d95c0d9'),
(879, 171, 'block_item_2_block_title', 'Hình ảnh của Pomm'),
(880, 171, '_block_item_2_block_title', 'field_5ce6646d5c0d7'),
(881, 171, 'block_item_2_block_summary', 'Nam lorem urna, vitae ultrices ac pellentesque tincidunt augue.\r\n\r\n<img class=\"alignnone size-full wp-image-151\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow-mid.png\" alt=\"\" width=\"285\" height=\"186\" />'),
(882, 171, '_block_item_2_block_summary', 'field_5ce664905c0d8'),
(883, 171, 'block_item_2_read_more_text', 'Xem hình ảnh của Pomm'),
(884, 171, '_block_item_2_read_more_text', 'field_5ce664fa5c0da'),
(885, 171, 'block_item_2_read_more_link', ''),
(886, 171, '_block_item_2_read_more_link', 'field_5ce664ff5c0db'),
(887, 171, 'block_item_2_read_more', ''),
(888, 171, '_block_item_2_read_more', 'field_5ce664d95c0d9'),
(891, 173, '_edit_lock', '1559118585:2'),
(892, 174, '_menu_item_type', 'post_type'),
(893, 174, '_menu_item_menu_item_parent', '0'),
(894, 174, '_menu_item_object_id', '173'),
(895, 174, '_menu_item_object', 'page'),
(896, 174, '_menu_item_target', ''),
(897, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(898, 174, '_menu_item_xfn', ''),
(899, 174, '_menu_item_url', ''),
(900, 173, '_edit_last', '2'),
(901, 173, 'body_css_classes', ''),
(902, 173, '_body_css_classes', 'field_5b0d264d72cde'),
(903, 175, 'body_css_classes', ''),
(904, 175, '_body_css_classes', 'field_5b0d264d72cde'),
(905, 176, '_edit_lock', '1559111761:2'),
(906, 177, '_menu_item_type', 'post_type'),
(907, 177, '_menu_item_menu_item_parent', '0'),
(908, 177, '_menu_item_object_id', '176'),
(909, 177, '_menu_item_object', 'page'),
(910, 177, '_menu_item_target', ''),
(911, 177, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(912, 177, '_menu_item_xfn', ''),
(913, 177, '_menu_item_url', ''),
(914, 176, '_edit_last', '2'),
(915, 176, 'body_css_classes', ''),
(916, 176, '_body_css_classes', 'field_5b0d264d72cde'),
(917, 178, 'body_css_classes', ''),
(918, 178, '_body_css_classes', 'field_5b0d264d72cde'),
(921, 167, 'classic-editor-remember', 'block-editor'),
(944, 195, 'body_css_classes', ''),
(945, 195, '_body_css_classes', 'field_5b0d264d72cde'),
(946, 196, '_wp_attached_file', '2019/05/blue.png'),
(947, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:90;s:4:\"file\";s:16:\"2019/05/blue.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(948, 197, '_wp_attached_file', '2019/05/green.png'),
(949, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:90;s:4:\"file\";s:17:\"2019/05/green.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(950, 198, '_wp_attached_file', '2019/05/orange.png'),
(951, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:90;s:4:\"file\";s:18:\"2019/05/orange.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(952, 199, '_wp_attached_file', '2019/05/yellow.png'),
(953, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:90;s:4:\"file\";s:18:\"2019/05/yellow.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 200, 'body_css_classes', ''),
(955, 200, '_body_css_classes', 'field_5b0d264d72cde'),
(956, 201, 'body_css_classes', ''),
(957, 201, '_body_css_classes', 'field_5b0d264d72cde'),
(958, 202, '_wp_attached_file', '2019/05/favicon2.ico'),
(959, 202, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:20:\"2019/05/favicon2.ico\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(960, 203, '_wp_trash_meta_status', 'publish'),
(961, 203, '_wp_trash_meta_time', '1559111219'),
(962, 176, '_wp_page_template', 'page-templates/blog.php'),
(963, 204, '_edit_last', '2'),
(964, 204, '_edit_lock', '1559112164:2'),
(967, 204, '_thumbnail_id', '151'),
(970, 206, '_thumbnail_id', '151'),
(971, 206, '_dp_original', '204'),
(972, 206, '_edit_lock', '1559118570:2'),
(973, 206, '_edit_last', '2'),
(976, 208, '_thumbnail_id', '151'),
(978, 208, '_dp_original', '206'),
(979, 209, '_thumbnail_id', '151'),
(981, 209, '_dp_original', '208'),
(982, 210, '_thumbnail_id', '151'),
(984, 210, '_dp_original', '208'),
(985, 211, '_thumbnail_id', '151'),
(987, 211, '_dp_original', '209'),
(988, 211, '_edit_last', '2'),
(989, 211, '_edit_lock', '1559113422:2'),
(992, 210, '_edit_lock', '1559112149:2'),
(993, 209, '_edit_lock', '1559112139:2'),
(994, 208, '_edit_lock', '1559112131:2'),
(995, 210, '_edit_last', '2'),
(998, 209, '_edit_last', '2'),
(1001, 208, '_edit_last', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
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
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 2, '2017-03-30 02:55:18', '2017-03-30 02:55:18', 'phuptqn@gmail.com\nphuptqn', 'phuptqn@gmail.com', '', 'publish', 'closed', 'closed', '', 'phuptqn-gmail-com', '', '', '2017-03-30 02:55:18', '2017-03-30 02:55:18', '', 0, 'http://wptwig.me/2017/03/23/phuptqn-gmail-com/', 0, 'flamingo_contact', '', 0),
(6, 2, '2017-03-23 11:22:26', '2017-03-23 11:22:26', 'wapuu@wordpress.example\nA WordPress Commenter', 'wapuu@wordpress.example', '', 'publish', 'closed', 'closed', '', 'wapuu-wordpress-example', '', '', '2017-03-23 11:22:26', '2017-03-23 11:22:26', '', 0, 'http://wptwig.me/2017/03/23/wapuu-wordpress-example/', 0, 'flamingo_contact', '', 0),
(16, 2, '2017-03-30 08:14:57', '2017-03-30 08:14:57', '<div id=\"pl-16\" class=\"panel-layout\">\n<div id=\"pg-16-0\" class=\"panel-grid panel-no-style\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;lsow_dark_bg&quot;:&quot;&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\" data-ratio=\"1\" data-ratio-direction=\"right\">\n<div id=\"pgc-16-0-0\" class=\"panel-grid-cell\" data-weight=\"1\">\n<div id=\"panel-16-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" data-label=\"Content\">\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">Home</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-05-29 03:19:43', '2019-05-29 03:19:43', '', 0, 'http://wptwig.me/?page_id=16', 0, 'page', '', 0),
(77, 2, '2018-05-29 09:50:23', '2018-05-29 09:50:23', 'http://wpextra.me/wp-content/uploads/2018/05/cropped-tom.jpg', 'cropped-tom.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-tom-jpg', '', '', '2018-05-29 09:50:23', '2018-05-29 09:50:23', '', 0, 'http://wpextra.me/wp-content/uploads/2018/05/cropped-tom.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 2, '2018-05-29 10:06:15', '2018-05-29 10:06:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Theme Options', 'theme-options', 'publish', 'closed', 'closed', '', 'group_5b0d25fc5900b', '', '', '2019-05-29 08:10:57', '2019-05-29 08:10:57', '', 0, 'http://wpextra.me/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 2, '2018-05-29 10:08:15', '2018-05-29 10:08:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Body CSS Classes', 'body-css-classes', 'publish', 'closed', 'closed', '', 'group_5b0d262117525', '', '', '2018-05-29 10:12:18', '2018-05-29 10:12:18', '', 0, 'http://wpextra.me/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 2, '2018-05-29 10:08:15', '2018-05-29 10:08:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Body CSS Classes', 'body_css_classes', 'publish', 'closed', 'closed', '', 'field_5b0d264d72cde', '', '', '2018-05-29 10:08:15', '2018-05-29 10:08:15', '', 83, 'http://wpextra.me/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(115, 2, '2018-05-30 14:39:40', '2018-05-30 14:39:40', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Extra Code', 'extra_code', 'publish', 'closed', 'closed', '', 'field_5b0eb6fd5b71a', '', '', '2018-05-30 14:39:40', '2018-05-30 14:39:40', '', 82, 'http://wpextra.me/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 2, '2018-05-30 14:39:40', '2018-05-30 14:39:40', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Code Before Head Closing', 'code_before_head_closing', 'publish', 'closed', 'closed', '', 'field_5b0eb72b5b71b', '', '', '2018-05-30 14:39:40', '2018-05-30 14:39:40', '', 82, 'http://wpextra.me/?post_type=acf-field&p=116', 1, 'acf-field', '', 0),
(117, 2, '2018-05-30 14:39:40', '2018-05-30 14:39:40', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Code After Body Opening', 'code_after_body_opening', 'publish', 'closed', 'closed', '', 'field_5b0eb7865b71c', '', '', '2018-05-30 14:39:40', '2018-05-30 14:39:40', '', 82, 'http://wpextra.me/?post_type=acf-field&p=117', 2, 'acf-field', '', 0),
(118, 2, '2018-05-30 14:39:41', '2018-05-30 14:39:41', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Code Before Body Closing', 'code_before_body_closing', 'publish', 'closed', 'closed', '', 'field_5b0eb79c5b71d', '', '', '2018-05-30 14:39:41', '2018-05-30 14:39:41', '', 82, 'http://wpextra.me/?post_type=acf-field&p=118', 3, 'acf-field', '', 0),
(127, 2, '2019-05-23 08:02:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-23 08:02:19', '0000-00-00 00:00:00', '', 0, 'http://pomm.com/?p=127', 0, 'post', '', 0),
(129, 2, '2019-05-23 09:09:37', '2019-05-23 09:09:37', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-05-23 09:09:37', '2019-05-23 09:09:37', '', 0, 'http://pomm.com/wp-content/uploads/2019/05/logo.png', 0, 'attachment', 'image/png', 0),
(130, 2, '2019-05-23 09:09:42', '2019-05-23 09:09:42', '{\n    \"pomm-theme::custom_logo\": {\n        \"value\": 129,\n        \"type\": \"theme_mod\",\n        \"user_id\": 2,\n        \"date_modified_gmt\": \"2019-05-23 09:09:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca934d77-8e69-4c79-bc75-a78edaa7d62a', '', '', '2019-05-23 09:09:42', '2019-05-23 09:09:42', '', 0, 'http://pomm.com/ca934d77-8e69-4c79-bc75-a78edaa7d62a/', 0, 'customize_changeset', '', 0),
(131, 2, '2019-05-23 09:12:55', '2019-05-23 09:12:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Block', 'home-block', 'publish', 'closed', 'closed', '', 'group_5ce663fb20243', '', '', '2019-05-23 09:20:21', '2019-05-23 09:20:21', '', 0, 'http://pomm.com/?post_type=acf-field-group&#038;p=131', 0, 'acf-field-group', '', 0),
(132, 2, '2019-05-23 09:12:55', '2019-05-23 09:12:55', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_5ce6646d5c0d7\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:9:\"Add Block\";}', 'Block item', 'block_item', 'publish', 'closed', 'closed', '', 'field_5ce663feb679e', '', '', '2019-05-23 09:20:20', '2019-05-23 09:20:20', '', 131, 'http://pomm.com/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0),
(133, 2, '2019-05-23 09:17:12', '2019-05-23 09:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Block title', 'block_title', 'publish', 'closed', 'closed', '', 'field_5ce6646d5c0d7', '', '', '2019-05-23 09:17:12', '2019-05-23 09:17:12', '', 132, 'http://pomm.com/?post_type=acf-field&p=133', 0, 'acf-field', '', 0),
(134, 2, '2019-05-23 09:17:12', '2019-05-23 09:17:12', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Block summary', 'block_summary', 'publish', 'closed', 'closed', '', 'field_5ce664905c0d8', '', '', '2019-05-23 09:18:42', '2019-05-23 09:18:42', '', 132, 'http://pomm.com/?post_type=acf-field&#038;p=134', 1, 'acf-field', '', 0),
(135, 2, '2019-05-23 09:17:12', '2019-05-23 09:17:12', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Read more', 'read_more', 'publish', 'closed', 'closed', '', 'field_5ce664d95c0d9', '', '', '2019-05-23 09:17:12', '2019-05-23 09:17:12', '', 132, 'http://pomm.com/?post_type=acf-field&p=135', 2, 'acf-field', '', 0),
(136, 2, '2019-05-23 09:17:12', '2019-05-23 09:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_5ce664fa5c0da', '', '', '2019-05-23 09:17:12', '2019-05-23 09:17:12', '', 135, 'http://pomm.com/?post_type=acf-field&p=136', 0, 'acf-field', '', 0),
(137, 2, '2019-05-23 09:17:12', '2019-05-23 09:17:12', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5ce664ff5c0db', '', '', '2019-05-23 09:17:12', '2019-05-23 09:17:12', '', 135, 'http://pomm.com/?post_type=acf-field&p=137', 1, 'acf-field', '', 0),
(138, 2, '2019-05-23 09:22:26', '2019-05-23 09:22:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home slidershow', 'home-slidershow', 'publish', 'closed', 'closed', '', 'group_5ce665e1989d4', '', '', '2019-05-23 09:34:22', '2019-05-23 09:34:22', '', 0, 'http://pomm.com/?post_type=acf-field-group&#038;p=138', 0, 'acf-field-group', '', 0),
(139, 2, '2019-05-23 09:22:26', '2019-05-23 09:22:26', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_5ce6660b9c956\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:9:\"Add Slide\";}', 'Slideshow item', 'slideshow_item', 'publish', 'closed', 'closed', '', 'field_5ce665e89c955', '', '', '2019-05-23 09:27:41', '2019-05-23 09:27:41', '', 138, 'http://pomm.com/?post_type=acf-field&#038;p=139', 0, 'acf-field', '', 0),
(140, 2, '2019-05-23 09:22:26', '2019-05-23 09:22:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5ce6660b9c956', '', '', '2019-05-23 09:34:22', '2019-05-23 09:34:22', '', 139, 'http://pomm.com/?post_type=acf-field&#038;p=140', 0, 'acf-field', '', 0),
(141, 2, '2019-05-23 09:22:27', '2019-05-23 09:22:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5ce666199c957', '', '', '2019-05-23 09:22:27', '2019-05-23 09:22:27', '', 139, 'http://pomm.com/?post_type=acf-field&p=141', 1, 'acf-field', '', 0),
(142, 2, '2019-05-23 09:22:27', '2019-05-23 09:22:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'field_5ce666319c958', '', '', '2019-05-23 09:22:27', '2019-05-23 09:22:27', '', 139, 'http://pomm.com/?post_type=acf-field&p=142', 2, 'acf-field', '', 0),
(143, 2, '2019-05-23 09:22:27', '2019-05-23 09:22:27', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Link to', 'link_to', 'publish', 'closed', 'closed', '', 'field_5ce6663f9c959', '', '', '2019-05-23 09:22:27', '2019-05-23 09:22:27', '', 139, 'http://pomm.com/?post_type=acf-field&p=143', 3, 'acf-field', '', 0),
(144, 2, '2019-05-23 09:25:07', '2019-05-23 09:25:07', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2019-05-23 09:25:07', '2019-05-23 09:25:07', '', 16, 'http://pomm.com/wp-content/uploads/2019/05/03.png', 0, 'attachment', 'image/png', 0),
(145, 2, '2019-05-23 09:25:07', '2019-05-23 09:25:07', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2019-05-23 09:25:07', '2019-05-23 09:25:07', '', 16, 'http://pomm.com/wp-content/uploads/2019/05/02.png', 0, 'attachment', 'image/png', 0),
(149, 2, '2019-05-23 09:28:29', '2019-05-23 09:28:29', '', 'orange-mid', '', 'inherit', 'open', 'closed', '', 'orange-mid', '', '', '2019-05-23 09:28:29', '2019-05-23 09:28:29', '', 16, 'http://pomm.com/wp-content/uploads/2019/05/orange-mid.png', 0, 'attachment', 'image/png', 0),
(151, 2, '2019-05-23 09:29:51', '2019-05-23 09:29:51', '', 'yellow-mid', '', 'inherit', 'open', 'closed', '', 'yellow-mid', '', '', '2019-05-23 09:29:51', '2019-05-23 09:29:51', '', 16, 'http://pomm.com/wp-content/uploads/2019/05/yellow-mid.png', 0, 'attachment', 'image/png', 0),
(155, 2, '2019-05-23 10:13:04', '2019-05-23 10:13:04', '', '58463177_2842984189064269_4382529090616295424_n', '', 'inherit', 'open', 'closed', '', '58463177_2842984189064269_4382529090616295424_n', '', '', '2019-05-23 10:13:04', '2019-05-23 10:13:04', '', 16, 'http://pomm.com/wp-content/uploads/2019/05/58463177_2842984189064269_4382529090616295424_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 2, '2019-05-23 10:13:48', '2019-05-23 10:13:48', '<div id=\"pl-16\" class=\"panel-layout\">\n<div id=\"pg-16-0\" class=\"panel-grid panel-no-style\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;lsow_dark_bg&quot;:&quot;&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\" data-ratio=\"1\" data-ratio-direction=\"right\">\n<div id=\"pgc-16-0-0\" class=\"panel-grid-cell\" data-weight=\"1\">\n<div id=\"panel-16-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" data-label=\"Content\">\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">Home</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-23 10:13:48', '2019-05-23 10:13:48', '', 16, 'http://pomm.com/16-revision-v1/', 0, 'revision', '', 0),
(158, 2, '2019-05-28 17:29:56', '2019-05-28 17:29:56', ' ', '', '', 'publish', 'closed', 'closed', '', '158', '', '', '2019-05-29 03:21:14', '2019-05-29 03:21:14', '', 0, 'http://pomm.com/?p=158', 1, 'nav_menu_item', '', 0),
(159, 2, '2019-05-28 17:29:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-28 17:29:10', '0000-00-00 00:00:00', '', 0, 'http://pomm.com/?p=159', 1, 'nav_menu_item', '', 0),
(160, 2, '2019-05-28 17:29:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-28 17:29:11', '0000-00-00 00:00:00', '', 0, 'http://pomm.com/?p=160', 1, 'nav_menu_item', '', 0),
(164, 2, '2019-05-28 17:33:54', '2019-05-28 17:33:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Footer copyright', 'footer_copyright', 'publish', 'closed', 'closed', '', 'field_5ced70f0b6e6d', '', '', '2019-05-28 17:33:54', '2019-05-28 17:33:54', '', 82, 'http://pomm.com/?post_type=acf-field&p=164', 4, 'acf-field', '', 0),
(165, 2, '2019-05-28 17:45:47', '2019-05-28 17:45:47', '<div id=\"pl-16\" class=\"panel-layout\">\n<div id=\"pg-16-0\" class=\"panel-grid panel-no-style\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;lsow_dark_bg&quot;:&quot;&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\" data-ratio=\"1\" data-ratio-direction=\"right\">\n<div id=\"pgc-16-0-0\" class=\"panel-grid-cell\" data-weight=\"1\">\n<div id=\"panel-16-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" data-label=\"Content\">\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">Home</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-28 17:45:47', '2019-05-28 17:45:47', '', 16, 'http://pomm.com/16-revision-v1/', 0, 'revision', '', 0),
(166, 2, '2019-05-28 17:46:01', '2019-05-28 17:46:01', '<div id=\"pl-16\" class=\"panel-layout\">\n<div id=\"pg-16-0\" class=\"panel-grid panel-no-style\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;lsow_dark_bg&quot;:&quot;&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\" data-ratio=\"1\" data-ratio-direction=\"right\">\n<div id=\"pgc-16-0-0\" class=\"panel-grid-cell\" data-weight=\"1\">\n<div id=\"panel-16-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" data-label=\"Content\">\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">Home</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-28 17:46:01', '2019-05-28 17:46:01', '', 16, 'http://pomm.com/16-revision-v1/', 0, 'revision', '', 0),
(167, 2, '2019-05-29 03:05:24', '2019-05-29 03:05:24', '<h2 class=\"green-title\">About kindergarten</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"gallery\"><li><img class=\"alignnone size-full wp-image-196\" src=\"http://pomm.com/wp-content/uploads/2019/05/blue.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-197\" src=\"http://pomm.com/wp-content/uploads/2019/05/green.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-198\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-199\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow.png\" alt=\"\" width=\"125\" height=\"90\" /></li></ul><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><a class=\"button red\" href=\"http://pomm.com/hinh-anh/\">SEE PHOTO GALLERY</a></p><p class=\"separator\"> </p><h2 class=\"green-title\">Academic program and activities</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><a class=\"button red\" href=\"http://pomm.com/blog/\">See Blog</a></p>', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-05-29 06:09:22', '2019-05-29 06:09:22', '', 0, 'http://pomm.com/?page_id=167', 0, 'page', '', 0),
(168, 2, '2019-05-29 03:05:24', '2019-05-29 03:05:24', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2019-05-29 03:21:14', '2019-05-29 03:21:14', '', 0, 'http://pomm.com/168/', 2, 'nav_menu_item', '', 0),
(171, 2, '2019-05-29 03:19:40', '2019-05-29 03:19:40', '<div id=\"pl-16\" class=\"panel-layout\">\n<div id=\"pg-16-0\" class=\"panel-grid panel-no-style\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;lsow_dark_bg&quot;:&quot;&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\" data-ratio=\"1\" data-ratio-direction=\"right\">\n<div id=\"pgc-16-0-0\" class=\"panel-grid-cell\" data-weight=\"1\">\n<div id=\"panel-16-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" data-label=\"Content\">\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">Home</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-29 03:19:40', '2019-05-29 03:19:40', '', 16, 'http://pomm.com/16-revision-v1/', 0, 'revision', '', 0),
(173, 2, '2019-05-29 03:20:22', '2019-05-29 03:20:22', '<!-- wp:tadv/classic-paragraph /-->', 'Hình ảnh', '', 'publish', 'closed', 'closed', '', 'hinh-anh', '', '', '2019-05-29 03:20:24', '2019-05-29 03:20:24', '', 0, 'http://pomm.com/?page_id=173', 0, 'page', '', 0),
(174, 2, '2019-05-29 03:20:23', '2019-05-29 03:20:23', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2019-05-29 03:21:14', '2019-05-29 03:21:14', '', 0, 'http://pomm.com/174/', 4, 'nav_menu_item', '', 0),
(175, 2, '2019-05-29 03:20:22', '2019-05-29 03:20:22', '<!-- wp:tadv/classic-paragraph /-->', 'Hình ảnh', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-05-29 03:20:22', '2019-05-29 03:20:22', '', 173, 'http://pomm.com/173-revision-v1/', 0, 'revision', '', 0),
(176, 2, '2019-05-29 03:20:38', '2019-05-29 03:20:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-05-29 06:36:06', '2019-05-29 06:36:06', '', 0, 'http://pomm.com/?page_id=176', 0, 'page', '', 0),
(177, 2, '2019-05-29 03:20:38', '2019-05-29 03:20:38', ' ', '', '', 'publish', 'closed', 'closed', '', '177', '', '', '2019-05-29 03:21:14', '2019-05-29 03:21:14', '', 0, 'http://pomm.com/177/', 3, 'nav_menu_item', '', 0),
(178, 2, '2019-05-29 03:20:38', '2019-05-29 03:20:38', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2019-05-29 03:20:38', '2019-05-29 03:20:38', '', 176, 'http://pomm.com/176-revision-v1/', 0, 'revision', '', 0),
(183, 2, '2019-05-29 06:00:05', '2019-05-29 06:00:05', '<h2 class=\"green-title\">About kindergarten</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul><li><img class=\"alignnone size-full wp-image-196\" src=\"http://pomm.com/wp-content/uploads/2019/05/blue.png\" alt=\"\" width=\"125\" height=\"90\" data-wp-editing=\"1\" /></li><li><img class=\"alignnone size-full wp-image-197\" src=\"http://pomm.com/wp-content/uploads/2019/05/green.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-198\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-199\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow.png\" alt=\"\" width=\"125\" height=\"90\" /></li></ul><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><a class=\"button red\" href=\"http://pomm.com/hinh-anh/\">SEE PHOTO GALLERY</a></p><p class=\"separator\"> </p><h2 class=\"green-title\">Academic program and activities</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><a class=\"button red\" href=\"http://pomm.com/blog/\">See Blog</a></p>', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '167-autosave-v1', '', '', '2019-05-29 06:00:05', '2019-05-29 06:00:05', '', 167, 'http://pomm.com/167-autosave-v1/', 0, 'revision', '', 0),
(195, 2, '2019-05-29 05:56:00', '2019-05-29 05:56:00', '<h2 class=\"green-title\">About kindergarten</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><a class=\"button red\" href=\"http://pomm.com/hinh-anh/\">SEE PHOTO GALLERY</a></p><p class=\"separator\"> </p><h2 class=\"green-title\">Academic program and activities</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><a class=\"button red\" href=\"http://pomm.com/blog/\">See Blog</a></p>', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2019-05-29 05:56:00', '2019-05-29 05:56:00', '', 167, 'http://pomm.com/167-revision-v1/', 0, 'revision', '', 0),
(196, 2, '2019-05-29 05:57:11', '2019-05-29 05:57:11', '', 'blue', '', 'inherit', 'closed', 'closed', '', 'blue', '', '', '2019-05-29 05:57:11', '2019-05-29 05:57:11', '', 167, 'http://pomm.com/wp-content/uploads/2019/05/blue.png', 0, 'attachment', 'image/png', 0),
(197, 2, '2019-05-29 05:57:12', '2019-05-29 05:57:12', '', 'green', '', 'inherit', 'closed', 'closed', '', 'green', '', '', '2019-05-29 05:57:12', '2019-05-29 05:57:12', '', 167, 'http://pomm.com/wp-content/uploads/2019/05/green.png', 0, 'attachment', 'image/png', 0),
(198, 2, '2019-05-29 05:57:12', '2019-05-29 05:57:12', '', 'orange', '', 'inherit', 'closed', 'closed', '', 'orange', '', '', '2019-05-29 05:57:12', '2019-05-29 05:57:12', '', 167, 'http://pomm.com/wp-content/uploads/2019/05/orange.png', 0, 'attachment', 'image/png', 0),
(199, 2, '2019-05-29 05:57:12', '2019-05-29 05:57:12', '', 'yellow', '', 'inherit', 'closed', 'closed', '', 'yellow', '', '', '2019-05-29 05:57:12', '2019-05-29 05:57:12', '', 167, 'http://pomm.com/wp-content/uploads/2019/05/yellow.png', 0, 'attachment', 'image/png', 0),
(200, 2, '2019-05-29 05:58:03', '2019-05-29 05:58:03', '<h2 class=\"green-title\">About kindergarten</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul><li><img class=\"alignnone size-full wp-image-196\" src=\"http://pomm.com/wp-content/uploads/2019/05/blue.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-197\" src=\"http://pomm.com/wp-content/uploads/2019/05/green.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-198\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-199\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow.png\" alt=\"\" width=\"125\" height=\"90\" /></li></ul><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><a class=\"button red\" href=\"http://pomm.com/hinh-anh/\">SEE PHOTO GALLERY</a></p><p class=\"separator\"> </p><h2 class=\"green-title\">Academic program and activities</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><a class=\"button red\" href=\"http://pomm.com/blog/\">See Blog</a></p>', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2019-05-29 05:58:03', '2019-05-29 05:58:03', '', 167, 'http://pomm.com/167-revision-v1/', 0, 'revision', '', 0),
(201, 2, '2019-05-29 06:09:22', '2019-05-29 06:09:22', '<h2 class=\"green-title\">About kindergarten</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><ul class=\"gallery\"><li><img class=\"alignnone size-full wp-image-196\" src=\"http://pomm.com/wp-content/uploads/2019/05/blue.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-197\" src=\"http://pomm.com/wp-content/uploads/2019/05/green.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-198\" src=\"http://pomm.com/wp-content/uploads/2019/05/orange.png\" alt=\"\" width=\"125\" height=\"90\" /></li><li><img class=\"alignnone size-full wp-image-199\" src=\"http://pomm.com/wp-content/uploads/2019/05/yellow.png\" alt=\"\" width=\"125\" height=\"90\" /></li></ul><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><a class=\"button red\" href=\"http://pomm.com/hinh-anh/\">SEE PHOTO GALLERY</a></p><p class=\"separator\"> </p><h2 class=\"green-title\">Academic program and activities</h2><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><a class=\"button red\" href=\"http://pomm.com/blog/\">See Blog</a></p>', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2019-05-29 06:09:22', '2019-05-29 06:09:22', '', 167, 'http://pomm.com/167-revision-v1/', 0, 'revision', '', 0),
(202, 2, '2019-05-29 06:26:53', '2019-05-29 06:26:53', '', 'favicon2', '', 'inherit', 'closed', 'closed', '', 'favicon2', '', '', '2019-05-29 06:26:53', '2019-05-29 06:26:53', '', 0, 'http://pomm.com/wp-content/uploads/2019/05/favicon2.ico', 0, 'attachment', 'image/x-icon', 0),
(203, 2, '2019-05-29 06:26:59', '2019-05-29 06:26:59', '{\n    \"site_icon\": {\n        \"value\": 202,\n        \"type\": \"option\",\n        \"user_id\": 2,\n        \"date_modified_gmt\": \"2019-05-29 06:26:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bf3f193c-382f-4459-b694-687955169b5b', '', '', '2019-05-29 06:26:59', '2019-05-29 06:26:59', '', 0, 'http://pomm.com/bf3f193c-382f-4459-b694-687955169b5b/', 0, 'customize_changeset', '', 0),
(204, 2, '2019-05-29 06:41:37', '2019-05-29 06:41:37', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.<!--more--> Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'publish', 'closed', 'open', '', 'nice-blog-post', '', '', '2019-05-29 06:45:07', '2019-05-29 06:45:07', '', 0, 'http://pomm.com/?p=204', 0, 'post', '', 0),
(205, 2, '2019-05-29 06:41:37', '2019-05-29 06:41:37', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-05-29 06:41:37', '2019-05-29 06:41:37', '', 204, 'http://pomm.com/204-revision-v1/', 0, 'revision', '', 0),
(206, 2, '2019-05-29 06:43:11', '2019-05-29 06:43:11', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'publish', 'closed', 'open', '', 'nice-blog-post-2', '', '', '2019-05-29 06:45:13', '2019-05-29 06:45:13', '', 0, 'http://pomm.com/?p=206', 0, 'post', '', 0),
(207, 2, '2019-05-29 06:43:11', '2019-05-29 06:43:11', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2019-05-29 06:43:11', '2019-05-29 06:43:11', '', 206, 'http://pomm.com/206-revision-v1/', 0, 'revision', '', 0),
(208, 2, '2019-05-29 06:44:12', '2019-05-29 06:44:12', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'publish', 'closed', 'open', '', 'nice-blog-post-6', '', '', '2019-05-29 06:44:33', '2019-05-29 06:44:33', '', 0, 'http://pomm.com/?p=208', 0, 'post', '', 0),
(209, 2, '2019-05-29 06:44:10', '2019-05-29 06:44:10', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'publish', 'closed', 'open', '', 'nice-blog-post-5', '', '', '2019-05-29 06:44:41', '2019-05-29 06:44:41', '', 0, 'http://pomm.com/?p=209', 0, 'post', '', 0),
(210, 2, '2019-05-29 06:44:08', '2019-05-29 06:44:08', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'publish', 'closed', 'open', '', 'nice-blog-post-4', '', '', '2019-05-29 06:44:51', '2019-05-29 06:44:51', '', 0, 'http://pomm.com/?p=210', 0, 'post', '', 0),
(211, 2, '2019-05-29 06:43:24', '2019-05-29 06:43:24', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'publish', 'closed', 'open', '', 'nice-blog-post-3', '', '', '2019-05-29 06:45:20', '2019-05-29 06:45:20', '', 0, 'http://pomm.com/?p=211', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(212, 2, '2019-05-29 06:43:52', '2019-05-29 06:43:52', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2019-05-29 06:43:52', '2019-05-29 06:43:52', '', 211, 'http://pomm.com/211-revision-v1/', 0, 'revision', '', 0),
(213, 2, '2019-05-29 06:44:08', '2019-05-29 06:44:08', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2019-05-29 06:44:08', '2019-05-29 06:44:08', '', 210, 'http://pomm.com/210-revision-v1/', 0, 'revision', '', 0),
(214, 2, '2019-05-29 06:44:10', '2019-05-29 06:44:10', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2019-05-29 06:44:10', '2019-05-29 06:44:10', '', 209, 'http://pomm.com/209-revision-v1/', 0, 'revision', '', 0),
(215, 2, '2019-05-29 06:44:12', '2019-05-29 06:44:12', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-05-29 06:44:12', '2019-05-29 06:44:12', '', 208, 'http://pomm.com/208-revision-v1/', 0, 'revision', '', 0),
(216, 2, '2019-05-29 06:44:33', '2019-05-29 06:44:33', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-05-29 06:44:33', '2019-05-29 06:44:33', '', 208, 'http://pomm.com/208-revision-v1/', 0, 'revision', '', 0),
(217, 2, '2019-05-29 06:44:41', '2019-05-29 06:44:41', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2019-05-29 06:44:41', '2019-05-29 06:44:41', '', 209, 'http://pomm.com/209-revision-v1/', 0, 'revision', '', 0),
(218, 2, '2019-05-29 06:44:51', '2019-05-29 06:44:51', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2019-05-29 06:44:51', '2019-05-29 06:44:51', '', 210, 'http://pomm.com/210-revision-v1/', 0, 'revision', '', 0),
(219, 2, '2019-05-29 06:45:07', '2019-05-29 06:45:07', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.<!--more--> Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-05-29 06:45:07', '2019-05-29 06:45:07', '', 204, 'http://pomm.com/204-revision-v1/', 0, 'revision', '', 0),
(220, 2, '2019-05-29 06:45:13', '2019-05-29 06:45:13', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2019-05-29 06:45:13', '2019-05-29 06:45:13', '', 206, 'http://pomm.com/206-revision-v1/', 0, 'revision', '', 0),
(221, 2, '2019-05-29 06:45:20', '2019-05-29 06:45:20', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <!--more-->Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'nice blog post', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2019-05-29 06:45:20', '2019-05-29 06:45:20', '', 211, 'http://pomm.com/211-revision-v1/', 0, 'revision', '', 0),
(222, 2, '2019-05-29 07:07:27', '2019-05-29 07:07:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Read more text', 'read_more_text', 'publish', 'closed', 'closed', '', 'field_5cee2f6390d5b', '', '', '2019-05-29 07:07:27', '2019-05-29 07:07:27', '', 82, 'http://pomm.com/?post_type=acf-field&p=222', 5, 'acf-field', '', 0),
(223, 2, '2019-05-29 08:10:57', '2019-05-29 08:10:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Next text', 'button_next_text', 'publish', 'closed', 'closed', '', 'field_5cee3e72297ea', '', '', '2019-05-29 08:10:57', '2019-05-29 08:10:57', '', 82, 'http://pomm.com/?post_type=acf-field&p=223', 6, 'acf-field', '', 0),
(224, 2, '2019-05-29 08:10:57', '2019-05-29 08:10:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Previous text', 'button_previous_text', 'publish', 'closed', 'closed', '', 'field_5cee3e84297eb', '', '', '2019-05-29 08:10:57', '2019-05-29 08:10:57', '', 82, 'http://pomm.com/?post_type=acf-field&p=224', 7, 'acf-field', '', 0),
(225, 2, '2019-05-29 08:32:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-29 08:32:12', '0000-00-00 00:00:00', '', 0, 'http://pomm.com/?post_type=acf-field-group&p=225', 0, 'acf-field-group', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Contact Form 7', 'contact-form-7', 0),
(3, 'Contact form 1', 'contact-form-1', 0),
(4, 'Main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(158, 4, 0),
(168, 4, 0),
(174, 4, 0),
(177, 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
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
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'flamingo_inbound_channel', '', 0, 0),
(3, 3, 'flamingo_inbound_channel', '', 2, 0),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(33, 2, 'nickname', 'admin'),
(34, 2, 'first_name', 'PHAN'),
(35, 2, 'last_name', 'UKISM'),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'syntax_highlighting', 'true'),
(39, 2, 'comment_shortcuts', 'false'),
(40, 2, 'admin_color', 'fresh'),
(41, 2, 'use_ssl', '0'),
(42, 2, 'show_admin_bar_front', 'false'),
(43, 2, 'locale', ''),
(44, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(45, 2, 'wp_user_level', '10'),
(46, 2, '_yoast_wpseo_profile_updated', '1527650246'),
(47, 2, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice,plugin_editor_notice'),
(48, 2, 'session_tokens', 'a:2:{s:64:\"5121cd2e00d968e1e3c9e39d202c3ed97eaea53f1f42839be5a3173ea9e8a508\";a:4:{s:10:\"expiration\";i:1559236561;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:5:\"login\";i:1559063761;}s:64:\"f5c8cdc0c7865d939daeea0b1e493ab20534a69b551785af117c6d894331c987\";a:4:{s:10:\"expiration\";i:1559271843;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:5:\"login\";i:1559099043;}}'),
(49, 2, 'wp_dashboard_quick_press_last_post_id', '127'),
(51, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(52, 2, 'wpseo_title', ''),
(53, 2, 'wpseo_metadesc', ''),
(54, 2, 'wpseo_noindex_author', ''),
(55, 2, 'wpseo_content_analysis_disable', ''),
(56, 2, 'wpseo_keyword_analysis_disable', ''),
(57, 2, 'googleplus', ''),
(58, 2, 'twitter', ''),
(59, 2, 'facebook', ''),
(60, 2, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&editor_expand=on&ed_size=255&hidetb=0'),
(61, 2, 'wp_user-settings-time', '1559111198'),
(62, 2, 'closedpostboxes_page', 'a:2:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";}'),
(63, 2, 'metaboxhidden_page', 'a:3:{i:0;s:11:\"postexcerpt\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";}'),
(64, 2, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(66, 2, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(67, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(68, 2, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"23d1335b619022207f15509824c2b37f\";s:8:\"newemail\";s:21:\"nhatphamcdn@gmail.com\";}'),
(69, 2, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:60:\"acf-group_5b0d262117525,submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:58:\"postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(70, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(71, 2, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(72, 2, 'nav_menu_recently_edited', '4'),
(73, 2, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
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
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'admin', '$P$BQp7uN6/YS4CU6Yir25rwE8D6ynyqV1', 'admin', 'admin@wpextra.me', 'http://pomm.com', '2018-05-30 03:15:36', '', 0, 'UKISM PHAN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(2, 0, 0),
(4, 0, 0),
(7, 0, 0),
(16, 0, 0),
(17, 0, 0),
(67, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(119, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1369;
--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
