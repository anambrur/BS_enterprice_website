-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 02:01 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_next-page-tl-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `image`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin@gmail.com', 'Admin', '1', '$2y$10$ARfLOEf6VVNNlrFaF4Ap3unp7nZR4B26ZST5oRXX5aEtJ4ZzZaMnG', NULL, 1, 1, 'fBfuTUykLrrDkzWMSfQICMEv5aZrXMQLjv1M2VmxcOS57AdAsvd5t2GjOZWD', '2018-10-02 03:41:16', '2018-10-20 09:45:45'),
(2, 'dolicumyfi', 'xebaz@mailinator.com', 'Claire', 'Norris', '$2y$10$IPPgC2/35OeJ.dkWX04gk.broDzX3b9x6T.AvQlSxEyrMNZuXe8m.', 'download.jpg', 1, 2, NULL, '2018-10-02 04:56:08', '2018-10-02 04:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `admins_metas`
--

CREATE TABLE `admins_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins_metas`
--

INSERT INTO `admins_metas` (`id`, `admin_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 0, 'user_online_status', '0', '2018-10-02 03:40:52', '2018-10-02 03:40:52'),
(2, 0, 'user_last_activity', '2018-10-02 09:40:52', '2018-10-02 03:40:52', '2018-10-02 03:40:52'),
(3, 1, 'gender', NULL, '2018-10-02 03:41:17', '2018-10-09 23:46:04'),
(4, 1, 'user_online_status', '1', '2018-10-02 03:41:54', '2018-10-20 09:45:57'),
(5, 2, 'mobile', 'Eiusmod asperiores aut do et officiis consequuntur error velit voluptatum nulla eius libero nisi autem', '2018-10-02 04:56:09', '2018-10-02 04:56:09'),
(6, 2, 'gender', NULL, '2018-10-02 04:56:09', '2018-10-02 04:56:09'),
(7, 2, 'skype', 'Labore ut voluptatem laborum Magni rerum ullamco sit voluptate', '2018-10-02 04:56:09', '2018-10-02 04:56:09'),
(8, 2, 'whats_app', 'Vel corrupti dolorem cum aliquid accusantium quasi sed ut impedit', '2018-10-02 04:56:09', '2018-10-02 04:56:09'),
(9, 2, 'street', 'Consequatur laboriosam soluta doloremque consectetur esse excepturi molestias laudantium harum molestiae atque necessitatibus amet commodi atque', '2018-10-02 04:56:10', '2018-10-02 04:56:10'),
(10, 2, 'city', 'Aut blanditiis sit consequat Dolorem quam sed qui quaerat eius sed quam est soluta voluptatem id', '2018-10-02 04:56:10', '2018-10-02 04:56:10'),
(11, 2, 'zip', '57317', '2018-10-02 04:56:10', '2018-10-02 04:56:10'),
(12, 2, 'country', 'Barbados', '2018-10-02 04:56:10', '2018-10-02 04:56:10'),
(13, 2, 'extra_note', '<p>Exercitation suscipit sit est fugit in nisi ex ea qui repellendus Laudantium tempor omnis voluptatum</p>', '2018-10-02 04:56:10', '2018-10-02 04:56:10'),
(14, 1, 'user_last_activity', '2018-10-20 03:45:51', '2018-10-07 02:06:04', '2018-10-20 09:45:51'),
(15, 1, 'mobile', '017XXXXXXX', '2018-10-09 23:46:04', '2018-10-09 23:46:04'),
(16, 1, 'skype', NULL, '2018-10-09 23:46:04', '2018-10-09 23:46:04'),
(17, 1, 'whats_app', NULL, '2018-10-09 23:46:04', '2018-10-09 23:46:04'),
(18, 1, 'street', 'Dahaka', '2018-10-09 23:46:05', '2018-10-09 23:46:05'),
(19, 1, 'city', NULL, '2018-10-09 23:46:05', '2018-10-09 23:46:05'),
(20, 1, 'state', 'Dhaka', '2018-10-09 23:46:05', '2018-10-09 23:46:05'),
(21, 1, 'zip', NULL, '2018-10-09 23:46:05', '2018-10-09 23:46:05'),
(22, 1, 'country', 'Bangladesh', '2018-10-09 23:46:05', '2018-10-09 23:46:05'),
(23, 1, 'extra_note', NULL, '2018-10-09 23:46:05', '2018-10-09 23:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `long_description` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sticky` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_enable` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_description`, `long_description`, `image`, `slug`, `is_sticky`, `comment_enable`, `comments`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'BLog title 1', 'BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1', '<p>BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1BLog title 1</p>', '12_2.jpg', 'blog-title-1', 0, 1, 1, 0, 'BLog title 1', 'BLog title 1', 'BLog title 1', 1, NULL, 2, '2018-10-14 05:19:28', '2018-10-14 23:14:01'),
(4, 'Some patience for the modern marketer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '<p><span style=\"color:rgb(119, 119, 119); font-family:roboto,sans-serif; font-size:16px\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of thword in classical literature, discored the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC</span></p>', 'blog-thumbnail-1.jpg', 'some-patience-for-the-modern-marketer', 0, 0, 0, 52, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:48:07', '2018-10-20 09:21:12'),
(5, 'A conversation about challenge', '500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rac.Ipsum comes from sections 1.10.32 and 1.10.33 of \"dFinibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero', '<p>500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rac.Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;dFinibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rac.Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;dFinibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero</p>', 'blog-details-1.jpg', 'a-conversation-about-challenge', 0, 0, 0, 41, NULL, NULL, NULL, 1, 1, 1, '2018-10-14 05:49:25', '2018-10-20 09:37:25'),
(6, 'We don’t meeting people by accident', 'Lorem ipsum dolor sit amet, sectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, sectetur adipiscing elit, sed do eiusmod.', '<p><span style=\"color:rgb(119, 119, 119); font-family:roboto,sans-serif; font-size:16px\">Lorem ipsum dolor sit amet, sectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, sectetur adipiscing elit, sed do eiusmod.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(119, 119, 119); font-family:roboto,sans-serif; font-size:16px\">Lorem ipsum dolor sit amet, sectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, sectetur adipiscing elit, sed do eiusmod.</span></p>', 'blog-thumbnail-6.jpg', 'we-dont-meeting-people-by-accident', 0, 0, 1, 11, '​Lorem ipsum dolo', '​Lorem ipsum dolo', '​Lorem ipsum dolo', 1, NULL, 1, '2018-10-14 23:12:11', '2018-10-20 11:25:46'),
(7, 'Press Releases', 'Press Releases: Should or Shouldn’t?', '<h2>Press Releases: Should or Shouldn&rsquo;t?Press Releases: Should or Shouldn&rsquo;t?</h2>', 'portfolio-thumb-1.jpg', 'press-releases', 0, 0, 0, 6, NULL, NULL, NULL, 1, NULL, 1, '2018-10-20 11:16:25', '2018-10-20 11:55:45'),
(8, 'Press Releases: Should or Shouldn’t?', NULL, '<h2>Press Releases: Should or Shouldn&rsquo;t?</h2>', 'portfolio-thumb-5.jpg', 'press-releases-should-or-shouldnt', 0, 0, 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-10-20 11:17:26', '2018-10-20 11:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `description`, `image`, `slug`, `views`, `total_posts`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(5, 0, 'Domain & Hosting', '<p>Domain &amp; Hosting</p>', NULL, 'domain-hosting', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-10 22:11:41', '2018-10-14 05:19:28'),
(6, 0, 'Software Development', '<p>Software Development</p>', NULL, 'software-development', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-10 22:12:15', '2018-10-20 11:16:25'),
(7, 0, 'Graphic Design', '<p>Graphic Design</p>', NULL, 'graphic-design', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-10-10 22:12:36', '2018-10-14 23:12:11'),
(8, 0, 'E-Commerce', '<p>E-Commerce</p>', NULL, 'e-commerce', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-10 22:13:00', '2018-10-14 05:48:07'),
(9, 0, 'CMS Customization', '<p>CMS Customization</p>', NULL, 'cms-customization', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-10 22:13:15', '2018-10-10 22:13:15'),
(10, 0, 'Digital Marketing', '<p>Digital Marketing</p>', NULL, 'digital-marketing', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 00:16:29', '2018-10-11 00:16:29'),
(11, 10, 'PPC Management Services', '<p>PPC Management Services</p>', NULL, 'ppc-management-services', 0, 0, NULL, NULL, NULL, 1, 1, 1, '2018-10-11 00:17:00', '2018-10-11 00:18:47'),
(12, 10, 'E-commerce SEO Services', '<p>E-commerce SEO Services</p>', NULL, 'e-commerce-seo-services', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 00:19:16', '2018-10-11 00:19:16'),
(13, 10, 'Conversion Rate Optimization', '<p>Conversion Rate Optimization</p>', NULL, 'conversion-rate-optimization', 0, 0, NULL, NULL, NULL, 1, 1, 1, '2018-10-11 00:19:25', '2018-10-11 00:19:35'),
(14, 8, 'Magento Development', NULL, NULL, 'magento-development', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 01:02:43', '2018-10-20 11:17:26'),
(15, 8, 'Magento 2 Migration', NULL, NULL, 'magento-2-migration', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 01:03:03', '2018-10-14 23:12:11'),
(16, 8, 'Odoo ERP', NULL, NULL, 'odoo-erp', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 01:03:16', '2018-10-20 11:16:25'),
(17, 8, 'CRM for Commerce', NULL, NULL, 'crm-for-commerce', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 01:03:34', '2018-10-14 05:49:25'),
(18, 8, 'Mobile Commerce', NULL, NULL, 'mobile-commerce', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-11 01:03:45', '2018-10-20 11:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `categoryables`
--

CREATE TABLE `categoryables` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryables`
--

INSERT INTO `categoryables` (`id`, `category_id`, `categoryable_id`, `categoryable_type`, `created_at`, `updated_at`) VALUES
(9, 17, 5, 'App\\Model\\Common\\Portfolio', NULL, NULL),
(10, 12, 5, 'App\\Model\\Common\\Portfolio', NULL, NULL),
(11, 17, 6, 'App\\Model\\Common\\Portfolio', NULL, NULL),
(12, 6, 7, 'App\\Model\\Common\\Blog', '2018-10-20 11:16:25', '2018-10-20 11:16:25'),
(13, 16, 7, 'App\\Model\\Common\\Blog', '2018-10-20 11:16:25', '2018-10-20 11:16:25'),
(14, 14, 8, 'App\\Model\\Common\\Blog', '2018-10-20 11:17:26', '2018-10-20 11:17:26'),
(15, 18, 8, 'App\\Model\\Common\\Blog', '2018-10-20 11:17:26', '2018-10-20 11:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_c_id` int(10) UNSIGNED NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentable_id`, `commentable_type`, `p_c_id`, `comments`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'App\\Model\\Common\\Blog', 0, 'sfsfsfsdfsfdsfds fdsfdsffdsf fdsfs fdgfdgfddfgfdgg', 7, NULL, 2, '2018-10-20 09:09:53', '2018-10-20 09:09:53'),
(2, 4, 'App\\Model\\Common\\Blog', 0, 'ewrwrewrwerewr rewrw fewfsdfds dsfdsfsd', 7, NULL, 2, '2018-10-20 09:12:54', '2018-10-20 09:12:54'),
(3, 4, 'App\\Model\\Common\\Blog', 0, 'dsfdsfasdasd  asdasd asdasdsa asda', 7, NULL, 2, '2018-10-20 09:20:58', '2018-10-20 09:20:58'),
(4, 4, 'App\\Model\\Common\\Blog', 0, 'dsad asdasd asdsadas sadsad', 7, NULL, 2, '2018-10-20 09:21:23', '2018-10-20 09:21:23'),
(5, 5, 'App\\Model\\Common\\Blog', 0, 'adas sdfsdf sdfdss', 7, NULL, 2, '2018-10-20 09:32:39', '2018-10-20 09:32:39'),
(6, 5, 'App\\Model\\Common\\Blog', 0, 'dfgfdgf dfgdgdf dfgdfg', 7, NULL, 2, '2018-10-20 09:34:01', '2018-10-20 09:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'superadmin@gmail.com', '01932379923', 'fgddfgfd', 'asda asdasd asdada', '2018-10-18 02:52:20', '2018-10-18 02:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=Yes, 0=No',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `is_private`, `title`, `caption`, `alt`, `description`, `slug`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(7, 0, 'download', NULL, NULL, NULL, 'download.jpg', 1, NULL, '2018-10-02 04:53:57', '2018-10-02 04:53:57'),
(8, 0, 'download', NULL, NULL, NULL, 'download_1.jpg', 1, NULL, '2018-10-03 23:55:14', '2018-10-03 23:55:14'),
(9, 0, 'logo', NULL, NULL, NULL, 'logo.png', 1, NULL, '2018-10-07 03:11:50', '2018-10-07 03:11:50'),
(10, 0, '42698774_2168896533432577_7194119084642926592_n', NULL, NULL, NULL, '42698774_2168896533432577_7194119084642926592_n.jpg', 1, NULL, '2018-10-07 03:21:56', '2018-10-07 03:21:56'),
(11, 0, 'logo', NULL, NULL, NULL, 'logo_1.png', 1, NULL, '2018-10-08 00:16:25', '2018-10-08 00:16:25'),
(12, 0, 'u3slider-2', NULL, NULL, NULL, 'u3slider-2.jpg', 1, NULL, '2018-10-08 22:25:13', '2018-10-08 22:25:13'),
(13, 0, 'Logo', NULL, NULL, NULL, 'logo_2.png', 1, NULL, '2018-10-09 23:43:56', '2018-10-09 23:43:56'),
(14, 0, '222-3', NULL, NULL, NULL, '222-3.jpg', 1, NULL, '2018-10-10 03:03:15', '2018-10-10 03:03:15'),
(15, 0, '2-3', NULL, NULL, NULL, '2-3.jpg', 1, NULL, '2018-10-10 03:03:21', '2018-10-10 03:03:21'),
(16, 0, 'bags-1', NULL, NULL, NULL, 'bags-1.jpg', 1, NULL, '2018-10-10 03:03:27', '2018-10-10 03:03:27'),
(17, 0, '222-3', NULL, NULL, NULL, '222-3_1.jpg', 1, NULL, '2018-10-10 23:07:54', '2018-10-10 23:07:54'),
(18, 0, 'cos', NULL, NULL, NULL, 'cos.jpg', 1, NULL, '2018-10-10 23:08:00', '2018-10-10 23:08:00'),
(19, 0, 'iiii-1', NULL, NULL, NULL, 'iiii-1.jpg', 1, NULL, '2018-10-10 23:08:07', '2018-10-10 23:08:07'),
(20, 0, 'sw4-2', NULL, NULL, NULL, 'sw4-2.jpg', 1, NULL, '2018-10-10 23:08:16', '2018-10-10 23:08:16'),
(21, 0, 'sw', NULL, NULL, NULL, 'sw.jpeg', 1, NULL, '2018-10-10 23:09:08', '2018-10-10 23:09:08'),
(22, 0, 'sw4-2', NULL, NULL, NULL, 'sw4-2_1.jpg', 1, NULL, '2018-10-10 23:09:18', '2018-10-10 23:09:18'),
(23, 0, 'Slider4 (1)', NULL, NULL, NULL, 'slider4__281_29.png', 1, NULL, '2018-10-10 23:09:31', '2018-10-10 23:09:31'),
(24, 0, 'fav-nextpagetl', NULL, NULL, NULL, 'fav-nextpagetl.png', 1, NULL, '2018-10-12 23:04:15', '2018-10-12 23:04:15'),
(25, 0, 'Logo', NULL, NULL, NULL, 'logo_3.png', 1, NULL, '2018-10-12 23:04:25', '2018-10-12 23:04:25'),
(26, 0, 'logo-secondary-dark', NULL, NULL, NULL, 'logo-secondary-dark.png', 1, NULL, '2018-10-13 22:11:12', '2018-10-13 22:11:12'),
(27, 0, 'logo-color (200-96)', NULL, NULL, NULL, 'logo-color__28200-96_29.png', 1, NULL, '2018-10-13 23:03:11', '2018-10-13 23:03:11'),
(28, 0, 'logo-color (200-96)', NULL, NULL, NULL, 'logo-color__28200-96_29_1.png', 1, NULL, '2018-10-13 23:06:29', '2018-10-13 23:06:29'),
(29, 0, 'logo-color (200-96)', NULL, NULL, NULL, 'logo-color__28200-96_29_2.png', 1, NULL, '2018-10-13 23:24:50', '2018-10-13 23:24:50'),
(30, 0, 'logo-color (200-96)', NULL, NULL, NULL, 'logo-color__28200-96_29_3.png', 1, NULL, '2018-10-13 23:27:22', '2018-10-13 23:27:22'),
(31, 0, 'logo-color (200-88)', NULL, NULL, NULL, 'logo-color__28200-88_29.png', 1, NULL, '2018-10-13 23:38:06', '2018-10-13 23:38:06'),
(32, 0, 'logo-color (104-50)', NULL, NULL, NULL, 'logo-color__28104-50_29.png', 1, NULL, '2018-10-13 23:41:46', '2018-10-13 23:41:46'),
(33, 0, 'logo-color (200-88)', NULL, NULL, NULL, 'logo-color__28200-88_29_1.png', 1, NULL, '2018-10-13 23:44:04', '2018-10-13 23:44:04'),
(34, 0, 'logo-color (200-88)', NULL, NULL, NULL, 'logo-color__28200-88_29_2.png', 1, NULL, '2018-10-14 00:05:29', '2018-10-14 00:05:29'),
(35, 0, 'logo-color (200-88)', NULL, NULL, NULL, 'logo-color__28200-88_29_3.png', 1, NULL, '2018-10-14 00:06:35', '2018-10-14 00:06:35'),
(36, 0, 'fav-nextpagetl', NULL, NULL, NULL, 'fav-nextpagetl_1.png', 1, NULL, '2018-10-14 00:07:47', '2018-10-14 00:07:47'),
(37, 0, 'team-image-1', NULL, NULL, NULL, 'team-image-1.jpg', 1, NULL, '2018-10-14 00:45:56', '2018-10-14 00:45:56'),
(38, 0, 'team-image-2', NULL, NULL, NULL, 'team-image-2.jpg', 1, NULL, '2018-10-14 00:46:09', '2018-10-14 00:46:09'),
(39, 0, 'team-image-3', NULL, NULL, NULL, 'team-image-3.jpg', 1, NULL, '2018-10-14 00:46:15', '2018-10-14 00:46:15'),
(40, 0, 'team-image-5', NULL, NULL, NULL, 'team-image-5.jpg', 1, NULL, '2018-10-14 00:46:22', '2018-10-14 00:46:22'),
(41, 0, 'team-image-4', NULL, NULL, NULL, 'team-image-4.jpg', 1, NULL, '2018-10-14 00:46:29', '2018-10-14 00:46:29'),
(42, 0, 'team-image-6', NULL, NULL, NULL, 'team-image-6.jpg', 1, NULL, '2018-10-14 00:46:36', '2018-10-14 00:46:36'),
(43, 0, 'team-image-7', NULL, NULL, NULL, 'team-image-7.jpg', 1, NULL, '2018-10-14 00:46:42', '2018-10-14 00:46:42'),
(44, 0, 'team-image-8', NULL, NULL, NULL, 'team-image-8.jpg', 1, NULL, '2018-10-14 00:46:49', '2018-10-14 00:46:49'),
(45, 0, 'thumb-1', NULL, NULL, NULL, 'thumb-1.png', 1, NULL, '2018-10-14 03:02:13', '2018-10-14 03:02:13'),
(46, 0, 'thumb-2', NULL, NULL, NULL, 'thumb-2.png', 1, NULL, '2018-10-14 03:02:25', '2018-10-14 03:02:25'),
(47, 0, 'thumb-3', NULL, NULL, NULL, 'thumb-3.png', 1, NULL, '2018-10-14 03:02:37', '2018-10-14 03:02:37'),
(48, 0, 'thumb-4', NULL, NULL, NULL, 'thumb-4.png', 1, NULL, '2018-10-14 03:02:48', '2018-10-14 03:02:48'),
(49, 0, 'brand-logo-1', NULL, NULL, NULL, 'brand-logo-1.png', 1, NULL, '2018-10-14 03:51:26', '2018-10-14 03:51:26'),
(50, 0, 'brand-logo-2', NULL, NULL, NULL, 'brand-logo-2.png', 1, NULL, '2018-10-14 03:51:37', '2018-10-14 03:51:37'),
(51, 0, 'brand-logo-3', NULL, NULL, NULL, 'brand-logo-3.png', 1, NULL, '2018-10-14 03:51:48', '2018-10-14 03:51:48'),
(52, 0, 'brand-logo-4', NULL, NULL, NULL, 'brand-logo-4.png', 1, NULL, '2018-10-14 03:51:59', '2018-10-14 03:51:59'),
(53, 0, 'brand-logo-5', NULL, NULL, NULL, 'brand-logo-5.png', 1, NULL, '2018-10-14 03:52:09', '2018-10-14 03:52:09'),
(54, 0, 'brand-logo-6', NULL, NULL, NULL, 'brand-logo-6.png', 1, NULL, '2018-10-14 03:52:20', '2018-10-14 03:52:20'),
(55, 0, '1', NULL, NULL, NULL, '1.jpg', 1, NULL, '2018-10-14 04:08:12', '2018-10-14 04:08:12'),
(56, 0, '2', NULL, NULL, NULL, '2.jpg', 1, NULL, '2018-10-14 04:08:23', '2018-10-14 04:08:23'),
(57, 0, '12', NULL, NULL, NULL, '12.jpg', 1, NULL, '2018-10-14 04:08:34', '2018-10-14 04:08:34'),
(58, 0, '3', NULL, NULL, NULL, '3.jpg', 1, NULL, '2018-10-14 04:08:45', '2018-10-14 04:08:45'),
(59, 0, '14', NULL, NULL, NULL, '14.jpg', 1, NULL, '2018-10-14 04:08:55', '2018-10-14 04:08:55'),
(60, 0, '12', NULL, NULL, NULL, '12_1.jpg', 1, NULL, '2018-10-14 04:14:24', '2018-10-14 04:14:24'),
(61, 0, 'portfolio-thumb-2', NULL, NULL, NULL, 'portfolio-thumb-2.jpg', 1, NULL, '2018-10-14 04:19:48', '2018-10-14 04:19:48'),
(62, 0, 'portfolio-thumb-1', NULL, NULL, NULL, 'portfolio-thumb-1.jpg', 1, NULL, '2018-10-14 04:19:55', '2018-10-14 04:19:55'),
(63, 0, 'portfolio-thumb-3', NULL, NULL, NULL, 'portfolio-thumb-3.jpg', 1, NULL, '2018-10-14 04:20:03', '2018-10-14 04:20:03'),
(64, 0, 'portfolio-thumb-4', NULL, NULL, NULL, 'portfolio-thumb-4.jpg', 1, NULL, '2018-10-14 04:20:10', '2018-10-14 04:20:10'),
(65, 0, 'portfolio-thumb-5', NULL, NULL, NULL, 'portfolio-thumb-5.jpg', 1, NULL, '2018-10-14 04:20:18', '2018-10-14 04:20:18'),
(66, 0, 'portfolio-thumb-6', NULL, NULL, NULL, 'portfolio-thumb-6.jpg', 1, NULL, '2018-10-14 04:20:25', '2018-10-14 04:20:25'),
(67, 0, 'portfolio-thumb-7', NULL, NULL, NULL, 'portfolio-thumb-7.jpg', 1, NULL, '2018-10-14 04:20:33', '2018-10-14 04:20:33'),
(68, 0, 'portfolio-thumb-8', NULL, NULL, NULL, 'portfolio-thumb-8.jpg', 1, NULL, '2018-10-14 04:20:40', '2018-10-14 04:20:40'),
(69, 0, 'portfolio-thumb-9', NULL, NULL, NULL, 'portfolio-thumb-9.jpg', 1, NULL, '2018-10-14 04:20:47', '2018-10-14 04:20:47'),
(70, 0, 'portfolio-thumb-10', NULL, NULL, NULL, 'portfolio-thumb-10.jpg', 1, NULL, '2018-10-14 04:20:54', '2018-10-14 04:20:54'),
(71, 0, '1', NULL, NULL, NULL, '1_1.jpg', 1, NULL, '2018-10-14 04:29:11', '2018-10-14 04:29:11'),
(72, 0, '2', NULL, NULL, NULL, '2_1.jpg', 1, NULL, '2018-10-14 04:29:22', '2018-10-14 04:29:22'),
(73, 0, '12', NULL, NULL, NULL, '12_2.jpg', 1, NULL, '2018-10-14 04:29:33', '2018-10-14 04:29:33'),
(74, 0, '3', NULL, NULL, NULL, '3_1.jpg', 1, NULL, '2018-10-14 04:29:44', '2018-10-14 04:29:44'),
(75, 0, '14', NULL, NULL, NULL, '14_1.jpg', 1, NULL, '2018-10-14 04:29:56', '2018-10-14 04:29:56'),
(76, 0, 'blog-thumbnail-1', NULL, NULL, NULL, 'blog-thumbnail-1.jpg', 1, NULL, '2018-10-14 05:48:00', '2018-10-14 05:48:00'),
(77, 0, 'blog-details-1', NULL, NULL, NULL, 'blog-details-1.jpg', 1, NULL, '2018-10-14 05:49:21', '2018-10-14 05:49:21'),
(78, 0, 'blog-thumbnail-6', NULL, NULL, NULL, 'blog-thumbnail-6.jpg', 1, NULL, '2018-10-14 23:12:05', '2018-10-14 23:12:05'),
(79, 0, 'breadcrumb-bg', NULL, NULL, NULL, 'breadcrumb-bg.jpg', 1, NULL, '2018-10-14 23:45:17', '2018-10-14 23:45:17'),
(80, 0, 'our-team', NULL, NULL, NULL, 'our-team.jpg', 1, NULL, '2018-10-15 00:24:50', '2018-10-15 00:24:50'),
(81, 0, 'our-story', NULL, NULL, NULL, 'our-story.jpg', 1, NULL, '2018-10-15 00:30:35', '2018-10-15 00:30:35'),
(82, 0, 'blog-details-banner', NULL, NULL, NULL, 'blog-details-banner.jpg', 1, NULL, '2018-10-15 01:16:53', '2018-10-15 01:16:53'),
(83, 0, 'blog-details-banner_1', NULL, NULL, NULL, 'blog-details-banner_1.jpg', 1, NULL, '2018-10-15 04:10:56', '2018-10-15 04:10:56'),
(84, 0, 'contact-us-baner', NULL, NULL, NULL, 'contact-us-baner.png', 1, NULL, '2018-10-17 22:08:42', '2018-10-17 22:08:42'),
(85, 0, 'case-detals-banner', NULL, NULL, NULL, 'case-detals-banner.jpg', 1, NULL, '2018-10-18 04:53:18', '2018-10-18 04:53:18'),
(86, 0, 'single-portfolio-1', NULL, NULL, NULL, 'single-portfolio-1.jpg', 1, NULL, '2018-10-18 05:35:41', '2018-10-18 05:35:41'),
(87, 0, 'single-portfolio-2', NULL, NULL, NULL, 'single-portfolio-2.jpg', 1, NULL, '2018-10-18 05:35:52', '2018-10-18 05:35:52'),
(88, 0, 'single-portfolio-3', NULL, NULL, NULL, 'single-portfolio-3.jpg', 1, NULL, '2018-10-18 05:36:02', '2018-10-18 05:36:02'),
(89, 0, 'single-portfolio-1', NULL, NULL, NULL, 'single-portfolio-1_1.jpg', 1, NULL, '2018-10-18 05:36:46', '2018-10-18 05:36:46'),
(90, 0, 'single-portfolio-2', NULL, NULL, NULL, 'single-portfolio-2_1.jpg', 1, NULL, '2018-10-18 05:36:56', '2018-10-18 05:36:56'),
(91, 0, 'single-portfolio-3', NULL, NULL, NULL, 'single-portfolio-3_1.jpg', 1, NULL, '2018-10-18 05:37:07', '2018-10-18 05:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `media_permissions`
--

CREATE TABLE `media_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_07_034348_create_settings_table', 1),
(4, '2017_08_07_035559_create_users_metas_table', 1),
(5, '2017_08_07_042628_create_roles_table', 1),
(6, '2017_08_07_092248_create_media_table', 1),
(7, '2017_08_08_093255_create_visitors_table', 1),
(8, '2017_08_10_091903_create_pages_table', 1),
(9, '2017_10_03_070336_create_categories_table', 1),
(11, '2017_10_03_070354_create_tags_table', 1),
(12, '2017_10_03_070407_create_taggables_table', 1),
(13, '2017_10_30_054713_create_admins_table', 1),
(14, '2017_10_30_055642_create_admins_metas_table', 1),
(15, '2017_11_09_083522_create_payment_methods_table', 1),
(16, '2017_11_11_040822_add_auth_id_to_users_table', 1),
(17, '2017_12_09_032351_create_media_permissions_table', 1),
(18, '2014_10_12_000000_create_users_table', 1),
(22, '2018_10_03_050622_create_suppliers_table', 1),
(24, '2018_10_04_054614_create_transports_table', 1),
(25, '2018_10_04_062821_create_banks_table', 1),
(26, '2018_10_04_072017_create_stores_table', 1),
(29, '2018_10_04_104410_create_products_table', 2),
(30, '2018_10_08_093707_create_portfolios_table', 3),
(31, '2017_10_03_070345_create_categoryables_table', 4),
(32, '2018_10_11_044303_create_services_table', 5),
(33, '2018_10_13_042316_create_sliders_table', 6),
(34, '2017_10_03_071448_create_blogs_table', 7),
(35, '2017_10_03_071431_create_comments_table', 8),
(36, '2018_10_18_074410_create_contacts_table', 9),
(37, '2018_10_20_150503_create_subscribers_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `menu_title`, `page_title`, `page_subtitle`, `banner_image`, `content`, `slug`, `template`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', NULL, NULL, '<p>Home</p>', 'home', NULL, 0, 'sdfs', 'fdsf', 'sfds', 1, NULL, 1, '2018-10-10 21:47:57', '2018-10-10 21:47:57'),
(2, 'About', 'About', 'About', NULL, '<p>About</p>', 'about', NULL, 0, 'About', 'About', 'About', 1, NULL, 1, '2018-10-10 21:48:24', '2018-10-10 21:48:24'),
(3, 'Services', 'Services', 'Services', NULL, '<p>Services</p>', 'services', NULL, 0, 'Services', 'Services', 'Services', 1, NULL, 1, '2018-10-12 23:34:01', '2018-10-12 23:34:01'),
(4, 'Portfolio', 'Portfolio', 'Portfolio', NULL, '<p>Portfolio</p>', 'portfolio', NULL, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-12 23:34:37', '2018-10-12 23:34:37'),
(5, 'Blog', 'Blog', 'Blog', NULL, '<p>Blog</p>', 'blog', NULL, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-12 23:34:53', '2018-10-15 01:15:21'),
(6, 'Contact', 'Contact', 'Contact', NULL, '<p>Contact</p>', 'contact', NULL, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-12 23:35:08', '2018-10-12 23:35:08'),
(7, 'Our Team', 'Our Team', 'Our Team', NULL, '<p>Our Team</p>', 'our-team', NULL, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-15 00:12:58', '2018-10-15 00:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `description`, `image`, `image_gallery`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(5, 'You may also specify more advanced join clauses. up', 'you-may-also-specify-more-advanced-join-clauses-1-1-1-1-1', '<p>You may also specify more advanced join clauses.You may also specify more advanced join clauses.You may also specify more advanced join clauses.</p>', 'single-portfolio-1_1.jpg', '[\"[\\\"\\\"]\",\"single-portfolio-1_1.jpg\",\"single-portfolio-3.jpg\"]', 1, 'You may also specify more advanced join clauses.', 'You may also specify more advanced join clauses.', 'You may also specify more advanced join clauses.', NULL, NULL, 2, '2018-10-19 22:40:11', '2018-10-19 23:43:54'),
(6, 'Advanced Join Clauses', 'advanced-join-clauses-1-1-1-1-1-1-1-1-1', NULL, 'single-portfolio-2.jpg', '[\"3_1.jpg\",\"12_2.jpg\"]', 0, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-19 23:44:54', '2018-10-20 00:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packsize` int(10) UNSIGNED NOT NULL,
  `buying_price` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Active, 2=Pending, 3=Cancel',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `title`, `slug`, `batch_no`, `packsize`, `buying_price`, `selling_price`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 13, 'Title1', 'title1', 'Quasi sed aliquid aliquid aut sit alias culpa ut', 29, '653', '853', '<p>g sdg sdf gsd</p>', 1, NULL, '2018-10-05 21:41:44', '2018-10-05 21:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permission`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'N;', 1, NULL, 1, '2018-10-02 04:55:51', '2018-10-02 04:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `slug`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Services 1', '<p>Services 1</p>', 'sw4-2_1.jpg', 'services-1', 0, 'Services 1', 'Services 1', 'Services 1', NULL, NULL, 2, '2018-10-10 23:24:27', '2018-10-10 23:24:27'),
(2, 'rtetet', '<p>ertete</p>', NULL, 'rtetet', 0, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-10 23:51:10', '2018-10-10 23:51:10'),
(4, 'sdfsfdsfds', '<p>sdfdsfsd</p>', NULL, 'sdfsfdsfdssdfdsfs', 0, 'sdf', 'sdf', 'sdf', NULL, NULL, 2, '2018-10-10 23:51:43', '2018-10-10 23:51:43'),
(5, 'Services 2 uP', '<p>Services 2 up</p>', 'slider4__281_29.png', 'services-2', 0, 'Services 2up', 'Services 2up', 'Services 2up', NULL, NULL, 2, '2018-10-11 01:09:55', '2018-10-11 01:26:23'),
(6, 'sdasadsad', '<p>asdsadsad</p>', 'sw.jpeg', 'sdasadsad', 0, 'asdsad', 'asdsa', 'asdas', NULL, NULL, 2, '2018-10-11 03:10:19', '2018-10-11 03:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_by`, `modified_by`, `autoload`, `status`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Next Page TL', 1, 1, 1, 2, NULL, '2018-10-09 23:44:15'),
(2, 'tag_line', 'Experience The Future', 1, 1, 1, 2, NULL, '2018-10-09 23:44:15'),
(3, 'about', 'About Info', 1, 1, 1, 2, NULL, '2018-10-02 04:59:37'),
(4, 'address', 'House 34(3B), Road 2, Nikunja 2, Dhaka-1229', 1, 1, 1, 2, NULL, '2018-10-12 23:30:57'),
(5, 'country', 'Bangladesh', 1, 1, 1, 2, NULL, '2018-10-02 04:59:37'),
(6, 'mobile', '01739546776', 1, 1, 1, 2, NULL, '2018-10-02 04:59:38'),
(7, 'email', 'admin@gmail.com', 1, 1, 1, 2, NULL, '2018-10-20 09:44:36'),
(8, 'secondary_email', 'admin@gmail.com', 1, 1, 1, 2, NULL, '2018-10-20 09:44:36'),
(9, 'main_menu', 'a:1:{s:9:\"menu_item\";a:6:{i:1;a:8:{s:2:\"id\";s:1:\"1\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:5:\"About\";s:4:\"link\";s:6:\"/about\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:2;a:8:{s:2:\"id\";s:1:\"2\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:4:\"page\";s:5:\"title\";s:8:\"Services\";s:4:\"link\";s:14:\"/page/services\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:3;a:8:{s:2:\"id\";s:1:\"3\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Team\";s:4:\"link\";s:5:\"/team\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:4;a:8:{s:2:\"id\";s:1:\"4\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:4:\"page\";s:5:\"title\";s:9:\"Portfolio\";s:4:\"link\";s:15:\"/page/portfolio\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:5;a:8:{s:2:\"id\";s:1:\"5\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Blog\";s:4:\"link\";s:5:\"/blog\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:6;a:8:{s:2:\"id\";s:1:\"6\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:7:\"Contact\";s:4:\"link\";s:8:\"/contact\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}}}', 1, 1, 1, 2, NULL, '2018-10-20 11:55:24'),
(10, 'sm_theme_options_home_setting', 'a:43:{s:22:\"slider_change_autoplay\";N;s:26:\"home_is_seo_section_enable\";s:1:\"1\";s:14:\"home_seo_title\";s:15:\"Your SEO Score?\";s:18:\"home_seo_btn_title\";s:12:\"Check up now\";s:17:\"seo_feature_title\";s:45:\"DO YOU WANT TO BE SEEN? YOURE IN RIGHT PLACE!\";s:23:\"seo_feature_description\";s:123:\"SEOis a section of Search Engine Land that focuses not on search marketing advice but rather the search marketing industry.\";s:17:\"seo_feature_image\";N;s:30:\"seo_feature_more_btn_is_enable\";s:1:\"1\";s:26:\"seo_feature_more_btn_label\";s:10:\"Learn more\";s:25:\"seo_feature_more_btn_link\";s:1:\"#\";s:31:\"seo_feature_quote_btn_is_enable\";s:1:\"1\";s:27:\"seo_feature_quote_btn_label\";s:11:\"Learn quote\";s:26:\"seo_feature_quote_btn_link\";s:1:\"#\";s:22:\"seo_marketing_subtitle\";s:15:\"WATCH THE VIDEO\";s:19:\"seo_marketing_title\";s:35:\"HOW TO WORKING DOODLE SEO MARKETING\";s:25:\"seo_marketing_description\";s:941:\"<p>our daily recap of search news. At the end of each business day, we&#39;ll email you a summary of th what happened in search. This will include all stories we&#39;ve covered on Search Engine Land Land as well as headlines from sources from across the web. Anyone involved with digital marketinge deals with marketing technology every day. Keep up with the latest curves thrown by Google an Bing, whether they&#39;re tweaking Product Listing Ads, adjusting Enhanced Campaigns, or changiw the way ads display on various platforms. Get the weekly recap on what&#39;s important from Search Engine Land&#39;s knowledgeable news team and our expert contributors. Everything you need to know about SEO, whether it&#39;s the latest thw news or how-tos from practitioners. Once a week, get the curated scoop from Search Engine ths Land&#39;s SEO newsletter. Reach your customers and potential customers on the popular socialalys platforms and.</p>\";s:16:\"seo_video_banner\";N;s:26:\"seo_marketing_video_poster\";N;s:19:\"seo_marketing_video\";N;s:18:\"home_service_title\";N;s:21:\"home_service_subtitle\";N;s:17:\"achievement_title\";s:13:\"OUR ACHIVMENT\";s:23:\"achievement_description\";s:82:\"SEO Boost is an experienced of online marketing firm with a big record of success!\";s:17:\"achievement_image\";N;s:13:\"total_project\";s:3:\"222\";s:19:\"total_active_client\";s:3:\"333\";s:18:\"total_success_rate\";s:2:\"98\";s:16:\"total_commitment\";s:3:\"100\";s:9:\"wcu_title\";s:26:\"Why Choose Doodle Digital?\";s:12:\"wcu_subtitle\";s:62:\"Many Services! Big Claims Everywhere! Then, why us? Because...\";s:15:\"wcu_description\";N;s:9:\"wcu_image\";N;s:13:\"case_subtitle\";s:13:\"CREATIVE WORK\";s:10:\"case_title\";s:19:\"Recent Case Studies\";s:9:\"case_show\";N;s:22:\"home_testimonial_style\";s:8:\"bg-black\";s:10:\"blog_title\";s:11:\"LATEST BLOG\";s:13:\"blog_subtitle\";s:27:\"Positive mind positive life\";s:16:\"blog_description\";s:138:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\";s:9:\"blog_show\";N;s:14:\"branding_title\";s:16:\"Valuable Clients\";s:17:\"branding_subtitle\";s:63:\"Claritas est etiam processus dynamicus, qui sequitur mutationem\";s:5:\"logos\";s:215:\"brand-logo-6.png,brand-logo-5.png,brand-logo-4.png,brand-logo-3.png,brand-logo-2.png,brand-logo-1.png,brand-logo-6.png,brand-logo-5.png,brand-logo-4.png,brand-logo-3.png,brand-logo-2.png,brand-logo-1.png,thumb-4.png\";}', 1, 1, 1, 2, NULL, '2018-10-14 05:39:52'),
(11, 'sm_theme_options_contact_setting', 'a:23:{s:20:\"contact_banner_title\";s:10:\"CONTACT US\";s:23:\"contact_banner_subtitle\";s:36:\"Give Us A Question & Take The Answer\";s:20:\"contact_banner_image\";s:20:\"contact-us-baner.png\";s:13:\"contact_title\";s:14:\"We Always Help\";s:16:\"contact_subtitle\";s:78:\"It is Easy To Reach Us For Any Digital Marketing Support Anytime From Anywhere\";s:17:\"contact_des_title\";s:15:\"CONNECT WITH US\";s:19:\"contact_description\";N;s:18:\"contact_form_title\";s:18:\"leave us a message\";s:28:\"contact_form_success_message\";s:64:\"Mail successfully send. We will contact you as soon as possible.\";s:20:\"contact_branch_image\";N;s:20:\"contact_branch_title\";s:13:\"Quick contact\";s:23:\"contact_branch_subtitle\";s:80:\"There are many variations of passages of Lorem Ipsum available, but the majority\";s:16:\"contact_branches\";a:4:{i:0;a:6:{s:5:\"title\";s:25:\"Next Page Technology Ltd.\";s:7:\"address\";s:44:\"House 34 (3B), Road 2, Nikunja 2, Dhaka 1229\";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:5:\"image\";s:0:\"\";}i:1;a:6:{s:5:\"title\";s:13:\"Anwar Hossain\";s:7:\"address\";s:6:\"CEO\n\n\n\";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:23:\"ahossain@nextpagetl.com\";s:6:\"mobile\";s:0:\"\";s:5:\"image\";s:0:\"\";}i:2;a:6:{s:5:\"title\";s:18:\"Md. Sakib Ibne Ali\";s:7:\"address\";s:28:\"Manager - Sales & Marketing\n\";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:21:\" sales@nextpagetl.com\";s:6:\"mobile\";s:14:\"+8801711084621\";s:5:\"image\";s:0:\"\";}i:3;a:6:{s:5:\"title\";s:13:\"Sajedul Islam\";s:7:\"address\";s:13:\" Manager -IT \";s:14:\"footer_address\";s:0:\"\";s:5:\"email\";s:22:\"sajedul@nextpagetl.com\";s:6:\"mobile\";s:0:\"\";s:5:\"image\";s:0:\"\";}}s:19:\"contact_share_title\";s:13:\"Share With Us\";s:19:\"contact_share_image\";N;s:22:\"contact_location_title\";s:14:\"Map & Location\";s:25:\"contact_location_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:25:\"contact_location_latitude\";s:10:\"23.8289665\";s:26:\"contact_location_longitude\";s:267:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.7078691488477!2d90.41455931498284!3d23.828984984550658!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a52464456f%3A0x4d96a20b24be2f4f!2sTechnology+Softzone+Limited!5e0!3m2!1sen!2sbd!4v1539845979702\";s:31:\"newsletter_form_success_message\";s:24:\"Subscribed successfully.\";s:17:\"contact_seo_title\";N;s:21:\"contact_meta_keywords\";N;s:24:\"contact_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-18 01:02:56'),
(12, 'sm_theme_options_about_setting', 'a:12:{s:18:\"about_banner_title\";s:8:\"ABOUT US\";s:21:\"about_banner_subtitle\";s:34:\"The Story Of A Visionary Community\";s:18:\"about_banner_image\";s:13:\"our-story.jpg\";s:9:\"wwr_title\";s:10:\"Who we are\";s:12:\"wwr_subtitle\";N;s:15:\"wwr_description\";s:1783:\"<p style=\"text-align:justify\">Doodle Digital is a growing digital media marketing agency operating with magnificent performance in the different segments of digital marketing since its establishment in 2017. It is now over a year that we have been in the business of helping businesses grow from a small startup to rising brands with huge potentials.</p>\r\n\r\n<p style=\"text-align:justify\">Integrating a few small groups of motivated people with diverse expertise into a family of internet professionals who are credible, experienced, amplifiable, and adaptive to the changing requirements of world of Internet. An impressive thing about the people here is their formidable attention to bring the desired outcome of their efforts.</p>\r\n\r\n<p style=\"text-align:justify\">Each person working at Doodle Digital feel like being the organ of an entire body of digital marketing firm. We have digital marketing professionals of all levels of experience and knowledge, from the enthusiastic beginners to the seasoned marketers whose success stories might appease the mind of even the most discerning entrepreneur.</p>\r\n\r\n<p style=\"text-align:justify\">One of the strongest aspects of our character as a digital marketing firm is our high level of adaptability to the changing requirements and spectrum of online marketing. Each professional keeps an eye on Google&rsquo;s statement as it comes into light. We try to read between the lines of what search engines present us.</p>\r\n\r\n<p style=\"text-align:justify\">Another aspect of our professional that we boast having is our tenacity and tendency to accept and work with new technologies that come with the promise to enrich people&rsquo;s experience using the World Wide Web. So, we do not fail to catch up with the dynamics of what matters.</p>\";s:11:\"our_mission\";s:601:\"<p style=\"text-align:justify\">We have no regrets admitting that we are not like a large organization that sets dozens of missions to accomplish. We are not engaged in seeking profits all the time either. But, we have a very particular mission that, we believe, helps and will aid us in thriving.</p>\r\n\r\n<p style=\"text-align:justify\">We dream about contributing to make the digital marketing landscape a dynamic world wherein businesses will start, grow, and become a brand having a critical focus on improving people&rsquo;s life by offering them values, insights, conveniences, and opportunities.</p>\";s:10:\"our_vision\";s:695:\"<p style=\"text-align:justify\">We envision the world of digital marketing as a place for those who look forward to serving others and make a living by honest means. We do possess no hatred for squalid professionals whose only mission is to play false the search engines and spread sweet talks with stories of some instant success to take advantage of disappointed entrepreneurs.</p>\r\n\r\n<p style=\"text-align:justify\">We reiterate our vision vividly as we welcome a new member to our family, so the new person has the chance to share a common interest. We are proud that we the only mission and one vision have been very influential to tie us together towards a common goal, SUCCESS we call it.</p>\";s:23:\"about_testimonial_style\";N;s:15:\"about_seo_title\";N;s:19:\"about_meta_keywords\";N;s:22:\"about_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-15 00:30:51'),
(13, 'sm_theme_options_faq_setting', 'a:4:{s:16:\"faq_banner_image\";N;s:13:\"faq_seo_title\";N;s:17:\"faq_meta_keywords\";N;s:20:\"faq_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:17'),
(14, 'sm_theme_options_testimonial_setting', 'a:2:{s:17:\"testimonial_title\";s:13:\"Happy Clients\";s:12:\"testimonials\";a:5:{i:0;a:6:{s:5:\"title\";s:15:\"William Chester\";s:12:\"company_name\";s:9:\"Apple.Inc\";s:11:\"description\";s:166:\"There are many variations of passages Lorem Ipsum available,the majority have suffered alteration passages of Lorem Ipsum available, but it’s only the main majority\";s:17:\"testimonial_image\";s:11:\"thumb-1.png\";s:16:\"testimonial_logo\";s:11:\"thumb-3.png\";s:22:\"testimonial_logo_about\";s:11:\"thumb-4.png\";}i:1;a:6:{s:5:\"title\";s:8:\"Md Sumon\";s:12:\"company_name\";s:9:\"Next Page\";s:11:\"description\";s:166:\"There are many variations of passages Lorem Ipsum available,the majority have suffered alteration passages of Lorem Ipsum available, but it’s only the main majority\";s:17:\"testimonial_image\";s:11:\"thumb-2.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:2;a:6:{s:5:\"title\";s:8:\"Md Rubel\";s:12:\"company_name\";s:9:\"info care\";s:11:\"description\";s:166:\"There are many variations of passages Lorem Ipsum available,the majority have suffered alteration passages of Lorem Ipsum available, but it’s only the main majority\";s:17:\"testimonial_image\";s:11:\"thumb-3.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:3;a:6:{s:5:\"title\";s:4:\"Rony\";s:12:\"company_name\";s:0:\"\";s:11:\"description\";s:166:\"There are many variations of passages Lorem Ipsum available,the majority have suffered alteration passages of Lorem Ipsum available, but it’s only the main majority\";s:17:\"testimonial_image\";s:11:\"thumb-4.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:4;a:6:{s:5:\"title\";s:8:\"Md Sajid\";s:12:\"company_name\";s:12:\"Next Page TL\";s:11:\"description\";s:207:\"There are many variations of passages Lorem Ipsum available,the majority have suffered alteration passages of Lorem Ipsum available, but it’s only the main majority\n                                        \";s:17:\"testimonial_image\";s:11:\"thumb-3.png\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}}}', 1, 1, 1, 2, NULL, '2018-10-14 03:40:57'),
(15, 'sm_theme_options_team_setting', 'a:9:{s:17:\"team_banner_title\";s:16:\"OUR DYNAMIC TEAM\";s:20:\"team_banner_subtitle\";s:27:\"The People You Can Count On\";s:17:\"team_banner_image\";s:12:\"our-team.jpg\";s:10:\"team_title\";s:11:\"Expert Team\";s:13:\"team_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:5:\"teams\";a:5:{i:0;a:9:{s:10:\"team_image\";s:16:\"team-image-2.jpg\";s:5:\"title\";s:14:\"Akcent Chester\";s:11:\"designation\";s:18:\"Frontend Developer\";s:6:\"mobile\";s:9:\"435435435\";s:5:\"email\";s:20:\"admin@nextpagetl.com\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:1;a:9:{s:10:\"team_image\";s:16:\"team-image-3.jpg\";s:5:\"title\";s:13:\"Devid Johnson\";s:11:\"designation\";s:17:\"Backend Developer\";s:6:\"mobile\";s:7:\"3453242\";s:5:\"email\";s:6:\"xvdczx\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:2;a:9:{s:10:\"team_image\";s:16:\"team-image-5.jpg\";s:5:\"title\";s:13:\"Momen Bhuiyan\";s:11:\"designation\";s:16:\"Graphic Designer\";s:6:\"mobile\";s:7:\"4354353\";s:5:\"email\";s:5:\"sdfsf\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:3;a:9:{s:10:\"team_image\";s:16:\"team-image-4.jpg\";s:5:\"title\";s:13:\"Momen Bhuiyan\";s:11:\"designation\";s:18:\"Software Developer\";s:6:\"mobile\";s:7:\"3432423\";s:5:\"email\";s:19:\"dsfsfs@gdsfsd.sdfds\";s:8:\"facebook\";s:49:\"https://gitlab.com/sumoninfo/next-page-tl-website\";s:7:\"twitter\";s:93:\"file:///E:/httrack/Karbar%20-%20Multipurpose%20Bootstrap4%20Template/karbar/team-details.html\";s:11:\"google_plus\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";}i:4;a:9:{s:10:\"team_image\";s:16:\"team-image-7.jpg\";s:5:\"title\";s:8:\"gtretret\";s:11:\"designation\";s:16:\"reterbrtre brete\";s:6:\"mobile\";s:10:\"3453543543\";s:5:\"email\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}}s:14:\"team_seo_title\";N;s:18:\"team_meta_keywords\";N;s:21:\"team_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-20 09:29:49'),
(16, 'sm_theme_options_services_setting', 'a:14:{s:20:\"service_banner_title\";s:12:\"OUR SERVICES\";s:23:\"service_banner_subtitle\";s:24:\"A World of Opportunities\";s:20:\"service_banner_image\";N;s:13:\"service_title\";s:39:\"Full Services of Our <br>Digital Agency\";s:16:\"service_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:17:\"service_seo_image\";N;s:17:\"service_seo_title\";s:26:\"Search Engine Optimization\";s:23:\"service_seo_description\";s:818:\"Search engine marketing has evolved a way faster than other online services. To cope with the                            fast-changing scenario in digital marketing, Doodle Digital has adopted tried and true                            techniques and up-to-date insights to be able to assist businesses of all levels, from small                            concerns to large corporations with their digital marketing goals.Being committed to making                            online marketing services easy, affordable, and useful for businesses, we cooperate with                            professionals at different levels and interact with people, so we know how people think,                            buy,                            and live. This is how, we create each of our search engine marketing strategies.\";s:16:\"service_seo_link\";s:1:\"#\";s:23:\"services_posts_per_page\";N;s:29:\"services_is_breadcrumb_enable\";s:1:\"0\";s:18:\"services_seo_title\";N;s:22:\"services_meta_keywords\";N;s:25:\"services_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:17'),
(17, 'sm_theme_options_services_detail_setting', 'a:5:{s:27:\"service_detail_banner_title\";s:12:\"OUR SERVICES\";s:30:\"service_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:27:\"service_detail_banner_image\";N;s:35:\"service_detail_is_breadcrumb_enable\";s:1:\"0\";s:25:\"service_detail_mail_title\";s:28:\"Hire Us<br>15 Day FREE Trial\";}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(18, 'sm_theme_options_package_setting', 'a:5:{s:20:\"package_banner_title\";s:16:\"VIEW ALL PACKAGE\";s:23:\"package_banner_subtitle\";s:64:\"A World of Opportunities We all know that content has to be good\";s:20:\"package_banner_image\";N;s:28:\"package_is_breadcrumb_enable\";s:1:\"0\";s:22:\"package_posts_per_page\";N;}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(19, 'sm_theme_options_package_detail_setting', 'a:10:{s:35:\"package_detail_is_breadcrumb_enable\";s:1:\"0\";s:26:\"package_pricing_info_title\";s:12:\"Pricing Info\";s:25:\"package_detail_move_title\";s:20:\"Move to Package info\";s:24:\"package_detail_move_icon\";s:8:\"fa-heart\";s:11:\"step1_image\";N;s:11:\"step1_title\";s:21:\"Money Back Guaranteed\";s:17:\"step1_description\";s:46:\"Ang Lorem Ipsum ay ginaamit na modelo ng print\";s:11:\"step3_image\";N;s:11:\"step3_title\";s:22:\"Satisfaction Guarantee\";s:17:\"step3_description\";s:46:\"Ang Lorem Ipsum ay ginaamit na modelo ng print\";}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(20, 'sm_theme_options_blog_setting', 'a:9:{s:19:\"blog_posts_per_page\";N;s:17:\"blog_banner_title\";s:8:\"OUR BLOG\";s:20:\"blog_banner_subtitle\";s:27:\"We Share Everything We Know\";s:17:\"blog_banner_image\";s:23:\"blog-details-banner.jpg\";s:25:\"blog_is_breadcrumb_enable\";s:1:\"0\";s:13:\"blog_ad_image\";N;s:14:\"blog_seo_title\";N;s:18:\"blog_meta_keywords\";N;s:21:\"blog_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-15 01:17:04'),
(21, 'sm_theme_options_blog_detail_setting', 'a:6:{s:24:\"blog_detail_banner_title\";s:9:\"BLOG HOME\";s:27:\"blog_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"blog_detail_banner_image\";s:25:\"blog-details-banner_1.jpg\";s:32:\"blog_detail_is_breadcrumb_enable\";s:1:\"0\";s:27:\"blog_related_posts_per_page\";N;s:22:\"blog_comments_per_page\";N;}', 1, 1, 1, 2, NULL, '2018-10-15 05:00:41'),
(22, 'sm_theme_options_blog_sidebar_setting', 'a:6:{s:22:\"blog_popular_is_enable\";s:1:\"1\";s:27:\"blog_popular_posts_per_page\";N;s:18:\"blog_show_category\";s:1:\"1\";s:13:\"blog_show_tag\";s:1:\"1\";s:15:\"blog_sidebar_ad\";N;s:20:\"blog_sidebar_ad_link\";s:1:\"#\";}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(23, 'sm_theme_options_case_setting', 'a:8:{s:17:\"case_banner_title\";s:17:\"PORTFOLIO DETAILS\";s:20:\"case_banner_subtitle\";s:24:\"A World of Opportunities\";s:17:\"case_banner_image\";s:22:\"case-detals-banner.jpg\";s:25:\"case_is_breadcrumb_enable\";s:1:\"0\";s:19:\"case_posts_per_page\";s:1:\"5\";s:14:\"case_seo_title\";N;s:18:\"case_meta_keywords\";N;s:21:\"case_meta_description\";N;}', 1, 1, 1, 2, NULL, '2018-10-18 04:53:54'),
(24, 'sm_theme_options_case_detail_setting', 'a:4:{s:24:\"case_detail_banner_title\";s:12:\"CASE DETAILS\";s:27:\"case_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"case_detail_banner_image\";N;s:32:\"case_detail_is_breadcrumb_enable\";s:1:\"0\";}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(25, 'sm_theme_options_order_setting', 'a:7:{s:20:\"order_posts_per_page\";N;s:17:\"invoice_signature\";N;s:24:\"invoice_approved_by_name\";s:20:\"muhammad shah sultan\";s:31:\"invoice_approved_by_designation\";s:23:\"Director of Development\";s:20:\"invoice_banner_title\";s:12:\"CASE DETAILS\";s:23:\"invoice_banner_subtitle\";s:44:\"If you\'re struggling to get more information\";s:20:\"invoice_banner_image\";N;}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(26, 'sm_theme_options_social_setting', 'a:10:{s:15:\"social_facebook\";N;s:14:\"social_twitter\";N;s:15:\"social_linkedin\";N;s:18:\"social_google_plus\";N;s:13:\"social_github\";N;s:16:\"social_pinterest\";N;s:14:\"social_behance\";N;s:15:\"social_dribbble\";N;s:16:\"social_instagram\";N;s:14:\"social_youtube\";N;}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(27, 'sm_theme_options_footer_setting', 'a:6:{s:11:\"footer_logo\";N;s:20:\"footer_widget4_title\";s:12:\"Useful Links\";s:26:\"footer_widget4_description\";N;s:20:\"footer_widget3_title\";s:12:\"Useful Links\";s:26:\"footer_widget3_description\";N;s:9:\"copyright\";s:30:\"© 2018 | All rights reserved.\";}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(28, 'sm_theme_options_popup_setting', 'a:6:{s:24:\"newsletter_pop_is_enable\";s:1:\"0\";s:20:\"newsletter_pop_title\";s:19:\"Join Our Newsletter\";s:26:\"newsletter_pop_description\";s:102:\"<p>We really care about you and your website as much as you do. from us you get 100% free support.</p>\";s:15:\"offer_is_enable\";s:1:\"0\";s:11:\"offer_title\";s:20:\"1st Order To 30% Off\";s:17:\"offer_description\";s:135:\"<p>As content marketing continues to drive results for businesses trying to reach their audience</p>\r\n\r\n<p><a href=\"#\">Get More</a></p>\";}', 1, 1, 1, 2, NULL, '2018-10-20 09:12:02'),
(29, 'sm_theme_options_style_n_script_setting', 'a:3:{s:20:\"google_analytic_code\";s:668:\"<script>\r\n        (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n        })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n        ga(\'create\', \'UA-XXXXXXXX-X\', \'auto\');\r\n        ga(\'send\', \'pageview\');\r\n        ga(\'require\', \'linkid\', \'linkid.js\');\r\n        ga(\'require\', \'displayfeatures\');\r\n        setTimeout(\"ga(\'send\',\'event\',\'Profitable Engagement\',\'time on page more than 30 seconds\')\",30000);\r\n    </script>\";s:21:\"mrks_theme_custom_css\";N;s:20:\"mrks_theme_custom_js\";N;}', 1, 1, 1, 2, NULL, '2018-10-07 04:33:18'),
(30, 'favicon', 'fav-nextpagetl_1.png', 1, 1, 1, 2, NULL, '2018-10-14 00:07:53'),
(31, 'logo', 'logo-color__28200-88_29_3.png', 1, 1, 1, 2, NULL, '2018-10-14 00:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slug`, `description`, `image`, `extra`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Slider 1', '', 'Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1  Slider 1', '12_2.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;s:8:\"Slider 1\";}s:11:\"button_link\";a:1:{i:0;s:8:\"Slider 1\";}}', 1, NULL, 1, '2018-10-14 04:30:08', '2018-10-14 04:30:08'),
(7, 'Slider 2', '', 'Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2  Slider 2', '3_1.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;s:8:\"Slider 2\";}s:11:\"button_link\";a:1:{i:0;s:8:\"Slider 2\";}}', 1, NULL, 1, '2018-10-14 04:30:33', '2018-10-14 04:30:33'),
(8, 'Slider 3', '', 'Slider 3 Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3Slider 3', '14_1.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;s:8:\"Slider 3\";}s:11:\"button_link\";a:1:{i:0;s:8:\"Slider 3\";}}', 1, NULL, 1, '2018-10-14 04:30:57', '2018-10-14 04:30:57'),
(9, 'Slider 4', '', 'Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4Slider 4', '2_1.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;s:8:\"Slider 4\";}s:11:\"button_link\";a:1:{i:0;s:8:\"Slider 4\";}}', 1, NULL, 1, '2018-10-14 04:31:17', '2018-10-14 04:31:17'),
(10, 'Slider 5', '', 'Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5Slider 5', '1_1.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;s:8:\"Slider 5\";}s:11:\"button_link\";a:1:{i:0;s:8:\"Slider 5\";}}', 1, NULL, 1, '2018-10-14 04:31:34', '2018-10-14 04:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'App\\Model\\Common\\Blog', '2018-10-14 05:13:33', '2018-10-14 05:13:33'),
(2, 2, 2, 'App\\Model\\Common\\Blog', '2018-10-14 05:13:33', '2018-10-14 05:13:33'),
(3, 3, 2, 'App\\Model\\Common\\Blog', '2018-10-14 05:13:33', '2018-10-14 05:13:33'),
(4, 4, 3, 'App\\Model\\Common\\Blog', '2018-10-14 05:19:28', '2018-10-14 05:19:28'),
(5, 5, 3, 'App\\Model\\Common\\Blog', '2018-10-14 05:19:28', '2018-10-14 05:19:28'),
(6, 6, 3, 'App\\Model\\Common\\Blog', '2018-10-14 05:19:28', '2018-10-14 05:19:28'),
(7, 7, 4, 'App\\Model\\Common\\Blog', '2018-10-14 05:48:07', '2018-10-14 05:48:07'),
(8, 8, 4, 'App\\Model\\Common\\Blog', '2018-10-14 05:48:07', '2018-10-14 05:48:07'),
(9, 7, 5, 'App\\Model\\Common\\Blog', '2018-10-14 23:14:29', '2018-10-14 23:14:29'),
(10, 8, 5, 'App\\Model\\Common\\Blog', '2018-10-14 23:14:29', '2018-10-14 23:14:29'),
(11, 9, 6, 'App\\Model\\Common\\Blog', '2018-10-14 23:12:11', '2018-10-14 23:12:11'),
(12, 10, 6, 'App\\Model\\Common\\Blog', '2018-10-14 23:12:11', '2018-10-14 23:12:11'),
(13, 11, 6, 'App\\Model\\Common\\Blog', '2018-10-14 23:12:11', '2018-10-14 23:12:11'),
(14, 12, 7, 'App\\Model\\Common\\Blog', '2018-10-20 11:16:25', '2018-10-20 11:16:25'),
(15, 13, 7, 'App\\Model\\Common\\Blog', '2018-10-20 11:16:25', '2018-10-20 11:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `description`, `image`, `slug`, `views`, `total_posts`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title', NULL, NULL, 'title', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 04:51:07', '2018-10-14 05:16:36'),
(2, 'Blog Title', NULL, NULL, 'blog-title', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 04:51:07', '2018-10-14 05:16:36'),
(3, 'Up', NULL, NULL, 'up', 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:13:04', '2018-10-14 05:16:36'),
(4, 'BLog title 1', NULL, NULL, 'blog-title-1', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:19:28', '2018-10-14 05:19:28'),
(5, 'BLog', NULL, NULL, 'blog', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:19:28', '2018-10-14 05:19:28'),
(6, ' title 1', NULL, NULL, 'title-1', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:19:28', '2018-10-14 05:19:28'),
(7, 'dsfsf', NULL, NULL, 'dsfsf', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:48:07', '2018-10-14 05:49:25'),
(8, 'sdfdsf', NULL, NULL, 'sdfdsf', 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 05:48:07', '2018-10-14 05:49:25'),
(9, 'dsf', NULL, NULL, 'dsf', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 23:12:11', '2018-10-14 23:12:11'),
(10, 'sdf', NULL, NULL, 'sdf', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 23:12:11', '2018-10-14 23:12:11'),
(11, 'dsfds', NULL, NULL, 'dsfds', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-14 23:12:11', '2018-10-14 23:12:11'),
(12, 'fdgd', NULL, NULL, 'fdgd', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-20 11:16:25', '2018-10-20 11:16:25'),
(13, 'fdgfdgfd', NULL, NULL, 'fdgfdgfd', 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2018-10-20 11:16:25', '2018-10-20 11:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Active, 2=Pending, 3=Cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `firstname`, `lastname`, `job_title`, `company`, `mobile`, `contact_person`, `contact_mobile`, `vat`, `credit_limit`, `password`, `image`, `street`, `city`, `zip`, `country`, `state`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(6, 'qimege', 'guki@mailinator.net', 'Raven', 'Joyner', NULL, NULL, 'Qui voluptate cupidatat autem laborum esse Nam nulla quidem accusantium corrupti in cupiditate cumque deleniti aliquid esse magna', 'Ad magnam natus magni vel error quis nobis voluptatem occaecat non perspiciatis exercitationem id', 'Sint iste repudiandae non culpa aut laborum quidem et ducimus', 'Labore elit proident sed facere', NULL, '$2y$10$gyBP1Q6BCoDvrf7OSYYv5eRlptzAYgvGS52fnTttTZtiqPY7bD/Rm', NULL, 'Exercitationem beatae id perspiciatis quae dolores aut dolor mollitia ea minim commodo earum laborum eveniet cillum ipsum quia', 'Dolorem est ex quia corrupti qui corrupti dolores velit incidunt consectetur in ea ullamco et ex quo est consequat Dolores', '61122', 'Korea, South', 'Taegu-gwangyoksi', NULL, 1, '2018-10-03 02:35:25', '2018-10-08 23:26:45'),
(7, 'Comments1', 'comments1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KH30wmDrZTNryU/Hru07beL60HN6Q25MOWU4e3zHr7SwwcnPbQx7y', NULL, NULL, NULL, NULL, NULL, NULL, 'Ka00egoRCVGGNf4DOGufevDbLIi7lbZ388sDZKRp289eQd9gl9W2gZCObsag', 1, '2018-10-20 09:01:28', '2018-10-20 09:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(16, 4, 'mobile2', 'Obcaecati aliqua Culpa enim facere ducimus esse quidem', '2018-10-02 04:36:12', '2018-10-02 04:36:12'),
(17, 4, 'gender', 'Male', '2018-10-02 04:36:12', '2018-10-02 04:36:12'),
(18, 4, 'skype', 'Sed explicabo Ea pariatur Cillum reprehenderit earum omnis nobis tempora sunt', '2018-10-02 04:36:13', '2018-10-02 04:36:13'),
(19, 4, 'whats_app', 'Quia dolores temporibus aut non id sed ex recusandae Officiis in similique in', '2018-10-02 04:36:13', '2018-10-02 04:36:13'),
(20, 4, 'extra_note', NULL, '2018-10-02 04:36:13', '2018-10-02 04:36:13'),
(21, 2, 'state', 'Christ Church', '2018-10-02 04:56:10', '2018-10-02 04:56:10'),
(22, 1, 'mobile2', 'Qui nostrum harum eiusmod quam est id est', '2018-10-02 22:24:35', '2018-10-02 22:24:35'),
(23, 1, 'gender', NULL, '2018-10-02 22:24:35', '2018-10-02 22:24:35'),
(24, 1, 'skype', 'Molestiae dolor error quisquam quod distinctio Duis ut quia', '2018-10-02 22:24:35', '2018-10-02 22:24:35'),
(25, 1, 'whats_app', 'Commodo aperiam praesentium laudantium vel adipisci est voluptatem est', '2018-10-02 22:24:35', '2018-10-02 22:24:35'),
(26, 1, 'extra_note', NULL, '2018-10-02 22:24:35', '2018-10-02 22:24:35'),
(27, 2, 'mobile2', 'Modi ut adipisci aut quaerat quibusdam recusandae Sequi consequatur Ullamco ad aut ex nesciunt enim enim', '2018-10-02 22:26:56', '2018-10-02 22:26:56'),
(28, 2, 'gender', NULL, '2018-10-02 22:26:56', '2018-10-02 22:26:56'),
(29, 2, 'skype', 'Et quo enim non officia dolore occaecat ea deleniti', '2018-10-02 22:26:56', '2018-10-02 22:26:56'),
(30, 2, 'whats_app', 'Iste molestias asperiores excepteur Nam optio delectus facere incidunt nostrud ut ab itaque', '2018-10-02 22:26:56', '2018-10-02 22:26:56'),
(31, 2, 'extra_note', NULL, '2018-10-02 22:26:56', '2018-10-02 22:26:56'),
(32, 3, 'mobile2', 'Laborum Dolor voluptas aspernatur recusandae Est ut non error ab non est minus omnis et nulla aliquam amet illum deserunt', '2018-10-02 22:29:45', '2018-10-02 22:29:45'),
(33, 3, 'gender', 'Male', '2018-10-02 22:29:46', '2018-10-02 22:29:46'),
(34, 3, 'skype', 'Ut suscipit ducimus sint recusandae Omnis dolor', '2018-10-02 22:29:46', '2018-10-02 22:29:46'),
(35, 3, 'whats_app', 'Tempora natus in cupidatat adipisicing', '2018-10-02 22:29:46', '2018-10-02 22:29:46'),
(36, 3, 'extra_note', NULL, '2018-10-02 22:29:46', '2018-10-02 22:29:46'),
(37, 5, 'mobile2', NULL, '2018-10-02 22:36:09', '2018-10-02 22:36:09'),
(38, 5, 'gender', NULL, '2018-10-02 22:36:09', '2018-10-02 22:36:09'),
(39, 5, 'skype', NULL, '2018-10-02 22:36:09', '2018-10-02 22:36:09'),
(40, 5, 'whats_app', NULL, '2018-10-02 22:36:09', '2018-10-02 22:36:09'),
(41, 5, 'extra_note', NULL, '2018-10-02 22:36:09', '2018-10-02 22:36:09'),
(42, 6, 'mobile2', NULL, '2018-10-08 23:26:45', '2018-10-08 23:26:45'),
(43, 6, 'gender', NULL, '2018-10-08 23:26:45', '2018-10-08 23:26:45'),
(44, 6, 'skype', NULL, '2018-10-08 23:26:45', '2018-10-08 23:26:45'),
(45, 6, 'whats_app', NULL, '2018-10-08 23:26:45', '2018-10-08 23:26:45'),
(46, 6, 'extra_note', NULL, '2018-10-08 23:26:45', '2018-10-08 23:26:45'),
(47, 7, 'front_user_online_status', '0', '2018-10-20 09:14:01', '2018-10-20 09:14:01'),
(48, 7, 'front_user_last_activity', '2018-10-20 03:43:33', '2018-10-20 09:14:01', '2018-10-20 09:43:33'),
(49, 7, 'user_online_status', '1', '2018-10-20 09:20:47', '2018-10-20 09:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `date`, `views`) VALUES
(1, '2018-10-02', 1),
(2, '2018-10-03', 1),
(3, '2018-10-04', 3),
(4, '2018-10-06', 1),
(5, '2018-10-07', 2),
(6, '2018-10-08', 2),
(7, '2018-10-09', 3),
(8, '2018-10-10', 2),
(9, '2018-10-11', 3),
(10, '2018-10-13', 2),
(11, '2018-10-14', 2),
(12, '2018-10-15', 6),
(13, '2018-10-16', 2),
(14, '2018-10-18', 3),
(15, '2018-10-20', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_firstname_index` (`firstname`),
  ADD KEY `admins_lastname_index` (`lastname`),
  ADD KEY `admins_role_id_index` (`role_id`),
  ADD KEY `admins_status_index` (`status`);

--
-- Indexes for table `admins_metas`
--
ALTER TABLE `admins_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_metas_admin_id_index` (`admin_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_title_index` (`title`),
  ADD KEY `blogs_is_sticky_index` (`is_sticky`),
  ADD KEY `blogs_comment_enable_index` (`comment_enable`),
  ADD KEY `blogs_status_index` (`status`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_title_index` (`title`),
  ADD KEY `categories_status_index` (`status`);

--
-- Indexes for table `categoryables`
--
ALTER TABLE `categoryables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryables_category_id_foreign` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_p_c_id_index` (`p_c_id`),
  ADD KEY `comments_created_by_index` (`created_by`),
  ADD KEY `comments_status_index` (`status`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_slug_unique` (`slug`),
  ADD KEY `media_is_private_index` (`is_private`),
  ADD KEY `media_title_index` (`title`);

--
-- Indexes for table `media_permissions`
--
ALTER TABLE `media_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_permissions_media_id_index` (`media_id`),
  ADD KEY `media_permissions_user_id_index` (`user_id`);

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
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_menu_title_index` (`menu_title`),
  ADD KEY `pages_page_title_index` (`page_title`),
  ADD KEY `pages_views_index` (`views`),
  ADD KEY `pages_created_by_index` (`created_by`),
  ADD KEY `pages_status_index` (`status`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_title_index` (`title`),
  ADD KEY `portfolios_status_index` (`status`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_buying_price_unique` (`buying_price`),
  ADD UNIQUE KEY `products_description_unique` (`description`),
  ADD KEY `products_title_index` (`title`),
  ADD KEY `products_slug_index` (`slug`),
  ADD KEY `products_batch_no_index` (`batch_no`),
  ADD KEY `products_selling_price_index` (`selling_price`),
  ADD KEY `products_status_index` (`status`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_name_index` (`name`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_status_index` (`status`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_title_index` (`title`),
  ADD KEY `services_status_index` (`status`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_option_name_unique` (`option_name`),
  ADD KEY `settings_created_by_index` (`created_by`),
  ADD KEY `settings_autoload_index` (`autoload`),
  ADD KEY `settings_status_index` (`status`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_index` (`created_by`),
  ADD KEY `sliders_status_index` (`status`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`),
  ADD KEY `tags_title_index` (`title`),
  ADD KEY `tags_created_by_index` (`created_by`),
  ADD KEY `tags_status_index` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_contact_mobile_unique` (`contact_mobile`),
  ADD KEY `users_firstname_index` (`firstname`),
  ADD KEY `users_lastname_index` (`lastname`),
  ADD KEY `users_job_title_index` (`job_title`),
  ADD KEY `users_company_index` (`company`),
  ADD KEY `users_contact_person_index` (`contact_person`),
  ADD KEY `users_status_index` (`status`);

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_metas_user_id_index` (`user_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_date_index` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins_metas`
--
ALTER TABLE `admins_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categoryables`
--
ALTER TABLE `categoryables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `media_permissions`
--
ALTER TABLE `media_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categoryables`
--
ALTER TABLE `categoryables`
  ADD CONSTRAINT `categoryables_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
