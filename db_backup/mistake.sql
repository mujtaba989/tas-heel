-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 12:01 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mistake`
--

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_banlists`
--

CREATE TABLE `mlf2_banlists` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_banlists`
--

INSERT INTO `mlf2_banlists` (`name`, `list`) VALUES
('user_agents', ''),
('ips', ''),
('words', '');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_bookmarks`
--

CREATE TABLE `mlf2_bookmarks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `posting_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_categories`
--

CREATE TABLE `mlf2_categories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `accession` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_entries`
--

CREATE TABLE `mlf2_entries` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `uniqid` varchar(255) NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_reply` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hp` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(128) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `tags` varchar(255) NOT NULL DEFAULT '',
  `show_signature` tinyint(4) DEFAULT '0',
  `email_notification` tinyint(4) DEFAULT '0',
  `marked` tinyint(4) DEFAULT '0',
  `locked` tinyint(4) DEFAULT '0',
  `sticky` tinyint(4) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `spam` tinyint(4) DEFAULT '0',
  `spam_check_status` tinyint(4) DEFAULT '0',
  `edit_key` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_entries`
--

INSERT INTO `mlf2_entries` (`id`, `pid`, `tid`, `uniqid`, `time`, `last_reply`, `edited`, `edited_by`, `user_id`, `name`, `subject`, `category`, `email`, `hp`, `location`, `ip`, `text`, `tags`, `show_signature`, `email_notification`, `marked`, `locked`, `sticky`, `views`, `spam`, `spam_check_status`, `edit_key`) VALUES
(23, 0, 23, '59cbb68cc7c86', '2017-09-27 14:41:46', '2017-09-27 14:41:46', NULL, NULL, 2, '', '0544800333', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'اسم المتعامل :محمد عبدالرؤوف\r\n\r\n0103024460092017300439115 رقم المعامه\r\nالسؤال : الاستعلام عن حاله المعامله\r\nالجواب : تم اعلام العميل بان المعامله مرفوضه ويجب معامله اداره الجنسه للاستعلام عن  سبب الرفض\r\n\r\n\r\n\r\nعائشه خالد', '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(24, 0, 24, '59cbba7cb94b1', '2017-09-27 14:56:02', '2017-09-27 15:52:08', NULL, NULL, 2, '', '00971506506509', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'اسم المتعامل : عبد الله علي سالم بينراشيد الخطيب\r\n\r\nرقم المعامله : 0103024430092017300472207\r\n\r\nالسؤال : معامله تاشيره خدمة مساعده مرجعه .\r\nالجواب : تم استلام النواقص عن طريق الايميل واعادة الارسال عن طريق المشرف .\r\n\r\n\r\n\r\n\r\n\r\nعائشة .', '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(25, 0, 25, '59cbbc94044a8', '2017-09-27 15:08:56', '2017-09-27 15:08:56', NULL, NULL, 2, '', '0555494951', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'اسم المتعامل : محمد يوسف محمد\r\nرقم المعامله :0103024430092017300474250\r\nالسؤال : عن تعديل وضع ( الخدمة المساعده ) خادمة . وفي حاله يمكن استلام المعامله من اي فرع او من مركز الطباعه نفسه .\r\n\r\nالجواب : تم النظر في رقم الطلب و ابلاغ المتعامل بالموافقه على المعامله لاستلامها .\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nعائشة .', '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(26, 0, 26, '59cbbfecf09f8', '2017-09-27 15:18:58', '2017-09-27 15:18:58', NULL, NULL, 2, '', '0553104944', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'اسم المتعامل :تيري توماس ( هندي )\r\nرقم المعامله : --- استفسار\r\n\r\n\r\nالسؤال : استفسار عن عمل شكوى في اي فرع من فروع تسهيل اذاالشركه في دبي - واوقات العمل\r\n\r\n\r\n\r\nالجواب : تم الرد بانه يمكنه عمل الشكوى في  فرعنا . ولكن بعد الحصول على الموعد من العمل يجب عيه الذهاب الى وزاره العمل دبي .\r\n\r\n\r\n\r\n\r\n\r\n عائشة .', '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(27, 0, 27, '59cbc585e13b7', '2017-09-27 15:49:52', '2017-09-27 15:49:52', NULL, NULL, 2, '', '0562101022', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'اسم المتعامل :احمد صائب الغادري\r\nرقم المعامله : -- استفسار\r\n\r\nالسؤال :استفسار عن الهوية , (السعر , طريقه الدفع ) .\r\n\r\nالجواب :تم الرد بانه يجب احضار كافه الاصول \r\n( جواز اصلي + صوره من الهوية القديمه او الاصل ) \r\nوانه يجب الدفع عن طريق الدفع النقدي ولا يمكن الدفع عن طريق الفيزا .\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nعائشة', '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(28, 24, 24, '59cbc8f17d1df', '2017-09-27 15:52:08', '2017-09-27 15:52:08', NULL, NULL, 2, '', '0505055539', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'رقم آخر للمتعامل .', '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(29, 0, 29, '59cbcfb17cfaa', '2017-09-27 16:23:26', '2017-09-27 16:23:26', NULL, NULL, 2, '', '0506109254', 0, '', '', '', 'fe80::644e:573b:f33a:269b', 'اسم المتعامل : سيد ميراج \r\nالمعامله : بلدية .\r\n\r\nالسؤال : تصديق عقد الايجار , طريقه الدفع .\r\n\r\nالجواب : تصديق عقود ايجار ( الدفع نقدي ) .\r\n\r\n\r\n\r\n\r\n\r\n\r\nعائشة .', '', 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_entries_cache`
--

CREATE TABLE `mlf2_entries_cache` (
  `cache_id` int(11) NOT NULL,
  `cache_text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_entries_cache`
--

INSERT INTO `mlf2_entries_cache` (`cache_id`, `cache_text`) VALUES
(23, '<p>اسم المتعامل :محمد عبدالرؤوف</p>\n<p>0103024460092017300439115 رقم المعامه<br />\nالسؤال : الاستعلام عن حاله المعامله<br />\nالجواب : تم اعلام العميل بان المعامله مرفوضه ويجب معامله اداره الجنسه للاستعلام عن  سبب الرفض</p>\n<p>عائشه خالد</p>\n'),
(24, '<p>اسم المتعامل : عبد الله علي سالم بينراشيد الخطيب</p>\n<p>رقم المعامله : 0103024430092017300472207</p>\n<p>السؤال : معامله تاشيره خدمة مساعده مرجعه .<br />\nالجواب : تم استلام النواقص عن طريق الايميل واعادة الارسال عن طريق المشرف .</p>\n<p>عائشة .</p>\n'),
(25, '<p>اسم المتعامل : محمد يوسف محمد<br />\nرقم المعامله :0103024430092017300474250<br />\nالسؤال : عن تعديل وضع ( الخدمة المساعده ) خادمة . وفي حاله يمكن استلام المعامله من اي فرع او من مركز الطباعه نفسه .</p>\n<p>الجواب : تم النظر في رقم الطلب و ابلاغ المتعامل بالموافقه على المعامله لاستلامها .</p>\n<p>عائشة .</p>\n'),
(26, '<p>اسم المتعامل :تيري توماس ( هندي )<br />\nرقم المعامله : --- استفسار</p>\n<p><br />\nالسؤال : استفسار عن عمل شكوى في اي فرع من فروع تسهيل اذاالشركه في دبي - واوقات العمل</p>\n<p>الجواب : تم الرد بانه يمكنه عمل الشكوى في  فرعنا . ولكن بعد الحصول على الموعد من العمل يجب عيه الذهاب الى وزاره العمل دبي .</p>\n<p> عائشة .</p>\n'),
(27, '<p>اسم المتعامل :احمد صائب الغادري<br />\nرقم المعامله : -- استفسار</p>\n<p>السؤال :استفسار عن الهوية , (السعر , طريقه الدفع ) .</p>\n<p>الجواب :تم الرد بانه يجب احضار كافه الاصول <br />\n( جواز اصلي + صوره من الهوية القديمه او الاصل ) <br />\nوانه يجب الدفع عن طريق الدفع النقدي ولا يمكن الدفع عن طريق الفيزا .</p>\n<p>عائشة</p>\n'),
(28, '<p>رقم آخر للمتعامل .</p>\n'),
(29, '<p>اسم المتعامل : سيد ميراج <br />\nالمعامله : بلدية .</p>\n<p>السؤال : تصديق عقد الايجار , طريقه الدفع .</p>\n<p>الجواب : تصديق عقود ايجار ( الدفع نقدي ) .</p>\n<p><br />\nعائشة .</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_logincontrol`
--

CREATE TABLE `mlf2_logincontrol` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `logins` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_pages`
--

CREATE TABLE `mlf2_pages` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `menu_linkname` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_read_entries`
--

CREATE TABLE `mlf2_read_entries` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `posting_id` int(11) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_read_entries`
--

INSERT INTO `mlf2_read_entries` (`user_id`, `posting_id`, `time`) VALUES
(1, 29, '2018-05-01 07:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_settings`
--

CREATE TABLE `mlf2_settings` (
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_settings`
--

INSERT INTO `mlf2_settings` (`name`, `value`) VALUES
('access_for_users_only', '1'),
('access_permission_checks', '0'),
('ajax_preview', '0'),
('akismet_check_registered', '0'),
('akismet_entry_check', '0'),
('akismet_key', ''),
('akismet_mail_check', '0'),
('autolink', '1'),
('autologin', '0'),
('auto_delete_spam', '168'),
('auto_lock', '0'),
('auto_lock_old_threads', '0'),
('avatars', '2'),
('avatar_max_filesize', '20'),
('avatar_max_height', '80'),
('avatar_max_width', '80'),
('bad_behavior', '0'),
('bbcode', '0'),
('bbcode_code', '0'),
('bbcode_color', '1'),
('bbcode_flash', '0'),
('bbcode_img', '0'),
('bbcode_size', '1'),
('bbcode_tex', '0'),
('captcha_email', '0'),
('captcha_posting', '1'),
('captcha_register', '0'),
('cookie_validity_days', '30'),
('count_users_online', '10'),
('count_views', '0'),
('daily_actions_time', '3:30'),
('deep_reply', '15'),
('default_email_contact', '0'),
('default_view', '1'),
('delete_ips', '0'),
('dont_reg_edit_by_admin', '0'),
('dont_reg_edit_by_mod', '0'),
('edit_delay', '3'),
('edit_max_time_period', '60'),
('edit_min_time_period', '5'),
('email_maxlength', '70'),
('email_notification_unregistered', '0'),
('email_subject_maxlength', '100'),
('email_text_maxlength', '10000'),
('empty_postings_possible', '0'),
('entries_by_users_only', '1'),
('flash_default_height', '344'),
('flash_default_width', '425'),
('flood_prevention_minutes', '2'),
('fold_threads', '0'),
('forum_address', 'http://almalomatit/follow-up/'),
('forum_description', 'تصميم و صيانة: محمد مجتبى'),
('forum_disabled_message', ''),
('forum_email', 'mujtaba@almalomat.ae'),
('forum_enabled', '1'),
('forum_name', 'Followup System نظام متابعة الاخطاء للمشرفين'),
('forum_readonly', '0'),
('home_linkaddress', ''),
('home_linkname', ''),
('hp_maxlength', '70'),
('language_file', 'english.lang'),
('last_changes', '1506347860'),
('last_reply_link', '0'),
('latest_postings', '5'),
('location_maxlength', '40'),
('location_word_maxlength', '30'),
('mail_parameter', ''),
('max_read_items', '200'),
('min_pw_length', '8'),
('name_maxlength', '70'),
('name_word_maxlength', '30'),
('next_daily_actions', '1525217400'),
('page_browse_range', '10'),
('page_browse_show_last', '0'),
('profile_maxlength', '5000'),
('quote_symbol', '>'),
('read_state_expiration_date', '150'),
('register_mode', '2'),
('remember_last_visit', '1'),
('remember_userdata', '1'),
('rss_feed', '0'),
('rss_feed_max_items', '20'),
('save_spam', '1'),
('search_results_per_page', '20'),
('session_prefix', 'mlf2_'),
('show_if_edited', '1'),
('signature_maxlength', '255'),
('smilies', '0'),
('stop_forum_spam', '0'),
('subject_maxlength', '60'),
('subject_word_maxlength', '30'),
('syntax_highlighter', '0'),
('tags', '0'),
('tag_cloud', '0'),
('tag_cloud_day_period', '30'),
('tag_cloud_scale_max', '6'),
('tag_cloud_scale_min', '0'),
('temp_block_ip_after_repeated_failed_logins', '10'),
('terms_of_use_agreement', '0'),
('terms_of_use_url', ''),
('text_maxlength', '5000'),
('text_word_maxlength', '90'),
('theme', 'default'),
('threads_per_page', '30'),
('time_difference', '0'),
('time_zone', 'Asia/Dubai'),
('upload_images', '2'),
('upload_max_img_height', '600'),
('upload_max_img_size', '60'),
('upload_max_img_width', '600'),
('username_maxlength', '40'),
('users_per_page', '20'),
('user_area_public', '0'),
('user_edit', '0'),
('user_edit_if_no_replies', '0'),
('version', '2.4.2'),
('very_deep_reply', '30');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_smilies`
--

CREATE TABLE `mlf2_smilies` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(100) NOT NULL DEFAULT '',
  `code_1` varchar(50) NOT NULL DEFAULT '',
  `code_2` varchar(50) NOT NULL DEFAULT '',
  `code_3` varchar(50) NOT NULL DEFAULT '',
  `code_4` varchar(50) NOT NULL DEFAULT '',
  `code_5` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_smilies`
--

INSERT INTO `mlf2_smilies` (`id`, `order_id`, `file`, `code_1`, `code_2`, `code_3`, `code_4`, `code_5`, `title`) VALUES
(1, 1, 'smile.png', ':-)', '', '', '', '', ''),
(2, 2, 'wink.png', ';-)', '', '', '', '', ''),
(3, 3, 'tongue.png', ':-P', '', '', '', '', ''),
(4, 4, 'biggrin.png', ':-D', '', '', '', '', ''),
(5, 5, 'neutral.png', ':-|', '', '', '', '', ''),
(6, 6, 'frown.png', ':-(', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_temp_infos`
--

CREATE TABLE `mlf2_temp_infos` (
  `name` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  `time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_temp_infos`
--

INSERT INTO `mlf2_temp_infos` (`name`, `value`, `time`) VALUES
('last_version_check', '2.4.9', '2018-05-01 07:55:39'),
('last_version_uri', 'https://github.comhttps://github.com/ilosuna/mylittleforum/releases/tag/2.4.9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_userdata`
--

CREATE TABLE `mlf2_userdata` (
  `user_id` int(11) NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_real_name` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `user_pw` varchar(255) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `email_contact` tinyint(4) DEFAULT '0',
  `user_hp` varchar(255) NOT NULL DEFAULT '',
  `user_location` varchar(255) NOT NULL DEFAULT '',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `profile` text NOT NULL,
  `logins` int(11) NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_logout` timestamp NULL DEFAULT NULL,
  `user_ip` varchar(128) NOT NULL DEFAULT '',
  `registered` timestamp NULL DEFAULT NULL,
  `category_selection` varchar(255) DEFAULT NULL,
  `thread_order` tinyint(4) NOT NULL DEFAULT '0',
  `user_view` tinyint(4) NOT NULL DEFAULT '0',
  `sidebar` tinyint(4) NOT NULL DEFAULT '1',
  `fold_threads` tinyint(4) NOT NULL DEFAULT '0',
  `thread_display` tinyint(4) NOT NULL DEFAULT '0',
  `new_posting_notification` tinyint(4) DEFAULT '0',
  `new_user_notification` tinyint(4) DEFAULT '0',
  `user_lock` tinyint(4) DEFAULT '0',
  `auto_login_code` varchar(50) NOT NULL DEFAULT '',
  `pwf_code` varchar(50) NOT NULL,
  `activate_code` varchar(50) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `time_zone` varchar(255) NOT NULL DEFAULT '',
  `time_difference` smallint(4) DEFAULT '0',
  `theme` varchar(255) NOT NULL DEFAULT '',
  `entries_read` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_userdata`
--

INSERT INTO `mlf2_userdata` (`user_id`, `user_type`, `user_name`, `user_real_name`, `gender`, `birthday`, `user_pw`, `user_email`, `email_contact`, `user_hp`, `user_location`, `signature`, `profile`, `logins`, `last_login`, `last_logout`, `user_ip`, `registered`, `category_selection`, `thread_order`, `user_view`, `sidebar`, `fold_threads`, `thread_display`, `new_posting_notification`, `new_user_notification`, `user_lock`, `auto_login_code`, `pwf_code`, `activate_code`, `language`, `time_zone`, `time_difference`, `theme`, `entries_read`) VALUES
(1, 2, 'Mujtaba', 'Muhammad Mujtaba Kamal', 1, '1989-09-02', '90dcf2468a9c54e8dc66c67c09b700175db50cca2d5c424777', 'mujtaba@almalomat.ae', 1, 'http://mujtaba989.pancakeapps.com/', 'Sharjah, UAE', '', '', 93, '2018-05-01 07:55:46', '2018-05-01 07:56:21', '162.16.6.93', '2017-03-23 15:29:17', NULL, 0, 0, 1, 0, 0, 1, 0, 0, '', '', '', '', '', 0, '', ''),
(2, 0, 'abdool', 'عبدالرحمن سلطان', 1, '1989-12-21', 'bf81892e73d845156fbcea81f94f96dffdc3730ce507d04f1f', 'abd.mohamed@almalomat.ae', 1, '', 'Sharjah, UAE', '', '', 26, '2017-10-21 09:58:55', '2017-10-21 09:58:55', 'fe80::5d7b:c4d2:9354:5cc2', '2017-03-23 15:32:19', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 'Asia/Dubai', 0, '', ''),
(3, 0, 'saad', 'محمد سعد', 1, '0000-00-00', '3817554d012dd56e13e9b5165aede651598f455e70ee55d09f', 'mohammad.saad@almalomat.ae', 1, '', '', '', '', 16, '2017-03-29 08:09:42', '2017-03-29 08:09:47', '162.16.6.85', '2017-03-23 16:07:10', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 'Asia/Dubai', 0, '', ''),
(4, 0, 'hoda', 'حدا حسن', 2, '0000-00-00', '6976be492a311188a8eaf5517fe5f73bf380944f91350b2fa8', 'ho.hassen@almalomat.ae', 1, '', '', '', '', 6, '2017-03-29 03:40:01', '2017-03-29 03:40:01', '162.16.6.73', '2017-03-25 13:22:57', NULL, 0, 1, 1, 1, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(5, 0, 'maryam', '', 2, '0000-00-00', '2915a58dbd39771a4c7e59f66b05b7a9334c71abb8bebab221', 'maryam.albalooshi@almalomat.ae', 1, '', '', '', '', 2, '2017-03-28 12:36:52', '2017-03-28 12:38:26', '162.16.6.93', '2017-03-25 13:24:51', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 'Asia/Dubai', 0, '', ''),
(6, 0, 'amna', '', 2, '0000-00-00', '0fa6227048a6a965a2273b09e4c2aabbbf0143a67155b1d495', 'amna.ahmad@almalomat.ae', 1, '', '', '', '', 1, '2017-03-25 13:56:50', '2017-03-25 13:58:06', '162.16.6.93', '2017-03-25 13:26:04', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(7, 0, 'zeinab', 'زينب حسن', 2, '0000-00-00', '1b818c1df3b6d9951ea0aa72bae453b82b60acd4c3c985b388', 'zeinab.hassan@almalomat.ae', 1, '', '', '', '', 5, '2017-03-29 08:25:34', '2017-03-29 08:26:47', '162.16.6.93', '2017-03-25 13:26:40', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(8, 0, 'waseem', '', 1, '0000-00-00', 'fed8bb2ff44b24f3ffac71954505293bb086895d43d167ee75', 'waseem@almalomat.ae', 1, '', '', '', '', 2, '2017-03-28 13:11:29', '2017-03-28 13:11:29', '162.16.6.93', '2017-03-25 13:27:29', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(9, 0, 'ahlam', '', 2, '0000-00-00', '2baa44ddf5d1dba39bacf346b43d40b69206587f101a0c4033', 'ah.alblooshi@almalomat.ae', 1, '', '', '', '', 5, '2017-03-29 08:57:01', '2017-03-29 08:57:32', '162.16.6.93', '2017-03-25 13:34:43', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(11, 0, 'manager', 'مريم اللوغاني', 2, '0000-00-00', '848f6053985be88dc1350caf07692788840b9444be4863ea65', 'maryam.alloughani@almalomat.ae', 1, '', '', '', '', 6, '2017-03-29 08:57:37', '2017-03-29 09:07:42', '162.16.6.93', '2017-03-25 14:01:42', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(12, 0, 'fatima', '', 2, '0000-00-00', '673c6ca767faea149ee0fcea4d3ecbd7be030f3b8e772de39d', 'fa.hasan@almalomat.ae', 1, '', '', '', '', 1, '2017-03-28 12:41:00', '2017-03-28 12:41:43', '162.16.6.93', '2017-03-28 12:40:48', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(13, 0, 'eman', 'إيمان صالح', 2, '0000-00-00', '0d4b0ab9e0c04188b6419ce168128fca84c73041dfe1803b41', 'eman.saleh@almalomat.ae', 1, '', '', '', '', 1, '2017-03-28 12:44:09', '2017-03-28 12:45:58', '162.16.6.93', '2017-03-28 12:44:02', NULL, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', ''),
(15, 0, 'mujtaba989', '', 0, NULL, 'e89ed14db4cf59813b30c1408f5abe5f3932dc4b418e312d19', 'mujtabakamal123@gmail.com', 0, '', '', '', '', 1, '2017-03-29 12:21:22', '2017-03-29 12:31:12', '162.16.6.93', '2017-03-29 12:16:52', NULL, 0, 1, 1, 0, 0, 0, 0, 0, '', 'e9837a527898d835dc6a0442eb3a8c56dd4ab61e137342e992', '', '', '', 0, '', ''),
(16, 0, 'owais989', '', 0, NULL, 'd382191d7169d6fec61ba13f65f01297dc22a6351188c658db', 'mujtaba@almalomat.ae', 0, '', '', '', '', 1, '2017-09-25 14:10:08', '2017-09-25 14:10:42', '162.16.6.93', '2017-03-29 12:52:13', NULL, 0, 1, 1, 0, 0, 0, 0, 0, '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_userdata_cache`
--

CREATE TABLE `mlf2_userdata_cache` (
  `cache_id` int(11) NOT NULL,
  `cache_signature` text NOT NULL,
  `cache_profile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mlf2_useronline`
--

CREATE TABLE `mlf2_useronline` (
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(14) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlf2_useronline`
--

INSERT INTO `mlf2_useronline` (`ip`, `time`, `user_id`) VALUES
('162.16.6.93', 1525161381, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mlf2_bookmarks`
--
ALTER TABLE `mlf2_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_uid_pid` (`user_id`,`posting_id`);

--
-- Indexes for table `mlf2_categories`
--
ALTER TABLE `mlf2_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlf2_entries`
--
ALTER TABLE `mlf2_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `category` (`category`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sticky` (`sticky`);

--
-- Indexes for table `mlf2_entries_cache`
--
ALTER TABLE `mlf2_entries_cache`
  ADD PRIMARY KEY (`cache_id`);

--
-- Indexes for table `mlf2_pages`
--
ALTER TABLE `mlf2_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlf2_read_entries`
--
ALTER TABLE `mlf2_read_entries`
  ADD PRIMARY KEY (`user_id`,`posting_id`);

--
-- Indexes for table `mlf2_settings`
--
ALTER TABLE `mlf2_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `mlf2_smilies`
--
ALTER TABLE `mlf2_smilies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlf2_temp_infos`
--
ALTER TABLE `mlf2_temp_infos`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `mlf2_userdata`
--
ALTER TABLE `mlf2_userdata`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mlf2_userdata_cache`
--
ALTER TABLE `mlf2_userdata_cache`
  ADD PRIMARY KEY (`cache_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mlf2_bookmarks`
--
ALTER TABLE `mlf2_bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mlf2_categories`
--
ALTER TABLE `mlf2_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mlf2_entries`
--
ALTER TABLE `mlf2_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mlf2_pages`
--
ALTER TABLE `mlf2_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mlf2_smilies`
--
ALTER TABLE `mlf2_smilies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mlf2_userdata`
--
ALTER TABLE `mlf2_userdata`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
