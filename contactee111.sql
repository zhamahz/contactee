-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2021 г., 23:40
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `contactee`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Mid', 13, 1621324742),
('Mon', 12, 1621324712),
('Student', 16, 1621324927),
('Student', 17, 1621324949),
('University', 14, 1621324861),
('University', 15, 1621324888);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//controller', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//crud', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//extension', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//form', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//model', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('//module', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/asset/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/asset/compress', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/asset/template', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/cache/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/cache/flush', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/cache/flush-all', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/cache/flush-schema', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/cache/index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/fixture/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/fixture/load', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/fixture/unload', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/hello/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/hello/index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/help/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/help/index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/help/list', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/help/list-action-options', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/help/usage', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/message/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/message/config', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/message/config-template', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/message/extract', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/create', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/down', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/fresh', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/history', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/mark', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/new', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/redo', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/to', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/migrate/up', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/serve/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/serve/index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1553116978, 1553116978, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1553116978, 1553116978, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1553116978, 1553116978, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1553116976, 1553116976, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('Mid', 1, 'Mid', NULL, NULL, 1621324271, 1621324271, NULL),
('Mon', 1, 'Mon', NULL, NULL, 1621324241, 1621324241, NULL),
('Student', 1, 'Student', NULL, NULL, 1553168141, 1621324045, NULL),
('University', 1, 'University', NULL, NULL, 1621324366, 1621324366, NULL),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1553116978, 1553116978, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1553116978, 1553116978, 'userManagement');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('changeOwnPassword', '/user-management/auth/change-own-password'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('deleteUsers', '/user-management/user/bulk-delete'),
('changeUserPassword', '/user-management/user/change-password'),
('createUsers', '/user-management/user/create'),
('deleteUsers', '/user-management/user/delete'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('editUsers', '/user-management/user/update'),
('viewUsers', '/user-management/user/view'),
('Mon', 'Admin'),
('Admin', 'assignRolesToUsers'),
('Admin', 'changeOwnPassword'),
('Mid', 'changeOwnPassword'),
('Mon', 'changeOwnPassword'),
('Student', 'changeOwnPassword'),
('University', 'changeOwnPassword'),
('Admin', 'changeUserPassword'),
('Admin', 'createUsers'),
('Admin', 'editUsers'),
('editUserEmail', 'viewUserEmail'),
('assignRolesToUsers', 'viewUserRoles'),
('Admin', 'viewUsers'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers'),
('Admin', 'viewVisitLog');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('userCommonPermissions', 'User common permission', 1553116978, 1553116978),
('userManagement', 'User management', 1553116978, 1553116978);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `text` text,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Åland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(10, 'Antarctica'),
(11, 'Antigua & Barbuda'),
(12, 'Argentina'),
(13, 'Armenia'),
(14, 'Aruba'),
(15, 'Ascension Island'),
(16, 'Australia'),
(17, 'Austria'),
(18, 'Azerbaijan'),
(19, 'Bahamas'),
(20, 'Bahrain'),
(21, 'Bangladesh'),
(22, 'Barbados'),
(23, 'Belarus'),
(24, 'Belgium'),
(25, 'Belize'),
(26, 'Benin'),
(27, 'Bermuda'),
(28, 'Bhutan'),
(29, 'Bolivia'),
(30, 'Bosnia & Herzegovina'),
(31, 'Botswana'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'British Virgin Islands'),
(35, 'Brunei'),
(36, 'Bulgaria'),
(37, 'Burkina Faso'),
(38, 'Burundi'),
(39, 'Cambodia'),
(40, 'Cameroon'),
(41, 'Canada'),
(42, 'Canary Islands'),
(43, 'Cape Verde'),
(44, 'Caribbean Netherlands'),
(45, 'Cayman Islands'),
(46, 'Central African Republic'),
(47, 'Ceuta & Melilla'),
(48, 'Chad'),
(49, 'Chile'),
(50, 'China'),
(51, 'Christmas Island'),
(52, 'Cocos (Keeling) Islands'),
(53, 'Colombia'),
(54, 'Comoros'),
(55, 'Congo - Brazzaville'),
(56, 'Congo - Kinshasa'),
(57, 'Cook Islands'),
(58, 'Costa Rica'),
(59, 'Côte d’Ivoire'),
(60, 'Croatia'),
(61, 'Cuba'),
(62, 'Curaçao'),
(63, 'Cyprus'),
(64, 'Czech Republic'),
(65, 'Denmark'),
(66, 'Diego Garcia'),
(67, 'Djibouti'),
(68, 'Dominica'),
(69, 'Dominican Republic'),
(70, 'Ecuador'),
(71, 'Egypt'),
(72, 'El Salvador'),
(73, 'Equatorial Guinea'),
(74, 'Eritrea'),
(75, 'Estonia'),
(76, 'Ethiopia'),
(77, 'Falkland Islands'),
(78, 'Faroe Islands'),
(79, 'Fiji'),
(80, 'Finland'),
(81, 'France'),
(82, 'French Guiana'),
(83, 'French Polynesia'),
(84, 'French Southern Territories'),
(85, 'Gabon'),
(86, 'Gambia'),
(87, 'Georgia'),
(88, 'Germany'),
(89, 'Ghana'),
(90, 'Gibraltar'),
(91, 'Greece'),
(92, 'Greenland'),
(93, 'Grenada'),
(94, 'Guadeloupe'),
(95, 'Guam'),
(96, 'Guatemala'),
(97, 'Guernsey'),
(98, 'Guinea'),
(99, 'Guinea-Bissau'),
(100, 'Guyana'),
(101, 'Haiti'),
(102, 'Honduras'),
(103, 'Hong Kong SAR China'),
(104, 'Hungary'),
(105, 'Iceland'),
(106, 'India'),
(107, 'Indonesia'),
(108, 'Iran'),
(109, 'Iraq'),
(110, 'Ireland'),
(111, 'Isle of Man'),
(112, 'Israel'),
(113, 'Italy'),
(114, 'Jamaica'),
(115, 'Japan'),
(116, 'Jersey'),
(117, 'Jordan'),
(118, 'Kazakhstan'),
(119, 'Kenya'),
(120, 'Kiribati'),
(121, 'Kosovo'),
(122, 'Kuwait'),
(123, 'Kyrgyzstan'),
(124, 'Laos'),
(125, 'Latvia'),
(126, 'Lebanon'),
(127, 'Lesotho'),
(128, 'Liberia'),
(129, 'Libya'),
(130, 'Liechtenstein'),
(131, 'Lithuania'),
(132, 'Luxembourg'),
(133, 'Macau SAR China'),
(134, 'Macedonia'),
(135, 'Madagascar'),
(136, 'Malawi'),
(137, 'Malaysia'),
(138, 'Maldives'),
(139, 'Mali'),
(140, 'Malta'),
(141, 'Marshall Islands'),
(142, 'Martinique'),
(143, 'Mauritania'),
(144, 'Mauritius'),
(145, 'Mayotte'),
(146, 'Mexico'),
(147, 'Micronesia'),
(148, 'Moldova'),
(149, 'Monaco'),
(150, 'Mongolia'),
(151, 'Montenegro'),
(152, 'Montserrat'),
(153, 'Morocco'),
(154, 'Mozambique'),
(155, 'Myanmar (Burma)'),
(156, 'Namibia'),
(157, 'Nauru'),
(158, 'Nepal'),
(159, 'Netherlands'),
(160, 'New Caledonia'),
(161, 'New Zealand'),
(162, 'Nicaragua'),
(163, 'Niger'),
(164, 'Nigeria'),
(165, 'Niue'),
(166, 'Norfolk Island'),
(167, 'North Korea'),
(168, 'Northern Mariana Islands'),
(169, 'Norway'),
(170, 'Oman'),
(171, 'Pakistan'),
(172, 'Palau'),
(173, 'Palestinian Territories'),
(174, 'Panama'),
(175, 'Papua New Guinea'),
(176, 'Paraguay'),
(177, 'Peru'),
(178, 'Philippines'),
(179, 'Pitcairn Islands'),
(180, 'Poland'),
(181, 'Portugal'),
(182, 'Puerto Rico'),
(183, 'Qatar'),
(184, 'Réunion'),
(185, 'Romania'),
(186, 'Russia'),
(187, 'Rwanda'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'São Tomé & Príncipe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Sint Maarten'),
(198, 'Slovakia'),
(199, 'Slovenia'),
(200, 'Solomon Islands'),
(201, 'Somalia'),
(202, 'South Africa'),
(203, 'South Georgia & South Sandwich Islands'),
(204, 'South Korea'),
(205, 'South Sudan'),
(206, 'Spain'),
(207, 'Sri Lanka'),
(208, 'St. Barthélemy'),
(209, 'St. Helena'),
(210, 'St. Kitts & Nevis'),
(211, 'St. Lucia'),
(212, 'St. Martin'),
(213, 'St. Pierre & Miquelon'),
(214, 'St. Vincent & Grenadines'),
(215, 'Sudan'),
(216, 'Suriname'),
(217, 'Svalbard & Jan Mayen'),
(218, 'Swaziland'),
(219, 'Sweden'),
(220, 'Switzerland'),
(221, 'Syria'),
(222, 'Taiwan'),
(223, 'Tajikistan'),
(224, 'Tanzania'),
(225, 'Thailand'),
(226, 'Timor-Leste'),
(227, 'Togo'),
(228, 'Tokelau'),
(229, 'Tonga'),
(230, 'Trinidad & Tobago'),
(231, 'Tristan da Cunha'),
(232, 'Tunisia'),
(233, 'Turkey'),
(234, 'Turkmenistan'),
(235, 'Turks & Caicos Islands'),
(236, 'Tuvalu'),
(237, 'U.S. Outlying Islands'),
(238, 'U.S. Virgin Islands'),
(239, 'Uganda'),
(240, 'Ukraine'),
(241, 'United Arab Emirates'),
(242, 'United Kingdom'),
(243, 'United States'),
(244, 'Uruguay'),
(245, 'Uzbekistan'),
(246, 'Vanuatu'),
(247, 'Vatican City'),
(248, 'Venezuela'),
(249, 'Vietnam'),
(250, 'Wallis & Futuna'),
(251, 'Western Sahara'),
(252, 'Yemen'),
(253, 'Zambia'),
(254, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `text_date` varchar(255) DEFAULT NULL,
  `link` text,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `speciality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `programs`
--

INSERT INTO `programs` (`id`, `speciality`) VALUES
(1, 'Информатика\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo_passport` blob,
  `pdf_attestat` blob,
  `pdf_motivation` blob,
  `id_uni_1` int(11) DEFAULT NULL,
  `id_program_1` int(11) DEFAULT NULL,
  `datetime_reg_1` date DEFAULT NULL,
  `id_uni_2` int(11) DEFAULT NULL,
  `id_program_2` int(11) DEFAULT NULL,
  `datetime_reg_2` date DEFAULT NULL,
  `id_uni_3` int(11) DEFAULT NULL,
  `id_program_3` int(11) DEFAULT NULL,
  `datetime_reg_3` date DEFAULT NULL,
  `id_uni_4` int(11) DEFAULT NULL,
  `id_program_4` int(11) DEFAULT NULL,
  `datetime_reg_4` date DEFAULT NULL,
  `id_uni_5` int(11) DEFAULT NULL,
  `id_program_5` int(11) DEFAULT NULL,
  `datetime_reg_5` date DEFAULT NULL,
  `id_uni_accepted_1` int(11) DEFAULT NULL,
  `id_uni_accepted_2` int(11) DEFAULT NULL,
  `id_uni_accepted_3` int(11) DEFAULT NULL,
  `id_uni_accepted_4` int(11) DEFAULT NULL,
  `id_uni_accepted_5` int(11) DEFAULT NULL,
  `visa` char(20) DEFAULT NULL,
  `datetime_visa` date DEFAULT NULL,
  `status_visa` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `university`
--

INSERT INTO `university` (`id`, `name`, `type`, `address`, `email`) VALUES
(1, 'КРСУ', 'Высшее учебное заведение', '720000, г. Бишкек, ул. Киевская, 44', 'krsu@krsu.edu.kg'),
(2, 'КГТУ', 'Высшее учебное заведение', '720044, Кыргызстан, г.Бишкек, пр.Ч.Айтматова, 66', 'rector@kstu.kg'),
(3, 'КГМА', 'Высшее учебное заведение', 'ул. И.Ахунбаева, 92, Бишкек, 720020', 'akhunbaev@kgma.kg');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0',
  `id_university` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`, `id_university`) VALUES
(1, 'superadmin', 'FA8pa808MoGF13R6Yu1Iku76znqnM9bH', '$2y$13$Go.CXY0lDzfqSghCL57B2.xJKjvSFuHrOQrrwtjzX7Ir1ki1mgZma', NULL, 1, 1, 1553116976, 1553116976, NULL, NULL, NULL, 0, 0),
(12, 'mon', 'qcew3K_kWXwsF8Bag4sKPmMrV5kN4M0s', '$2y$13$cDfmeYb0p8/WlBCxoMKh0uvZoZN8t7EQGI2VyDqmbT4Yq90nVRNZ.', NULL, 1, 0, 1621324700, 1621324700, '127.0.0.1', '', '', 0, NULL),
(13, 'mid', '7hudV5dAvl1_8tLzHuvXzGFO25iCfH8w', '$2y$13$8/4G.cLN9fazY3IL4tBgmOTWuTEmPAnKxQlcK.fE1/3o3pFIUBjSO', NULL, 1, 0, 1621324735, 1621324735, '127.0.0.1', '', '', 0, NULL),
(14, 'university1', 'Yo3CG1454dpm9hqIYBGMOwGHhc9cNDjE', '$2y$13$iq1m3HLwNfEPWhTUKofrJOSyOh5iAM9HEO6VNWtiyo5OqHLqEZ6Le', NULL, 1, 0, 1621324854, 1621324854, '127.0.0.1', '', '', 0, NULL),
(15, 'university2', 'v7UhAHroXy_pzjUKi2TjIv4tWKARYiP2', '$2y$13$c.UjLyBCO2UDtnaotDxCvO5b0xcWeqeMJR9cRxoeQLRZ1lMR8RLRO', NULL, 1, 0, 1621324884, 1621324884, '127.0.0.1', '', '', 0, NULL),
(16, 'student1', '6LKMO8eypJHIMeKmoGlSAOFMMhl7NgP1', '$2y$13$PxjL24lxSlSOexz8SVp/U.Dp.Iril8h8SDVFh2SnK4G3pG4o6Frqy', NULL, 1, 0, 1621324927, 1621324927, '127.0.0.1', '', NULL, 0, NULL),
(17, 'student2', 'M4Vdd6vLpP6s_fUqBamOUjBouUlRWRsM', '$2y$13$a0kgKfMAkdYY60Uhi1Hh3u2J7N3cSqVMlCCquCDGNAbbCjcW1Xhve', NULL, 1, 0, 1621324949, 1621324949, '127.0.0.1', '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(549, '60a372e71a6f5', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 1, 1621324519, 'Chrome', 'Windows'),
(550, '60a3747f4450f', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 16, 1621324927, 'Chrome', 'Windows'),
(551, '60a3749576b7c', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 17, 1621324949, 'Chrome', 'Windows'),
(552, '60a37fcee5a07', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 1, 1621327822, 'Chrome', 'Windows'),
(553, '60a37fd888e63', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 13, 1621327832, 'Chrome', 'Windows'),
(554, '60a3834c71245', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 1, 1621328716, 'Chrome', 'Windows'),
(555, '60a385e12841b', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 15, 1621329377, 'Chrome', 'Windows'),
(556, '60a385e903a06', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 12, 1621329385, 'Chrome', 'Windows'),
(557, '60a3861162e06', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 1, 1621329425, 'Chrome', 'Windows'),
(558, '60a38aaa39c1e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 13, 1621330602, 'Chrome', 'Windows'),
(559, '60a38aba92125', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 1, 1621330618, 'Chrome', 'Windows'),
(560, '60a38c5e98f81', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 12, 1621331038, 'Chrome', 'Windows'),
(561, '60a38ce05824e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 1, 1621331168, 'Chrome', 'Windows'),
(562, '60a38cf42c25f', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 17, 1621331188, 'Chrome', 'Windows'),
(563, '60a38e2694853', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 12, 1621331494, 'Chrome', 'Windows'),
(564, '60a38e2fd1221', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 17, 1621331503, 'Chrome', 'Windows'),
(565, '60a39bdbe7e13', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 12, 1621335003, 'Chrome', 'Windows'),
(566, '60a3a0e7b222f', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 OPR/76.0.4017.107', 12, 1621336295, 'Chrome', 'Windows'),
(567, '60a505ee5d4ef', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 16, 1621427694, 'Chrome', 'Windows'),
(568, '60a50e31e8823', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 17, 1621429809, 'Chrome', 'Windows'),
(569, '60a511ff35618', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 12, 1621430783, 'Chrome', 'Windows'),
(570, '60a51ee20ff3b', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 16, 1621434082, 'Chrome', 'Windows'),
(571, '60a53c1f93ff1', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 12, 1621441567, 'Chrome', 'Windows'),
(572, '60a54b3d628e7', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 16, 1621445437, 'Chrome', 'Windows'),
(573, '60a573669c4a4', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 16, 1621455718, 'Chrome', 'Windows');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_group_code` (`group_code`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_program_1` (`id_program_1`),
  ADD KEY `id_uni_1` (`id_uni_1`),
  ADD KEY `id_uni_2` (`id_uni_2`),
  ADD KEY `id_uni_3` (`id_uni_3`),
  ADD KEY `id_uni_4` (`id_uni_4`),
  ADD KEY `id_uni_5` (`id_uni_5`),
  ADD KEY `id_program_2` (`id_program_2`),
  ADD KEY `id_program_3` (`id_program_3`),
  ADD KEY `id_program_4` (`id_program_4`),
  ADD KEY `id_program_5` (`id_program_5`),
  ADD KEY `id_uni_accepted_1` (`id_uni_accepted_1`),
  ADD KEY `id_uni_accepted_2` (`id_uni_accepted_2`),
  ADD KEY `id_uni_accepted_3` (`id_uni_accepted_3`),
  ADD KEY `id_uni_accepted_4` (`id_uni_accepted_4`),
  ADD KEY `id_uni_accepted_5` (`id_uni_accepted_5`);

--
-- Индексы таблицы `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_university` (`id_university`);

--
-- Индексы таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `student_registration`
--
ALTER TABLE `student_registration`
  ADD CONSTRAINT `student_registration_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_10` FOREIGN KEY (`id_program_3`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_11` FOREIGN KEY (`id_program_3`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_12` FOREIGN KEY (`id_program_4`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_13` FOREIGN KEY (`id_program_5`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_14` FOREIGN KEY (`id_uni_accepted_1`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_15` FOREIGN KEY (`id_uni_accepted_2`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_16` FOREIGN KEY (`id_uni_accepted_3`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_17` FOREIGN KEY (`id_uni_accepted_4`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_18` FOREIGN KEY (`id_uni_accepted_5`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_2` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_3` FOREIGN KEY (`id_program_1`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_4` FOREIGN KEY (`id_uni_1`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_5` FOREIGN KEY (`id_uni_2`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_6` FOREIGN KEY (`id_uni_3`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_7` FOREIGN KEY (`id_uni_4`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_8` FOREIGN KEY (`id_uni_5`) REFERENCES `university` (`id`),
  ADD CONSTRAINT `student_registration_ibfk_9` FOREIGN KEY (`id_program_2`) REFERENCES `programs` (`id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_university`) REFERENCES `university` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
