-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 04 2018 г., 23:29
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `akwatoria`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://akwatoria:8080', 'yes'),
(2, 'home', 'http://akwatoria:8080', 'yes'),
(3, 'blogname', 'AkwaToria', 'yes'),
(4, 'blogdescription', 'Доставка питної води в Києві - Акваторія вода для дому і для офісу', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '1grazymike@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%', 'yes'),
(29, 'rewrite_rules', 'a:98:{s:34:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$\";s:40:\"index.php?xml_sitemap=params=$matches[2]\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$\";s:49:\"index.php?xml_sitemap=params=$matches[2];zip=true\";s:35:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$\";s:50:\"index.php?xml_sitemap=params=$matches[2];html=true\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$\";s:59:\"index.php?xml_sitemap=params=$matches[2];html=true;zip=true\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=35&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:2;s:25:\"breadcrumb/breadcrumb.php\";i:3;s:41:\"filenames-to-latin/filenames-to-latin.php\";i:4;s:36:\"google-sitemap-generator/sitemap.php\";i:5;s:41:\"navz-photo-gallery/navz-photo-gallery.php\";i:6;s:33:\"wp-translitera/wp-translitera.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'akwatoria', 'yes'),
(41, 'stylesheet', 'akwatoria', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '35', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1541362387;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1541380387;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1541423624;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541427563;a:1:{s:13:\"sm_ping_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541432899;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:1:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:1540492748;}', 'yes'),
(153, 'wp_translitera', 'a:1:{s:7:\"version\";s:6:\"p1.2.5\";}', 'yes'),
(154, 'sm_rewrite_done', '$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $', 'yes'),
(157, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538227354;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(158, 'current_theme', 'akwaToria', 'yes'),
(159, 'theme_mods_akwatoria', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(162, 'sm_options', 'a:52:{s:18:\"sm_b_prio_provider\";s:41:\"GoogleSitemapGeneratorPrioByCountProvider\";s:9:\"sm_b_ping\";b:1;s:10:\"sm_b_stats\";b:0;s:12:\"sm_b_pingmsn\";b:1;s:12:\"sm_b_autozip\";b:1;s:11:\"sm_b_memory\";s:0:\"\";s:9:\"sm_b_time\";i:-1;s:18:\"sm_b_style_default\";b:1;s:10:\"sm_b_style\";s:0:\"\";s:12:\"sm_b_baseurl\";s:0:\"\";s:11:\"sm_b_robots\";b:1;s:9:\"sm_b_html\";b:1;s:12:\"sm_b_exclude\";a:0:{}s:17:\"sm_b_exclude_cats\";a:0:{}s:10:\"sm_in_home\";b:1;s:11:\"sm_in_posts\";b:1;s:15:\"sm_in_posts_sub\";b:0;s:11:\"sm_in_pages\";b:1;s:10:\"sm_in_cats\";b:0;s:10:\"sm_in_arch\";b:0;s:10:\"sm_in_auth\";b:0;s:10:\"sm_in_tags\";b:0;s:9:\"sm_in_tax\";a:0:{}s:17:\"sm_in_customtypes\";a:0:{}s:13:\"sm_in_lastmod\";b:1;s:10:\"sm_cf_home\";s:5:\"daily\";s:11:\"sm_cf_posts\";s:7:\"monthly\";s:11:\"sm_cf_pages\";s:6:\"weekly\";s:10:\"sm_cf_cats\";s:6:\"weekly\";s:10:\"sm_cf_auth\";s:6:\"weekly\";s:15:\"sm_cf_arch_curr\";s:5:\"daily\";s:14:\"sm_cf_arch_old\";s:6:\"yearly\";s:10:\"sm_cf_tags\";s:6:\"weekly\";s:10:\"sm_pr_home\";d:1;s:11:\"sm_pr_posts\";d:0.59999999999999998;s:15:\"sm_pr_posts_min\";d:0.20000000000000001;s:11:\"sm_pr_pages\";d:0.59999999999999998;s:10:\"sm_pr_cats\";d:0.29999999999999999;s:10:\"sm_pr_arch\";d:0.29999999999999999;s:10:\"sm_pr_auth\";d:0.29999999999999999;s:10:\"sm_pr_tags\";d:0.29999999999999999;s:12:\"sm_i_donated\";b:0;s:17:\"sm_i_hide_donated\";b:0;s:17:\"sm_i_install_date\";i:1538312578;s:16:\"sm_i_hide_survey\";b:0;s:14:\"sm_i_hide_note\";b:0;s:15:\"sm_i_hide_works\";b:0;s:16:\"sm_i_hide_donors\";b:0;s:9:\"sm_i_hash\";s:20:\"f298392b46cff9c892c4\";s:13:\"sm_i_lastping\";i:1540492318;s:16:\"sm_i_supportfeed\";b:1;s:22:\"sm_i_supportfeed_cache\";i:1541360775;}', 'yes'),
(163, 'sm_status', 'O:28:\"GoogleSitemapGeneratorStatus\":4:{s:39:\"\0GoogleSitemapGeneratorStatus\0startTime\";d:1540492317.45243;s:37:\"\0GoogleSitemapGeneratorStatus\0endTime\";d:1540492317.707906;s:41:\"\0GoogleSitemapGeneratorStatus\0pingResults\";a:2:{s:6:\"google\";a:5:{s:9:\"startTime\";d:1540492317.453558;s:7:\"endTime\";d:1540492317.525892;s:7:\"success\";b:0;s:3:\"url\";s:91:\"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Fakwatoria%2Fsitemap.xml\";s:4:\"name\";s:6:\"Google\";}s:4:\"bing\";a:5:{s:9:\"startTime\";d:1540492317.528935;s:7:\"endTime\";d:1540492317.699717;s:7:\"success\";b:1;s:3:\"url\";s:84:\"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Fakwatoria%2Fsitemap.xml\";s:4:\"name\";s:4:\"Bing\";}}s:38:\"\0GoogleSitemapGeneratorStatus\0autoSave\";b:1;}', 'no'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(210, 'new_admin_email', '1grazymike@gmail.com', 'yes'),
(373, 'category_children', 'a:1:{i:3;a:2:{i:0;i:4;i:1;i:9;}}', 'yes'),
(541, 'acf_version', '5.7.7', 'yes'),
(561, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(573, 'breadcrumb_text', '', 'yes'),
(574, 'breadcrumb_separator', '', 'yes'),
(575, 'breadcrumb_word_char', 'word', 'yes'),
(576, 'breadcrumb_word_char_count', '', 'yes'),
(577, 'breadcrumb_word_char_end', '', 'yes'),
(578, 'breadcrumb_font_size', '', 'yes'),
(579, 'breadcrumb_link_color', '', 'yes'),
(580, 'breadcrumb_separator_color', '', 'yes'),
(581, 'breadcrumb_bg_color', '', 'yes'),
(582, 'breadcrumb_themes', 'theme1', 'yes'),
(583, 'breadcrumb_display_home', 'no', 'yes'),
(612, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1541360768;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(613, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1541360766;s:7:\"checked\";a:1:{s:9:\"akwatoria\";s:5:\"0.1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(616, '_site_transient_timeout_theme_roots', '1541362566', 'no'),
(617, '_site_transient_theme_roots', 'a:1:{s:9:\"akwatoria\";s:7:\"/themes\";}', 'no'),
(619, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1541360771;s:8:\"response\";a:1:{s:41:\"filenames-to-latin/filenames-to-latin.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/filenames-to-latin\";s:4:\"slug\";s:18:\"filenames-to-latin\";s:6:\"plugin\";s:41:\"filenames-to-latin/filenames-to-latin.php\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/filenames-to-latin/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/filenames-to-latin.2.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/filenames-to-latin_e3e3da.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/filenames-to-latin/assets/banner-772x250.png?rev=835137\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:41:\"navz-photo-gallery/navz-photo-gallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/navz-photo-gallery\";s:4:\"slug\";s:18:\"navz-photo-gallery\";s:6:\"plugin\";s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/navz-photo-gallery/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.6.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=1561241\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=1561242\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"breadcrumb/breadcrumb.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/breadcrumb\";s:4:\"slug\";s:10:\"breadcrumb\";s:6:\"plugin\";s:25:\"breadcrumb/breadcrumb.php\";s:11:\"new_version\";s:5:\"1.5.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/breadcrumb/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/breadcrumb.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/breadcrumb/assets/icon-128x128.png?rev=1363440\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/breadcrumb/assets/banner-772x250.png?rev=1363440\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/google-sitemap-generator\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:5:\"4.0.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-256x256.png?rev=1701944\";s:2:\"1x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-128x128.png?rev=1701944\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/google-sitemap-generator/assets/banner-772x250.png?rev=1701944\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-translitera/wp-translitera.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-translitera\";s:4:\"slug\";s:14:\"wp-translitera\";s:6:\"plugin\";s:33:\"wp-translitera/wp-translitera.php\";s:11:\"new_version\";s:6:\"p1.2.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-translitera/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-translitera.p1.2.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-translitera.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(620, '_transient_timeout_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', '1541965575', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(621, '_transient_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:371:\"\n\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n			\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n							\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WordPress.org Forums » [Google XML Sitemaps] Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/plugin/google-sitemap-generator/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Nov 2018 19:40:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://bbpress.org/?v=2.6-alpha-6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:30:{i:0;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/dont-want-a-sub-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Don´t want a sub-sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/dont-want-a-sub-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Nov 2018 19:19:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:291:\"\n						\n						<p>Replies: 0</p>\n						<p>&#8220;&#8221;This file contains links to sub-sitemaps, follow them to see the actual sitemap content.&#8221;&#8221;</p>\n<p>Good day,<br />\nhow make a normal XML in one page and not a &#8220;Sub&#8221;? No option to disable it&#8230;</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"18TommyBoy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/php-7-2-compatible-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"PHP 7.2 Compatible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/php-7-2-compatible-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Nov 2018 11:58:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello, is this plugin PHP 7.2 Compatible?</p>\n<p>Thanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Elliot Taylor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/no-sitemap-xml-generated/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"no sitemap.xml generated\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/no-sitemap-xml-generated/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Nov 2018 08:58:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:238:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi guys,</p>\n<p>very basic question &#8211; after instalation, no sitemap.xml is generated, only sitemap.html.</p>\n<p>Webserver is NGINX. Any reasonable idea appreciated</p>\n<p>Jan</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"dakarcz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/support/topic/does-this-work-with-multisite-8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Does this work with multisite?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/support/topic/does-this-work-with-multisite-8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Oct 2018 19:38:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:265:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi,</p>\n<p>I&#8217;m running a multisite installation where each sub-site has it&#8217;s own domain name. Will this plugin work in that environment? Will it create site maps for each sub-site?</p>\n<p>Thanks!</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"VFHwebdev\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/support/topic/archive-pages-13/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Archive Pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/support/topic/archive-pages-13/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Oct 2018 18:47:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:374:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello There,</p>\n<p>I have a website with a custom post type called events.<br />\nI use a template file called archive-events.php as my program overview.</p>\n<p>This plugins puts all the urls for the events in the sitemap but how can i also add the archive ( /events ) to the sitemap?</p>\n<p>All the best</p>\n<p>Leon</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"leonleonleon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/how-to-custom-robots-txt/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"How to custom robots.txt?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/how-to-custom-robots-txt/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Oct 2018 06:56:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"\n						\n						<p>Replies: 0</p>\n						<p>How to custom robots.txt?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"thangnv27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/exclude-custom-taxonomy-terms/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Exclude Custom Taxonomy Terms\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/exclude-custom-taxonomy-terms/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 29 Oct 2018 20:00:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:400:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello,</p>\n<p>I want to exclude certain taxonomy terms but include all the others. I have the box checked for my taxonomy for it to be included and saw the exclude box but I was unsure how to enter this type of information there.</p>\n<p>Also if I wanted to exclude posts from a custom post type would I do this by ID as well?</p>\n<p>Thank you</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"LoriKBG\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.org/support/topic/how-do-i-exclude-a-webpage/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"How do I exclude a webpage?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.org/support/topic/how-do-i-exclude-a-webpage/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 25 Oct 2018 08:49:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:470:\"\n						\n						<p>Replies: 2</p>\n						<p>There is a box to include pages but where is the box to exclude pages?</p>\n\n\n<ul id=\"bbp-topic-revision-log-10814378\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10814378-item-10814379\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 week, 3 days ago by <a href=\"https://wordpress.org/support/users/a4jpcom/\" title=\"View a4jp . com&#039;s profile\">a4jp . com</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"a4jp . com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wordpress.org/support/topic/sitemap-contains-urls-which-are-blocked-by-robots-txt-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Sitemap contains urls which are blocked by robots.txt.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wordpress.org/support/topic/sitemap-contains-urls-which-are-blocked-by-robots-txt-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Oct 2018 10:19:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:502:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi,</p>\n<p>I have this error:</p>\n<p>Sitemap contains urls which are blocked by robots.txt.</p>\n<p>Here is the link to sitemap:</p>\n<p><a href=\"https://wallpaperscart.com/sitemap.xml\" rel=\"nofollow\">https://wallpaperscart.com/sitemap.xml</a></p>\n<p>And here is the link to robots.txt:</p>\n<p><a href=\"https://wallpaperscart.com/robots.txt\" rel=\"nofollow\">https://wallpaperscart.com/robots.txt</a></p>\n<p>Thanks in advance,<br />\nWallpapers Cart</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"wallpaperscarts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/support/topic/im-confused-about-notifying-google/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"I&amp;#8217;m confused about notifying Google\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/support/topic/im-confused-about-notifying-google/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 19 Oct 2018 18:45:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:648:\"\n						\n						<p>Replies: 0</p>\n						<p>I installed an activated this plugin since I read that that&#8217;s all you had to do to get it working. Looking at the Settings page, I see &#8220;Search engines haven&#8217;t been notified yet. Write a post to let them know about your sitemap.&#8221; so apparently there IS more than what was suggested.</p>\n<p>I don&#8217;t have posts on my site, just static pages. Where is this post supposed to go?</p>\n<p>When I go to the Google Search Console to verify, I&#8217;m instructed to download a google*.html file. Is this something I need in addition to your plugin?</p>\n<p>Please clarify.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"davids58\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wordpress.org/support/topic/generated-html-page-shows-blog-content/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Generated HTML page shows blog content?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wordpress.org/support/topic/generated-html-page-shows-blog-content/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 14 Oct 2018 04:29:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:553:\"\n						\n						<p>Replies: 0</p>\n						<p>The generated .html page shows an XML page with content from recent blog posts&#8230; but no internal links.</p>\n<p>I have disabled &#8220;Include sitemap in HTML format&#8221;. </p>\n<p>And the xml content starts like:</p>\n<p>&lt;channel&gt;<br />\n	&lt;title&gt;Page not found &#8211; Bobs Plumbing Inc.&lt;/title&gt;</p>\n<p>I would rather there be no index.html page if it is going to show strange content like this. How do I disable or fix this? Or is this how it is supposed to be presenting?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"imaginemonkey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/old-sitemaps-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Old Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/old-sitemaps-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Oct 2018 17:19:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:565:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi,</p>\n<p>This is such a smashing plugin!</p>\n<p>I have a small issue&#8230;</p>\n<p>The sitemaps generated are generating sitemaps that go way back to 2014?</p>\n<p>How do I delete these so they show only recent ones i.e. 2018 please?</p>\n<p>It&#8217;s creating all sorts of issues with spiders and bots looking for URL&#8217;s that don&#8217;t exist anymore?</p>\n<p>Many Thanks</p>\n<p><em>[ <a href=\"https://wordpress.org/support/guidelines/#do-not-bump-posts\" rel=\"nofollow\">Please do not bump.</a> ]</em></p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Rik0399\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/bug-with-wpml-5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"bug with WPML\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/support/topic/bug-with-wpml-5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Oct 2018 12:18:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:323:\"\n						\n						<p>Replies: 0</p>\n						<p>I have WPML with 2 languages but the 2nd lang is switch off, this is the /sitemap-home.xml</p>\n<p>mystite.com?lang=1<br />\nmystite.com?lang=2<br />\nmystite.com?lang=3<br />\nmystite.com?lang=4<br />\n&#8230; </p>\n<p>is mad!!!</p>\n<p>There is a solution?</p>\n<p>Thanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"entest1661\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wordpress.org/support/topic/how-do-i-exclude-a-category-from-the-xml-sitemap-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"How do I exclude a category from the XML sitemap in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wordpress.org/support/topic/how-do-i-exclude-a-category-from-the-xml-sitemap-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Oct 2018 22:55:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:890:\"\n						\n						<p>Replies: 0</p>\n						<p>i have a lot of Draft Pages in my wordpress CMS. There are too many to go through to mark as exclude.  They are all in one category.  I want to<strong> not </strong>place a specific category (or taxonomy, which ever is easier) in my XML sitemap.  The reason is, Google will index Draft and private pages and I don&#8217;t want that because they will come up 404.</p>\n<p>How do I exclude a category from the XML sitemap in WordPress with this plugin</p>\n<p>What do I put in the Functions.php file ?</p>\n\n\n<ul id=\"bbp-topic-revision-log-10747955\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10747955-item-10747956\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month ago by <a href=\"https://wordpress.org/support/users/rgranlund/\" title=\"View rgranlund&#039;s profile\">rgranlund</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"rgranlund\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/support/topic/sitemap-index-pending/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Sitemap Index Pending\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/support/topic/sitemap-index-pending/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Oct 2018 18:31:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1564:\"\n						\n						<p>Replies: 0</p>\n						<p>I will try and be as thorough as I can be here.</p>\n<p>I was using Yoast SEO&#8217;s site map for a very long time. However, I found a few bugs and issues so I decided to DEACTIVATE and go with Google XML MAPS.</p>\n<p>Heres what is odd:</p>\n<p>I checked and at <a href=\"https://www.usedpart.us/robots.txt\" rel=\"nofollow\">https://www.usedpart.us/robots.txt</a> nothing is blocked on there at all.</p>\n<p>So I go to my search console as well as Bing Webmaster Tools:</p>\n<p>I input &#8220;https://www.usedpart.us/sitemap.xml&#8221; for almost 8 days now just says pending.</p>\n<p>I have 21,380 or so urls. So, I go and remove the usedpart.us/sitemap.xml url, and replace with all the sub folders of the sitemap. Now, it shows how many urls were submitted per each folder in the site map, but pending (I know it take a day or two)</p>\n<p>Heres where I&#8217;m confused: why didn&#8217;t it even show how many urls were submitted when I just put the <a href=\"https://www.usedpart.us/sitemap.xml\" rel=\"nofollow\">https://www.usedpart.us/sitemap.xml</a>?</p>\n<p>I did notice one of the sitemap folders had almost 14k urls, should or could I break those into other folders to reduce the amount or does that not matter?</p>\n<p>I would send a screen shot of all options I have selected on my settings, but it doesnt give me the ability. The upload sitemap into virtual robots.txt is UNCHECKED because in my FTP files I have a robots.txt.</p>\n<p>Should I remove and reinstall the plug in? Anyone see this this before?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"usedpartus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/support/topic/site-map-showing-as-plain-text-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"site map showing as plain text\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/support/topic/site-map-showing-as-plain-text-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Oct 2018 16:27:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"\n						\n						<p>Replies: 1</p>\n						<p>hi<br />\nSite map generated shows like a plain text, plz help</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"qashifbashir\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/support/topic/sitemap-html-submitted-url-marked-noindex/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"sitemap.html Submitted URL marked ‘noindex’\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/support/topic/sitemap-html-submitted-url-marked-noindex/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 28 Sep 2018 03:59:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:867:\"\n						\n						<p>Replies: 2</p>\n						<p>I have face one error in Google Search Console<br />\nSo please provide appropriate solution for how can we solved this error message.</p>\n<p>Error message is: &#8220;Submitted URL marked ‘noindex’&#8221; in sitemap.html</p>\n<p>Thanks</p>\n\n\n<ul id=\"bbp-topic-revision-log-10731399\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10731399-item-10731400\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 1 week ago by <a href=\"https://wordpress.org/support/users/csem/\" title=\"View csem&#039;s profile\">csem</a>.\n	</li>\n	<li id=\"bbp-topic-revision-log-10731399-item-10731402\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 1 week ago by <a href=\"https://wordpress.org/support/users/csem/\" title=\"View csem&#039;s profile\">csem</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"csem\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/support/topic/sitemap-html-not-index/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"sitemap.html not index\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/support/topic/sitemap-html-not-index/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Sep 2018 09:19:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:328:\"\n						\n						<p>Replies: 1</p>\n						<p>I have facing one issue in sitemap.html</p>\n<p>Why sitemap.html is &lt;meta name=&#8221;robots&#8221; content=&#8221;noindex,follow&#8221; /&gt;</p>\n<p>I have checked your plugin file and removed this line </p>\n<p>So can you please tell me it is ok or not</p>\n<p>Thanks </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"csem\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/support/topic/tag-site-map-error-no-tag-indexing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Tag Site Map Error/ No Tag Indexing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/support/topic/tag-site-map-error-no-tag-indexing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Sep 2018 07:42:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:143:\"\n						\n						<p>Replies: 2</p>\n						<p>Dear plugin unable to create tag sitemap please do the need full as soon as possible </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"sandeeprana51\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/error-with-custom-mysql-ports/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Error with custom mysql ports\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/error-with-custom-mysql-ports/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 18 Sep 2018 21:09:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:991:\"\n						\n						<p>Replies: 0</p>\n						<p>If you use custom ports for the mysql server different than 3306, the plugin will fail creating the sitemap.</p>\n<p>The error can be found in the line 1881 of file sitemap-core.php in the following line:</p>\n<p>$con = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);</p>\n<p>Usually, if you use custom mysql ports you can add it to the global define DB_HOST like &#8216;localhost:20001&#8217; and wordpress will work fine. The problem is mysqli_connect will accept the custom port as a parameter after DB_NAME. To fix this issue I replaced this line by:</p>\n<p>$db_host = DB_HOST;<br />\n$db_port = 3306;<br />\nif (strpos($db_host, &#8216;:&#8217;)!==false) {<br />\n    $arr_host = explode(&#8216;:&#8217;,$db_host);<br />\n    $db_host = $arr_host[0];<br />\n    $db_port = $arr_host[1];<br />\n}<br />\n$con = mysqli_connect($db_host,DB_USER,DB_PASSWORD,DB_NAME,$db_port);</p>\n<p>I hope this info helps someone with the same problem.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"danielvispoblog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/sitemap-works-with-https-but-not-https-www/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"sitemap works with https:// but not https://www\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/sitemap-works-with-https-but-not-https-www/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 01:54:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:721:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello!</p>\n<p>This plugin always worked for me, however today, I found out the sitemap is working here:<br />\n<a href=\"https://newmatnorcal.com/sitemap.xml\" rel=\"nofollow\">https://newmatnorcal.com/sitemap.xml</a></p>\n<p>But not here:<br />\n<a href=\"https://www.newmatnorcal.com/sitemap.xml\" rel=\"nofollow\">https://www.newmatnorcal.com/sitemap.xml</a></p>\n<p>I get:<br />\n&#8220;Error loading stylesheet: An unknown error has occurred (805303f4)&#8221;</p>\n<p>Wordpress is installed in a sub-directory&#8230; I do not wish to Override the base URL of the sitemap, I wish to appear in both locations 🙂</p>\n<p>Thanks for your help and Best Regards,<br />\nPhilippe</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"phdsigns\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/html-sitemap-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"HTML Sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/html-sitemap-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 16 Sep 2018 22:04:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:277:\"\n						\n						<p>Replies: 0</p>\n						<p>I would like an HTML page of the sitemap as part of my site.<br />\n&#8221; Include sitemap in HTML format (The required PHP XSL Module is not installed)&#8221;<br />\nHow do I get and install the required PHP XSL Module?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"JuliaClark\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/support/topic/white-dashboard-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"White Dashboard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/support/topic/white-dashboard-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 15 Sep 2018 04:19:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi there,<br />\nI have a crazy problem. I use your plugin for years on this site and many others. Only on this site, until now, my Dashboard turn complete white, there are no content if I turn on your plugin? I turned off all plugins to find out, then I turned on one by one&#8230; </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"lindebjerg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/support/topic/adding-users-to-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Adding users to sitemap.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/support/topic/adding-users-to-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 22:18:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1177:\"\n						\n						<p>Replies: 0</p>\n						<p>We have various roles for the users of the wordpress website. Google XML Sitemaps has option for adding user to sitemap only if they are authors. But I want users with the role of “professional” be added to sitemap even if they are not authors. Google XML Sitemaps adds my professionals only if they wrote something that is if they are also author. How can I do that?</p>\n<p>In my web site professionals have various categories. For example one of the categories is “psychiatrist” and a “professional” user’s url is “https://mywebsite.com/psychiatrist/john-doe/”.<br />\nThere are other users which are not professionals they are users with other roles and I don’t want them to be added to sitemap. For example such a user with other roles has url like this:<br />\n“https://mywebsite.com/user/george-michael/” (User detail page slug is “user”). </p>\n<p>“Users Sitemap &amp; Archive &#8211; WordPress Plugin” claims that it adds users to sitemap. Is it possible to use “Users Sitemap &amp; Archive &#8211; WordPress Plugin” and Google XML Sitemaps together?<br />\nThanks for your help.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"ersoyma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/disable-sub-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Disable sub-sitemaps?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/disable-sub-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 08:48:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:962:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi,<br />\ncurrently in my sitemap.xml there are following sub items:</p>\n<p>sitemap-misc.xml<br />\nsitemap-pt-portfolio-2018-09.xml<br />\nsitemap-pt-portfolio-2018-08.xml<br />\nsitemap-pt-portfolio-2018-02.xml<br />\nsitemap-pt-page-2018-06.xml</p>\n<p>How can I just have all items in that one main sitemap.xml?<br />\nAlso, why are the portfolio items seperated in different xmls? How can I change that?<br />\nAlso, since there was no note whatsoever but it is correct to disable the Sitemap on Jetpack, right? Otherwise only that sitemap is displayed?</p>\n<p>Thanks!</p>\n\n\n<ul id=\"bbp-topic-revision-log-10687592\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10687592-item-10687597\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 3 weeks ago by <a href=\"https://wordpress.org/support/users/kotanji/\" title=\"View Kotanji&#039;s profile\">Kotanji</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Kotanji\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/sitemap-not-showing-up-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Sitemap Not Showing Up!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/support/topic/sitemap-not-showing-up-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 03:50:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1789:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello there. I have installed the plugin on my client&#8217;s site that was recently converted to SSL. My hosting support team assures me that the permalinks have all been reset, but for some reason I am not finding an actual sitemap when I click the sitemap links. I see your screenshot examples have a sitemap as the third screenshot. Why does my site not have the actual sitemap please? What am I doing wrong here??</p>\n<p>Please see my screencaps below:</p>\n<p><a href=\"https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-11-at-1.20.24-PM-copy.png\" target=\"_blank\" rel=\"noopener noreferrer\" rel=\"nofollow\">https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-11-at-1.20.24-PM-copy.png</a></p>\n<p><a href=\"https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-11-at-1.19.53-PM-copy.png\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-11-at-1.19.53-PM-copy.png</a></p>\n<p><a href=\"https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-13-at-11.30.53-PM-copy.png\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-13-at-11.30.53-PM-copy.png</a></p>\n<p>I should see a page like this&#8230; Shouldn&#8217;t I?<br />\n<a href=\"https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-13-at-10.46.44-PM-copy.png\" rel=\"noopener noreferrer\" target=\"_blank\" rel=\"nofollow\">https://www.postmahomeimprovements.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-13-at-10.46.44-PM-copy.png</a></p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"auralanoue\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/support/topic/old-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Old Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/support/topic/old-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 10 Sep 2018 16:05:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:515:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi,</p>\n<p>First,</p>\n<p>Thanks for this plugin, far better than yoast (IMO)</p>\n<p>One issue please&#8230;</p>\n<p>The plugin seems to generate sitemaps from two years ago?  Since then of course, many of my links have changed etc and as a result it seems, spiders/bots are picking these up and pinging my site for them which of course are not there i.e. 404 problem.</p>\n<p>How do I update the sitemaps so the old ones are dropped please?</p>\n<p>Many Thanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Rik0399\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/single-sitemap-for-main-site-and-subfolder/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Single sitemap for main site and subfolder\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/single-sitemap-for-main-site-and-subfolder/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 10 Sep 2018 14:35:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:746:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi,</p>\n<p>I&#8217;m running a multisite installation with WordPress. </p>\n<p>I have created a main site at the domain and a second site in a subfolder of the main site at /news.</p>\n<p>For both sites I&#8217;ve used the &#8220;Google XML sitemap generator&#8221; plugin to successfully create sitemaps.</p>\n<p>Is there a way to include the sitemap for the second site (the one in the subfolder, /news) in the sitemap of the main site?</p>\n<p>I&#8217;ve tried to use the &#8220;Additional pages&#8221; option, by manually adding the URL /news/ to the sitemap of the main site, but it seems to be adding only one page, not the entire sitemap.</p>\n<p>Thanks for your support!</p>\n<p>massimo</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"mbortolotto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/support/topic/i-cant-add-new-urls-on-additional-pages-section/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"I can&amp;#8217;t add new URLs on &amp;#8220;Additional Pages&amp;#8221; section\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/support/topic/i-cant-add-new-urls-on-additional-pages-section/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 08 Sep 2018 10:00:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:543:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello, I can&#8217;t add new URLs to &#8220;Additional Pages&#8221; section. It stopped working a few days ago. Can you help please?</p>\n\n\n<ul id=\"bbp-topic-revision-log-10669176\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-10669176-item-10669177\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 3 weeks ago by <a href=\"https://wordpress.org/support/users/anwarhossain/\" title=\"View anwarhossain&#039;s profile\">anwarhossain</a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"anwarhossain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/support/topic/no-sitemap-files/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"No sitemap files\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/support/topic/no-sitemap-files/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 06 Sep 2018 11:47:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:186:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi, </p>\n<p>I have loaded the plugin, but I am getting an empty file. </p>\n<p>I&#8217;ve reset permalinks.</p>\n<p>Any thoughts? </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"gcooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:67:\"https://wordpress.org/support/plugin/google-sitemap-generator/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 04 Nov 2018 19:46:11 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130911010210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(622, '_transient_timeout_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1541965575', 'no'),
(623, '_transient_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1541360775', 'no'),
(624, '_transient_doing_cron', '1541363359.8647050857543945312500', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(21, 3, '_edit_lock', '1538322026:1'),
(29, 9, '_edit_last', '1'),
(30, 9, '_edit_lock', '1540491921:1'),
(34, 12, '_wp_attached_file', '2018/09/botle.jpg'),
(35, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:1098;s:4:\"file\";s:17:\"2018/09/botle.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"botle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"botle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"botle-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"botle-1024x1022.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"image-size-280x220\";a:4:{s:4:\"file\";s:17:\"botle-280x220.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"image-size-253x165\";a:4:{s:4:\"file\";s:17:\"botle-253x165.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 13, '_wp_attached_file', '2018/09/water.jpg'),
(37, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:1119;s:4:\"file\";s:17:\"2018/09/water.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"water-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"water-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"water-768x781.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:781;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"water-1007x1024.jpg\";s:5:\"width\";i:1007;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"image-size-280x220\";a:4:{s:4:\"file\";s:17:\"water-280x220.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"image-size-253x165\";a:4:{s:4:\"file\";s:17:\"water-253x165.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 16, '_edit_last', '1'),
(47, 16, '_edit_lock', '1540488755:1'),
(48, 16, '_thumbnail_id', '13'),
(53, 9, '_thumbnail_id', '12'),
(55, 18, '_edit_last', '1'),
(56, 18, '_edit_lock', '1538568722:1'),
(58, 20, '_edit_last', '1'),
(59, 20, '_edit_lock', '1538568771:1'),
(65, 24, '_edit_last', '1'),
(66, 24, '_edit_lock', '1540492173:1'),
(67, 26, '_menu_item_type', 'post_type'),
(68, 26, '_menu_item_menu_item_parent', '0'),
(69, 26, '_menu_item_object_id', '24'),
(70, 26, '_menu_item_object', 'page'),
(71, 26, '_menu_item_target', ''),
(72, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 26, '_menu_item_xfn', ''),
(74, 26, '_menu_item_url', ''),
(76, 27, '_menu_item_type', 'taxonomy'),
(77, 27, '_menu_item_menu_item_parent', '0'),
(78, 27, '_menu_item_object_id', '3'),
(79, 27, '_menu_item_object', 'category'),
(80, 27, '_menu_item_target', ''),
(81, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 27, '_menu_item_xfn', ''),
(83, 27, '_menu_item_url', ''),
(85, 28, '_menu_item_type', 'taxonomy'),
(86, 28, '_menu_item_menu_item_parent', '0'),
(87, 28, '_menu_item_object_id', '5'),
(88, 28, '_menu_item_object', 'category'),
(89, 28, '_menu_item_target', ''),
(90, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 28, '_menu_item_xfn', ''),
(92, 28, '_menu_item_url', ''),
(94, 29, '_menu_item_type', 'taxonomy'),
(95, 29, '_menu_item_menu_item_parent', '0'),
(96, 29, '_menu_item_object_id', '7'),
(97, 29, '_menu_item_object', 'category'),
(98, 29, '_menu_item_target', ''),
(99, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 29, '_menu_item_xfn', ''),
(101, 29, '_menu_item_url', ''),
(103, 30, '_edit_last', '1'),
(104, 30, '_edit_lock', '1539180426:1'),
(108, 24, 'price', 'від 50грн.'),
(109, 32, '_menu_item_type', 'post_type'),
(110, 32, '_menu_item_menu_item_parent', '0'),
(111, 32, '_menu_item_object_id', '30'),
(112, 32, '_menu_item_object', 'page'),
(113, 32, '_menu_item_target', ''),
(114, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 32, '_menu_item_xfn', ''),
(116, 32, '_menu_item_url', ''),
(117, 35, '_edit_last', '1'),
(118, 35, '_edit_lock', '1540490673:1'),
(119, 37, '_menu_item_type', 'post_type'),
(120, 37, '_menu_item_menu_item_parent', '0'),
(121, 37, '_menu_item_object_id', '35'),
(122, 37, '_menu_item_object', 'page'),
(123, 37, '_menu_item_target', ''),
(124, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 37, '_menu_item_xfn', ''),
(126, 37, '_menu_item_url', ''),
(127, 16, 'price', '800'),
(131, 9, 'price', '600'),
(133, 50, '_edit_last', '1'),
(134, 50, '_edit_lock', '1540491167:1'),
(136, 9, 'post_gallery', '13,12');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2018-09-29 16:13:06', '2018-09-29 13:13:06', '<h2>Кто мы</h2><p>Наш адрес сайта: http://akwatoria.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-29 16:13:06', '2018-09-29 13:13:06', '', 0, 'http://akwatoria/?page_id=3', 0, 'page', '', 0),
(9, 1, '2018-09-30 18:51:08', '2018-09-30 15:51:08', 'розміри:\r\nвисота: 120см;\r\nширина: 40см;\r\nдовжина: 45см;', 'Полка звичайна черна', '', 'publish', 'open', 'open', '', 'polka-zvichajna-cherna', '', '', '2018-10-25 21:16:17', '2018-10-25 18:16:17', '', 0, 'http://akwatoria/?p=9', 0, 'post', '', 0),
(11, 1, '2018-09-30 18:51:08', '2018-09-30 15:51:08', 'розміри:\r\nвисота: 120см;\r\nширина: 40см;\r\nдовжина: 45см;', 'Полка звичайна черна', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-09-30 18:51:08', '2018-09-30 15:51:08', '', 9, 'http://akwatoria/bez-rubriki/9-revision-v1', 0, 'revision', '', 0),
(12, 1, '2018-10-03 14:12:42', '2018-10-03 11:12:42', '', 'botle', '', 'inherit', 'open', 'closed', '', 'botle', '', '', '2018-10-03 14:12:42', '2018-10-03 11:12:42', '', 9, 'http://akwatoria/wp-content/uploads/2018/09/botle.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-10-03 14:12:49', '2018-10-03 11:12:49', '', 'water', '', 'inherit', 'open', 'closed', '', 'water', '', '', '2018-10-03 14:12:49', '2018-10-03 11:12:49', '', 9, 'http://akwatoria/wp-content/uploads/2018/09/water.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-10-03 14:17:14', '2018-10-03 11:17:14', 'розміри:\r\nвисота: 120см;\r\nширина: 40см;\r\nдовжина: 45см;', '2-level shalve', '', 'publish', 'open', 'open', '', '2-level-shalve', '', '', '2018-10-25 20:34:51', '2018-10-25 17:34:51', '', 0, 'http://akwatoria/?p=16', 0, 'post', '', 0),
(17, 1, '2018-10-03 14:17:14', '2018-10-03 11:17:14', 'розміри:\r\nвисота: 120см;\r\nширина: 40см;\r\nдовжина: 45см;', '2-level shalve', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-10-03 14:17:14', '2018-10-03 11:17:14', '', 16, 'http://akwatoria/bez-rubriki/16-revision-v1', 0, 'revision', '', 0),
(18, 1, '2018-10-03 15:14:20', '2018-10-03 12:14:20', '', 'First Dispenser', '', 'publish', 'open', 'open', '', 'first-dispenser', '', '', '2018-10-03 15:14:20', '2018-10-03 12:14:20', '', 0, 'http://akwatoria/?p=18', 0, 'post', '', 0),
(19, 1, '2018-10-03 15:14:20', '2018-10-03 12:14:20', '', 'First Dispenser', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-10-03 15:14:20', '2018-10-03 12:14:20', '', 18, 'http://akwatoria/bez-rubriki/18-revision-v1', 0, 'revision', '', 0),
(20, 1, '2018-10-03 15:14:44', '2018-10-03 12:14:44', '', 'First cooler', '', 'publish', 'open', 'open', '', 'first-cooler', '', '', '2018-10-03 15:14:50', '2018-10-03 12:14:50', '', 0, 'http://akwatoria/?p=20', 0, 'post', '', 0),
(21, 1, '2018-10-03 15:14:44', '2018-10-03 12:14:44', '', 'First cooler', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-03 15:14:44', '2018-10-03 12:14:44', '', 20, 'http://akwatoria/bez-rubriki/20-revision-v1', 0, 'revision', '', 0),
(24, 1, '2018-10-05 17:56:23', '2018-10-05 14:56:23', '<b>Про воду:</b>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Вода з артезіанської свердловини;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Екологічно чисте місце видобування (поблизу Конча-Заспа);</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Сучасна  система очистки води; </span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Вода, яка відповідає усім вимогам якості ТУ У 15.9-34575345-001:2009;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Збалансований мінеральний склад  води;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Сучасна екологічна тара з полікарбонату;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Адекватна ціна та безкоштовна доставка.  </span></li>\r\n</ul>', 'Ціна та доставка', '', 'publish', 'closed', 'closed', '', 'about_water', '', '', '2018-10-25 21:31:43', '2018-10-25 18:31:43', '', 0, 'http://akwatoria/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-10-05 17:56:23', '2018-10-05 14:56:23', 'сторінка про воду', 'Ціна та доставка', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-05 17:56:23', '2018-10-05 14:56:23', '', 24, 'http://akwatoria/bez-rubriki/24-revision-v1', 0, 'revision', '', 0),
(26, 1, '2018-10-05 17:57:06', '2018-10-05 14:57:06', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-10-09 19:39:20', '2018-10-09 16:39:20', '', 0, 'http://akwatoria/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2018-10-05 17:57:06', '2018-10-05 14:57:06', 'Від 800грн.', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-10-09 19:39:20', '2018-10-09 16:39:20', '', 0, 'http://akwatoria/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2018-10-05 17:57:06', '2018-10-05 14:57:06', 'Від 3000грн.', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-10-09 19:39:20', '2018-10-09 16:39:20', '', 0, 'http://akwatoria/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2018-10-05 17:57:06', '2018-10-05 14:57:06', 'Від 270грн.', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-10-09 19:39:20', '2018-10-09 16:39:20', '', 0, 'http://akwatoria/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-10-05 17:57:30', '2018-10-05 14:57:30', 'Сторінка контактів', 'Контакти', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-10-10 17:09:24', '2018-10-10 14:09:24', '', 0, 'http://akwatoria/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-10-05 17:57:30', '2018-10-05 14:57:30', 'Сторінка контактів', 'Контакти', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-10-05 17:57:30', '2018-10-05 14:57:30', '', 30, 'http://akwatoria/bez-rubriki/30-revision-v1', 0, 'revision', '', 0),
(32, 1, '2018-10-05 18:00:29', '2018-10-05 15:00:29', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-10-09 19:39:20', '2018-10-09 16:39:20', '', 0, 'http://akwatoria/?p=32', 6, 'nav_menu_item', '', 0),
(35, 1, '2018-10-09 19:35:55', '2018-10-09 16:35:55', '<table style=\"height: 90px;\" width=\"634\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>1 бутель</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>2-7 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>8-13 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>14+ бутлів</b></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>70 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>60 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>55 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>50 грн.</b></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Головна', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-25 21:06:51', '2018-10-25 18:06:51', '', 0, 'http://akwatoria/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-10-09 19:35:55', '2018-10-09 16:35:55', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-09 19:35:55', '2018-10-09 16:35:55', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(37, 1, '2018-10-09 19:38:10', '2018-10-09 16:38:10', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-10-09 19:39:20', '2018-10-09 16:39:20', '', 0, 'http://akwatoria/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-10-09 19:58:28', '2018-10-09 16:58:28', 'ssss', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-09 19:58:28', '2018-10-09 16:58:28', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(39, 1, '2018-10-09 20:39:33', '2018-10-09 17:39:33', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-09 20:39:33', '2018-10-09 17:39:33', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(40, 1, '2018-10-09 20:40:25', '2018-10-09 17:40:25', '<div class=\"info-block\">\r\n<p class=\"price_list _row\"><span class=\"_col info__col\">\r\n<span class=\"info__name\">1 бутель</span>\r\n<span class=\"info__value\">70 грн.</span>\r\n</span></p>\r\n<span class=\"_col info__col\">\r\n<span class=\"info__name\">2-7 бутлів</span>\r\n<span class=\"info__value\">60 грн.</span>\r\n</span>\r\n\r\n<span class=\"_col info__col\">\r\n<span class=\"info__name\">8-13 бутлів</span>\r\n<span class=\"info__value\">55 грн.</span>\r\n</span>\r\n\r\n<span class=\"_col info__col\">\r\n<span class=\"info__name\">14+ бутлів</span>\r\n<span class=\"info__value\">50 грн.</span>\r\n</span>\r\n\r\n</div>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-09 20:40:25', '2018-10-09 17:40:25', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(41, 1, '2018-10-25 21:04:13', '2018-10-25 18:04:13', '<table style=\"height: 90px;\" width=\"634\">\n<tbody>\n<tr>\n<td>\n<p style=\"text-align: center;\"><b>1 бутель</b></p>\n</td>\n<td>\n<p style=\"text-align: center;\"><b>2-7 бутлів</b></p>\n</td>\n<td>\n<p style=\"text-align: center;\"><b>8-13 бутлів</b></p>\n</td>\n<td>\n<p style=\"text-align: center;\"><b>14+ бутлів</b></p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"text-align: center;\"><b>70 грн.</b></p>\n</td>\n<td>\n<p style=\"text-align: center;\"><b>60 грн.</b></p>\n</td>\n<td>\n<p style=\"text-align: center;\"><b>55 грн.</b></p>\n</td>\n<td>\n<p style=\"text-align: center;\"><b>50 грн.</b></p>\n</td>\n</tr>\n</tbody>\n</table>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2018-10-25 21:04:13', '2018-10-25 18:04:13', '', 35, 'http://akwatoria/bez-rubriki/35-autosave-v1', 0, 'revision', '', 0),
(42, 1, '2018-10-09 20:43:56', '2018-10-09 17:43:56', '<table width=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>1 бутель</strong></p>\r\n</td>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>2-7 бутлів</strong></p>\r\n</td>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>8-13 бутлів</strong></p>\r\n</td>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>14+ бутлів</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>70 грн.</strong></p>\r\n</td>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>60 грн.</strong></p>\r\n</td>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>55 грн.</strong></p>\r\n</td>\r\n<td width=\"158\">\r\n<p style=\"text-align: center;\"><strong>50 грн.</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-09 20:43:56', '2018-10-09 17:43:56', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(44, 1, '2018-10-25 20:56:04', '2018-10-25 17:56:04', '<b>Про воду:</b>\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Вода з артезіанської свердловини;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Екологічно чисте місце видобування (поблизу Конча-Заспа);</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Сучасна  система очистки води; </span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Вода, яка відповідає усім вимогам якості ТУ У 15.9-34575345-001:2009;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Збалансований мінеральний склад  води;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Сучасна екологічна тара з полікарбонату;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Адекватна ціна та безкоштовна доставка.  </span></li>\r\n</ul>', 'Ціна та доставка', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-25 20:56:04', '2018-10-25 17:56:04', '', 24, 'http://akwatoria/bez-rubriki/24-revision-v1', 0, 'revision', '', 0),
(45, 1, '2018-10-25 20:56:14', '2018-10-25 17:56:14', '<b>Про воду:</b>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Вода з артезіанської свердловини;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Екологічно чисте місце видобування (поблизу Конча-Заспа);</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Сучасна  система очистки води; </span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Вода, яка відповідає усім вимогам якості ТУ У 15.9-34575345-001:2009;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Збалансований мінеральний склад  води;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Сучасна екологічна тара з полікарбонату;</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Адекватна ціна та безкоштовна доставка.  </span></li>\r\n</ul>', 'Ціна та доставка', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-25 20:56:14', '2018-10-25 17:56:14', '', 24, 'http://akwatoria/bez-rubriki/24-revision-v1', 0, 'revision', '', 0),
(46, 1, '2018-10-25 21:00:50', '2018-10-25 18:00:50', '&nbsp;\r\n<table style=\"height: 138px;\" width=\"634\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>1 бутель</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>2-7 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>8-13 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>14+ бутлів</b></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>70 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>60 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>55 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>50 грн.</b></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-25 21:00:50', '2018-10-25 18:00:50', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(47, 1, '2018-10-25 21:01:46', '2018-10-25 18:01:46', '<table style=\"height: 120px;\" width=\"634\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>1 бутель</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>2-7 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>8-13 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>14+ бутлів</b></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>70 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>60 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>55 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>50 грн.</b></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-25 21:01:46', '2018-10-25 18:01:46', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(48, 1, '2018-10-25 21:03:34', '2018-10-25 18:03:34', '<table style=\"height: 100px;\" width=\"634\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>1 бутель</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>2-7 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>8-13 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>14+ бутлів</b></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>70 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>60 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>55 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>50 грн.</b></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-25 21:03:34', '2018-10-25 18:03:34', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(49, 1, '2018-10-25 21:04:15', '2018-10-25 18:04:15', '<table style=\"height: 90px;\" width=\"634\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>1 бутель</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>2-7 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>8-13 бутлів</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>14+ бутлів</b></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"text-align: center;\"><b>70 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>60 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>55 грн.</b></p>\r\n</td>\r\n<td>\r\n<p style=\"text-align: center;\"><b>50 грн.</b></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Головна', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-25 21:04:15', '2018-10-25 18:04:15', '', 35, 'http://akwatoria/bez-rubriki/35-revision-v1', 0, 'revision', '', 0),
(50, 1, '2018-10-25 21:12:14', '2018-10-25 18:12:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Галерея', 'galereja', 'publish', 'closed', 'closed', '', 'group_5bd206f023f9f', '', '', '2018-10-25 21:15:04', '2018-10-25 18:15:04', '', 0, 'http://akwatoria/?post_type=acf-field-group&#038;p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2018-10-25 21:12:14', '2018-10-25 18:12:14', 'a:7:{s:4:\"type\";s:13:\"photo_gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:21:\"fields[Галерея\";a:1:{s:10:\"edit_modal\";s:7:\"Default\";}s:10:\"edit_modal\";s:7:\"Default\";}', 'Список зображень', 'post_gallery', 'publish', 'closed', 'closed', '', 'field_5bd2070c91f4d', '', '', '2018-10-25 21:15:04', '2018-10-25 18:15:04', '', 50, 'http://akwatoria/?post_type=acf-field&#038;p=51', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Головне меню', 'golovne-menju', 0),
(3, 'Полки', 'shelves', 0),
(4, 'Полки однорівневі', 'one-level-shalves', 0),
(5, 'Кулери', 'coolers', 0),
(6, 'Помпи', 'pumps', 0),
(7, 'Диспенсери', 'dispensers', 0),
(9, 'Полки двохрівневі', 'two-level-shalves', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(9, 3, 0),
(9, 4, 0),
(16, 3, 0),
(16, 9, 0),
(18, 7, 0),
(20, 5, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(32, 2, 0),
(37, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', 'Від 800грн.', 0, 2),
(4, 4, 'category', '', 3, 1),
(5, 5, 'category', 'Від 3000грн.', 0, 1),
(6, 6, 'category', 'Від 100грн.', 0, 0),
(7, 7, 'category', 'Від 270грн.', 0, 1),
(9, 9, 'category', '', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"a6ad44fff3c8a5a60d96b60ffd332c60a3eda8a34ca37f75e511819a29f141c2\";a:4:{s:10:\"expiration\";i:1540906324;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1540733524;}s:64:\"322503831ce3593fa1d25d15df93e139988820173031edb4ff589d7675ac2142\";a:4:{s:10:\"expiration\";i:1540906468;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1540733668;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off&hidetb=0'),
(18, 1, 'wp_user-settings-time', '1540490965'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '52'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'show_try_gutenberg_panel', '0'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_page', 'a:1:{i:0;s:11:\"commentsdiv\";}'),
(26, 1, 'metaboxhidden_page', 'a:6:{i:0;s:23:\"acf-group_5bd206f023f9f\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";i:5;s:12:\"revisionsdiv\";}'),
(27, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:70:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'screen_layout_page', '2'),
(29, 1, 'closedpostboxes_post', 'a:0:{}'),
(30, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(31, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:23:\"acf-field-group-options\";}'),
(32, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BY9PK48DdDU33mDYQAGHnTg0VkkSGm0', 'admin', '1grazymike@gmail.com', '', '2018-09-29 13:13:06', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
