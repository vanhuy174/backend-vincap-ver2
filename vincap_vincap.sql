-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2021 at 05:53 PM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vincap_vincap`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-04-14 03:11:19', '2021-04-14 03:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'content', 'markdown_editor', 'Content', 0, 0, 1, 1, 1, 1, '{}', 3),
(66, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(69, 8, 'status', 'radio_btn', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"}}', 5),
(70, 9, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(72, 9, 'excerpt', 'text', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(73, 9, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(74, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(75, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(76, 9, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(77, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(78, 9, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(79, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(80, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(81, 9, 'type', 'radio_btn', 'Category', 1, 1, 1, 1, 1, 1, '{\"default\":\"product\",\"options\":{\"product\":\"S\\u1ea3n ph\\u1ea9m\",\"project\":\"D\\u1ef1 \\u00e1n\",\"service\":\"D\\u1ecbch v\\u1ee5\"}}', 10),
(82, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(84, 10, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 10, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(86, 10, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 5),
(87, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(88, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(8, 'slides', 'slides', 'Slide', 'Slides', 'voyager-polaroid', 'App\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-19 02:52:16', '2021-04-20 13:12:26'),
(9, 'products', 'products', 'Product - Service - Project', 'Product - Service - Project', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-28 07:29:00', '2021-04-28 08:31:16'),
(10, 'teams', 'teams', 'Team', 'Teams', NULL, 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-03 09:36:01', '2021-05-03 09:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(2, 'home', '2021-04-14 03:21:59', '2021-04-15 01:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-04-14 03:11:19', '2021-04-14 03:11:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2021-04-14 03:11:19', '2021-05-03 09:38:59', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2021-04-14 03:11:19', '2021-05-03 09:38:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 9, '2021-04-14 03:11:19', '2021-05-03 09:38:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2021-04-14 03:11:19', '2021-05-03 09:38:57', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-04-14 03:11:19', '2021-04-23 04:37:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-04-14 03:11:19', '2021-04-23 04:37:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-04-14 03:11:19', '2021-04-23 04:37:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-04-14 03:11:19', '2021-04-23 04:37:58', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2021-04-14 03:11:19', '2021-05-03 09:38:57', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2021-04-14 03:11:19', '2021-04-23 04:38:14', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-04-14 03:11:19', '2021-04-23 04:38:14', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 3, '2021-04-14 03:11:19', '2021-04-23 04:38:07', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-04-14 03:11:20', '2021-04-23 04:37:58', 'voyager.hooks', NULL),
(15, 2, 'Home', '', '_self', NULL, '#000000', NULL, 1, '2021-04-14 03:24:17', '2021-04-20 10:11:15', 'index', 'null'),
(17, 2, 'Services', '', '_self', NULL, '#000000', NULL, 3, '2021-04-14 03:26:42', '2021-04-29 07:34:03', 'service.index', 'null'),
(18, 2, 'Blogs', '', '_self', NULL, '#000000', NULL, 8, '2021-04-14 03:27:15', '2021-04-27 01:32:25', 'blogs.index', 'null'),
(19, 2, 'Contact', 'contact', '_self', NULL, '#000000', NULL, 9, '2021-04-14 03:27:47', '2021-04-27 01:32:25', NULL, ''),
(20, 2, 'About', '', '_self', NULL, '#000000', NULL, 2, '2021-04-14 03:28:02', '2021-04-26 08:56:00', 'about.index', 'null'),
(22, 1, 'Slides', '', '_self', 'voyager-images', '#000000', NULL, 2, '2021-04-19 02:52:16', '2021-04-23 04:39:42', 'voyager.slides.index', 'null'),
(23, 2, 'Data', '', '_self', NULL, '#000000', NULL, 5, '2021-04-27 01:29:37', '2021-04-27 09:47:25', 'data.index', 'null'),
(24, 2, 'Project', '', '_self', NULL, '#000000', NULL, 4, '2021-04-27 01:31:28', '2021-04-28 09:51:17', 'project.index', 'null'),
(25, 2, 'Product', '', '_self', NULL, '#000000', NULL, 6, '2021-04-27 01:32:00', '2021-04-28 08:56:26', 'product.index', 'null'),
(26, 1, 'Product - Service - Project', '', '_self', 'voyager-book', '#000000', NULL, 6, '2021-04-28 07:29:00', '2021-05-03 09:39:01', 'voyager.products.index', 'null'),
(27, 1, 'Teams', '', '_self', 'voyager-people', '#000000', NULL, 7, '2021-05-03 09:36:01', '2021-05-03 09:39:41', 'voyager.teams.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(2, 1, 'WE ARE ALWAYS FIRST', 'Lorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero. Duo consul lorem probatus no qu alterum sit at no simple dummy.', '<!--Default Section-->\n<section class=\"default-section\">\n<div class=\"auto-container\">\n<div class=\"row clearfix\"><!--Column-->\n<div class=\"column image-column col-md-6 col-sm-12 col-xs-12\">\n<article class=\"inner-box wow fadeInLeft\" data-wow-delay=\"0ms\" data-wow-duration=\"1500ms\">\n<figure class=\"image-box video-box\"><img src=\"assets/images/resource/video-image-1.jpg\" alt=\"\" />\n<div class=\"icon-outer\">&nbsp;</div>\n</figure>\n</article>\n</div>\n<!--Column-->\n<div class=\"column default-text-column with-margin col-md-6 col-sm-12 col-xs-12\">\n<article class=\"inner-box wow fadeInRight\" data-wow-delay=\"0ms\" data-wow-duration=\"1500ms\">\n<h2>WE Are Think <span class=\"theme_color normal-font\">Ahead</span></h2>\n<div class=\"bigger-text\">Lorem ipsum dolor <a href=\"#\"><strong>some link</strong></a> sit amet, cum at inani interesset</div>\n<div class=\"text\">\n<p>There are many variations of passages of Lorem Ipsum available but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use</p>\n</div>\n<ul class=\"styled-list-one no-margin-bottom\">\n<li>Eco &amp; Wind Power</li>\n<li>Green Tree plantion</li>\n<li>Solar Energy</li>\n<li>Save White Tiger</li>\n</ul>\n</article>\n</div>\n</div>\n<div class=\"row clearfix\"><!--Column-->\n<div class=\"column default-text-column col-md-4 col-sm-6 col-xs-12\">\n<div class=\"text-block\">\n<h3>Our Mission</h3>\n<div class=\"text no-margin-bottom\">\n<p>There are many variations of passages of Lorem real lypsum available, but the in the majority have suffered alteration in some form, by injected</p>\n<p>humour, or lipuan domised words which don\'t look evenIpsum, you need to be sure there isn\'t theanything embarrassing hidden in the lorem middle of simply lorem dummy text.</p>\n</div>\n</div>\n</div>\n<!--Column-->\n<div class=\"column default-text-column col-md-4 col-sm-6 col-xs-12\">\n<div class=\"text-block\">\n<h3>We Established in <span class=\"theme_color\">1984</span></h3>\n<div class=\"text no-margin-bottom\">\n<p>There are many variations of passages of Lorem real lypsum available, but the in the majority have suffered alteration in some form, by injected</p>\n<p>humour, or lipuan domised words which don\'t look evenIpsum, you need to be sure there isn\'t theanything embarrassing hidden in the lorem middle of simply lorem dummy text.</p>\n</div>\n</div>\n</div>\n<!--Column-->\n<div class=\"column default-text-column col-md-4 col-sm-6 col-xs-12\">\n<div class=\"text-block\">\n<h3>Our Goal</h3>\n<div class=\"text no-margin-bottom\">\n<p>There are many variations of passages of Lorem real lypsum available, but the in the majority have suffered alteration in some form, by injected</p>\n<p>humour, or lipuan domised words which don\'t look evenIpsum, you need to be sure there isn\'t theanything embarrassing hidden in the lorem middle of simply lorem dummy text.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--Two Column Fluid -->\n<section class=\"two-column-fluid\">\n<div class=\"outer clearfix\">\n<article class=\"column left-column\" style=\"background-image: url(\'assets/images/resource/fluid-image-3.jpg\');\">\n<div class=\"content-box pull-right\">\n<h2>Some <span class=\"normal-font theme_color\">Facts</span></h2>\n<div class=\"title-text\">Lorem ipsum dolor some link sit amet, cum at inani interesset</div>\n<div class=\"text\">We&rsquo;re extremely proud of what we&rsquo;ve achieved together with charitie lorem individuals, philanthropists and schools since the Big Give was founded in 2007, and here are some fact from our achivemnet.</div>\n<br />\n<div class=\"clearfix\">\n<div class=\"icon-box\">\n<div class=\"icon\">&nbsp;</div>\n<div class=\"lower-box\">\n<h4>$<span class=\"count-text\" data-stop=\"7845910\" data-speed=\"1500\">7,845,910</span></h4>\n<span class=\"title\">Raised</span></div>\n</div>\n<div class=\"icon-box\">\n<div class=\"icon\">&nbsp;</div>\n<div class=\"lower-box\">\n<h4>$<span class=\"count-text\" data-stop=\"13360\" data-speed=\"1500\">12,360</span></h4>\n<span class=\"title\">Projects</span></div>\n</div>\n<div class=\"icon-box\">\n<div class=\"icon\">&nbsp;</div>\n<div class=\"lower-box\">\n<h4>$<span class=\"count-text\" data-stop=\"78459\" data-speed=\"1500\">225,580</span></h4>\n<span class=\"title\">Donations</span></div>\n</div>\n</div>\n</div>\n<div class=\"clearfix\">&nbsp;</div>\n</article>\n<article class=\"column right-column\" style=\"background-image: url(\'assets/images/resource/fluid-image-4.jpg\');\">\n<div class=\"content-box pull-left\">\n<div class=\"outer-box\">\n<div class=\"quote-icon\">&nbsp;</div>\n<h2>word from <span class=\"normal-font\">CEO</span></h2>\n<!--Text Content-->\n<div class=\"text-content\">\n<div class=\"text\">\n<p>How to pursue pleasure rationally consequences that are extremeely painful or again is there anyones who loves or pursues or desires to obtain pain of itself because its sed great pleasure get well soon.</p>\n</div>\n<div class=\"information clearfix\">\n<div class=\"info\">\n<figure class=\"image-thumb\"><img src=\"assets/images/resource/ceo-thumb.jpg\" alt=\"\" /></figure>\n<h3>Alex Zender</h3>\n<p>CEO of Go Green</p>\n</div>\n<div class=\"signature\"><img src=\"assets/images/resource/signature-image-1.png\" alt=\"\" /></div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"clearfix\">&nbsp;</div>\n</article>\n</div>\n</section>\n<!--Team Section-->\n<section class=\"team-section\">\n<div class=\"auto-container\">\n<div class=\"sec-title text-center\">\n<h2>Our <span class=\"normal-font theme_color\">Team</span></h2>\n<div class=\"text\">Lorem ipsum dolor sit amet, cum at inani interes setnisl omnium dolor amet amet qco modo cum text</div>\n</div>\n<div class=\"row clearfix\"><!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"0ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-1.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Onnonto Jolil</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n<!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"300ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-2.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Jannatul Ferdaous</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n<!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"600ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-3.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Henna</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n<!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"900ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-4.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Muhibbur Rashid</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n</div>\n</div>\n</section>\n<!--Testimonials-->\n<section class=\"testimonials-section\" style=\"background-image: url(\'assets/images/background/testimonials-bg.jpg\');\">\n<div class=\"auto-container\">\n<div class=\"sec-title text-center\">\n<h2>Testi<span class=\"normal-font theme_color\">Monials</span></h2>\n<div class=\"text\">Lorem ipsum dolor sit amet, cum at inani interes setnisl omnium dolor amet amet qco modo cum text</div>\n</div>\n<!--Slider-->\n<div class=\"testimonials-slider testimonials-carousel\"><!--Slide-->\n<article class=\"slide-item\">\n<div class=\"info-box\">\n<figure class=\"image-box\"><img src=\"assets/images/resource/testi-image-1.jpg\" alt=\"\" /></figure>\n<h3>Mark Pine</h3>\n<p class=\"designation\">Rome, Italy</p>\n</div>\n<div class=\"slide-text\">\n<p>&ldquo;But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure&rdquo;</p>\n</div>\n</article>\n<!--Slide-->\n<article class=\"slide-item\">\n<div class=\"info-box\">\n<figure class=\"image-box\"><img src=\"assets/images/resource/testi-image-2.jpg\" alt=\"\" /></figure>\n<h3>Mark Pine</h3>\n<p class=\"designation\">Rome, Italy</p>\n</div>\n<div class=\"slide-text\">\n<p>&ldquo;But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure&rdquo;</p>\n</div>\n</article>\n<!--Slide-->\n<article class=\"slide-item\">\n<div class=\"info-box\">\n<figure class=\"image-box\"><img src=\"assets/images/resource/testi-image-3.jpg\" alt=\"\" /></figure>\n<h3>Mark Pine</h3>\n<p class=\"designation\">Rome, Italy</p>\n</div>\n<div class=\"slide-text\">\n<p>&ldquo;But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure&rdquo;</p>\n</div>\n</article>\n</div>\n</div>\n</section>\n<!--Blog News Section-->\n<section class=\"blog-news-section latest-news\">\n<div class=\"auto-container\">\n<div class=\"sec-title text-center\">\n<h2>Latest <span class=\"normal-font theme_color\">News</span></h2>\n<div class=\"text\">Lorem ipsum dolor sit amet, cum at inani interessetnisl omnium dolor amet amet qco modo cum text</div>\n</div>\n<div class=\"row clearfix\"><!--News Column-->\n<div class=\"column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12\">\n<article class=\"inner-box\">\n<figure class=\"image-box\"><a href=\"#\"><img src=\"assets/images/resource/blog-image-1.jpg\" alt=\"\" /></a>\n<div class=\"news-date\">28<span class=\"month\">OCT</span></div>\n</figure>\n<div class=\"content-box\">\n<h3><a href=\"#\">Melting ice</a></h3>\n<div class=\"post-info clearfix\">\n<div class=\"post-author\">Posted by Rashed Kabir</div>\n<div class=\"post-options clearfix\"><a class=\"comments-count\" href=\"#\"> 6</a> <a class=\"fav-count\" href=\"#\"> 14</a></div>\n</div>\n<div class=\"text\">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>\n<a class=\"theme-btn read-more\" href=\"#\">Read More</a></div>\n</article>\n</div>\n<!--News Column-->\n<div class=\"column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12\">\n<article class=\"inner-box\">\n<figure class=\"image-box\"><a href=\"#\"><img src=\"assets/images/resource/blog-image-2.jpg\" alt=\"\" /></a>\n<div class=\"news-date\">22<span class=\"month\">APR</span></div>\n</figure>\n<div class=\"content-box\">\n<h3><a href=\"#\">Deforestation is the threat</a></h3>\n<div class=\"post-info clearfix\">\n<div class=\"post-author\">Posted by Rashed Kabir</div>\n<div class=\"post-options clearfix\"><a class=\"comments-count\" href=\"#\"> 6</a> <a class=\"fav-count\" href=\"#\"> 14</a></div>\n</div>\n<div class=\"text\">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>\n<a class=\"theme-btn read-more\" href=\"#\">Read More</a></div>\n</article>\n</div>\n<!--News Column-->\n<div class=\"column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12\">\n<article class=\"inner-box\">\n<figure class=\"image-box\"><a href=\"#\"><img src=\"assets/images/resource/blog-image-3.jpg\" alt=\"\" /></a>\n<div class=\"news-date\">23<span class=\"month\">MAR</span></div>\n</figure>\n<div class=\"content-box\">\n<h3><a href=\"#\">Save the animals</a></h3>\n<div class=\"post-info clearfix\">\n<div class=\"post-author\">Posted by Rashed Kabir</div>\n<div class=\"post-options clearfix\"><a class=\"comments-count\" href=\"#\"> 6</a> <a class=\"fav-count\" href=\"#\"> 14</a></div>\n</div>\n<div class=\"text\">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>\n<a class=\"theme-btn read-more\" href=\"#\">Read More</a></div>\n</article>\n</div>\n</div>\n</div>\n</section>\n<!--Sponsors Section-->\n<section class=\"sponsors-section\">\n<div class=\"auto-container\">\n<div class=\"slider-outer\"><!--Sponsors Slider-->\n<ul class=\"sponsors-slider\">\n<li><a href=\"#\"><img src=\"assets/images/clients/1.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/2.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/3.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/4.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/2.jpg\" alt=\"\" /></a></li>\n</ul>\n</div>\n</div>\n</section>\n<!--Parallax Section-->\n<section class=\"parallax-section\" style=\"background-image: url(\'assets/images/parallax/image-1.jpg\');\">\n<div class=\"auto-container\">\n<div class=\"text-center\">\n<h2>The Best time to <span class=\"theme_color\">plant tree</span> is now</h2>\n<div class=\"text\">Some lorem ipsum subtitle will be here ipsum dolor</div>\n<a class=\"theme-btn btn-style-two\" href=\"#\">Donate Now!</a> <a class=\"theme-btn btn-style-one\" href=\"#\">Join Event</a></div>\n</div>\n</section>\n<!--Intro Section-->\n<section class=\"subscribe-intro\">\n<div class=\"auto-container\">\n<div class=\"row clearfix\"><!--Column-->\n<div class=\"column col-md-9 col-sm-12 col-xs-12\">\n<h2>Subcribe for Newsletter</h2>\nThere are many variations of passages of Lorem Ipsum available but the majority have</div>\n<!--Column-->\n<div class=\"column col-md-3 col-sm-12 col-xs-12\">\n<div class=\"text-right padd-top-20\"><a class=\"theme-btn btn-style-one\" href=\"#\">Subscribe Now</a></div>\n</div>\n</div>\n</div>\n</section>', 'pages/May2021/4MzcHhqFjPxgvJaYa89P.jpg', 'about', 'about', 'about', 'ACTIVE', '2021-04-17 02:47:48', '2021-05-03 07:48:11'),
(3, 1, 'Contact', 'Liên hệ', '<p>this is contact</p>', 'pages/April2021/xJbksfOxOkIde8TTwiPJ.jpg', 'contact', 'contact', 'contact', 'ACTIVE', '2021-04-22 10:18:18', '2021-04-22 10:35:34'),
(4, 1, 'Blogs', 'Blogs', '<p>Blogs</p>', NULL, 'blogs', 'bài viết', 'Bài viết', 'ACTIVE', '2021-04-23 02:22:30', '2021-04-23 02:22:30'),
(5, 1, 'Page Data', 'Tang dữ liệu', '<h3 style=\"box-sizing: border-box; font-family: Montserrat; line-height: 36px; color: #222222; margin: 0px; font-size: 30px; letter-spacing: -0.06em; padding: 17px 0px 0px;\">List of available sample GIS and Remote sensing data sets for Vietnam</h3>\n<div class=\"section_header\" style=\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\';\">\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222;\"><span style=\"box-sizing: border-box; margin-bottom: 0px; font-size: 16px;\">A collection of sample data sets for use with our training and demo. Most of the vector data sets are provided in ESRI&rsquo;s shape file format. Raster data are provided in Geotiff format.</span></p>\n</div>\n<div class=\"span8\" style=\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\';\">\n<div class=\"post_content section_header\" style=\"box-sizing: border-box; margin-bottom: 0px;\">\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222;\">The data are provided as is, without any warranties. Some of the data sets are purely illustrative and should not be used for substantive research.</p>\n<table style=\"height: 65px; width: 66.7262%; border-collapse: collapse; border-style: solid; border-color: black;\" border=\"1\">\n<tbody>\n<tr style=\"height: 13px;\">\n<td style=\"width: 371px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px; font-weight: bold;\">Name</span></td>\n<td style=\"width: 370px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px; font-weight: bold;\">Description</span></td>\n<td style=\"width: 370px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px; font-weight: bold;\">Download</span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 371px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">1. DEM VN</span></td>\n<td style=\"width: 370px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">Digital Elevation Model 30 m resolution. Source NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 370px; height: 13px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; margin-bottom: 0px; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">SRTM_30_VN_UTM</a></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 371px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">DEM VN</span></td>\n<td style=\"width: 370px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">Digital Elevation Model 30 m resolution. Source NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 370px; height: 13px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; margin-bottom: 0px; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">SRTM_30_VN_UTM</a></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 371px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">DEM VN</span></td>\n<td style=\"width: 370px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">Digital Elevation Model 30 m resolution. Source NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 370px; height: 13px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; margin-bottom: 0px; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">SRTM_30_VN_UTM</a></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 371px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">DEM VN</span></td>\n<td style=\"width: 370px; height: 13px;\"><span style=\"font-family: \'Open Sans\'; font-size: 14px;\">Digital Elevation Model 30 m resolution. Source NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 370px; height: 13px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; margin-bottom: 0px; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">SRTM_30_VN_UTM</a></td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222;\">&nbsp;</p>\n</div>\n</div>', NULL, 'page-data', 'data', 'data', 'ACTIVE', '2021-04-27 09:41:01', '2021-04-27 09:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(2, 'browse_bread', NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(3, 'browse_database', NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(4, 'browse_media', NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(5, 'browse_compass', NULL, '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(6, 'browse_menus', 'menus', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(7, 'read_menus', 'menus', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(8, 'edit_menus', 'menus', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(9, 'add_menus', 'menus', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(10, 'delete_menus', 'menus', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(11, 'browse_roles', 'roles', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(12, 'read_roles', 'roles', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(13, 'edit_roles', 'roles', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(14, 'add_roles', 'roles', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(15, 'delete_roles', 'roles', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(16, 'browse_users', 'users', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(17, 'read_users', 'users', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(18, 'edit_users', 'users', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(19, 'add_users', 'users', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(20, 'delete_users', 'users', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(21, 'browse_settings', 'settings', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(22, 'read_settings', 'settings', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(23, 'edit_settings', 'settings', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(24, 'add_settings', 'settings', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(25, 'delete_settings', 'settings', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(26, 'browse_categories', 'categories', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(27, 'read_categories', 'categories', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(28, 'edit_categories', 'categories', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(29, 'add_categories', 'categories', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(30, 'delete_categories', 'categories', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(31, 'browse_posts', 'posts', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(32, 'read_posts', 'posts', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(33, 'edit_posts', 'posts', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(34, 'add_posts', 'posts', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(35, 'delete_posts', 'posts', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(36, 'browse_pages', 'pages', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(37, 'read_pages', 'pages', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(38, 'edit_pages', 'pages', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(39, 'add_pages', 'pages', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(40, 'delete_pages', 'pages', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(41, 'browse_hooks', NULL, '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(47, 'browse_slides', 'slides', '2021-04-19 02:52:16', '2021-04-19 02:52:16'),
(48, 'read_slides', 'slides', '2021-04-19 02:52:16', '2021-04-19 02:52:16'),
(49, 'edit_slides', 'slides', '2021-04-19 02:52:16', '2021-04-19 02:52:16'),
(50, 'add_slides', 'slides', '2021-04-19 02:52:16', '2021-04-19 02:52:16'),
(51, 'delete_slides', 'slides', '2021-04-19 02:52:16', '2021-04-19 02:52:16'),
(52, 'browse_products', 'products', '2021-04-28 07:29:00', '2021-04-28 07:29:00'),
(53, 'read_products', 'products', '2021-04-28 07:29:00', '2021-04-28 07:29:00'),
(54, 'edit_products', 'products', '2021-04-28 07:29:00', '2021-04-28 07:29:00'),
(55, 'add_products', 'products', '2021-04-28 07:29:00', '2021-04-28 07:29:00'),
(56, 'delete_products', 'products', '2021-04-28 07:29:00', '2021-04-28 07:29:00'),
(57, 'browse_teams', 'teams', '2021-05-03 09:36:01', '2021-05-03 09:36:01'),
(58, 'read_teams', 'teams', '2021-05-03 09:36:01', '2021-05-03 09:36:01'),
(59, 'edit_teams', 'teams', '2021-05-03 09:36:01', '2021-05-03 09:36:01'),
(60, 'add_teams', 'teams', '2021-05-03 09:36:01', '2021-05-03 09:36:01'),
(61, 'delete_teams', 'teams', '2021-05-03 09:36:01', '2021-05-03 09:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Shipping IDRISI Selva', '', 'Earth system is now shipping. Enhancements', '<div class=\"wpb_text_column\" style=\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\';\">\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222;\">Hanoi, 30 Jan. 2012. GFD, the authorized reseller of Clark Labs in Vietnam, is pleased to announce that IDRISI Selva, the 17th version of its geospatial software for monitoring and modeling the Earth system is now shipping. Enhancements include:<br style=\"box-sizing: border-box;\" />&ndash; Substantial extensions to IDRISIs revolutionary Earth Trends Modeler application- New REDD-specific tools in IDRISIs Land Change Modeler application&nbsp;&ndash; New analytical techniques, optimized routines and further import/export support- Refined display and map composition elementsVisit our website at&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #202e24; text-decoration-line: none; outline: 0px !important;\" href=\"http://www.gfd.com.vn/service/107/112/IDRISI-Remote-Sensing\">www.gfd.com.vn/service/107/112/IDRISI-Remote-Sensing</a>&nbsp;for additional details and to order online.<br style=\"box-sizing: border-box; margin-bottom: 0px;\" />For further information, please contact us at GFD, Hanoi. Tel: +84-4-221 17800. Email: info@gfd.com.vn</p>\n<p>&nbsp;</p>\n</div>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 248px; top: 11px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', 'posts/April2021/vOBjpVgEAkWLqd2JzqSk.jpg', 'shipping-idrisi-selva', 'This is the meta description', 'gis-vi, research-vi', 'PUBLISHED', 0, '2021-04-14 03:11:19', '2021-04-23 05:15:26'),
(2, 1, 1, 'Forestry data sharing system', '', 'This is the excerpt for the sample Post', '<p><span style=\"color: #222222; font-family: \'Open Sans\';\">Ng&agrave;y 06/6/2018 Tổng Cục L&acirc;m Nghiệp đ&atilde; tổ chức hội nghị c&ocirc;ng bố hệ thống chia sẻ dữ liệu th&ocirc;ng tin ng&agrave;nh l&acirc;m nghiệp. C&aacute;c dữ liệu c&ocirc;ng khai của hệ thống c&oacute; thể truy cập tại địa chỉ http://maps.vnforest.gov.vn.</span></p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 385px; top: 108.844px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', 'posts/post2.jpg', 'forestry-data-sharing-system', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-14 03:11:19', '2021-04-23 05:17:48'),
(3, 1, 1, 'Latest Post', '', 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-14 03:11:19', '2021-04-23 05:19:18'),
(4, 1, 1, 'Green Field support for boiler optimization in Lao', '', 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. ', '<p><span style=\"color: #222222; font-family: \'Open Sans\';\">Green Field support for boiler optimization in Lao</span></p>\n<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/April2021/bZbPoEWbWCzXTffrXRZV.jpg', 'green-field-support-for-boiler-optimization-in-lao', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-14 03:11:19', '2021-04-23 05:21:45'),
(5, 1, 1, 'Hanoi OSM Mapathon 2018', '', 'OSM Hanoi community, GFD and Grab to host a mapathon on 18/03/2018 at The Vuon, 3 floor, Building A, D2 Giang Vo, Hanoi…', '<p><span style=\"color: #222222; font-family: \'Open Sans\';\">OSM Hanoi community, GFD and Grab to host a mapathon on 18/03/2018 at The Vuon, 3 floor, Building A, D2 Giang Vo, Hanoi&hellip;</span></p>', 'posts/April2021/LoqmaCyqlpcAojOo6Sdc.jpg', 'hanoi-osm-mapathon-2018', '', 'gis-vi, research-vi', 'PUBLISHED', 0, '2021-04-23 02:59:55', '2021-04-23 05:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''ACTIVE''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `type`) VALUES
(3, 'GeoSurvey mobile application', 'eoSurvey is a mobile application, developed to help users collect field data more quickly and accurately. GeoSurvey application runs on all mobile devices', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey is a mobile application, developed to help users collect field data more quickly and accurately. GeoSurvey application runs on all mobile devices (phones, tablets running Google Android OS 4.0 and above). GeoSurvey helps save time and effort for fieldwork by making good use of features built into smartphones such as GPS, digital compass, camera, sensors etc. instead of buying Specialized devices also have similar features. GeoSurvey has its own library for calculating coordinate systems, supporting VN2000 projection for 63 provinces and cities nationwide.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey supports users to collect data types including:</p>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Spatial data: points, lines and regions.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Property data: allows users to create custom data collection forms.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Field photo data.</span></li>\n</ul>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey allows import of waypoint points from outside, supports direction and distance to waypoint (waypoint navigation), saves tracks in the field. In addition, GeoSurvey also supports users to export and share data online, offline and many other useful features.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey can also be customized and integrated with a back-end database to create a complete geographic data collection and management system, applicable to areas such as fleet management, sales and delivery. receive goods, survey / measure, track forest changes. Currently the GeoSurvey cored has been used to devolop mobile application for many projects:</p>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Base line survey for Cafe-REDD project in Lam Dong.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Large-scale social survey for hydropower safe guard monitoring.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">FRMS mobile for forest monitoring: deployed to 20 provinces with more than 2000 users.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Nghi Son Petrochemical Industrial Park: scale 30 tablets, integrated with database system on Web server.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">JICA Dien Bien Project: scale of 200 tablets, integrated with server system to monitor forest changes.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Vietnam Forest and Delta Project in Thanh Hoa, Nghe An: scale of 40 tablets, integrated with forest monitoring and biodiversity monitoring server.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">UN-REDD Ha Tinh Project: scale of 70 tablets, suitable for forest change monitoring server and FORMIS.</span></li>\n</ul>', 'products/April2021/2GBWrylHlaCS7OBYuwm6.jpg', 'gioi-thieu-ve-ung-dung-mobile-geosurvey', 'data', 'data', 'ACTIVE', '2021-04-28 07:47:00', '2021-04-28 09:25:43', 'product'),
(4, 'The forest monitoring system', 'FMS is designed to meets the requirements of the forestry industry and the specific requirements of companies with the following specific functions', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\"><span style=\"box-sizing: border-box;\">The forest monitoring system (FMS) developed by GFD is an integrated GIS platform that gives customers the ability to comprehensively update and manage forest change data at provincial, district and forest owners</span>.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\"><span style=\"box-sizing: border-box;\">FMS is designed to meets the requirements of the forestry industry and the specific requirements of companies with the following specific functions</span>:</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<figure class=\"wp-block-image is-resized\" style=\"box-sizing: border-box; display: table; margin: 1em 0px; max-width: 100%; color: #777777; font-family: \'Open Sans\';\"><img class=\"wp-image-2170\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%;\" src=\"http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1.jpg\" sizes=\"(max-width: 628px) 100vw, 628px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1.jpg 837w, http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1-300x280.jpg 300w, http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1-768x718.jpg 768w, http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1-600x561.jpg 600w\" alt=\"\" width=\"628\" height=\"587\" />\n<figcaption style=\"box-sizing: border-box; display: table-caption; margin-top: 0.5em; margin-bottom: 1em; color: #555d66; text-align: center; font-size: 13px; caption-side: bottom;\">FMS functions</figcaption>\n</figure>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\"><span style=\"box-sizing: border-box;\">The FMS system is based on data sources and forest monitoring mechanisms of the Vietnam forestry sector including the following main components</span>:</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">The forest status database is updated annually according to the Vietnam Administration of Forestry (VNFOREST) process</span>.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">Forest change monitoring data in the field using FRMS mobile software is funded by the JICA SNRM and GFD is a developer.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">Data on suspected forest change points from satellite images.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">Sentinel 2 satellite image data with 10m resolution is updated in real-time (free and included in the solution).</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">Planet satellite image data with 3m resolution is updated in real-time (charges apply).</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">&nbsp;</span><span style=\"box-sizing: border-box;\">Real-time forest fire warning data (near real-time).</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">The reporting system complies with the latest regulations of VNFOREST; Customizable reporting system according to customer requirements.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">The system is built in a service-oriented design and can be reused for other units in the province, for example, payment for forest environmental services, timber origin verification, forest certification.</span></li>\n</ul>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<figure class=\"wp-block-image\" style=\"box-sizing: border-box; margin: 1em 0px; max-width: 100%; color: #777777; font-family: \'Open Sans\';\"><img class=\"wp-image-2171\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%;\" src=\"http://gfd.com.vn/wp-content/uploads/2019/11/fms2-1024x539.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2019/11/fms2-1024x539.jpg 1024w, http://gfd.com.vn/wp-content/uploads/2019/11/fms2-300x158.jpg 300w, http://gfd.com.vn/wp-content/uploads/2019/11/fms2-768x404.jpg 768w, http://gfd.com.vn/wp-content/uploads/2019/11/fms2-600x316.jpg 600w\" alt=\"\" /></figure>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\"><span style=\"box-sizing: border-box;\">The strengths of FMS in implementing forest management at the provincial level or large forest owners are as follows:</span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">A unique system for all forest management levels: the Forest Protection Department levels and forest owners use the same system; and managed/exploited information in accordance with the authority, not limited to the number of departments/teams participating in the system.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">The system is built with the open design, easy to customize to fit new requirements in the sector or new requirements in management and administration practice.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">Provides the most advanced tools for information searching and analysis: full-text search, spatial analysis, offline data reading on the Web, integration, and sharing of information on the Web.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box;\">Easily support all 3 platforms Desktop, Web and Mobile.</span></li>\n</ul>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\"><span style=\"box-sizing: border-box;\">FMS system has been applied in Quang Nam and Thua Thien Hue provinces, testing for the FMCR project in Quang Ninh province.</span></p>', 'products/April2021/rbaxlhJZsQaFrcfWeksw.jpeg', 'he-thong-theo-doi-dien-bien-rung', 'data', 'data', 'ACTIVE', '2021-04-28 07:52:00', '2021-04-29 07:37:58', 'service'),
(5, 'Develop mobile software and data analysis application for hydropower impact assessment use by community in The Bridging Bonds project', 'Develop mobile software and data analysis application for hydropower impact assessment use by community in The Bridging Bonds project', '<div class=\"wpb_text_column\" style=\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\';\">\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">The Bridging Bonds is an innovative pilot initiative with the aim of using information technology to increase the effective and meaningful participation of people in monitoring and criticizing the State&rsquo;s undertakings and policies at the grassroots level, in ethnic minority and mountainous areas.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">Technology applications and software that Bridging Bonds builds and tests can be used to monitor other policy programs aimed to find solutions to increase the people&rsquo;s participation in the supervision of the state&rsquo;s undertakings and policies.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">The project is implemented in Son La, Bac Kan and Dak Lak provinces. The local project participants are ethnic minority groups including: Thai, Tay, Nung, and Ede.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\"><img class=\"alignnone size-medium wp-image-2530\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;\" src=\"http://gfd.com.vn/wp-content/uploads/2021/04/20190623_102549-300x225-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img class=\"alignnone size-medium wp-image-2545\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; margin-bottom: 0px;\" src=\"http://gfd.com.vn/wp-content/uploads/2021/04/1111223-300x225.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2021/04/1111223-300x225.jpg 300w, http://gfd.com.vn/wp-content/uploads/2021/04/1111223-768x576.jpg 768w, http://gfd.com.vn/wp-content/uploads/2021/04/1111223-1024x768.jpg 1024w, http://gfd.com.vn/wp-content/uploads/2021/04/1111223-600x450.jpg 600w\" alt=\"\" width=\"300\" height=\"225\" /></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">Figure 1: Training using the app for local people</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">The main objective of the consulting service: Develop applications for monitoring hydropower impacts on smartphones and software to process collected data that the community can use effectively.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\"><img class=\"wp-image-2533 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin: 5px auto 0px;\" src=\"http://gfd.com.vn/wp-content/uploads/2021/04/DSC_2177-300x147.jpg\" sizes=\"(max-width: 364px) 100vw, 364px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2021/04/DSC_2177-300x147.jpg 300w, http://gfd.com.vn/wp-content/uploads/2021/04/DSC_2177-768x375.jpg 768w, http://gfd.com.vn/wp-content/uploads/2021/04/DSC_2177-1024x500.jpg 1024w, http://gfd.com.vn/wp-content/uploads/2021/04/DSC_2177-600x293.jpg 600w\" alt=\"\" width=\"364\" height=\"178\" /></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; text-align: center;\">Figure 2: Final Workshop</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">Results of consulting services:</p>\n<ul style=\"box-sizing: border-box; margin: 0px; list-style: none; padding: 0px;\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">01 smart mobile phone application has been built on an open source platform. The application uses Vietnamese language, can work while offline and only needs the internet when synchronizing data to the server. Application has a friendly interface, easy to install and use.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">01 results analysis application on the web platform. The results collected from mobile phones by the local people are stored at the server and analyzed automatically by the software.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">03 training sessions were held in Hanoi, Dak Lak and Bac Kan for the key groups. This group used the application to collect information about 700 households affected by hydropower.</li>\n<li>&nbsp;</li>\n</ul>\n</div>', 'products/April2021/RGfqWSURHwf7RQztZcxd.jpeg', 'xay-dung-de-an-trinh-va-phe-duyet-thanh-lap-khu-bao-ton-thien-nhien-cu-lao-cham-kbttn-clc-va-lap-dat-bang-hieu-da-dang-sinh-hoc-cho-trung-tam-giao-duc-thien-nhien-cong-dong-o-cu-lao-cham', 'Develop mobile software and data analysis application for hydropower impact assessment use by community in The Bridging Bonds project', 'Develop mobile software and data analysis application for hydropower impact assessment use by community in The Bridging Bonds project', 'ACTIVE', '2021-04-28 08:56:00', '2021-04-28 09:27:14', 'project');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-04-14 03:11:19', '2021-04-14 03:11:19'),
(2, 'user', 'Normal User', '2021-04-14 03:11:19', '2021-04-14 03:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(3, 'site.logo', 'Site Logo', 'settings/April2021/VwBg97IlzPXRuvRSJPaP.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.loder-logo', 'Loder Logo', 'settings/April2021/vCDZVu9hz71bmlVQkjNB.png', NULL, 'image', 6, 'Site'),
(17, 'site.google-map', 'Iframe google map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5245.955991786949!2d105.8206927764735!3d21.607340537000788!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313527e72a5c3459%3A0xc18f4d25237d39f0!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gxJHhuqd1IHTGsCB2w6AgcGjDoXQgdHJp4buDbiBWSU5DQVA!5e0!3m2!1svi!2s!4v1619430244628!5m2!1svi!2s\" width=\"100%\" height=\"450px\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, 'text', 11, 'Site'),
(20, 'en.title', 'Site Title', 'VINCAP INVESTMENT AND  DEVELOPMENT JOINT STOCK COMPANY', NULL, 'text', 15, 'en'),
(21, 'vi.title', 'Tiêu đề website', 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ PHÁT TRIỂN VINCAP', NULL, 'text', 14, 'vi'),
(22, 'vi.description', 'Mô tả website', 'Công ty là một đơn vị tư vấn, dịch vụ khoa học công nghệ trong lĩnh vực quy hoạch kiến trúc, tài nguyên, môi trường, đa dạng sinh học và biến đổi khí hậu, nông nghiệp công nghệ cao góp phần thúc đẩy quá trình phát triển kinh tế - xã hội, sử dụng hợp lý tài nguyên và bảo vệ môi trường ở Việt Nam. Công ty hoạt động theo cơ chế tự chủ, tự chịu trách nhiệm của tổ chức khoa học và công nghệ. Công ty có tư cách pháp nhân, có con dấu và tài khoản riêng tại ngân hàng, tự hạch toán kinh tế, lấy thu để chi và tuân thủ các quy định của pháp luật.', NULL, 'text_area', 17, 'vi'),
(23, 'en.description', 'Site Description', 'Công ty là một đơn vị tư vấn, dịch vụ khoa học công nghệ trong lĩnh vực quy hoạch kiến trúc, tài nguyên, môi trường, đa dạng sinh học và biến đổi khí hậu, nông nghiệp công nghệ cao góp phần thúc đẩy quá trình phát triển kinh tế - xã hội, sử dụng hợp lý tài nguyên và bảo vệ môi trường ở Việt Nam. Công ty hoạt động theo cơ chế tự chủ, tự chịu trách nhiệm của tổ chức khoa học và công nghệ. Công ty có tư cách pháp nhân, có con dấu và tài khoản riêng tại ngân hàng, tự hạch toán kinh tế, lấy thu để chi và tuân thủ các quy định của pháp luật.', NULL, 'text_area', 16, 'en'),
(24, 'en.phone', 'Phone number', '(+84)332676565', NULL, 'text', 18, 'en'),
(25, 'vi.phone', 'Số điện thoại', '0332676565', NULL, 'text', 19, 'vi'),
(26, 'en.email', 'Email', 'vincap.jsc@gmail.com', NULL, 'text', 20, 'en'),
(27, 'vi.email', 'Hòm thư điện tử', 'vincap.jsc@gmail.com', NULL, 'text', 21, 'vi'),
(28, 'en.timeshift', 'Time Shift', 'Time Shift: 8h30 AM - 5h30PM Monday to Satoday', NULL, 'text', 22, 'en'),
(29, 'vi.timeshift', 'Giờ làm việc', 'Giờ làm việc: 8h30 - 17h30 từ thứ 2 đến thứ 7', NULL, 'text', 23, 'vi'),
(30, 'en.address', 'Address', 'Group 6, Quang Vinh ward, Thai Nguyen city Viet Nam', NULL, 'text', 24, 'en'),
(31, 'vi.address', 'Địa chỉ', 'Tổ 6, phường Quang Vinh, thành phố Thái Nguyên', NULL, 'text', 25, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `status`) VALUES
(2, 'Slide Home Page 1', '<div class=\"tp-caption sfl sfb tp-resizeme\"\n	data-x=\"left\" data-hoffset=\"15\"\n	data-y=\"center\" data-voffset=\"-150\"\n	data-speed=\"1500\"\n	data-start=\"500\"\n	data-easing=\"easeOutExpo\"\n	data-splitin=\"none\"\n	data-splitout=\"none\"\n	data-elementdelay=\"0.01\"\n	data-endelementdelay=\"0.3\"\n	data-endspeed=\"1200\"\n	data-endeasing=\"Power4.easeIn\">\n	<div class=\"circular-drop\">0<sub>2</sub></div>\n	</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"-50\"\n		 data-speed=\"1500\"\n		 data-start=\"1000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h1><span class=\"normal-font\">Go</span> Green</h1>\n</div>\n\n<div class=\"tp-caption sfl sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"40\"\n		 data-speed=\"1500\"\n		 data-start=\"1500\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h3 class=\"bg-color\">Save the world by planting tree</h3>\n</div>\n\n<div class=\"tp-caption sfl sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"110\"\n		 data-speed=\"1500\"\n		 data-start=\"2000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<div class=\"text\">Lorem ipsum dolor sit amet, debet dolore mollis his ad, ea usu <br>soleat detraxit.In vix agam moderatius. Modo partiendo.</div>\n</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"190\"\n		 data-speed=\"1500\"\n		 data-start=\"2000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<a href=\"#\" class=\"theme-btn btn-style-one\">Learn More</a>\n</div>', 'slides/April2021/MdgHoK7s6pJrhYTCoYMU.jpg', '2021-04-20 10:30:46', '2021-04-23 04:40:14', 'ACTIVE'),
(3, 'Slide Home Page 2', '<div class=\"tp-caption sfl sfb tp-resizeme\"\n	 data-x=\"center\" data-hoffset=\"0\"\n	 data-y=\"center\" data-voffset=\"-120\"\n	 data-speed=\"1500\"\n	 data-start=\"500\"\n	 data-easing=\"easeOutExpo\"\n	 data-splitin=\"none\"\n	 data-splitout=\"none\"\n	 data-elementdelay=\"0.01\"\n	 data-endelementdelay=\"0.3\"\n	 data-endspeed=\"1200\"\n	 data-endeasing=\"Power4.easeIn\">\n	<h2 class=\"normal-font\">Help us</h2>\n</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"center\" data-hoffset=\"0\"\n		 data-y=\"center\" data-voffset=\"-30\"\n		 data-speed=\"1500\"\n		 data-start=\"1000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h2>to save the Animals</h2>\n</div>\n\n<div class=\"tp-caption sfl sfb tp-resizeme\"\n		 data-x=\"center\" data-hoffset=\"0\"\n		 data-y=\"center\" data-voffset=\"50\"\n		 data-speed=\"1500\"\n		 data-start=\"1500\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h4>All of our afford can bring back the life</h4>\n</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"center\" data-hoffset=\"0\"\n		 data-y=\"center\" data-voffset=\"120\"\n		 data-speed=\"1500\"\n		 data-start=\"2000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<a href=\"#\" class=\"theme-btn btn-style-one\">Learn More</a>\n</div>', 'slides/April2021/NuHPwiDDoV80nVbfVRUr.jpg', '2021-04-20 10:34:35', '2021-04-23 04:40:02', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Quốc Vinh', 'Nghiên cứu', 'chuyên nghiên cứu các vẫn đề về thiên văn,Chuyên nghiên cứu các vấn đề về địa chất', 'teams/May2021/vKtGWX9U8bYzkWopwHVS.jpg', '2021-05-03 09:42:45', '2021-05-03 09:56:10'),
(2, 'Hoàng Tiến Thành', 'Nhà nghiên cứu', 'Chuyên nghiên cứu các vấn đề về địa chất', 'teams/May2021/OiPHWkmxBcXonAKz9hpR.jpg', '2021-05-03 09:44:01', '2021-05-03 09:44:01'),
(3, 'Đinh Tiến Hoàng', 'Nhà nghiên cứu', 'Chuyên nghiên cứu các vấn đề về địa chất, Chuyên nghiên cứu các vấn đề về địa chất', 'teams/May2021/kR8sndVwmpP0dIEzhZeP.jpg', '2021-05-03 09:44:54', '2021-05-03 09:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-04-14 03:11:20', '2021-04-14 03:11:20'),
(31, 'menu_items', 'title', 15, 'vi', 'Trang chủ', '2021-04-14 03:25:05', '2021-04-14 03:25:05'),
(33, 'menu_items', 'title', 17, 'vi', 'Dịch vụ', '2021-04-14 03:26:42', '2021-04-26 09:01:00'),
(34, 'menu_items', 'title', 18, 'vi', 'Bài viết', '2021-04-14 03:27:15', '2021-04-14 03:27:15'),
(35, 'menu_items', 'title', 19, 'vi', 'Liên hệ', '2021-04-14 03:27:47', '2021-04-14 03:27:47'),
(36, 'menu_items', 'title', 20, 'vi', 'Giới thiệu', '2021-04-14 03:28:02', '2021-04-22 10:25:06'),
(37, 'data_rows', 'display_name', 56, 'vi', 'Id', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(38, 'data_rows', 'display_name', 57, 'vi', 'Background Image', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(39, 'data_rows', 'display_name', 58, 'vi', 'Content', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(40, 'data_rows', 'display_name', 59, 'vi', 'Order', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(41, 'data_rows', 'display_name', 60, 'vi', 'Status', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(42, 'data_rows', 'display_name', 61, 'vi', 'Created At', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(43, 'data_rows', 'display_name', 62, 'vi', 'Updated At', '2021-04-16 09:12:29', '2021-04-16 09:12:29'),
(46, 'pages', 'title', 2, 'vi', 'CHÚNG TÔI LUÔN LUÔN ĐI ĐẦU', '2021-04-17 02:56:49', '2021-05-03 07:48:11'),
(47, 'pages', 'body', 2, 'vi', '<!--Default Section-->\n<section class=\"default-section\">\n<div class=\"auto-container\">\n<div class=\"row clearfix\"><!--Column-->\n<div class=\"column image-column col-md-6 col-sm-12 col-xs-12\">\n<article class=\"inner-box wow fadeInLeft\" data-wow-delay=\"0ms\" data-wow-duration=\"1500ms\">\n<figure class=\"image-box video-box\"><img src=\"assets/images/resource/video-image-1.jpg\" alt=\"\" />\n<div class=\"icon-outer\">&nbsp;</div>\n</figure>\n</article>\n</div>\n<!--Column-->\n<div class=\"column default-text-column with-margin col-md-6 col-sm-12 col-xs-12\">\n<article class=\"inner-box wow fadeInRight\" data-wow-delay=\"0ms\" data-wow-duration=\"1500ms\">\n<h2><span class=\"theme_color normal-font\">Ch&uacute;ng t&ocirc;i lu&ocirc;n lu&ocirc;n Đi đầu</span></h2>\n<div class=\"bigger-text\">Lorem ipsum dolor <a href=\"#\"><strong>some link</strong></a> sit amet, cum at inani interesset</div>\n<div class=\"text\">\n<p>There are many variations of passages of Lorem Ipsum available but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use</p>\n</div>\n<ul class=\"styled-list-one no-margin-bottom\">\n<li>Eco &amp; Wind Power</li>\n<li>Green Tree plantion</li>\n<li>Solar Energy</li>\n<li>Save White Tiger</li>\n</ul>\n</article>\n</div>\n</div>\n<div class=\"row clearfix\"><!--Column-->\n<div class=\"column default-text-column col-md-4 col-sm-6 col-xs-12\">\n<div class=\"text-block\">\n<h3>Our Mission</h3>\n<div class=\"text no-margin-bottom\">\n<p>There are many variations of passages of Lorem real lypsum available, but the in the majority have suffered alteration in some form, by injected</p>\n<p>humour, or lipuan domised words which don\'t look evenIpsum, you need to be sure there isn\'t theanything embarrassing hidden in the lorem middle of simply lorem dummy text.</p>\n</div>\n</div>\n</div>\n<!--Column-->\n<div class=\"column default-text-column col-md-4 col-sm-6 col-xs-12\">\n<div class=\"text-block\">\n<h3>We Established in <span class=\"theme_color\">1984</span></h3>\n<div class=\"text no-margin-bottom\">\n<p>There are many variations of passages of Lorem real lypsum available, but the in the majority have suffered alteration in some form, by injected</p>\n<p>humour, or lipuan domised words which don\'t look evenIpsum, you need to be sure there isn\'t theanything embarrassing hidden in the lorem middle of simply lorem dummy text.</p>\n</div>\n</div>\n</div>\n<!--Column-->\n<div class=\"column default-text-column col-md-4 col-sm-6 col-xs-12\">\n<div class=\"text-block\">\n<h3>Our Goal</h3>\n<div class=\"text no-margin-bottom\">\n<p>There are many variations of passages of Lorem real lypsum available, but the in the majority have suffered alteration in some form, by injected</p>\n<p>humour, or lipuan domised words which don\'t look evenIpsum, you need to be sure there isn\'t theanything embarrassing hidden in the lorem middle of simply lorem dummy text.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--Two Column Fluid -->\n<section class=\"two-column-fluid\">\n<div class=\"outer clearfix\">\n<article class=\"column left-column\" style=\"background-image: url(\'assets/images/resource/fluid-image-3.jpg\');\">\n<div class=\"content-box pull-right\">\n<h2>Some <span class=\"normal-font theme_color\">Facts</span></h2>\n<div class=\"title-text\">Lorem ipsum dolor some link sit amet, cum at inani interesset</div>\n<div class=\"text\">We&rsquo;re extremely proud of what we&rsquo;ve achieved together with charitie lorem individuals, philanthropists and schools since the Big Give was founded in 2007, and here are some fact from our achivemnet.</div>\n<br />\n<div class=\"clearfix\">\n<div class=\"icon-box\">\n<div class=\"icon\">&nbsp;</div>\n<div class=\"lower-box\">\n<h4>$<span class=\"count-text\" data-stop=\"7845910\" data-speed=\"1500\">7,845,910</span></h4>\n<span class=\"title\">Raised</span></div>\n</div>\n<div class=\"icon-box\">\n<div class=\"icon\">&nbsp;</div>\n<div class=\"lower-box\">\n<h4>$<span class=\"count-text\" data-stop=\"13360\" data-speed=\"1500\">12,360</span></h4>\n<span class=\"title\">Projects</span></div>\n</div>\n<div class=\"icon-box\">\n<div class=\"icon\">&nbsp;</div>\n<div class=\"lower-box\">\n<h4>$<span class=\"count-text\" data-stop=\"78459\" data-speed=\"1500\">225,580</span></h4>\n<span class=\"title\">Donations</span></div>\n</div>\n</div>\n</div>\n<div class=\"clearfix\">&nbsp;</div>\n</article>\n<article class=\"column right-column\" style=\"background-image: url(\'assets/images/resource/fluid-image-4.jpg\');\">\n<div class=\"content-box pull-left\">\n<div class=\"outer-box\">\n<div class=\"quote-icon\">&nbsp;</div>\n<h2>word from <span class=\"normal-font\">CEO</span></h2>\n<!--Text Content-->\n<div class=\"text-content\">\n<div class=\"text\">\n<p>How to pursue pleasure rationally consequences that are extremeely painful or again is there anyones who loves or pursues or desires to obtain pain of itself because its sed great pleasure get well soon.</p>\n</div>\n<div class=\"information clearfix\">\n<div class=\"info\">\n<figure class=\"image-thumb\"><img src=\"assets/images/resource/ceo-thumb.jpg\" alt=\"\" /></figure>\n<h3>Alex Zender</h3>\n<p>CEO of Go Green</p>\n</div>\n<div class=\"signature\"><img src=\"assets/images/resource/signature-image-1.png\" alt=\"\" /></div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"clearfix\">&nbsp;</div>\n</article>\n</div>\n</section>\n<!--Team Section-->\n<section class=\"team-section\">\n<div class=\"auto-container\">\n<div class=\"sec-title text-center\">\n<h2>Our <span class=\"normal-font theme_color\">Team</span></h2>\n<div class=\"text\">Lorem ipsum dolor sit amet, cum at inani interes setnisl omnium dolor amet amet qco modo cum text</div>\n</div>\n<div class=\"row clearfix\"><!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"0ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-1.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Onnonto Jolil</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n<!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"300ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-2.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Jannatul Ferdaous</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n<!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"600ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-3.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Henna</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n<!--Column-->\n<article class=\"column team-member col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInUp\" data-wow-delay=\"900ms\" data-wow-duration=\"1500ms\">\n<div class=\"inner-box\">\n<figure class=\"image\"><a href=\"mailto:mail@email.com\"><img src=\"assets/images/resource/team-image-4.jpg\" alt=\"\" /></a></figure>\n<div class=\"member-info\">\n<h3>Muhibbur Rashid</h3>\n<div class=\"designation\">Senior Worker</div>\n</div>\n<div class=\"content\">\n<div class=\"text\">\n<p>Cras dapibus. Vivamus element modo semper Aenean vulementum semper Aenean vulputate set tellus.</p>\n</div>\n<div class=\"social-links\">&nbsp;</div>\n</div>\n</div>\n</article>\n</div>\n</div>\n</section>\n<!--Testimonials-->\n<section class=\"testimonials-section\" style=\"background-image: url(\'assets/images/background/testimonials-bg.jpg\');\">\n<div class=\"auto-container\">\n<div class=\"sec-title text-center\">\n<h2>Testi<span class=\"normal-font theme_color\">Monials</span></h2>\n<div class=\"text\">Lorem ipsum dolor sit amet, cum at inani interes setnisl omnium dolor amet amet qco modo cum text</div>\n</div>\n<!--Slider-->\n<div class=\"testimonials-slider testimonials-carousel\"><!--Slide-->\n<article class=\"slide-item\">\n<div class=\"info-box\">\n<figure class=\"image-box\"><img src=\"assets/images/resource/testi-image-1.jpg\" alt=\"\" /></figure>\n<h3>Mark Pine</h3>\n<p class=\"designation\">Rome, Italy</p>\n</div>\n<div class=\"slide-text\">\n<p>&ldquo;But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure&rdquo;</p>\n</div>\n</article>\n<!--Slide-->\n<article class=\"slide-item\">\n<div class=\"info-box\">\n<figure class=\"image-box\"><img src=\"assets/images/resource/testi-image-2.jpg\" alt=\"\" /></figure>\n<h3>Mark Pine</h3>\n<p class=\"designation\">Rome, Italy</p>\n</div>\n<div class=\"slide-text\">\n<p>&ldquo;But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure&rdquo;</p>\n</div>\n</article>\n<!--Slide-->\n<article class=\"slide-item\">\n<div class=\"info-box\">\n<figure class=\"image-box\"><img src=\"assets/images/resource/testi-image-3.jpg\" alt=\"\" /></figure>\n<h3>Mark Pine</h3>\n<p class=\"designation\">Rome, Italy</p>\n</div>\n<div class=\"slide-text\">\n<p>&ldquo;But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure&rdquo;</p>\n</div>\n</article>\n</div>\n</div>\n</section>\n<!--Blog News Section-->\n<section class=\"blog-news-section latest-news\">\n<div class=\"auto-container\">\n<div class=\"sec-title text-center\">\n<h2>Latest <span class=\"normal-font theme_color\">News</span></h2>\n<div class=\"text\">Lorem ipsum dolor sit amet, cum at inani interessetnisl omnium dolor amet amet qco modo cum text</div>\n</div>\n<div class=\"row clearfix\"><!--News Column-->\n<div class=\"column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12\">\n<article class=\"inner-box\">\n<figure class=\"image-box\"><a href=\"#\"><img src=\"assets/images/resource/blog-image-1.jpg\" alt=\"\" /></a>\n<div class=\"news-date\">28<span class=\"month\">OCT</span></div>\n</figure>\n<div class=\"content-box\">\n<h3><a href=\"#\">Melting ice</a></h3>\n<div class=\"post-info clearfix\">\n<div class=\"post-author\">Posted by Rashed Kabir</div>\n<div class=\"post-options clearfix\"><a class=\"comments-count\" href=\"#\"> 6</a> <a class=\"fav-count\" href=\"#\"> 14</a></div>\n</div>\n<div class=\"text\">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>\n<a class=\"theme-btn read-more\" href=\"#\">Read More</a></div>\n</article>\n</div>\n<!--News Column-->\n<div class=\"column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12\">\n<article class=\"inner-box\">\n<figure class=\"image-box\"><a href=\"#\"><img src=\"assets/images/resource/blog-image-2.jpg\" alt=\"\" /></a>\n<div class=\"news-date\">22<span class=\"month\">APR</span></div>\n</figure>\n<div class=\"content-box\">\n<h3><a href=\"#\">Deforestation is the threat</a></h3>\n<div class=\"post-info clearfix\">\n<div class=\"post-author\">Posted by Rashed Kabir</div>\n<div class=\"post-options clearfix\"><a class=\"comments-count\" href=\"#\"> 6</a> <a class=\"fav-count\" href=\"#\"> 14</a></div>\n</div>\n<div class=\"text\">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>\n<a class=\"theme-btn read-more\" href=\"#\">Read More</a></div>\n</article>\n</div>\n<!--News Column-->\n<div class=\"column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12\">\n<article class=\"inner-box\">\n<figure class=\"image-box\"><a href=\"#\"><img src=\"assets/images/resource/blog-image-3.jpg\" alt=\"\" /></a>\n<div class=\"news-date\">23<span class=\"month\">MAR</span></div>\n</figure>\n<div class=\"content-box\">\n<h3><a href=\"#\">Save the animals</a></h3>\n<div class=\"post-info clearfix\">\n<div class=\"post-author\">Posted by Rashed Kabir</div>\n<div class=\"post-options clearfix\"><a class=\"comments-count\" href=\"#\"> 6</a> <a class=\"fav-count\" href=\"#\"> 14</a></div>\n</div>\n<div class=\"text\">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>\n<a class=\"theme-btn read-more\" href=\"#\">Read More</a></div>\n</article>\n</div>\n</div>\n</div>\n</section>\n<!--Sponsors Section-->\n<section class=\"sponsors-section\">\n<div class=\"auto-container\">\n<div class=\"slider-outer\"><!--Sponsors Slider-->\n<ul class=\"sponsors-slider\">\n<li><a href=\"#\"><img src=\"assets/images/clients/1.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/2.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/3.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/4.jpg\" alt=\"\" /></a></li>\n<li><a href=\"#\"><img src=\"assets/images/clients/2.jpg\" alt=\"\" /></a></li>\n</ul>\n</div>\n</div>\n</section>\n<!--Parallax Section-->\n<section class=\"parallax-section\" style=\"background-image: url(\'assets/images/parallax/image-1.jpg\');\">\n<div class=\"auto-container\">\n<div class=\"text-center\">\n<h2>The Best time to <span class=\"theme_color\">plant tree</span> is now</h2>\n<div class=\"text\">Some lorem ipsum subtitle will be here ipsum dolor</div>\n<a class=\"theme-btn btn-style-two\" href=\"#\">Donate Now!</a> <a class=\"theme-btn btn-style-one\" href=\"#\">Join Event</a></div>\n</div>\n</section>\n<!--Intro Section-->\n<section class=\"subscribe-intro\">\n<div class=\"auto-container\">\n<div class=\"row clearfix\"><!--Column-->\n<div class=\"column col-md-9 col-sm-12 col-xs-12\">\n<h2>Subcribe for Newsletter</h2>\nThere are many variations of passages of Lorem Ipsum available but the majority have</div>\n<!--Column-->\n<div class=\"column col-md-3 col-sm-12 col-xs-12\">\n<div class=\"text-right padd-top-20\"><a class=\"theme-btn btn-style-one\" href=\"#\">Subscribe Now</a></div>\n</div>\n</div>\n</div>\n</section>', '2021-04-17 02:56:49', '2021-04-22 10:21:21'),
(48, 'pages', 'slug', 2, 'vi', 'about', '2021-04-17 02:56:49', '2021-04-17 02:56:49'),
(49, 'data_rows', 'display_name', 63, 'vi', 'Id', '2021-04-19 02:56:26', '2021-04-19 02:56:26'),
(50, 'data_rows', 'display_name', 64, 'vi', 'Title', '2021-04-19 02:56:26', '2021-04-19 02:56:26'),
(51, 'data_rows', 'display_name', 65, 'vi', 'Content', '2021-04-19 02:56:26', '2021-04-19 02:56:26'),
(52, 'data_rows', 'display_name', 66, 'vi', 'Image', '2021-04-19 02:56:27', '2021-04-19 02:56:27'),
(53, 'data_rows', 'display_name', 67, 'vi', 'Created At', '2021-04-19 02:56:27', '2021-04-19 02:56:27'),
(54, 'data_rows', 'display_name', 68, 'vi', 'Updated At', '2021-04-19 02:56:27', '2021-04-19 02:56:27'),
(55, 'data_types', 'display_name_singular', 8, 'vi', 'Slide', '2021-04-19 02:56:27', '2021-04-19 02:56:27'),
(56, 'data_types', 'display_name_plural', 8, 'vi', 'Slides', '2021-04-19 02:56:27', '2021-04-19 02:56:27'),
(58, 'data_rows', 'display_name', 69, 'vi', 'Status', '2021-04-19 03:00:02', '2021-04-19 03:00:02'),
(60, 'slides', 'title', 2, 'vi', 'Slide Trang chủ 1', '2021-04-20 10:32:22', '2021-04-20 10:32:22'),
(61, 'slides', 'content', 2, 'vi', '<div class=\"tp-caption sfl sfb tp-resizeme\"\n	data-x=\"left\" data-hoffset=\"15\"\n	data-y=\"center\" data-voffset=\"-150\"\n	data-speed=\"1500\"\n	data-start=\"500\"\n	data-easing=\"easeOutExpo\"\n	data-splitin=\"none\"\n	data-splitout=\"none\"\n	data-elementdelay=\"0.01\"\n	data-endelementdelay=\"0.3\"\n	data-endspeed=\"1200\"\n	data-endeasing=\"Power4.easeIn\">\n	<div class=\"circular-drop\">0<sub>2</sub></div>\n	</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"-50\"\n		 data-speed=\"1500\"\n		 data-start=\"1000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h1><span class=\"normal-font\">Go</span> Green</h1>\n</div>\n\n<div class=\"tp-caption sfl sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"40\"\n		 data-speed=\"1500\"\n		 data-start=\"1500\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h3 class=\"bg-color\">Cứu lấy trái đất bằng các trồng thật nhiều cây</h3>\n</div>\n\n<div class=\"tp-caption sfl sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"110\"\n		 data-speed=\"1500\"\n		 data-start=\"2000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<div class=\"text\">Trồng cây nhiều vào <br>Rap chậm thôi.</div>\n</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"left\" data-hoffset=\"90\"\n		 data-y=\"center\" data-voffset=\"190\"\n		 data-speed=\"1500\"\n		 data-start=\"2000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<a href=\"#\" class=\"theme-btn btn-style-one\">Xem thêm</a>\n</div>', '2021-04-20 10:32:22', '2021-04-20 10:32:22'),
(62, 'slides', 'title', 3, 'vi', 'Slide Trang chủ 2', '2021-04-20 10:35:47', '2021-04-20 10:35:47'),
(63, 'slides', 'content', 3, 'vi', '<div class=\"tp-caption sfl sfb tp-resizeme\"\n	 data-x=\"center\" data-hoffset=\"0\"\n	 data-y=\"center\" data-voffset=\"-120\"\n	 data-speed=\"1500\"\n	 data-start=\"500\"\n	 data-easing=\"easeOutExpo\"\n	 data-splitin=\"none\"\n	 data-splitout=\"none\"\n	 data-elementdelay=\"0.01\"\n	 data-endelementdelay=\"0.3\"\n	 data-endspeed=\"1200\"\n	 data-endeasing=\"Power4.easeIn\">\n	<h2 class=\"normal-font\">Hãy giúp chúng tôi</h2>\n</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"center\" data-hoffset=\"0\"\n		 data-y=\"center\" data-voffset=\"-30\"\n		 data-speed=\"1500\"\n		 data-start=\"1000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h2>bảo vệ động vật hoang dã</h2>\n</div>\n\n<div class=\"tp-caption sfl sfb tp-resizeme\"\n		 data-x=\"center\" data-hoffset=\"0\"\n		 data-y=\"center\" data-voffset=\"50\"\n		 data-speed=\"1500\"\n		 data-start=\"1500\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<h4>Tất cả nỗ lực của chúng tôi có thể mang lại cuộc sống</h4>\n</div>\n\n<div class=\"tp-caption sfr sfb tp-resizeme\"\n		 data-x=\"center\" data-hoffset=\"0\"\n		 data-y=\"center\" data-voffset=\"120\"\n		 data-speed=\"1500\"\n		 data-start=\"2000\"\n		 data-easing=\"easeOutExpo\"\n		 data-splitin=\"none\"\n		 data-splitout=\"none\"\n		 data-elementdelay=\"0.01\"\n		 data-endelementdelay=\"0.3\"\n		 data-endspeed=\"1200\"\n		 data-endeasing=\"Power4.easeIn\">\n	<a href=\"#\" class=\"theme-btn btn-style-one\">Xem thêm</a>\n</div>', '2021-04-20 10:35:47', '2021-04-20 10:35:47'),
(64, 'pages', 'title', 3, 'vi', 'Liên hệ', '2021-04-22 10:18:27', '2021-04-22 10:32:35'),
(65, 'pages', 'body', 3, 'vi', '<p>Li&ecirc;n hệ</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -20px; top: -14px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', '2021-04-22 10:18:27', '2021-04-22 10:32:35'),
(66, 'pages', 'slug', 3, 'vi', 'contact', '2021-04-22 10:18:27', '2021-04-22 10:18:27'),
(67, 'pages', 'title', 4, 'vi', 'Bài viết', '2021-04-23 02:22:30', '2021-04-23 02:22:30'),
(68, 'pages', 'body', 4, 'vi', '<p>b&agrave;i viết</p>', '2021-04-23 02:22:30', '2021-04-23 02:22:30'),
(69, 'pages', 'slug', 4, 'vi', 'bai-viet', '2021-04-23 02:22:30', '2021-04-23 02:22:30'),
(70, 'posts', 'title', 5, 'vi', 'Sự kiện Hanoi OSM Mapathon 2018', '2021-04-23 03:54:23', '2021-04-23 05:05:13'),
(71, 'posts', 'excerpt', 5, 'vi', 'Thời gian: từ 8:30 đến 17:00 ngày 18/3/2018\nĐịa điểm: tòa nhà The Vuon, Tầng 3 Tháp A tòa nhà D2 Giảng Võ – Ba Đình – Hà Nội', '2021-04-23 03:54:23', '2021-04-23 05:05:13'),
(72, 'posts', 'body', 5, 'vi', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">H&agrave; Nội OSM Mapathon 2018 l&agrave; sự kiện do Cộng đồng OpenStreetMap H&agrave; Nội, c&ocirc;ng ty GFD v&agrave; c&ocirc;ng ty Grab đồng tổ chức. Chương tr&igrave;nh d&agrave;nh cho c&aacute;c bạn y&ecirc;u th&iacute;ch v&agrave; mong muốn đ&oacute;ng g&oacute;p v&agrave;o việc x&acirc;y dựng bản đồ H&agrave; Nội theo c&aacute;c chủ đề c&ograve;n bị hạn chế tr&ecirc;n nền tảng OpenStreetMap như bến xe bus, đền ch&ugrave;a, viện bảo t&agrave;ng, c&aacute;c ng&otilde; nhỏ.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Thời gian: từ 8:30 đến 17:00 ng&agrave;y 18/3/2018<br style=\"box-sizing: border-box; margin-bottom: 0px;\" />Địa điểm: t&ograve;a nh&agrave; The Vuon, Tầng 3 Th&aacute;p A t&ograve;a nh&agrave; D2 Giảng V&otilde; &ndash; Ba Đ&igrave;nh &ndash; H&agrave; Nội</p>\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Tham dự H&agrave; Nội Mapathon 2018 bạn sẽ được học hỏi việc sử dụng nền tảng của OSM để cập nhật bản đồ, tải bản đồ về để sử dụng cho c&aacute;c mục đ&iacute;ch kh&aacute;c, giao lưu với cộng đồng c&aacute;c mapper ở H&agrave; Nội; được ph&aacute;t chứng chỉ đ&atilde; tham gia v&agrave; được tập huấn về OSM. Nh&oacute;m được b&igrave;nh chọn điểm cao nhất (map được nhiều v&agrave; ch&iacute;nh x&aacute;c nhất) sẽ nhận được phần thưởng của ban tổ chức.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -53px; top: -14px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', '2021-04-23 03:54:23', '2021-04-23 05:05:13'),
(73, 'posts', 'slug', 5, 'vi', 'su-kien-hanoi-osm-mapathon-2018', '2021-04-23 03:54:23', '2021-04-23 05:05:13'),
(74, 'posts', 'meta_description', 5, 'vi', 'day la', '2021-04-23 03:54:23', '2021-04-23 03:54:23'),
(75, 'posts', 'meta_keywords', 5, 'vi', 'gis-vi, research-vi', '2021-04-23 03:54:23', '2021-04-23 05:05:14'),
(76, 'menu_items', 'title', 22, 'vi', 'Slides', '2021-04-23 04:39:42', '2021-04-23 04:39:42'),
(77, 'posts', 'title', 1, 'vi', 'IDRISI Selva chính thức ra mắt', '2021-04-23 05:15:26', '2021-04-23 05:15:26'),
(78, 'posts', 'excerpt', 1, 'vi', 'Với tên gọi mới là IDRISI Selva, phiên bản 17 có những cải tiến cơ bản', '2021-04-23 05:15:26', '2021-04-23 05:15:26'),
(79, 'posts', 'body', 1, 'vi', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GFD, đại l&yacute; ủy quyền của Clark Labs tại Việt Nam, xin vui mừng th&ocirc;ng b&aacute;o phi&ecirc;n bản thứ 17 của phần mềm GIS/ Viễn th&aacute;m IDRISI được ch&iacute;nh thức ra mắt.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Với t&ecirc;n gọi mới l&agrave; IDRISI Selva, phi&ecirc;n bản 17 c&oacute; những cải tiến cơ bản sau:</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&ndash;&nbsp;Mở rộng đ&aacute;ng kể bộ c&ocirc;ng cụ Earth Trend Modeler;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&ndash;&nbsp;Bộ c&ocirc;ng cụ mới phục vụ kiểm k&ecirc; cho REDD (Giảm ph&aacute;t thải từ mất rừng v&agrave; suy tho&aacute;i rừng), gồm những c&ocirc;ng cụ cụ thể trong module Land Change Modeler;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&ndash;&nbsp;C&aacute;c kỹ thuật ph&acirc;n t&iacute;ch mới, tối ưu h&oacute;a v&agrave; hỗ trợ việc xuất/nhập dữ liệu;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&ndash;&nbsp;Tối ưu h&oacute;a chức năng hiển thị v&agrave; c&aacute;c yếu tố th&agrave;nh phần của bản đồ.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Truy cập website của ch&uacute;ng t&ocirc;i tại địa chỉ&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #202e24; text-decoration-line: none; margin-bottom: 0px; outline: 0px !important;\" href=\"http://www.gfd.com.vn/service/107/112/IDRISI-Remote-Sensing\">www.gfd.com.vn/service/107/112/IDRISI-Remote-Sensing</a>&nbsp;để biết th&ecirc;m chi tiết v&agrave; đặt h&agrave;ng qua mạng.</p>\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Để biết th&ecirc;m th&ocirc;ng tin chi tiết về sản phẩm, xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i, c&ocirc;ng ty GFD, H&agrave; Nội. ĐT: +84-4-221 17800. Email: info@gfd.com.vn</p>', '2021-04-23 05:15:26', '2021-04-23 05:15:26'),
(80, 'posts', 'slug', 1, 'vi', 'idrisi-selva-chinh-thuc-ra-mat', '2021-04-23 05:15:26', '2021-04-23 05:15:26'),
(81, 'posts', 'meta_description', 1, 'vi', 'This is the meta description', '2021-04-23 05:15:26', '2021-04-23 05:15:26'),
(82, 'posts', 'meta_keywords', 1, 'vi', 'gis-vi, research-vi', '2021-04-23 05:15:26', '2021-04-23 05:15:26'),
(83, 'posts', 'title', 2, 'vi', 'Hội thảo giới thiệu hệ thống chia sẻ thông tin ngành lâm nghiệp', '2021-04-23 05:17:48', '2021-04-23 05:17:48'),
(84, 'posts', 'excerpt', 2, 'vi', 'This is the excerpt for the sample Post', '2021-04-23 05:17:48', '2021-04-23 05:17:48'),
(85, 'posts', 'body', 2, 'vi', '<p><span style=\"color: #222222; font-family: \'Open Sans\';\">Ng&agrave;y 06/6/2018 Tổng Cục L&acirc;m Nghiệp đ&atilde; tổ chức hội nghị c&ocirc;ng bố hệ thống chia sẻ dữ liệu th&ocirc;ng tin ng&agrave;nh l&acirc;m nghiệp. C&aacute;c dữ liệu c&ocirc;ng khai của hệ thống c&oacute; thể truy cập tại địa chỉ http://maps.vnforest.gov.vn.</span></p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -34px; top: -14px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', '2021-04-23 05:17:48', '2021-04-23 05:17:48'),
(86, 'posts', 'slug', 2, 'vi', 'hoi-thao-gioi-thieu-he-thong-chia-se-thong-tin-nganh-lam-nghiep', '2021-04-23 05:17:48', '2021-04-23 05:17:48'),
(87, 'posts', 'meta_description', 2, 'vi', 'Meta Description for sample post', '2021-04-23 05:17:48', '2021-04-23 05:17:48'),
(88, 'posts', 'meta_keywords', 2, 'vi', 'keyword1, keyword2, keyword3', '2021-04-23 05:17:48', '2021-04-23 05:17:48'),
(89, 'posts', 'title', 3, 'vi', 'Xây dựng quy hoạch thành lập KBT Cù Lao Chàm', '2021-04-23 05:19:18', '2021-04-23 05:19:18'),
(90, 'posts', 'excerpt', 3, 'vi', 'This is the excerpt for the latest post', '2021-04-23 05:19:18', '2021-04-23 05:19:18'),
(91, 'posts', 'body', 3, 'vi', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Ng&agrave;y 1/4/2020 GFD đ&atilde; được dự &aacute;n Trường Sơn Xanh lựa chọn l&agrave; đơn vị tư vấn lập quy hoạch th&agrave;nh lập KBT C&ugrave; Lao Ch&agrave;m. Với tr&ecirc;n 819 lo&agrave;i động, thực vật sinh sống tr&ecirc;n cạn v&agrave; 1.309 lo&agrave;i sinh vật biển, trong đ&oacute; c&oacute; rất nhiều lo&agrave;i nguy cấp, qu&yacute; hiếm được ưu ti&ecirc;n bảo tồn, C&ugrave; Lao Ch&agrave;m l&agrave; một sinh cảnh quan trọng trong hệ sinh th&aacute;i rừng-biển Trung Trường Sơn.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Từ th&aacute;ng 4 đến th&aacute;ng 8/2020 nh&oacute;m chuy&ecirc;n gia GFD gồm PGS. TS. L&ecirc; Xu&acirc;n Cảnh; PGS. TS V&otilde; Sĩ Tuấn; TS. Ho&agrave;ng Việt Anh; Thạc Sĩ Nguyễn B&aacute; Quyền sẽ thực hiện c&aacute;c chuyến khảo s&aacute;t thực địa, l&agrave;m việc với c&aacute;c Sở, Ng&agrave;nh v&agrave; cộng đồng d&acirc;n cư ở KBT để x&acirc;y dựng quy hoạch th&agrave;nh lập KBT C&ugrave; Lao Ch&agrave;m. Dự kiến hồ sơ quy hoạch sẽ được ho&agrave;n thiện v&agrave; thẩm định tron th&aacute;ng 9/2020.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -40px; top: 32px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', '2021-04-23 05:19:18', '2021-04-23 05:19:18'),
(92, 'posts', 'slug', 3, 'vi', 'xay-dung-quy-hoach-thanh-lap-kbt-cu-lao-cham', '2021-04-23 05:19:18', '2021-04-23 05:19:18'),
(93, 'posts', 'meta_description', 3, 'vi', 'This is the meta description', '2021-04-23 05:19:18', '2021-04-23 05:19:18'),
(94, 'posts', 'meta_keywords', 3, 'vi', 'keyword1, keyword2, keyword3', '2021-04-23 05:19:18', '2021-04-23 05:19:18'),
(95, 'posts', 'title', 4, 'vi', 'hợp tác tối ưu hóa vận hành lò hơi cho dự án tại Lào', '2021-04-23 05:21:17', '2021-04-23 05:21:17'),
(96, 'posts', 'excerpt', 4, 'vi', 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. ', '2021-04-23 05:21:17', '2021-04-23 05:21:45'),
(97, 'posts', 'body', 4, 'vi', '<div class=\"wpb_text_column\" style=\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\';\">\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222;\">GFD hợp t&aacute;c tối ưu h&oacute;a vận h&agrave;nh l&ograve; hơi cho nh&agrave; m&aacute;y giấy tại L&agrave;o</p>\n</div>\n<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', '2021-04-23 05:21:17', '2021-04-23 05:21:17'),
(98, 'posts', 'slug', 4, 'vi', 'hop-tac-toi-uu-hoa-van-hanh-lo-hoi-cho-du-an-tai-lao', '2021-04-23 05:21:17', '2021-04-23 05:21:17'),
(99, 'posts', 'meta_description', 4, 'vi', 'this be a meta descript', '2021-04-23 05:21:17', '2021-04-23 05:21:17'),
(100, 'posts', 'meta_keywords', 4, 'vi', 'keyword1, keyword2, keyword3', '2021-04-23 05:21:17', '2021-04-23 05:21:17'),
(101, 'menu_items', 'title', 23, 'vi', 'Dữ liệu', '2021-04-27 01:29:37', '2021-04-27 01:29:37'),
(102, 'menu_items', 'title', 24, 'vi', 'Dự án', '2021-04-27 01:31:29', '2021-04-27 01:31:29'),
(103, 'menu_items', 'title', 25, 'vi', 'Sản phẩm', '2021-04-27 01:32:00', '2021-04-27 01:32:00'),
(104, 'pages', 'title', 5, 'vi', 'Tang dữ liệu', '2021-04-27 09:41:01', '2021-04-27 09:41:01'),
(105, 'pages', 'body', 5, 'vi', '<h3 style=\"box-sizing: border-box; font-family: Montserrat; font-weight: 400; line-height: 36px; color: #222222; margin: 0px 0px 23px; font-size: 20px; letter-spacing: -0.06em; padding: 17px 0px 0px;\">Danh s&aacute;ch c&aacute;c loại dữ liệu GIS và Vi&ecirc;̃n thám cho Vi&ecirc;̣t Nam</h3>\n<p><span style=\"color: #222222; font-family: \'Open Sans\';\">Trang n&agrave;y cung cấp một số bộ dữ liệu GIS và Vi&ecirc;̃n thám để phục vụ cho c&aacute;c đ&agrave;o tạo, tập huấn v&agrave; demo của GFD. C&aacute;c dữ liệu vector chủ yếu được cung cấp ở dạng ESRI shp, dữ liệu raster được cung cấp dưới dạng ảnh GeoTiff.</span><br style=\"box-sizing: border-box; margin-bottom: 0px; color: #222222; font-family: \'Open Sans\';\" /><span style=\"color: #222222; font-family: \'Open Sans\';\">Dữ liệu n&agrave;y được ch&uacute;ng t&ocirc;i thu thập, tổng hợp từ nhiều nguồn, phần lớn l&agrave; miễn ph&iacute;. Bộ dữ liệu n&agrave;y được cung cấp với mục đ&iacute;ch ch&iacute;nh l&agrave; để minh họa cho c&aacute;c tập huấn của ch&uacute;ng t&ocirc;i, một số dữ liệu chưa hẳn l&agrave; ph&ugrave; hợp cho c&aacute;c nghi&ecirc;n cứu khoa học hoặc cho mục đ&iacute;ch thương mại.</span></p>\n<table style=\"height: 149px; width: 0%; border-collapse: collapse; border-style: solid; border-color: black;\" border=\"1\">\n<tbody>\n<tr style=\"height: 39px;\">\n<td style=\"width: 33.3333%; height: 39px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px; font-weight: bold;\">T&ecirc;n dữ liệu</span></td>\n<td style=\"width: 33.3333%; height: 39px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px; font-weight: bold;\">M&ocirc; tả</span></td>\n<td style=\"width: 33.3333%; height: 39px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px; font-weight: bold;\">Tải xuống</span></td>\n</tr>\n<tr style=\"height: 36px;\">\n<td style=\"width: 33.3333%; height: 36px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px;\">DEM VN</span></td>\n<td style=\"width: 33.3333%; height: 36px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px;\">Dữ liệu m&ocirc; h&igrave;nh số độ cao độ ph&acirc;n giải 30 m. Nguồn từ NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 33.3333%; height: 36px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">DEM Vietnam</a></td>\n</tr>\n<tr style=\"height: 37px;\">\n<td style=\"width: 33.3333%; height: 37px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px;\">DEM VN</span></td>\n<td style=\"width: 33.3333%; height: 37px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px;\">Dữ liệu m&ocirc; h&igrave;nh số độ cao độ ph&acirc;n giải 30 m. Nguồn từ NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 33.3333%; height: 37px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">DEM Vietnam</a></td>\n</tr>\n<tr style=\"height: 37px;\">\n<td style=\"width: 33.3333%; height: 37px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px;\">DEM VN</span></td>\n<td style=\"width: 33.3333%; height: 37px;\"><span style=\"color: #777777; font-family: \'Open Sans\'; font-size: 14px;\">Dữ liệu m&ocirc; h&igrave;nh số độ cao độ ph&acirc;n giải 30 m. Nguồn từ NASA Shuttle Radar Topography Mission (SRTM) Version 3.0</span></td>\n<td style=\"width: 33.3333%; height: 37px;\"><a style=\"box-sizing: border-box; color: #202e24; text-decoration-line: none; font-family: \'Open Sans\'; font-size: 14px; outline: 0px !important;\" href=\"https://drive.google.com/drive/folders/0Bx55JsBuQY73TFpGMGNuUG1zelU\" target=\"_blank\" rel=\"noopener\">DEM Vietnam</a></td>\n</tr>\n</tbody>\n</table>', '2021-04-27 09:41:01', '2021-04-27 09:50:00'),
(106, 'pages', 'slug', 5, 'vi', 'tang-du-lieu', '2021-04-27 09:41:01', '2021-04-27 09:41:01'),
(107, 'products', 'title', 3, 'vi', 'giới thiệu về ứng dụng mobile geosurvey', '2021-04-28 07:47:15', '2021-04-28 07:47:15'),
(108, 'products', 'excerpt', 3, 'vi', 'GeoSurvey là một ứng dụng cho thiết bị di động, được GFD phát triển nhằm giúp người dùng thu thập số liệu thực địa nhanh chóng và chính xác hơn. ', '2021-04-28 07:47:15', '2021-04-28 07:47:15'),
(109, 'products', 'body', 3, 'vi', '<p class=\"text_justify\" style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey l&agrave; một ứng dụng cho thiết bị di động, được GFD ph&aacute;t triển nhằm gi&uacute;p người d&ugrave;ng thu thập số liệu thực địa nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c hơn. Ứng dụng GeoSurvey chạy được tr&ecirc;n tất cả c&aacute;c thiết bị di động (điện thoại, m&aacute;y t&iacute;nh bảng chạy hệ điều h&agrave;nh Google Android OS 4.0 trở l&ecirc;n). GeoSurvey gi&uacute;p tiết kiệm c&ocirc;ng sức, thời gian cho việc điều tra thực địa nhờ tận dụng tốt c&aacute;c t&iacute;nh năng được t&iacute;ch hợp tr&ecirc;n điện thoại th&ocirc;ng minh như GPS, la b&agrave;n số, m&aacute;y ảnh, c&aacute;c loại cảm biến v.v&hellip;thay v&igrave; phải mua c&aacute;c thiết bị chuy&ecirc;n dụng cũng c&oacute; c&aacute;c t&iacute;nh năng tương tự. GeoSurvey c&oacute; thư viện t&iacute;nh chuyển hệ tọa độ ri&ecirc;ng, hỗ trợ hệ chiếu VN2000 cho 63 tỉnh th&agrave;nh tr&ecirc;n cả nước.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey hỗ trợ người d&ugrave;ng thu thập c&aacute;c loại dữ liệu gồm:</p>\n<ul class=\"text_left\" style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dữ liệu kh&ocirc;ng gian: điểm, đường, v&ugrave;ng.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dữ liệu thuộc t&iacute;nh: cho ph&eacute;p người d&ugrave;ng tạo form thu thập số liệu t&ugrave;y biến.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dữ liệu h&igrave;nh ảnh thực địa.</span></li>\n</ul>\n<p class=\"text_justify\" style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey cho ph&eacute;p import c&aacute;c điểm waypoint từ ngo&agrave;i v&agrave;o, hỗ trợ chỉ hướng v&agrave; khoảng c&aacute;ch tới waypoint (waypoint navigation), lưu lại c&aacute;c track tr&ecirc;n thực địa. Ngo&agrave;i ra GeoSurvey cũng hỗ trợ người d&ugrave;ng export v&agrave; chia sẻ dữ liệu online, offline v&agrave; nhiều t&iacute;nh năng tiện &iacute;ch kh&aacute;c.</p>\n<p class=\"text_justify\" style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">GeoSurvey cũng c&oacute; thể được t&ugrave;y biến v&agrave; t&iacute;ch hợp với một back-end database để tạo ra một hệ thống thu thập v&agrave; quản l&yacute; dữ liệu địa l&yacute; ho&agrave;n chỉnh, ứng dụng cho c&aacute;c lĩnh vực như: quản l&yacute; đội xe, b&aacute;n v&agrave; giao nhận h&agrave;ng, khảo s&aacute;t/ đo đạc, theo d&otilde;i diễn biến rừng. Hiện tại GeoSurvey đ&atilde; được sử dụng cho một số dự &aacute;n:</p>\n<ul class=\"text_left\" style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Quản l&yacute; đội ngũ t&agrave;i xế cho c&aacute;c dự &aacute;n thu thập dữ liệu đường phố quy m&ocirc; lớn.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dự &aacute;n gi&aacute;m s&aacute;t an to&agrave;n thủy điện cấp cộng đồng tại 3 tỉnh Sơn La, Bắc Kạn, Đắk Lắk: quy m&ocirc; 40 điều tra vi&ecirc;n.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Khu c&ocirc;ng nghiệp H&oacute;a dầu Nghi Sơn: quy m&ocirc; 30 m&aacute;y t&iacute;nh bảng, t&iacute;ch hợp với hệ thống CSDL tr&ecirc;n m&aacute;y chủ Web.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dự &aacute;n JICA Điện Bi&ecirc;n: quy m&ocirc; 200 m&aacute;y t&iacute;nh bảng, t&iacute;ch hợp với hệ thống m&aacute;y chủ theo d&otilde;i diễn biến rừng.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dự &aacute;n Vietnam Forest and Delta tại Thanh H&oacute;a, Nghệ An: quy m&ocirc; 40 m&aacute;y t&iacute;nh bảng, t&iacute;ch hợp với m&aacute;y chủ theo d&otilde;i diễn biến rừng v&agrave; đa dạng sinh học.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dự &aacute;n UN-REDD H&agrave; Tĩnh: quy m&ocirc; 70 m&aacute;y t&iacute;nh bảng, t&iacute;nh hợp với m&aacute;y chủ theo d&otilde;i diễn biến rừng v&agrave; FORMIS.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dự &aacute;n Trường Sơn Xanh Quảng Nam, Thừa Thi&ecirc;n Huế: quy m&ocirc; 400 m&aacute;y t&iacute;nh bảng</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin-bottom: 0px;\">Dự &aacute;n theo d&otilde;i tre nứa to&agrave;n cầu của tổ chức INBAR: ứng dụng tại 10 quốc gia trong mạng lưới INBAR</span></li>\n</ul>', '2021-04-28 07:47:15', '2021-04-28 07:47:15'),
(110, 'products', 'meta_description', 3, 'vi', 'data', '2021-04-28 07:47:15', '2021-04-28 07:47:15'),
(111, 'products', 'meta_keywords', 3, 'vi', 'data', '2021-04-28 07:47:15', '2021-04-28 07:47:15'),
(112, 'products', 'title', 4, 'vi', 'Hệ thống theo dõi diễn biến rừng', '2021-04-28 07:52:26', '2021-04-28 07:52:26');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(113, 'products', 'excerpt', 4, 'vi', 'FMS đáp ứng được các yêu cầu quản lý của ngành lâm nghiệp và các yêu cầu đặc thù của các công ty, tổ chức với các chức năng cụ thể', '2021-04-28 07:52:26', '2021-04-28 07:52:26'),
(114, 'products', 'body', 4, 'vi', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Hệ thống theo d&otilde;i diễn biến rừng (FMS &ndash; Forest Monitoring System) do GFD ph&aacute;t triển l&agrave; một nền tảng Viễn th&aacute;m v&agrave; GIS t&iacute;ch hợp cung cấp cho kh&aacute;ch h&agrave;ng khả năng cập nhật v&agrave; quản trị một c&aacute;ch to&agrave;n diện t&agrave;i nguy&ecirc;n rừng v&agrave; diễn biến rừng cấp tỉnh, cấp huyện v&agrave; cho c&aacute;c chủ rừng lớn. Hướng tới chuyển đổi số trong l&acirc;m nghiệp, FMS được x&acirc;y dựng gồm 3 th&agrave;nh phần ch&iacute;nh: i) hệ thống tự động ph&aacute;t hiện mất rừng từ ảnh vệ tinh; ii) hệ thống WebGIS v&agrave; quản l&yacute; rừng trực tuyến hoạt động tr&ecirc;n nền tảng điện to&aacute;n đ&aacute;m m&acirc;y; iii) ứng dụng mobile app cho ph&eacute;p thu thập v&agrave; cập nhật số liệu tr&ecirc;n thực địa.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">FMS đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu quản l&yacute; của ng&agrave;nh l&acirc;m nghiệp v&agrave; c&aacute;c y&ecirc;u cầu đặc th&ugrave; của c&aacute;c c&ocirc;ng ty, tổ chức với c&aacute;c chức năng cụ thể như sau:</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<figure class=\"wp-block-image is-resized\" style=\"box-sizing: border-box; display: table; margin: 1em 0px; max-width: 100%; color: #777777; font-family: \'Open Sans\';\">\n<figure id=\"attachment_2170\" class=\"wp-caption alignnone\" style=\"box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 1px solid #f0f0f0; max-width: 96%; padding: 5px 3px 10px; text-align: center; width: 628px; margin: 0px 0px 20px !important;\" aria-describedby=\"caption-attachment-2170\"><img class=\"wp-image-2170\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; margin: 0px; padding: 0px; width: auto;\" src=\"http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1.jpg\" sizes=\"(max-width: 628px) 100vw, 628px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1.jpg 837w, http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1-300x280.jpg 300w, http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1-768x718.jpg 768w, http://gfd.com.vn/wp-content/uploads/2019/11/FMS-1-600x561.jpg 600w\" alt=\"\" width=\"628\" height=\"587\" />\n<figcaption id=\"caption-attachment-2170\" class=\"wp-caption-text\" style=\"box-sizing: border-box; margin-top: 0.5em; margin-bottom: 0px; color: #555d66; font-size: 13px; padding: 5px 0px 0px;\">Nh&oacute;m c&aacute;c module của giải ph&aacute;p FMS</figcaption>\n</figure>\n<figcaption style=\"box-sizing: border-box; display: table-caption; margin-top: 0.5em; margin-bottom: 0px; color: #555d66; text-align: center; font-size: 13px; caption-side: bottom;\"></figcaption>\n</figure>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<h4 style=\"box-sizing: border-box; font-family: Montserrat; line-height: 28px; color: #222222; margin: 0px 0px 23px; font-size: 20px; letter-spacing: -0.04em; padding: 23px 0px 0px;\">Hệ thống FMS dựa tr&ecirc;n c&aacute;c nguồn dữ liệu v&agrave; c&aacute;c cơ chế gi&aacute;m s&aacute;t rừng của ng&agrave;nh l&acirc;m nghiệp bao gồm</h4>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">CSDL hiện trạng rừng cập nhật h&agrave;ng năm theo quy tr&igrave;nh của Tổng Cục L&acirc;m Nghiệp.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Dữ liệu theo d&otilde;i diễn biến rừng tr&ecirc;n thực địa sử dụng phần mềm FRMS mobile do Dự &aacute;n Hỗ trợ kỹ thuật Quản l&yacute; T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n Bền vững (JICA SNRM) t&agrave;i trợ v&agrave; GFD l&agrave; đơn vị ph&aacute;t triển.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Phần mềm mobile app tuần tra, cập nhật diễn biến rừng tr&ecirc;n mobile do GFD ph&aacute;t triển theo nhu cầu cụ thể của từng kh&aacute;ch h&agrave;ng, c&aacute;c module mới c&oacute; thể được ph&aacute;t triển để thực hiện c&aacute;c nghiệp vụ về tuần tra, gi&aacute;m s&aacute;t đa dạng sinh học, tra cứu th&ocirc;ng tin.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Dữ liệu c&aacute;c điểm mất rừng rừng từ ảnh vệ tinh được cập nhật 10-15 ng&agrave;y một lần bằng c&aacute;c thuật to&aacute;n do GFD ph&aacute;t triển tr&ecirc;n nền tảng Google Earth Engine v&agrave; tr&ecirc;n hạ tầng điện to&aacute;n đ&aacute;m m&acirc;y của GFD.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Dữ liệu ảnh vệ tinh Sentinel 2 độ ph&acirc;n giải 10m, ảnh Landsat 8 độ ph&acirc;n giải 15m được cập nhật theo thời gian thực (miễn ph&iacute; v&agrave; bao gồm trong giải ph&aacute;p). Sử dụng dữ liệu n&agrave;y, kh&aacute;ch h&agrave;ng c&oacute; thể dễ d&agrave;ng xem lại c&aacute;c ảnh vệ tinh trong qu&aacute; khứ v&agrave; kiểm chứng lại độ ch&iacute;nh x&aacute;c của c&aacute;c diễn biến rừng được hệ thống ph&aacute;t hiện.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Dữ liệu ảnh vệ tỉnh Planet độ ph&acirc;n giải 3 m được cập nhật theo thời gian thực (c&oacute; t&iacute;nh ph&iacute;). Ảnh Planet c&oacute; thể được cung cấp theo ng&agrave;y, theo tuần, theo th&aacute;ng v&agrave; theo qu&yacute;.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Dữ liệu cảnh b&aacute;o ch&aacute;y rừng thời gian thực (near real time) từ ảnh vệ tinh.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Hệ thống lập b&aacute;o c&aacute;o diến biến rừng tu&acirc;n thủ c&aacute;c quy định mới nhất của Tổng Cục L&acirc;m Nghiệp (th&ocirc;ng tư 33); hệ thống b&aacute;o c&aacute;o t&ugrave;y biến theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Hệ thống được x&acirc;y dựng theo kiến tr&uacute;c hướng dịch vụ v&agrave; c&oacute; thể t&aacute;i sử dụng cho c&aacute;c đơn vị kh&aacute;c trong tỉnh, v&iacute; dụ chi trả dịch vụ m&ocirc;i trường rừng, x&aacute;c minh nguồn gốc gỗ, cấp chứng chỉ rừng.</li>\n</ul>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<figure class=\"wp-block-image\" style=\"box-sizing: border-box; margin: 1em 0px; max-width: 100%; color: #777777; font-family: \'Open Sans\';\">\n<figure id=\"attachment_2171\" class=\"wp-caption aligncenter\" style=\"box-sizing: border-box; display: table; margin: 5px auto 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 1px solid #f0f0f0; max-width: 96%; padding: 5px 3px 10px; text-align: center; width: 1024px;\" aria-describedby=\"caption-attachment-2171\"><img class=\"wp-image-2171 size-large\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; margin: 0px; padding: 0px; width: auto;\" src=\"http://gfd.com.vn/wp-content/uploads/2019/11/fms2-1024x539.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2019/11/fms2-1024x539.jpg 1024w, http://gfd.com.vn/wp-content/uploads/2019/11/fms2-300x158.jpg 300w, http://gfd.com.vn/wp-content/uploads/2019/11/fms2-768x404.jpg 768w, http://gfd.com.vn/wp-content/uploads/2019/11/fms2-600x316.jpg 600w\" alt=\"\" width=\"1024\" height=\"539\" />\n<figcaption id=\"caption-attachment-2171\" class=\"wp-caption-text\" style=\"box-sizing: border-box; display: table-caption; margin-top: 0.5em; margin-bottom: 0px; color: #555d66; font-size: 13px; padding: 5px 0px 0px; caption-side: bottom;\">Giao diện hệ thống theo d&otilde;i diễn biến rừng triển khai tại Quảng Nam v&agrave; Thừa Thi&ecirc;n Huế</figcaption>\n</figure>\n</figure>\n<h4 style=\"box-sizing: border-box; font-family: Montserrat; line-height: 28px; color: #222222; margin: 0px 0px 23px; font-size: 20px; letter-spacing: -0.04em; padding: 23px 0px 0px;\">Thế mạnh của FMS trong việc triển khai cho quản l&yacute; rừng ở cấp tỉnh hoặc c&aacute;c chủ rừng lớn</h4>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px; color: #777777; font-family: \'Open Sans\';\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Một hệ thống duy nhất cho tất cả c&aacute;c cấp quản l&yacute; rừng: c&aacute;c đơn vị cấp Chi cục Kiểm L&acirc;m, Hạt Kiểm l&acirc;m, chủ rừng rừng sử dụng chung 1 hệ thống được quản l&yacute;/khai th&aacute;c th&ocirc;ng tin theo ph&acirc;n quyền cụ thể, kh&ocirc;ng giới hạn số lượng ph&ograve;ng/ban/tổ đội tham gia hệ thống.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Hệ thống được x&acirc;y dựng với kiến tr&uacute;c mở, dễ d&agrave;ng t&ugrave;y biến cao để ph&ugrave; hợp với c&aacute;c y&ecirc;u cầu mới trong ng&agrave;nh hoặc những y&ecirc;u cầu mới trong thực tiễn quản l&yacute; , điều h&agrave;nh.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Cung cấp c&aacute;c c&ocirc;ng cụ ti&ecirc;n tiến nhất cho khai th&aacute;c v&agrave; ph&acirc;n t&iacute;ch th&ocirc;ng tin: t&igrave;m kiếm to&agrave;n văn, ph&acirc;n t&iacute;ch kh&ocirc;ng gian, đọc dữ liệu offline tr&ecirc;n m&ocirc;i trường Web, t&iacute;ch hợp v&agrave; chia sẻ th&ocirc;ng tin tr&ecirc;n m&ocirc;i trường Web.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Dễ d&agrave;ng hỗ trợ cả 3 nền tảng Desktop, Web v&agrave; Mobile.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Hệ thống sử dụng ho&agrave;n to&agrave;n c&aacute;c thư viện m&atilde; nguồn mở, miễn ph&iacute; do đ&oacute; gi&uacute;p cho việc giảm thiểu chi ph&iacute; mua bản quyền, dễ d&agrave;ng mở rộng v&agrave; triển khai tr&ecirc;n quy m&ocirc; lớn.</li>\n</ul>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">&nbsp;</p>\n<figure id=\"attachment_2419\" class=\"wp-caption aligncenter\" style=\"box-sizing: border-box; margin: 5px auto 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 1px solid #f0f0f0; max-width: 96%; padding: 5px 3px 10px; text-align: center; color: #777777; font-family: \'Open Sans\'; width: 1024px;\" aria-describedby=\"caption-attachment-2419\"><img class=\"wp-image-2419 size-large\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; height: auto; margin: 0px; max-width: 100%; padding: 0px; width: auto;\" src=\"http://gfd.com.vn/wp-content/uploads/2020/07/change-detection-1024x651.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"http://gfd.com.vn/wp-content/uploads/2020/07/change-detection-1024x651.jpg 1024w, http://gfd.com.vn/wp-content/uploads/2020/07/change-detection-300x191.jpg 300w, http://gfd.com.vn/wp-content/uploads/2020/07/change-detection-768x488.jpg 768w, http://gfd.com.vn/wp-content/uploads/2020/07/change-detection-600x382.jpg 600w, http://gfd.com.vn/wp-content/uploads/2020/07/change-detection.jpg 1280w\" alt=\"\" width=\"1024\" height=\"651\" />\n<figcaption id=\"caption-attachment-2419\" class=\"wp-caption-text\" style=\"box-sizing: border-box; padding: 5px 0px 0px; margin-bottom: 0px;\">Hệ thống đ&aacute;nh gi&aacute; mất rừng từ ảnh vệ tinh</figcaption>\n</figure>\n<p style=\"box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222; font-family: \'Open Sans\';\">Hệ thống FMS do GFD ph&aacute;t triển đ&atilde; được triển khai tại c&aacute;c tỉnh Quảng Nam, Thừa Thi&ecirc;n Huế, B&igrave;nh Thuận, Quảng Nam v&agrave; thử nghiệm cho dự &aacute;n FMCR tại tỉnh Quảng Ninh.</p>', '2021-04-28 07:52:26', '2021-04-28 07:52:26'),
(115, 'products', 'meta_description', 4, 'vi', 'data', '2021-04-28 07:52:26', '2021-04-28 07:52:26'),
(116, 'products', 'meta_keywords', 4, 'vi', 'data', '2021-04-28 07:52:26', '2021-04-28 07:52:26'),
(117, 'data_rows', 'display_name', 70, 'vi', 'ID', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(118, 'data_rows', 'display_name', 71, 'vi', 'Tiêu đề', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(119, 'data_rows', 'display_name', 72, 'vi', 'Mô tả', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(120, 'data_rows', 'display_name', 73, 'vi', 'Nội dung', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(121, 'data_rows', 'display_name', 74, 'vi', 'Ảnh', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(122, 'data_rows', 'display_name', 75, 'vi', 'Slug', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(123, 'data_rows', 'display_name', 76, 'vi', 'Meta Description', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(124, 'data_rows', 'display_name', 77, 'vi', 'Meta Keywords', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(125, 'data_rows', 'display_name', 78, 'vi', 'Trạng thái', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(126, 'data_rows', 'display_name', 79, 'vi', 'Created At', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(127, 'data_rows', 'display_name', 80, 'vi', 'Updated At', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(128, 'data_rows', 'display_name', 81, 'vi', 'Danh mục bài viết', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(129, 'data_types', 'display_name_singular', 9, 'vi', 'Sản phẩm - Dịch vụ - Dự án', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(130, 'data_types', 'display_name_plural', 9, 'vi', 'Sản phẩm - Dịch vụ - Dự án', '2021-04-28 08:31:16', '2021-04-28 08:31:16'),
(131, 'menu_items', 'title', 26, 'vi', 'Sản phẩm - Dịch vụ - Dự án', '2021-04-28 08:33:03', '2021-04-28 08:33:03'),
(132, 'products', 'title', 5, 'vi', 'Xây dựng đề án trình và phê duyệt thành lập Khu bảo tồn thiên nhiên Cù Lao Chàm (KBTTN CLC) và lắp đặt bảng hiệu đa dạng sinh học cho Trung tâm Giáo dục Thiên nhiên Cộng đồng ở Cù Lao Chàm', '2021-04-28 08:56:30', '2021-04-28 08:56:30'),
(133, 'products', 'excerpt', 5, 'vi', 'Xây dựng đề án trình và phê duyệt thành lập Khu bảo tồn thiên nhiên Cù Lao Chàm (KBTTN CLC) và lắp đặt bảng hiệu đa dạng sinh học cho Trung tâm Giáo dục Thiên nhiên Cộng đồng ở Cù Lao Chàm', '2021-04-28 08:56:30', '2021-04-28 08:56:30'),
(134, 'products', 'body', 5, 'vi', '<div class=\"wpb_text_column\" style=\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\';\">\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222;\">Mục đ&iacute;ch của g&oacute;i thầu n&agrave;y nhằm X&acirc;y dựng đề &aacute;n th&agrave;nh lập Khu Bảo tồn Thi&ecirc;n nhi&ecirc;n C&ugrave; Lao Ch&agrave;m (CLC) tr&igrave;nh UBND tỉnh ph&ecirc; duyệt cho diện t&iacute;ch 23.500 ha, trong đ&oacute; 1.642,8 ha tr&ecirc;n cạn v&agrave; 21.857,2ha biển, ph&ugrave; hợp với Quyết định 1976/QĐ-TTg của Thủ tướng Ch&iacute;nh phủ về ph&ecirc; duyệt quy hoạch hệ thống rừng đặc dụng, Quyết định 45/QĐ-TTg của Thủ tướng Ch&iacute;nh phủ về Bảo tồn Biển Việt Nam. Trong đ&oacute;, c&aacute;c mục ti&ecirc;u ch&iacute;nh l&agrave;:</p>\n<ul style=\"box-sizing: border-box; margin: 0px 0px 20px; list-style: none; padding: 0px;\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Đ&aacute;nh gi&aacute; hiện trạng đa dạng sinh học, l&agrave;m cơ sở x&aacute;c định phạm vi, ranh giới khu bảo tồn; c&aacute;c ph&acirc;n khu chức năng. Nh&oacute;m chuy&ecirc;n gia phối hợp với c&aacute;c c&aacute;n bộ kỹ thuật của BQL Khu bảo tồn biển CLC tiến h&agrave;nh r&agrave; so&aacute;t hiện trạng rừng, đất l&acirc;m nghiệp, x&aacute;c định hiện trạng c&aacute;c loại rừng trong khu vực; x&aacute;c định v&agrave; đề xuất ph&acirc;n khu chức năng khu bảo tồn.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">R&agrave; so&aacute;t, đ&aacute;nh gi&aacute; hiện trạng đa dạng sinh học, x&aacute;c định bản đồ ph&acirc;n bố c&aacute;c lo&agrave;i động, thực vật rừng qu&yacute; hiếm; c&aacute;c hệ sinh th&aacute;i rừng, biển quan trọng trong khu vực, tạo cơ sở x&aacute;c định bản đồ ph&acirc;n khu chức năng khu bảo tồn.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh kinh tế, x&atilde; hội trong khu vực, đặc biệt l&agrave; hiện trạng ph&aacute;t triển kinh tế tại x&atilde; T&acirc;n Hiệp (v&ugrave;ng l&otilde;i khu bảo tồn biển), v&agrave; c&aacute;c khu vực l&acirc;n cận (c&aacute;c x&atilde; v&ugrave;ng đệm); x&acirc;y dựng bản đồ quy hoạch v&ugrave;ng đệm khu bảo tồn; đề xuất c&aacute;c giải ph&aacute;p ph&aacute;t triển sinh kế bền vững trong khu vực.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">R&agrave; so&aacute;t, đ&aacute;nh gi&aacute; hiện trạng c&ocirc;ng t&aacute;c quản l&yacute;, bảo tồn tại BQL Khu bảo tồn biển CLC; hiện trạng quản l&yacute; rừng đặc dụng trong khu vực; x&aacute;c định v&agrave; đề xuất c&aacute;c giải ph&aacute;p, chương tr&igrave;nh, hoạt động nhằm quản l&yacute;, bảo tồn, v&agrave; ph&aacute;t triển bền vững trong khu vực.</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Đ&aacute;nh gi&aacute; hiện trạng cơ cấu tổ chức, bộ m&aacute;y quản l&yacute; khu bảo tồn biển; đ&aacute;nh gi&aacute; hiện trạng thể chế, quy chế quản l&yacute; trong khu vực; đề xuất cơ cấu tổ chức, bộ m&aacute;y quản l&yacute; khu bảo tồn.</li>\n</ul>\n<h5 style=\"box-sizing: border-box; font-family: Montserrat; line-height: 22px; color: #222222; margin: 0px 0px 23px; font-size: 18px; letter-spacing: -0.04em; padding: 28px 0px 0px;\">Kết quả hoạt động tư vấn</h5>\n<ul style=\"box-sizing: border-box; margin: 0px; list-style: none; padding: 0px;\">\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\"><span style=\"box-sizing: border-box; margin-bottom: 0px;\">Hồ sơ th&agrave;nh lập khu bảo tồn thi&ecirc;n nhi&ecirc;n C&ugrave; Lao Ch&agrave;m được x&acirc;y dựng v&agrave; ho&agrave;n thiện theo đ&uacute;ng quy định của c&aacute;c văn bản ph&aacute;p l&yacute; hiện h&agrave;nh, cụ thể l&agrave; Luật Đa dạng sinh học năm 2008 v&agrave; Nghị định 65 năm 2010. Một số th&ocirc;ng tin ch&iacute;nh của nội dung đề &aacute;n th&agrave;nh lập.</span></li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px 0px 14px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">T&ecirc;n gọi: Khu bảo tồn thi&ecirc;n nhi&ecirc;n C&ugrave; Lao Ch&agrave;m, th&agrave;nh phố Hội An, tỉnh Quảng Nam; ph&acirc;n hạng: Khu bảo vệ cảnh quan</li>\n<li style=\"box-sizing: border-box; position: relative; padding: 0px 0px 0px 26px; margin: 0px; line-height: 18px; color: #222222; border: none; font-size: 13px;\">Tổng diện t&iacute;ch khu bảo tồn l&agrave; 23.500 ha, trong đ&oacute; gồm 1.642,8 ha phần đảo v&agrave; 21.857,2 ha phần biển, bao gồm 07 h&ograve;n đảo thuộc v&ugrave;ng biển C&ugrave; Lao Ch&agrave;m (kh&ocirc;ng bao gồm H&ograve;n &Ocirc;ng). Khu bảo tồn nằm trong địa giới h&agrave;nh ch&iacute;nh x&atilde; T&acirc;n Hiệp, th&agrave;nh phố Hội An, tỉnh Quảng Nam</li>\n<li>&nbsp;</li>\n</ul>\n</div>', '2021-04-28 08:56:30', '2021-04-28 08:56:30'),
(135, 'products', 'meta_description', 5, 'vi', 'Xây dựng đề án trình và phê duyệt thành lập Khu bảo tồn thiên nhiên Cù Lao Chàm (KBTTN CLC) và lắp đặt bảng hiệu đa dạng sinh học cho Trung tâm Giáo dục Thiên nhiên Cộng đồng ở Cù Lao Chàm', '2021-04-28 08:56:30', '2021-04-28 08:56:30'),
(136, 'products', 'meta_keywords', 5, 'vi', 'Xây dựng đề án trình và phê duyệt thành lập Khu bảo tồn thiên nhiên Cù Lao Chàm (KBTTN CLC) và lắp đặt bảng hiệu đa dạng sinh học cho Trung tâm Giáo dục Thiên nhiên Cộng đồng ở Cù Lao Chàm', '2021-04-28 08:56:31', '2021-04-28 08:56:31'),
(137, 'products', 'slug', 4, 'vi', 'he-thong-theo-doi-dien-bien-rung', '2021-04-28 09:25:18', '2021-04-28 09:25:18'),
(138, 'products', 'slug', 3, 'vi', 'gioi-thieu-ve-ung-dung-mobile-geosurvey', '2021-04-28 09:25:43', '2021-04-28 09:25:43'),
(139, 'products', 'slug', 5, 'vi', 'xay-dung-de-an-trinh-va-phe-duyet-thanh-lap-khu-bao-ton-thien-nhien-cu-lao-cham-kbttn-clc-va-lap-dat-bang-hieu-da-dang-sinh-hoc-cho-trung-tam-giao-duc-thien-nhien-cong-dong-o-cu-lao-cham', '2021-04-28 09:27:14', '2021-04-28 09:27:14'),
(140, 'data_rows', 'display_name', 82, 'vi', 'Id', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(141, 'data_rows', 'display_name', 83, 'vi', 'Họ và tên', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(142, 'data_rows', 'display_name', 84, 'vi', 'Chức vụ', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(143, 'data_rows', 'display_name', 85, 'vi', 'Thông tin chung', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(144, 'data_rows', 'display_name', 86, 'vi', 'Hình ảnh', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(145, 'data_rows', 'display_name', 87, 'vi', 'Ngày tạo', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(146, 'data_rows', 'display_name', 88, 'vi', 'Updated At', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(147, 'data_types', 'display_name_singular', 10, 'vi', 'Đội ngũ', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(148, 'data_types', 'display_name_plural', 10, 'vi', 'Đội ngũ', '2021-05-03 09:38:18', '2021-05-03 09:38:18'),
(149, 'menu_items', 'title', 27, 'vi', 'Teams', '2021-05-03 09:39:41', '2021-05-03 09:39:41'),
(150, 'teams', 'name', 1, 'vi', 'Hoàng Quốc Vinh', '2021-05-03 09:42:45', '2021-05-03 09:42:45'),
(151, 'teams', 'position', 1, 'vi', 'Nghiên cứu', '2021-05-03 09:42:45', '2021-05-03 09:42:45'),
(152, 'teams', 'description', 1, 'vi', 'Chuyên nghiên cứu các vấn đề về thiên văn, Chuyên nghiên cứu các vấn đề về địa chất', '2021-05-03 09:42:45', '2021-05-03 09:56:10'),
(153, 'teams', 'name', 2, 'vi', 'Hoàng Tiến Thành', '2021-05-03 09:44:01', '2021-05-03 09:44:01'),
(154, 'teams', 'position', 2, 'vi', 'Nhà nghiên cứu', '2021-05-03 09:44:01', '2021-05-03 09:44:01'),
(155, 'teams', 'description', 2, 'vi', 'Chuyên nghiên cứu các vấn đề về địa chất', '2021-05-03 09:44:01', '2021-05-03 09:44:01'),
(156, 'teams', 'name', 3, 'vi', 'Đinh Tiến Hoàng', '2021-05-03 09:44:54', '2021-05-03 09:44:54'),
(157, 'teams', 'position', 3, 'vi', 'Nhà nghiên cứu', '2021-05-03 09:44:54', '2021-05-03 09:44:54'),
(158, 'teams', 'description', 3, 'vi', 'Chuyên nghiên cứu các vấn đề về thiên văn, Chuyên nghiên cứu các vấn đề về địa chất', '2021-05-03 09:44:54', '2021-05-03 09:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$.dYoFOgoQqBcI.CBnIjiVO6oWMylGvvGvoqBMkaKjEKLDORymH6aa', 'xp9pJEzOsNEkDoky3BQF6FaJ9tMtMXO5QR7j0X9wnhChZrbe8ccGWZh9v7hj', '{\"locale\":\"vi\"}', '2021-04-14 03:11:19', '2021-04-17 02:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
