-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 05 2017 г., 11:04
-- Версия сервера: 5.6.34-log
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stwork`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('d45b7965-8105-7147-d758-59ba21cbfdef', 'Рога и копыта', '2017-09-14 06:27:50', '2017-09-26 07:56:14', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('d45b7965-8105-7147-d758-59ba21cbfdef', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('00000005-41a7-303a-0c9d-59bf847c8bb5', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'edit', 'bh_marketing_company', 'module', 90, 1),
('10006f4e-1995-a3f7-d040-599a767c6afc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('10242559-0a04-8759-1538-599a76a78fcb', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Documents', 'module', 90, 0),
('1037ce50-f339-d83d-571b-599a7616b8fe', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Bugs', 'module', 90, 0),
('108103fd-e2a2-8020-382e-599a76faa134', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('11a4931e-df05-8782-cc9d-59c24b561769', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'massupdate', 'bh_lead_adress', 'module', 90, 1),
('11a4936c-22c8-a24b-c040-59c9f3050073', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'edit', 'bh_communicators', 'module', 90, 0),
('11bf6cf9-7295-2476-943b-59b7dba4a8d7', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'view', 'bh_organizations', 'module', 90, 1),
('122bcf2b-0263-366d-f276-599a7608c60b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('1232f917-292f-166d-8cf2-599a7675f0da', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('12953261-8c96-3d2b-1466-599a7671fedd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Documents', 'module', 90, 0),
('12b38830-fddb-40db-f1f9-599a76d03f09', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('1312d41e-f6ef-ba4d-bc4f-59c8f2884fcf', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'edit', 'bh_contact_person', 'module', 90, 0),
('138ceb8c-38ef-22c5-c2c6-59c4ad358b50', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'import', 'bh_region', 'module', 90, 0),
('13d34286-162f-3370-6ac7-59ba8d52c272', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'access', 'bh_cases_log', 'module', 89, 0),
('1414041c-a88d-b370-cb89-599a76722916', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('14e61b9f-4b5b-5453-4fdd-599a762dd32b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Prospects', 'module', 90, 0),
('150638a8-f2e5-9a41-f892-599a76a4eebd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Documents', 'module', 90, 0),
('1669401c-8a18-fbdc-97e6-59c9f314b5ff', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'delete', 'bh_communicators', 'module', 90, 0),
('16da136a-5dfc-c35d-c9a0-599a76aba991', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Prospects', 'module', 90, 0),
('16e30f8c-e2eb-945e-acc9-59c8f251249a', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'view', 'bh_contact_person', 'module', 90, 0),
('1730104a-6fed-dd48-97ba-59b672e9cdaf', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'edit', 'bh_Autotransport', 'module', 90, 0),
('17358d02-5ca5-757c-d0da-59bbc186d57a', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'import', 'bh_case_status', 'module', 90, 0),
('1738c437-c666-8b55-1482-599a76cf8052', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('17540a03-308d-4ef7-1896-59b672815395', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'view', 'bh_Autotransport', 'module', 90, 0),
('179a7a16-f9b3-6ae1-9d58-59c8f2f7b6a4', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'delete', 'bh_contact_person', 'module', 90, 0),
('17d78036-05dc-1e53-bab3-59c4ad2e7fac', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'export', 'bh_region', 'module', 90, 0),
('184f3e2b-6dcc-1831-e3e6-59b8d1b06d20', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'list', 'bh_org_trade_points', 'module', 90, 1),
('190ca66f-f678-1e58-ec89-599a764cee9d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('1a6ae93b-4339-25e4-cafa-59bb7270d18a', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'list', 'bh_packet_activation', 'module', 90, 0),
('1ab3f428-fc55-dc6d-9df9-59bf986734dd', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'access', 'bh_marketing_company_history', 'module', 89, 0),
('1b2e08ad-c44a-9405-1f50-59c9f3e337d1', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'import', 'bh_communicators', 'module', 90, 0),
('1c2223b8-f84e-b970-1612-59c4ad37b9a1', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'massupdate', 'bh_region', 'module', 90, 0),
('1c5f2612-dc1a-94b6-a892-59c8f202ca5e', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'import', 'bh_contact_person', 'module', 90, 0),
('1d1e0fbb-1646-912f-9ee5-599a76edc54c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'FP_events', 'module', 90, 0),
('1db61d2d-2a65-275f-5dcd-59b7db129edb', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'list', 'bh_organizations', 'module', 90, 1),
('1dc7a99b-519c-c6af-8de5-59b672a82162', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'delete', 'bh_Autotransport', 'module', 90, 0),
('1dfe82ee-9c7f-c22a-71e3-59b7dc120390', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'view', 'bh_providers', 'module', 90, 0),
('1f722786-7567-72e6-9109-59b91135c643', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'view', 'bh_org_trade_points', 'module', 90, 0),
('1fc11267-a0c3-3ec5-4a70-59bbc15a22d3', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'export', 'bh_case_status', 'module', 90, 0),
('201f58b5-6ff4-ddc0-5b00-59b8d1f89584', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'edit', 'bh_org_trade_points', 'module', 90, 1),
('2123e025-9718-1b2e-b717-59c8f200c6af', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'export', 'bh_contact_person', 'module', 90, 0),
('22180b9b-e226-3feb-799c-59c9f3899432', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'export', 'bh_communicators', 'module', 90, 0),
('22551f3f-bc02-fb61-c2ff-59c3c147c7e7', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'view', 'bh_category_at_work', 'module', 90, 0),
('251ac31a-eea6-006a-9b79-59b6723ee7d1', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'import', 'bh_Autotransport', 'module', 90, 0),
('25ab87b5-41e2-8c46-9e05-59c8f2f0a8b4', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'massupdate', 'bh_contact_person', 'module', 90, 0),
('268a2e3a-5594-3400-db43-59b7dcd7e6d6', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'list', 'bh_providers', 'module', 90, 0),
('269451a2-8810-6095-712a-59bbbfdb95ce', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'view', 'bh_case_compound', 'module', 90, 0),
('26dcb5ab-7ffa-6ffe-2877-59c3c188d0ae', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'list', 'bh_category_at_work', 'module', 90, 0),
('26dcbda0-9bc0-742f-2638-59c9f33e0ddd', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'massupdate', 'bh_communicators', 'module', 90, 0),
('27ad8ca0-77a0-ab16-f9c6-599a7635979f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('27b11e3d-2767-75e2-3aa0-599a76a06d34', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('28743d9b-9fb6-9018-020e-59b7dba3db44', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'edit', 'bh_organizations', 'module', 90, 1),
('29365b90-6a3c-a3ee-6c46-59b911214dfc', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'list', 'bh_org_trade_points', 'module', 90, 0),
('2a4900f1-0d23-87af-78bf-599a76b543ea', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('2a49afbf-68c3-4e25-d58b-59bb72171224', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'edit', 'bh_packet_activation', 'module', 90, 0),
('2a9b9ca6-ec0b-28e6-2895-599a76a91b3c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('2a9efee5-e467-e2ed-2db0-59b8d10a1d8e', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'delete', 'bh_org_trade_points', 'module', 90, 1),
('2a9f2f03-4e32-8b49-db40-599a769c8cf9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('2b2757c9-4653-51e7-ad7b-59c3c17291a6', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'edit', 'bh_category_at_work', 'module', 90, 0),
('2b3ac3a9-679c-e622-dee7-59bbc1b7bcae', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'massupdate', 'bh_case_status', 'module', 90, 0),
('2bc099af-3958-1640-441f-59ba8d8abd9d', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'view', 'bh_cases_log', 'module', 90, 0),
('2bde7008-e517-120c-f292-59bf983a2a4d', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'view', 'bh_marketing_company_history', 'module', 90, 0),
('2bf0e55b-df04-a037-8d29-59b6720854cf', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'export', 'bh_Autotransport', 'module', 90, 0),
('2c6ca114-fe02-1f30-adc1-59b784d1f214', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'view', 'bh_faq_history', 'module', 90, 0),
('2d1039ac-84bf-5d18-a1fa-599a76d40eec', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('2d4b1a67-b673-b8af-609c-599a76592468', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('2dc60a5b-f948-2492-e755-59bfc0ab2026', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'massupdate', 'bh_marketing_directorate', 'module', 90, 1),
('2dc60c88-2775-5ea0-291c-59c24b3678e9', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'delete', 'bh_lead_adress', 'module', 90, 1),
('2e98c196-61c4-e978-5f6e-59b7dc90d591', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'edit', 'bh_providers', 'module', 90, 0),
('2f5bcb7c-01ed-2f9a-9377-599a767d2a06', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('2f5e7497-037f-ce40-19ab-59bbbf9ff419', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'list', 'bh_case_compound', 'module', 90, 0),
('2f720362-ce34-3e16-a184-59c3c1a22dcd', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'delete', 'bh_category_at_work', 'module', 90, 0),
('2f8139d6-c4ba-a173-3e17-599a76a71ec8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('2fbc2a9d-00b8-1e7c-df26-599a766b4fd1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('2fec1eff-59d6-9f80-518e-59bf984d03d1', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'list', 'bh_marketing_company_history', 'module', 90, 0),
('30c15593-5f2c-f1e9-0251-59b7dbd35543', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'delete', 'bh_organizations', 'module', 90, 1),
('30fb0732-6c01-442f-7303-599a76b7dda1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('3230c053-1cb9-4dd7-0382-599a763a785a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('326bb7b2-d1f6-3dcd-bb36-599a76cc0d21', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('32884659-0e0f-7967-616d-599a761fed2a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('32887adc-e20b-e102-83b9-59b6724747bf', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'massupdate', 'bh_Autotransport', 'module', 90, 0),
('32f8b987-71ac-30cd-ce89-599a76a206d8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Accounts', 'module', 89, 0),
('33777ade-3bd4-9fad-3e79-59b911cde8a0', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'edit', 'bh_org_trade_points', 'module', 90, 0),
('33f9a716-8109-21c6-0e53-59bf98bf898d', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'edit', 'bh_marketing_company_history', 'module', 90, 0),
('34a1c91e-dbb8-2292-5f43-599a76e46c55', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('351b3d00-cab8-4599-cd23-599a760c5041', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('3536c3a2-729e-cad0-1182-59b784c46585', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'list', 'bh_faq_history', 'module', 90, 0),
('3569ca1d-5d1d-93ab-f11c-599a76b20cd2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Accounts', 'module', 90, 0),
('35765415-a9b1-3edd-2fbe-599a76463ef9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('3598c0dd-4994-3efb-7ea1-59b7b0b18741', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'edit', 'bh_scr_status_history', 'module', 90, 0),
('3668ed30-8671-db7a-cc79-59b7dc7e7564', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'delete', 'bh_providers', 'module', 90, 0),
('3712dd9c-0f00-e804-bdf7-599a767c4aa4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('37502d41-9ebf-a063-417e-59c3c1cc3ec6', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'import', 'bh_category_at_work', 'module', 90, 0),
('378c422c-5606-c4bc-aa2a-599a76c3135f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('379c436b-7dc1-0b8f-7e28-599a76add149', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Accounts', 'module', 90, 0),
('37ab9347-789b-bb3e-8f2c-59bbbfdf43b9', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'edit', 'bh_case_compound', 'module', 90, 0),
('37ca3990-c92a-bad9-5e57-59bf9806bd56', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'delete', 'bh_marketing_company_history', 'module', 90, 0),
('37ce37ea-27d3-d904-7148-59b8d1d756f3', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'import', 'bh_org_trade_points', 'module', 90, 1),
('381479a7-456d-c0c6-2d8b-59b7db7141ea', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'import', 'bh_organizations', 'module', 90, 1),
('3825e8c1-3bb3-8840-920f-599a761b0d3d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('38590393-3334-451d-d787-599a76bd97ac', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Bugs', 'module', 89, 0),
('3983e7c2-4efd-c675-a26c-599a769576da', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('3a0d5c4b-3619-bf1a-ba9d-599a7686d0c5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('3a3bd492-5d2e-ed69-12cd-599a76844f98', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('3a951426-f5d3-fe90-297e-599a7671c591', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Meetings', 'module', 89, 0),
('3a96e081-44b5-a31c-e2e0-599a76303946', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('3b9ac13c-07f9-54bf-9454-59c3c11565ff', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'export', 'bh_category_at_work', 'module', 90, 0),
('3bd7d41c-7e93-3e92-00f9-59bf98667f71', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'import', 'bh_marketing_company_history', 'module', 90, 0),
('3c015422-02c0-9a2e-daf0-599a76e8f888', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('3c431967-0493-9262-b237-59b91f9218fb', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'view', 'bh_org', 'module', 90, 0),
('3cbe969e-5a00-06ef-0a47-59b9119d1672', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'delete', 'bh_org_trade_points', 'module', 90, 0),
('3d061aeb-131c-5184-c01c-599a769a8e04', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Meetings', 'module', 90, 0),
('3d456c55-b4ac-2a1e-1c89-59b78475afab', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'edit', 'bh_faq_history', 'module', 90, 0),
('3d84f2fd-271a-b8e4-3f1a-599a7698bcaa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('3dfa7ca9-5d59-e53b-daed-59b7dc015fe1', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'import', 'bh_providers', 'module', 90, 0),
('3e33e3ab-8840-3f45-b394-599a76324061', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Accounts', 'module', 90, 0),
('3f0d0fb5-8b81-b8ac-c7c3-599a7645eae9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('3f77238f-e07c-4558-a396-599a76453832', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Meetings', 'module', 90, 0),
('3f876ce3-2304-03e2-85f9-59ba8d0cacc8', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'list', 'bh_cases_log', 'module', 90, 0),
('3fa61e39-d45d-3197-f8ef-59b7db086f01', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'export', 'bh_organizations', 'module', 90, 1),
('3fe56b81-c390-ba5d-f3fc-59bf98e11fae', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'export', 'bh_marketing_company_history', 'module', 90, 0),
('3fe56c1c-95b2-fba0-38e0-59c3c1b65e45', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'massupdate', 'bh_category_at_work', 'module', 90, 0),
('3ff8b300-2bbb-685f-4827-59bbbf97f043', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'delete', 'bh_case_compound', 'module', 90, 0),
('40347a97-9172-8323-67e9-599a762c29bc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('403d751f-c68a-39b9-698a-59b66cec15d0', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'access', 'bh_faq', 'module', 89, 0),
('4066667d-6d98-02b4-b85a-599a76d11110', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Accounts', 'module', 90, 0),
('40d90b58-01d8-a509-9305-59bf84d6ae00', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'delete', 'bh_marketing_company', 'module', 90, 1),
('41e82abc-1c93-bd73-70df-599a7668e349', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('4298f071-0d80-36f8-21bd-599a7664a71d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('42a58e42-1ea1-22b4-78ac-599a762944f9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('43565ee4-fb48-f32c-6a5d-599a76387c8f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('43f30804-1345-7726-d87f-59bf983e6be5', '2017-09-18 09:57:48', '2017-09-18 09:57:48', '1', '1', 'massupdate', 'bh_marketing_company_history', 'module', 90, 0),
('4413362c-ed62-2cb5-83a9-59b91f156bde', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'list', 'bh_org', 'module', 90, 0),
('441ab32d-c53a-461b-cef3-599a769e1cac', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('442f03d6-c9f5-ca69-c139-599a766a906f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('443c9b5a-8389-2e0c-e1af-599a76552385', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Project', 'module', 89, 0),
('44aa2260-1ac5-b228-23d8-59bf888992df', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'access', 'bh_marketing_company', 'module', 89, 0),
('44d70b39-dfc3-a514-5f50-59b784be15a8', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'delete', 'bh_faq_history', 'module', 90, 0),
('44dba980-c693-4c70-51d6-599a76623d7c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('450bb1ca-9ed0-8d22-f35d-59b91190de16', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'import', 'bh_org_trade_points', 'module', 90, 0),
('454d969d-34e3-d771-d78b-59b7dcbb7701', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'export', 'bh_providers', 'module', 90, 0),
('464d34cc-bab7-f459-d05a-599a762f3f44', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Meetings', 'module', 90, 0),
('4682da80-3fbc-c882-1978-599a76910426', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('46adae36-98bd-3e32-945c-599a76a78d1a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Project', 'module', 90, 0),
('4737b2ac-4ea9-0d57-cc6d-59b7dbc5ffe6', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'massupdate', 'bh_organizations', 'module', 90, 1),
('47d48aee-fe5d-3a4d-196f-59ba8dd281ff', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'edit', 'bh_cases_log', 'module', 90, 0),
('48010d07-4b18-cc34-e95e-599a76f93915', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('48083cfe-787f-34a6-6902-599a761531d1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('48a1a6c1-7b10-befa-bfcd-599a76b891a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Project', 'module', 90, 0),
('48be407a-4f81-937a-17d3-599a760687b6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Meetings', 'module', 90, 0),
('49326f2b-a6c0-4d45-ab0c-599a762d1c07', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('4ab7b63e-64af-ac18-b17a-599a76696b5e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('4ad439a9-6960-8427-0973-599a76564278', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Project', 'module', 90, 0),
('4af0c8aa-088c-59aa-9f55-599a760e1d62', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('4b2d90ae-1311-c1d5-8c0d-599a76fa2293', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('4bc1cad1-4ca1-c909-26d9-599a769a6015', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('4be1fa06-bc0c-05fa-a61c-599a760880a1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('4c605d76-8543-157e-6983-59b91f5daaca', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'edit', 'bh_org', 'module', 90, 0),
('4c8c1f43-5d7b-8f22-0843-59b7b06a84f0', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'delete', 'bh_scr_status_history', 'module', 90, 0),
('4ca71c0a-350f-128d-c36f-59b78450fb31', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'import', 'bh_faq_history', 'module', 90, 0),
('4d06ba48-56bf-61e8-70a7-599a76232212', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Project', 'module', 90, 0),
('4d1dbbe7-7fdb-f8d4-4f98-59b7dcf6ba69', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'massupdate', 'bh_providers', 'module', 90, 0),
('4d67476f-484d-6e84-332e-599a76dbec89', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('4d720d74-dd00-821b-435f-599a762f9829', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('4d9cc169-770e-35e1-0089-599a7685e553', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Calls', 'module', 89, 0),
('4ddd1350-eba8-5a56-0b13-599a76936d76', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('4e366ce6-dec3-1030-c860-599a76028b05', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('4eafd9da-47c5-5ffd-ce34-599a76186675', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('4ecffe8d-2969-a48e-6b4d-599a76aee76b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('4f394f86-bf59-ff75-cec7-599a76b6ed28', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Project', 'module', 90, 0),
('4f64bbac-e636-362f-fd59-59c4ad010352', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'access', 'bh_region_area', 'module', 89, 0),
('4fa4ab9f-b664-1d6e-13f2-59ba8dfb87f3', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'delete', 'bh_cases_log', 'module', 90, 0),
('504c544a-437a-f484-b021-599a76cf4ae8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Calls', 'module', 90, 0),
('505542fa-70e9-0cf4-4528-599a76c33d7e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('508ca8ad-9d36-7262-8350-599a760ddfd6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('50e5e572-17cf-78e3-7a7e-599a768612cd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5120d34b-0d03-06b0-bf54-599a76d0e08f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('512d4333-a968-5388-8fee-599a76059035', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Project', 'module', 90, 0),
('5140ef18-3ef1-8bb6-8eea-59b911bd32c4', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'export', 'bh_org_trade_points', 'module', 90, 0),
('51410ad4-f775-89a5-85d1-599a768aae96', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('527edcda-edc8-f410-1637-599a7667ba42', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Calls', 'module', 90, 0),
('52bb3580-c0c0-473b-67a4-59bf8894921c', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'view', 'bh_marketing_company', 'module', 90, 0),
('52c65175-5073-01ae-263e-599a7695923c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('535fd60d-0662-1a02-a4b7-599a761a2245', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('537ab49e-2a3d-6b41-448c-599a769d1cfa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('5391eebf-ab4e-4ae4-a7e4-599a761273a8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('53957182-401f-fcfa-927c-599a76dfc67a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('53ec5026-6afa-14ca-4e4c-59b634c965ac', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'access', 'bh_Card_ident', 'module', 89, 0),
('53f09772-495d-3b6b-ca7a-599a7634553b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('5438bac9-f0e0-6020-3ef8-59b784f8373a', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'export', 'bh_faq_history', 'module', 90, 0),
('544f15fd-ec58-4ad4-2bcd-599a76eeafc5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Leads', 'module', 89, 0),
('546efb74-fd58-22cb-df12-59b91f24293b', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'delete', 'bh_org', 'module', 90, 0),
('54b168ed-487c-07ec-5d43-599a76278540', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Calls', 'module', 90, 0),
('552588b7-015f-95f3-9424-599a765c8048', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('5575e793-934c-b621-5cf6-599a763fdc34', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('55c7f645-925c-e071-f180-599a76061941', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5602e7da-b0bf-44e1-b7e1-599a761bca42', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('562a3575-dcc4-9603-76ee-599a7654e4c4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('56a014a9-5861-99d9-9868-599a76e9496d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('56c8cdac-7d29-44d3-875c-59bf88ad2208', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'list', 'bh_marketing_company', 'module', 90, 0),
('56c8ce0f-8421-500a-20ea-59c3c1df8211', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'access', 'bh_position_at_work', 'module', 89, 0),
('57226694-959d-b748-ca9e-599a76871007', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Calls', 'module', 90, 0),
('572efc0d-ce8c-5979-f6dd-599a762606fd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('580c0698-a7fb-6f20-928d-599a7610176c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('5813834e-4421-fdec-cb21-599a765948e8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('58256cb1-17ea-9034-02f6-599a76157a36', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('58304744-8db6-d055-31f9-59ba8d0394c0', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'import', 'bh_cases_log', 'module', 90, 0),
('5873fb3c-f309-8326-4d35-599a76ab2a50', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('58778a33-c7f3-c7a8-98de-599a76ca8bd8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('58d9cca3-fadd-cdc1-21bc-599a762ee621', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('5954f5b6-b18c-7bdf-fe5b-599a76e1f253', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Calls', 'module', 90, 0),
('59b1c18d-7bee-7c94-6af1-599a760e9928', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Cases', 'module', 89, 0),
('5a49874d-e56e-2735-186d-59b9115d3d2c', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'massupdate', 'bh_org_trade_points', 'module', 90, 0),
('5a9a00e0-d74a-8d27-c60c-599a765190e2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('5ac31560-42eb-6e43-48a2-599a76e2c3bf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('5ad66b0e-8773-817a-cc6f-59bf88037a9e', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'edit', 'bh_marketing_company', 'module', 90, 0),
('5ae4f7ba-7208-82e3-977c-599a76f8a3c4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('5ae89963-cb8c-22ed-920e-599a76ababd1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5afa76b2-3c4c-3168-dccd-599a76483f9a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('5b895950-f652-3fb7-d9a4-599a76847777', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('5b8bde2c-d02e-7c84-8126-59b7844447ae', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'massupdate', 'bh_faq_history', 'module', 90, 0),
('5bc5f50c-b575-ee04-88d8-599a765ba65a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Calls', 'module', 90, 0),
('5cfbb3b6-bc9c-4b77-7557-59c4ad088457', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'view', 'bh_region_area', 'module', 90, 0),
('5d499050-901f-2edf-d3c3-599a765055bf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('5d560ecd-c37a-2d65-1c25-599a76bf2666', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('5d5995ea-c68d-1dfd-48cd-599a76159284', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5d69a019-50f7-bb8e-22f8-599a7630d916', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('5d72ad88-69f5-c4a4-46f8-599a76490dbe', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('5df8856f-6b5f-a254-437b-599a760563d8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('5ee3f5d6-23fa-c71d-b497-59bf88a554b6', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'delete', 'bh_marketing_company', 'module', 90, 0),
('5f6a0648-1c07-9ffd-5f0b-599a76cf4e06', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Bugs', 'module', 90, 0),
('5fcaafff-63cf-8860-6a1b-599a767e7948', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5fdaaee4-120b-7659-a0be-599a7622cb4b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('5ff91570-aaca-bd9a-29f3-599a76693f18', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('6022271c-5323-8ed4-07fd-599a765486ff', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('61e8b266-a43a-32a5-0425-59bbbf4e851d', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'import', 'bh_case_compound', 'module', 90, 0),
('620d3247-dafc-1709-1c46-599a767f909d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('62e721df-0eea-67ea-b2dd-599a76169bf6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('62f19314-8562-fc87-14bd-59c3c1b2a847', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'view', 'bh_position_at_work', 'module', 90, 0),
('62f19453-98c3-471f-d613-59bf88d448e7', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'import', 'bh_marketing_company', 'module', 90, 0),
('63103e9c-612c-0ef7-3ac8-599a76836298', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('63a47330-ba9b-039e-a1b6-59b66c448e43', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'view', 'bh_faq', 'module', 90, 0),
('63d0b7b6-f10d-c16e-38fd-59b91f5ad517', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'import', 'bh_org', 'module', 90, 0),
('64419b3a-a27b-d036-b131-599a7694107b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('647e3b5a-18c9-3784-c3a9-599a7673ba37', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('6516e723-d25b-f31b-058b-59c4adf1ac25', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'list', 'bh_region_area', 'module', 90, 0),
('6596b7de-f007-f037-dfd0-599a76bac848', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('65bfb8cc-e196-31ac-bb5e-599a76f02496', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('65cc0527-4470-8b41-b710-59bbc16bb741', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'edit', 'bh_case_status', 'module', 90, 0),
('66000a2d-b4c8-33c5-e3af-599a768b6d94', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Documents', 'module', 89, 0),
('667247d6-57d9-c106-e04e-599a76924c90', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('66a86caa-6115-9077-48d3-59b7b0e80a4e', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'access', 'bh_scr_status_history', 'module', 89, 0),
('66e0f2ca-4ac4-0589-717e-599a76764a33', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Cases', 'module', 90, 0),
('66f11e65-7204-49bd-8137-599a76465765', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('66ff349b-5f94-8096-b341-59bf88a631c0', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'export', 'bh_marketing_company', 'module', 90, 0),
('673c3290-0dfc-43e0-3125-59c3c196cf71', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'list', 'bh_position_at_work', 'module', 90, 0),
('682e6a7e-03a0-8b90-b65f-59b67643393b', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'access', 'bh_Realty', 'module', 89, 0),
('686f4fd4-d7db-bbde-cca0-599a76f70fe2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('68a4c502-7f1a-f47e-917a-599a76835ab5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('68d4f693-e8d6-3ccd-2415-599a76882932', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Cases', 'module', 90, 0),
('69618158-70d4-9cae-ed16-59c4ad232744', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'edit', 'bh_region_area', 'module', 90, 0),
('69622ce1-87e7-4ddc-d1ba-599a7608c0e6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('6a18a7ab-1de0-0c67-610f-59c24cfb895c', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'access', 'bh_lead_adress', 'module', 89, 0),
('6a7a9655-6567-d48d-8f35-59b66cd4bad6', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'list', 'bh_faq', 'module', 90, 0),
('6ac90976-42a4-435e-752c-599a7656c0aa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Cases', 'module', 90, 0),
('6ad750a5-7770-99b7-ecc9-599a761c22d9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('6b0cc8f4-fe64-546d-e5d7-59bf8868687f', '2017-09-18 08:48:06', '2017-09-18 08:48:06', '1', '1', 'massupdate', 'bh_marketing_company', 'module', 90, 0),
('6b3f055e-47c2-7717-bb86-599a7627099a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('6b7a1d3a-27c2-c47e-58a0-59bb7273ac3a', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'delete', 'bh_packet_activation', 'module', 90, 0),
('6b86d58e-062c-7402-15f6-59c3c11412eb', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'edit', 'bh_position_at_work', 'module', 90, 0),
('6caed5f7-b443-ad1f-9c91-599a7609eb1d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('6cbd0680-2a22-2bab-a74e-599a76767d0b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Cases', 'module', 90, 0),
('6d09dfd9-bece-50a8-8f97-599a76fcb62f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('6d2f9c77-61d2-f0bc-65c3-59ba8d270f7b', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'export', 'bh_cases_log', 'module', 90, 0),
('6dac2767-84b0-fd08-6c34-59c4ad65fb27', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'delete', 'bh_region_area', 'module', 90, 0),
('6dace3cd-0d93-6684-b16d-59b7c2a0f8a3', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'access', 'bh_script_param_response', 'module', 89, 0),
('6ea003a6-eb38-6e2f-cf87-59c4ad8e6df8', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'list', 'bh_region', 'module', 90, 0),
('6ea055a5-ceeb-0443-6f69-59bfc4089b20', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'access', 'bh_marketing_directorate', 'module', 89, 0),
('6eef9a96-6e30-b5ce-24ac-599a76d07812', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Cases', 'module', 90, 0),
('6f1c5563-1183-a1df-9367-599a76f184f2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('6f9ce98d-b52b-4d93-a5a8-599a7664bdc7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('6fbb30a7-91bc-4692-2a27-599a76b28f0e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('6fd17c3b-c08d-f825-ead5-59c3c1ac2a14', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'delete', 'bh_position_at_work', 'module', 90, 0),
('70e39ffe-c96e-6dad-7298-599a7601d285', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Cases', 'module', 90, 0),
('7102aeaa-eb9e-9fad-a836-59c3b26a0040', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'access', 'bh_place_of_work', 'module', 89, 0),
('7150af57-79e1-ab7d-d0fd-59b66c06a980', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'edit', 'bh_faq', 'module', 90, 0),
('719b8ba0-2df6-16ef-16ba-599a765391b9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Leads', 'module', 90, 0),
('71cbde36-c1f4-1503-38c2-599a7625438b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('71f6ce5b-97c0-7762-e10b-59c4ad5ab9c4', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'import', 'bh_region_area', 'module', 90, 0),
('72100511-3c2b-03bf-0525-599a76c447f0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('724c734f-a06b-fb3d-471a-599a76a3608d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('726ac32d-7a1c-9e10-e3ef-599a760817d6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('73162ac0-f612-90b7-1b4a-599a76389796', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('734a381d-16f3-ced5-38dd-59bb72c17969', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'import', 'bh_packet_activation', 'module', 90, 0),
('741c2ceb-05af-bedc-53ae-59c3c1aebdcb', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'import', 'bh_position_at_work', 'module', 90, 0),
('748208e2-fccf-7e77-e40d-599a76e98cef', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('7489916a-ba1e-733d-0134-599a76ca72dc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Leads', 'module', 90, 0),
('74a97ab1-2ebe-4dff-4fe7-59b91faf47ee', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'export', 'bh_org', 'module', 90, 0),
('74c2cfb4-d4df-557b-14b0-599a7687badc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'EAPM', 'module', 89, 0),
('74dbdba9-f729-4f09-60dd-599a764bd49f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('753a764b-cfc3-c022-ac3a-599a7693e625', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('760463a1-6cb1-3454-e684-59c4ad2efc8a', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'export', 'bh_region_area', 'module', 90, 0),
('76410c2d-f475-a8a6-09f5-59c24beeab9f', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'import', 'bh_lead_adress', 'module', 90, 1),
('767693d6-01a4-cb7f-eda8-599a76a8346c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('767d91ff-10e3-6b2c-c4c1-599a76a0e0cc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Leads', 'module', 90, 0),
('76961da8-5c8d-7e9c-47c4-59b6769d3e19', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'view', 'bh_Realty', 'module', 90, 0),
('774c0a8b-c73e-614d-7f5d-599a768e113f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('778b565a-8185-0161-61f7-599a762edd50', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('77b0db2a-f2f9-fa0b-1be8-599a76bb0c51', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'EAPM', 'module', 90, 0),
('77e84575-4a4d-4998-c363-59b66c958c14', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'delete', 'bh_faq', 'module', 90, 0),
('77ea0eee-f34d-f833-e87b-599a760327b1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('7866c3b7-21dc-a8ff-a3af-59c3c1bcd752', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'export', 'bh_position_at_work', 'module', 90, 0),
('78b0226f-1988-8d39-8258-599a762fb01c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Leads', 'module', 90, 0),
('78e0d8a6-20a1-fc8a-55b2-59bfc40f62b7', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'view', 'bh_marketing_directorate', 'module', 90, 0),
('791a8fa0-25f8-f94e-65ea-59bbbfd954e4', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'export', 'bh_case_compound', 'module', 90, 0),
('79a32e2a-5f69-e6f3-1865-599a76af6f9f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('7a21ce8d-4a10-c1ea-d375-599a76bf263d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'EAPM', 'module', 90, 0),
('7a4f0128-42ee-68c3-5ef8-59c4ad4290b2', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'massupdate', 'bh_region_area', 'module', 90, 0),
('7a9998c1-05f4-3a02-2e90-599a7683146d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('7ae2b49f-4c79-b8e3-8b05-599a7674d118', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Leads', 'module', 90, 0),
('7b975a4b-46a7-99f7-f91a-59bb7242a6bf', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'export', 'bh_packet_activation', 'module', 90, 0),
('7bae28e1-b4c1-0c10-154c-59b8d12f77ee', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'export', 'bh_org_trade_points', 'module', 90, 1),
('7c546860-d735-3847-bba2-599a76dbfa58', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('7c91189e-d124-f5d9-7494-599a761089d5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('7cb16ef5-a0f0-21e5-2d1a-59c3c1f9fd68', '2017-09-21 13:41:58', '2017-09-21 13:41:58', '1', '1', 'massupdate', 'bh_position_at_work', 'module', 90, 0),
('7cd6b298-cfcf-15df-f946-599a76430512', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Leads', 'module', 90, 0),
('7ce5002f-61a3-ef9c-b703-599a7672175a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('7d2db09a-1002-3661-c0a5-59b676bf5c78', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'list', 'bh_Realty', 'module', 90, 0),
('7d491bd3-c5cd-d032-d2fd-599a76127842', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('7de10ccf-fe6d-669d-ffff-59c9f379ecdb', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'list', 'bh_communicators', 'module', 90, 0),
('7de10fdc-bd80-ba09-07bf-59bf84570484', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'import', 'bh_marketing_company', 'module', 90, 1),
('7de29fe2-9df4-ba42-08f6-59bfc4e418fe', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'list', 'bh_marketing_directorate', 'module', 90, 0),
('7dff2a3f-9474-6ea8-ae6d-599a7611eb73', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Alerts', 'module', 89, 0),
('7e8c3cf8-dfc3-d3dc-7f0f-599a7684bcd7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('7eaa0420-9892-8398-a91f-599a76f91846', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Bugs', 'module', 90, 0),
('7ebe4eff-a715-5381-94e5-59b66c3b4d0e', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'import', 'bh_faq', 'module', 90, 0),
('7ec578eb-1401-bab8-4247-599a768b2dd8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('7f0d0569-4d22-d81e-7877-59b7cb41c821', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'massupdate', 'bh_Scripts_employee_comment', 'module', 90, 0),
('7f40b80f-027e-eb1b-f246-599a762217d7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('7f5606c0-e966-ad2c-5056-599a76fe2f5e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('80372cb0-9292-5b87-b97a-599a76fdf7c0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('8081f854-29db-e4ab-ca31-59c3b28c77df', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'view', 'bh_place_of_work', 'module', 90, 0),
('80aebad9-80cf-e430-2dba-599a76ccc8dd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Alerts', 'module', 90, 0),
('81367f9d-74ce-b3ac-b663-599a76b363d7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'EAPM', 'module', 90, 0),
('815bf937-161c-c561-0e02-599a76f7ee04', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('8167a29b-41f0-7c64-5de2-59bbbf4d9ebc', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'massupdate', 'bh_case_compound', 'module', 90, 0),
('818893e2-b41e-db10-0220-599a76ba264a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('81f041fd-6492-c233-c2ae-599a7644021e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('82a7447b-eb54-11e7-5d51-59bfc4906091', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'edit', 'bh_marketing_directorate', 'module', 90, 0),
('82a74fbf-0e30-41e5-ee0e-59c4d2b1751c', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'access', 'bh_passports', 'module', 89, 0),
('82b9fccd-ea73-9cb0-3ba7-599a7695ca47', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Users', 'module', 89, 0),
('831fcf60-fb21-bb9a-8290-599a76d6c2ed', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Alerts', 'module', 90, 0),
('8369013d-f4fe-969b-94cd-599a76316c39', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'EAPM', 'module', 90, 0),
('83bb1e4c-1c9f-077d-f6ca-599a76081817', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('83ccf998-f661-b065-1a9f-599a76c4ae43', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('83e47d41-66b5-13fc-9703-59bb722ed942', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'massupdate', 'bh_packet_activation', 'module', 90, 0),
('83f4509c-31c1-9fb5-62e5-599a764a3425', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('84424fa2-5e9e-d532-ac85-59b676a6f2c7', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'edit', 'bh_Realty', 'module', 90, 0),
('8461ccdd-62f6-3ca8-4a11-59b7c2561792', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'view', 'bh_script_param_response', 'module', 90, 0),
('84de4479-13db-4468-a19e-599a7646b98b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('85099372-b9f7-4dc5-d464-59c3b21ae927', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'list', 'bh_place_of_work', 'module', 90, 0),
('852af6b0-5afc-6223-16a2-599a767682bb', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Users', 'module', 90, 0),
('852e910a-c2b1-4e10-1592-599a76f06334', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('8590dce6-2c17-8350-5b11-599a761d707a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('85af2c6c-b992-4b90-5d69-599a76a8e905', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('85d2f3fc-5365-7963-7b59-59b66c187958', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'export', 'bh_faq', 'module', 90, 0),
('85da094b-bfaa-435a-fe8a-599a76d51309', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('863e0db8-f331-9366-8029-599a76b8ea4b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('86e250d5-73e9-2af4-6bdf-599a76a1ad3e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('875d803a-dbb3-edc5-cbd5-599a768ac071', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Users', 'module', 90, 0),
('878dd400-8684-a569-c1bc-599a76789c54', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('87c35f5a-7824-debd-0b43-599a769f4261', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('87de1377-f874-3bd1-934c-599a7678407c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('87e1a6af-c022-c7fd-5114-599a76c61e15', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('88601fcf-2d89-a9f5-216a-59c24cf252df', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'view', 'bh_lead_adress', 'module', 90, 0),
('887088cb-3e3b-f910-12bb-599a766966b9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('889e0f2c-135d-c5f9-3219-59b672bbe965', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'list', 'bh_Autotransport', 'module', 90, 0),
('89518738-794d-643a-d6ee-599a76019687', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Users', 'module', 90, 0),
('89536ec8-b106-4e00-efae-599a768fb7d3', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('899142db-42ff-d5d0-f96e-59c3b200a0bc', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'edit', 'bh_place_of_work', 'module', 90, 0),
('89d22c86-ff26-8f3d-0bf2-599a764ddedb', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('8a083f8d-a912-52ad-f05e-59bb6e57eae4', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'access', 'bh_Scripts_leadership_recommend', 'module', 89, 0),
('8a143a89-d852-bac7-8a78-599a7669f65d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('8a5bb4b7-4f0a-e653-d3ad-599a762fce29', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('8a61e5a8-7064-bf1a-ee00-59bb756a0ebd', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'access', 'bh_formed_packets', 'module', 89, 0),
('8a72e141-a0a5-f359-88e8-599a76dcbe76', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Alerts', 'module', 90, 0),
('8a7be1e5-c600-e11f-c78e-599a7654ab2a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('8ae19333-33b9-e1d7-35c1-599a76ddcf67', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('8b186e89-e4e8-1131-7f96-59b676935c90', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'delete', 'bh_Realty', 'module', 90, 0),
('8b841396-1dec-d71c-c83e-599a7663f6a3', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Users', 'module', 90, 0),
('8bc466d2-7e96-eada-6340-599a76dc8870', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('8bc62cd3-8ae6-2d6a-2075-599a760b5ced', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('8c083c53-f768-14ea-6cf0-599a761ad6c7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('8c31e714-573b-4f89-f784-59b7c2206a8a', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'list', 'bh_script_param_response', 'module', 90, 0),
('8ca568b9-10cb-1570-3b4a-599a76a8a642', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Alerts', 'module', 90, 0),
('8ca919bb-e9df-f6c1-6ced-59b66c4d2163', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'massupdate', 'bh_faq', 'module', 90, 0),
('8caaba3e-3987-7270-c375-59c24c51f02b', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'list', 'bh_lead_adress', 'module', 90, 0),
('8d142b2c-aaff-e327-7669-599a764012b6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('8d884b9c-b0ed-1a91-dc57-599a76aafc65', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('8dc870e2-345d-b98f-f737-599a76dda2a7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Contacts', 'module', 89, 0),
('8df8b3ed-d884-4c72-1388-599a76d027c7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('8e357884-7157-79db-7702-599a76999246', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('8e55f494-bf00-5ba1-f237-59c3b218d38c', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'delete', 'bh_place_of_work', 'module', 90, 0),
('8eef2709-ef90-e8af-5d0f-599a766e53b6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Users', 'module', 90, 0),
('8f54f8a2-ed18-17b6-2f55-599a765c5d73', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('8f852298-7b51-7c64-345e-599a76d2b1b0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('8f8723da-783c-76f5-a401-59c4c35eea90', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'access', 'bh_locality', 'module', 89, 0),
('8ff947f9-6219-4d53-0078-599a76a84845', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('902b3e49-651b-8544-bdb2-599a76d6c38d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('907806fb-5939-c7d3-7ae4-599a76178746', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Contacts', 'module', 90, 0),
('90e327e0-13c4-c7fb-a48c-599a764d44e5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Users', 'module', 90, 0),
('90e50c33-99fd-6c82-c170-599a7662bb66', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('90f565a5-9bfe-d574-bdd6-59c24cc28d0b', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'edit', 'bh_lead_adress', 'module', 90, 0),
('90f9081d-bafd-0cf9-9b40-599a76a7b7cc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Documents', 'module', 90, 0),
('91a4a297-57d1-0801-44f2-59b7b065001d', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'import', 'bh_scr_status_history', 'module', 90, 0),
('91aff240-f2e3-b52d-cdf0-59b676dc3603', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'import', 'bh_Realty', 'module', 90, 0),
('91b7bc33-79ee-6f4d-6f72-599a76b6a67e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('91f5ea0f-dc26-b25d-53a1-59b91feb5429', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'massupdate', 'bh_org', 'module', 90, 0),
('921f4a16-e988-d14f-e6d2-599a765f6048', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('925009fa-fcaa-14c2-22a9-599a76999d19', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'FP_events', 'module', 90, 0),
('926c0087-e1d1-54e7-e6cd-599a76e5f4d2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Contacts', 'module', 90, 0),
('92a0a51a-b066-5037-e827-59c3b2b652de', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'import', 'bh_place_of_work', 'module', 90, 0),
('92a8dbae-2582-ce8c-d72c-599a76a61e08', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9315bce7-3083-68eb-8008-599a764ede45', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('935600c6-acca-a9cb-32d0-599a76c1cc91', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('9394c8a9-ac5d-9aea-4de7-59c4d2dbf9c7', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'view', 'bh_passports', 'module', 90, 0),
('93c37e2f-2733-3827-016a-59b7c2930266', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'edit', 'bh_script_param_response', 'module', 90, 0),
('9451c3b2-f67b-1dd3-6b3c-599a76522f3a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('949e942e-c1f6-c280-bb27-599a76a9edff', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('9502fe60-51ba-d1f1-a3ec-59bfc41e8594', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'delete', 'bh_marketing_directorate', 'module', 90, 0),
('9558541b-6614-fe5a-6b49-599a76d8bad5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('957d02b1-d1e8-ce0c-d536-59c24c556555', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'delete', 'bh_lead_adress', 'module', 90, 0),
('95c71c7b-e7a5-bdf3-73c8-599a763b6889', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('970fa5c7-9e9b-8073-ee56-599a76cec617', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('97a25914-a7cb-8d75-b613-59bfc02774e3', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'access', 'bh_marketing_directorate', 'module', 89, 1),
('97ab00df-fd27-ce69-1c49-599a76ed439b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('97c96a0a-1b30-448b-496e-599a7614e760', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('97cc42d9-4b38-c51a-573b-59b634bc484a', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'view', 'bh_Card_ident', 'module', 90, 0),
('988612d1-2079-7e4c-2abf-59b676d57e14', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'export', 'bh_Realty', 'module', 90, 0),
('98d385cf-eff9-4a46-870a-59c4d23b338a', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'list', 'bh_passports', 'module', 90, 0),
('98e3baca-f3c3-a01f-7939-59ba8de0cbf6', '2017-09-14 14:08:41', '2017-09-14 14:08:41', '1', '1', 'massupdate', 'bh_cases_log', 'module', 90, 0),
('9903a9bc-cd01-e9f8-83ab-599a76baf5ca', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Contacts', 'module', 90, 0),
('994d92ef-ab20-ab04-1d42-59c3b2e891be', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'export', 'bh_place_of_work', 'module', 90, 0),
('9a0227ad-4452-aa73-5465-59bb75781d2a', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'view', 'bh_formed_packets', 'module', 90, 0),
('9a750e0b-cab3-77f3-c37b-599a765090cd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('9a78fb8d-00e6-4eeb-b735-599a7611a612', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9aae0522-a3ad-8a7f-1964-599a7640014e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Prospects', 'module', 89, 0),
('9abbd579-71c3-3a89-c7d2-59bfc43e6c94', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'import', 'bh_marketing_directorate', 'module', 90, 0),
('9b2a4b54-a1bd-8078-8e2c-59b7b077ec07', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'export', 'bh_scr_status_history', 'module', 90, 0),
('9b3623e6-f296-e43d-655f-599a76515725', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Contacts', 'module', 90, 0),
('9b939f51-39a0-7c32-41f5-59b7c21a2977', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'delete', 'bh_script_param_response', 'module', 90, 0),
('9bb20949-8ec9-ef75-505d-59d362ee5263', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'access', 'bh_channels_impact', 'module', 89, 0),
('9ce12610-f6bc-69a0-5731-59c24c53450a', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'import', 'bh_lead_adress', 'module', 90, 0),
('9d28731e-2e06-99f0-172d-599a762f0f74', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9d68bda2-cba2-7a37-fb05-599a7656174f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('9dd54586-64f0-ea9c-5645-59c3b2f579e0', '2017-09-21 12:37:43', '2017-09-21 12:37:43', '1', '1', 'massupdate', 'bh_place_of_work', 'module', 90, 0),
('9dea0a8d-ea2e-3fbd-6254-599a76876955', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('9e124d4e-f621-9da9-2054-59c4adb5ae96', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'access', 'bh_country', 'module', 89, 0),
('9e91fd1e-eac7-0430-59a4-59b7cbd45807', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'access', 'bh_Scripts_employee_comment', 'module', 89, 0),
('9ee0e220-19ea-07bf-7ec4-59b6346d31fc', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'list', 'bh_Card_ident', 'module', 90, 0),
('9f6b0311-ce4c-81a1-1fa5-599a76742253', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Tasks', 'module', 89, 0),
('9fbd863c-caad-36c0-8ffc-59bfc4b8223c', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'export', 'bh_marketing_directorate', 'module', 90, 0),
('a074a3de-2c36-0a45-fc8a-59c4d2699e3d', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'edit', 'bh_passports', 'module', 90, 0),
('a12bcf8d-4105-01ef-7a44-59c24c5fe930', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'export', 'bh_lead_adress', 'module', 90, 0),
('a168ca82-04aa-975a-f17b-59c8f299a00f', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'access', 'bh_phones', 'module', 89, 0),
('a1d24d23-a8cb-60d0-aed5-59bb75bb7c9e', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'list', 'bh_formed_packets', 'module', 90, 0),
('a1ffd7d5-c062-d26c-dc01-599a76e078cb', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'access', 'AOD_Index', 'module', 89, 1),
('a21a9d5d-8656-149c-6bd7-599a76ce1593', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Tasks', 'module', 90, 0),
('a3a235a4-3762-a2ac-a9f7-59b7c25d9ea3', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'import', 'bh_script_param_response', 'module', 90, 0),
('a3cb2d0b-33eb-ac16-b898-59bfad96ad3e', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'access', 'bh_marketing_response', 'module', 89, 0),
('a435c4fb-2546-97bf-e9f6-59b8d11d5c81', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'massupdate', 'bh_org_trade_points', 'module', 90, 1),
('a4824a60-bf3f-570d-bb1a-59c4c3fe7aa0', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'view', 'bh_locality', 'module', 90, 0),
('a48b9a02-d346-bc77-5831-599a761734a6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Tasks', 'module', 90, 0),
('a4edefd2-27a8-7164-180c-599a76df73a0', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'view', 'AOD_Index', 'module', 90, 1),
('a5395a72-3ca8-4c86-f92b-59c4d25fdcc1', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'delete', 'bh_passports', 'module', 90, 0),
('a5766a22-caea-beca-5bb3-59c24c115a99', '2017-09-20 11:10:39', '2017-09-20 11:10:39', '1', '1', 'massupdate', 'bh_lead_adress', 'module', 90, 0),
('a5b36b43-7f24-e326-ea62-59bfc43855b3', '2017-09-18 13:06:40', '2017-09-18 13:06:40', '1', '1', 'massupdate', 'bh_marketing_directorate', 'module', 90, 0),
('a5c8230d-3965-39a6-8e15-59b66f29ed78', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'access', 'bh_scripts', 'module', 89, 0),
('a5f5881d-7a40-e621-cf06-59b6344aedcf', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'edit', 'bh_Card_ident', 'module', 90, 0),
('a6be267d-ec0f-ea59-2980-599a76ca1044', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('a6f91258-a707-3386-a35b-599a76387104', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Emails', 'module', 89, 0),
('a75ee405-2c0e-072e-f6e5-599a76267685', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'list', 'AOD_Index', 'module', 90, 1),
('a8391db3-5c5c-3ade-248b-59bbc1b30f30', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'access', 'bh_case_status', 'module', 89, 0),
('a87e39a9-ce23-8f8f-c18d-59d36e128f3f', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'access', 'bh_campaine_products', 'module', 89, 0),
('a8a35c93-73b2-40ba-2bfd-59b676e79a20', '2017-09-11 11:40:08', '2017-09-11 11:40:08', '1', '1', 'massupdate', 'bh_Realty', 'module', 90, 0),
('a92f3963-29d0-adb5-9c80-599a76631e3f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('a946f4b4-8972-8d8a-cedf-59c4c35d1fec', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'list', 'bh_locality', 'module', 90, 0),
('a963d29d-76d0-8609-42e8-59bb75d83e4c', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'edit', 'bh_formed_packets', 'module', 90, 0),
('a9a89432-d3a4-c2c6-f0b9-599a761759a9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Emails', 'module', 90, 0),
('a9d384ef-3b0b-cf21-8880-599a7682e745', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('a9fe18cb-dd4c-51fa-66d7-59c4d2cf6a00', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'import', 'bh_passports', 'module', 90, 0),
('aa0e7fba-8cc7-a73b-9204-599a7621ac07', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'edit', 'AOD_Index', 'module', 90, 1),
('aba031cc-930a-e15f-3ccd-599a763473bf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Tasks', 'module', 90, 0),
('abdb223e-757a-51fa-4657-599a76af5158', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Emails', 'module', 90, 0),
('abef5917-5bca-2075-33f7-59b7c2b9dc1e', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'export', 'bh_script_param_response', 'module', 90, 0),
('acbdff7a-f67c-5d60-ee34-599a76a6a833', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'delete', 'AOD_Index', 'module', 90, 1),
('acc191a4-f1e0-7850-138d-599a767f1037', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('accb953c-201c-25b1-dd7d-59b634c8a40b', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'delete', 'bh_Card_ident', 'module', 90, 0),
('ad919292-259c-7524-ef67-59c4c38c46a4', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'edit', 'bh_locality', 'module', 90, 0),
('ae114b64-95d7-2cd0-84b3-599a7611c783', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Tasks', 'module', 90, 0),
('ae358c44-31a1-7746-bbf2-59b7b019f19d', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'massupdate', 'bh_scr_status_history', 'module', 90, 0),
('ae4c3f6d-3f23-ced3-f8ea-599a76fb3486', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Emails', 'module', 90, 0),
('aec2cbca-cfd3-afba-49e4-59c4d2a440df', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'export', 'bh_passports', 'module', 90, 0),
('af2f076c-e2e4-a816-b63c-599a76aa547f', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'import', 'AOD_Index', 'module', 90, 1),
('af329dd7-e59b-9365-7bbe-599a76174090', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('b0263c00-3c8f-ec38-0c1a-59b7cbdbad8b', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'view', 'bh_Scripts_employee_comment', 'module', 90, 0),
('b07eb402-78fb-d89b-d86f-599a761894a5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Emails', 'module', 90, 0),
('b082434b-4222-88e7-bc62-599a766d22a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('b0f57029-f964-3cdc-dccc-59bb75c12dde', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'delete', 'bh_formed_packets', 'module', 90, 0),
('b14a87c4-2997-560b-bfeb-59bb7278b4c0', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'access', 'bh_packet_activation', 'module', 89, 0),
('b1de95ee-6191-7bb7-dc04-599a766c3b8c', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'export', 'AOD_Index', 'module', 90, 1),
('b1e22113-04e1-1855-a95e-599a76d1e9b1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('b2514175-3aad-7c16-c429-59bb6e11abea', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'view', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('b2564cf4-ea38-8300-e234-59c4c3c3e894', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'delete', 'bh_locality', 'module', 90, 0),
('b2ca46ac-cda9-7b91-90f6-599a765a88c2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('b2efc543-62af-1b43-e2be-599a7693aa3e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Emails', 'module', 90, 0),
('b34a03c1-3bc5-c171-19a3-59c4ad28c09b', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'edit', 'bh_region', 'module', 90, 0),
('b374659d-9cb9-b93a-5599-59b66fb510f5', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'view', 'bh_scripts', 'module', 90, 0),
('b3877144-bfa9-bbeb-a6d5-59c4d2da66b2', '2017-09-22 09:05:55', '2017-09-22 09:05:55', '1', '1', 'massupdate', 'bh_passports', 'module', 90, 0),
('b3c4822f-a59d-9609-bb8d-59c8f20fa10b', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'view', 'bh_phones', 'module', 90, 0),
('b3e030a9-b0ff-9f6a-40b3-59b634f1cf4b', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'import', 'bh_Card_ident', 'module', 90, 0),
('b44f9bd7-6b31-ba43-0b75-599a767dabb7', '2017-08-21 05:56:19', '2017-09-13 10:48:57', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 1),
('b45323ba-aea9-5e9a-ebb7-599a763905cf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('b52240b9-9ccd-7844-dee3-599a76a404ab', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Emails', 'module', 90, 0),
('b579d64e-2c0b-e934-4d50-599a762da785', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('b668f904-221e-0107-8d5d-59d36e59027e', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'view', 'bh_campaine_products', 'module', 90, 0),
('b6a0e7b1-52c2-c940-7b61-59bfc0fe8adc', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'view', 'bh_marketing_directorate', 'module', 90, 1),
('b702b909-a5a7-47eb-4a17-599a7678bfd4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('b7935dc8-e6ed-3d7a-4267-599a7622258a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('b7ba74a8-3591-00d2-1c62-59b8d1c515c4', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'access', 'bh_org_trade_points', 'module', 89, 1),
('b7ead238-d15d-a284-a2be-599a763d67a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('b8090a7a-a8bb-404b-e9e9-599a76584b47', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Documents', 'module', 90, 0),
('b84c2ec9-622b-f790-a0a8-59bfad802bc8', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'view', 'bh_marketing_response', 'module', 90, 0),
('b84c2ef7-0468-c180-e2ce-59c4c37051ad', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'import', 'bh_locality', 'module', 90, 0),
('b856449e-d222-090f-5f1f-59bbc12f710e', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'view', 'bh_case_status', 'module', 90, 0),
('b8893699-c9d7-b5f1-9df5-59c4add76d7d', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'view', 'bh_country', 'module', 90, 0),
('b904140e-bc79-8387-d171-59bb75f085c4', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'import', 'bh_formed_packets', 'module', 90, 0),
('b973c218-5642-8084-7ffe-599a768a9a8e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('b97d5eed-9bb7-51f3-b696-59c8f22623e8', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'list', 'bh_phones', 'module', 90, 0),
('b9b509db-5212-985d-4c0d-599a7649e361', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('ba0bf5ff-c23a-b0b1-b729-59b66f12bd2a', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'list', 'bh_scripts', 'module', 90, 0),
('ba570b24-08c6-7845-5e07-59b7c21ec0c3', '2017-09-12 11:18:46', '2017-09-12 11:18:46', '1', '1', 'massupdate', 'bh_script_param_response', 'module', 90, 0),
('ba5be8cd-5b52-1f56-1cd0-599a76b3b3a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('bad30dd5-a449-14ed-a21e-599a7610bccc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('baf4d9a2-d71f-2bd4-ed39-59b634a0a894', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'export', 'bh_Card_ident', 'module', 90, 0),
('bb4b0297-ea29-2093-369d-59d36e336ee1', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'list', 'bh_campaine_products', 'module', 90, 0),
('bbde6250-7ce1-ffe7-99a0-59b7cb9f416e', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'list', 'bh_Scripts_employee_comment', 'module', 90, 0),
('bc234c98-1558-dc7c-e597-599a76de017b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('bc59c21b-9dca-220f-8c61-59bfad62bfe1', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'list', 'bh_marketing_response', 'module', 90, 0),
('bd0b6a42-c658-63a3-44ce-599a769ee7df', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('bd10e03d-e81c-7555-e8a9-59c4c36184ec', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'export', 'bh_locality', 'module', 90, 0),
('bd10eb3e-f70f-8de5-9552-59c4add94d53', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'list', 'bh_country', 'module', 90, 0),
('bd2b98ee-63d7-5faa-68dd-599a7628f04a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('bd4802f8-17bb-c95d-2f16-599a766abab0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'FP_events', 'module', 90, 0),
('bdf1d0ea-c232-8a0d-3473-599a76f3d8d5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('be3cc24c-9c96-8cea-f704-599a76951e8e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Spots', 'module', 89, 0),
('bebc00b0-08a5-21dd-8407-59bf84b2609c', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'export', 'bh_marketing_company', 'module', 90, 1),
('bec4f2ae-15be-293c-eb58-59bb6e898707', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'list', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('bfee9cd3-9dbe-5b53-a3b6-59d36efe57b9', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'edit', 'bh_campaine_products', 'module', 90, 0),
('c0e1770d-4ef2-4f75-7742-59bf84ef7c73', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'access', 'bh_marketing_company', 'module', 89, 1),
('c0e1e7d9-e3bf-7a46-159d-59bbc19d8cfa', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'list', 'bh_case_status', 'module', 90, 0),
('c0e21852-8add-5413-bcdb-59b66f2a33f9', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'edit', 'bh_scripts', 'module', 90, 0),
('c112bb8b-c6f4-37d8-eecd-59bb75715775', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'export', 'bh_formed_packets', 'module', 90, 0),
('c1130119-811d-e0f1-a188-599a76014f0a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('c11e6609-eb68-6e72-8fd8-599a76432987', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('c12ad41a-e614-1127-435d-599a76ba594d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Spots', 'module', 90, 0),
('c1988527-0605-153c-16c6-59c4c37d45be', '2017-09-22 08:02:05', '2017-09-22 08:02:05', '1', '1', 'massupdate', 'bh_locality', 'module', 90, 0),
('c1cae57c-140a-5c4a-1b44-59b634f6798f', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'massupdate', 'bh_Card_ident', 'module', 90, 0),
('c3220fb1-2db0-4037-fcd9-59b7845924c4', '2017-09-12 06:54:01', '2017-09-12 06:54:01', '1', '1', 'access', 'bh_faq_history', 'module', 89, 0),
('c35d5765-c6dc-f0a0-d14d-599a76148de5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Spots', 'module', 90, 0),
('c3cdec72-21e4-d044-b152-599a76f9318d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('c3fae434-755c-3686-d9f6-59bfadee775a', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'edit', 'bh_marketing_response', 'module', 90, 0),
('c453a6f3-91a6-2995-5065-59d36e855b8f', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'delete', 'bh_campaine_products', 'module', 90, 0),
('c474f24f-fc9f-625f-4826-59bfc09e4f9c', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'list', 'bh_marketing_directorate', 'module', 90, 1),
('c4bd30a3-504d-9721-57b4-599a7670b869', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('c4db83e6-82d1-19ae-c5b7-599a76eb308e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('c4ef063a-69e8-c7dc-202e-59c4adee8922', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'edit', 'bh_country', 'module', 90, 0),
('c59aa46f-3cdc-2714-9510-599a761ac686', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('c5a62322-0600-de49-1210-59c8f2bc0ab7', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'edit', 'bh_phones', 'module', 90, 0),
('c5a62a42-6743-36c3-aae7-59c24bdf6372', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'access', 'bh_lead_adress', 'module', 89, 1),
('c5a70b73-7864-7e3e-5b1f-599a76a5ac40', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Prospects', 'module', 90, 0),
('c67d762f-0ce5-4684-410d-599a7653eada', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('c70e1e5a-7658-287c-f79b-599a7655525b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('c7121e21-54f6-4552-b364-59bb6e700fa4', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'edit', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('c76ccd64-4ab3-95c0-8341-599a76e37bcc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('c779a7c9-26e3-9715-dce2-59b66ff7779a', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'delete', 'bh_scripts', 'module', 90, 0),
('c8087122-1b3a-12ff-e830-59bfad5fad08', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'delete', 'bh_marketing_response', 'module', 90, 0),
('c84a24bb-fcf2-70b6-a1c9-599a766eedc1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('c85211d8-2f9d-93a1-8e6d-59b7cb0ad2bb', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'edit', 'bh_Scripts_employee_comment', 'module', 90, 0),
('c8a45143-db17-246a-d3b5-59bb7522a154', '2017-09-15 06:39:06', '2017-09-15 06:39:06', '1', '1', 'massupdate', 'bh_formed_packets', 'module', 90, 0),
('c8f73b77-63e4-980b-0dd5-59d36e6a5e13', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'import', 'bh_campaine_products', 'module', 90, 0),
('c92d0e1a-1a57-63ec-0f6c-599a76a8bdb4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('c939a27d-f3fb-2b41-5fdb-59c4ad553804', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'delete', 'bh_country', 'module', 90, 0),
('c97f129d-f046-2920-2906-599a765213cf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('c9d73f32-87ba-00eb-1c6f-59d36242af37', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'view', 'bh_channels_impact', 'module', 90, 0),
('c9da3bb1-8fc6-07ef-9181-599a76af6caa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('ca1c4902-515d-5799-d74d-599a76478eb8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('ca3371a6-68a8-76a2-cc5b-599a76b779c2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Spots', 'module', 90, 0),
('ca6ad381-d75d-c53e-e659-59c8f2b57624', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'delete', 'bh_phones', 'module', 90, 0),
('ca7060b1-f092-0493-b455-59bb72f3b85d', '2017-09-15 06:26:55', '2017-09-15 06:26:55', '1', '1', 'view', 'bh_packet_activation', 'module', 90, 0),
('cabb3007-62ee-106a-02e5-599a76eadb86', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('cb249b1c-29b1-8851-a950-599a76f89651', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('cbdc8b99-c896-75d5-79c8-599a76717ba4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('cc5328f0-0b0d-cf44-28f1-59bfad28d72f', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'import', 'bh_marketing_response', 'module', 90, 0),
('cc973570-a026-50e2-48d0-59bbbf18eea1', '2017-09-15 11:56:00', '2017-09-15 11:56:00', '1', '1', 'access', 'bh_case_compound', 'module', 89, 0),
('cca486d5-9d13-6b76-5978-599a764ac8bc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Spots', 'module', 90, 0),
('ccc84595-3cd9-e0da-754c-599a767aa944', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('cccbd0a0-901c-e450-0de3-599a764df161', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('cd1dc2b1-271b-a2c4-2596-59d36eed1a61', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'export', 'bh_campaine_products', 'module', 90, 0),
('cd2c343e-c38d-7d46-7e52-599a762e8286', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('cdc15a9b-e176-b575-a7c7-59c4ade5c073', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'import', 'bh_country', 'module', 90, 0),
('ce11459f-76dd-cba4-027a-59b66f57b289', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'import', 'bh_scripts', 'module', 90, 0),
('ce512fbf-cc9a-5485-b8b3-599a769c3cfa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('ce8c1d3e-13dc-4100-ddf2-599a760e9a76', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('cef28965-08a0-a7a5-9a77-59c8f263b83a', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'import', 'bh_phones', 'module', 90, 0),
('cf15813c-01d7-b922-a192-599a7625b808', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Spots', 'module', 90, 0),
('cf20b7c7-b03e-d6f2-1459-59bb6e53ac20', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'delete', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('cf77caea-db36-7986-2faa-599a7614b74d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('cf9d46df-5f1d-2e10-e40b-599a76aa9488', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('cfb9efa5-e6d9-190d-4bbe-599a76407503', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('d060bbce-7331-04db-b5dd-59bfad48fd48', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'export', 'bh_marketing_response', 'module', 90, 0),
('d06ec66e-78c8-115b-4bd7-59d3624d21f6', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'list', 'bh_channels_impact', 'module', 90, 0),
('d100b130-5fb5-d546-f01a-599a767dddf8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('d13b916c-4c23-49c0-8d57-599a7610086e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('d14100b7-3c05-1881-29a9-59b8d184c80b', '2017-09-13 06:31:56', '2017-09-13 10:48:57', '1', '1', 'view', 'bh_org_trade_points', 'module', 90, 1),
('d1481ede-976d-a030-3166-599a763e26bd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Spots', 'module', 90, 0),
('d20bfcc4-7a24-1836-12f8-59c4ad0bc877', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'export', 'bh_country', 'module', 90, 0),
('d20e42e7-1bb2-2022-4478-599a76fa6fea', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('d227526a-468c-be95-e205-599a76b7370f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('d22aeaa6-84cc-32e5-f416-599a761d0f2c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('d37a2d6f-6705-e229-ce8c-59c8f2472093', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'export', 'bh_phones', 'module', 90, 0),
('d3b03a48-06b9-43fa-9aa2-599a769cdb60', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('d3b91eab-3097-b90f-4a09-599a7659f1d6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('d431405f-6186-7a9a-303c-59bfad4110f7', '2017-09-18 11:26:43', '2017-09-18 11:26:43', '1', '1', 'massupdate', 'bh_marketing_response', 'module', 90, 0),
('d47f572e-5a92-4139-d72d-599a76735be0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('d4a8d076-a15a-9b9e-ca19-59b66f1f517e', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'export', 'bh_scripts', 'module', 90, 0),
('d4d6e558-1c04-98d3-f356-599a766fe517', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('d5125d7b-dca5-9b68-c7b5-59d3627ce325', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'edit', 'bh_channels_impact', 'module', 90, 0),
('d518f351-2ef4-02a0-c395-599a761f081f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('d525687b-47f7-38cc-3c93-59bfc0aa92c0', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'edit', 'bh_marketing_directorate', 'module', 90, 1),
('d59f021e-3c9a-135f-423d-59c8f23e773b', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'list', 'bh_contact_person', 'module', 90, 0),
('d59f0530-f8e8-a791-598a-59c24b83ef22', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'export', 'bh_lead_adress', 'module', 90, 1),
('d65690a6-e4eb-6c79-2963-59c4ad754739', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'massupdate', 'bh_country', 'module', 90, 0),
('d65692ae-28b7-9276-291e-59c8f2688a8e', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'access', 'bh_contact_person', 'module', 89, 0),
('d65fcea6-07dd-4dba-625f-599a763c6ba4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('d6f06ba9-d94b-c5bc-adda-599a764f4754', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('d6f0db6c-b7f2-427e-b7d8-59bb6eadcaec', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'import', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('d736c0c1-e430-a162-701a-59b7cb39ac1f', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'delete', 'bh_Scripts_employee_comment', 'module', 90, 0),
('d747e49c-d4e9-8976-40e5-599a76fc9ab6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('d782d5c8-ebcc-c7d4-09a6-599a7679945d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('d801d9ee-2a57-a8b2-82b8-59c8f2b36f37', '2017-09-25 12:11:30', '2017-09-25 12:11:30', '1', '1', 'massupdate', 'bh_phones', 'module', 90, 0),
('d85aff29-c700-c9b2-0f53-599a76a3cfe4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('d90f47f9-d7a3-b3f0-fddc-599a7695afd5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('d9700c2e-080c-56d6-abd4-59c3c1803779', '2017-09-21 13:42:41', '2017-09-21 13:42:41', '1', '1', 'access', 'bh_category_at_work', 'module', 89, 0),
('d9b5edf8-aba9-115b-6881-59d362bb5e88', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'delete', 'bh_channels_impact', 'module', 90, 0),
('da35f08a-255d-9edf-54b3-599a764f89ad', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('da70e24d-2b62-284f-55d3-599a76409796', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('daa13915-14a0-edd2-0965-59bfc0cf6f34', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'delete', 'bh_marketing_directorate', 'module', 90, 1),
('db0a7f6a-bc73-6809-03d6-599a7675ec2d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('db407830-e29c-338c-d4a6-59b66f9819f2', '2017-09-11 11:09:55', '2017-09-11 11:09:55', '1', '1', 'massupdate', 'bh_scripts', 'module', 90, 0),
('db857f7c-30ac-4e3e-a481-59d36eaae5d2', '2017-10-03 11:02:04', '2017-10-03 11:02:04', '1', '1', 'massupdate', 'bh_campaine_products', 'module', 90, 0),
('dbbed651-952b-ce50-3b31-599a76484a11', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('dcde0e34-8f5f-558b-abca-599a768505c9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('dce5732d-c6d0-4c2e-1ed2-599a769ee793', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('dd206ef5-64f9-ad86-8b62-599a76a3a6fa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('dd67c8e5-6468-483e-3a2f-599a762df87a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Notes', 'module', 89, 0),
('dd7f1bdf-deaa-38f0-536e-599a76141f3b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('ddbab590-8a34-ddd5-5c5f-59c9f3dbf733', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'access', 'bh_communicators', 'module', 89, 0),
('dddc73d7-3832-7d83-213f-59d3628e165b', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'import', 'bh_channels_impact', 'module', 90, 0),
('ddf88f8e-67da-534e-2851-599a7696039e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('ddfc05ee-2d52-2b5d-b7f8-599a761895d2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('deace5a1-368f-b25f-56dd-599a76a2f43a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('dec0e7c6-6385-0052-2404-59bb6e0c6592', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'export', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('df1a0d27-369d-f0ec-d97c-599a763a2972', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Documents', 'module', 90, 0),
('dfc263c4-29e6-bf4d-d926-59b7cb4bb033', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'import', 'bh_Scripts_employee_comment', 'module', 90, 0),
('dfe00a14-19ed-4260-5839-59bfc0673a84', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'import', 'bh_marketing_directorate', 'module', 90, 1),
('e0175e4c-fbba-00ab-c331-599a76dccaee', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Notes', 'module', 90, 0),
('e04cfef2-621f-cb32-bcc0-599a76b8439c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('e0530a6f-730b-8f47-fd4b-599a76def419', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Bugs', 'module', 90, 0),
('e071059b-ba2c-d6ef-f894-599a76067462', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('e0a81e97-cc4e-b445-4a87-599a76b8cae9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('e0aba5dd-dfef-af28-ade1-599a76f974cc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('e1b63eb5-1cd0-be40-79bd-59b7b06cf284', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'view', 'bh_scr_status_history', 'module', 90, 0),
('e249e332-0fbb-e777-c1dd-599a764b4d2a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Notes', 'module', 90, 0),
('e2be0fc0-9666-57b9-2519-599a76461d41', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('e35b266f-a587-2aa3-8804-599a76b97c97', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('e3961019-4f85-3fa4-48e0-599a7622372e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('e40f83a8-df43-c3cb-26eb-599a76820755', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('e4438bb2-15a9-05e1-f3ec-59b6720c03ee', '2017-09-11 11:26:31', '2017-09-11 11:26:31', '1', '1', 'access', 'bh_Autotransport', 'module', 89, 0),
('e47c60ca-66e8-4e30-b14e-599a76d0df8e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Notes', 'module', 90, 0),
('e56e17ed-fe89-4165-1d92-59d362adcff8', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'export', 'bh_channels_impact', 'module', 90, 0),
('e5ac08e8-9487-2865-bcdb-599a7652a4a9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('e60ab470-4551-7a0a-a8d8-599a765073fc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('e645a76a-1a26-c36c-d1ea-599a760b0881', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('e68cf622-355e-4efb-7f52-59c4ad34cbb3', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'access', 'bh_region', 'module', 89, 0),
('e68cfbf2-7605-7520-20d7-59c24baadffe', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'view', 'bh_lead_adress', 'module', 90, 1),
('e69104a6-b8d9-d7ce-4632-59bb6eed5300', '2017-09-15 06:10:24', '2017-09-15 06:10:24', '1', '1', 'massupdate', 'bh_Scripts_leadership_recommend', 'module', 90, 0),
('e6ed7044-b4b8-5b46-0472-599a76e601fe', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Notes', 'module', 90, 0),
('e77a92b3-cf00-629e-3929-599a76d9b656', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('e85b9b43-cacf-69f6-9b18-599a76376cad', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('e8cb02dc-809c-88a7-4db1-59b7cb111997', '2017-09-12 11:55:15', '2017-09-12 11:55:15', '1', '1', 'export', 'bh_Scripts_employee_comment', 'module', 90, 0),
('e8cf0cfc-ea67-47d8-7cdc-599a768ffa34', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Prospects', 'module', 90, 0),
('e8f8ccc5-87ff-9a45-f9c4-599a76e061ba', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('e91ffcae-3344-7fbf-9ae1-599a767950ac', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Notes', 'module', 90, 0),
('e933b11c-955a-13ab-c435-599a7667cd69', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('e9d32dd6-131f-e29d-5ccf-59d3626ad573', '2017-10-03 10:12:41', '2017-10-03 10:12:41', '1', '1', 'massupdate', 'bh_channels_impact', 'module', 90, 0),
('ea2a2d43-e7dd-01a6-ceb5-599a760328d9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('eacc9db3-842c-ae5d-6757-599a767c8813', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('eb14abbf-71f8-e1bc-6343-59c24bcfc36e', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'list', 'bh_lead_adress', 'module', 90, 1),
('eb52824b-4df9-2bb6-b1d3-599a760786ed', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('eba84c44-9760-da85-6634-599a763a2a26', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('ebcbc3c3-13b2-dfe3-063e-59bf84982a5d', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'view', 'bh_marketing_company', 'module', 90, 1),
('ebe33cce-1e66-60de-331e-599a76cbde82', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('ecd9a7c0-f660-0395-52c0-599a763925f6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('edc387db-0902-5f17-019f-599a7687ef24', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('ee57d7f3-b72a-3ac6-2514-599a76d25780', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('ef5f455f-73c2-76fd-b252-59c24b11dc83', '2017-09-20 11:05:22', '2017-09-20 11:07:44', '1', '1', 'edit', 'bh_lead_adress', 'module', 90, 1),
('efc7bba0-b740-bf9b-467c-599a768c6ac4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('f01664e3-fcb6-d4e0-c6e7-59bf8451f0a6', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'list', 'bh_marketing_company', 'module', 90, 1),
('f096de93-659a-d860-17ec-599a763703d9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'FP_events', 'module', 89, 0),
('f145e9a6-b454-eb8b-5316-599a763a2747', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('f19d0637-8caa-0ba3-2bf5-59b7dc16bca8', '2017-09-12 13:09:46', '2017-09-12 13:09:46', '1', '1', 'access', 'bh_providers', 'module', 89, 0),
('f1e68ed9-ad71-8a88-fc05-599a762c7258', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('f26e0c58-3bf1-59ac-c883-59bbc1a14bc6', '2017-09-15 12:01:36', '2017-09-15 12:01:36', '1', '1', 'delete', 'bh_case_status', 'module', 90, 0),
('f27743a6-b199-7da2-1e69-599a76f61a03', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('f278c9d5-b5df-b9f4-adda-59bfc05642ac', '2017-09-18 12:49:50', '2017-09-18 13:05:59', '1', '1', 'export', 'bh_marketing_directorate', 'module', 90, 1),
('f35bbe29-f0cb-621b-1ce2-59b9110bee4e', '2017-09-13 11:06:30', '2017-09-13 11:06:30', '1', '1', 'access', 'bh_org_trade_points', 'module', 89, 0),
('f384e471-9f75-968a-67d4-599a769624ce', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'FP_events', 'module', 90, 0),
('f393ac6e-7af0-f082-b418-59b7dbb8143b', '2017-09-12 13:04:43', '2017-09-13 11:14:18', '1', '1', 'access', 'bh_organizations', 'module', 89, 1),
('f3a9e3ff-9c8b-26a2-e697-59c4adc7854e', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'view', 'bh_region', 'module', 90, 0),
('f4200695-203c-a881-f5d6-59c9f37ef76d', '2017-09-26 06:28:23', '2017-09-26 06:28:23', '1', '1', 'view', 'bh_communicators', 'module', 90, 0),
('f56706de-3b38-860a-02e6-59b91f457090', '2017-09-13 12:07:05', '2017-09-13 12:07:05', '1', '1', 'access', 'bh_org', 'module', 89, 0),
('f7f40297-9d1e-3555-d59a-59c4ad8c2f19', '2017-09-22 06:29:04', '2017-09-22 06:29:04', '1', '1', 'delete', 'bh_region', 'module', 90, 0),
('f8220776-315c-f6e6-f2d0-59b7b0f83a47', '2017-09-12 09:59:00', '2017-09-12 09:59:00', '1', '1', 'list', 'bh_scr_status_history', 'module', 90, 0),
('fbc50f51-4f33-2c97-2945-59bf8418c58b', '2017-09-18 08:31:39', '2017-09-18 08:41:05', '1', '1', 'massupdate', 'bh_marketing_company', 'module', 90, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('d191d6fe-6762-5011-a734-599bca2b2a07', '2017-08-22 06:06:59', '2017-08-22 06:24:27', '1', '1', 'Роль1', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('10630db7-593e-d49c-a5db-599bcae46f5c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'af329dd7-e59b-9365-7bbe-599a76174090', 0, '2017-08-22 06:10:20', 0),
('10e00e33-06d5-4a04-36ae-599bcad4662d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'bc234c98-1558-dc7c-e597-599a76de017b', 0, '2017-08-22 06:10:20', 0),
('111e89d4-b91f-2162-3863-599bcae07898', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'acc191a4-f1e0-7850-138d-599a767f1037', 0, '2017-08-22 06:10:20', 0),
('115d0303-84f2-a097-610c-599bca4d0bcb', 'd191d6fe-6762-5011-a734-599bca2b2a07', '59b1c18d-7bee-7c94-6af1-599a760e9928', 0, '2017-08-22 06:10:20', 0),
('11da090c-5c3e-66d5-a76b-599bca377660', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6cbd0680-2a22-2bab-a74e-599a76767d0b', 0, '2017-08-22 06:10:20', 0),
('12188c8e-2f06-bac8-bd9b-599bcab12faf', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6ac90976-42a4-435e-752c-599a7656c0aa', 0, '2017-08-22 06:10:20', 0),
('1257014c-c1d4-5165-b503-599bca6490ca', 'd191d6fe-6762-5011-a734-599bca2b2a07', '70e39ffe-c96e-6dad-7298-599a7601d285', 0, '2017-08-22 06:10:20', 0),
('12d40344-9f4b-818b-f201-599bca2ad635', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6eef9a96-6e30-b5ce-24ac-599a76d07812', 0, '2017-08-22 06:10:20', 0),
('1312891c-01cd-2a0b-889f-599bca5e6838', 'd191d6fe-6762-5011-a734-599bca2b2a07', '68d4f693-e8d6-3ccd-2415-599a76882932', 0, '2017-08-22 06:10:20', 0),
('135109be-54e4-bb57-2284-599bca6b8546', 'd191d6fe-6762-5011-a734-599bca2b2a07', '73162ac0-f612-90b7-1b4a-599a76389796', 0, '2017-08-22 06:10:20', 0),
('13ce09ca-321a-711b-eb09-599bcac2fc30', 'd191d6fe-6762-5011-a734-599bca2b2a07', '66e0f2ca-4ac4-0589-717e-599a76764a33', 0, '2017-08-22 06:10:20', 0),
('140c94c6-ff19-6516-6a66-599bca89aa61', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6caed5f7-b443-ad1f-9c91-599a7609eb1d', 0, '2017-08-22 06:10:20', 0),
('144b10c4-b529-87f6-6d10-599bcaa9208a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '77ea0eee-f34d-f833-e87b-599a760327b1', 0, '2017-08-22 06:10:20', 0),
('14c81c25-ff7a-c0fb-9d70-599bca31ff21', 'd191d6fe-6762-5011-a734-599bca2b2a07', '753a764b-cfc3-c022-ac3a-599a7693e625', 0, '2017-08-22 06:10:20', 0),
('150696ba-a02c-0c9a-8795-599bca31e0b1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7d491bd3-c5cd-d032-d2fd-599a76127842', 0, '2017-08-22 06:10:20', 0),
('15839c05-5600-5489-f921-599bcac44cc8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7a9998c1-05f4-3a02-2e90-599a7683146d', 0, '2017-08-22 06:10:20', 0),
('15c21252-8a50-c69a-4b31-599bca9d6fff', 'd191d6fe-6762-5011-a734-599bca2b2a07', '724c734f-a06b-fb3d-471a-599a76a3608d', 0, '2017-08-22 06:10:20', 0),
('163f1b46-2093-da2f-fca4-599bca60c78e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '80372cb0-9292-5b87-b97a-599a76fdf7c0', 0, '2017-08-22 06:10:20', 0),
('167d9c54-4b46-de14-c420-599bcaedab9c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6f9ce98d-b52b-4d93-a5a8-599a7664bdc7', 0, '2017-08-22 06:10:20', 0),
('16bc1e6c-52c8-6d41-8ed5-599bcaddba4c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5afa76b2-3c4c-3168-dccd-599a76483f9a', 0, '2017-08-22 06:10:20', 0),
('17358b17-2777-e590-965b-599bca4c7e0f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'edit', 0, '2017-08-22 06:10:20', 0),
('17391379-a411-907e-ad2d-599bcacf973b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6fbb30a7-91bc-4692-2a27-599a76b28f0e', 0, '2017-08-22 06:10:20', 0),
('17779a11-2056-d590-a6ce-599bca859c0e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '69622ce1-87e7-4ddc-d1ba-599a7608c0e6', 0, '2017-08-22 06:10:20', 0),
('17b6131e-48cd-3c86-74fa-599bcade59a6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '74dbdba9-f729-4f09-60dd-599a764bd49f', 0, '2017-08-22 06:10:20', 0),
('17f49209-27ea-1853-e334-599bca903c74', 'd191d6fe-6762-5011-a734-599bca2b2a07', '726ac32d-7a1c-9e10-e3ef-599a760817d6', 0, '2017-08-22 06:10:20', 0),
('1871aeaf-e329-ef13-8f32-599bca6805b3', 'd191d6fe-6762-5011-a734-599bca2b2a07', '66f11e65-7204-49bd-8137-599a76465765', 0, '2017-08-22 06:10:20', 0),
('18eeac92-3393-1934-1edf-599bca52c2d0', 'd191d6fe-6762-5011-a734-599bca2b2a07', '778b565a-8185-0161-61f7-599a762edd50', 0, '2017-08-22 06:10:20', 0),
('192d2e0a-be49-4bab-a9c4-599bca16beff', 'd191d6fe-6762-5011-a734-599bca2b2a07', '64419b3a-a27b-d036-b131-599a7694107b', 0, '2017-08-22 06:10:20', 0),
('196ba16b-3bf8-ced1-c792-599bcaa7cbcf', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8a5bb4b7-4f0a-e653-d3ad-599a762fce29', 0, '2017-08-22 06:10:20', 0),
('19e8af4d-358e-6353-1569-599bcac35c87', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9558541b-6614-fe5a-6b49-599a76d8bad5', 0, '2017-08-22 06:10:20', 0),
('1a272001-9a10-7795-6807-599bca3f4db5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '92a8dbae-2582-ce8c-d72c-599a76a61e08', 0, '2017-08-22 06:10:20', 0),
('1a65aad5-b28c-efa7-4344-599bca2e8d2f', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9a78fb8d-00e6-4eeb-b735-599a7611a612', 0, '2017-08-22 06:10:20', 0),
('24684b76-0458-7712-fc09-599bcad1661b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '97c96a0a-1b30-448b-496e-599a7614e760', 0, '2017-08-22 06:10:20', 0),
('24a6cc59-f61b-ab50-85b1-599bcad520f8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8ff947f9-6219-4d53-0078-599a76a84845', 0, '2017-08-22 06:10:20', 0),
('2523dc01-e140-70a6-1eb8-599bca695c3e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9d28731e-2e06-99f0-172d-599a762f0f74', 0, '2017-08-22 06:10:20', 0),
('25625192-7850-05f2-e7f7-599bcaf9c6a0', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8d884b9c-b0ed-1a91-dc57-599a76aafc65', 0, '2017-08-22 06:10:20', 0),
('25df5fb1-88d4-001e-007f-599bca7f42eb', 'd191d6fe-6762-5011-a734-599bca2b2a07', '38590393-3334-451d-d787-599a76bd97ac', 0, '2017-08-22 06:10:20', 0),
('261dd1a8-e568-3652-ce65-599bca38d8eb', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c1130119-811d-e0f1-a188-599a76014f0a', 0, '2017-08-22 06:10:20', 0),
('269ad8b1-760f-0f18-aab8-599bca5effd8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9dea0a8d-ea2e-3fbd-6254-599a76876955', 0, '2017-08-22 06:10:20', 0),
('26d95a1f-0dc6-f743-4872-599bca369f44', 'd191d6fe-6762-5011-a734-599bca2b2a07', '1037ce50-f339-d83d-571b-599a7616b8fe', 0, '2017-08-22 06:10:20', 0),
('2717daae-0748-c7ff-275a-599bcaffcc10', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e0530a6f-730b-8f47-fd4b-599a76def419', 0, '2017-08-22 06:10:20', 0),
('2794dd40-7601-7d96-5390-599bcae5faca', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7eaa0420-9892-8398-a91f-599a76f91846', 0, '2017-08-22 06:10:20', 0),
('27d35ef8-da30-2d73-78e5-599bca5a24c1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '122bcf2b-0263-366d-f276-599a7608c60b', 0, '2017-08-22 06:10:20', 0),
('2811d377-1145-ae98-7138-599bcad60e5d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5f6a0648-1c07-9ffd-5f0b-599a76cf4e06', 0, '2017-08-22 06:10:20', 0),
('288edcff-e61b-f3ae-8c86-599bca5b2c8e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '544f15fd-ec58-4ad4-2bcd-599a76eeafc5', 89, '2017-08-22 06:10:20', 0),
('28cd5731-b9bb-88c3-921c-599bcaf01a1e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '78b0226f-1988-8d39-8258-599a762fb01c', 0, '2017-08-22 06:10:20', 0),
('294a6119-239c-f4ae-052c-599bca6954c6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '767d91ff-10e3-6b2c-c4c1-599a76a0e0cc', 0, '2017-08-22 06:10:20', 0),
('2988e843-e8be-233b-3204-599bca562202', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7cd6b298-cfcf-15df-f946-599a76430512', 0, '2017-08-22 06:10:20', 0),
('29c76bfd-8117-98e5-a921-599bcab7a961', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7ae2b49f-4c79-b8e3-8b05-599a7674d118', 0, '2017-08-22 06:10:20', 0),
('386d931b-8ff2-71a2-34a5-599bca1c5485', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7489916a-ba1e-733d-0134-599a76ca72dc', 0, '2017-08-22 06:10:20', 0),
('38ea92e8-2c72-8f53-9578-599bca74e439', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7e8c3cf8-dfc3-d3dc-7f0f-599a7684bcd7', 0, '2017-08-22 06:10:20', 0),
('396795cb-4572-ec5e-d6c8-599bca24b6c3', 'd191d6fe-6762-5011-a734-599bca2b2a07', '719b8ba0-2df6-16ef-16ba-599a765391b9', 80, '2017-08-22 06:10:20', 0),
('39a281d6-e9ac-c0a7-8438-599bca2b8b73', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'export', 0, '2017-08-22 06:10:20', 0),
('39a61590-1046-aed5-e34e-599bcaca646e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '48010d07-4b18-cc34-e95e-599a76f93915', 0, '2017-08-22 06:10:20', 0),
('3a2319ca-ac6f-2a25-22f4-599bca3d2f20', 'd191d6fe-6762-5011-a734-599bca2b2a07', '537ab49e-2a3d-6b41-448c-599a769d1cfa', 0, '2017-08-22 06:10:20', 0),
('3a61ac3e-9c20-e8d5-e682-599bca980a02', 'd191d6fe-6762-5011-a734-599bca2b2a07', '508ca8ad-9d36-7262-8350-599a760ddfd6', 0, '2017-08-22 06:10:20', 0),
('3adea14a-9671-da62-33bf-599bcab24afb', 'd191d6fe-6762-5011-a734-599bca2b2a07', '58d9cca3-fadd-cdc1-21bc-599a762ee621', 0, '2017-08-22 06:10:20', 0),
('3b5812cf-969f-9736-8400-599bcacd24e1', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'import', 0, '2017-08-22 06:10:20', 0),
('3b96943b-db60-5abc-ae51-599bca30c4bd', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'list', 0, '2017-08-22 06:10:20', 0),
('3c139216-de78-5951-75df-599bcad12fae', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'massupdate', 0, '2017-08-22 06:10:20', 0),
('3c909b3a-b474-74bc-e165-599bca1547e3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'view', 0, '2017-08-22 06:10:20', 0),
('3ccf1b4e-455e-93ce-b7c8-599bca8565ee', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a6f91258-a707-3386-a35b-599a76387104', 0, '2017-08-22 06:10:20', 0),
('3d0d91b0-1f32-0521-827a-599bcaac4e9f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b07eb402-78fb-d89b-d86f-599a761894a5', 0, '2017-08-22 06:10:20', 0),
('3d8a9ca7-2cd7-cd9b-7be7-599bcafe03e2', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ae4c3f6d-3f23-ced3-f8ea-599a76fb3486', 0, '2017-08-22 06:10:20', 0),
('3ffb91a0-01eb-b36a-83b3-599bca3f52e7', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b52240b9-9ccd-7844-dee3-599a76a404ab', 0, '2017-08-22 06:10:20', 0),
('41b12a4d-2f5c-b17c-ac9f-599bca5706be', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b2efc543-62af-1b43-e2be-599a7693aa3e', 0, '2017-08-22 06:10:20', 0),
('422e2d78-b309-e960-5648-599bcaab864f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'abdb223e-757a-51fa-4657-599a76af5158', 0, '2017-08-22 06:10:20', 0),
('426cadd3-b671-f3ba-ce91-599bca4bae75', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b7935dc8-e6ed-3d7a-4267-599a7622258a', 0, '2017-08-22 06:10:20', 0),
('42e9a3ed-9a26-3542-498d-599bca24a2f7', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a9a89432-d3a4-c2c6-f0b9-599a761759a9', 0, '2017-08-22 06:10:20', 0),
('432824da-6ae7-2acf-9a32-599bca89cb85', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4e366ce6-dec3-1030-c860-599a76028b05', 0, '2017-08-22 06:10:20', 0),
('4366abb8-80b8-9cb1-d631-599bcae57aac', 'd191d6fe-6762-5011-a734-599bca2b2a07', '58778a33-c7f3-c7a8-98de-599a76ca8bd8', 0, '2017-08-22 06:10:20', 0),
('43e3b891-a59d-18ec-0bbb-599bcac27750', 'd191d6fe-6762-5011-a734-599bca2b2a07', '55c7f645-925c-e071-f180-599a76061941', 0, '2017-08-22 06:10:20', 0),
('44223457-e6fc-36df-89f7-599bca47db94', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5d5995ea-c68d-1dfd-48cd-599a76159284', 0, '2017-08-22 06:10:20', 0),
('4460b806-0edf-8d03-8a76-599bcac6627d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5ae89963-cb8c-22ed-920e-599a76ababd1', 0, '2017-08-22 06:10:20', 0),
('44ddb6bf-055f-18e9-1618-599bcac26d65', 'd191d6fe-6762-5011-a734-599bca2b2a07', '53957182-401f-fcfa-927c-599a76dfc67a', 0, '2017-08-22 06:10:20', 0),
('455ab45a-63b8-a84e-6edf-599bcab251b8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5fcaafff-63cf-8860-6a1b-599a767e7948', 0, '2017-08-22 06:10:20', 0),
('469337bd-0071-7acb-8393-599bca77d833', 'd191d6fe-6762-5011-a734-599bca2b2a07', '50e5e572-17cf-78e3-7a7e-599a768612cd', 0, '2017-08-22 06:10:20', 0),
('47525e8e-0c5e-e5df-cfe4-599bcad3f13a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '562a3575-dcc4-9603-76ee-599a7654e4c4', 0, '2017-08-22 06:10:20', 0),
('47cf5e7d-fa8d-a0c9-a583-599bca7cad10', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4ddd1350-eba8-5a56-0b13-599a76936d76', 0, '2017-08-22 06:10:20', 0),
('480dd270-7ca6-c4bd-4837-599bcacf4204', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5b895950-f652-3fb7-d9a4-599a76847777', 0, '2017-08-22 06:10:20', 0),
('488ad278-b5c4-a128-398c-599bcaa9d558', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4b2d90ae-1311-c1d5-8c0d-599a76fa2293', 0, '2017-08-22 06:10:20', 0),
('48c955be-2f9e-bfd0-f510-599bca466f76', 'd191d6fe-6762-5011-a734-599bca2b2a07', '43565ee4-fb48-f32c-6a5d-599a76387c8f', 0, '2017-08-22 06:10:20', 0),
('4907de53-e166-933b-fe69-599bcad6ee18', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4ecffe8d-2969-a48e-6b4d-599a76aee76b', 0, '2017-08-22 06:10:20', 0),
('4984d1e5-54af-6e8e-c88d-599bcae02d4b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4be1fa06-bc0c-05fa-a61c-599a760880a1', 0, '2017-08-22 06:10:20', 0),
('4a01d8d5-f186-a803-fa5d-599bca0f096a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '53f09772-495d-3b6b-ca7a-599a7634553b', 0, '2017-08-22 06:10:20', 0),
('4a405b4f-033f-d731-bc31-599bca257f41', 'd191d6fe-6762-5011-a734-599bca2b2a07', '51410ad4-f775-89a5-85d1-599a768aae96', 0, '2017-08-22 06:10:20', 0),
('4a7edc05-6150-30c7-be72-599bcaf1143b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '49326f2b-a6c0-4d45-ab0c-599a762d1c07', 0, '2017-08-22 06:10:20', 0),
('4afbd66e-0ca5-0b21-55d4-599bca9c751e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '56a014a9-5861-99d9-9868-599a76e9496d', 0, '2017-08-22 06:10:20', 0),
('4b3a531e-7d32-417e-4a51-599bca42a93e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4682da80-3fbc-c882-1978-599a76910426', 0, '2017-08-22 06:10:20', 0),
('4bb7605c-18b2-696f-7e6f-599bca75d96c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '852e910a-c2b1-4e10-1592-599a76f06334', 0, '2017-08-22 06:10:20', 0),
('4bf5e60a-3afb-e302-cb2f-599bca682c90', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8df8b3ed-d884-4c72-1388-599a76d027c7', 0, '2017-08-22 06:10:20', 0),
('4c346ea5-a06d-e051-23e3-599bca013a1f', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8bc62cd3-8ae6-2d6a-2075-599a760b5ced', 0, '2017-08-22 06:10:20', 0),
('4cb16b4d-88ef-ea04-6db6-599bcacf7897', 'd191d6fe-6762-5011-a734-599bca2b2a07', '921f4a16-e988-d14f-e6d2-599a765f6048', 0, '2017-08-22 06:10:20', 0),
('4cefe111-f6ab-4587-6d93-599bca1b591a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '902b3e49-651b-8544-bdb2-599a76d6c38d', 0, '2017-08-22 06:10:20', 0),
('4d2e60d6-f1da-8cbf-eb34-599bca38bdd1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '89d22c86-ff26-8f3d-0bf2-599a764ddedb', 0, '2017-08-22 06:10:20', 0),
('4dab6d05-1dca-f84f-06fc-599bcaeb7552', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9451c3b2-f67b-1dd3-6b3c-599a76522f3a', 0, '2017-08-22 06:10:20', 0),
('4e2865ad-c786-96bb-b724-599bca49959b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '87de1377-f874-3bd1-934c-599a7678407c', 0, '2017-08-22 06:10:20', 0),
('4e66e1a1-9b3c-d999-535d-599bca42008c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '443c9b5a-8389-2e0c-e1af-599a76552385', 0, '2017-08-22 06:10:20', 0),
('4ea5667c-215d-8419-9671-599bca8b4ece', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4d06ba48-56bf-61e8-70a7-599a76232212', 0, '2017-08-22 06:10:20', 0),
('4ee059ec-4e27-c8d9-2d34-599bcacdbe06', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c9da3bb1-8fc6-07ef-9181-599a76af6caa', 0, '2017-08-22 06:10:20', 0),
('4f2267c8-5e82-5d64-027b-599bca714d39', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4ad439a9-6960-8427-0973-599a76564278', 0, '2017-08-22 06:10:20', 0),
('4f60e8cc-3ed1-0fd2-66e7-599bcaeb6b7c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '512d4333-a968-5388-8fee-599a76059035', 0, '2017-08-22 06:10:20', 0),
('4fddfbf8-5181-6898-6b12-599bca91bedc', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4f394f86-bf59-ff75-cec7-599a76b6ed28', 0, '2017-08-22 06:10:20', 0),
('501c7029-650c-d863-0fa1-599bcaefa963', 'd191d6fe-6762-5011-a734-599bca2b2a07', '48a1a6c1-7b10-befa-bfcd-599a76b891a4', 0, '2017-08-22 06:10:20', 0),
('505afba8-8718-0467-b1c1-599bca07a8bc', 'd191d6fe-6762-5011-a734-599bca2b2a07', '535fd60d-0662-1a02-a4b7-599a761a2245', 0, '2017-08-22 06:10:20', 0),
('50d7fe9b-a53c-9e25-5161-599bca89c9cc', 'd191d6fe-6762-5011-a734-599bca2b2a07', '46adae36-98bd-3e32-945c-599a76a78d1a', 0, '2017-08-22 06:10:20', 0),
('51167608-e154-b898-861f-599bca3d60db', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4bc1cad1-4ca1-c909-26d9-599a769a6015', 0, '2017-08-22 06:10:20', 0),
('519375c0-25be-764c-4c8a-599bcad14057', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5602e7da-b0bf-44e1-b7e1-599a761bca42', 0, '2017-08-22 06:10:20', 0),
('51d1f958-f534-9fd7-8b96-599bca332094', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5391eebf-ab4e-4ae4-a7e4-599a761273a8', 0, '2017-08-22 06:10:20', 0),
('524ef908-2412-f9f9-77ec-599bca315fa8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5ae4f7ba-7208-82e3-977c-599a76f8a3c4', 0, '2017-08-22 06:10:20', 0),
('528d7736-ac78-4708-f2c0-599bca1f2377', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5873fb3c-f309-8326-4d35-599a76ab2a50', 0, '2017-08-22 06:10:20', 0),
('52cbfab0-673f-f370-4ee8-599bca1cd05a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5120d34b-0d03-06b0-bf54-599a76d0e08f', 0, '2017-08-22 06:10:20', 0),
('5348fe9a-df7f-c604-2e6d-599bca21b935', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5d560ecd-c37a-2d65-1c25-599a76bf2666', 0, '2017-08-22 06:10:20', 0),
('538776be-4080-f160-dec0-599bca825b60', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4eafd9da-47c5-5ffd-ce34-599a76186675', 0, '2017-08-22 06:10:20', 0),
('54048c40-7383-1fa8-ce1c-599bcacc30c2', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2f5bcb7c-01ed-2f9a-9377-599a767d2a06', 0, '2017-08-22 06:10:20', 0),
('5443019f-2fcf-5b03-269f-599bcab55a81', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3a96e081-44b5-a31c-e2e0-599a76303946', 0, '2017-08-22 06:10:20', 0),
('54818b81-fe05-13fb-9881-599bca2cf4fe', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3825e8c1-3bb3-8840-920f-599a761b0d3d', 0, '2017-08-22 06:10:20', 0),
('54fe8bca-71bf-dcea-8a73-599bca5366de', 'd191d6fe-6762-5011-a734-599bca2b2a07', '40347a97-9172-8323-67e9-599a762c29bc', 0, '2017-08-22 06:10:20', 0),
('5b5400ae-6e58-e7db-7960-599bca34744b', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd4d6e558-1c04-98d3-f356-599a766fe517', 0, '2017-08-22 06:10:20', 0),
('5c902577-784b-865c-763c-599bca37542d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3d84f2fd-271a-b8e4-3f1a-599a7698bcaa', 0, '2017-08-22 06:10:20', 0),
('5d0d279e-0ead-f36d-c951-599bca1712a2', 'd191d6fe-6762-5011-a734-599bca2b2a07', '35765415-a9b1-3edd-2fbe-599a76463ef9', 0, '2017-08-22 06:10:20', 0),
('5e039b61-e034-f9ba-4181-599bca31c27d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd227526a-468c-be95-e205-599a76b7370f', 0, '2017-08-22 06:10:20', 0),
('5e8092da-9698-ac78-2129-599bca008685', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'da35f08a-255d-9edf-54b3-599a764f89ad', 0, '2017-08-22 06:10:20', 0),
('61301c6d-4439-2d5e-fadf-599bcac6ce78', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd747e49c-d4e9-8976-40e5-599a76fc9ab6', 0, '2017-08-22 06:10:20', 0),
('61eba8ad-171a-46f8-3397-599bca763e24', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cf77caea-db36-7986-2faa-599a7614b74d', 0, '2017-08-22 06:10:20', 0),
('61ef3a65-0d57-d27b-76b7-599bcaf1a17e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '42a58e42-1ea1-22b4-78ac-599a762944f9', 0, '2017-08-22 06:10:20', 0),
('622a217b-cdaf-6675-18ff-599bca46c676', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'dce5732d-c6d0-4c2e-1ed2-599a769ee793', 0, '2017-08-22 06:10:20', 0),
('626c37c4-c522-36ba-cc77-599bcaa915a3', 'd191d6fe-6762-5011-a734-599bca2b2a07', '32884659-0e0f-7967-616d-599a761fed2a', 0, '2017-08-22 06:10:20', 0),
('62aabc04-23ff-2286-3466-599bca050c6f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'be3cc24c-9c96-8cea-f704-599a76951e8e', 0, '2017-08-22 06:10:20', 0),
('62e93d54-17dd-1d0a-dcac-599bcaf2de7b', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cca486d5-9d13-6b76-5978-599a764ac8bc', 0, '2017-08-22 06:10:20', 0),
('6366324d-a668-0c34-5280-599bcadae597', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ca3371a6-68a8-76a2-cc5b-599a76b779c2', 0, '2017-08-22 06:10:20', 0),
('63a4bdcd-ac86-d1b6-6e15-599bcab22c48', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd1481ede-976d-a030-3166-599a763e26bd', 0, '2017-08-22 06:10:20', 0),
('63e333be-b88c-8f0f-8b0d-599bca89cfed', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cf15813c-01d7-b922-a192-599a7625b808', 0, '2017-08-22 06:10:20', 0),
('64603d71-4521-db25-88ca-599bca436ea0', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c35d5765-c6dc-f0a0-d14d-599a76148de5', 0, '2017-08-22 06:10:20', 0),
('649ebdbf-855a-3e90-9497-599bca4456f2', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd3b91eab-3097-b90f-4a09-599a7659f1d6', 0, '2017-08-22 06:10:20', 0),
('64d9a9bf-7ff3-5244-1b91-599bca4f8882', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ccc84595-3cd9-e0da-754c-599a767aa944', 0, '2017-08-22 06:10:20', 0),
('651bcafc-0714-5836-514b-599bca250e98', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c12ad41a-e614-1127-435d-599a76ba594d', 0, '2017-08-22 06:10:20', 0),
('655a47b5-ba59-c91d-a9fd-599bca304c79', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'f1e68ed9-ad71-8a88-fc05-599a762c7258', 0, '2017-08-22 06:10:20', 0),
('65d74e66-105d-ef77-2adc-599bcafe142c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '748208e2-fccf-7e77-e40d-599a76e98cef', 0, '2017-08-22 06:10:20', 0),
('6615c025-6428-a05f-7081-599bcad5dbae', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4d720d74-dd00-821b-435f-599a762f9829', 0, '2017-08-22 06:10:20', 0),
('668f345e-4e32-1a7d-88f1-599bca3ea8d0', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9aae0522-a3ad-8a7f-1964-599a7640014e', 0, '2017-08-22 06:10:20', 0),
('6692c6ed-4fc4-deeb-0b00-599bcaed6506', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'bad30dd5-a449-14ed-a21e-599a7610bccc', 0, '2017-08-22 06:10:20', 0),
('66d14a40-1d87-23b7-3769-599bca58c69f', 'd191d6fe-6762-5011-a734-599bca2b2a07', '97ab00df-fd27-ce69-1c49-599a76ed439b', 0, '2017-08-22 06:10:20', 0),
('670fc986-9da7-54fc-b678-599bca848897', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2a4900f1-0d23-87af-78bf-599a76b543ea', 0, '2017-08-22 06:10:20', 0),
('674abf64-782e-1900-1f24-599bca7a2500', 'd191d6fe-6762-5011-a734-599bca2b2a07', '12b38830-fddb-40db-f1f9-599a76d03f09', 0, '2017-08-22 06:10:20', 0),
('67893e27-4429-ba25-1676-599bca3cd3bd', 'd191d6fe-6762-5011-a734-599bca2b2a07', '108103fd-e2a2-8020-382e-599a76faa134', 0, '2017-08-22 06:10:20', 0),
('67c7b973-31b6-968c-84ae-599bca689ea5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '16da136a-5dfc-c35d-c9a0-599a76aba991', 0, '2017-08-22 06:10:20', 0),
('6844bb9b-54ec-915e-80e9-599bca1de827', 'd191d6fe-6762-5011-a734-599bca2b2a07', '14e61b9f-4b5b-5453-4fdd-599a762dd32b', 0, '2017-08-22 06:10:20', 0),
('6883389f-1814-6df2-cc3b-599bca7ac0eb', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e8cf0cfc-ea67-47d8-7cdc-599a768ffa34', 0, '2017-08-22 06:10:20', 0),
('69003994-1efd-97d8-d04b-599bcacd0e18', 'd191d6fe-6762-5011-a734-599bca2b2a07', '190ca66f-f678-1e58-ec89-599a764cee9d', 0, '2017-08-22 06:10:20', 0),
('693ebd91-f031-6f79-9bb5-599bca8f2d23', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c5a70b73-7864-7e3e-5b1f-599a76a5ac40', 0, '2017-08-22 06:10:20', 0),
('69bbb5c1-3550-0873-dbf4-599bca42b454', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c59aa46f-3cdc-2714-9510-599a761ac686', 0, '2017-08-22 06:10:20', 0),
('69fa38c3-fbc2-29dd-5556-599bcabb794e', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cf9d46df-5f1d-2e10-e40b-599a76aa9488', 0, '2017-08-22 06:10:20', 0),
('6a38c4e2-1763-4b18-fd86-599bcab4be8f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cd2c343e-c38d-7d46-7e52-599a762e8286', 0, '2017-08-22 06:10:20', 0),
('6ab5c445-b954-75d4-6ad1-599bcae8d128', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd47f572e-5a92-4139-d72d-599a76735be0', 0, '2017-08-22 06:10:20', 0),
('6af44afe-c67d-92da-b1c2-599bcab922a9', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd20e42e7-1bb2-2022-4478-599a76fa6fea', 0, '2017-08-22 06:10:20', 0),
('6b71495c-bb50-b872-aacf-599bca77bd54', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cabb3007-62ee-106a-02e5-599a76eadb86', 0, '2017-08-22 06:10:20', 0),
('6d68dc85-ff0a-df34-8155-599bcae4c7f7', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ddfc05ee-2d52-2b5d-b7f8-599a761895d2', 0, '2017-08-22 06:10:20', 0),
('6de5e3a5-1d53-a088-c4bf-599bcaa97247', 'd191d6fe-6762-5011-a734-599bca2b2a07', '72100511-3c2b-03bf-0525-599a76c447f0', 0, '2017-08-22 06:10:20', 0),
('6e20c695-ce01-ab3f-3085-599bcac5708f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd6f06ba9-d94b-c5bc-adda-599a764f4754', 0, '2017-08-22 06:10:20', 0),
('6e246341-5958-1b1e-5916-599bca84f815', 'd191d6fe-6762-5011-a734-599bca2b2a07', '767693d6-01a4-cb7f-eda8-599a76a8346c', 0, '2017-08-22 06:10:20', 0),
('6e5f54d5-a9f5-bf55-047d-599bcae2934a', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c84a24bb-fcf2-70b6-a1c9-599a766eedc1', 0, '2017-08-22 06:10:20', 0),
('6e62e383-c5bb-e443-f3dc-599bcad4862c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '81f041fd-6492-c233-c2ae-599a7644021e', 0, '2017-08-22 06:10:20', 0),
('6e9dd568-a219-9764-d94c-599bcac7c0b6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '74c2cfb4-d4df-557b-14b0-599a7687badc', 0, '2017-08-22 06:10:20', 0),
('6edfe8b2-22c1-af00-b924-599bca6c01c7', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7f40b80f-027e-eb1b-f246-599a762217d7', 0, '2017-08-22 06:10:20', 0),
('6f1adb70-e0a5-19fa-c314-599bcabcea3d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7ec578eb-1401-bab8-4247-599a768b2dd8', 0, '2017-08-22 06:10:20', 0),
('6f595cfc-8f51-ab03-9cae-599bca4bbf9a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7c546860-d735-3847-bba2-599a76dbfa58', 0, '2017-08-22 06:10:20', 0),
('6f5ce2c3-e872-7435-36b1-599bcae7eb29', 'd191d6fe-6762-5011-a734-599bca2b2a07', '878dd400-8684-a569-c1bc-599a76789c54', 0, '2017-08-22 06:10:20', 0),
('6f97d74a-2854-6d38-b1e1-599bca92de6b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8369013d-f4fe-969b-94cd-599a76316c39', 0, '2017-08-22 06:10:20', 0),
('6f9b6ea6-cd2d-5777-3ec5-599bcade9ac1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '84de4479-13db-4468-a19e-599a7646b98b', 0, '2017-08-22 06:10:20', 0),
('6fd9e699-033d-7a51-77d9-599bcabfd123', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7c91189e-d124-f5d9-7494-599a761089d5', 0, '2017-08-22 06:10:20', 0),
('7014dbb8-7899-25c7-b214-599bca180a33', 'd191d6fe-6762-5011-a734-599bca2b2a07', '81367f9d-74ce-b3ac-b663-599a76b363d7', 0, '2017-08-22 06:10:20', 0),
('70535d69-c492-39de-afb2-599bca60ba13', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7a21ce8d-4a10-c1ea-d375-599a76bf263d', 0, '2017-08-22 06:10:20', 0),
('7091d3f6-c087-03d1-0c95-599bcaf849cd', 'd191d6fe-6762-5011-a734-599bca2b2a07', '85da094b-bfaa-435a-fe8a-599a76d51309', 0, '2017-08-22 06:10:20', 0),
('710ed2f5-3459-9d9e-21b1-599bca408387', 'd191d6fe-6762-5011-a734-599bca2b2a07', '77b0db2a-f2f9-fa0b-1be8-599a76bb0c51', 0, '2017-08-22 06:10:20', 0),
('714d5117-7e07-9d48-86b9-599bcae6cbdd', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3a951426-f5d3-fe90-297e-599a7671c591', 0, '2017-08-22 06:10:20', 0),
('718bd662-31e9-d007-49c8-599bca47bd3a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '441ab32d-c53a-461b-cef3-599a769e1cac', 0, '2017-08-22 06:10:20', 0),
('71ca5ff7-6344-ed4b-c0c1-599bca8adddc', 'd191d6fe-6762-5011-a734-599bca2b2a07', '41e82abc-1c93-bd73-70df-599a7668e349', 0, '2017-08-22 06:10:20', 0),
('7247539e-1194-87d7-5db8-599bca55f051', 'd191d6fe-6762-5011-a734-599bca2b2a07', '48be407a-4f81-937a-17d3-599a760687b6', 0, '2017-08-22 06:10:20', 0),
('7285de2a-425e-856c-1d09-599bca90e4b6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '464d34cc-bab7-f459-d05a-599a762f3f44', 0, '2017-08-22 06:10:20', 0),
('75b26ae0-3350-84a3-fb40-599bca0df37a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3f77238f-e07c-4558-a396-599a76453832', 0, '2017-08-22 06:10:20', 0),
('762f6af9-ea02-5dd7-6344-599bca17b72a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4af0c8aa-088c-59aa-9f55-599a760e1d62', 0, '2017-08-22 06:10:20', 0),
('76ac6a7f-ed37-e5fd-b62e-599bcad0aa36', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3d061aeb-131c-5184-c01c-599a769a8e04', 0, '2017-08-22 06:10:20', 0),
('772976d6-952d-97d1-dd88-599bca58746e', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd782d5c8-ebcc-c7d4-09a6-599a7679945d', 0, '2017-08-22 06:10:20', 0),
('77a67b43-3d0a-25d0-8ae3-599bca167f1b', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e2be0fc0-9666-57b9-2519-599a76461d41', 0, '2017-08-22 06:10:20', 0),
('77aa0d02-5535-a280-1b80-599bca539f6f', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8a7be1e5-c600-e11f-c78e-599a7654ab2a', 0, '2017-08-22 06:10:20', 0),
('77e4f622-dcd7-7b40-b0c3-599bca5e21b6', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e04cfef2-621f-cb32-bcc0-599a76b8439c', 0, '2017-08-22 06:10:20', 0),
('782701a9-3bc5-8eb2-c6ca-599bcab081ad', 'd191d6fe-6762-5011-a734-599bca2b2a07', '79a32e2a-5f69-e6f3-1865-599a76af6f9f', 0, '2017-08-22 06:10:20', 0),
('7861f033-54e2-cd5b-d99b-599bca38ee6b', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e85b9b43-cacf-69f6-9b18-599a76376cad', 0, '2017-08-22 06:10:20', 0),
('7865892c-340a-af54-2ed8-599bca948cf5', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'f096de93-659a-d860-17ec-599a763703d9', 0, '2017-08-22 06:10:20', 0),
('78def84a-57b2-f07e-e8d4-599bca8d5d34', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e5ac08e8-9487-2865-bcdb-599a7652a4a9', 0, '2017-08-22 06:10:20', 0),
('78e28875-093d-4e98-7aee-599bca25f7a5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6b3f055e-47c2-7717-bb86-599a7627099a', 0, '2017-08-22 06:10:20', 0),
('791d70f1-d7a9-5d05-987d-599bca84b255', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'dd206ef5-64f9-ad86-8b62-599a76a3a6fa', 0, '2017-08-22 06:10:20', 0),
('79210afc-a264-ed86-fa90-599bca84fa92', 'd191d6fe-6762-5011-a734-599bca2b2a07', '442f03d6-c9f5-ca69-c139-599a766a906f', 0, '2017-08-22 06:10:20', 0),
('795f84bf-dc48-cce7-1ada-599bca3d51c1', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'bd4802f8-17bb-c95d-2f16-599a766abab0', 0, '2017-08-22 06:10:20', 0),
('799a7004-306e-7e7f-2245-599bca22dfd9', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'eacc9db3-842c-ae5d-6757-599a767c8813', 0, '2017-08-22 06:10:20', 0),
('79d8fc7e-bfb2-dc29-7190-599bcab95317', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'da70e24d-2b62-284f-55d3-599a76409796', 0, '2017-08-22 06:10:20', 0),
('7a55e751-8e64-6e6e-b3fa-599bca387f1d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '66000a2d-b4c8-33c5-e3af-599a768b6d94', 0, '2017-08-22 06:10:20', 0),
('7a946dbb-5cf3-1030-423c-599bca74da4c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '10242559-0a04-8759-1538-599a76a78fcb', 0, '2017-08-22 06:10:20', 0),
('7ad2eaf6-88fc-632e-a2d0-599bcaff2d25', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'df1a0d27-369d-f0ec-d97c-599a763a2972', 0, '2017-08-22 06:10:20', 0),
('7b500b6d-b66f-dd9a-574e-599bca09a22e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '150638a8-f2e5-9a41-f892-599a76a4eebd', 0, '2017-08-22 06:10:20', 0),
('7b8e829d-63e4-4f70-6b41-599bca2c8245', 'd191d6fe-6762-5011-a734-599bca2b2a07', '12953261-8c96-3d2b-1466-599a7671fedd', 0, '2017-08-22 06:10:20', 0),
('7bcd0735-e208-1dbd-294d-599bca3c0c76', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b8090a7a-a8bb-404b-e9e9-599a76584b47', 0, '2017-08-22 06:10:20', 0),
('7c4a0e7e-eac0-a239-04ff-599bca793a40', 'd191d6fe-6762-5011-a734-599bca2b2a07', '1738c437-c666-8b55-1482-599a76cf8052', 0, '2017-08-22 06:10:20', 0),
('7c888b3f-c542-64e9-2656-599bca74fd43', 'd191d6fe-6762-5011-a734-599bca2b2a07', '90f9081d-bafd-0cf9-9b40-599a76a7b7cc', 0, '2017-08-22 06:10:20', 0),
('7cc702cf-34a6-b541-a281-599bcaefb8d7', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9f6b0311-ce4c-81a1-1fa5-599a76742253', 0, '2017-08-22 06:10:20', 0),
('7d058d46-41b7-1402-d449-599bca796703', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a92f3963-29d0-adb5-9c80-599a76631e3f', 0, '2017-08-22 06:10:20', 0),
('7d828b68-08d3-03bf-32ce-599bca8c7200', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a6be267d-ec0f-ea59-2980-599a76ca1044', 0, '2017-08-22 06:10:20', 0),
('7dc107b0-4491-bc4c-9e7f-599bca834ab6', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ae114b64-95d7-2cd0-84b3-599a7611c783', 0, '2017-08-22 06:10:20', 0),
('7dff801f-8dd7-bec1-b7fa-599bca1e4809', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'aba031cc-930a-e15f-3ccd-599a763473bf', 0, '2017-08-22 06:10:20', 0),
('7e3e0fb6-b35f-671c-af45-599bcaebfb31', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a48b9a02-d346-bc77-5831-599a761734a6', 0, '2017-08-22 06:10:20', 0),
('7ebb0e46-7854-901f-a142-599bcaa8a392', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b082434b-4222-88e7-bc62-599a766d22a4', 0, '2017-08-22 06:10:20', 0),
('7f3803ee-7fad-b337-f4b7-599bcabab26e', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a21a9d5d-8656-149c-6bd7-599a76ce1593', 0, '2017-08-22 06:10:20', 0),
('7f7696f0-6dbf-640e-4bf3-599bcaa9e4b0', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'dd67c8e5-6468-483e-3a2f-599a762df87a', 0, '2017-08-22 06:10:20', 0),
('7ff392fc-e3bb-1b90-4ff1-599bca97762d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e6ed7044-b4b8-5b46-0472-599a76e601fe', 0, '2017-08-22 06:10:20', 0),
('80321050-932e-edc3-6287-599bca9c99d8', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e47c60ca-66e8-4e30-b14e-599a76d0df8e', 0, '2017-08-22 06:10:20', 0),
('80709f6b-4691-00fc-b21a-599bcaacc664', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'eb52824b-4df9-2bb6-b1d3-599a760786ed', 0, '2017-08-22 06:10:20', 0),
('80af13e6-6f9a-e6bc-d66d-599bca0ed3b4', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e91ffcae-3344-7fbf-9ae1-599a767950ac', 0, '2017-08-22 06:10:20', 0),
('8125058d-44ae-ce96-0176-599bca9e61de', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'delete', 0, '2017-08-22 06:10:20', 0),
('812c110a-55c1-d567-97bb-599bca71fce6', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e249e332-0fbb-e777-c1dd-599a764b4d2a', 0, '2017-08-22 06:10:20', 0),
('816a9c0e-57d3-674d-bea1-599bca217da9', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'edc387db-0902-5f17-019f-599a7687ef24', 0, '2017-08-22 06:10:20', 0),
('81a91ae9-3e17-9fa4-2ef3-599bca090c29', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e0175e4c-fbba-00ab-c331-599a76dccaee', 0, '2017-08-22 06:10:20', 0),
('822615ee-c4fd-20fb-94e6-599bca3f8a17', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4d9cc169-770e-35e1-0089-599a7685e553', 0, '2017-08-22 06:10:20', 0),
('8264938e-4da8-9c48-cce5-599bca3bf49d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '57226694-959d-b748-ca9e-599a76871007', 0, '2017-08-22 06:10:20', 0),
('82a31b33-9d45-4b08-5f64-599bca3e06b8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '54b168ed-487c-07ec-5d43-599a76278540', 0, '2017-08-22 06:10:20', 0),
('83201719-cb53-6609-07f0-599bcaa7e823', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5bc5f50c-b575-ee04-88d8-599a765ba65a', 0, '2017-08-22 06:10:20', 0),
('8323bd6c-a73e-eb27-8b20-599bcaaed178', 'd191d6fe-6762-5011-a734-599bca2b2a07', '925009fa-fcaa-14c2-22a9-599a76999d19', 0, '2017-08-22 06:10:20', 0),
('835e901b-bead-16d2-67f3-599bca6b8b08', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5954f5b6-b18c-7bdf-fe5b-599a76e1f253', 0, '2017-08-22 06:10:20', 0),
('839d11de-1c6c-f5aa-ba7d-599bca78d640', 'd191d6fe-6762-5011-a734-599bca2b2a07', '527edcda-edc8-f410-1637-599a7667ba42', 0, '2017-08-22 06:10:20', 0),
('83a0b75c-08ae-47d5-14a4-599bca7e9326', 'd191d6fe-6762-5011-a734-599bca2b2a07', '1d1e0fbb-1646-912f-9ee5-599a76edc54c', 0, '2017-08-22 06:10:20', 0),
('83df3ea7-caeb-cc84-626a-599bca1ea10d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e071059b-ba2c-d6ef-f894-599a76067462', 0, '2017-08-22 06:10:20', 0),
('841a2b44-2801-a4cc-52f9-599bcae5f46c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5df8856f-6b5f-a254-437b-599a760563d8', 0, '2017-08-22 06:10:20', 0),
('8458a413-d805-c72c-859c-599bca367175', 'd191d6fe-6762-5011-a734-599bca2b2a07', '504c544a-437a-f484-b021-599a76cf4ae8', 0, '2017-08-22 06:10:20', 0),
('845c3b42-b989-f2b6-501b-599bca221570', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'f384e471-9f75-968a-67d4-599a769624ce', 0, '2017-08-22 06:10:20', 0),
('84972bc1-3e77-3dc2-dc3a-599bca2865f0', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a1ffd7d5-c062-d26c-dc01-599a76e078cb', 0, '2017-09-13 10:48:57', 1),
('849ab7cf-3500-f5f0-57f0-599bca6ad7dd', 'd191d6fe-6762-5011-a734-599bca2b2a07', '27b11e3d-2767-75e2-3aa0-599a76a06d34', 0, '2017-08-22 06:10:20', 0),
('84d9332e-e02d-2c55-7b6c-599bca034651', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3230c053-1cb9-4dd7-0382-599a763a785a', 0, '2017-08-22 06:10:20', 0),
('8514205c-3eb4-67e7-bda2-599bcad5eee4', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'acbdff7a-f67c-5d60-ee34-599a76a6a833', 0, '2017-09-13 10:48:57', 1),
('8552a282-a1ed-1c1a-5102-599bca2d4751', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'aa0e7fba-8cc7-a73b-9204-599a7621ac07', 0, '2017-09-13 10:48:57', 1),
('85563712-e88e-900b-a682-599bca1d5c1a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2f8139d6-c4ba-a173-3e17-599a76a71ec8', 0, '2017-08-22 06:10:20', 0),
('859125c9-18bd-26fd-3009-599bcad72c14', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b1de95ee-6191-7bb7-dc04-599a766c3b8c', 0, '2017-09-13 10:48:57', 1),
('8594b4c0-ed33-2f7f-8c9b-599bca2ccde4', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3712dd9c-0f00-e804-bdf7-599a767c4aa4', 0, '2017-08-22 06:10:20', 0),
('85d333bf-65ae-22b6-a8a8-599bcaf6342b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '34a1c91e-dbb8-2292-5f43-599a76e46c55', 0, '2017-08-22 06:10:20', 0),
('86503106-2899-4c6a-0af9-599bca960bfe', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2d1039ac-84bf-5d18-a1fa-599a76d40eec', 0, '2017-08-22 06:10:20', 0),
('86cd3837-1a50-bb8c-ce94-599bca9c6ba5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3983e7c2-4efd-c675-a26c-599a769576da', 0, '2017-08-22 06:10:20', 0),
('870bb98d-05b6-55b3-8c38-599bcaafec9d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2a9f2f03-4e32-8b49-db40-599a769c8cf9', 0, '2017-08-22 06:10:20', 0),
('874a410e-1325-683d-83f4-599bca94595d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '552588b7-015f-95f3-9424-599a765c8048', 0, '2017-08-22 06:10:20', 0),
('87c74d93-feeb-0271-5e06-599bcaced156', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6022271c-5323-8ed4-07fd-599a765486ff', 0, '2017-08-22 06:10:20', 0),
('8805cb69-d5ca-e96c-33a2-599bca89ae22', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5d72ad88-69f5-c4a4-46f8-599a76490dbe', 0, '2017-08-22 06:10:20', 0),
('8882c1ef-577a-cd95-5e33-599bca3701d5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '65bfb8cc-e196-31ac-bb5e-599a76f02496', 0, '2017-08-22 06:10:20', 0),
('8ca5cb09-4b10-840b-c1d8-599bca80e2e6', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'af2f076c-e2e4-a816-b63c-599a76aa547f', 0, '2017-09-13 10:48:57', 1),
('8ce44d78-986d-1c37-9a33-599bcaa3d342', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a75ee405-2c0e-072e-f6e5-599a76267685', 0, '2017-09-13 10:48:57', 1),
('8d6144f7-8890-1a82-4d36-599bcaf05ee1', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b44f9bd7-6b31-ba43-0b75-599a767dabb7', 0, '2017-09-13 10:48:57', 1),
('92856b98-1c2c-5aa4-9fea-599bcac9ce20', 'd191d6fe-6762-5011-a734-599bca2b2a07', '63103e9c-612c-0ef7-3ac8-599a76836298', 0, '2017-08-22 06:10:20', 0),
('930262b7-f466-6c74-e551-599bcaee366a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5ac31560-42eb-6e43-48a2-599a76e2c3bf', 0, '2017-08-22 06:10:20', 0),
('9340ed3a-f369-b626-c04e-599bca1b61f6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '686f4fd4-d7db-bbde-cca0-599a76f70fe2', 0, '2017-08-22 06:10:20', 0),
('937f6941-25b4-f065-8cba-599bca43ec1a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5813834e-4421-fdec-cb21-599a765948e8', 0, '2017-08-22 06:10:20', 0),
('93fc741e-01ec-2480-eb2b-599bcaf62ef7', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'bd2b98ee-63d7-5faa-68dd-599a7628f04a', 0, '2017-08-22 06:10:20', 0),
('943aff8b-b495-5610-6272-599bca7916d3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cccbd0a0-901c-e450-0de3-599a764df161', 0, '2017-08-22 06:10:20', 0),
('94b7ff0c-c530-ce68-19f7-599bca9751a0', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ca1c4902-515d-5799-d74d-599a76478eb8', 0, '2017-08-22 06:10:20', 0),
('94f677f0-708f-0b5a-cba4-599bcaf33659', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd22aeaa6-84cc-32e5-f416-599a761d0f2c', 0, '2017-08-22 06:10:20', 0),
('9534f169-00de-dd0d-9de2-599bca6d78dd', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cfb9efa5-e6d9-190d-4bbe-599a76407503', 0, '2017-08-22 06:10:20', 0),
('9573741b-2d00-bed3-8fd9-599bcadcdfde', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c76ccd64-4ab3-95c0-8341-599a76e37bcc', 0, '2017-08-22 06:10:20', 0),
('95f075ef-6ae7-7bae-43cd-599bca131213', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd518f351-2ef4-02a0-c395-599a761f081f', 0, '2017-08-22 06:10:20', 0),
('966d7e45-264b-098d-9f92-599bca61ab2c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c4bd30a3-504d-9721-57b4-599a7670b869', 0, '2017-08-22 06:10:20', 0),
('96ea79ad-1bb8-cd99-b2bc-599bca3bdf11', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7dff2a3f-9474-6ea8-ae6d-599a7611eb73', 0, '2017-08-22 06:10:20', 0),
('9728f5ac-892a-5b56-3d98-599bca87dcee', 'd191d6fe-6762-5011-a734-599bca2b2a07', '87c35f5a-7824-debd-0b43-599a769f4261', 0, '2017-08-22 06:10:20', 0),
('97677af2-8790-d135-22ef-599bcaaea77a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8590dce6-2c17-8350-5b11-599a761d707a', 0, '2017-08-22 06:10:20', 0),
('97e47535-629f-f6f0-8365-599bcaef8d0c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8ca568b9-10cb-1570-3b4a-599a76a8a642', 0, '2017-08-22 06:10:20', 0),
('981f6575-2015-3035-1332-599bcab0b290', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a4edefd2-27a8-7164-180c-599a76df73a0', 0, '2017-09-13 10:48:57', 1),
('9822f325-323c-36f9-6a14-599bcaa7aff3', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8a72e141-a0a5-f359-88e8-599a76dcbe76', 0, '2017-08-22 06:10:20', 0),
('985de61e-f517-3dfa-377d-599bcaf1192a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '27ad8ca0-77a0-ab16-f9c6-599a7635979f', 0, '2017-08-22 06:10:20', 0),
('98618f9a-3487-5ddc-b3e8-599bca55f835', 'd191d6fe-6762-5011-a734-599bca2b2a07', '831fcf60-fb21-bb9a-8290-599a76d6c2ed', 0, '2017-08-22 06:10:20', 0),
('98daeac4-d11f-f04f-175f-599bca06e72d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '326bb7b2-d1f6-3dcd-bb36-599a76cc0d21', 0, '2017-08-22 06:10:20', 0),
('98de8827-3676-e5fe-a023-599bcafacfa0', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8f54f8a2-ed18-17b6-2f55-599a765c5d73', 0, '2017-08-22 06:10:20', 0),
('99197095-c75e-751d-e9b9-599bca493123', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2fbc2a9d-00b8-1e7c-df26-599a766b4fd1', 0, '2017-08-22 06:10:20', 0),
('991d02a4-e8a2-7b41-9dd7-599bca6bddaf', 'd191d6fe-6762-5011-a734-599bca2b2a07', '80aebad9-80cf-e430-2dba-599a76ccc8dd', 0, '2017-08-22 06:10:20', 0),
('9957f280-793e-177c-784b-599bcae3d639', 'd191d6fe-6762-5011-a734-599bca2b2a07', '378c422c-5606-c4bc-aa2a-599a76c3135f', 0, '2017-08-22 06:10:20', 0),
('995b8a6e-5427-5816-bd71-599bcabebd95', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd85aff29-c700-c9b2-0f53-599a76a3cfe4', 0, '2017-08-22 06:10:20', 0),
('99d4f6ec-b2ae-f6ad-40b9-599bca5f34b3', 'd191d6fe-6762-5011-a734-599bca2b2a07', '351b3d00-cab8-4599-cd23-599a760c5041', 0, '2017-08-22 06:10:20', 0),
('99d88c7b-e515-67bd-511c-599bcaee6a4f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e3961019-4f85-3fa4-48e0-599a7622372e', 0, '2017-08-22 06:10:20', 0),
('9a137b8a-3fb5-f26c-716e-599bcaa6583f', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2d4b1a67-b673-b8af-609c-599a76592468', 0, '2017-08-22 06:10:20', 0),
('9a1704a9-8612-9a80-b6e9-599bca7ec6e4', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e0a81e97-cc4e-b445-4a87-599a76b8cae9', 0, '2017-08-22 06:10:20', 0),
('9a9400e8-4533-65c7-52d8-599bca205868', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e933b11c-955a-13ab-c435-599a7667cd69', 0, '2017-08-22 06:10:20', 0),
('9b110e45-3691-466c-ae1f-599bca2c87bb', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e645a76a-1a26-c36c-d1ea-599a760b0881', 0, '2017-08-22 06:10:20', 0),
('9b4f86dd-8c7a-5765-5bee-599bca123828', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ddf88f8e-67da-534e-2851-599a7696039e', 0, '2017-08-22 06:10:20', 0),
('9bcc8f4a-b739-cf5a-4964-599bcab87256', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ebe33cce-1e66-60de-331e-599a76cbde82', 0, '2017-08-22 06:10:20', 0),
('9c0b079c-2212-ce79-b6cd-599bca2e63a3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'db0a7f6a-bc73-6809-03d6-599a7675ec2d', 0, '2017-08-22 06:10:20', 0),
('9c881b8a-59e0-6fae-71b9-599bca8ac995', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'dd7f1bdf-deaa-38f0-536e-599a76141f3b', 0, '2017-08-22 06:10:20', 0),
('9cc69334-b033-03b4-d3c1-599bca27b593', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e8f8ccc5-87ff-9a45-f9c4-599a76e061ba', 0, '2017-08-22 06:10:20', 0),
('9d0517fa-f8c6-7784-3802-599bca53b5e6', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e60ab470-4551-7a0a-a8d8-599a765073fc', 0, '2017-08-22 06:10:20', 0),
('9d8212d4-f7db-6e88-a2f8-599bca84311b', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ee57d7f3-b72a-3ac6-2514-599a76d25780', 0, '2017-08-22 06:10:20', 0),
('9dc0970b-11e1-0869-17d9-599bca9ce967', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'eba84c44-9760-da85-6634-599a763a2a26', 0, '2017-08-22 06:10:20', 0),
('9e3d9a70-00e2-2dcf-ede3-599bcae0733c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e35b266f-a587-2aa3-8804-599a76b97c97', 0, '2017-08-22 06:10:20', 0),
('9eba9a4d-cb7e-07cd-f8e8-599bca552448', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'f145e9a6-b454-eb8b-5316-599a763a2747', 0, '2017-08-22 06:10:20', 0),
('9f379821-3bd9-7986-0c17-599bca777ea3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e0aba5dd-dfef-af28-ade1-599a76f974cc', 0, '2017-08-22 06:10:20', 0),
('9fb49db8-37b0-9295-ebc9-599bca590776', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7ce5002f-61a3-ef9c-b703-599a7672175a', 0, '2017-08-22 06:10:20', 0),
('9fef8d9d-1c55-e106-73f7-599bca3c1bd1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3a3bd492-5d2e-ed69-12cd-599a76844f98', 0, '2017-08-22 06:10:20', 0),
('a02e0b87-2df2-11d2-d699-599bca43f3ce', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2a9b9ca6-ec0b-28e6-2895-599a76a91b3c', 0, '2017-08-22 06:10:20', 0),
('a03195ce-146a-f929-bc19-599bca65319b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '85af2c6c-b992-4b90-5d69-599a76a8e905', 0, '2017-08-22 06:10:20', 0),
('a06c8493-ddba-9e16-9734-599bcadddb63', 'd191d6fe-6762-5011-a734-599bca2b2a07', '30fb0732-6c01-442f-7303-599a76b7dda1', 0, '2017-08-22 06:10:20', 0),
('a07012da-0674-5de6-5a3a-599bca788d43', 'd191d6fe-6762-5011-a734-599bca2b2a07', '83bb1e4c-1c9f-077d-f6ca-599a76081817', 0, '2017-08-22 06:10:20', 0),
('a0e98fb6-83b5-db2b-f4ef-599bca9087c7', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b9b509db-5212-985d-4c0d-599a7649e361', 0, '2017-08-22 06:10:20', 0),
('a0ed2f40-9be4-b7b2-76a3-599bcab111f0', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8a143a89-d852-bac7-8a78-599a7669f65d', 0, '2017-08-22 06:10:20', 0),
('a128096a-0166-ffe0-b64c-599bcaab9854', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9a750e0b-cab3-77f3-c37b-599a765090cd', 0, '2017-08-22 06:10:20', 0),
('a12ba431-b076-c23f-eb58-599bcac843d2', 'd191d6fe-6762-5011-a734-599bca2b2a07', '87e1a6af-c022-c7fd-5114-599a76c61e15', 0, '2017-08-22 06:10:20', 0),
('a16a2091-432d-9a72-629b-599bca969d7f', 'd191d6fe-6762-5011-a734-599bca2b2a07', '818893e2-b41e-db10-0220-599a76ba264a', 0, '2017-08-22 06:10:20', 0),
('a1a51042-d7a9-3679-4c7e-599bca798534', 'd191d6fe-6762-5011-a734-599bca2b2a07', '10006f4e-1995-a3f7-d040-599a767c6afc', 0, '2017-08-22 06:10:20', 0),
('a1e39591-7c36-5540-5afc-599bca8b9705', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'dcde0e34-8f5f-558b-abca-599a768505c9', 0, '2017-08-22 06:10:20', 0),
('a1e72bcb-be44-eb1b-8a4a-599bcaffe414', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8c083c53-f768-14ea-6cf0-599a761ad6c7', 0, '2017-08-22 06:10:20', 0),
('a22212d8-b3e7-5de5-c685-599bca3b8ce4', 'd191d6fe-6762-5011-a734-599bca2b2a07', '774c0a8b-c73e-614d-7f5d-599a768e113f', 0, '2017-08-22 06:10:20', 0),
('a225a41e-5871-e53b-dadf-599bca845a5b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '7f5606c0-e966-ad2c-5056-599a76fe2f5e', 0, '2017-08-22 06:10:20', 0),
('a29f12c5-3d93-a266-aaaf-599bcaeb204b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '1232f917-292f-166d-8cf2-599a7675f0da', 0, '2017-08-22 06:10:20', 0),
('a2a2a3fd-5282-69ee-9aac-599bca0f6bc8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '815bf937-161c-c561-0e02-599a76f7ee04', 0, '2017-08-22 06:10:20', 0),
('a2dd99a9-9007-11be-1e4b-599bca742439', 'd191d6fe-6762-5011-a734-599bca2b2a07', '580c0698-a7fb-6f20-928d-599a7610176c', 0, '2017-08-22 06:10:20', 0),
('a2e12a63-fb14-3475-9c6b-599bca830837', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8ae19333-33b9-e1d7-35c1-599a76ddcf67', 0, '2017-08-22 06:10:20', 0),
('a31c12bf-e216-f775-68f8-599bca20d16c', 'd191d6fe-6762-5011-a734-599bca2b2a07', '44dba980-c693-4c70-51d6-599a76623d7c', 0, '2017-08-22 06:10:20', 0),
('a35e286c-a401-573c-ca73-599bcacde286', 'd191d6fe-6762-5011-a734-599bca2b2a07', '887088cb-3e3b-f910-12bb-599a766966b9', 0, '2017-08-22 06:10:20', 0),
('a39cabd5-c9da-f4bf-85aa-599bca8954c4', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8f852298-7b51-7c64-345e-599a76d2b1b0', 0, '2017-08-22 06:10:20', 0),
('a419ab26-4c67-a4b3-2bf4-599bcae3ffda', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8d142b2c-aaff-e327-7669-599a764012b6', 0, '2017-08-22 06:10:20', 0),
('a45824f0-21b4-646c-7728-599bca85a014', 'd191d6fe-6762-5011-a734-599bca2b2a07', '863e0db8-f331-9366-8029-599a76b8ea4b', 0, '2017-08-22 06:10:20', 0),
('a496adcc-6881-25d6-f982-599bcac44062', 'd191d6fe-6762-5011-a734-599bca2b2a07', '91b7bc33-79ee-6f4d-6f72-599a76b6a67e', 0, '2017-08-22 06:10:20', 0),
('a513b2a6-1953-bc2f-8ff0-599bcafac4f4', 'd191d6fe-6762-5011-a734-599bca2b2a07', '83ccf998-f661-b065-1a9f-599a76c4ae43', 0, '2017-08-22 06:10:20', 0),
('a5523d02-7df1-eb61-faa2-599bcab6e986', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b2ca46ac-cda9-7b91-90f6-599a765a88c2', 0, '2017-08-22 06:10:20', 0),
('a590be65-f43b-2cf9-af27-599bcad1eb94', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'bd0b6a42-c658-63a3-44ce-599a769ee7df', 0, '2017-08-22 06:10:20', 0),
('a60db9e2-224a-63c3-5975-599bca7b4144', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ba5be8cd-5b52-1f56-1cd0-599a76b3b3a4', 0, '2017-08-22 06:10:20', 0),
('a70426b2-8d80-b3c2-22a7-599bca8b47c6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '505542fa-70e9-0cf4-4528-599a76c33d7e', 0, '2017-08-22 06:10:20', 0),
('a7812fd8-616d-d2af-4b42-599bcaa43420', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4d67476f-484d-6e84-332e-599a76dbec89', 0, '2017-08-22 06:10:20', 0),
('a7fe2f13-583e-1419-c634-599bcad0895a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5575e793-934c-b621-5cf6-599a763fdc34', 0, '2017-08-22 06:10:20', 0),
('a87b2dee-4b5e-8dfc-ef5c-599bcac4672e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '52c65175-5073-01ae-263e-599a7695923c', 0, '2017-08-22 06:10:20', 0),
('a8b9a479-61bf-a35c-89fa-599bca717218', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4ab7b63e-64af-ac18-b17a-599a76696b5e', 0, '2017-08-22 06:10:20', 0),
('a8f82175-c01e-bbe4-1557-599bca87a52e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '58256cb1-17ea-9034-02f6-599a76157a36', 0, '2017-08-22 06:10:20', 0),
('a97527b3-1d04-c85a-e4f8-599bca7a8790', 'd191d6fe-6762-5011-a734-599bca2b2a07', '48083cfe-787f-34a6-6902-599a761531d1', 0, '2017-08-22 06:10:20', 0),
('a9b3ab13-9a06-00da-0928-599bca8689e3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e40f83a8-df43-c3cb-26eb-599a76820755', 0, '2017-08-22 06:10:20', 0),
('aa30b42f-d727-65cb-056d-599bca9abbe3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'efc7bba0-b740-bf9b-467c-599a768c6ac4', 0, '2017-08-22 06:10:20', 0),
('aa6f308c-ab2c-0029-6618-599bca86048d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ecd9a7c0-f660-0395-52c0-599a763925f6', 0, '2017-08-22 06:10:20', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('aaadb8c3-6427-7b71-b0fa-599bcaedc425', 'd191d6fe-6762-5011-a734-599bca2b2a07', '1414041c-a88d-b370-cb89-599a76722916', 0, '2017-08-22 06:10:20', 0),
('aaec3b71-6ae0-a1a4-49e5-599bca10987c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'f27743a6-b199-7da2-1e69-599a76f61a03', 0, '2017-08-22 06:10:20', 0),
('b37b6f17-d327-496d-db88-599bca0ec76a', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c70e1e5a-7658-287c-f79b-599a7655525b', 0, '2017-08-22 06:10:20', 0),
('b3f86b50-c99b-80fb-f246-599bcaa34e1f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c4db83e6-82d1-19ae-c5b7-599a76eb308e', 0, '2017-08-22 06:10:20', 0),
('b436ef07-948e-cc96-14ad-599bcace5d87', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b7ead238-d15d-a284-a2be-599a763d67a4', 0, '2017-08-22 06:10:20', 0),
('b4b3e36a-4a92-7839-ce9d-599bcaf91811', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c97f129d-f046-2920-2906-599a765213cf', 0, '2017-08-22 06:10:20', 0),
('b530e9ec-9104-451e-0e75-599bca9c491e', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b579d64e-2c0b-e934-4d50-599a762da785', 0, '2017-08-22 06:10:20', 0),
('b5e8d2b4-ffe3-4772-9317-599bca6ef846', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ea2a2d43-e7dd-01a6-ceb5-599a760328d9', 0, '2017-08-22 06:10:20', 0),
('b627550c-c0da-4d02-fa6a-599bca35a45d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3f0d0fb5-8b81-b8ac-c7c3-599a7645eae9', 0, '2017-08-22 06:10:20', 0),
('b665d351-d2be-9630-a65a-599bca70de04', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'e77a92b3-cf00-629e-3929-599a76d9b656', 0, '2017-08-22 06:10:20', 0),
('b6e2ee3c-a0e8-dca3-c533-599bca07563a', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cb249b1c-29b1-8851-a950-599a76f89651', 0, '2017-08-22 06:10:20', 0),
('b7216961-6bdb-06ad-76de-599bca5622e7', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd65fcea6-07dd-4dba-625f-599a763c6ba4', 0, '2017-08-22 06:10:20', 0),
('b75fe160-eeed-30fb-5d22-599bca4e4e4d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd3b03a48-06b9-43fa-9aa2-599a769cdb60', 0, '2017-08-22 06:10:20', 0),
('b7dce02b-928c-a6a9-abee-599bcadc37f3', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'dbbed651-952b-ce50-3b31-599a76484a11', 0, '2017-08-22 06:10:20', 0),
('b859ef17-6b93-41bc-4b2b-599bcaa2e931', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd90f47f9-d7a3-b3f0-fddc-599a7695afd5', 0, '2017-08-22 06:10:20', 0),
('b8986e86-d00f-a5c9-4982-599bca602b1b', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd100b130-5fb5-d546-f01a-599a767dddf8', 0, '2017-08-22 06:10:20', 0),
('b9156da2-fc32-e833-08b9-599bca3c4874', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'deace5a1-368f-b25f-56dd-599a76a2f43a', 0, '2017-08-22 06:10:20', 0),
('b953e998-8c04-5776-7804-599bcab249f2', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ce512fbf-cc9a-5485-b8b3-599a769c3cfa', 0, '2017-08-22 06:10:20', 0),
('b9926865-a106-df22-673f-599bcae9efbb', 'd191d6fe-6762-5011-a734-599bca2b2a07', '572efc0d-ce8c-5979-f6dd-599a762606fd', 0, '2017-08-22 06:10:20', 0),
('ba0f6e1e-5594-7bcb-c5fb-599bca1e6776', 'd191d6fe-6762-5011-a734-599bca2b2a07', '62e721df-0eea-67ea-b2dd-599a76169bf6', 0, '2017-08-22 06:10:20', 0),
('ba4decf0-325b-1d9d-6f9d-599bcafc72c6', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5ff91570-aaca-bd9a-29f3-599a76693f18', 0, '2017-08-22 06:10:20', 0),
('ba8c61a8-c2fe-edec-c5cf-599bca533899', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6f1c5563-1183-a1df-9367-599a76f184f2', 0, '2017-08-22 06:10:20', 0),
('bb0966ed-fb1e-4e56-5220-599bca9f8a39', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6596b7de-f007-f037-dfd0-599a76bac848', 0, '2017-08-22 06:10:20', 0),
('bb47f91e-168a-36a2-808f-599bca7565a0', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5d499050-901f-2edf-d3c3-599a765055bf', 0, '2017-08-22 06:10:20', 0),
('bbc4f48a-56b0-1dce-ad67-599bca788973', 'd191d6fe-6762-5011-a734-599bca2b2a07', '71cbde36-c1f4-1503-38c2-599a7625438b', 0, '2017-08-22 06:10:20', 0),
('bc037ab6-bc85-41b0-a0a4-599bcab5be2b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5a9a00e0-d74a-8d27-c60c-599a765190e2', 0, '2017-08-22 06:10:20', 0),
('bc8076d8-902c-1970-f3cf-599bca3e7c09', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8dc870e2-345d-b98f-f737-599a76dda2a7', 0, '2017-08-22 06:10:20', 0),
('bcbef6d1-7568-df4f-7591-599bca0d16ca', 'd191d6fe-6762-5011-a734-599bca2b2a07', '970fa5c7-9e9b-8073-ee56-599a76cec617', 0, '2017-08-22 06:10:20', 0),
('bd3bf6ed-010f-1306-2706-599bcafcc7ec', 'd191d6fe-6762-5011-a734-599bca2b2a07', '949e942e-c1f6-c280-bb27-599a76a9edff', 0, '2017-08-22 06:10:20', 0),
('bd7a7988-9cb8-5958-ea45-599bca0e669a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9b3623e6-f296-e43d-655f-599a76515725', 0, '2017-08-22 06:10:20', 0),
('c48f132a-c7cd-5388-a162-599bcad62414', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9903a9bc-cd01-e9f8-83ab-599a76baf5ca', 0, '2017-08-22 06:10:20', 0),
('c4cd90ff-c429-2c6c-6349-599bcad18ed4', 'd191d6fe-6762-5011-a734-599bca2b2a07', '926c0087-e1d1-54e7-e6cd-599a76e5f4d2', 0, '2017-08-22 06:10:20', 0),
('c54a9b58-7fc1-4660-75a6-599bcab54a76', 'd191d6fe-6762-5011-a734-599bca2b2a07', '9d68bda2-cba2-7a37-fb05-599a7656174f', 0, '2017-08-22 06:10:20', 0),
('c5891f58-b466-9c6b-4ef5-599bcac87f7e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '907806fb-5939-c7d3-7ae4-599a76178746', 0, '2017-08-22 06:10:20', 0),
('c6061212-512a-1096-763b-599bca6a5d5b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '32f8b987-71ac-30cd-ce89-599a76a206d8', 0, '2017-08-22 06:10:20', 0),
('c6449639-a3c2-babd-50ad-599bcac4d8bb', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3c015422-02c0-9a2e-daf0-599a76e8f888', 0, '2017-08-22 06:10:20', 0),
('c6c197f2-7478-55f6-88ba-599bca9e11b5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3a0d5c4b-3619-bf1a-ba9d-599a7686d0c5', 0, '2017-08-22 06:10:20', 0),
('c7001e47-67e3-f685-10ce-599bca063dc9', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4066667d-6d98-02b4-b85a-599a76d11110', 0, '2017-08-22 06:10:20', 0),
('c77d1610-09c1-1e4a-78cb-599bca211a43', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3e33e3ab-8840-3f45-b394-599a76324061', 0, '2017-08-22 06:10:20', 0),
('c7bb9313-adb6-0065-a1d2-599bcab9fd86', 'd191d6fe-6762-5011-a734-599bca2b2a07', '379c436b-7dc1-0b8f-7e28-599a76add149', 0, '2017-08-22 06:10:20', 0),
('c838ab5b-d94a-e493-774c-599bcae9869d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '4298f071-0d80-36f8-21bd-599a7664a71d', 0, '2017-08-22 06:10:20', 0),
('c8772d99-cd07-62f9-ad44-599bcabb24fc', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3569ca1d-5d1d-93ab-f11c-599a76b20cd2', 0, '2017-08-22 06:10:20', 0),
('c8f42461-1c10-572e-dba5-599bca9e4c6a', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'bdf1d0ea-c232-8a0d-3473-599a76f3d8d5', 0, '2017-08-22 06:10:20', 0),
('c932a2b1-fe3e-1d94-ff55-599bcae9c80c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c92d0e1a-1a57-63ec-0f6c-599a76a8bdb4', 0, '2017-08-22 06:10:20', 0),
('c9afa25c-18f2-fb30-538e-599bca5d730d', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c67d762f-0ce5-4684-410d-599a7653eada', 0, '2017-08-22 06:10:20', 0),
('c9ee2d72-48fb-4524-e466-599bca1df81c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'ce8c1d3e-13dc-4100-ddf2-599a760e9a76', 0, '2017-08-22 06:10:20', 0),
('ca2caf6e-b645-a2e7-f6e7-599bcad88c64', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'cbdc8b99-c896-75d5-79c8-599a76717ba4', 0, '2017-08-22 06:10:20', 0),
('caa9addf-399d-94eb-f410-599bca222cc2', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c3cdec72-21e4-d044-b152-599a76f9318d', 0, '2017-08-22 06:10:20', 0),
('cae825fc-c05f-3ec0-3b2a-599bcac43e85', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'd13b916c-4c23-49c0-8d57-599a7610086e', 0, '2017-08-22 06:10:20', 0),
('cb26adc4-d307-6a9b-5449-599bcac45453', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'c11e6609-eb68-6e72-8fd8-599a76432987', 0, '2017-08-22 06:10:20', 0),
('cba3a8d1-2dbe-501b-4123-599bcabeb0b1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5d69a019-50f7-bb8e-22f8-599a7630d916', 0, '2017-08-22 06:10:20', 0),
('cbe22e33-d5c9-e705-19ef-599bca63b693', 'd191d6fe-6762-5011-a734-599bca2b2a07', '667247d6-57d9-c106-e04e-599a76924c90', 0, '2017-08-22 06:10:20', 0),
('cc5f375f-7d7b-d318-8f08-599bca4b5248', 'd191d6fe-6762-5011-a734-599bca2b2a07', '647e3b5a-18c9-3784-c3a9-599a7673ba37', 0, '2017-08-22 06:10:20', 0),
('ccdc357f-3a9d-c864-5475-599bcad4fe0a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6ad750a5-7770-99b7-ecc9-599a761c22d9', 0, '2017-08-22 06:10:20', 0),
('cd1ab21e-50b7-1f66-77be-599bcaede6d1', 'd191d6fe-6762-5011-a734-599bca2b2a07', '68a4c502-7f1a-f47e-917a-599a76835ab5', 0, '2017-08-22 06:10:20', 0),
('cd5938ed-c7e8-4623-1fa9-599bcaeff96e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '620d3247-dafc-1709-1c46-599a767f909d', 0, '2017-08-22 06:10:20', 0),
('cd97b355-f912-e34e-7fa6-599bcab808c7', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6d09dfd9-bece-50a8-8f97-599a76fcb62f', 0, '2017-08-22 06:10:20', 0),
('ce14b527-c79c-f0a8-8901-599bcaa287e8', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5fdaaee4-120b-7659-a0be-599a7622cb4b', 0, '2017-08-22 06:10:20', 0),
('ce533f73-0d1e-c04f-4cf2-599bca2deffe', 'd191d6fe-6762-5011-a734-599bca2b2a07', '83f4509c-31c1-9fb5-62e5-599a764a3425', 0, '2017-08-22 06:10:20', 0),
('ced035d7-669c-a763-37d7-599bcac1568a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8e357884-7157-79db-7702-599a76999246', 0, '2017-08-22 06:10:20', 0),
('cf0eba72-e216-939a-bd07-599bca5e4805', 'd191d6fe-6762-5011-a734-599bca2b2a07', '8bc466d2-7e96-eada-6340-599a76dc8870', 0, '2017-08-22 06:10:20', 0),
('cf4d3132-f563-5b94-a070-599bca40830e', 'd191d6fe-6762-5011-a734-599bca2b2a07', '935600c6-acca-a9cb-32d0-599a76c1cc91', 0, '2017-08-22 06:10:20', 0),
('cf8bbf04-895a-d6a3-daa3-599bca957faf', 'd191d6fe-6762-5011-a734-599bca2b2a07', '90e50c33-99fd-6c82-c170-599a7662bb66', 0, '2017-08-22 06:10:20', 0),
('d0473f70-cc4f-0bc4-dd9a-599bca76b0c9', 'd191d6fe-6762-5011-a734-599bca2b2a07', '89536ec8-b106-4e00-efae-599a768fb7d3', 0, '2017-08-22 06:10:20', 0),
('d0c440db-ef60-46c5-9b31-599bcab2c218', 'd191d6fe-6762-5011-a734-599bca2b2a07', '95c71c7b-e7a5-bdf3-73c8-599a763b6889', 0, '2017-08-22 06:10:20', 0),
('d102c4f6-db9e-a562-b6cd-599bca305246', 'd191d6fe-6762-5011-a734-599bca2b2a07', '86e250d5-73e9-2af4-6bdf-599a76a1ad3e', 0, '2017-08-22 06:10:20', 0),
('d1414ee2-c288-8610-c502-599bcac8cece', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a9d384ef-3b0b-cf21-8880-599a7682e745', 0, '2017-08-22 06:10:20', 0),
('d1be4b98-6eb0-b082-426b-599bca2af959', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b45323ba-aea9-5e9a-ebb7-599a763905cf', 0, '2017-08-22 06:10:20', 0),
('e3cf8926-bac5-6902-0c01-599bca1d3627', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b1e22113-04e1-1855-a95e-599a76d1e9b1', 0, '2017-08-22 06:10:20', 0),
('e44c8f0c-3085-3bd3-3b1e-599bcab6804f', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b973c218-5642-8084-7ffe-599a768a9a8e', 0, '2017-08-22 06:10:20', 0),
('e48b07c8-897d-2259-08b0-599bcafec8e1', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b702b909-a5a7-47eb-4a17-599a7678bfd4', 0, '2017-08-22 06:10:20', 0),
('f07e2cf0-ae67-32c5-87e6-599bcabc52ba', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'access', 0, '2017-08-22 06:10:20', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('f0e00d3f-406c-22ff-427f-599bce5c152c', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'eff07114-603c-c0d2-0e5e-599bcd264773', '2017-08-22 06:24:27', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `message_to_assigned` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `alerts`
--

INSERT INTO `alerts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `is_read`, `target_module`, `type`, `url_redirect`, `message_to_assigned`) VALUES
('3baa8e31-bdd1-7b3c-733b-59b8cdf9301f', 'Предварительный контакт \' TEST\'', '2017-09-13 06:18:49', '2017-09-13 06:21:13', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('4a496cb7-e076-3c1c-3c9c-59b105786fe6', 'Предварительный контакт \'Тест Тестовый\'', '2017-09-07 08:39:15', '2017-09-07 09:44:58', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=4a2d9def-1fda-713f-409f-599a892565f9&return_module=Leads&return_action=DetailView', NULL),
('5b0e63d8-1543-dba7-0d16-59d5ced1728c', 'Предварительный контакт \'Иван Иванов\'', '2017-10-05 06:19:20', '2017-10-05 06:20:06', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('67cb0af9-db76-3d3a-5837-59b122b8715e', 'Предварительный контакт \' TEST\'', '2017-09-07 10:41:26', '2017-09-07 11:06:27', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('6a173dcf-3d92-48a1-95b7-59d4ceae3933', 'Предварительный контакт \'Валера \'', '2017-10-04 12:04:30', '2017-10-04 12:05:46', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView', NULL),
('6acfc329-7f61-399b-08c0-59ca507faaa8', 'Предварительный контакт \' 1\'', '2017-09-26 13:03:56', '2017-09-26 13:04:49', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=6acfcff6-723f-f3e3-3c1b-59c377a909f2&return_module=Leads&return_action=DetailView', NULL),
('857f4a0d-0e00-ab0a-5b10-59b8cd8184ef', 'Предварительный контакт \' TEST\'', '2017-09-13 06:17:11', '2017-09-13 06:19:34', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('8e14748b-40a5-e2b8-3372-59d5cd8ce8f2', 'Предварительный контакт \'Иван \'', '2017-10-05 06:13:30', '2017-10-05 06:13:43', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=8d61d039-9372-369c-f48f-59c38ae4f7fb&return_module=Leads&return_action=DetailView', NULL),
('8f4428df-f39a-a1a5-4bbf-59b129cf18b0', 'Предварительный контакт \' TEST\'', '2017-09-07 11:12:23', '2017-09-07 11:30:01', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('9bfc6862-2a2f-55e2-b046-59d5ccead9ed', 'Предварительный контакт \'Виталий Dsddsd\'', '2017-10-05 06:08:17', '2017-10-05 06:09:21', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=9ce12f06-52ad-9bbe-3467-59c36fa66eef&return_module=Leads&return_action=DetailView', NULL),
('ac9d72c3-c920-6d78-2ca9-59ca61bf1d63', 'Предварительный контакт \' 12313123\'', '2017-09-26 14:18:47', '2017-09-26 14:19:11', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView', NULL),
('b71b0189-17ad-3c33-c0cc-59ca19daae41', 'Предварительный контакт \' 12313123\'', '2017-09-26 09:11:08', '2017-09-26 09:12:06', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView', NULL),
('bd8af7d4-938c-1eff-b09f-59c21ccc6176', 'Предварительный контакт \' 12313123\'', '2017-09-20 07:43:37', '2017-09-20 07:44:38', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView', NULL),
('c56912ec-fea3-e025-2cb2-59cde4279ace', 'Предварительный контакт \'Валера \'', '2017-09-29 06:13:06', '2017-09-29 06:16:36', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView', NULL),
('c8c96aea-d9d4-e278-4451-59b103e579dd', 'Предварительный контакт \'Тест Тестовый\'', '2017-09-07 08:30:15', '2017-09-07 08:31:24', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=4a2d9def-1fda-713f-409f-599a892565f9&return_module=Leads&return_action=DetailView', NULL),
('cd39cc8b-e091-60f5-4a1d-59d5cbb252e4', 'Предварительный контакт \'Николай Васильев\'', '2017-10-05 06:05:15', '2017-10-05 06:06:26', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView', NULL),
('d83ee236-4601-5f0c-b3ca-59d1d7a9c633', 'Предварительный контакт \'Валера \'', '2017-10-02 06:04:49', '2017-10-02 06:05:24', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView', NULL),
('d93303a6-f075-4b01-6a2d-59cde576b9fb', 'Предварительный контакт \'Валера \'', '2017-09-29 06:16:02', '2017-09-29 06:17:10', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView', NULL),
('db9c1955-e89c-b736-87f9-59d5cd91d1ab', 'Предварительный контакт \'Алексей \'', '2017-10-05 06:13:51', '2017-10-05 06:16:32', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=70007648-47bc-d3b4-9904-59b6a1659460&return_module=Leads&return_action=DetailView', NULL),
('e18e0987-53d3-c4b4-312b-59d5cea5b69a', 'Предварительный контакт \'Евгений \'', '2017-10-05 06:15:48', '2017-10-05 06:16:30', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=a909e9a5-90ce-7a2f-fd1a-59c38846be76&return_module=Leads&return_action=DetailView', NULL),
('e9b8a01c-9bf7-2342-ac2f-59b11650a0d5', 'Предварительный контакт \' TEST\'', '2017-09-07 09:52:07', '2017-09-07 10:35:13', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('ec4303da-b8ca-61b8-cb1d-59d5ceecf70d', 'Предварительный контакт \'Сергей \'', '2017-10-05 06:16:52', '2017-10-05 06:17:56', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=6acfcff6-723f-f3e3-3c1b-59c377a909f2&return_module=Leads&return_action=DetailView', NULL),
('eea2ae5a-f287-a719-0e05-59d5cc030c88', 'Предварительный контакт \'Андрей \'', '2017-10-05 06:08:07', '2017-10-05 06:08:26', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=10c2e549-c39f-7ef0-f7da-59b11183c89e&return_module=Leads&return_action=DetailView', NULL),
('fbc502a0-e7d6-9ea6-1def-59c24e71b52f', 'Предварительный контакт \' 12313123\'', '2017-09-20 11:17:55', '2017-09-20 11:23:33', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aop_case_events`
--

INSERT INTO `aop_case_events` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_id`) VALUES
('b837c26b-63f1-8484-cbbd-59ba21ea3b0d', 'Priority changed from  to P1.', '2017-09-14 06:29:12', '2017-09-14 06:29:12', '1', '1', 'Priority changed from  to P1.', 0, NULL, '9e430572-0c88-020a-a77c-59ba2115b313'),
('c8550919-cadb-795b-2f99-59ba21732793', 'Status changed from  to Open_New.', '2017-09-14 06:29:12', '2017-09-14 06:29:12', '1', '1', 'Status changed from  to Open_New.', 0, NULL, '9e430572-0c88-020a-a77c-59ba2115b313'),
('cf9a784a-d8f5-7963-2ffc-59ba8cdc1846', 'Type changed from Administration to buy_sell.', '2017-09-14 14:03:17', '2017-09-14 14:03:17', '1', '1', 'Type changed from Administration to buy_sell.', 0, NULL, '9e430572-0c88-020a-a77c-59ba2115b313'),
('d063a2ad-cf7e-3d5d-cdb8-59ba21b62537', 'Assigned User changed from  to Administrator.', '2017-09-14 06:29:12', '2017-09-14 06:29:12', '1', '1', 'Assigned User changed from  to Administrator.', 0, NULL, '9e430572-0c88-020a-a77c-59ba2115b313'),
('e562f86b-e6f0-aa98-4c35-59ba216c4012', 'Type changed from  to Administration.', '2017-09-14 06:29:12', '2017-09-14 06:29:12', '1', '1', 'Type changed from  to Administration.', 0, NULL, '9e430572-0c88-020a-a77c-59ba2115b313');

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aop_case_updates`
--

INSERT INTO `aop_case_updates` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_id`, `contact_id`, `internal`) VALUES
('7f9fee88-2fce-e882-73df-59ba227c14c0', 'ВЫАЫВЫВ', '2017-09-14 06:31:53', '2017-09-14 06:31:53', '1', '1', 'ВЫАЫВЫВ', 0, '1', '9e430572-0c88-020a-a77c-59ba2115b313', NULL, 0),
('d8bf4600-1486-7089-0888-59ba22ac3c20', 'ффывывВЫФ', '2017-09-14 06:30:27', '2017-09-14 06:30:27', '1', '1', 'ффывывВЫФ', 0, '1', '9e430572-0c88-020a-a77c-59ba2115b313', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aos_pdf_templates`
--

INSERT INTO `aos_pdf_templates` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `active`, `type`, `pdfheader`, `pdffooter`, `margin_left`, `margin_right`, `margin_top`, `margin_bottom`, `margin_header`, `margin_footer`) VALUES
('29661054-86f4-9bea-a18f-59d3976e2037', 'мой шаблон', '2017-10-03 13:57:26', '2017-10-03 14:22:56', '1', '1', '<table style=\"width: 100%; font-family: Arial; text-align: center;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\r\n<tbody style=\"text-align: left;\">\r\n<tr style=\"text-align: left;\">\r\n<td style=\"text-align: left;\">\r\n<p><img style=\"float: left;\" src=\"themes/default/images/company_logo.png\" alt=\"\" /> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-weight: bold; text-align: left;\">\r\n<div>SuiteCRM Ltd<br />Название улицы<br />Название города<br />Название страны</div>\r\n</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"text-align: left;\"> </td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"text-align: left;\">\r\n<h1>Предложение</h1>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Arial; text-align: center;\"> </p>\r\n<table style=\"text-align: center; width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody style=\"text-align: left;\">\r\n<tr style=\"text-align: left;\">\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Подготовлено для</td>\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Ответственный(ая)</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_billing_account<br /> $aos_quotes_billing_address_street<br /> $aos_quotes_billing_address_city <br /> $aos_quotes_billing_address_state $aos_quotes_billing_address_postalcode</div>\r\n</td>\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_modified_by_name</div>\r\n</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Дата Создания</td>\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Действительно до</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_date_entered</div>\r\n</td>\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_expiration</div>\r\n</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Номер предложения</td>\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Условия оплаты</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_number</div>\r\n</td>\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_term</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\" colspan=\"8\">$aos_line_item_groups_name</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Количество</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Товар</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Описание</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Цена по прайсу</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Скидка</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Цена за единицу</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">НДС (%)</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Итого без НДС</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; text-align: center;\">$aos_products_quotes_product_qty</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_name</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_description</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_list_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_discount</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_unit_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_vat</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_total_price</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\" colspan=\"3\">$aos_services_quotes_name</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_list_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_discount</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_unit_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_vat</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_total_price</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Итого без скидки</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_total_amt</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Скидка</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_discount_amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Итого со скидкой</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_subtotal_amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Всего НДС</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_tax_amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">ИТОГО С НДС</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_total_amount</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, '', 1, 'AOS_Invoices', NULL, '<table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody>\r\n<tr>\r\n<td>Страница {PAGENO}</td>\r\n<td style=\"text-align: right;\">{DATE m/d/Y}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 15, 15, 16, 16, 9, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aos_pdf_templates_audit`
--

INSERT INTO `aos_pdf_templates_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('eb9cc810-0ae6-2e13-f2db-59d39d24eced', '29661054-86f4-9bea-a18f-59d3976e2037', '2017-10-03 14:22:56', '1', 'type', 'enum', 'Leads', 'AOS_Invoices', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_essence` text,
  `registration_use` text,
  `activation_date` date DEFAULT NULL,
  `product_validity` int(11) DEFAULT NULL,
  `basic_cost` float DEFAULT NULL,
  `product_status` varchar(15) DEFAULT NULL,
  `product_type` varchar(15) DEFAULT NULL,
  `product_currency` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aos_products`
--

INSERT INTO `aos_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `maincode`, `part_number`, `category`, `type`, `cost`, `cost_usdollar`, `currency_id`, `price`, `price_usdollar`, `url`, `contact_id`, `product_image`, `aos_product_category_id`, `product_name`, `product_essence`, `registration_use`, `activation_date`, `product_validity`, `basic_cost`, `product_status`, `product_type`, `product_currency`) VALUES
('22328d1a-9962-3f5e-3618-59d485e104eb', 'Талон на бензин AИ 95', '2017-10-04 06:54:51', '2017-10-04 08:11:20', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Good', '0.000000', '0.000000', '-99', '20.000000', '0.000000', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'fuel', 'name'),
('22a362ec-05d2-bd7a-fe35-59d484983668', 'Дизель', '2017-10-04 06:47:48', '2017-10-04 06:47:48', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Service', '0.000000', '0.000000', NULL, '22.000000', '0.000000', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('379778c7-a5c6-67e5-ebc4-59d4a63f0710', 'Бензин канистра', '2017-10-04 09:15:29', '2017-10-04 09:15:29', '1', '1', NULL, 0, NULL, 'XXXX', NULL, NULL, 'Good', NULL, '0.000000', '-99', '0.000000', '0.000000', NULL, NULL, NULL, NULL, NULL, NULL, '', '2017-10-04', 0, 100, 'active', 'fuel', 'liters'),
('94f6d3be-aa40-c800-02c7-59d373af2ff6', 'test', '2017-10-03 11:24:38', '2017-10-03 12:04:56', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Good', NULL, '0.000000', '-99', '0.000000', '0.000000', NULL, '', NULL, '', NULL, NULL, NULL, '2017-10-03', 0, 200, 'active', 'fuel', 'name'),
('952151a3-60a8-2c53-3404-59d48521121c', 'Талон на бензин AИ 92', '2017-10-04 06:53:20', '2017-10-04 07:49:54', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Good', '0.000000', '0.000000', '-99', '100.000000', '0.000000', NULL, '', NULL, '', NULL, NULL, NULL, '2017-10-04', NULL, NULL, 'active', 'fuel', 'name'),
('dd77710e-fd7e-fed7-124f-59d4802bb968', 'Товар топливо', '2017-10-04 06:31:51', '2017-10-04 06:31:51', '1', '1', NULL, 0, NULL, 'XXXX', NULL, NULL, 'Good', NULL, '0.000000', '-99', '0.000000', '0.000000', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'active', 'fuel', 'name'),
('ece2079a-b00c-3d10-7add-59d484650d4a', 'Услуга эвакуатора', '2017-10-04 06:49:05', '2017-10-04 07:59:53', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Service', '0.000000', '0.000000', '-99', '100.000000', '0.000000', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'fuel', 'pieces');

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_bh_case_compound_1_c`
--

CREATE TABLE `aos_products_bh_case_compound_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_products_bh_case_compound_1aos_products_ida` varchar(36) DEFAULT NULL,
  `aos_products_bh_case_compound_1bh_case_compound_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aow_actions`
--

INSERT INTO `aow_actions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aow_workflow_id`, `action_order`, `action`, `parameters`) VALUES
('280ff4cd-89b5-b420-dfff-59a5261360b0', '', '2017-08-29 08:31:46', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', 2, 'ComputeField', 'YTowOnt9'),
('528b2104-2fc8-62a2-37f1-59a50fb15435', '', '2017-08-29 06:52:26', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', 1, 'ComputeField', 'YTowOnt9');

-- --------------------------------------------------------

--
-- Структура таблицы `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aow_conditions`
--

INSERT INTO `aow_conditions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aow_workflow_id`, `condition_order`, `module_path`, `field`, `operator`, `value_type`, `value`) VALUES
('3effa725-ef2b-3b6e-479f-59a511522bc7', '', '2017-08-29 07:03:13', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', 1, 'YToxOntpOjA7czo1OiJMZWFkcyI7fQ==', 'date_birthday', 'Not_Equal_To', 'Value', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aow_processed`
--

INSERT INTO `aow_processed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aow_workflow_id`, `parent_id`, `parent_type`, `status`) VALUES
('1edc9e8b-8abd-5bf9-67db-59a51117fb40', '', '2017-08-29 07:04:13', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '832522a5-c2bf-1b3f-6541-59a50fc69935', 'Leads', 'Complete'),
('40a2bad3-9ea7-7ec2-8f19-59a51d73506a', '', '2017-08-29 07:53:15', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads', 'Complete'),
('680e21fc-44ad-cd67-4853-59a51d5bb53b', '', '2017-08-29 07:52:14', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads', 'Complete'),
('7a1e2aca-0bc4-19d3-3d73-59a5213298a1', '', '2017-08-29 08:12:21', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads', 'Complete'),
('89190cea-8ee6-6cc4-9691-59a5206e8d70', '', '2017-08-29 08:08:14', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads', 'Complete'),
('8c3c1372-7fe0-e5d7-8438-59a50facd03f', '', '2017-08-29 06:53:44', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '832522a5-c2bf-1b3f-6541-59a50fc69935', 'Leads', 'Complete'),
('a439039c-63f9-defc-dd20-59a5129b89fc', '', '2017-08-29 07:06:46', '2017-08-29 08:36:56', '1', '1', NULL, 0, '', '86bdbdc5-2a0a-fde9-d210-59a512d4d699', 'Leads', 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aow_processed_aow_actions`
--

INSERT INTO `aow_processed_aow_actions` (`id`, `aow_processed_id`, `aow_action_id`, `status`, `date_modified`, `deleted`) VALUES
('11de050a-31d4-8995-fb44-59a51146f403', '1edc9e8b-8abd-5bf9-67db-59a51117fb40', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 07:04:13', 0),
('1c6304d7-bfdb-026d-aa3e-59a5203c4785', '89190cea-8ee6-6cc4-9691-59a5206e8d70', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 08:08:14', 0),
('36d62996-dd60-ca01-3dc5-59a50f040f8b', '8c3c1372-7fe0-e5d7-8438-59a50facd03f', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 06:53:44', 0),
('3ddf5261-a244-b6da-01ae-59a51dd99603', '680e21fc-44ad-cd67-4853-59a51d5bb53b', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 07:52:14', 0),
('66a095d3-c4a9-2702-d643-59a5218290bd', '7a1e2aca-0bc4-19d3-3d73-59a5213298a1', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 08:12:21', 0),
('9c015e63-3f25-7aee-5b21-59a51d6a9585', '40a2bad3-9ea7-7ec2-8f19-59a51d73506a', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 07:53:15', 0),
('b7e2c548-6779-ff2a-944a-59a512ff0eda', 'a439039c-63f9-defc-dd20-59a5129b89fc', '528b2104-2fc8-62a2-37f1-59a50fb15435', 'Complete', '2017-08-29 07:06:46', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `asterisk_log`
--

CREATE TABLE `asterisk_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_master` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `call_record_id` char(36) DEFAULT NULL,
  `asterisk_id` varchar(45) DEFAULT NULL,
  `callstate` varchar(10) DEFAULT NULL,
  `uistate` varchar(10) DEFAULT NULL,
  `callerID` varchar(45) DEFAULT NULL,
  `channel` varchar(30) DEFAULT NULL,
  `remote_channel` varchar(30) DEFAULT NULL,
  `timestamp_call` datetime DEFAULT NULL,
  `timestamp_link` datetime DEFAULT NULL,
  `timestamp_hangup` datetime DEFAULT NULL,
  `direction` varchar(1) DEFAULT NULL,
  `asterisk_dest_id` varchar(45) DEFAULT NULL,
  `opencnam` varchar(16) DEFAULT NULL,
  `answered` tinyint(1) DEFAULT '0',
  `user_extension` varchar(16) DEFAULT NULL,
  `user_device` varchar(16) DEFAULT NULL,
  `inbound_extension` varchar(16) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_name` char(50) DEFAULT NULL,
  `bean_link` char(255) DEFAULT NULL,
  `bean_description` text,
  `parent_module` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_name` char(50) DEFAULT NULL,
  `parent_link` char(255) DEFAULT NULL,
  `push_sent` tinyint(4) DEFAULT '0',
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `asterisk_log`
--

INSERT INTO `asterisk_log` (`id`, `is_master`, `call_record_id`, `asterisk_id`, `callstate`, `uistate`, `callerID`, `channel`, `remote_channel`, `timestamp_call`, `timestamp_link`, `timestamp_hangup`, `direction`, `asterisk_dest_id`, `opencnam`, `answered`, `user_extension`, `user_device`, `inbound_extension`, `bean_module`, `bean_id`, `bean_name`, `bean_link`, `bean_description`, `parent_module`, `parent_id`, `parent_name`, `parent_link`, `push_sent`, `contact_id`) VALUES
(85, 0, NULL, '1506678570.11', 'Hangup', NULL, '0937795618', 'SIP/3331-0000000b', NULL, '2017-09-29 09:49:41', NULL, '2017-09-29 09:50:15', 'O', NULL, NULL, 0, '3331', NULL, NULL, 'leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Валера', 'http://crm/index.php?module=Leads&action=DetailView&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(86, 0, NULL, '1506678648.12', 'Hangup', NULL, '0937795618', 'SIP/3331-0000000c', NULL, '2017-09-29 09:50:59', NULL, '2017-09-29 09:51:16', 'O', NULL, NULL, 0, '3331', NULL, NULL, 'leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Валера', 'http://crm/index.php?module=Leads&action=DetailView&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(87, 0, NULL, '1506678727.15', 'Hangup', NULL, '3330', 'SIP/3331-0000000f', NULL, '2017-09-29 09:52:18', NULL, '2017-09-29 09:52:32', 'O', NULL, NULL, 0, '3331', NULL, NULL, 'leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Валера', 'http://crm/index.php?module=Leads&action=DetailView&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `banks`
--

CREATE TABLE `banks` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `edrpou` varchar(8) NOT NULL DEFAULT '0',
  `mfo` varchar(6) NOT NULL DEFAULT '0',
  `jur_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banks`
--

INSERT INTO `banks` (`id`, `name`, `edrpou`, `mfo`, `jur_address`) VALUES
(149, 'АБ \"ЕКСПРЕС-БАНК\"', '20053145', '322959', 'м. Київ Повітрофлотський проспект, 25'),
(150, 'АБ \"КЛІРИНГОВИЙ ДІМ\"', '21665382', '300647', 'м. Київ вул.Борисоглібська, буд.5,  літера А.'),
(151, 'АБ \"УКРГАЗБАНК\"', '23697280', '320478', 'м. Київ вул. Єреванська, 1'),
(152, 'АКБ \"ІНДУСТРІАЛБАНК\"', '13857564', '313849', 'м. Запоріжжя вул. Незалежної України, 39 Д'),
(153, 'Акціонерний банк \"Південний\"', '20953647', '328209', 'м. Одеса вул. Краснова, 6/1'),
(154, 'АТ \"АЛЬТБАНК\"', '19358784', '320940', 'м. Київ вул. Вузівська, 5'),
(155, 'АТ \"БАНК БОГУСЛАВ\"', '34540113', '380322', 'м. Київ вул. Нижньоюрківська, 81'),
(156, 'АТ \"БМ БАНК\"', '33881201', '380913', 'м. Київ бульвар Тараса Шевченка, буд. 37/122'),
(157, 'АТ \"КІБ\"', '21580639', '322540', 'м. Київ вул. Бульварно-Кудрявська, 6'),
(158, 'АТ \"МетаБанк\"', '20496061', '313582', 'м. Запоріжжя пр. Металургів, 30'),
(159, 'АТ \"Місто Банк\"', '20966466', '328760', 'м. Одеса вул. Фонтанська дорога,11'),
(160, 'АТ \"ОТП БАНК\"', '21685166', '300528', 'м. Київ вул. Жилянська, 43'),
(161, 'АТ \"Ощадбанк\"', '00032129', '300465', 'м. Київ вул. Госпітальна, 12г'),
(162, 'АТ \"ПІРЕУС БАНК МКБ\"', '20034231', '300658', 'м. Київ вул. Іллінська, 8'),
(163, 'АТ \"ПРОКРЕДИТ БАНК\"', '21677333', '320984', 'м. Київ проспект Перемоги, 107-А'),
(164, 'АТ (публ.) \"Український банк реконструкції та розвитку\"', '26520688', '380883', 'м. Київ вул. Олексія Терьохіна, 4'),
(165, 'АТ \"Райффайзен Банк Аваль\"', '14305909', '300335', 'м. Київ вулиця Лєскова, буд. 9'),
(166, 'АТ \"ТАСКОМБАНК\"', '09806443', '339500', 'м. Київ вул. Симона Петлюри, 30'),
(167, 'АТ \"УКРБУДІНВЕСТБАНК\"', '26547581', '380377', 'м. Київ бул.Лесі Українки, 30-в'),
(168, 'АТ \"Укрексімбанк\"', '00032112', '322313', 'м. Київ вул. Антоновича, 127'),
(169, 'АТ \"УкрСиббанк\"', '09807750', '351005', 'м. Київ вулиця Андріївська, 2/12'),
(170, 'ПАT \"ІНГ Банк Україна\"', '21684818', '300539', 'м. Київ вул. Спаська, 30-А'),
(171, 'ПАТ \"А - БАНК\"', '14360080', '307770', 'м. Дніпро вул. Батумська, 11'),
(172, 'ПАТ \"АБ \"РАДАБАНК\"', '21322127', '306500', 'м. Дніпро проспект Олександра Поля, буд. 46'),
(173, 'ПАТ \"Айбокс Банк\"', '21570492', '322302', 'м. Київ вул. Ділова, 9а'),
(174, 'ПАТ АКБ \"АРКАДА\"', '19361386', '322335', 'м. Київ вул. Ольгинська, 3'),
(175, 'ПАТ \"АКБ \"КОНКОРД\"', '34514392', '307350', 'м. Дніпро площа Троїцька, 2'),
(176, 'ПАТ АКБ \"Львів\"', '09801546', '325268', 'м. Львів вул.Сербська, 1'),
(177, 'ПАТ \"АКБ \"Траст-капітал\"', '26519933', '380106', 'м. Київ вул.Підвисоцького, буд. №7'),
(178, 'ПАТ \"АЛЬПАРІ БАНК\"', '38377143', '380894', 'м. Київ вул. Тарасівська, б. 19'),
(179, 'ПАТ \"АЛЬФА-БАНК\"', '23494714', '300346', 'м. Київ вулиця Десятинна, 4/6'),
(180, 'ПАТ \"АП БАНК\"', '35590956', '380548', 'м. Київ вул. Дегтярівська, буд. 27-Т (літера А)'),
(181, 'ПАТ \"АПЕКС-БАНК\"', '36482677', '380720', 'м. Київ вул. Печерська, буд. 2/16'),
(182, 'ПАТ \"АСВІО БАНК\"', '09809192', '353489', 'м. Чернігів вул. Преображенська, 2 (04080, Київ, Фрунзе, 104)'),
(183, 'ПАТ \"БАНК АВАНГАРД\"', '38690683', '380946', 'м. Київ вулиця Шолуденка, будинок 3'),
(184, 'ПАТ \"БАНК АЛЬЯНС\"', '14360506', '300119', 'м. Київ вулиця Січових Стрільців, будинок 50'),
(185, 'ПАТ \"БАНК ВОСТОК\"', '26237202', '307123', 'м. Дніпропетровськ вул.Курсантська, 24'),
(186, 'ПАТ \"БАНК \"ГРАНТ\"', '14070197', '351607', 'м. Харків вулиця Данилевського, 19'),
(187, 'ПАТ \"БАНК ІНВЕСТИЦІЙ ТА ЗАОЩАДЖЕНЬ\"', '33695095', '380281', 'м. Київ вул. Мельникова, 83-д'),
(188, 'ПАТ \"БАНК КРЕДИТ ДНІПРО\"', '14352406', '305749', 'м. Київ вул. Мечникова, буд.3'),
(189, 'ПАТ \"БАНК \"ПОРТАЛ\"', '38870739', '339016', 'м. Київ проспект Перемоги, будинок 5А'),
(190, 'ПАТ \"БАНК СІЧ\"', '37716841', '380816', 'м. Київ вул. Володимирська, б. 63'),
(191, 'ПАТ \"БАНК \"УКРАЇНСЬКИЙ КАПІТАЛ\"', '22868414', '320371', 'м. Київ просп. Перемоги, 67'),
(192, 'ПАТ \"БАНК ФАМІЛЬНИЙ\"', '20042839', '334840', 'м. Київ Голосіївський проспект, будинок 26-а'),
(193, 'ПАТ \"БАНК ФОРВАРД\"', '34186061', '380418', 'м. Київ вул. Саксаганського, будинок 105.'),
(194, 'ПАТ \"БАНК 3/4\"', '36002395', '380645', 'м. Київ вул. Кирилівська, 25'),
(195, 'ПАТ \"БТА БАНК\"', '14359845', '321723', 'м. Київ вул. Жилянська, 75'),
(196, 'ПАТ \"ВЕРНУМ БАНК\"', '36301800', '380689', 'м. Київ проспект Гагаріна Юрія, 17в'),
(197, 'ПАТ \"ВіЕс Банк\"', '19358632', '325213', 'м. Львів вул. Грабовського, 11'),
(198, 'ПАТ \"ВТБ БАНК\"', '14359319', '321767', 'м. Київ б-р Т. Шевченка/вул. Пушкінська, б. 8/26'),
(199, 'ПАТ \"ДІВІ БАНК\"', '37572263', '380827', 'м. Київ вул. Ігорівська/Набережно-Хрещатицька, 13/5 (літ. А)'),
(200, 'ПАТ \"Дойче Банк ДБУ\"', '36520434', '380731', 'м. Київ вул. Лаврська, буд. 20'),
(201, 'ПАТ \"ЄВРОПРОМБАНК\"', '36061927', '377090', 'м. Київ бульвар Шевченка Тараса, будинок 11, приміщення 51.'),
(202, 'ПАТ \"Ідея Банк\"', '19390819', '336310', 'м. Львів вул. Валова,11'),
(203, 'ПАТ \"КБ \"ГЛОБУС\"', '35591059', '380526', 'м. Київ пров.Куренівський, б.19/5'),
(204, 'ПАТ \"КБ \"ЗЕМЕЛЬНИЙ КАПІТАЛ\"', '20280450', '305880', 'м. Дніпро проспект Пушкіна, 15'),
(205, 'ПАТ КБ \"ПРИВАТБАНК\"', '14360570', '305299', 'м. Київ вул. Грушевського, 1Д'),
(206, 'ПАТ КБ \"Центр\"', '37119553', '380742', 'м. Київ вул. Раїси Окіпної, будинок 8А'),
(207, 'ПАТ \"КОМІНВЕСТБАНК\"', '19355562', '312248', 'м. Ужгород вул. Юрія Гойди, 10'),
(208, 'ПАТ \"КРЕДИТ ЄВРОПА БАНК\"', '34576883', '380366', 'м. Київ вул. Мечнікова, буд.2'),
(209, 'ПАТ \"КРЕДИТ ОПТИМА БАНК\"', '34819265', '380571', 'м. Київ вул. Дмитрівська, буд.69'),
(210, 'ПАТ \"КРЕДИТВЕСТ БАНК\"', '34575675', '380441', 'м. Київ вул. Леонтовича, 4, літера \"А, А1\"'),
(211, 'ПАТ \"КРЕДІ АГРІКОЛЬ БАНК\"', '14361575', '300614', 'м. Київ вул. Пушкінська, 42/4'),
(212, 'ПАТ \"КРЕДОБАНК\"', '09807862', '325365', 'м. Львів вул. Сахарова, 78'),
(213, 'ПАТ \"КРИСТАЛБАНК\"', '39544699', '339050', 'м. Київ вулиця Кудрявський узвіз, 2'),
(214, 'ПАТ \"МАРФІН БАНК\"', '21650966', '328168', 'м. Чорноморськ проспект Миру, 28'),
(215, 'ПАТ \"МЕГАБАНК\"', '09804119', '351629', 'м. Харків вул. Алчевських, 30'),
(216, 'ПАТ \"МІБ\"', '35810511', '380582', 'м. Київ вул. Лаврська, 16'),
(217, 'ПАТ \"МОТОР-БАНК\"', '35345213', '313009', 'м. Запоріжжя проспект Моторобудівників, буд. 54 `Б`'),
(218, 'ПАТ \"ОКСІ БАНК\"', '09306278', '325990', 'м. Львів вул. Газова, 17'),
(219, 'ПАТ \"ПЕРШИЙ ІНВЕСТИЦІЙНИЙ БАНК\"', '26410155', '300506', 'м. Київ площа Перемоги, 1'),
(220, 'ПАТ \"Полтава-банк\"', '09807595', '331489', 'м. Полтава вул. Пилипа Орлика, 40-а'),
(221, 'ПАТ \"Промінвестбанк\"', '00039002', '300012', 'м. Київ пpовулок Шевченка, 12'),
(222, 'ПАТ \"ПУМБ\"', '14282829', '334851', 'м. Київ вул. Андріївська, 4'),
(223, 'ПАТ \"ПФБ\"', '25292831', '331768', 'м. Кременчук кварт. 278, буд. 22-Б'),
(224, 'ПАТ \"РВС БАНК\"', '39849797', '339072', 'м. Київ вулиця Введенська, будинок 29/58'),
(225, 'ПАТ \"РОЗРАХУНКОВИЙ ЦЕНТР\"', '35917889', '344443', 'м. Київ вул. Тропініна, 7-Г'),
(226, 'ПАТ \"СБЕРБАНК\"', '25959784', '320627', 'м. Київ вул. Володимирська, буд.46'),
(227, 'ПАТ \"СЕБ КОРПОРАТИВНИЙ БАНК\"', '37515069', '380797', 'м. Київ вул. Михайлівська, 7'),
(228, 'ПАТ \"СІТІБАНК\"', '21685485', '300584', 'м. Київ вул. Ділова, 16-Г'),
(229, 'ПАТ \"СКАЙ БАНК\"', '09620081', '351254', 'м. Київ вул. Гончара Олеся, буд. 76/2'),
(230, 'ПАТ \"УКРСОЦБАНК\"', '00039019', '300023', 'м. Київ вул. Ковпака, 29'),
(231, 'ПАТ \"УНІВЕРСАЛ БАНК\"', '21133352', '322001', 'м. Київ вул. Автозаводська, 54/19'),
(232, 'ПАТ \"ЮНЕКС БАНК\"', '20023569', '322539', 'м. Київ вул. Почайнинська, 38'),
(233, 'ПАТКБ \"ПРАВЕКС-БАНК\"', '14360920', '380838', 'м. Київ вул. Кловський узвіз, 9/2'),
(234, 'Полікомбанк', '19356610', '353100', 'м. Чернігів вул. О. Молодчого, буд. 46'),
(235, 'ПуАТ \"КБ \"АКОРДБАНК\"', '35960913', '380634', 'м. Київ вул.Стеценко, буд. 6');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_autotransport`
--

CREATE TABLE `bh_autotransport` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `autotransport_type` varchar(255) DEFAULT NULL,
  `autotransport_fuel_type` varchar(255) DEFAULT NULL,
  `autotransport_purchase_methods` varchar(255) DEFAULT NULL,
  `autotransport_own_type` varchar(255) DEFAULT NULL,
  `autotransport_owner_pledge` tinyint(1) DEFAULT '0',
  `autotransport_issue_year` int(11) DEFAULT NULL,
  `autotransport_engine_capacity` float DEFAULT NULL,
  `autotransport_model` varchar(255) DEFAULT NULL,
  `autotransport_model_mark` varchar(255) DEFAULT NULL,
  `autotransport_another_model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_autotransport`
--

INSERT INTO `bh_autotransport` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `autotransport_type`, `autotransport_fuel_type`, `autotransport_purchase_methods`, `autotransport_own_type`, `autotransport_owner_pledge`, `autotransport_issue_year`, `autotransport_engine_capacity`, `autotransport_model`, `autotransport_model_mark`, `autotransport_another_model`) VALUES
('35a4e2aa-5dc6-d455-e9e9-59c21d48be24', 'Авто', '2017-09-20 07:48:55', '2017-09-20 07:48:55', '1', '1', 'авто', 0, '1', 'car', 'diesel', 'inheritance', 'single', 0, 0, 0, 'audi', '', ''),
('4ead9f49-d87b-7fe5-c730-59cc9c77c36a', 'Клиент Валера BMW 720i', '2017-09-28 06:52:14', '2017-10-04 12:00:38', '1', '1', 'Клиент Валера', 0, '', 'car', 'diesel', 'inheritance', 'single', 0, 0, 3.5, 'bmw', '720i', NULL),
('4fc0c7e0-08e2-cc2b-20b7-59b900899d00', 'Авто1', '2017-09-13 09:55:29', '2017-09-13 09:55:29', '1', '1', '', 0, '1', 'car', 'diesel', 'inheritance', 'single', 0, 0, 0, 'audi', '', ''),
('9baff353-0cb6-4435-6a1f-59cc9c9d4fcc', '', '2017-09-28 06:53:32', '2017-09-28 06:53:32', '1', '1', NULL, 0, NULL, 'car', 'diesel', 'inheritance', NULL, 0, 2011, 3.5, 'audi', 'GLE', '');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_autotransport_audit`
--

CREATE TABLE `bh_autotransport_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_campaine_products`
--

CREATE TABLE `bh_campaine_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_campaine_products`
--

INSERT INTO `bh_campaine_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('370e7ee5-9fc1-cd14-8b2d-59d36f14c292', 'Продукт 1', '2017-10-03 11:08:07', '2017-10-04 11:14:20', '1', '1', 'Продукт 1', 0, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_campaine_products_aos_products_1_c`
--

CREATE TABLE `bh_campaine_products_aos_products_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_campaine_products_aos_products_1bh_campaine_products_ida` varchar(36) DEFAULT NULL,
  `bh_campaine_products_aos_products_1aos_products_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_campaine_products_aos_products_1_c`
--

INSERT INTO `bh_campaine_products_aos_products_1_c` (`id`, `date_modified`, `deleted`, `bh_campaine_products_aos_products_1bh_campaine_products_ida`, `bh_campaine_products_aos_products_1aos_products_idb`) VALUES
('467c24ba-618b-6c0d-5c5f-59d4a6bc56fd', '2017-10-04 09:15:29', 0, '370e7ee5-9fc1-cd14-8b2d-59d36f14c292', '379778c7-a5c6-67e5-ebc4-59d4a63f0710'),
('beedb40c-0d03-c63a-97f0-59d4a6c6a151', '2017-10-04 09:13:33', 0, '370e7ee5-9fc1-cd14-8b2d-59d36f14c292', 'dd77710e-fd7e-fed7-124f-59d4802bb968'),
('d76764ed-9e8a-b405-8893-59d4c227f0e0', '2017-10-04 11:13:49', 0, '370e7ee5-9fc1-cd14-8b2d-59d36f14c292', '952151a3-60a8-2c53-3404-59d48521121c'),
('e63dfc05-8529-bde6-6ff9-59d4c2014da1', '2017-10-04 11:14:20', 0, '370e7ee5-9fc1-cd14-8b2d-59d36f14c292', '22328d1a-9962-3f5e-3618-59d485e104eb');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_campaine_products_audit`
--

CREATE TABLE `bh_campaine_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_card_ident`
--

CREATE TABLE `bh_card_ident` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `date_vidachi` date DEFAULT NULL,
  `date_activation` datetime DEFAULT NULL,
  `card_status` varchar(255) DEFAULT NULL,
  `pin_status` varchar(255) DEFAULT NULL,
  `block_reason` varchar(255) DEFAULT NULL,
  `secret_word` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_card_ident`
--

INSERT INTO `bh_card_ident` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `date_vidachi`, `date_activation`, `card_status`, `pin_status`, `block_reason`, `secret_word`) VALUES
('3bd563c6-65dc-e97a-3cfc-59b64503040f', '23434423422323', '2017-09-11 08:10:39', '2017-10-05 06:51:58', '1', '1', NULL, 0, '1', '2017-09-06', NULL, 'active', 'active', 'by_client', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_card_ident_audit`
--

CREATE TABLE `bh_card_ident_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_card_ident_leads_c`
--

CREATE TABLE `bh_card_ident_leads_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_card_ident_leadsbh_card_ident_ida` varchar(36) DEFAULT NULL,
  `bh_card_ident_leadsleads_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_card_ident_leads_c`
--

INSERT INTO `bh_card_ident_leads_c` (`id`, `date_modified`, `deleted`, `bh_card_ident_leadsbh_card_ident_ida`, `bh_card_ident_leadsleads_idb`) VALUES
('494317ac-1862-8f8e-8f5f-59b645d7ff7f', '2017-09-11 08:10:39', 0, '3bd563c6-65dc-e97a-3cfc-59b64503040f', '1a850344-233e-e32f-fe21-59b10fc56fe1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_cases_log`
--

CREATE TABLE `bh_cases_log` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_channel` varchar(15) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `finish` datetime DEFAULT NULL,
  `comment` text,
  `case_status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_cases_log`
--

INSERT INTO `bh_cases_log` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_channel`, `start`, `finish`, `comment`, `case_status`) VALUES
('35e9cdfc-a364-d2d0-5521-59ba8e52b293', 'Обращение 1', '2017-09-14 14:14:12', '2017-09-15 13:05:38', '1', '1', 'описание', 0, '1', 'skype', '2017-09-08 08:00:00', '2017-09-05 08:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_cases_log_audit`
--

CREATE TABLE `bh_cases_log_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_case_compound`
--

CREATE TABLE `bh_case_compound` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_case_compound`
--

INSERT INTO `bh_case_compound` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('a79292fc-f0e5-d67a-46f2-59bbc2dbe213', 'название', '2017-09-15 12:08:49', '2017-09-15 12:08:49', '1', '1', 'описание', 0, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_case_compound_audit`
--

CREATE TABLE `bh_case_compound_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_case_status`
--

CREATE TABLE `bh_case_status` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_case_status`
--

INSERT INTO `bh_case_status` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('b218abce-875b-1147-18da-59bbc25e06ea', 'статус 1', '2017-09-15 12:05:21', '2017-09-15 12:05:21', '1', '1', 'описание', 0, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_case_status_audit`
--

CREATE TABLE `bh_case_status_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_category_at_work`
--

CREATE TABLE `bh_category_at_work` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_category_at_work_audit`
--

CREATE TABLE `bh_category_at_work_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_category_at_work_bh_place_of_work_1_c`
--

CREATE TABLE `bh_category_at_work_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida` varchar(36) DEFAULT NULL,
  `bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_channels_impact`
--

CREATE TABLE `bh_channels_impact` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `channel_impact` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_channels_impact`
--

INSERT INTO `bh_channels_impact` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `channel_impact`) VALUES
('6f216cb1-9775-2242-895d-59d363d9bfa1', 'Канал 1', '2017-10-03 10:17:54', '2017-10-03 10:38:54', '1', '1', 'описание', 0, '1', 'name1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_channels_impact_audit`
--

CREATE TABLE `bh_channels_impact_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_communicators`
--

CREATE TABLE `bh_communicators` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `communicator` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_communicators`
--

INSERT INTO `bh_communicators` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `communicator`) VALUES
('60cc4274-135d-7edf-ffeb-59ca0b4eeb6a', '12', '2017-09-26 08:11:17', '2017-09-26 13:49:32', '1', '1', NULL, 0, '1', '12^,^1^,^0^,^transborder^,^12');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_communicators_audit`
--

CREATE TABLE `bh_communicators_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_communicators_audit`
--

INSERT INTO `bh_communicators_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('3699069d-9d64-65f7-76f0-59ca0f088d31', '60cc4274-135d-7edf-ffeb-59ca0b4eeb6a', '2017-09-26 08:26:13', '1', 'communicator', 'MultiTextField', '12^,^1^,^0^,^viber^,^12^|^Balabool^,^0^,^0^,^whatsapp^,^', '', NULL, NULL),
('37502e81-6c7c-35b4-7e38-59ca0d9e3d06', '60cc4274-135d-7edf-ffeb-59ca0b4eeb6a', '2017-09-26 08:17:51', '1', 'communicator', 'MultiTextField', '12^,^1^,^0^,^viber^,^12', '12^,^1^,^0^,^viber^,^12^|^Balabool^,^0^,^0^,^whatsapp^,^', NULL, NULL),
('4fdec209-0bde-68e7-67b7-59ca0f9cbe8d', '60cc4274-135d-7edf-ffeb-59ca0b4eeb6a', '2017-09-26 08:26:54', '1', 'communicator', 'MultiTextField', '', 'book^,^1^,^0^,^facebook^,^^|^Vasya^,^0^,^0^,^viber^,^', NULL, NULL),
('8823134b-70ed-b6ba-b987-59ca5916d8c2', '60cc4274-135d-7edf-ffeb-59ca0b4eeb6a', '2017-09-26 13:42:09', '1', 'communicator', 'MultiTextField', '12^,^1^,^0^,^viber^,^12', '12^,^1^,^0^,^transborder^,^12', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_communicators_cstm`
--

CREATE TABLE `bh_communicators_cstm` (
  `id_c` char(36) NOT NULL,
  `ggg_c` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_contact_person`
--

CREATE TABLE `bh_contact_person` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_contact_person_audit`
--

CREATE TABLE `bh_contact_person_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_country`
--

CREATE TABLE `bh_country` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_country`
--

INSERT INTO `bh_country` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('7cb164fe-204f-dfc2-8436-59c4b39d584e', 'Украина', '2017-09-22 06:53:36', '2017-09-22 07:36:13', '1', '1', NULL, 0, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_country_audit`
--

CREATE TABLE `bh_country_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_country_bh_region_1_c`
--

CREATE TABLE `bh_country_bh_region_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_country_bh_region_1bh_country_ida` varchar(36) DEFAULT NULL,
  `bh_country_bh_region_1bh_region_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_country_bh_region_1_c`
--

INSERT INTO `bh_country_bh_region_1_c` (`id`, `date_modified`, `deleted`, `bh_country_bh_region_1bh_country_ida`, `bh_country_bh_region_1bh_region_idb`) VALUES
('3066246d-83ec-d923-6e44-59c4bd69712b', '2017-09-22 07:36:13', 0, '7cb164fe-204f-dfc2-8436-59c4b39d584e', '125bb334-314b-ef8b-a4a1-59c4bce5e0a3'),
('6e63479b-b122-d750-0bac-59c4bd58ba9d', '2017-09-22 07:35:38', 0, '7cb164fe-204f-dfc2-8436-59c4b39d584e', '74d3318e-642d-dc11-a2c6-59c4bc72eb7f'),
('85c0be01-2017-a3a2-7e93-59c4bd9ff259', '2017-09-22 07:37:00', 0, '7cb164fe-204f-dfc2-8436-59c4b39d584e', '7b8021e0-a18c-0a7c-68c2-59c4bd44a93f');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_faq`
--

CREATE TABLE `bh_faq` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `element_content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_faq`
--

INSERT INTO `bh_faq` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `element_content`) VALUES
('afeac37e-153a-349b-061e-59b78ce04a05', 'Как правильно заинтересовать клиента', '2017-09-12 07:27:42', '2017-09-12 12:44:01', '1', '1', NULL, 0, '1', 'question');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_faq_audit`
--

CREATE TABLE `bh_faq_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_faq_history`
--

CREATE TABLE `bh_faq_history` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `redact_content` text,
  `date_redact` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_faq_history`
--

INSERT INTO `bh_faq_history` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `redact_content`, `date_redact`) VALUES
('7a4f1e1a-79b3-d870-ac7c-59b78ca84ed6', 'Правильно заинтересовывать так', '2017-09-12 07:29:17', '2017-09-12 12:46:44', '1', '1', 'ывпаыыкефкфцук', 0, '1', 'Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:', '2017-09-08');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_faq_history_audit`
--

CREATE TABLE `bh_faq_history_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_faq_history_bh_faq_c`
--

CREATE TABLE `bh_faq_history_bh_faq_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_faq_history_bh_faqbh_faq_ida` varchar(36) DEFAULT NULL,
  `bh_faq_history_bh_faqbh_faq_history_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_faq_history_bh_faq_c`
--

INSERT INTO `bh_faq_history_bh_faq_c` (`id`, `date_modified`, `deleted`, `bh_faq_history_bh_faqbh_faq_ida`, `bh_faq_history_bh_faqbh_faq_history_idb`) VALUES
('7fae2b70-5790-5dc0-7945-59b78cc68eb8', '2017-09-12 07:29:17', 0, 'afeac37e-153a-349b-061e-59b78ce04a05', '7a4f1e1a-79b3-d870-ac7c-59b78ca84ed6');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_formed_packets`
--

CREATE TABLE `bh_formed_packets` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `activate_date` date DEFAULT NULL,
  `packet_sum` int(11) DEFAULT NULL,
  `packet_quantity` int(11) DEFAULT NULL,
  `packet_validity` int(11) DEFAULT NULL,
  `packet_list` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_formed_packets`
--

INSERT INTO `bh_formed_packets` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `activate_date`, `packet_sum`, `packet_quantity`, `packet_validity`, `packet_list`) VALUES
('2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', 'Пакет 1', '2017-09-15 11:26:40', '2017-10-04 06:46:43', '1', '1', 'qweqwe', 0, '1', '2017-09-13', 6545, 1321312, 23, 'key'),
('d83562f1-dbef-4974-fa5b-59d4957ad3fc', 'Пакет 2', '2017-10-04 08:02:19', '2017-10-04 08:02:19', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL),
('f3d20d02-cabe-a079-6b45-59d496d392f4', 'Пакет 3', '2017-10-04 08:07:48', '2017-10-04 08:09:06', '1', '1', NULL, 0, '1', '2017-10-04', 0, 0, 0, 'key');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_formed_packets_aos_products_1_c`
--

CREATE TABLE `bh_formed_packets_aos_products_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_formed_packets_aos_products_1bh_formed_packets_ida` varchar(36) DEFAULT NULL,
  `bh_formed_packets_aos_products_1aos_products_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_formed_packets_aos_products_1_c`
--

INSERT INTO `bh_formed_packets_aos_products_1_c` (`id`, `date_modified`, `deleted`, `bh_formed_packets_aos_products_1bh_formed_packets_ida`, `bh_formed_packets_aos_products_1aos_products_idb`) VALUES
('27149560-c5c8-31e1-61c4-59d48590af3b', '2017-10-04 06:54:51', 0, '2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', '22328d1a-9962-3f5e-3618-59d485e104eb'),
('28027aa2-5b2e-6c78-79ee-59d484c01401', '2017-10-04 06:47:48', 0, '2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', '22a362ec-05d2-bd7a-fe35-59d484983668'),
('77f5fe9b-8b54-e83b-9600-59d497261920', '2017-10-04 08:08:40', 0, 'f3d20d02-cabe-a079-6b45-59d496d392f4', '22328d1a-9962-3f5e-3618-59d485e104eb'),
('9a036ecd-8e47-b417-7d33-59d485eb58bb', '2017-10-04 06:53:20', 0, '2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', '952151a3-60a8-2c53-3404-59d48521121c'),
('d0f3b8ab-5d13-5c3b-4916-59d49776bd0e', '2017-10-04 08:09:06', 0, 'f3d20d02-cabe-a079-6b45-59d496d392f4', 'ece2079a-b00c-3d10-7add-59d484650d4a'),
('de8e74de-1950-78c4-6d5c-59d495c7e473', '2017-10-04 08:02:19', 0, 'd83562f1-dbef-4974-fa5b-59d4957ad3fc', 'ece2079a-b00c-3d10-7add-59d484650d4a'),
('e61c8de3-1c62-84a4-1e7b-59d49761b50e', '2017-10-04 08:11:20', 0, 'd83562f1-dbef-4974-fa5b-59d4957ad3fc', '22328d1a-9962-3f5e-3618-59d485e104eb'),
('f1c418d8-fb80-731f-93b5-59d484f0ef6f', '2017-10-04 06:49:05', 0, '2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', 'ece2079a-b00c-3d10-7add-59d484650d4a');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_formed_packets_audit`
--

CREATE TABLE `bh_formed_packets_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_formed_packets_bh_packet_activation_1_c`
--

CREATE TABLE `bh_formed_packets_bh_packet_activation_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida` varchar(36) DEFAULT NULL,
  `bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_formed_packets_bh_packet_activation_1_c`
--

INSERT INTO `bh_formed_packets_bh_packet_activation_1_c` (`id`, `date_modified`, `deleted`, `bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida`, `bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb`) VALUES
('15b0b848-2857-a4f7-1bce-59d487ca60c1', '2017-10-04 07:04:24', 0, '2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', '2905487e-f13a-594a-6d2f-59bb73118e66');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_lead_adress`
--

CREATE TABLE `bh_lead_adress` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `house_block` varchar(255) DEFAULT NULL,
  `ap_num` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `date_of_stay` date DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `adress_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_lead_adress`
--

INSERT INTO `bh_lead_adress` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `house`, `house_block`, `ap_num`, `register_date`, `date_of_stay`, `post_code`, `adress_type`) VALUES
('71b9c3fb-17fe-fb62-95b1-59c4ca9a4524', '', '2017-09-22 08:33:02', '2017-09-22 08:33:02', '1', '1', NULL, 0, NULL, '', '', '', NULL, NULL, '', 'fact'),
('a4083cbf-858f-e628-b24b-59c4cafc804b', '', '2017-09-22 08:31:42', '2017-09-22 08:31:42', '1', '1', NULL, 0, NULL, '', '', '', NULL, NULL, '', 'register'),
('cdfe0480-e6e6-db79-ad5f-59c258a02b61', 'Адр', '2017-09-20 12:00:28', '2017-09-20 12:17:01', '1', '1', NULL, 0, '', '5', 'А', '211', '2017-09-16', '2017-09-01', '123455', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_lead_adress_audit`
--

CREATE TABLE `bh_lead_adress_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_lead_adress_bh_country_1_c`
--

CREATE TABLE `bh_lead_adress_bh_country_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_country_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_country_1bh_country_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_lead_adress_bh_country_1_c`
--

INSERT INTO `bh_lead_adress_bh_country_1_c` (`id`, `date_modified`, `deleted`, `bh_lead_adress_bh_country_1bh_lead_adress_ida`, `bh_lead_adress_bh_country_1bh_country_idb`) VALUES
('88601e44-517f-f564-8760-59c4ca596f1b', '2017-09-22 08:33:02', 0, '71b9c3fb-17fe-fb62-95b1-59c4ca9a4524', '7cb164fe-204f-dfc2-8436-59c4b39d584e'),
('b387776a-a21a-55ad-457f-59c4cacc563f', '2017-09-22 08:33:02', 1, 'a4083cbf-858f-e628-b24b-59c4cafc804b', '7cb164fe-204f-dfc2-8436-59c4b39d584e');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_lead_adress_bh_locality_1_c`
--

CREATE TABLE `bh_lead_adress_bh_locality_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_locality_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_locality_1bh_locality_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_lead_adress_bh_region_1_c`
--

CREATE TABLE `bh_lead_adress_bh_region_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_region_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_region_1bh_region_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_lead_adress_bh_region_1_c`
--

INSERT INTO `bh_lead_adress_bh_region_1_c` (`id`, `date_modified`, `deleted`, `bh_lead_adress_bh_region_1bh_lead_adress_ida`, `bh_lead_adress_bh_region_1bh_region_idb`) VALUES
('c343c948-6948-307c-8728-59c4ca4d2603', '2017-09-22 08:31:42', 0, 'a4083cbf-858f-e628-b24b-59c4cafc804b', '125bb334-314b-ef8b-a4a1-59c4bce5e0a3');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_lead_adress_bh_region_area_1_c`
--

CREATE TABLE `bh_lead_adress_bh_region_area_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_region_area_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_region_area_1bh_region_area_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_lead_adress_bh_region_area_1_c`
--

INSERT INTO `bh_lead_adress_bh_region_area_1_c` (`id`, `date_modified`, `deleted`, `bh_lead_adress_bh_region_area_1bh_lead_adress_ida`, `bh_lead_adress_bh_region_area_1bh_region_area_idb`) VALUES
('d5dc8bd7-d1f5-3e85-fc1a-59c4ca075463', '2017-09-22 08:31:42', 0, 'a4083cbf-858f-e628-b24b-59c4cafc804b', '37131337-4145-92a7-41b3-59c4c6c0859d');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_locality`
--

CREATE TABLE `bh_locality` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_regional` tinyint(1) DEFAULT '0',
  `locality_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_locality_audit`
--

CREATE TABLE `bh_locality_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company`
--

CREATE TABLE `bh_marketing_company` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `company_status` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `marketing_offer` text,
  `impact_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company`
--

INSERT INTO `bh_marketing_company` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `start`, `end`, `company_status`, `company_type`, `marketing_offer`, `impact_type`) VALUES
('d431499d-a668-1db4-8b3d-59bf89d1ebb8', 'Маркетинговая Компания 1', '2017-09-18 08:53:02', '2017-10-04 11:39:19', '1', '1', NULL, 0, '1', '2017-09-09', '2017-09-01', 'active', 'first', '111111', 'segment');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_audit`
--

CREATE TABLE `bh_marketing_company_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_bh_campaine_products_1_c`
--

CREATE TABLE `bh_marketing_company_bh_campaine_products_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketi9abccompany_ida` varchar(36) DEFAULT NULL,
  `bh_marketi9283roducts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company_bh_campaine_products_1_c`
--

INSERT INTO `bh_marketing_company_bh_campaine_products_1_c` (`id`, `date_modified`, `deleted`, `bh_marketi9abccompany_ida`, `bh_marketi9283roducts_idb`) VALUES
('51a75c9e-e331-016b-6016-59d37128c50f', '2017-10-03 11:14:48', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', '370e7ee5-9fc1-cd14-8b2d-59d36f14c292');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_bh_channels_impact_1_c`
--

CREATE TABLE `bh_marketing_company_bh_channels_impact_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketid0c7company_ida` varchar(36) DEFAULT NULL,
  `bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company_bh_channels_impact_1_c`
--

INSERT INTO `bh_marketing_company_bh_channels_impact_1_c` (`id`, `date_modified`, `deleted`, `bh_marketid0c7company_ida`, `bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb`) VALUES
('25a8d2ad-5430-cdb6-f1ed-59d36587b533', '2017-10-03 10:24:55', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', '6f216cb1-9775-2242-895d-59d363d9bfa1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_bh_marketing_company_history_1_c`
--

CREATE TABLE `bh_marketing_company_bh_marketing_company_history_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketi1e9fcompany_ida` varchar(36) DEFAULT NULL,
  `bh_marketid398history_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company_bh_marketing_company_history_1_c`
--

INSERT INTO `bh_marketing_company_bh_marketing_company_history_1_c` (`id`, `date_modified`, `deleted`, `bh_marketi1e9fcompany_ida`, `bh_marketid398history_idb`) VALUES
('446461b6-509f-984d-1cc6-59d3515d504b', '2017-10-03 09:01:50', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', '61c060b8-0391-3e3c-a034-59bfa8231477');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_bh_marketing_directorate_1_c`
--

CREATE TABLE `bh_marketing_company_bh_marketing_directorate_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketia9b6company_ida` varchar(36) DEFAULT NULL,
  `bh_marketi618ectorate_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company_bh_marketing_directorate_1_c`
--

INSERT INTO `bh_marketing_company_bh_marketing_directorate_1_c` (`id`, `date_modified`, `deleted`, `bh_marketia9b6company_ida`, `bh_marketi618ectorate_idb`) VALUES
('dad9ba24-e2e0-f633-d68a-59d34ca4e646', '2017-10-03 08:39:29', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', 'ac2361ec-f3ca-1138-8d47-59c20de54bc1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_bh_marketing_response_1_c`
--

CREATE TABLE `bh_marketing_company_bh_marketing_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketi8c3ecompany_ida` varchar(36) DEFAULT NULL,
  `bh_marketi8b4desponse_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company_bh_marketing_response_1_c`
--

INSERT INTO `bh_marketing_company_bh_marketing_response_1_c` (`id`, `date_modified`, `deleted`, `bh_marketi8c3ecompany_ida`, `bh_marketi8b4desponse_idb`) VALUES
('3ce90e04-f846-50f0-8da2-59d35935731a', '2017-10-03 09:33:44', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', 'f34f076b-3745-ce6a-978c-59d359b4b094'),
('41a9674d-b650-2825-4b6f-59d34ff2d5bf', '2017-10-03 08:49:15', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', '39d947d8-fec3-148a-3c9a-59d34f872059'),
('9e3b9988-1675-dc4f-866a-59d49d5a233b', '2017-10-04 08:38:19', 0, 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', '7769832a-236d-bfbd-fcb6-59d49d972ed1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_history`
--

CREATE TABLE `bh_marketing_company_history` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `start_company` date DEFAULT NULL,
  `date_change` date DEFAULT NULL,
  `company_status` varchar(255) DEFAULT NULL,
  `company_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_company_history`
--

INSERT INTO `bh_marketing_company_history` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `start_company`, `date_change`, `company_status`, `company_end`) VALUES
('61c060b8-0391-3e3c-a034-59bfa8231477', 'Пам', '2017-09-18 11:04:59', '2017-10-03 09:01:50', '1', '1', NULL, 0, '1', '2017-09-21', '2017-09-01', 'active', '2017-09-12');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_company_history_audit`
--

CREATE TABLE `bh_marketing_company_history_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_directorate`
--

CREATE TABLE `bh_marketing_directorate` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `directorate_date` date DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_directorate`
--

INSERT INTO `bh_marketing_directorate` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `directorate_date`, `comment`) VALUES
('ac2361ec-f3ca-1138-8d47-59c20de54bc1', 'Список клиентов Компания 1', '2017-09-20 06:40:49', '2017-10-04 10:23:23', '1', '1', NULL, 0, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_directorate_audit`
--

CREATE TABLE `bh_marketing_directorate_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_directorate_leads_1_c`
--

CREATE TABLE `bh_marketing_directorate_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketing_directorate_leads_1bh_marketing_directorate_ida` varchar(36) DEFAULT NULL,
  `bh_marketing_directorate_leads_1leads_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_directorate_leads_1_c`
--

INSERT INTO `bh_marketing_directorate_leads_1_c` (`id`, `date_modified`, `deleted`, `bh_marketing_directorate_leads_1bh_marketing_directorate_ida`, `bh_marketing_directorate_leads_1leads_idb`) VALUES
('387e82f5-b4ea-d3f1-b79a-59d4b56f9785', '2017-10-04 10:20:40', 0, 'ac2361ec-f3ca-1138-8d47-59c20de54bc1', '1a850344-233e-e32f-fe21-59b10fc56fe1'),
('55e34938-6c89-ea1c-a75e-59d4b509aa86', '2017-10-04 10:17:17', 0, 'ac2361ec-f3ca-1138-8d47-59c20de54bc1', '15b2317d-5f17-b967-0f5d-59c3c87bbba0'),
('9aa5bead-8c67-c7e6-a121-59d4b430c53e', '2017-10-04 10:15:44', 0, 'ac2361ec-f3ca-1138-8d47-59c20de54bc1', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_response`
--

CREATE TABLE `bh_marketing_response` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `response_date` date DEFAULT NULL,
  `comment` text,
  `response_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_response`
--

INSERT INTO `bh_marketing_response` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `response_date`, `comment`, `response_type`) VALUES
('39d947d8-fec3-148a-3c9a-59d34f872059', 'отклик от клиента Test', '2017-10-03 08:49:15', '2017-10-04 10:26:27', '1', '1', NULL, 0, 'eff07114-603c-c0d2-0e5e-599bcd264773', '2017-10-03', NULL, 'positive'),
('7769832a-236d-bfbd-fcb6-59d49d972ed1', 'Отклик от клиента Валера', '2017-10-04 08:38:19', '2017-10-04 08:38:19', '1', '1', NULL, 0, '1', '2017-10-04', '', 'none'),
('aaf23322-06e2-0bb4-6a12-59bfbaae9ba1', 'Test', '2017-09-18 12:24:07', '2017-10-03 14:49:44', '1', '1', NULL, 1, '1', '2017-09-07', 'Comment', 'positive'),
('f34f076b-3745-ce6a-978c-59d359b4b094', 'отклик от клиента Администратор', '2017-10-03 09:33:44', '2017-10-03 09:33:44', '1', '1', NULL, 0, '1', '2017-10-04', '', 'negative');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_marketing_response_audit`
--

CREATE TABLE `bh_marketing_response_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_marketing_response_audit`
--

INSERT INTO `bh_marketing_response_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('a86d3743-2545-94eb-1be0-59d358a7df26', '39d947d8-fec3-148a-3c9a-59d34f872059', '2017-10-03 09:29:26', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_org`
--

CREATE TABLE `bh_org` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `legal_form` varchar(50) DEFAULT NULL,
  `org_size` varchar(50) DEFAULT NULL,
  `org_sphere` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_org`
--

INSERT INTO `bh_org` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `legal_form`, `org_size`, `org_sphere`) VALUES
('2553f09e-02ea-9028-fb5e-59b920e28d1c', 'Организация 1', '2017-09-13 12:10:28', '2017-09-13 12:31:44', '1', '1', 'уцффайфвцйукйццф', 0, '1', 'priventerprise', 'big', 'industry');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_org_audit`
--

CREATE TABLE `bh_org_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_org_bh_place_of_work_1_c`
--

CREATE TABLE `bh_org_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_org_bh_place_of_work_1bh_org_ida` varchar(36) DEFAULT NULL,
  `bh_org_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_org_trade_points`
--

CREATE TABLE `bh_org_trade_points` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `geo_coord` text,
  `work_schedule` varchar(25) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_org_trade_points`
--

INSERT INTO `bh_org_trade_points` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `geo_coord`, `work_schedule`, `address`) VALUES
('18bd9629-d148-fc4f-0bde-59b91d30ba8d', 'Точка1', '2017-09-13 11:57:57', '2017-09-13 11:59:04', '1', '1', NULL, 0, '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_org_trade_points_audit`
--

CREATE TABLE `bh_org_trade_points_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_packet_activation`
--

CREATE TABLE `bh_packet_activation` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `date_of_sale` date DEFAULT NULL,
  `packet_list` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_packet_activation`
--

INSERT INTO `bh_packet_activation` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `date_of_sale`, `packet_list`) VALUES
('2905487e-f13a-594a-6d2f-59bb73118e66', 'Пакет 1 активация', '2017-09-15 06:30:28', '2017-10-04 12:57:46', '1', '1', 'описание', 0, '1', '2017-09-07', 'key');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_packet_activation_audit`
--

CREATE TABLE `bh_packet_activation_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_passports`
--

CREATE TABLE `bh_passports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `passport_num` varchar(10) DEFAULT NULL,
  `issued_by` varchar(255) DEFAULT NULL,
  `date_issue` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `placebirth` varchar(30) DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `passport_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_passports`
--

INSERT INTO `bh_passports` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `passport_num`, `issued_by`, `date_issue`, `birthday`, `placebirth`, `date_expiration`, `passport_type`) VALUES
('81b30487-f8a6-ee09-ef84-59c4dc8ed1eb', '', '2017-09-22 09:46:45', '2017-09-22 09:46:45', '1', '1', NULL, 0, NULL, 'tyryyr4664', 'vggdggd', '2017-09-02', '2017-09-08', 'nfjffjjjjf', '2017-09-02', 'transborder');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_passports_audit`
--

CREATE TABLE `bh_passports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_passports_bh_country_1_c`
--

CREATE TABLE `bh_passports_bh_country_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_passports_bh_country_1bh_passports_ida` varchar(36) DEFAULT NULL,
  `bh_passports_bh_country_1bh_country_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_phones`
--

CREATE TABLE `bh_phones` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `phone_contact` varchar(100) DEFAULT NULL,
  `operator` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_phones`
--

INSERT INTO `bh_phones` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `phone_contact`, `operator`) VALUES
('2b7f4cf2-c725-3f4c-de28-59c91319bb23', NULL, '2017-09-25 14:33:46', '2017-09-28 13:53:49', '1', '1', NULL, 0, '1', '+38(093) 779-56-18', 'LifeCell');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_phones_audit`
--

CREATE TABLE `bh_phones_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_place_of_work`
--

CREATE TABLE `bh_place_of_work` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_place_of_work_audit`
--

CREATE TABLE `bh_place_of_work_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_position_at_work`
--

CREATE TABLE `bh_position_at_work` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_position_at_work_audit`
--

CREATE TABLE `bh_position_at_work_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_position_at_work_bh_place_of_work_1_c`
--

CREATE TABLE `bh_position_at_work_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_position_at_work_bh_place_of_work_1bh_position_at_work_ida` varchar(36) DEFAULT NULL,
  `bh_position_at_work_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_providers`
--

CREATE TABLE `bh_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `provider_status` varchar(10) DEFAULT NULL,
  `date_activation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_providers`
--

INSERT INTO `bh_providers` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `provider_status`, `date_activation`) VALUES
('e8780716-2587-fba6-b6bd-59b7eb19fc44', 'Рога и КОпыта', '2017-09-12 14:12:49', '2017-09-12 14:21:12', '1', '1', NULL, 0, '1', 'not_active', '2017-09-05');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_providers_aos_contracts_1_c`
--

CREATE TABLE `bh_providers_aos_contracts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_providers_aos_contracts_1bh_providers_ida` varchar(36) DEFAULT NULL,
  `bh_providers_aos_contracts_1aos_contracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_providers_aos_contracts_2_c`
--

CREATE TABLE `bh_providers_aos_contracts_2_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_providers_aos_contracts_2bh_providers_ida` varchar(36) DEFAULT NULL,
  `bh_providers_aos_contracts_2aos_contracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_providers_audit`
--

CREATE TABLE `bh_providers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_providers_bh_org_trade_points_1_c`
--

CREATE TABLE `bh_providers_bh_org_trade_points_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_providers_bh_org_trade_points_1bh_providers_ida` varchar(36) DEFAULT NULL,
  `bh_providers_bh_org_trade_points_1bh_org_trade_points_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_providers_bh_org_trade_points_1_c`
--

INSERT INTO `bh_providers_bh_org_trade_points_1_c` (`id`, `date_modified`, `deleted`, `bh_providers_bh_org_trade_points_1bh_providers_ida`, `bh_providers_bh_org_trade_points_1bh_org_trade_points_idb`) VALUES
('8a224270-ff32-eabd-fa9b-59b91d77001b', '2017-09-13 11:59:04', 0, 'e8780716-2587-fba6-b6bd-59b7eb19fc44', '18bd9629-d148-fc4f-0bde-59b91d30ba8d');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_realty`
--

CREATE TABLE `bh_realty` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `realty_type_ownership` varchar(255) DEFAULT NULL,
  `realty_method_obtaining` varchar(255) DEFAULT NULL,
  `realty_owner_pledge` tinyint(1) DEFAULT '0',
  `realty_property_type` varchar(255) DEFAULT NULL,
  `realty_date_purchase` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_realty`
--

INSERT INTO `bh_realty` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `realty_type_ownership`, `realty_method_obtaining`, `realty_owner_pledge`, `realty_property_type`, `realty_date_purchase`) VALUES
('900c0ca4-717c-71a5-03f9-59b7d157cf73', 'Квартира 1', '2017-09-12 12:22:54', '2017-09-13 13:06:09', '1', '1', NULL, 0, '1', 'single', 'inheritance', 1, 'apartment', '2017-09-07');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_realty_audit`
--

CREATE TABLE `bh_realty_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_region`
--

CREATE TABLE `bh_region` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_region`
--

INSERT INTO `bh_region` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('125bb334-314b-ef8b-a4a1-59c4bce5e0a3', 'Одесская область', '2017-09-22 07:30:26', '2017-09-22 07:30:26', '1', '1', NULL, 0, '1'),
('74d3318e-642d-dc11-a2c6-59c4bc72eb7f', 'Николаевская область', '2017-09-22 07:31:15', '2017-09-22 07:31:15', '1', '1', NULL, 0, '1'),
('7b8021e0-a18c-0a7c-68c2-59c4bd44a93f', 'Харьковская область', '2017-09-22 07:37:00', '2017-09-22 07:37:00', '1', '1', NULL, 0, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_region_area`
--

CREATE TABLE `bh_region_area` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_region_area`
--

INSERT INTO `bh_region_area` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('230c2e88-cfc6-fa11-b0dd-59c4c64e8b4a', 'Беляевский район', '2017-09-22 08:14:48', '2017-09-22 08:14:48', '1', '1', NULL, 0, '1'),
('37131337-4145-92a7-41b3-59c4c6c0859d', 'Арцизский район', '2017-09-22 08:15:26', '2017-09-22 08:15:26', '1', '1', NULL, 0, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_region_area_audit`
--

CREATE TABLE `bh_region_area_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_region_area_bh_locality_1_c`
--

CREATE TABLE `bh_region_area_bh_locality_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_region_area_bh_locality_1bh_region_area_ida` varchar(36) DEFAULT NULL,
  `bh_region_area_bh_locality_1bh_locality_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_region_audit`
--

CREATE TABLE `bh_region_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_region_bh_region_area_1_c`
--

CREATE TABLE `bh_region_bh_region_area_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_region_bh_region_area_1bh_region_ida` varchar(36) DEFAULT NULL,
  `bh_region_bh_region_area_1bh_region_area_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_region_bh_region_area_1_c`
--

INSERT INTO `bh_region_bh_region_area_1_c` (`id`, `date_modified`, `deleted`, `bh_region_bh_region_area_1bh_region_ida`, `bh_region_bh_region_area_1bh_region_area_idb`) VALUES
('297c1ed2-e872-542e-021b-59c4c6e67350', '2017-09-22 08:14:48', 0, '125bb334-314b-ef8b-a4a1-59c4bce5e0a3', '230c2e88-cfc6-fa11-b0dd-59c4c64e8b4a'),
('3c51ecb6-948f-622a-6272-59c4c651e70e', '2017-09-22 08:15:26', 0, '125bb334-314b-ef8b-a4a1-59c4bce5e0a3', '37131337-4145-92a7-41b3-59c4c6c0859d');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts`
--

CREATE TABLE `bh_scripts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `script_status` varchar(255) DEFAULT NULL,
  `script_type` varchar(255) DEFAULT NULL,
  `script_impact` varchar(255) DEFAULT NULL,
  `script_date_activation` datetime DEFAULT NULL,
  `script_date_deactivation` datetime DEFAULT NULL,
  `script_rate_effort` int(11) DEFAULT NULL,
  `activation` datetime DEFAULT NULL,
  `deactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_scripts`
--

INSERT INTO `bh_scripts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `script_status`, `script_type`, `script_impact`, `script_date_activation`, `script_date_deactivation`, `script_rate_effort`, `activation`, `deactivation`) VALUES
('e1b4e2b2-c827-1cbc-f4bd-59bb8fc5f4e6', 'ВОт такой скрип', '2017-09-15 08:30:45', '2017-09-19 13:04:56', '1', '1', NULL, 0, '1', 'active', 'warm_up', 'individual', NULL, NULL, 0, '2017-09-01 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_audit`
--

CREATE TABLE `bh_scripts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_bh_scripts_employee_comment_1_c`
--

CREATE TABLE `bh_scripts_bh_scripts_employee_comment_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida` varchar(36) DEFAULT NULL,
  `bh_scripts22dfcomment_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_bh_scripts_leadership_recommend_1_c`
--

CREATE TABLE `bh_scripts_bh_scripts_leadership_recommend_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida` varchar(36) DEFAULT NULL,
  `bh_scriptsb2a1commend_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_scripts_bh_scripts_leadership_recommend_1_c`
--

INSERT INTO `bh_scripts_bh_scripts_leadership_recommend_1_c` (`id`, `date_modified`, `deleted`, `bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida`, `bh_scriptsb2a1commend_idb`) VALUES
('362a2963-ed6c-1000-ca3a-59bb909a0601', '2017-09-15 08:32:01', 0, 'e1b4e2b2-c827-1cbc-f4bd-59bb8fc5f4e6', '863d0ced-1265-5628-ec69-59bb70c7b1ee');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_bh_script_param_response_1_c`
--

CREATE TABLE `bh_scripts_bh_script_param_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts_bh_script_param_response_1bh_scripts_ida` varchar(36) DEFAULT NULL,
  `bh_scripts6c20esponse_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_employee_comment`
--

CREATE TABLE `bh_scripts_employee_comment` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bh_scripts_employee_comment_com` text,
  `bh_scripts_employee_comment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_scripts_employee_comment`
--

INSERT INTO `bh_scripts_employee_comment` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `bh_scripts_employee_comment_com`, `bh_scripts_employee_comment_date`) VALUES
('1a01a3bd-a719-a223-3eb5-59b943ad5116', 'Комментарий', '2017-09-13 14:41:18', '2017-09-13 14:41:18', '1', '1', '', 0, '1', '', '2017-09-04');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_employee_comment_audit`
--

CREATE TABLE `bh_scripts_employee_comment_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_employee_comment_bh_scripts_c`
--

CREATE TABLE `bh_scripts_employee_comment_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts7127comment_ida` varchar(36) DEFAULT NULL,
  `bh_scripts_employee_comment_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_leadership_recommend`
--

CREATE TABLE `bh_scripts_leadership_recommend` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `recommend_date` date DEFAULT NULL,
  `recommend_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_scripts_leadership_recommend`
--

INSERT INTO `bh_scripts_leadership_recommend` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `recommend_date`, `recommend_text`) VALUES
('863d0ced-1265-5628-ec69-59bb70c7b1ee', 'Скрипт очень крутой', '2017-09-15 06:16:01', '2017-09-15 08:32:01', '1', '1', 'Описание:', 0, '1', '2017-09-07', 'asdfadas');

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_leadership_recommend_audit`
--

CREATE TABLE `bh_scripts_leadership_recommend_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scripts_leadership_recommend_bh_scripts_c`
--

CREATE TABLE `bh_scripts_leadership_recommend_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scriptsfdbacommend_ida` varchar(36) DEFAULT NULL,
  `bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_script_param_response`
--

CREATE TABLE `bh_script_param_response` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bh_script_param_response_type` varchar(255) DEFAULT NULL,
  `bh_script_param_response_date` date DEFAULT NULL,
  `bh_script_param_response_comment` text,
  `channel_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bh_script_param_response`
--

INSERT INTO `bh_script_param_response` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `bh_script_param_response_type`, `bh_script_param_response_date`, `bh_script_param_response_comment`, `channel_type`) VALUES
('17ae3e18-60df-2d00-3d76-59b940929860', 'test', '2017-09-13 14:28:37', '2017-09-13 14:28:37', '1', '1', 'описание', 0, '1', 'none', '2017-09-13', 'комментарий', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bh_script_param_response_audit`
--

CREATE TABLE `bh_script_param_response_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_script_param_response_bh_scripts_c`
--

CREATE TABLE `bh_script_param_response_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_script_param_response_bh_scriptsbh_script_param_response_ida` varchar(36) DEFAULT NULL,
  `bh_script_param_response_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scr_status_history`
--

CREATE TABLE `bh_scr_status_history` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bh_scr_status_history_comment` text,
  `bh_scr_status_history_date` date DEFAULT NULL,
  `scr_status_history_activation` datetime DEFAULT NULL,
  `scr_status_history_deactivation` datetime DEFAULT NULL,
  `scr_status_history_status` varchar(255) DEFAULT NULL,
  `scr_status_history_rate_effort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scr_status_history_audit`
--

CREATE TABLE `bh_scr_status_history_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bh_scr_status_history_bh_scripts_c`
--

CREATE TABLE `bh_scr_status_history_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scr_status_history_bh_scriptsbh_scr_status_history_ida` varchar(36) DEFAULT NULL,
  `bh_scr_status_history_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `calls`
--

INSERT INTO `calls` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `direction`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('1a39d864-1260-0e2b-a2b2-59cd0d25af02', '** Авто-запись **', '2017-09-28 14:57:19', '2017-09-28 14:57:22', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', 'Inbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('1f3b8873-7596-7b37-21f9-59ce17272da3', 'Исходящий звонок', '2017-09-29 09:50:26', '2017-09-29 09:50:26', '1', '1', '', 0, '1', 0, 0, '2017-09-29 09:49:41', '2017-09-29 09:49:41', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('243d5a9d-cf69-1b1b-845d-59cdfb1a534d', '** Авто-запись **', '2017-09-29 07:49:54', '2017-09-29 07:49:57', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('2aea5731-6378-7b1a-e6a8-59ce176f5afb', 'Исходящий звонок', '2017-09-29 09:51:18', '2017-09-29 09:51:18', '1', '1', '', 0, '1', 0, 0, '2017-09-29 09:50:59', '2017-09-29 09:50:59', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('54e0809e-a136-8683-5aff-59cdfdc6d1e1', '** Авто-запись **', '2017-09-29 08:00:01', '2017-09-29 08:00:03', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('564eb49f-24c7-1e2c-75d5-59cd0dca7699', 'Пропущенный звонок', '2017-09-28 14:57:14', '2017-09-28 14:57:58', '1', '1', 'Пропущенный/неудачный звонок (Subscriber absent\n------------------\n Phone Number         : 0957580217                              \n', 0, '1', 0, 0, '2017-09-28 14:57:14', '2017-09-28 14:57:14', NULL, 'Held', 'Inbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('564eb885-659c-5155-d16a-59ce1784e11c', 'Исходящий звонок', '2017-09-29 09:52:25', '2017-09-29 09:52:25', '1', '1', '', 0, '1', 0, 0, '2017-09-29 09:52:18', '2017-09-29 09:52:18', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('5c81afb3-471c-665c-3793-59ce17c956d5', 'Исходящий звонок', '2017-09-29 09:52:35', '2017-09-29 09:52:35', '1', '1', '', 0, '1', 0, 0, '2017-09-29 09:52:18', '2017-09-29 09:52:18', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('6277809a-8dc1-7a35-b33f-59cd0f0d6664', 'Исходящий звонок', '2017-09-28 15:04:33', '2017-09-28 15:04:33', '1', '1', '', 0, '1', 0, 0, '2017-09-28 15:03:58', '2017-09-28 15:03:58', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('8bb694d0-8f0e-c822-3843-59cdead820d8', 'Исходящий звонок', '2017-09-29 06:38:46', '2017-09-29 06:38:46', '1', '1', '', 0, '1', 0, 0, '2017-09-29 06:38:11', '2017-09-29 06:38:11', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('a79bbed5-0d30-451c-8a03-59cd0f873a4e', 'Исходящий звонок', '2017-09-28 15:05:46', '2017-09-28 15:05:46', '1', '1', '', 0, '1', 0, 0, '2017-09-28 15:05:11', '2017-09-28 15:05:11', NULL, 'Held', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('b9034307-83e2-1e7d-726a-59ce00ecd078', '** Авто-запись **', '2017-09-29 08:12:57', '2017-09-29 08:13:00', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('c6d75073-8011-f9d5-1876-59cd119b7e57', '** Авто-запись **', '2017-09-28 15:12:42', '2017-09-28 15:12:45', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('e4a4b6ea-057d-097a-174a-59cdee5d2ddd', '** Авто-запись **', '2017-09-29 06:58:00', '2017-09-29 06:58:03', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL),
('e4e1c393-ab9b-dc9d-c177-59ce02ab006a', '** Авто-запись **', '2017-09-29 08:20:50', '2017-09-29 08:20:50', '1', '1', NULL, 0, '1', 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 'В процессе', NULL, NULL, -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_cstm`
--

CREATE TABLE `calls_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_call_id_c` varchar(45) DEFAULT NULL,
  `asterisk_caller_id_c` varchar(45) DEFAULT NULL,
  `asterisk_inbound_ext_c` varchar(45) DEFAULT NULL,
  `asterisk_user_ext_c` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `calls_cstm`
--

INSERT INTO `calls_cstm` (`id_c`, `asterisk_call_id_c`, `asterisk_caller_id_c`, `asterisk_inbound_ext_c`, `asterisk_user_ext_c`) VALUES
('1a39d864-1260-0e2b-a2b2-59cd0d25af02', '', '', '', ''),
('1f3b8873-7596-7b37-21f9-59ce17272da3', '1506678570.11', '0937795618', NULL, '3331'),
('243d5a9d-cf69-1b1b-845d-59cdfb1a534d', '', '', '', ''),
('2aea5731-6378-7b1a-e6a8-59ce176f5afb', '1506678648.12', '0937795618', NULL, '3331'),
('54e0809e-a136-8683-5aff-59cdfdc6d1e1', '', '', '', ''),
('564eb49f-24c7-1e2c-75d5-59cd0dca7699', '1506600951.0', '0957580217', '7009', '7009'),
('564eb885-659c-5155-d16a-59ce1784e11c', '1506678727.15', '3330', NULL, '3331'),
('5c81afb3-471c-665c-3793-59ce17c956d5', '1506678727.15', '3330', NULL, '3331'),
('6277809a-8dc1-7a35-b33f-59cd0f0d6664', '1506601358.3', '0937795618', NULL, '7010'),
('8bb694d0-8f0e-c822-3843-59cdead820d8', '1506657411.17', '0937795618', NULL, '7010'),
('a79bbed5-0d30-451c-8a03-59cd0f873a4e', '1506601431.4', '380937795618', NULL, '7010'),
('b9034307-83e2-1e7d-726a-59ce00ecd078', '', '', '', ''),
('c6d75073-8011-f9d5-1876-59cd119b7e57', '', '', '', ''),
('e4a4b6ea-057d-097a-174a-59cdee5d2ddd', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `calls_users`
--

INSERT INTO `calls_users` (`id`, `call_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('1ba81c58-28e5-95e5-00fc-59cd0d45755a', '1a39d864-1260-0e2b-a2b2-59cd0d25af02', '1', '1', 'none', '2017-09-28 14:57:22', 0),
('20a9d9c6-7ab9-78d5-8800-59ce17328e31', '1f3b8873-7596-7b37-21f9-59ce17272da3', '1', '1', 'none', '2017-09-29 09:50:26', 0),
('25ab8bc6-65f1-cb5c-9aca-59cdfb12da4b', '243d5a9d-cf69-1b1b-845d-59cdfb1a534d', '1', '1', 'none', '2017-09-29 07:49:57', 0),
('2d4ca530-7bfb-09af-5855-59ce172cd9a1', '2aea5731-6378-7b1a-e6a8-59ce176f5afb', '1', '1', 'none', '2017-09-29 09:51:18', 0),
('564eb109-b9a4-9097-3359-59cdfd80540e', '54e0809e-a136-8683-5aff-59cdfdc6d1e1', '1', '1', 'none', '2017-09-29 08:00:03', 0),
('57bcf678-94c4-f59d-178d-59ce172ed5a0', '564eb885-659c-5155-d16a-59ce1784e11c', '1', '1', 'none', '2017-09-29 09:52:25', 0),
('57f9fa82-647b-d375-9587-59cd0daac602', '564eb49f-24c7-1e2c-75d5-59cd0dca7699', '1', '1', 'none', '2017-09-28 14:57:58', 0),
('5db2da0d-0944-0e1b-a053-59ce17503164', '5c81afb3-471c-665c-3793-59ce17c956d5', '1', '1', 'none', '2017-09-29 09:52:35', 0),
('63e5b1ab-1cc0-798b-2223-59cd0ff60781', '6277809a-8dc1-7a35-b33f-59cd0f0d6664', '1', '1', 'none', '2017-09-28 15:04:33', 0),
('8d24d2a0-fcff-aa52-19ec-59cdea5fdb83', '8bb694d0-8f0e-c822-3843-59cdead820d8', '1', '1', 'none', '2017-09-29 06:38:46', 0),
('a8cce317-1246-7964-9033-59cd0f86db4e', 'a79bbed5-0d30-451c-8a03-59cd0f873a4e', '1', '1', 'none', '2017-09-28 15:05:46', 0),
('ba717cbd-0976-0c58-1b0b-59ce00aada29', 'b9034307-83e2-1e7d-726a-59ce00ecd078', '1', '1', 'none', '2017-09-29 08:13:00', 0),
('c52c1702-2d19-7d63-4cba-59ce178d0b1b', 'c3faea98-e2b8-7730-569d-59ce1701f679', '1', '1', 'none', '2017-09-29 09:51:36', 0),
('c8458eb7-749b-3586-d619-59cd115c56b4', 'c6d75073-8011-f9d5-1876-59cd119b7e57', '1', '1', 'none', '2017-09-28 15:12:45', 0),
('e612ebd8-b995-6c8f-f00f-59cdeebbb67f', 'e4a4b6ea-057d-097a-174a-59cdee5d2ddd', '1', '1', 'none', '2017-09-29 06:58:03', 0),
('e64ff317-0178-4b5b-46ec-59ce021df5ae', 'e4e1c393-ab9b-dc9d-c177-59ce02ab006a', '1', '1', 'none', '2017-09-29 08:20:50', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `tracker_key`, `tracker_count`, `refer_url`, `tracker_text`, `start_date`, `end_date`, `status`, `impressions`, `currency_id`, `budget`, `expected_cost`, `actual_cost`, `expected_revenue`, `campaign_type`, `objective`, `content`, `frequency`) VALUES
('3f0232ce-059c-a184-3838-59d34aed4ef4', 'Непочтовая компапния', '2017-10-03 08:28:28', '2017-10-03 08:28:28', '1', '1', 0, '1', 25, 0, 'http://', NULL, NULL, '0000-00-00', 'Active', 0, '-99', NULL, NULL, NULL, NULL, 'Telesales', NULL, NULL, ''),
('b5183c65-1b93-5e6e-b364-59d24333e4a8', 'new 1', '2017-10-02 13:45:33', '2017-10-02 13:45:33', '1', '1', 0, '1', 24, 0, 'http://', NULL, NULL, '0000-00-00', 'Active', 0, '-99', NULL, NULL, NULL, NULL, 'Email', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  `case_view` varchar(50) DEFAULT NULL,
  `case_type` varchar(15) DEFAULT NULL,
  `case_status` varchar(15) DEFAULT NULL,
  `result_comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cases`
--

INSERT INTO `cases` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_number`, `type`, `status`, `priority`, `resolution`, `work_log`, `account_id`, `state`, `contact_created_by_id`, `case_view`, `case_type`, `case_status`, `result_comment`) VALUES
('9e430572-0c88-020a-a77c-59ba2115b313', 'adasdadsdad', '2017-09-14 06:29:12', '2017-09-20 08:13:11', '1', '1', NULL, 0, '1', 1, 'buy_sell', 'Open_New', 'P1', NULL, NULL, 'd45b7965-8105-7147-d758-59ba21cbfdef', 'Open', '', 'consult', 'incoming', 'active_work', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_bh_cases_log_1_c`
--

CREATE TABLE `cases_bh_cases_log_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_cases_log_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_cases_log_1bh_cases_log_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cases_bh_cases_log_1_c`
--

INSERT INTO `cases_bh_cases_log_1_c` (`id`, `date_modified`, `deleted`, `cases_bh_cases_log_1cases_ida`, `cases_bh_cases_log_1bh_cases_log_idb`) VALUES
('26748673-6025-a290-67ef-59ba90e515c1', '2017-09-14 14:23:26', 0, '9e430572-0c88-020a-a77c-59ba2115b313', '35e9cdfc-a364-d2d0-5521-59ba8e52b293');

-- --------------------------------------------------------

--
-- Структура таблицы `cases_bh_case_compound_1_c`
--

CREATE TABLE `cases_bh_case_compound_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_case_compound_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_case_compound_1bh_case_compound_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_bh_marketing_company_1_c`
--

CREATE TABLE `cases_bh_marketing_company_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_marketing_company_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_marketing_company_1bh_marketing_company_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cases_bh_marketing_company_1_c`
--

INSERT INTO `cases_bh_marketing_company_1_c` (`id`, `date_modified`, `deleted`, `cases_bh_marketing_company_1cases_ida`, `cases_bh_marketing_company_1bh_marketing_company_idb`) VALUES
('e685ff7a-a7e5-b316-251f-59d38d05fa54', '2017-10-03 13:16:15', 0, '9e430572-0c88-020a-a77c-59ba2115b313', 'd431499d-a668-1db4-8b3d-59bf89d1ebb8');

-- --------------------------------------------------------

--
-- Структура таблицы `cases_bh_marketing_response_1_c`
--

CREATE TABLE `cases_bh_marketing_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_marketing_response_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_marketing_response_1bh_marketing_response_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cases_cstm`
--

INSERT INTO `cases_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('9e430572-0c88-020a-a77c-59ba2115b313', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.24'),
('MySettings', 'tab', 'YTo3MTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTA6ImJoX3NjcmlwdHMiO3M6MTA6ImJoX3NjcmlwdHMiO3M6MTY6ImJoX0F1dG90cmFuc3BvcnQiO3M6MTY6ImJoX0F1dG90cmFuc3BvcnQiO3M6OToiYmhfUmVhbHR5IjtzOjk6ImJoX1JlYWx0eSI7czo2OiJiaF9mYXEiO3M6NjoiYmhfZmFxIjtzOjE0OiJiaF9mYXFfaGlzdG9yeSI7czoxNDoiYmhfZmFxX2hpc3RvcnkiO3M6MjE6ImJoX3Njcl9zdGF0dXNfaGlzdG9yeSI7czoyMToiYmhfc2NyX3N0YXR1c19oaXN0b3J5IjtzOjI0OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO3M6MjQ6ImJoX3NjcmlwdF9wYXJhbV9yZXNwb25zZSI7czoyNzoiYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50IjtzOjI3OiJiaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQiO3M6MTI6ImJoX3Byb3ZpZGVycyI7czoxMjoiYmhfcHJvdmlkZXJzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjY6ImJoX29yZyI7czo2OiJiaF9vcmciO3M6MTI6ImJoX2Nhc2VzX2xvZyI7czoxMjoiYmhfY2FzZXNfbG9nIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjtzOjIwOiJiaF9wYWNrZXRfYWN0aXZhdGlvbiI7czoyMDoiYmhfcGFja2V0X2FjdGl2YXRpb24iO3M6MTc6ImJoX2Zvcm1lZF9wYWNrZXRzIjtzOjE3OiJiaF9mb3JtZWRfcGFja2V0cyI7czoxNjoiYmhfY2FzZV9jb21wb3VuZCI7czoxNjoiYmhfY2FzZV9jb21wb3VuZCI7czoxNDoiYmhfY2FzZV9zdGF0dXMiO3M6MTQ6ImJoX2Nhc2Vfc3RhdHVzIjtzOjIwOiJiaF9tYXJrZXRpbmdfY29tcGFueSI7czoyMDoiYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6Mjg6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6Mjg6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6MjE6ImJoX21hcmtldGluZ19yZXNwb25zZSI7czoyMToiYmhfbWFya2V0aW5nX3Jlc3BvbnNlIjtzOjI0OiJiaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGUiO3M6MjQ6ImJoX21hcmtldGluZ19kaXJlY3RvcmF0ZSI7czoxNDoiYmhfbGVhZF9hZHJlc3MiO3M6MTQ6ImJoX2xlYWRfYWRyZXNzIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjEwOiJiaF9jb3VudHJ5IjtzOjEwOiJiaF9jb3VudHJ5IjtzOjk6ImJoX3JlZ2lvbiI7czo5OiJiaF9yZWdpb24iO3M6MTQ6ImJoX3JlZ2lvbl9hcmVhIjtzOjE0OiJiaF9yZWdpb25fYXJlYSI7czoxMToiYmhfbG9jYWxpdHkiO3M6MTE6ImJoX2xvY2FsaXR5IjtzOjEyOiJiaF9wYXNzcG9ydHMiO3M6MTI6ImJoX3Bhc3Nwb3J0cyI7czoxNzoiYmhfY29udGFjdF9wZXJzb24iO3M6MTc6ImJoX2NvbnRhY3RfcGVyc29uIjtzOjk6ImJoX3Bob25lcyI7czo5OiJiaF9waG9uZXMiO3M6MTY6ImJoX2NvbW11bmljYXRvcnMiO3M6MTY6ImJoX2NvbW11bmljYXRvcnMiO3M6MTg6ImJoX2NoYW5uZWxzX2ltcGFjdCI7czoxODoiYmhfY2hhbm5lbHNfaW1wYWN0IjtzOjIwOiJiaF9jYW1wYWluZV9wcm9kdWN0cyI7czoyMDoiYmhfY2FtcGFpbmVfcHJvZHVjdHMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '2'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', 'admin'),
('proxy', 'password', 'AFpCmPtVJMs='),
('captcha', 'on', '0'),
('captcha', 'public_key', ''),
('captcha', 'private_key', ''),
('ldap', 'hostname', ''),
('ldap', 'port', ''),
('ldap', 'base_dn', ''),
('ldap', 'login_filter', ''),
('ldap', 'bind_attr', ''),
('ldap', 'login_attr', ''),
('ldap', 'group_dn', ''),
('ldap', 'group_name', ''),
('ldap', 'group_user_attr', ''),
('ldap', 'group_attr', ''),
('ldap', 'admin_user', ''),
('ldap', 'admin_password', ''),
('ldap', 'auto_create_users', '0'),
('ldap', 'enc_key', ''),
('system', 'ldap_enabled', '0'),
('ldap', 'group_attr_req_dn', '0'),
('ldap', 'group', '0'),
('ldap', 'authentication', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cron_remove_documents`
--

INSERT INTO `cron_remove_documents` (`id`, `bean_id`, `module`, `date_modified`) VALUES
('6c3996f0-5eca-645c-0aa5-59a5121dc0b3', 'b55c0f3e-abbf-da4c-0805-59a50fca9fe1', 'Documents', '2017-08-29 10:05:43'),
('a7c1c984-7f1d-b0d3-e54a-59a5122998d4', '466a30cf-0cbe-58bf-53f3-59a5111e9f65', 'Documents', '2017-08-29 10:05:40');

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  `doc_status` varchar(255) DEFAULT NULL,
  `receipt_date` date DEFAULT NULL,
  `issuing_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents`
--

INSERT INTO `documents` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `document_name`, `doc_id`, `doc_type`, `doc_url`, `active_date`, `exp_date`, `category_id`, `subcategory_id`, `status_id`, `document_revision_id`, `related_doc_id`, `related_doc_rev_id`, `is_template`, `template_type`, `doc_status`, `receipt_date`, `issuing_date`, `termination_date`) VALUES
('13c9318f-c1df-e406-b28d-59a51296984b', '2017-08-29 07:06:46', '2017-08-29 07:06:46', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('17f34406-be07-b7c2-d4be-59a520054121', '2017-08-29 08:08:14', '2017-08-29 08:08:14', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('466a30cf-0cbe-58bf-53f3-59a5111e9f65', '2017-08-29 07:04:13', '2017-08-29 07:05:40', '1', '1', NULL, 1, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('8420ca84-e12c-46af-d9b1-59a521ab1f0e', '2017-08-29 08:12:21', '2017-08-29 08:12:21', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('8fda4bce-7a45-4cea-a6a2-59a51d956d10', '2017-08-29 07:52:14', '2017-08-29 07:52:14', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('9193a8b7-a12e-afbf-3979-59ba79cb5d22', '2017-09-14 12:45:48', '2017-09-15 11:01:25', '1', '1', NULL, 0, '1', 'Документ 1', NULL, 'Sugar', NULL, '2017-09-14', NULL, NULL, NULL, 'Active', 'c97cf0e4-7469-f016-5f7f-59ba796843bb', '', '', 0, NULL, 'valid', NULL, NULL, NULL),
('b55c0f3e-abbf-da4c-0805-59a50fca9fe1', '2017-08-29 06:53:44', '2017-08-29 07:05:40', '1', '1', NULL, 1, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('d3dc678c-5d73-00a6-06eb-59a51dfdf75b', '2017-08-29 07:53:15', '2017-08-29 07:53:15', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `document_revisions`
--

INSERT INTO `document_revisions` (`id`, `change_log`, `document_id`, `doc_id`, `doc_type`, `doc_url`, `date_entered`, `created_by`, `filename`, `file_ext`, `file_mime_type`, `revision`, `deleted`, `date_modified`) VALUES
('c97cf0e4-7469-f016-5f7f-59ba796843bb', 'Документ создан', '9193a8b7-a12e-afbf-3979-59ba79cb5d22', '', 'Sugar', '', '2017-09-14 12:45:48', '1', '1.jpg', 'jpg', 'image/jpeg', '1', 0, '2017-09-14 12:45:48');

-- --------------------------------------------------------

--
-- Структура таблицы `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('250f9d5f-83a0-7ad1-c7d9-599bcd1a0506', 'test@gmail.com', 'TEST@GMAIL.COM', 0, 0, '2017-08-22 06:20:35', '2017-08-22 06:20:35', 0),
('34677acc-ae73-3071-678c-599af16b1a6c', 'test@example.com', 'TEST@EXAMPLE.COM', 0, 0, '2017-08-21 14:42:20', '2017-08-21 14:42:20', 0),
('480099d1-0c64-8c0d-8f3f-59ccfe11d234', 'new@admin.com', 'NEW@ADMIN.COM', 0, 0, '2017-09-28 13:51:06', '2017-09-28 13:51:06', 0),
('66615e8e-93e9-52f6-1056-599a76627aee', 'yurenkoyura@gmail.com', 'YURENKOYURA@GMAIL.COM', 0, 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', 0),
('eb14a935-0381-5457-c600-59ca6c326a4e', 'nhvhmf@jjgj.com', 'NHVHMF@JJGJ.COM', 0, 0, '2017-09-26 15:04:25', '2017-09-26 15:04:25', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('11fa63a7-98b9-723d-5ca2-599af1ffc847', '34677acc-ae73-3071-678c-599af16b1a6c', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads', 1, 0, '2017-08-21 14:42:20', '2017-08-21 14:42:20', 0),
('1a39df05-0f91-74ff-02b9-59ce1604857b', '480099d1-0c64-8c0d-8f3f-59ccfe11d234', '1', 'Users', 1, 0, '2017-09-29 09:44:51', '2017-09-29 09:44:51', 0),
('250f9c06-f8c8-8e51-8659-599bcdd98125', '250f9d5f-83a0-7ad1-c7d9-599bcd1a0506', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'Users', 1, 0, '2017-08-22 06:20:35', '2017-08-22 06:20:35', 0),
('409c8ed7-acff-f6d7-458c-59ccfe7b3ae7', '480099d1-0c64-8c0d-8f3f-59ccfe11d234', '1', 'Users', 1, 0, '2017-09-28 13:51:06', '2017-09-28 13:51:06', 1),
('6622d67b-9ccb-d01a-2459-599a767b9b8b', '66615e8e-93e9-52f6-1056-599a76627aee', '1', 'Users', 1, 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', 1),
('ead7a7a1-a283-f187-1823-59ca6c79be89', 'eb14a935-0381-5457-c600-59ca6c326a4e', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Leads', 1, 0, '2017-09-26 15:04:25', '2017-09-26 15:04:25', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_marketing`
--

INSERT INTO `email_marketing` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `from_name`, `from_addr`, `reply_to_name`, `reply_to_addr`, `inbound_email_id`, `date_start`, `template_id`, `status`, `campaign_id`, `outbound_email_id`, `all_prospect_lists`) VALUES
('1960bf6f-ffb8-eec4-a0c5-59d1f3f4e768', 0, '2017-10-02 08:07:09', '2017-10-02 08:07:09', '1', '1', '', '', '', '', '', '', '0000-00-00 00:00:00', '83b206a7-d8a5-5104-c472-59d1f32e6a47', 'active', '51b98206-9490-5a8a-b032-59d1e7fc5b7a', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('399ebb21-0904-e1b5-7ae8-59d1f32737a4', 0, '2017-10-02 08:07:10', '2017-10-02 08:46:51', '1', '1', 'моя рассылка', 'фыфы', 'yurenkoyura@gmail.com', 'ИВАН', 'YURENKOYURA@GMAIL.COM', NULL, '2017-10-18 08:00:00', '8743a4f2-a3f6-17ae-826c-59d1fc20668f', 'active', '51b98206-9490-5a8a-b032-59d1e7fc5b7a', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('3b0e0969-4039-bf47-7ff4-59d1fee74960', 0, '2017-10-02 08:52:57', '2017-10-02 09:23:32', '1', '1', 'ууууу', 'фыфы', 'yurenkoyura@gmail.com', 'ц', 'YURENKOYURA@GMAIL.COM', NULL, '2017-10-03 08:00:00', 'b8043ae0-2614-7263-f815-59d2045eebdf', 'active', '1ed19be7-94c2-25d0-0b3a-59d1fe8df63f', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('73534a40-1675-7b09-5834-59d2190404b1', 0, '2017-10-02 10:47:32', '2017-10-02 10:47:58', '1', '1', 'bjz', '', '', NULL, NULL, NULL, '2017-10-03 08:00:00', 'ae805a55-824e-f322-380a-59d219329732', 'active', '17d20276-8067-1b81-97d9-59d218370d5b', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('787ce63d-8155-7d7b-ac49-59d234ee0686', 0, '2017-10-02 12:42:58', '2017-10-02 12:43:28', '1', '1', 'ывыв', 'фыфы', 'yurenkoyura@gmail.com', NULL, NULL, NULL, '2017-10-01 08:00:00', '469fd4a6-7f61-a55b-c14a-59d234bc4382', 'active', 'cd986260-4c2a-1f3a-58fe-59d232973e79', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('81ffa100-0919-622f-6569-59d216e1ecb9', 0, '2017-10-02 10:33:52', '2017-10-02 10:33:52', '1', '1', '', '', '', '', '', '', '0000-00-00 00:00:00', '5e3d8e92-70e8-6900-78c2-59d2164db1d4', 'active', '5727958b-2c4b-87e4-d763-59d20c9f7ca6', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('a9900b22-a418-4ab9-f91d-59d20839c49f', 0, '2017-10-02 09:35:40', '2017-10-02 09:39:55', '1', '1', '', 'фыфы', 'yurenkoyura@gmail.com', 'ц', 'YURENKOYURA@GMAIL.COM', NULL, '0000-00-00 00:00:00', '3d75c17e-0e9c-320d-131a-59d209d3a06e', 'active', '1ed19be7-94c2-25d0-0b3a-59d1fe8df63f', '8081fb8a-e6d7-647f-92c7-59ccdf9d8a17', 1),
('c3fbfcce-98c0-6595-f181-59d340e5a642', 0, '2017-10-03 07:47:08', '2017-10-03 07:47:08', '1', '1', '', '', '', '', '', '', '0000-00-00 00:00:00', 'd5842676-e843-6da2-47c2-59d334e371e9', 'active', 'b5183c65-1b93-5e6e-b364-59d24333e4a8', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('cadefab4-7017-1b0b-c2bb-59d334171985', 0, '2017-10-03 06:56:12', '2017-10-03 08:21:26', '1', '1', 'моя', '', '', NULL, NULL, NULL, '2017-10-05 08:00:00', '91e8c76c-7c37-882e-5c5a-59d34865cf9b', 'active', 'b5183c65-1b93-5e6e-b364-59d24333e4a8', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1),
('cc226124-7d74-e271-33b0-59d25198fd26', 0, '2017-10-02 14:45:49', '2017-10-03 06:40:34', '1', '1', 'ftffg', '', '', NULL, NULL, NULL, '2017-10-05 08:00:00', '3e8a0768-8d88-60be-1724-59d3301309a2', 'active', 'b5183c65-1b93-5e6e-b364-59d24333e4a8', '63265c44-f3fe-8e42-1f78-599a76c05b05', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('10b75664-ec9f-c423-7ec5-599a76fbf666', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('19bff561-0968-309b-87af-599a769bc259', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('21131e45-70fc-034a-74c6-599a76c34f6f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p> </p>\r\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ', 0, NULL, NULL, NULL),
('217c4d91-1dc8-29d6-fc9d-59d3419cc9ce', '2017-10-03 07:51:37', '2017-10-03 07:51:37', '1', '1', NULL, 'vv', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('2255ffdd-b176-9d99-f6c6-59d234251917', '2017-10-02 12:42:42', '2017-10-02 12:42:42', '1', '1', NULL, 'цц', NULL, '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></td></tr></tbody></table></div>', 0, NULL, NULL, NULL),
('24f90ca0-ec90-4340-5057-599a760c357d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('2ccb3cf0-2fb9-cf76-b59c-599a765ee3e6', '2013-05-24 14:31:45', '2017-08-21 05:56:19', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('31fedeac-9792-f388-93db-59d1f35a099a', '2017-10-02 08:07:05', '2017-10-02 08:07:05', '1', '1', NULL, 'ффф', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('3d75c17e-0e9c-320d-131a-59d209d3a06e', '2017-10-02 09:39:44', '2017-10-02 09:39:51', '1', '1', NULL, 'rr', 'Template for informing a contact that their case has been closed.', NULL, ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('3e8a0768-8d88-60be-1724-59d3301309a2', '2017-10-03 06:39:56', '2017-10-03 06:40:03', '1', '1', NULL, 'rr', 'Template for informing a contact that their case has been closed.', 'zxzxzxx', ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('469fd4a6-7f61-a55b-c14a-59d234bc4382', '2017-10-02 12:42:53', '2017-10-02 12:42:53', '1', '1', NULL, 'цц', '', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('57f00950-02b6-dbb7-4622-599a7692dfbc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('5e3d8e92-70e8-6900-78c2-59d2164db1d4', '2017-10-02 10:33:44', '2017-10-02 10:33:44', '1', '1', NULL, 'nn', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"></p><h1 style=\"font-family:Arial, Helvetica, sans-serif;font-size:24px;line-height:38.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Add your headline here..</h1></div>', 0, NULL, NULL, ''),
('6a9aea02-cd32-d3d5-13f8-59d2516d2b18', '2017-10-02 14:45:41', '2017-10-02 14:45:45', '1', '1', NULL, 'еуые', 'Template for informing a contact that their case has been closed.', 'тема письма', ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('6cb50b10-907a-6eca-6eff-59d3410c47ec', '2017-10-03 07:49:29', '2017-10-03 07:49:29', '1', '1', NULL, 'ee', 'Template for informing a contact that their case has been closed.', 'weweweewe', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('6ffd59f6-40aa-a8e6-1051-59d33432c1c2', '2017-10-03 06:56:08', '2017-10-03 06:56:08', '1', '1', NULL, 'test', 'Template for informing a contact that their case has been closed.', 'trtrr', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('80001a66-60da-6f23-d2ac-59d3305dac66', '2017-10-03 06:39:59', '2017-10-03 06:39:59', '1', '1', NULL, 'rr', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('83b206a7-d8a5-5104-c472-59d1f32e6a47', '2017-10-02 08:07:04', '2017-10-02 08:07:04', '1', '1', NULL, 'ффф', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('8711eb64-ae6b-2782-3cbe-59d216db514c', '2017-10-02 10:33:48', '2017-10-02 10:33:48', '1', '1', NULL, 'nn', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"></p><h1 style=\"font-family:Arial, Helvetica, sans-serif;font-size:24px;line-height:38.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Add your headline here..</h1></div>', 0, NULL, NULL, ''),
('8743a4f2-a3f6-17ae-826c-59d1fc20668f', '2017-10-02 08:46:13', '2017-10-02 08:46:13', '1', '1', NULL, 'чссч', 'Default event invite template.', 'тема 1', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>', 0, NULL, NULL, 'email'),
('893128b7-349a-022f-c0be-59d1f5ce6b4b', '2017-10-02 08:14:08', '2017-10-02 08:14:08', '1', '1', NULL, 'zz', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('8a5d9f54-1f7f-509a-f8f5-59d3412510c2', '2017-10-03 07:49:28', '2017-10-03 07:49:28', '1', '1', NULL, 'ee', 'Template for informing a contact that their case has been closed.', 'weweweewe', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('8e730ef8-6afa-7261-c2c2-599a760b950a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('91e8c76c-7c37-882e-5c5a-59d34865cf9b', '2017-10-03 08:19:27', '2017-10-03 08:19:36', '1', '1', NULL, 'vv1', 'Template for informing a contact that their case has been closed.', 'wqweerty', ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('972e928b-24cd-c2f3-d9a1-59d341bf3419', '2017-10-03 07:51:39', '2017-10-03 07:51:39', '1', '1', NULL, 'vv', 'Template for informing a contact that their case has been closed.', '', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, '');
INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('a2ecab34-dd76-ee79-6ff6-59d20356960a', '2017-10-02 09:13:59', '2017-10-02 09:13:59', '1', '1', NULL, 'ggg', 'Template for informing a contact that their case has been closed.', 'dfdd', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('abefe36b-b743-75f4-17ef-59d1fb7904df', '2017-10-02 08:38:42', '2017-10-02 08:38:42', '1', '1', NULL, 'sdsd', 'Template to send to a contact when a case is received from them.', 'asdqwdadewqwqe', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Description</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_description</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('ae805a55-824e-f322-380a-59d219329732', '2017-10-02 10:47:21', '2017-10-02 10:47:28', '1', '1', NULL, 'new', 'Template for informing a contact that their case has been closed.', NULL, ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('b8043ae0-2614-7263-f815-59d2045eebdf', '2017-10-02 09:19:03', '2017-10-02 09:19:09', '1', '1', NULL, 'уу', 'Template for informing a contact that their case has been closed.', 'бььллол', ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolutionTitleTitleTitleLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div>', 0, '', 0, NULL),
('bf9c5c37-e10b-ba4a-c3f1-59d1f5379b90', '2017-10-02 08:14:06', '2017-10-02 08:14:12', '1', '1', NULL, 'zz', 'Template for informing a contact that their case has been closed.', NULL, ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('c40c03f2-e4fc-4305-282c-59d203733515', '2017-10-02 09:13:56', '2017-10-02 09:13:56', '1', '1', NULL, 'ggg', 'Template for informing a contact that their case has been closed.', 'dfdd', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('c6f3a423-a5ae-b66f-8682-59d204610ec5', '2017-10-02 09:19:06', '2017-10-02 09:19:06', '1', '1', NULL, 'уу', 'Template for informing a contact that their case has been closed.', 'бььллол', NULL, '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div>', 0, NULL, NULL, ''),
('d5842676-e843-6da2-47c2-59d334e371e9', '2017-10-03 06:56:05', '2017-10-03 07:47:04', '1', '1', NULL, 'test', 'Template for informing a contact that their case has been closed.', 'trtrr', ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('d6a1e6d1-1f22-1190-d4c4-59d208d305c1', '2017-10-02 09:35:29', '2017-10-02 09:35:42', '1', '1', NULL, 'shabl1', 'Template for informing a contact that their case has been closed.', NULL, ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('dde53347-f0cb-dc39-3335-59d1fe47bbb9', '2017-10-02 08:52:52', '2017-10-02 08:52:59', '1', '1', NULL, 'ууу', 'Template for informing a contact that their case has been closed.', 'уууууу', ' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>', 0, '', 0, NULL),
('ebb1c0e4-cedc-73b3-66b0-599a76ccb3a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `favorites`
--

INSERT INTO `favorites` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `parent_id`, `parent_type`) VALUES
('17b81158-5307-d7da-4795-599bd5447572', 'Leads 4a2d9def-1fda-713f-409f-599a892565f9 1', '2017-08-22 06:57:04', '2017-08-22 06:57:20', '1', '1', NULL, 1, '1', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads'),
('438c3ca7-7008-db35-d76f-59a964f9dab7', 'Leads 838d76b5-f039-452c-f060-59a95005195b 1', '2017-09-01 13:47:21', '2017-09-01 13:47:21', '1', '1', NULL, 0, '1', '838d76b5-f039-452c-f060-59a95005195b', 'Leads'),
('6f74c450-6011-7f82-88d5-59a950e254c1', 'Leads 838d76b5-f039-452c-f060-59a95005195b 1', '2017-09-01 12:22:14', '2017-09-01 12:22:22', '1', '1', NULL, 1, '1', '838d76b5-f039-452c-f060-59a95005195b', 'Leads'),
('a1a5a94d-6a04-7cba-344e-59a950e2bdfb', 'Leads 838d76b5-f039-452c-f060-59a95005195b 1', '2017-09-01 12:21:49', '2017-09-01 12:21:57', '1', '1', NULL, 1, '1', '838d76b5-f039-452c-f060-59a95005195b', 'Leads'),
('a5e1e6ff-9f80-e1ac-e78e-599bdf43d55c', 'Leads 4a2d9def-1fda-713f-409f-599a892565f9 1', '2017-08-22 07:40:23', '2017-08-22 08:05:55', '1', '1', NULL, 1, '1', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads'),
('d4b42d2e-7971-64fa-db2e-59a951df42d8', 'Leads 838d76b5-f039-452c-f060-59a95005195b 1', '2017-09-01 12:22:26', '2017-09-01 13:06:26', '1', '1', NULL, 1, '1', '838d76b5-f039-452c-f060-59a95005195b', 'Leads'),
('e7c5f047-3b4e-1625-5d9c-599ae1a708ee', 'SecurityGroups 5fceea0f-484d-978c-0c13-599ae1171c0d 1', '2017-08-21 13:34:41', '2017-08-21 13:39:50', '1', '1', NULL, 1, '1', '5fceea0f-484d-978c-0c13-599ae1171c0d', 'SecurityGroups'),
('ee3c2081-39ed-5757-6715-59a9502faed1', 'Leads 838d76b5-f039-452c-f060-59a95005195b 1', '2017-09-01 12:22:01', '2017-09-01 12:22:09', '1', '1', NULL, 1, '1', '838d76b5-f039-452c-f060-59a95005195b', 'Leads');

-- --------------------------------------------------------

--
-- Структура таблицы `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('bh_communicatorsggg_c', 'ggg_c', 'LBL_GGG', '', '', 'bh_communicators', 'multitextfield', 255, 0, NULL, '2017-09-27 09:28:06', 0, 0, 0, 0, 0, 'false', '', '', '', ''),
('Callsasterisk_caller_id_c', 'asterisk_caller_id_c', 'LBL_ASTERISK_CALLER_ID', NULL, 'trimmed callerId', 'Calls', 'varchar', 45, 0, NULL, '2017-09-29 07:31:15', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, NULL),
('Callsasterisk_call_id_c', 'asterisk_call_id_c', 'LBL_ASTERISK_CALL_ID', '', 'This is the unique id assigned to this call by the PBX, Useful for debugging but otherwise no reason to display to an end user.', 'Calls', 'varchar', 45, 0, NULL, '2017-09-28 13:40:59', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_inbound_ext_c', 'asterisk_inbound_ext_c', 'LBL_ASTERISK_INBOUND_EXT', '', 'Contains the inbounded extension.  This is useful for identifying the queue or ringgroup that the call came in on.', 'Calls', 'varchar', 45, 0, NULL, '2017-09-28 13:40:59', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_user_ext_c', 'asterisk_user_ext_c', 'LBL_ASTERISK_USER_EXT', '', 'Contains the user extension that answered or placed the call.', 'Calls', 'varchar', 45, 0, NULL, '2017-09-28 13:40:59', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2017-08-21 05:56:19', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Usersasterisk_ext_c', 'asterisk_ext_c', 'LBL_ASTERISK_EXT', NULL, NULL, 'Users', 'varchar', 45, 0, NULL, '2017-09-29 07:31:15', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Usersasterisk_inbound_c', 'asterisk_inbound_c', 'LBL_ASTERISK_INBOUND', NULL, NULL, 'Users', 'bool', 45, 0, '0', '2017-09-29 07:31:15', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Usersasterisk_outbound_c', 'asterisk_outbound_c', 'LBL_ASTERISK_OUTBOUND', NULL, NULL, 'Users', 'bool', 45, 0, '0', '2017-09-29 07:31:15', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `folders`
--

INSERT INTO `folders` (`id`, `name`, `folder_type`, `parent_folder`, `has_child`, `is_group`, `is_dynamic`, `dynamic_query`, `assign_to_id`, `created_by`, `modified_by`, `deleted`) VALUES
('c51c21ec-e3af-fd01-ac73-59d34539da7d', 'test', '', '', 0, 1, 0, '', '1', '1', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `folders_subscriptions`
--

INSERT INTO `folders_subscriptions` (`id`, `folder_id`, `assigned_user_id`) VALUES
('c51c276d-12a1-c781-26aa-59d345fcb829', 'c51c21ec-e3af-fd01-ac73-59d34539da7d', '1'),
('f302c1a4-f140-9bd5-6181-59d345c482e9', 'c51c21ec-e3af-fd01-ac73-59d34539da7d', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fp_events`
--

INSERT INTO `fp_events` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `budget`, `currency_id`, `invite_templates`, `accept_redirect`, `decline_redirect`, `activity_status_type`) VALUES
('81b32b09-df70-2050-0931-59cbbaabeb4f', 'Новое', '2017-09-27 14:50:21', '2017-09-27 14:50:21', '1', '1', NULL, 0, '1', 0, NULL, '2017-09-27 09:45:00', '2017-09-27 10:45:00', NULL, NULL, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fp_events_leads_1_c`
--

INSERT INTO `fp_events_leads_1_c` (`id`, `date_modified`, `deleted`, `fp_events_leads_1fp_events_ida`, `fp_events_leads_1leads_idb`, `invite_status`, `accept_status`, `email_responded`) VALUES
('89ce5c2e-f1a7-5520-42eb-59cbba0bd971', '2017-09-27 14:50:21', 0, '81b32b09-df70-2050-0931-59cbbaabeb4f', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Not Invited', 'No Response', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inbound_email`
--

INSERT INTO `inbound_email` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `status`, `server_url`, `email_user`, `email_password`, `port`, `service`, `mailbox`, `delete_seen`, `mailbox_type`, `template_id`, `stored_options`, `group_id`, `is_personal`, `groupfolder_id`) VALUES
('d5395caa-5dc9-4cd0-c5b0-59d34509d5a0', 0, '2017-10-03 07:59:36', '2017-10-03 07:59:36', '1', '1', 'test', 'Active', 'smtp.gmail.com', 'admin', 'foN4bR2k6hA=', 143, '::::::imap::::', 'INBOX', 0, 'pick', '', 'YToxMjp7czo5OiJmcm9tX25hbWUiO3M6MTM6IkFkbWluaXN0cmF0b3IiO3M6OToiZnJvbV9hZGRyIjtzOjEzOiJuZXdAYWRtaW4uY29tIjtzOjEzOiJyZXBseV90b19uYW1lIjtzOjA6IiI7czoxMzoicmVwbHlfdG9fYWRkciI7czowOiIiO3M6MTA6Im9ubHlfc2luY2UiO2I6MDtzOjEzOiJmaWx0ZXJfZG9tYWluIjtzOjA6IiI7czozMDoiZW1haWxfbnVtX2F1dG9yZXBsaWVzXzI0X2hvdXJzIjtzOjI6IjEwIjtzOjI2OiJhbGxvd19vdXRib3VuZF9ncm91cF91c2FnZSI7YjowO3M6MTE6InRyYXNoRm9sZGVyIjtzOjE0OiJyZW1vdmVkIEZPbGRlciI7czoxMDoic2VudEZvbGRlciI7czowOiIiO3M6MTI6ImlzQXV0b0ltcG9ydCI7YjoxO3M6MjU6ImxlYXZlTWVzc2FnZXNPbk1haWxTZXJ2ZXIiO2k6MTt9', 'c51c2309-af48-a342-d5aa-59d345a67028', 0, 'c51c21ec-e3af-fd01-ac73-59d34539da7d');

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `lead_status` varchar(100) DEFAULT NULL,
  `lead_sex` varchar(100) DEFAULT NULL,
  `resident` tinyint(1) DEFAULT '0',
  `inn` varchar(15) DEFAULT NULL,
  `date_birthday` date DEFAULT NULL,
  `soc_status` text,
  `statliveplace` text,
  `education` varchar(100) DEFAULT NULL,
  `problem_law` text,
  `judded_by_article` varchar(255) DEFAULT NULL,
  `family_status` varchar(100) DEFAULT NULL,
  `realty` text,
  `realtyby` text,
  `realty_vid` varchar(100) DEFAULT NULL,
  `srok_vladenya_nedvizh` varchar(255) DEFAULT NULL,
  `orgname` varchar(255) DEFAULT NULL,
  `org_legal_form` varchar(50) DEFAULT NULL,
  `org_size` varchar(50) DEFAULT NULL,
  `org_sphere` varchar(50) DEFAULT NULL,
  `org_position` varchar(50) DEFAULT NULL,
  `org_specialization` varchar(255) DEFAULT NULL,
  `orgwork_date_start` date DEFAULT NULL,
  `org_owner` tinyint(1) DEFAULT '0',
  `org_work_months` varchar(2) DEFAULT NULL,
  `org_work_years` varchar(4) DEFAULT NULL,
  `org_workstage_months` varchar(2) DEFAULT NULL,
  `org_workstage_years` varchar(255) DEFAULT NULL,
  `org_earn_method` text,
  `org_earn_level` varchar(50) DEFAULT NULL,
  `org_debentures` tinyint(1) DEFAULT '0',
  `debet_type` varchar(50) DEFAULT NULL,
  `debet_type_level` varchar(50) DEFAULT NULL,
  `level_volume` varchar(50) DEFAULT NULL,
  `room1_number` varchar(4) DEFAULT NULL,
  `room2_number` varchar(4) DEFAULT NULL,
  `flat1_dateregister` date DEFAULT NULL,
  `regist_term_months_flat1` varchar(4) DEFAULT NULL,
  `regist_term_years_flat1` varchar(4) DEFAULT NULL,
  `flat2_datelivestart` date DEFAULT NULL,
  `regist_term_months_flat2` varchar(4) DEFAULT NULL,
  `regist_term_years_flat2` varchar(4) DEFAULT NULL,
  `work_address_street` varchar(150) DEFAULT NULL,
  `work_address_city` varchar(150) DEFAULT NULL,
  `work_address_state` varchar(150) DEFAULT NULL,
  `work_address_index` varchar(150) DEFAULT NULL,
  `work_address_country` varchar(150) DEFAULT NULL,
  `work_room_number` varchar(4) DEFAULT NULL,
  `skype_account` varchar(40) DEFAULT NULL,
  `viber` varchar(40) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `vk` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `ok` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `odnokl` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `phone_addr_registr` varchar(100) DEFAULT NULL,
  `phone_addr_fact` varchar(100) DEFAULT NULL,
  `phone_contact_face` varchar(100) DEFAULT NULL,
  `account_num` varchar(40) DEFAULT NULL,
  `bank_name` text,
  `bank_mfo` varchar(40) DEFAULT NULL,
  `bank_emitent_name` text,
  `bank_emitent_mfo` varchar(40) DEFAULT NULL,
  `card_num` varchar(40) DEFAULT NULL,
  `overdraft` decimal(18,3) DEFAULT NULL,
  `credit_rating` decimal(18,3) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `first_name2` varchar(40) DEFAULT NULL,
  `last_name2` varchar(40) DEFAULT NULL,
  `message_to_assigned` text,
  `patronymic` varchar(40) DEFAULT NULL,
  `child_count` int(2) DEFAULT NULL,
  `communicator` varchar(255) NOT NULL DEFAULT '',
  `correspondence_method` varchar(250) DEFAULT NULL,
  `lead_parents` varchar(250) DEFAULT NULL,
  `contact_person_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`, `lead_status`, `lead_sex`, `resident`, `inn`, `date_birthday`, `soc_status`, `statliveplace`, `education`, `problem_law`, `judded_by_article`, `family_status`, `realty`, `realtyby`, `realty_vid`, `srok_vladenya_nedvizh`, `orgname`, `org_legal_form`, `org_size`, `org_sphere`, `org_position`, `org_specialization`, `orgwork_date_start`, `org_owner`, `org_work_months`, `org_work_years`, `org_workstage_months`, `org_workstage_years`, `org_earn_method`, `org_earn_level`, `org_debentures`, `debet_type`, `debet_type_level`, `level_volume`, `room1_number`, `room2_number`, `flat1_dateregister`, `regist_term_months_flat1`, `regist_term_years_flat1`, `flat2_datelivestart`, `regist_term_months_flat2`, `regist_term_years_flat2`, `work_address_street`, `work_address_city`, `work_address_state`, `work_address_index`, `work_address_country`, `work_room_number`, `skype_account`, `viber`, `facebook`, `vk`, `twitter`, `ok`, `googleplus`, `odnokl`, `instagram`, `phone_addr_registr`, `phone_addr_fact`, `phone_contact_face`, `account_num`, `bank_name`, `bank_mfo`, `bank_emitent_name`, `bank_emitent_mfo`, `card_num`, `overdraft`, `credit_rating`, `age`, `first_name2`, `last_name2`, `message_to_assigned`, `patronymic`, `child_count`, `communicator`, `correspondence_method`, `lead_parents`, `contact_person_name`) VALUES
('10c2e549-c39f-7ef0-f7da-59b11183c89e', '2017-09-07 09:28:59', '2017-10-05 06:08:07', '1', '1', NULL, 0, '1', NULL, 'Андрей', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '1312313231', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL),
('15b2317d-5f17-b967-0f5d-59c3c87bbba0', '2017-09-21 14:09:43', '2017-09-21 14:09:43', '1', '1', NULL, 0, '1', NULL, '', 'Мама', '', NULL, '', 0, NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, 'New', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '', NULL, '^^', '^^', NULL, '^^', NULL, NULL, '^^', '^^', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
('1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 09:19:04', '2017-10-05 06:19:20', '1', '1', NULL, 0, '1', NULL, 'Иван', 'Иванов', NULL, 'images.jpg', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '4648686464', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, 'Иванович', 2, '', NULL, NULL, NULL),
('5a7265ea-aa41-cc92-4445-59b8ce6cc94a', '2017-09-13 06:23:00', '2017-10-05 06:05:15', '1', '1', NULL, 0, '1', NULL, 'Николай', 'Васильев', NULL, NULL, NULL, 0, NULL, NULL, '+38(097) 677-67-67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '1231231231', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, NULL, 'ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^^|^13^,^0^,^0^,^viber^,^13', NULL, NULL, NULL),
('6acfcff6-723f-f3e3-3c1b-59c377a909f2', '2017-09-21 08:23:44', '2017-10-05 06:16:52', '1', '1', NULL, 0, '1', NULL, 'Сергей', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '1_________', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, NULL, '325235^,^1^,^0^,^whatsapp^,^325235^|^235523^,^0^,^0^,^viber^,^235523^|^532325^,^0^,^0^,^facebook^,^532325', NULL, NULL, NULL),
('70007648-47bc-d3b4-9904-59b6a1659460', '2017-09-11 14:46:53', '2017-10-05 06:13:51', '1', '1', NULL, 0, '1', NULL, 'Алексей', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '6465465465', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, 'АБ \"КЛІРИНГОВИЙ ДІМ\"', '300647', 'АТ \"Ощадбанк\"', '300465', NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL),
('8d61d039-9372-369c-f48f-59c38ae4f7fb', '2017-09-21 09:47:52', '2017-10-05 06:13:30', '1', '1', NULL, 0, '1', NULL, 'Иван', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '4_________', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL),
('98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '2017-09-26 15:04:25', '2017-10-04 12:04:30', '1', '1', 'tsggd', 0, '1', NULL, 'Валера', NULL, NULL, NULL, NULL, 0, NULL, '+38(097) 880-84-50', '+38(70) 10_-__-__', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Cold Call', 'jgjhl', 'In Process', NULL, '', 'dgx', NULL, '', '', '', NULL, '55454', '', NULL, NULL, NULL, 'http://', 'lead', 'man', 0, '444_______', '2017-09-02', '^official^', '^^', NULL, '^judded^', 'jggjg', 'unmarried', '^^', '^^', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+38(068) 668-66-86', '+38(066) 868-68-68', '+38(086) 868-68-66', NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, 'Jfjf', 'Hhfhf', NULL, NULL, 0, 'fhjgj^,^1^,^0^,^facebook^,^^|^jkgkgk^,^0^,^0^,^skype^,^^|^kggjgkjkghkh^,^0^,^0^,^whatsapp^,^', NULL, NULL, NULL),
('9ce12f06-52ad-9bbe-3467-59c36fa66eef', '2017-09-21 07:50:10', '2017-10-05 06:08:17', '1', '1', NULL, 0, '1', NULL, 'Виталий', 'Dsddsd', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '3333333333', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL),
('a909e9a5-90ce-7a2f-fd1a-59c38846be76', '2017-09-21 09:39:16', '2017-10-05 06:15:48', '1', '1', NULL, 0, '1', NULL, 'Евгений', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '23________', NULL, '^^', '^^', NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `leads_aos_contracts_1_c`
--

CREATE TABLE `leads_aos_contracts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_aos_contracts_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_aos_contracts_1aos_contracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_audit`
--

INSERT INTO `leads_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('18519e26-7f46-6e15-8841-59c21c8e8383', '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', '2017-09-20 07:43:37', '1', 'phone_work', 'phone', '', '+38(097) 677-67-67', NULL, NULL),
('198a36d7-d0eb-cfbe-3767-59aced56d740', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-04 06:07:12', '1', 'phone_work', 'phone', '+38063789456', '+38(063) 123-45-67', NULL, NULL),
('20c24308-0e75-ad33-3203-59a4106b81a2', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-28 12:47:33', '1', 'phone_work', 'phone', '102', '+38063789456', NULL, NULL),
('219df5fd-c829-2b4c-cff9-59d1d768793b', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '2017-10-02 06:04:49', '1', 'phone_work', 'phone', '7010', '+38(70) 10_-__-__', NULL, NULL),
('24f541a9-06b9-d053-0083-599be9d7b575', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:19:25', '1', 'volume_trans1', 'varchar', NULL, '2 литра', NULL, NULL),
('25896ab8-0e07-48d8-12ef-59b122adfde8', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 10:41:26', '1', 'yearissuetrans1', 'enum', NULL, '1970', NULL, NULL),
('25b0d33e-a0b5-f2c9-3643-599be911b516', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:19:25', '1', 'volume_trans2', 'varchar', NULL, '3,5 литра', NULL, NULL),
('45391111-1419-e591-3fb0-599be7f697ad', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:11:19', '1', 'yearissuetrans2', 'varchar', '1980', '2014', NULL, NULL),
('45b6284f-d313-46a7-e3a2-599be7be2307', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:11:19', '1', 'model_trans2', 'varchar', NULL, 'TT', NULL, NULL),
('4e23c647-1e08-e26d-14ec-59ad4bf33c7f', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-04 12:47:29', '1', 'assigned_user_id', 'relate', 'eff07114-603c-c0d2-0e5e-599bcd264773', '1', NULL, NULL),
('552eb0d2-8acf-eb2f-1056-59a94304c40e', '484a8025-f2a1-f64a-e028-59a67cff19a5', '2017-09-01 11:25:08', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL),
('57965704-d6de-5bb7-8d13-59a9470d04a6', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-01 11:41:11', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL),
('58555ce1-ecea-317a-0185-59a959522716', '838d76b5-f039-452c-f060-59a95005195b', '2017-09-01 13:00:08', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL),
('720cffe3-bad6-aff8-5092-599be1609d88', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 07:47:34', '1', 'model_trans1', 'varchar', NULL, 'Carina - E', NULL, NULL),
('76b8813f-f34c-826c-99a3-599bf0d07f98', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:49:11', '1', 'yearissuetrans3', 'varchar', NULL, '1995', NULL, NULL),
('7754cd2a-00b4-d2e1-d5fe-599bf04f5456', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:49:11', '1', 'yearissuetrans4', 'varchar', NULL, '1970', NULL, NULL),
('8bcacf1d-19dc-f6b0-acf7-599be5133168', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 08:05:32', '1', 'yearissuetrans2', 'varchar', NULL, '1980', NULL, NULL),
('8caabb34-e361-5f6a-11eb-59ca5047fcc4', '6acfcff6-723f-f3e3-3c1b-59c377a909f2', '2017-09-26 13:03:56', '1', 'communicator', 'MultiTextField', '', '325235^,^1^,^0^,^whatsapp^,^325235^|^235523^,^0^,^0^,^viber^,^235523^|^532325^,^0^,^0^,^facebook^,^532325', NULL, NULL),
('91210b28-30ec-3629-44fc-599bd89b1808', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 07:08:38', '1', 'yearissuetrans1', 'varchar', NULL, '1986', NULL, NULL),
('973935a4-d43f-84bb-0020-59b105c40230', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-07 08:39:15', '1', 'yearissuetrans1', 'enum', '1970', '2015', NULL, NULL),
('97f4be78-7dad-9435-85c8-59b1054a595e', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-07 08:39:15', '1', 'yearissuetrans2', 'enum', '2014', '2016', NULL, NULL),
('98eeb2a5-fdcd-23e6-c1ae-59b105cad618', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-07 08:39:15', '1', 'yearissuetrans3', 'enum', '1995', '2017', NULL, NULL),
('99aa3c05-11b4-5806-b203-59b105afce23', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-07 08:39:15', '1', 'yearissuetrans4', 'enum', '1970', '2018', NULL, NULL),
('a01936af-e622-006c-d601-599bf71e1283', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 09:22:02', '1', 'volume_trans3', 'varchar', NULL, '1,5 литра', NULL, NULL),
('a04c8708-1beb-d053-3dcd-59b103e7f706', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-07 08:30:15', '1', 'yearissuetrans1', 'enum', '1986', '1970', NULL, NULL),
('a113384a-8cae-c519-09ee-599bf773c088', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 09:22:02', '1', 'volume_trans4', 'varchar', NULL, '10 литров', NULL, NULL),
('aa89a0dd-bd83-660b-b5d1-59ad4a1eaca6', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-04 12:42:23', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL),
('abe68b8a-4548-b0a7-aef3-59acedca9615', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-04 06:07:56', '1', 'assigned_user_id', 'relate', 'eff07114-603c-c0d2-0e5e-599bcd264773', '1', NULL, NULL),
('b56335e1-1c63-6683-c2c8-599bf57f8889', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 09:11:59', '1', 'model_trans3', 'varchar', NULL, 'VRX', NULL, NULL),
('b63e04da-4186-b39b-e0f8-599bf5ad0df4', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-22 09:11:59', '1', 'model_trans4', 'varchar', NULL, 'Z 350', NULL, NULL),
('bb5ab211-dcb6-20f3-162a-59a9686113fc', '838d76b5-f039-452c-f060-59a95005195b', '2017-09-01 14:00:34', '1', 'assigned_user_id', 'relate', 'eff07114-603c-c0d2-0e5e-599bcd264773', '1', NULL, NULL),
('d1cef6a8-5550-5bf1-c885-59ca6105bbd2', '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', '2017-09-26 14:18:47', '1', 'communicator', 'MultiTextField', 'ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^', 'ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^^|^13^,^0^,^0^,^viber^,^13', NULL, NULL),
('d96ab0f8-560b-d736-b0c8-59a96d058b2e', '838d76b5-f039-452c-f060-59a95005195b', '2017-09-01 14:22:43', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL),
('e0bac5ef-9656-7f1b-4bdc-59b1167fe228', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 09:52:07', '1', 'volume_trans1', 'decimal', '0.0', '2.5', NULL, NULL),
('e1c84315-7339-8092-324d-59ca198cf2d9', '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', '2017-09-26 09:11:08', '1', 'communicator', 'MultiTextField', '', 'ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^', NULL, NULL),
('e73425cc-e934-43cf-3d13-59b129f47c3a', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 11:12:23', '1', 'yearissuetrans2', 'enum', NULL, '1971', NULL, NULL),
('e7efa56e-6d64-020c-1c08-59b1293a2a78', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 11:12:23', '1', 'yearissuetrans3', 'enum', NULL, '1972', NULL, NULL),
('e8e9af67-9ca5-d096-3d7d-59b129784f3b', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 11:12:23', '1', 'yearissuetrans4', 'enum', NULL, '1973', NULL, NULL),
('ed770f3e-f9ca-da09-728b-59cde5008fd4', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '2017-09-29 06:16:02', '1', 'phone_work', 'phone', '+38(098) 777-77-77', '+38(093) 779-56-18', NULL, NULL),
('ef9f7dc3-f671-889e-5a1d-59b116679a84', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 09:52:07', '1', 'volume_trans2', 'decimal', '0.0', '3.2', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_autotransport_1_c`
--

CREATE TABLE `leads_bh_autotransport_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_autotransport_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_autotransport_1bh_autotransport_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_bh_autotransport_1_c`
--

INSERT INTO `leads_bh_autotransport_1_c` (`id`, `date_modified`, `deleted`, `leads_bh_autotransport_1leads_ida`, `leads_bh_autotransport_1bh_autotransport_idb`) VALUES
('4524383f-5bed-a19e-7ecc-59c21d305ca1', '2017-09-20 07:48:55', 0, '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', '35a4e2aa-5dc6-d455-e9e9-59c21d48be24'),
('5a5c5dc6-8dab-ddd5-1648-59cc9c2dc71e', '2017-09-28 06:52:14', 0, '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '4ead9f49-d87b-7fe5-c730-59cc9c77c36a'),
('a2d70787-8d8e-ac70-2736-59cc9c759b5f', '2017-09-28 06:53:32', 0, '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '9baff353-0cb6-4435-6a1f-59cc9c9d4fcc');

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_lead_adress_1_c`
--

CREATE TABLE `leads_bh_lead_adress_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_lead_adress_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_lead_adress_1bh_lead_adress_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_bh_lead_adress_1_c`
--

INSERT INTO `leads_bh_lead_adress_1_c` (`id`, `date_modified`, `deleted`, `leads_bh_lead_adress_1leads_ida`, `leads_bh_lead_adress_1bh_lead_adress_idb`) VALUES
('1cd949f6-ce79-b174-2394-59c2583894d1', '2017-09-20 12:00:28', 0, '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', 'cdfe0480-e6e6-db79-ad5f-59c258a02b61'),
('89914f51-b039-deb5-94c0-59c4caf3bd5d', '2017-09-22 08:33:02', 0, '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', '71b9c3fb-17fe-fb62-95b1-59c4ca9a4524'),
('df65f8b3-af4e-18f9-0dbf-59c4ca36dc0c', '2017-09-22 08:31:42', 0, '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', 'a4083cbf-858f-e628-b24b-59c4cafc804b');

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_marketing_response_1_c`
--

CREATE TABLE `leads_bh_marketing_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_marketing_response_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_marketing_response_1bh_marketing_response_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_bh_marketing_response_1_c`
--

INSERT INTO `leads_bh_marketing_response_1_c` (`id`, `date_modified`, `deleted`, `leads_bh_marketing_response_1leads_ida`, `leads_bh_marketing_response_1bh_marketing_response_idb`) VALUES
('beb491ad-8e7f-fd26-bc4e-59d49d84a6f2', '2017-10-04 08:38:19', 0, '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '7769832a-236d-bfbd-fcb6-59d49d972ed1'),
('d1c5a836-73b8-7861-1e08-59d4b7d4e328', '2017-10-04 10:26:27', 0, '1a850344-233e-e32f-fe21-59b10fc56fe1', '39d947d8-fec3-148a-3c9a-59d34f872059');

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_packet_activation_1_c`
--

CREATE TABLE `leads_bh_packet_activation_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_packet_activation_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_packet_activation_1bh_packet_activation_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_bh_packet_activation_1_c`
--

INSERT INTO `leads_bh_packet_activation_1_c` (`id`, `date_modified`, `deleted`, `leads_bh_packet_activation_1leads_ida`, `leads_bh_packet_activation_1bh_packet_activation_idb`) VALUES
('8f3609d9-b6d0-0126-faf0-59bbbc78846b', '2017-09-15 11:40:01', 0, '1a850344-233e-e32f-fe21-59b10fc56fe1', '2905487e-f13a-594a-6d2f-59bb73118e66');

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_passports_1_c`
--

CREATE TABLE `leads_bh_passports_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_passports_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_passports_1bh_passports_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_phones_1_c`
--

CREATE TABLE `leads_bh_phones_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_phones_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_phones_1bh_phones_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_place_of_work_1_c`
--

CREATE TABLE `leads_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_place_of_work_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_bh_realty_1_c`
--

CREATE TABLE `leads_bh_realty_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_realty_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_realty_1bh_realty_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_bh_realty_1_c`
--

INSERT INTO `leads_bh_realty_1_c` (`id`, `date_modified`, `deleted`, `leads_bh_realty_1leads_ida`, `leads_bh_realty_1bh_realty_idb`) VALUES
('4db2eed4-17e5-cca1-898a-59d4ce4e8195', '2017-10-04 12:04:30', 0, '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '900c0ca4-717c-71a5-03f9-59b7d157cf73');

-- --------------------------------------------------------

--
-- Структура таблицы `leads_cases_1_c`
--

CREATE TABLE `leads_cases_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_cases_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_cases_1cases_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('10c2e549-c39f-7ef0-f7da-59b11183c89e', 0.00000000, 0.00000000, '', ''),
('15b2317d-5f17-b967-0f5d-59c3c87bbba0', 0.00000000, 0.00000000, NULL, NULL),
('1a850344-233e-e32f-fe21-59b10fc56fe1', 0.00000000, 0.00000000, '', ''),
('3e372765-5b6e-54bd-3f65-59aea194b1e0', 0.00000000, 0.00000000, '', ''),
('42592f10-786a-0ed0-3aa8-59b0e0dcb109', 0.00000000, 0.00000000, NULL, NULL),
('484a8025-f2a1-f64a-e028-59a67cff19a5', 0.00000000, 0.00000000, '', ''),
('4a2d9def-1fda-713f-409f-599a892565f9', 0.00000000, 0.00000000, '', ''),
('559fa3be-40ba-9fe7-c560-599bcbc2bded', 0.00000000, 0.00000000, NULL, NULL),
('5a7265ea-aa41-cc92-4445-59b8ce6cc94a', 0.00000000, 0.00000000, '', ''),
('6acfcff6-723f-f3e3-3c1b-59c377a909f2', 0.00000000, 0.00000000, '', ''),
('70007648-47bc-d3b4-9904-59b6a1659460', 0.00000000, 0.00000000, '', ''),
('711acfc9-ba15-32d6-171e-59affbea8e58', 0.00000000, 0.00000000, NULL, NULL),
('832522a5-c2bf-1b3f-6541-59a50fc69935', 0.00000000, 0.00000000, '', ''),
('838d76b5-f039-452c-f060-59a95005195b', 0.00000000, 0.00000000, '', ''),
('86bdbdc5-2a0a-fde9-d210-59a512d4d699', 0.00000000, 0.00000000, NULL, NULL),
('8d61d039-9372-369c-f48f-59c38ae4f7fb', 0.00000000, 0.00000000, '', ''),
('98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 0.00000000, 0.00000000, '', ''),
('9ce12f06-52ad-9bbe-3467-59c36fa66eef', 0.00000000, 0.00000000, '', ''),
('a909e9a5-90ce-7a2f-fd1a-59c38846be76', 0.00000000, 0.00000000, '', ''),
('b55d023e-ae8f-cead-e37a-59afef888ffe', 0.00000000, 0.00000000, NULL, NULL),
('e32272a9-d480-2e6c-abc4-59b0e087ec6f', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `leads_documents_1_c`
--

CREATE TABLE `leads_documents_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_documents_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_documents_1documents_idb` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads_documents_1_c`
--

INSERT INTO `leads_documents_1_c` (`id`, `date_modified`, `deleted`, `leads_documents_1leads_ida`, `leads_documents_1documents_idb`, `document_revision_id`) VALUES
('b154b383-d7a3-bfed-edac-59ba79e2c6be', '2017-09-14 12:45:48', 0, '1a850344-233e-e32f-fe21-59b10fc56fe1', '9193a8b7-a12e-afbf-3979-59ba79cb5d22', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `leads_leads_2_c`
--

CREATE TABLE `leads_leads_2_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_leads_2leads_ida` varchar(36) DEFAULT NULL,
  `leads_leads_2leads_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('63265c44-f3fe-8e42-1f78-599a76c05b05', 'system', 'system', '1', 'SMTP', 'other', 'smtp.gmail.com', 25, 'admin', 'kUR3hxAdhzU=', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prospect_lists`
--

INSERT INTO `prospect_lists` (`assigned_user_id`, `id`, `name`, `list_type`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `description`, `domain_name`) VALUES
('1', '525749a1-daad-f8b3-a8d8-59d34a835152', 'список 1', 'default', '2017-10-03 08:31:34', '2017-10-03 08:31:34', '1', '1', 0, '', ''),
('1', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', 'мой', 'default', '2017-10-02 07:00:26', '2017-10-02 13:13:37', '1', '1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prospect_lists_prospects`
--

INSERT INTO `prospect_lists_prospects` (`id`, `prospect_list_id`, `related_id`, `related_type`, `date_modified`, `deleted`) VALUES
('ae6a36a7-01b2-e682-dd75-59d1e45e93f0', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '6acfcff6-723f-f3e3-3c1b-59c377a909f2', 'Leads', '2017-10-02 10:44:58', 0),
('b38adef7-e4f0-cd5f-f7a7-59d1e442ebe8', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', 'Leads', '2017-10-02 10:44:58', 0),
('b5fbd677-4914-797f-0490-59d1e482e4cb', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', 'a909e9a5-90ce-7a2f-fd1a-59c38846be76', 'Leads', '2017-10-02 10:44:58', 0),
('b7efe86e-b0fd-1e80-3219-59d1e4ee1752', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '8d61d039-9372-369c-f48f-59c38ae4f7fb', 'Leads', '2017-10-02 10:44:58', 0),
('ba226bff-4332-d68e-edea-59d1e442f3a0', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '9ce12f06-52ad-9bbe-3467-59c36fa66eef', 'Leads', '2017-10-02 10:44:58', 0),
('bc167c09-fbe6-4f87-f26e-59d1e455e09f', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '10c2e549-c39f-7ef0-f7da-59b11183c89e', 'Leads', '2017-10-02 10:44:58', 0),
('c7131baf-e668-6ee6-dd05-59d1e44c8bcc', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '1a850344-233e-e32f-fe21-59b10fc56fe1', 'Leads', '2017-10-02 10:44:58', 0),
('c945a579-35ed-aaf4-bfb7-59d1e45c9a14', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '70007648-47bc-d3b4-9904-59b6a1659460', 'Leads', '2017-10-02 10:44:58', 0),
('cb782cce-8356-3f54-58c8-59d1e4fcbb93', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Leads', '2017-10-02 10:44:58', 0),
('cdaab157-8a7e-3f05-0d32-59d1e4f1e1a4', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '15b2317d-5f17-b967-0f5d-59c3c87bbba0', 'Leads', '2017-10-02 10:44:58', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prospect_list_campaigns`
--

INSERT INTO `prospect_list_campaigns` (`id`, `prospect_list_id`, `campaign_id`, `date_modified`, `deleted`) VALUES
('1cb08f13-cb7c-162f-d58a-59d22bfbb74e', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '1bf2e844-8764-d8e2-b3cd-59d228b2fa80', '2017-10-02 12:03:29', 0),
('3b9b4103-321b-2b5b-dd6a-59d1f3d4b3bd', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '51b98206-9490-5a8a-b032-59d1e7fc5b7a', '2017-10-02 08:05:02', 0),
('5777d2b3-4782-4c51-1eef-59d34ac4e63f', '525749a1-daad-f8b3-a8d8-59d34a835152', '3f0232ce-059c-a184-3838-59d34aed4ef4', '2017-10-03 08:31:34', 0),
('5af06258-27f2-00e3-e353-59d238ba3c36', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '47c9c4b7-4e4b-6596-2ad9-59d238ebe0bd', '2017-10-02 13:02:43', 0),
('5f7699b0-ce1b-efcd-866f-59d334981b63', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', 'b5183c65-1b93-5e6e-b364-59d24333e4a8', '2017-10-03 06:55:13', 0),
('94bd6aa8-9d22-35d7-5986-59d21ba3db75', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '896e8aca-8bfc-63a3-edb4-59d21bdbab08', '2017-10-02 10:56:41', 0),
('bfd77612-ae22-1388-24ac-59d20881718d', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', '1ed19be7-94c2-25d0-0b3a-59d1fe8df63f', '2017-10-02 09:34:40', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('10267d4d-ae53-e435-7489-59d5db8463f1', 'leads_bh_passports_1', 'Leads', 'leads', 'id', 'bh_passports', 'bh_passports', 'id', 'leads_bh_passports_1_c', 'leads_bh_passports_1leads_ida', 'leads_bh_passports_1bh_passports_idb', 'many-to-many', NULL, NULL, 0, 0),
('115f0cfe-86ae-488f-0b09-59d5db48e494', 'leads_bh_phones_1', 'Leads', 'leads', 'id', 'bh_phones', 'bh_phones', 'id', 'leads_bh_phones_1_c', 'leads_bh_phones_1leads_ida', 'leads_bh_phones_1bh_phones_idb', 'many-to-many', NULL, NULL, 0, 0),
('11dc01cc-4461-5c4e-c65a-59d5db6bcf22', 'leads_bh_place_of_work_1', 'Leads', 'leads', 'id', 'bh_place_of_work', 'bh_place_of_work', 'id', 'leads_bh_place_of_work_1_c', 'leads_bh_place_of_work_1leads_ida', 'leads_bh_place_of_work_1bh_place_of_work_idb', 'many-to-many', NULL, NULL, 0, 0),
('121a87ad-825d-c340-e8dd-59d5dbc397c9', 'leads_bh_realty_1', 'Leads', 'leads', 'id', 'bh_Realty', 'bh_realty', 'id', 'leads_bh_realty_1_c', 'leads_bh_realty_1leads_ida', 'leads_bh_realty_1bh_realty_idb', 'many-to-many', NULL, NULL, 0, 0),
('12472de2-152a-0966-dadc-59d5dbed0465', 'bh_faq_modified_user', 'Users', 'users', 'id', 'bh_faq', 'bh_faq', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12590db4-dc6f-bc55-ed49-59d5db312218', 'leads_cases_1', 'Leads', 'leads', 'id', 'Cases', 'cases', 'id', 'leads_cases_1_c', 'leads_cases_1leads_ida', 'leads_cases_1cases_idb', 'many-to-many', NULL, NULL, 0, 0),
('1285ad9c-9426-7041-13cf-59d5db3a93c1', 'bh_faq_created_by', 'Users', 'users', 'id', 'bh_faq', 'bh_faq', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12c42554-957e-c148-1a9b-59d5dbd363f1', 'bh_faq_assigned_user', 'Users', 'users', 'id', 'bh_faq', 'bh_faq', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12d6031a-6e12-3dc1-b042-59d5db7568ec', 'leads_documents_1', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'leads_documents_1_c', 'leads_documents_1leads_ida', 'leads_documents_1documents_idb', 'many-to-many', NULL, NULL, 0, 0),
('1314894b-25b2-333f-deef-59d5db378a3d', 'leads_leads_2', 'Leads', 'leads', 'id', 'Leads', 'leads', 'id', 'leads_leads_2_c', 'leads_leads_2leads_ida', 'leads_leads_2leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('13412071-c0c4-c05d-09ce-59d5db97e4a2', 'securitygroups_bh_faq', 'SecurityGroups', 'securitygroups', 'id', 'bh_faq', 'bh_faq', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_faq', 0, 0),
('144257a5-674e-36a9-25a7-59d5dbb934ae', 'bh_position_at_work_modified_user', 'Users', 'users', 'id', 'bh_position_at_work', 'bh_position_at_work', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1445e0a5-ebc2-b46d-2464-59d5db40abf0', 'bh_scripts_modified_user', 'Users', 'users', 'id', 'bh_scripts', 'bh_scripts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1480d5b1-f5dc-d253-3c3b-59d5dbfc7cfd', 'bh_position_at_work_created_by', 'Users', 'users', 'id', 'bh_position_at_work', 'bh_position_at_work', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14fddab7-436b-5770-6f5f-59d5dbe0217d', 'bh_position_at_work_assigned_user', 'Users', 'users', 'id', 'bh_position_at_work', 'bh_position_at_work', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1538c1fe-616d-9fbd-6f26-59d5dbda4369', 'bh_marketing_response_modified_user', 'Users', 'users', 'id', 'bh_marketing_response', 'bh_marketing_response', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('153c5e71-83dd-eaae-0a0d-59d5dbcd08c1', 'securitygroups_bh_position_at_work', 'SecurityGroups', 'securitygroups', 'id', 'bh_position_at_work', 'bh_position_at_work', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_position_at_work', 0, 0),
('15774d9e-c835-bf57-7b00-59d5db34932a', 'bh_marketing_response_created_by', 'Users', 'users', 'id', 'bh_marketing_response', 'bh_marketing_response', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15f44807-f76e-8fc0-2ef7-59d5db8e93f3', 'bh_marketing_response_assigned_user', 'Users', 'users', 'id', 'bh_marketing_response', 'bh_marketing_response', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1632c61c-b890-79cf-9d70-59d5db82af3f', 'securitygroups_bh_marketing_response', 'SecurityGroups', 'securitygroups', 'id', 'bh_marketing_response', 'bh_marketing_response', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_marketing_response', 0, 0),
('163a0555-c9f2-2e4e-4370-59d5db7f225a', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('180402b0-d92f-8ed0-a60d-59d5db53744e', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('198861ff-9730-fd1c-8eea-59d5dbc7851f', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19c6e7ad-1c09-8724-f16e-59d5db67fa7e', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19fe3433-40ab-0631-6dc3-59d5db49cd6e', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a22035f-fb2a-f875-3a0b-59d5db07f6e0', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('1a3cb285-ee6a-7372-73bf-59d5db919271', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1cb87f71-47e8-00ad-0b33-59d5db0bca52', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d358c16-70d9-beec-d60d-59d5db255701', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1dd102a5-3f22-a8cb-5c44-59d5db335c54', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e0a00db-0f8e-3c9e-9c64-59d5dbc27de4', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('1f22649b-0d25-87ab-0fd7-59d5db53a796', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f60ec24-a98f-6f27-c395-59d5dbe5c230', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f9f603f-bc8e-c890-9aa4-59d5dbc6ccd3', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fd401a8-3566-7bf6-0b84-59d5dbded6c3', 'aos_products_bh_case_compound_1', 'AOS_Products', 'aos_products', 'id', 'bh_case_compound', 'bh_case_compound', 'id', 'aos_products_bh_case_compound_1_c', 'aos_products_bh_case_compound_1aos_products_ida', 'aos_products_bh_case_compound_1bh_case_compound_idb', 'many-to-many', NULL, NULL, 0, 0),
('1fe50080-57ac-1584-1b5d-59d5dbed4ec3', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2023842e-fd0c-bcf2-f733-59d5db6bd11f', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21b90bce-69f1-94d1-5807-59d5dbd6eaa9', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23bc07dc-b521-c0fd-8c51-59d5db99b8ae', 'bh_campaine_products_aos_products_1', 'bh_campaine_products', 'bh_campaine_products', 'id', 'AOS_Products', 'aos_products', 'id', 'bh_campaine_products_aos_products_1_c', 'bh_campaine_products_aos_products_1bh_campaine_products_ida', 'bh_campaine_products_aos_products_1aos_products_idb', 'many-to-many', NULL, NULL, 0, 0),
('24f3be95-5da4-5290-a9ee-59d5db3e009b', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('250937b6-1db9-5233-cf9c-59d5dbcafd4d', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25323ddc-e3e8-1fa4-2fce-59d5db83f055', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('2547b865-9898-5561-8c89-59d5dbdd0ffb', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('258637a9-f0c3-620c-61cc-59d5db0e655e', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25af46b2-d32a-f0e4-74d4-59d5dbadda8b', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25c4bbe0-f3d0-1fb8-3f5b-59d5db93faf9', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('25cbd948-2da9-8339-2cf5-59d5dbf6dcd6', 'bh_channels_impact_modified_user', 'Users', 'users', 'id', 'bh_channels_impact', 'bh_channels_impact', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('260a5c2d-00f3-6836-e5d5-59d5dbd252af', 'bh_channels_impact_created_by', 'Users', 'users', 'id', 'bh_channels_impact', 'bh_channels_impact', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2648dd3f-d3f0-4e24-45b5-59d5db3a14ea', 'bh_channels_impact_assigned_user', 'Users', 'users', 'id', 'bh_channels_impact', 'bh_channels_impact', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26875b64-da8b-ce22-adf8-59d5db235367', 'securitygroups_bh_channels_impact', 'SecurityGroups', 'securitygroups', 'id', 'bh_channels_impact', 'bh_channels_impact', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_channels_impact', 0, 0),
('279c2b3a-d8ce-7a2a-0f57-59d5dbc7dab7', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27a401df-6b94-6d40-c872-59d5dbdc376c', 'bh_card_ident_leads', 'bh_Card_ident', 'bh_card_ident', 'id', 'Leads', 'leads', 'id', 'bh_card_ident_leads_c', 'bh_card_ident_leadsbh_card_ident_ida', 'bh_card_ident_leadsleads_idb', 'many-to-many', NULL, NULL, 0, 0),
('280cbf76-e307-5c25-2e73-59d5db894e35', 'bh_scripts_created_by', 'Users', 'users', 'id', 'bh_scripts', 'bh_scripts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('281922be-2621-c6ca-2153-59d5db75a3a6', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2857acda-636a-e436-607a-59d5db34b57c', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2889bd62-7c96-9eea-fda3-59d5db4861fd', 'bh_scripts_assigned_user', 'Users', 'users', 'id', 'bh_scripts', 'bh_scripts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('28962e94-ab2d-a710-3d9e-59d5dbffcd13', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('28c83c3f-7cd3-f45b-1c3e-59d5db0de81d', 'securitygroups_bh_scripts', 'SecurityGroups', 'securitygroups', 'id', 'bh_scripts', 'bh_scripts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_scripts', 0, 0),
('28d4a29e-2af6-b73f-bbb9-59d5db46937d', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('29132406-2615-2131-bf2f-59d5db569273', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29132812-019c-898c-fc2d-59d5dbde760c', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2951a11d-0b75-6e50-7a30-59d5db9c1ba6', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('29890b19-047a-cfe0-1dc9-59d5db2f0abb', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2990288f-93ed-ede0-d110-59d5db3f86d4', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('29cea259-4563-4d91-9782-59d5dbd7c927', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2a0d239a-6f14-4204-cc37-59d5db88e9e8', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2a4ba277-36fc-3112-df5c-59d5db7a9fb9', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2a8a22fa-4a08-6f27-856e-59d5db827449', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('2b8c02c1-28e0-f35e-9cf7-59d5dba5f0d6', 'bh_category_at_work_bh_place_of_work_1', 'bh_category_at_work', 'bh_category_at_work', 'id', 'bh_place_of_work', 'bh_place_of_work', 'id', 'bh_category_at_work_bh_place_of_work_1_c', 'bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida', 'bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb', 'many-to-many', NULL, NULL, 0, 0),
('2c81c92c-1a1d-9b80-f0d7-59d5dbf5b4db', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c93a11c-8e58-33a1-69e9-59d5db313fd9', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cc04bd7-738a-33e6-0ca2-59d5db660789', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cd22c2d-e96f-ac78-b86a-59d5dbb6d483', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cfeca56-1f59-711e-b52f-59d5dbdd730b', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d3801d5-c5f5-ad72-442d-59d5db8b0440', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d3d4d59-8f37-bd2a-d234-59d5dbacdbe9', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('2d4f21f3-ec78-dff0-6a87-59d5db2f3591', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d710245-3a2c-e9e0-eb98-59d5dbf2ec43', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('2d7bc936-442d-11ae-b65e-59d5db3f7cfb', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('2dba4790-7a24-6807-8eea-59d5db35d23b', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2df8c044-73da-7581-dd11-59d5dbcbfe6d', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2e374868-052f-b4bf-a0f9-59d5dbfba44d', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2e75cfa8-ec75-0a7b-d3c9-59d5db02128e', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2eb4513d-1c52-e51d-d0c7-59d5db6e6e71', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2ef2db03-34be-baf6-253c-59d5dbb83b4f', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2f3158a2-3c66-afd2-b180-59d5dbf4b386', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('2f740810-f8f7-0af7-cec3-59d5db5de17f', 'bh_country_bh_region_1', 'bh_country', 'bh_country', 'id', 'bh_region', 'bh_region', 'id', 'bh_country_bh_region_1_c', 'bh_country_bh_region_1bh_country_ida', 'bh_country_bh_region_1bh_region_idb', 'many-to-many', NULL, NULL, 0, 0),
('304f1fb9-312d-94c7-b75a-59d5db5cb4d7', 'bh_faq_history_modified_user', 'Users', 'users', 'id', 'bh_faq_history', 'bh_faq_history', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('308d99f2-7d92-b00a-ad3f-59d5db58f5de', 'bh_faq_history_created_by', 'Users', 'users', 'id', 'bh_faq_history', 'bh_faq_history', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30cc16c7-f6e7-6782-f289-59d5dba4cba4', 'bh_faq_history_assigned_user', 'Users', 'users', 'id', 'bh_faq_history', 'bh_faq_history', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31200adc-f7a8-b8bb-1cd4-59d5db34a9d3', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('313010ba-b01e-4c74-bacc-59d5db0748a7', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31491ddb-cc59-f69c-6a22-59d5db54a185', 'securitygroups_bh_faq_history', 'SecurityGroups', 'securitygroups', 'id', 'bh_faq_history', 'bh_faq_history', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_faq_history', 0, 0),
('3159065e-2b7c-c13f-26c1-59d5db78cbde', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('316e99d4-318a-e0d6-f0e9-59d5dbf21b5c', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31ad1341-9ee8-9da2-7351-59d5dbc6b27d', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31cd4a2e-3495-1929-a62a-59d5db203812', 'bh_formed_packets_modified_user', 'Users', 'users', 'id', 'bh_formed_packets', 'bh_formed_packets', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3288ce20-055d-f2f3-5b4b-59d5db7505bc', 'bh_formed_packets_created_by', 'Users', 'users', 'id', 'bh_formed_packets', 'bh_formed_packets', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32c746e3-7b4b-85bb-2dff-59d5dbe9f57c', 'bh_formed_packets_assigned_user', 'Users', 'users', 'id', 'bh_formed_packets', 'bh_formed_packets', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3305c22f-d3da-3ff6-08f7-59d5dbbdb98f', 'securitygroups_bh_formed_packets', 'SecurityGroups', 'securitygroups', 'id', 'bh_formed_packets', 'bh_formed_packets', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_formed_packets', 0, 0),
('35080e7f-871a-0847-1d86-59d5dbc21b89', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3615bdef-4e47-a7fe-2e98-59d5db6d3be4', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3654301a-2494-de28-5a25-59d5db42771e', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('366d32c3-4e84-0187-f759-59d5db8e023d', 'bh_org_trade_points_modified_user', 'Users', 'users', 'id', 'bh_org_trade_points', 'bh_org_trade_points', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3692b160-751e-fdfe-af81-59d5db8152a0', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36ea4ebf-7d7d-a8f8-a846-59d5dbbcc6b6', 'bh_org_trade_points_created_by', 'Users', 'users', 'id', 'bh_org_trade_points', 'bh_org_trade_points', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3728c88b-057f-f82f-3d3c-59d5db8117dc', 'bh_org_trade_points_assigned_user', 'Users', 'users', 'id', 'bh_org_trade_points', 'bh_org_trade_points', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('374404b2-d9ec-d49e-a400-59d5db855184', 'bh_faq_history_bh_faq', 'bh_faq', 'bh_faq', 'id', 'bh_faq_history', 'bh_faq_history', 'id', 'bh_faq_history_bh_faq_c', 'bh_faq_history_bh_faqbh_faq_ida', 'bh_faq_history_bh_faqbh_faq_history_idb', 'many-to-many', NULL, NULL, 0, 0),
('3767490a-6add-ba71-a774-59d5db2a7b95', 'securitygroups_bh_org_trade_points', 'SecurityGroups', 'securitygroups', 'id', 'bh_org_trade_points', 'bh_org_trade_points', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_org_trade_points', 0, 0),
('38568272-ab05-ed8c-ece7-59d5dba3dbb0', 'bh_campaine_products_created_by', 'Users', 'users', 'id', 'bh_campaine_products', 'bh_campaine_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38950b43-a3e8-5241-526c-59d5db06be0f', 'bh_campaine_products_assigned_user', 'Users', 'users', 'id', 'bh_campaine_products', 'bh_campaine_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38d3839d-de7e-dd88-74b4-59d5db74a9ee', 'securitygroups_bh_campaine_products', 'SecurityGroups', 'securitygroups', 'id', 'bh_campaine_products', 'bh_campaine_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_campaine_products', 0, 0),
('38f002d5-05c3-59fe-fd6c-59d5db2d2054', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('3aaafe67-b07a-8dec-35f5-59d5dbc17713', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b2c0bad-71c4-5a24-30e8-59d5dbd22e76', 'bh_formed_packets_aos_products_1', 'bh_formed_packets', 'bh_formed_packets', 'id', 'AOS_Products', 'aos_products', 'id', 'bh_formed_packets_aos_products_1_c', 'bh_formed_packets_aos_products_1bh_formed_packets_ida', 'bh_formed_packets_aos_products_1aos_products_idb', 'many-to-many', NULL, NULL, 0, 0),
('3cd80aff-bec7-c538-33f3-59d5dbf722da', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ea87d1c-3d14-337a-d43c-59d5dba66285', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ee36a4e-9f04-d7cb-7656-59d5dba1a047', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f21e78f-2d06-9b43-0825-59d5dbec0361', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f258fca-e800-5786-6b5e-59d5dbdb19a0', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f6409a8-daed-64cd-5bfd-59d5db4351b5', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3fa28270-8523-729b-4cf2-59d5dbca163a', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('420531a7-1308-0de7-6f8b-59d5dbe9d672', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42824dd5-0694-0bc0-630f-59d5db9014a1', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42fd0a8a-ef68-6b16-6c16-59d5dba51544', 'bh_formed_packets_bh_packet_activation_1', 'bh_formed_packets', 'bh_formed_packets', 'id', 'bh_packet_activation', 'bh_packet_activation', 'id', 'bh_formed_packets_bh_packet_activation_1_c', 'bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida', 'bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb', 'many-to-many', NULL, NULL, 0, 0),
('42ff4b96-7695-686c-d937-59d5db3eb3f6', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4450cbec-2012-c8fd-c3af-59d5db466ef1', 'bh_communicators_modified_user', 'Users', 'users', 'id', 'bh_communicators', 'bh_communicators', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44ada1d0-a35f-678b-06fc-59d5dbbae216', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4885af67-64f5-07f9-0c6a-59d5dbdff93a', 'bh_scripts_employee_comment_modified_user', 'Users', 'users', 'id', 'bh_Scripts_employee_comment', 'bh_scripts_employee_comment', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48910ccc-385e-eade-0d5e-59d5db47954c', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48aeb16c-69b1-a48a-ab0c-59d5db91efe9', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48c42d15-112f-43b2-224b-59d5dbdd9a82', 'bh_scripts_employee_comment_created_by', 'Users', 'users', 'id', 'bh_Scripts_employee_comment', 'bh_scripts_employee_comment', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4902ac4c-72dd-4003-e508-59d5db8628b8', 'bh_scripts_employee_comment_assigned_user', 'Users', 'users', 'id', 'bh_Scripts_employee_comment', 'bh_scripts_employee_comment', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('492bbc89-b9c1-d0df-2fcf-59d5dbaa81aa', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49412a50-eae5-55f0-0cec-59d5dbac9e12', 'securitygroups_bh_scripts_employee_comment', 'SecurityGroups', 'securitygroups', 'id', 'bh_Scripts_employee_comment', 'bh_scripts_employee_comment', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_Scripts_employee_comment', 0, 0),
('496a3bb9-c2ad-4ad4-7d2b-59d5db26038a', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49e732cf-46d1-337b-d27c-59d5db0cdaa6', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('4acd00c3-d1cd-c02d-859f-59d5dbcd53bb', 'bh_lead_adress_bh_country_1', 'bh_lead_adress', 'bh_lead_adress', 'id', 'bh_country', 'bh_country', 'id', 'bh_lead_adress_bh_country_1_c', 'bh_lead_adress_bh_country_1bh_lead_adress_ida', 'bh_lead_adress_bh_country_1bh_country_idb', 'many-to-many', NULL, NULL, 0, 0),
('4c790b0e-dad1-3f49-3945-59d5db0dfc23', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d743558-2cb5-41d6-cea0-59d5dbe8cb44', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4db2b332-e2ae-d69c-7161-59d5db5c6858', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4df130b3-2779-f632-b93a-59d5db1c40fe', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e2fb37c-cb36-5360-a640-59d5db83fae4', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('4e6e3d78-b298-c007-5380-59d5db851023', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4eacb426-42f7-84cc-3622-59d5db6318db', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4eeb3e3b-9034-59fa-2ebf-59d5db4ec141', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4f29b11c-1806-ba99-d75e-59d5db09ad81', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4f29b91b-3968-4076-bacf-59d5db85ef37', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4f4302d6-6610-f30a-5fc9-59d5dbe86952', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f5833c9-1a57-aece-f68f-59d5db880004', 'bh_packet_activation_modified_user', 'Users', 'users', 'id', 'bh_packet_activation', 'bh_packet_activation', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f96bfa3-0bee-6416-d885-59d5db5c948a', 'bh_packet_activation_created_by', 'Users', 'users', 'id', 'bh_packet_activation', 'bh_packet_activation', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fa6b810-844a-4e90-6262-59d5db31d2e5', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5013b116-fa57-448f-a53b-59d5db6f41fb', 'bh_packet_activation_assigned_user', 'Users', 'users', 'id', 'bh_packet_activation', 'bh_packet_activation', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50523df6-f333-fdd1-337e-59d5db2e7695', 'securitygroups_bh_packet_activation', 'SecurityGroups', 'securitygroups', 'id', 'bh_packet_activation', 'bh_packet_activation', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_packet_activation', 0, 0),
('52009175-cd0f-68bc-e63a-59d5dbbe1ff7', 'bh_lead_adress_modified_user', 'Users', 'users', 'id', 'bh_lead_adress', 'bh_lead_adress', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5229acad-ef7c-1dd9-002e-59d5db189336', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5268271e-606c-9c7a-3bc2-59d5db2847f5', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52a6aad0-73fb-6325-d72e-59d5db31a2c2', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52e522d0-9941-ba24-c3cc-59d5db57eed8', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('532b0321-9e72-570b-3b20-59d5db368392', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('56154c89-3c68-9276-7b64-59d5db35b673', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56272a86-7cc4-5e30-deff-59d5db5b1afe', 'bh_lead_adress_created_by', 'Users', 'users', 'id', 'bh_lead_adress', 'bh_lead_adress', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('568500b5-6c0b-b06c-bddf-59d5dbd3c9e3', 'bh_lead_adress_bh_locality_1', 'bh_lead_adress', 'bh_lead_adress', 'id', 'bh_locality', 'bh_locality', 'id', 'bh_lead_adress_bh_locality_1_c', 'bh_lead_adress_bh_locality_1bh_lead_adress_ida', 'bh_lead_adress_bh_locality_1bh_locality_idb', 'many-to-many', NULL, NULL, 0, 0),
('56924bac-8198-81bc-bca8-59d5db1d45b2', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56a42540-dd6c-ca5c-aa93-59d5db5d1b13', 'bh_lead_adress_assigned_user', 'Users', 'users', 'id', 'bh_lead_adress', 'bh_lead_adress', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56e2ac46-93ad-f829-531b-59d5db2fdd40', 'securitygroups_bh_lead_adress', 'SecurityGroups', 'securitygroups', 'id', 'bh_lead_adress', 'bh_lead_adress', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_lead_adress', 0, 0),
('57633b36-2891-476a-c515-59d5db00dcc8', 'bh_org_modified_user', 'Users', 'users', 'id', 'bh_org', 'bh_org', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57a1bb78-d48a-f533-9189-59d5dba5eaa1', 'bh_org_created_by', 'Users', 'users', 'id', 'bh_org', 'bh_org', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57e03308-0186-e178-f12f-59d5dbc64c83', 'bh_org_assigned_user', 'Users', 'users', 'id', 'bh_org', 'bh_org', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('581ebf12-4692-7ae1-2388-59d5db81076a', 'securitygroups_bh_org', 'SecurityGroups', 'securitygroups', 'id', 'bh_org', 'bh_org', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_org', 0, 0),
('5a08047f-a9ac-20a7-827b-59d5dbf6c6bb', 'bh_card_ident_modified_user', 'Users', 'users', 'id', 'bh_Card_ident', 'bh_card_ident', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a6d09d9-9b82-5e55-a45e-59d5dbbc6a69', 'bh_lead_adress_bh_region_1', 'bh_lead_adress', 'bh_lead_adress', 'id', 'bh_region', 'bh_region', 'id', 'bh_lead_adress_bh_region_1_c', 'bh_lead_adress_bh_region_1bh_lead_adress_ida', 'bh_lead_adress_bh_region_1bh_region_idb', 'many-to-many', NULL, NULL, 0, 0),
('5a850a10-fb03-9232-e1bd-59d5db044492', 'bh_card_ident_created_by', 'Users', 'users', 'id', 'bh_Card_ident', 'bh_card_ident', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b02068b-6b23-8d39-c01e-59d5db8422fa', 'bh_card_ident_assigned_user', 'Users', 'users', 'id', 'bh_Card_ident', 'bh_card_ident', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b409d26-ce1b-a44e-ffd8-59d5db8ca62f', 'securitygroups_bh_card_ident', 'SecurityGroups', 'securitygroups', 'id', 'bh_Card_ident', 'bh_card_ident', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_Card_ident', 0, 0),
('5c28be9e-33e6-1207-4e21-59d5db814bf1', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c673fb1-e71b-0f7b-07d2-59d5dbd13a0c', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ca5bfd3-8a2d-7130-04cd-59d5db09f796', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d2d7d25-59b8-af4a-1f68-59d5dbbac496', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d6bf4b4-e9b3-6494-9ff5-59d5dba52605', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5de8fe75-99b7-bfcd-3cd0-59d5db0fc150', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e2775d0-2e07-9f0c-3222-59d5db3c312d', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('5e65f184-1082-bf99-8a47-59d5db55ab83', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ea474ef-42b6-f179-2586-59d5db7f7f86', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('623d0fc7-6430-21ac-67c2-59d5dbf19668', 'bh_lead_adress_bh_region_area_1', 'bh_lead_adress', 'bh_lead_adress', 'id', 'bh_region_area', 'bh_region_area', 'id', 'bh_lead_adress_bh_region_area_1_c', 'bh_lead_adress_bh_region_area_1bh_lead_adress_ida', 'bh_lead_adress_bh_region_area_1bh_region_area_idb', 'many-to-many', NULL, NULL, 0, 0),
('64c2aac7-c4f8-4730-930c-59d5db7adafd', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65012ed8-2e4d-9cfc-89af-59d5db326cad', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('653fa9fe-6787-33e3-c420-59d5db789b67', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66250d17-3512-39fe-6b0f-59d5db821aec', 'bh_marketing_company_bh_campaine_products_1', 'bh_marketing_company', 'bh_marketing_company', 'id', 'bh_campaine_products', 'bh_campaine_products', 'id', 'bh_marketing_company_bh_campaine_products_1_c', 'bh_marketi9abccompany_ida', 'bh_marketi9283roducts_idb', 'many-to-many', NULL, NULL, 0, 0),
('68432fc1-51c1-1bc7-ea8f-59d5dbcaf0a0', 'bh_scripts_leadership_recommend_modified_user', 'Users', 'users', 'id', 'bh_Scripts_leadership_recommend', 'bh_scripts_leadership_recommend', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6881a2cb-7c28-550b-fae5-59d5dbff3d7c', 'bh_scripts_leadership_recommend_created_by', 'Users', 'users', 'id', 'bh_Scripts_leadership_recommend', 'bh_scripts_leadership_recommend', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68fead71-4da5-54b4-7e5f-59d5dbeda6de', 'bh_scripts_leadership_recommend_assigned_user', 'Users', 'users', 'id', 'bh_Scripts_leadership_recommend', 'bh_scripts_leadership_recommend', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('693d2cd7-5edc-979f-03ca-59d5dbad0f07', 'securitygroups_bh_scripts_leadership_recommend', 'SecurityGroups', 'securitygroups', 'id', 'bh_Scripts_leadership_recommend', 'bh_scripts_leadership_recommend', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_Scripts_leadership_recommend', 0, 0),
('6cbbcbb2-367c-92c5-d67e-59d5db741cf6', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6df5004f-ba2d-72d3-5017-59d5db39de12', 'bh_marketing_company_bh_channels_impact_1', 'bh_marketing_company', 'bh_marketing_company', 'id', 'bh_channels_impact', 'bh_channels_impact', 'id', 'bh_marketing_company_bh_channels_impact_1_c', 'bh_marketid0c7company_ida', 'bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb', 'many-to-many', NULL, NULL, 0, 0),
('6e1ba962-50a0-3abc-ff5e-59d5db616efa', 'bh_providers_modified_user', 'Users', 'users', 'id', 'bh_providers', 'bh_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e5a2d14-c7bf-790d-d1f0-59d5dbf26b6e', 'bh_providers_created_by', 'Users', 'users', 'id', 'bh_providers', 'bh_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e98abd4-b210-65aa-3989-59d5db893faf', 'bh_providers_assigned_user', 'Users', 'users', 'id', 'bh_providers', 'bh_providers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ed72615-7348-0293-8807-59d5dbc69e23', 'securitygroups_bh_providers', 'SecurityGroups', 'securitygroups', 'id', 'bh_providers', 'bh_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_providers', 0, 0),
('6ef1e60c-9376-9186-7916-59d5db3cf9c6', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f760e15-0b46-8050-642a-59d5dba15b5d', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fb491f5-5b17-0b5b-7042-59d5db489b53', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ff31c79-4a77-7faf-be85-59d5dbc10271', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('701fb80a-dfc4-2eb4-c624-59d5dbcd5a94', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70319dd6-b81a-7634-b7c7-59d5db0dac04', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('707019b2-6e9f-f7dc-54c9-59d5dbf8e68f', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('70ae9cd1-2447-bb22-2b41-59d5dbda782d', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('70db3f71-19c3-9edd-1970-59d5dbdf039e', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7119b727-0c70-e809-99d4-59d5db2c8b3d', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7132b8d4-1fe4-978e-5187-59d5db5522be', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71583ced-1c48-dd09-8503-59d5dbc21af6', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('717137fb-dac9-d852-031b-59d5dbc45814', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7196b9db-b245-a9e0-057d-59d5dbd668dd', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('71d53690-8fc9-365b-24aa-59d5dbc25e69', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('7213b01b-756a-91e2-8b74-59d5db9ecae8', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('725235b3-31b8-a1fe-685a-59d5db12d2cc', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('7290bf62-dbe0-6349-ebed-59d5dbfedca5', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('72cf3834-cd62-cb36-5936-59d5dbeb5149', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('730db408-a711-7c5c-8142-59d5dbe1e4cd', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7449dc85-c725-3a30-d98a-59d5dbc0fefa', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('74885dda-77bb-f057-ecfc-59d5dbe8d77b', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('750557aa-fe80-3712-d899-59d5dbc8792e', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75bd4a94-14b1-0b4d-d1cd-59d5db71303c', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75c50b3e-a0c2-59a1-75d7-59d5dbc895b8', 'bh_marketing_company_bh_marketing_company_history_1', 'bh_marketing_company', 'bh_marketing_company', 'id', 'bh_marketing_company_history', 'bh_marketing_company_history', 'id', 'bh_marketing_company_bh_marketing_company_history_1_c', 'bh_marketi1e9fcompany_ida', 'bh_marketid398history_idb', 'many-to-many', NULL, NULL, 0, 0),
('75d2b586-4729-be06-a90e-59d5dbbe7ecd', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75e49d56-6059-ade9-32aa-59d5db3159ff', 'bh_locality_modified_user', 'Users', 'users', 'id', 'bh_locality', 'bh_locality', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75fbcf94-fccd-5406-d748-59d5dbb26faa', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('761139dd-6473-f643-a619-59d5db0ea185', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76231c6d-385a-8ddd-fcdb-59d5db3b4869', 'bh_locality_created_by', 'Users', 'users', 'id', 'bh_locality', 'bh_locality', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('763a45d4-03db-b685-f6a4-59d5dbb0cd2e', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('764fbf6f-0600-2f1b-2898-59d5db652b42', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('768e3ec6-ec25-ef2a-7220-59d5dbb70ab8', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('76a01aa0-4500-4396-5b4a-59d5dbd7a29f', 'bh_locality_assigned_user', 'Users', 'users', 'id', 'bh_locality', 'bh_locality', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76ccb639-45b9-8a40-44a0-59d5db42710f', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('76e23b5c-6dcf-553f-afa4-59d5db1eca31', 'bh_passports_modified_user', 'Users', 'users', 'id', 'bh_passports', 'bh_passports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('770b3525-fe21-d387-946b-59d5dba0e51b', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('771d1a92-57d7-b5b8-53c9-59d5dbea89b9', 'securitygroups_bh_locality', 'SecurityGroups', 'securitygroups', 'id', 'bh_locality', 'bh_locality', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_locality', 0, 0),
('7720be8a-09ff-978b-f1db-59d5dbb0aa35', 'bh_passports_created_by', 'Users', 'users', 'id', 'bh_passports', 'bh_passports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('774295db-6a59-5560-cdbc-59d5db389c73', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7749c7be-cf5d-fdfd-ac00-59d5db7c9f43', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('778113e9-ea19-e513-2ef8-59d5db6a1dd4', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77884c9c-caa1-f209-7486-59d5db7cc422', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('779dbb02-576d-a822-fdb3-59d5dbf25eaa', 'bh_passports_assigned_user', 'Users', 'users', 'id', 'bh_passports', 'bh_passports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77b4ed20-d068-d100-ad0b-59d5dbb725c5', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77bf97d2-9d1c-66c8-0199-59d5db7b4cfc', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77c6c3de-87f3-9d49-92ad-59d5db75e7eb', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77dc38dd-a653-ea2c-e77f-59d5dbc1e909', 'securitygroups_bh_passports', 'SecurityGroups', 'securitygroups', 'id', 'bh_passports', 'bh_passports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_passports', 0, 0),
('780544fe-1b88-8e76-23d6-59d5db405369', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79ad0d1c-6cff-0d36-577a-59d5db892c83', 'bh_marketing_company_bh_marketing_directorate_1', 'bh_marketing_company', 'bh_marketing_company', 'id', 'bh_marketing_directorate', 'bh_marketing_directorate', 'id', 'bh_marketing_company_bh_marketing_directorate_1_c', 'bh_marketia9b6company_ida', 'bh_marketi618ectorate_idb', 'many-to-many', NULL, NULL, 0, 0),
('7da9fa53-b487-7c91-30a4-59d5db266734', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e26f994-2a8b-877a-60ee-59d5db8f1a6f', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e6574e0-907f-ff21-02b2-59d5dbc1c6bb', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f4d9b07-afa4-e8ce-717a-59d5db17ded4', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f66a3b1-fe72-b700-79cb-59d5dbeee20d', 'bh_communicators_created_by', 'Users', 'users', 'id', 'bh_communicators', 'bh_communicators', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f8c1148-7154-9639-ad21-59d5dbcdea36', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fa52068-9b10-f5f6-55c1-59d5db27d943', 'bh_communicators_assigned_user', 'Users', 'users', 'id', 'bh_communicators', 'bh_communicators', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fca9739-d40e-a86c-d29e-59d5dbfbdde9', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('7fe3ab01-6696-8f66-e3a9-59d5db18112c', 'securitygroups_bh_communicators', 'SecurityGroups', 'securitygroups', 'id', 'bh_communicators', 'bh_communicators', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_communicators', 0, 0),
('80092dd2-e5a3-5904-921f-59d5db4918e2', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80da108b-f0cc-7b53-ef93-59d5dbb93598', 'bh_cases_log_modified_user', 'Users', 'users', 'id', 'bh_cases_log', 'bh_cases_log', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80f87bc9-9e1b-ea40-53b2-59d5dbd2d135', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81189258-115b-5aac-99bb-59d5db028840', 'bh_cases_log_created_by', 'Users', 'users', 'id', 'bh_cases_log', 'bh_cases_log', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8136fc5f-8e31-b848-2db0-59d5dbff540b', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81757ea3-cb70-a115-2db1-59d5db238de5', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8195ad5b-a272-090d-55b0-59d5dbaa76a9', 'bh_cases_log_assigned_user', 'Users', 'users', 'id', 'bh_cases_log', 'bh_cases_log', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81b3f97a-5f97-4c14-3cd8-59d5dbe6bb56', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81f27299-ee25-b61b-654f-59d5dba1e9f8', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8200cdae-1377-f130-326b-59d5db4e6ae0', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8212a5da-78ca-a066-2dac-59d5db0f88c1', 'securitygroups_bh_cases_log', 'SecurityGroups', 'securitygroups', 'id', 'bh_cases_log', 'bh_cases_log', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_cases_log', 0, 0),
('823f41a4-12e8-9b6d-eac5-59d5db21c0fc', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85650c58-ccfd-b269-5761-59d5db332e7f', 'bh_marketing_company_bh_marketing_response_1', 'bh_marketing_company', 'bh_marketing_company', 'id', 'bh_marketing_response', 'bh_marketing_response', 'id', 'bh_marketing_company_bh_marketing_response_1_c', 'bh_marketi8c3ecompany_ida', 'bh_marketi8b4desponse_idb', 'many-to-many', NULL, NULL, 0, 0),
('86400c2a-d713-7505-1243-59d5dbcf278b', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('89577992-44c5-aaf5-40e7-59d5dbb512be', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('898ecf93-3970-bcb0-a069-59d5dbf3ed22', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89d4756b-b7c0-c2b6-96be-59d5dbbd25e2', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a12f653-db0c-624b-4b23-59d5db505957', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b7f38d8-a712-ea5e-0f48-59d5db6d762b', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bbdc1fb-b10f-e65d-b45d-59d5db083d1f', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bfc48ea-268e-5fd3-543b-59d5dbc47070', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c3accaf-cc78-c5c2-48e4-59d5dbaf7bcd', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('8c79457a-0010-04c7-64dc-59d5db2dfc29', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('8cb7cf92-b221-c466-9840-59d5db42ba74', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d3606eb-2cdf-8ff4-aee5-59d5dbc60fed', 'bh_marketing_directorate_leads_1', 'bh_marketing_directorate', 'bh_marketing_directorate', 'id', 'Leads', 'leads', 'id', 'bh_marketing_directorate_leads_1_c', 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida', 'bh_marketing_directorate_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('911e044d-2154-85a0-2dda-59d5dba11fdb', 'bh_org_bh_place_of_work_1', 'bh_org', 'bh_org', 'id', 'bh_place_of_work', 'bh_place_of_work', 'id', 'bh_org_bh_place_of_work_1_c', 'bh_org_bh_place_of_work_1bh_org_ida', 'bh_org_bh_place_of_work_1bh_place_of_work_idb', 'many-to-many', NULL, NULL, 0, 0),
('92910721-0617-c5dd-8f5f-59d5db963c34', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94b2c2c5-604a-49d8-5d9b-59d5db8febaf', 'bh_script_param_response_modified_user', 'Users', 'users', 'id', 'bh_script_param_response', 'bh_script_param_response', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94d4a443-9bb9-d727-ab06-59d5db882d4b', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94f140d1-8fef-4bc5-12b6-59d5db3a2221', 'bh_script_param_response_created_by', 'Users', 'users', 'id', 'bh_script_param_response', 'bh_script_param_response', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('951329ad-8d2c-beb9-577c-59d5db409541', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('952fc3bb-fa63-bacc-af4f-59d5db8f25f1', 'bh_script_param_response_assigned_user', 'Users', 'users', 'id', 'bh_script_param_response', 'bh_script_param_response', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9551b33d-444c-25c3-1491-59d5dbe7f69f', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('956e4918-465b-6ec5-8a36-59d5db16d013', 'securitygroups_bh_script_param_response', 'SecurityGroups', 'securitygroups', 'id', 'bh_script_param_response', 'bh_script_param_response', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_script_param_response', 0, 0),
('95cebcd0-0c47-f52b-a9bf-59d5dbedad2e', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('960d3163-fa22-943a-bc6c-59d5db794b86', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('964bbb72-3dc5-b5cd-361c-59d5db2a0d7b', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('964f4476-bd31-d8f7-52e2-59d5db64da5f', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96790fcd-23cf-23d1-602e-59d5db04bbe7', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('968dc98b-a7c0-6f57-0968-59d5dbeaba78', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96cc43d8-d599-b5f1-6a4e-59d5db9239e6', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('970aca51-f2e5-1ecb-7249-59d5db6cd71d', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('974948d8-208d-253d-4d6b-59d5db4a20c5', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9787c8b5-7860-bde2-7fdb-59d5dbbb5542', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97c645d9-f1d8-03ff-f7f7-59d5db7dfa9b', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97ebc754-9c9f-cb55-c9a6-59d5db5e65fd', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('97f2e401-20ac-b293-5256-59d5dbfedb20', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('982a4329-f604-6ee9-b342-59d5dbf5964f', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('98316d26-1a4d-eca0-3850-59d5dbcd0383', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9868cecb-3d2f-fc6d-13fe-59d5db53e5d9', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('986fef65-3e8e-038a-77dc-59d5db3be42c', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98856f4e-621a-f635-f3b3-59d5dbfbc745', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98a74675-89a6-695a-b09b-59d5db1f7b0e', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('98ae7c24-07cf-c22a-9016-59d5db22352f', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98c3ed25-f0ac-139f-8230-59d5db9db5f3', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98e5c215-c5c9-08be-3345-59d5dbf1f13b', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('98ecf882-06b1-911d-6123-59d5db059c2b', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99026f88-a6b9-55b4-168f-59d5dbe0ebe2', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('992442bb-5605-5d01-dc44-59d5db48ef25', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('9927d3e5-6f9a-1f32-e436-59d5dbb0a47d', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('992b7245-6bd1-a4f0-bb79-59d5dbab411a', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('9962c38f-dada-ca18-fcb5-59d5dbfa35bd', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99666ec2-0d60-dc13-e007-59d5db2efa17', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99a4e3e6-05b4-cd4f-8673-59d5db686c82', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99a870ab-6e39-ae80-eb81-59d5db9343b3', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('99dfce19-a09c-9934-3802-59d5db272387', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99e36e34-7cd9-e466-ccdd-59d5db470f93', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('99e6f327-fd2c-b39b-4c31-59d5db3195f3', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('9a1e4e15-8716-ed27-81c7-59d5db8277e8', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a21e1bf-4a7a-c657-3988-59d5db551ea7', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('9a257529-1704-3335-fe2c-59d5db666716', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('9a5cd71c-e2c5-3cb0-d6f4-59d5dbe8adfd', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a9ee40f-b429-3b63-7a7d-59d5db4db44e', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('9aa27122-51b2-b9ef-5e2c-59d5db31e7f4', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ae816ba-4d62-530c-4229-59d5dbf88609', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b1be8cd-e652-abc4-4b97-59d5db22b476', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b5a6637-ded1-24bc-51e4-59d5db07890c', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b652e1f-ac89-210f-02b3-59d5dbcbf64b', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b98e99f-f8aa-e42f-8fba-59d5db881f3c', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ba3ac55-d083-800a-d999-59d5db4ab067', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bc03df7-a3ce-63d6-ff40-59d5db1c578a', 'bh_contact_person_modified_user', 'Users', 'users', 'id', 'bh_contact_person', 'bh_contact_person', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bd76c89-181b-63e7-16ae-59d5db1c09a7', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bfebf31-72f4-fe84-b0ba-59d5db428254', 'bh_contact_person_created_by', 'Users', 'users', 'id', 'bh_contact_person', 'bh_contact_person', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c15e2d0-9c50-972a-9e38-59d5dbbb86b8', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('9c3d36e9-1a44-98cf-6df5-59d5dbeb7fbf', 'bh_contact_person_assigned_user', 'Users', 'users', 'id', 'bh_contact_person', 'bh_contact_person', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c546f96-9ce4-157e-718e-59d5db0888cf', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('9c7bbfce-4214-3d10-a481-59d5db3f4885', 'securitygroups_bh_contact_person', 'SecurityGroups', 'securitygroups', 'id', 'bh_contact_person', 'bh_contact_person', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_contact_person', 0, 0),
('9c92e8ee-415c-be06-e7ec-59d5db4f4639', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('9cd164a4-7459-c121-1f1e-59d5db17c5d2', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cd603be-53b9-35e0-8b76-59d5dbc8b8bf', 'bh_passports_bh_country_1', 'bh_passports', 'bh_passports', 'id', 'bh_country', 'bh_country', 'id', 'bh_passports_bh_country_1_c', 'bh_passports_bh_country_1bh_passports_ida', 'bh_passports_bh_country_1bh_country_idb', 'many-to-many', NULL, NULL, 0, 0),
('9d0fe887-94af-d685-bd4b-59d5db01980b', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d33ac10-757e-dd75-bd79-59d5db5ab7ca', 'bh_marketing_company_modified_user', 'Users', 'users', 'id', 'bh_marketing_company', 'bh_marketing_company', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d4e6e92-e6c8-d79c-5b2c-59d5db1b6545', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d6e938a-6d4d-00b6-546e-59d5db2a367f', 'bh_country_modified_user', 'Users', 'users', 'id', 'bh_country', 'bh_country', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d8ceeca-e0fc-9fcd-16fd-59d5db6296a4', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9deb92f5-5660-c14f-e832-59d5dbde9d2d', 'bh_country_created_by', 'Users', 'users', 'id', 'bh_country', 'bh_country', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e490610-a856-de1a-08a3-59d5dbd39964', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ee5a4b9-837a-7f9f-84ac-59d5db87e1d1', 'bh_country_assigned_user', 'Users', 'users', 'id', 'bh_country', 'bh_country', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f24231d-1fa2-bf79-27b1-59d5db6beefa', 'securitygroups_bh_country', 'SecurityGroups', 'securitygroups', 'id', 'bh_country', 'bh_country', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_country', 0, 0),
('a0be006a-6a33-6b98-f76b-59d5db387b16', 'bh_position_at_work_bh_place_of_work_1', 'bh_position_at_work', 'bh_position_at_work', 'id', 'bh_place_of_work', 'bh_place_of_work', 'id', 'bh_position_at_work_bh_place_of_work_1_c', 'bh_position_at_work_bh_place_of_work_1bh_position_at_work_ida', 'bh_position_at_work_bh_place_of_work_1bh_place_of_work_idb', 'many-to-many', NULL, NULL, 0, 0),
('a2310509-e230-b4ab-c9a3-59d5db65a3fb', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('a25440d1-57bd-464c-dc0d-59d5db9908e1', 'bh_marketing_company_created_by', 'Users', 'users', 'id', 'bh_marketing_company', 'bh_marketing_company', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2d146e6-a884-72bf-cfe2-59d5db2a43d2', 'bh_marketing_company_assigned_user', 'Users', 'users', 'id', 'bh_marketing_company', 'bh_marketing_company', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a38cc405-3313-773b-9fea-59d5db321709', 'securitygroups_bh_marketing_company', 'SecurityGroups', 'securitygroups', 'id', 'bh_marketing_company', 'bh_marketing_company', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_marketing_company', 0, 0),
('a47154e0-b84f-fc94-421f-59d5dbc4d10c', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4a60fc0-626e-bae2-0925-59d5db4861b9', 'bh_providers_aos_contracts_1', 'bh_providers', 'bh_providers', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'bh_providers_aos_contracts_1_c', 'bh_providers_aos_contracts_1bh_providers_ida', 'bh_providers_aos_contracts_1aos_contracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('a537960e-10f5-41a3-0e20-59d5db7dc0ba', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5b499b6-aa77-fd92-694d-59d5db522495', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5f31bf7-b704-6d16-700b-59d5dbcc70d1', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7f8f524-cb37-a45b-56a9-59d5db0fb89c', 'bh_realty_modified_user', 'Users', 'users', 'id', 'bh_Realty', 'bh_realty', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a813bca4-fdd6-deb2-75bd-59d5dbaeb7de', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('a8377807-71be-3c4c-6218-59d5db27e183', 'bh_realty_created_by', 'Users', 'users', 'id', 'bh_Realty', 'bh_realty', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8523883-6eb0-abbf-85c0-59d5dbcb6525', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('a867bcff-46df-51c7-8f91-59d5db561de7', 'bh_case_compound_modified_user', 'Users', 'users', 'id', 'bh_case_compound', 'bh_case_compound', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a875f9f0-89ac-0074-0d21-59d5db96ea66', 'bh_realty_assigned_user', 'Users', 'users', 'id', 'bh_Realty', 'bh_realty', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8e4b8c1-991f-b10b-77e0-59d5db6ff790', 'bh_case_compound_created_by', 'Users', 'users', 'id', 'bh_case_compound', 'bh_case_compound', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8f30e59-10df-7889-5647-59d5dba4e71c', 'securitygroups_bh_realty', 'SecurityGroups', 'securitygroups', 'id', 'bh_Realty', 'bh_realty', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_Realty', 0, 0),
('a923315f-9221-cce7-c657-59d5dba229fd', 'bh_case_compound_assigned_user', 'Users', 'users', 'id', 'bh_case_compound', 'bh_case_compound', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a961b5f3-6bed-d424-0244-59d5dbfa8d28', 'securitygroups_bh_case_compound', 'SecurityGroups', 'securitygroups', 'id', 'bh_case_compound', 'bh_case_compound', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_case_compound', 0, 0),
('a999070f-9713-834b-cd14-59d5db4c231c', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9d79c61-35a8-666a-1d87-59d5dbc9816b', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac760898-bf9e-6224-ca6c-59d5db25507c', 'bh_providers_aos_contracts_2', 'bh_providers', 'bh_providers', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'bh_providers_aos_contracts_2_c', 'bh_providers_aos_contracts_2bh_providers_ida', 'bh_providers_aos_contracts_2aos_contracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('b05e0fdd-0793-c100-517d-59d5db4b5cf2', 'bh_providers_bh_org_trade_points_1', 'bh_providers', 'bh_providers', 'id', 'bh_org_trade_points', 'bh_org_trade_points', 'id', 'bh_providers_bh_org_trade_points_1_c', 'bh_providers_bh_org_trade_points_1bh_providers_ida', 'bh_providers_bh_org_trade_points_1bh_org_trade_points_idb', 'many-to-many', NULL, NULL, 0, 0),
('b094ae42-942f-957e-5a72-59d5db519fd3', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('b0d3279f-8504-3875-f4b6-59d5db721b3a', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b18ea94b-2b5a-9871-eb32-59d5db438fa3', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b1cd238c-ef80-c403-43df-59d5dbdbbaf8', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b20ba5ab-f6ef-5ebf-b244-59d5dbbd10c3', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b288a65d-cfbd-7914-f8b8-59d5db97c458', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b2c7205b-8164-baf6-a61a-59d5db40197d', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b305aa3a-e117-a870-b104-59d5dbf0d4b0', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b382a43e-36ed-b6b4-a233-59d5db799f1e', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4460a34-983f-82a2-61d1-59d5dbaed76e', 'bh_region_area_bh_locality_1', 'bh_region_area', 'bh_region_area', 'id', 'bh_locality', 'bh_locality', 'id', 'bh_region_area_bh_locality_1_c', 'bh_region_area_bh_locality_1bh_region_area_ida', 'bh_region_area_bh_locality_1bh_locality_idb', 'many-to-many', NULL, NULL, 0, 0),
('b60209ed-d545-8e7c-1e31-59d5dbceaf89', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b67f0fcf-2cd7-60a9-8d08-59d5dbfcdce9', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6bd8cbf-48da-4df5-7a71-59d5db055a81', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7f27de4-8015-609a-b4f8-59d5db0922a9', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b97439bc-3442-a8f3-eac6-59d5db71844a', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9b2bfb7-192e-ad19-2898-59d5dbe97b67', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9f1392c-1d2f-3601-ccc5-59d5db2dd8da', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba6e32e5-2a99-df16-ddf5-59d5db6d20fe', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('bb00be51-171b-cad8-c62a-59d5dba36d62', 'bh_phones_modified_user', 'Users', 'users', 'id', 'bh_phones', 'bh_phones', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb262998-be2b-1901-247d-59d5db502aaa', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb59f1ee-e9f9-7bd1-a8c8-59d5dbf7381f', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb64ad97-e057-1058-6ab2-59d5db98d243', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb987b68-c4f4-98d5-6e0e-59d5db169a17', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bba32106-bb3a-b957-a9bc-59d5dbbd79e5', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbd6fed5-c75e-2cc6-b692-59d5db7cfc82', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbe8d491-eebd-9c43-43bb-59d5dbabd71f', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc1573eb-5401-83c0-3331-59d5db1ab4bb', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('bc16048a-b7e6-618c-bbb2-59d5dbc2b27b', 'bh_region_bh_region_area_1', 'bh_region', 'bh_region', 'id', 'bh_region_area', 'bh_region_area', 'id', 'bh_region_bh_region_area_1_c', 'bh_region_bh_region_area_1bh_region_ida', 'bh_region_bh_region_area_1bh_region_area_idb', 'many-to-many', NULL, NULL, 0, 0),
('bc53ffa6-9f4d-9735-84e9-59d5db59c9c2', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('bc65d6a9-649f-2cbd-37b0-59d5db472b55', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcde012e-a1d9-e9bf-80b2-59d5db56240a', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('bde7948b-c5d7-74f3-cd48-59d5db75b2ab', 'bh_region_modified_user', 'Users', 'users', 'id', 'bh_region', 'bh_region', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be6494f8-4c64-7f45-e3be-59d5db213a95', 'bh_region_created_by', 'Users', 'users', 'id', 'bh_region', 'bh_region', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bee19c16-3696-a84f-132c-59d5db86373e', 'bh_region_assigned_user', 'Users', 'users', 'id', 'bh_region', 'bh_region', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf201a5e-2b81-c1c7-52b3-59d5dbbc20f8', 'securitygroups_bh_region', 'SecurityGroups', 'securitygroups', 'id', 'bh_region', 'bh_region', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_region', 0, 0),
('c0c608b7-d818-05bc-e293-59d5db1e386c', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2f2badf-dc88-986a-1b3e-59d5dba29c0c', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c36fb755-a3ac-a01a-581e-59d5db9fc432', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3ae3fd3-26a0-eac0-b7f9-59d5dbbadc8b', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3e1fbc3-9a60-5d58-b6f6-59d5dbe1ee26', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3e603e0-2edc-0807-cd14-59d5dbd5142e', 'bh_scripts_bh_scripts_employee_comment_1', 'bh_scripts', 'bh_scripts', 'id', 'bh_Scripts_employee_comment', 'bh_scripts_employee_comment', 'id', 'bh_scripts_bh_scripts_employee_comment_1_c', 'bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida', 'bh_scripts22dfcomment_idb', 'many-to-many', NULL, NULL, 0, 0),
('c4208ef0-1c47-afe7-4c28-59d5dbaf29a5', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c48d7873-2853-8af6-491a-59d5dbabb454', 'bh_scr_status_history_modified_user', 'Users', 'users', 'id', 'bh_scr_status_history', 'bh_scr_status_history', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c49d8c47-977b-27bd-2342-59d5db8585cb', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c4c0050f-f4d5-f6a8-e582-59d5dbcb0508', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('c4dc00ed-e340-5bbc-6cf6-59d5db4dd419', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('c4f50417-17f8-1fd5-32bd-59d5dbf8f445', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c50a7222-5b0f-63ad-ada2-59d5db12fb90', 'bh_scr_status_history_created_by', 'Users', 'users', 'id', 'bh_scr_status_history', 'bh_scr_status_history', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c51a8c1e-904f-f464-04f1-59d5db4c2a0c', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('c53382cb-0e25-5e07-a90b-59d5db83014e', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c548fd6b-734a-df5c-6f2e-59d5db01345a', 'bh_scr_status_history_assigned_user', 'Users', 'users', 'id', 'bh_scr_status_history', 'bh_scr_status_history', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5590735-2163-69ba-78ef-59d5db78a7b6', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('c58773d4-a163-e06b-f486-59d5dbc56128', 'securitygroups_bh_scr_status_history', 'SecurityGroups', 'securitygroups', 'id', 'bh_scr_status_history', 'bh_scr_status_history', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_scr_status_history', 0, 0),
('c5978a3a-820b-e3ee-95fe-59d5db063f6b', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5d60b37-9492-4b37-551c-59d5db127611', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6530345-db07-2b04-a4c8-59d5db3af12b', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c6918519-0c6c-f2fa-b50e-59d5db99da97', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c6d0043a-c3fd-9810-6dab-59d5db1ba2fb', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c70e82b1-21d1-985d-8dff-59d5dbdfc5e9', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c72b2358-5f87-80bf-e4c8-59d5db99c830', 'bh_case_status_modified_user', 'Users', 'users', 'id', 'bh_case_status', 'bh_case_status', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c74d0b5b-95e5-84e9-e682-59d5dbc4c532', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c7ca0546-3e9c-a7d5-48bb-59d5db59b74f', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7ce07b9-54b3-087d-149d-59d5db370613', 'bh_scripts_bh_scripts_leadership_recommend_1', 'bh_scripts', 'bh_scripts', 'id', 'bh_Scripts_leadership_recommend', 'bh_scripts_leadership_recommend', 'id', 'bh_scripts_bh_scripts_leadership_recommend_1_c', 'bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida', 'bh_scriptsb2a1commend_idb', 'many-to-many', NULL, NULL, 0, 0),
('c7e6adb9-93fb-8c02-23eb-59d5dbe3eb3e', 'bh_case_status_created_by', 'Users', 'users', 'id', 'bh_case_status', 'bh_case_status', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c808896a-fdd7-b32f-139e-59d5db5e00d1', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('c8252a28-5c7d-b4e6-c72b-59d5db5c6ea5', 'bh_case_status_assigned_user', 'Users', 'users', 'id', 'bh_case_status', 'bh_case_status', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8859d71-592c-ea3d-c2ac-59d5db774aa9', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8a2202c-98cf-bdcf-9bff-59d5db3d2653', 'securitygroups_bh_case_status', 'SecurityGroups', 'securitygroups', 'id', 'bh_case_status', 'bh_case_status', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_case_status', 0, 0),
('c8c41b38-a8b2-511a-36fd-59d5db4db925', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9029690-d99f-2e5b-8ad5-59d5db658992', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9a35ec9-65c9-7c19-b606-59d5db200197', 'bh_marketing_company_history_modified_user', 'Users', 'users', 'id', 'bh_marketing_company_history', 'bh_marketing_company_history', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9e1d5d9-5e41-554d-849b-59d5db966659', 'bh_marketing_company_history_created_by', 'Users', 'users', 'id', 'bh_marketing_company_history', 'bh_marketing_company_history', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca5ed4be-7f2c-9d18-94a2-59d5dbe8d58f', 'bh_marketing_company_history_assigned_user', 'Users', 'users', 'id', 'bh_marketing_company_history', 'bh_marketing_company_history', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca9d5d0a-865c-226c-9b3e-59d5db250950', 'securitygroups_bh_marketing_company_history', 'SecurityGroups', 'securitygroups', 'id', 'bh_marketing_company_history', 'bh_marketing_company_history', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_marketing_company_history', 0, 0),
('cb1de06b-67fd-5944-94a7-59d5db1773e0', 'bh_phones_created_by', 'Users', 'users', 'id', 'bh_phones', 'bh_phones', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb5c6307-56e2-1c28-0ef1-59d5db6d698a', 'bh_phones_assigned_user', 'Users', 'users', 'id', 'bh_phones', 'bh_phones', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cbd96ec2-0eb0-365b-1725-59d5db1be2c7', 'securitygroups_bh_phones', 'SecurityGroups', 'securitygroups', 'id', 'bh_phones', 'bh_phones', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_phones', 0, 0),
('cf9f05bb-d412-e9ea-865a-59d5db0e4085', 'bh_scripts_bh_script_param_response_1', 'bh_scripts', 'bh_scripts', 'id', 'bh_script_param_response', 'bh_script_param_response', 'id', 'bh_scripts_bh_script_param_response_1_c', 'bh_scripts_bh_script_param_response_1bh_scripts_ida', 'bh_scripts6c20esponse_idb', 'many-to-many', NULL, NULL, 0, 0),
('d643a384-1649-8e52-6d6a-59d5db748cc9', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d68222c5-9812-17a8-d0cd-59d5dbd152f7', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('d6c0af94-2b88-6e0d-fa10-59d5dbdf93cf', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6fb9e2b-a150-0de5-61a4-59d5dbeb22fe', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d73a1b7b-ecd4-8c18-0ee1-59d5db1c8929', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d73da48b-283c-f6d0-85bc-59d5dbee7f72', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('d76dd7e8-d11f-f132-2d35-59d5db192bce', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d76f0f4a-b0a1-3dfd-29d0-59d5db03c837', 'cases_bh_cases_log_1', 'Cases', 'cases', 'id', 'bh_cases_log', 'bh_cases_log', 'id', 'cases_bh_cases_log_1_c', 'cases_bh_cases_log_1cases_ida', 'cases_bh_cases_log_1bh_cases_log_idb', 'many-to-many', NULL, NULL, 0, 0),
('d7789a4a-b892-19b0-26b6-59d5db38289e', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d77c2ecf-c234-d85f-c715-59d5dba4979f', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7ac52bb-7909-8225-182c-59d5db3fbc64', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7b712cd-9638-b45e-5c26-59d5db2584b0', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7ead66d-7352-5c2a-5b83-59d5dbeb9d05', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d82957a8-2d75-0d9a-713d-59d5db84fc23', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('d87299e7-a0d5-1bf4-10b8-59d5dbfb97f1', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('d89f35f2-f17c-632a-34b8-59d5dbe9c79b', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8a6635c-81c8-26fa-0772-59d5dba44a5e', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8ddb2ac-3d68-a8c7-557d-59d5db7cde8b', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d91c362a-e50f-2b39-9edf-59d5dbc22e10', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d95ab7f0-1f77-96d0-50e6-59d5db69aa62', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('d9d7b5c8-8897-3f6f-3dba-59d5db8c0450', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da54cead-b1ec-ca69-5641-59d5dbc5e6b3', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da934543-115e-da16-012c-59d5db41cf4f', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dad1c07a-8cdb-c249-7d52-59d5db63ff6e', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db104269-88ff-4d84-610d-59d5db982d27', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db4ecf44-fbf4-37cb-0f7c-59d5db8ea008', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db5d19c8-d8cb-823a-6ed9-59d5db01b27a', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db8d4830-a35a-f191-dda1-59d5dbd0e708', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbcbc7a4-4408-7893-de8b-59d5db0784a0', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbda111c-1f07-ee25-d652-59d5dbe30eac', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc48c513-efce-193d-32e2-59d5dbf0429a', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc48c74a-a183-99fb-e83e-59d5dbafb2de', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc57123d-f7f2-c559-5874-59d5db273f7d', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc7e64f0-31c7-dfbb-469b-59d5db86c3b0', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('dcded9b9-a1a8-4168-2dbd-59d5dbef05a4', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd1d5956-9370-a29c-4e6a-59d5db306134', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd5bdb63-745a-49ec-f6b5-59d5dba484a7', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd7867ff-c701-68df-dadb-59d5db1e69f5', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('ddb6e963-50be-e3cc-03f6-59d5db540cd0', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('ddd8dc48-594c-4df0-b387-59d5db3ad733', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('ddf56d15-6a29-a3c1-d502-59d5db2e5679', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('de33e116-bf65-4e5e-8a03-59d5dbfa45f5', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('de7261c6-d797-19f2-5346-59d5db9dcd07', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('deef7390-96f6-6981-2298-59d5db49fef3', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('df2dfabc-136c-299b-dd14-59d5db81eff6', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('df3f0f41-1286-9352-c72d-59d5db0377ec', 'cases_bh_case_compound_1', 'Cases', 'cases', 'id', 'bh_case_compound', 'bh_case_compound', 'id', 'cases_bh_case_compound_1_c', 'cases_bh_case_compound_1cases_ida', 'cases_bh_case_compound_1bh_case_compound_idb', 'many-to-many', NULL, NULL, 0, 0),
('df6c7aed-83e8-e251-3543-59d5db854154', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('dfaaff8a-2eb5-5871-522c-59d5db23ce7c', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('e027f0de-d78e-c919-9726-59d5db5de9be', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('e05495bb-c9bc-2aa8-bf27-59d5dbebb903', 'bh_region_area_modified_user', 'Users', 'users', 'id', 'bh_region_area', 'bh_region_area', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0667eff-970b-b897-e59d-59d5db30d54a', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('e09310c2-e3fb-19e7-23ea-59d5db45ca79', 'bh_region_area_created_by', 'Users', 'users', 'id', 'bh_region_area', 'bh_region_area', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0e3701b-5dec-1e1d-8bf0-59d5dbedf2ad', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('e110127b-bc19-cd27-1a9b-59d5dbaafce6', 'bh_region_area_assigned_user', 'Users', 'users', 'id', 'bh_region_area', 'bh_region_area', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e121f6a5-9536-e11d-13e4-59d5dbd98393', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('e1607f3b-353e-d37c-a3e2-59d5db641d5d', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('e18d11ac-bfa8-fd94-a1ab-59d5db90deee', 'securitygroups_bh_region_area', 'SecurityGroups', 'securitygroups', 'id', 'bh_region_area', 'bh_region_area', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_region_area', 0, 0),
('e19efb2c-a13b-6cba-8e35-59d5db33a2ad', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('e1dd7329-e510-aaf3-558c-59d5db9f8bdf', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('e25a74a3-b852-1bde-54a0-59d5db27dcda', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('e26e19b2-2ebf-09fb-410e-59d5dbc62e33', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2d771b8-8b0c-6fa0-5dfc-59d5db3c6924', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e2eb1ffa-d6fd-1f2d-b498-59d5db690f88', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e31606c0-ed5f-0a19-803a-59d5db3872d3', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('e32703df-87c9-0872-be49-59d5dbcade6a', 'cases_bh_marketing_company_1', 'Cases', 'cases', 'id', 'bh_marketing_company', 'bh_marketing_company', 'id', 'cases_bh_marketing_company_1_c', 'cases_bh_marketing_company_1cases_ida', 'cases_bh_marketing_company_1bh_marketing_company_idb', 'many-to-many', NULL, NULL, 0, 0),
('e3299edf-735b-814f-165e-59d5db6d77dd', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e33b7bf2-75e9-d916-a41e-59d5db283b3d', 'bh_autotransport_modified_user', 'Users', 'users', 'id', 'bh_Autotransport', 'bh_autotransport', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3681fbe-697c-1bc4-e0a0-59d5db7b874f', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('e379f02e-2179-f5c7-ca58-59d5dbfeb56f', 'bh_autotransport_created_by', 'Users', 'users', 'id', 'bh_Autotransport', 'bh_autotransport', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3930e98-437c-6083-7b66-59d5dbccbb3b', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('e3b87af6-40ca-7a86-296e-59d5db4cd873', 'bh_autotransport_assigned_user', 'Users', 'users', 'id', 'bh_Autotransport', 'bh_autotransport', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3d18401-e1ce-a669-4aec-59d5db12b8ce', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e3f6f7a9-1c04-275b-fe53-59d5db53fb73', 'securitygroups_bh_autotransport', 'SecurityGroups', 'securitygroups', 'id', 'bh_Autotransport', 'bh_autotransport', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_Autotransport', 0, 0),
('e4100229-2ef5-be67-9021-59d5db1e3a3d', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('e44e8e97-6a82-520f-73b6-59d5db278244', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('e4cb87f2-cc9f-050f-b849-59d5db910d2e', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('e50a07ae-5101-9563-08e3-59d5db59d873', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('e5488321-e54e-d446-bebd-59d5db919ed9', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('e5c58a4d-325c-37ad-2082-59d5db26fceb', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('e6040635-8d2b-eb8a-00f2-59d5db0b49bb', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('e64281d7-eb6a-bb2a-66d4-59d5dba86581', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('e6810d92-24d9-940f-398e-59d5dbd792d1', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('e6fe04b9-4cd3-5655-c4af-59d5dbbdde08', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('e70f059a-9641-eb00-62a8-59d5db7d15e9', 'leads_aos_contracts_1', 'Leads', 'leads', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'leads_aos_contracts_1_c', 'leads_aos_contracts_1leads_ida', 'leads_aos_contracts_1aos_contracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e73c9519-45dc-ac39-31fd-59d5db5b2266', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e77b153f-6d0b-b6c3-0304-59d5db9a8032', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('e7f812c5-f104-7262-e798-59d5dbc5ab91', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('e80485ff-ae8a-b01f-1094-59d5dba8b75e', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8369949-13b2-441b-ed75-59d5db115f5b', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('e8818378-96d2-b481-a69a-59d5db767486', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8a8d3d0-e6bd-1d2a-30e0-59d5db560538', 'bh_place_of_work_modified_user', 'Users', 'users', 'id', 'bh_place_of_work', 'bh_place_of_work', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8b39e12-419c-091e-40b9-59d5db263293', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('e8c00675-5a6c-5a99-9470-59d5dbc71021', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8f21f98-88e8-b5a7-5958-59d5db5afb41', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('e8fe8e9d-e763-bbca-6f93-59d5dbd2d3ac', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('e925d4d3-66a1-4aa6-1307-59d5db425a81', 'bh_place_of_work_created_by', 'Users', 'users', 'id', 'bh_place_of_work', 'bh_place_of_work', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e964535e-80f0-55f0-d386-59d5dba9cbee', 'bh_place_of_work_assigned_user', 'Users', 'users', 'id', 'bh_place_of_work', 'bh_place_of_work', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9670363-96f0-9902-83b8-59d5dbb1f1ff', 'bh_campaine_products_modified_user', 'Users', 'users', 'id', 'bh_campaine_products', 'bh_campaine_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e96f1532-3b41-241a-e29e-59d5dbeecf2f', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('e97b88e7-6750-baab-4f85-59d5dbd01605', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('e9a2dd8a-a8df-46ea-7cfc-59d5dbaff729', 'securitygroups_bh_place_of_work', 'SecurityGroups', 'securitygroups', 'id', 'bh_place_of_work', 'bh_place_of_work', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_place_of_work', 0, 0),
('e9ba01f2-daba-0e94-2b0d-59d5db0d3cfa', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('e9ec145c-c60e-1fd7-2118-59d5db592c60', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e9f880b6-f310-dcd6-0e14-59d5db6e29f7', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ea2a9a51-800e-0341-1a7e-59d5db1d8c04', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('ea759689-e6cb-73cb-8041-59d5dbb05351', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ea995e33-8473-5fd8-4520-59d5db6071d3', 'bh_marketing_directorate_modified_user', 'Users', 'users', 'id', 'bh_marketing_directorate', 'bh_marketing_directorate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eaa799f0-b2a9-e229-5d01-59d5db77fc96', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('eab414d7-038a-e9e3-4f0d-59d5dbc40b33', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ead7d465-ba50-a3fa-58d6-59d5dbb57cde', 'bh_marketing_directorate_created_by', 'Users', 'users', 'id', 'bh_marketing_directorate', 'bh_marketing_directorate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eae61922-79e7-9422-d62c-59d5db59f035', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('eaf29ddb-f44c-0d87-f451-59d5db4132d6', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb165b03-fb9c-b6f3-a31c-59d5dbb12e36', 'bh_marketing_directorate_assigned_user', 'Users', 'users', 'id', 'bh_marketing_directorate', 'bh_marketing_directorate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb249e1c-e319-de86-8f4a-59d5dbeb0fc0', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('eb3117e7-a959-671f-3f10-59d5db2d5f6c', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb54d446-884f-d16e-f26f-59d5db2d2c1a', 'securitygroups_bh_marketing_directorate', 'SecurityGroups', 'securitygroups', 'id', 'bh_marketing_directorate', 'bh_marketing_directorate', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_marketing_directorate', 0, 0),
('eb631b1f-44fb-2de1-c6dd-59d5db2361d9', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('eb6f9338-2b08-301a-a8b5-59d5dbc00c73', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ebae1b6b-9018-3d34-9336-59d5db69746f', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ebe027c2-6ef9-01cf-510c-59d5db40735d', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ebec9712-5dc3-d70f-abad-59d5dbecc4ed', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec5d2667-040d-1f67-1822-59d5dbba9086', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('ec9baa0a-df4c-6fb1-5c54-59d5dbdff071', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('ecda2c97-a310-0f5b-cf68-59d5db024a70', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('ed3a870a-50a5-8147-3d9b-59d5db25d673', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ed572089-3583-5632-aa32-59d5db697e62', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ed790733-e64f-3175-d01f-59d5db8349e3', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('edb7870e-33b0-f5ba-b730-59d5dbc6d43e', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('edd4220e-f8a2-1ea0-14a5-59d5db181821', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('ee12a8bb-ae9f-ea0c-0b06-59d5db3be7cc', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('ee349d04-8cd3-6344-3170-59d5dbb2ae9b', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ee512c0b-e071-95ca-e5ed-59d5dbd512dd', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('ee731fc1-e3bf-71b6-a5b9-59d5db37c9db', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ee8fa216-7d1c-e697-e123-59d5db28be0b', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('eedf00e3-387b-6bbb-296c-59d5db724668', 'leads_bh_autotransport_1', 'Leads', 'leads', 'id', 'bh_Autotransport', 'bh_autotransport', 'id', 'leads_bh_autotransport_1_c', 'leads_bh_autotransport_1leads_ida', 'leads_bh_autotransport_1bh_autotransport_idb', 'many-to-many', NULL, NULL, 0, 0),
('ef0ca25a-3593-fe83-829f-59d5dbfc29b2', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ef4b2479-ae2d-47df-ef65-59d5dbd1a36a', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('efc83c55-2fee-213a-c603-59d5db0bf6e4', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('f006bfeb-70c3-4c6a-be8b-59d5db095ea4', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('f0453cf9-c3d2-6f5f-343e-59d5db037d1d', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('f083b08a-db83-526b-6f99-59d5dbd09651', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('f100b5f9-d6de-3e87-f721-59d5db5c511a', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('f17db517-cbf6-43bc-3835-59d5db32aa59', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('f1a6cf66-fc40-ef82-5e38-59d5db81db8e', 'bh_category_at_work_modified_user', 'Users', 'users', 'id', 'bh_category_at_work', 'bh_category_at_work', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1bc363e-fd2a-2eb6-06c8-59d5dbeb392a', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('f1e542b6-a891-f3d0-231c-59d5db9ae2a5', 'bh_category_at_work_created_by', 'Users', 'users', 'id', 'bh_category_at_work', 'bh_category_at_work', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2624f2c-ab2c-95a0-4aad-59d5db180680', 'bh_category_at_work_assigned_user', 'Users', 'users', 'id', 'bh_category_at_work', 'bh_category_at_work', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2a0c67f-5dcc-6288-243c-59d5db3aa463', 'securitygroups_bh_category_at_work', 'SecurityGroups', 'securitygroups', 'id', 'bh_category_at_work', 'bh_category_at_work', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_category_at_work', 0, 0),
('f2c70c22-b927-ff80-12e8-59d5dbf7e9db', 'leads_bh_lead_adress_1', 'Leads', 'leads', 'id', 'bh_lead_adress', 'bh_lead_adress', 'id', 'leads_bh_lead_adress_1_c', 'leads_bh_lead_adress_1leads_ida', 'leads_bh_lead_adress_1bh_lead_adress_idb', 'many-to-many', NULL, NULL, 0, 0),
('fa97056f-ebdd-7f78-0deb-59d5db6953c8', 'leads_bh_marketing_response_1', 'Leads', 'leads', 'id', 'bh_marketing_response', 'bh_marketing_response', 'id', 'leads_bh_marketing_response_1_c', 'leads_bh_marketing_response_1leads_ida', 'leads_bh_marketing_response_1bh_marketing_response_idb', 'many-to-many', NULL, NULL, 0, 0),
('fe7f0005-2eaa-2639-72f5-59d5dbdb2e6b', 'leads_bh_packet_activation_1', 'Leads', 'leads', 'id', 'bh_packet_activation', 'bh_packet_activation', 'id', 'leads_bh_packet_activation_1_c', 'leads_bh_packet_activation_1leads_ida', 'leads_bh_packet_activation_1bh_packet_activation_idb', 'many-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('95050bc1-5edf-8c45-896d-599a76d1e980', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 16:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('992b9df2-1569-8319-6e34-599a76de1ef3', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 14:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('9c58252b-3ca9-e925-aa41-599a765653c0', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 17:00:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('9f84a355-b93f-9718-48ba-599a7661f51d', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 14:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('a2b13c5c-e4ce-97b8-3d69-599a760d703f', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 13:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('a5ddc8ce-942c-fc61-97d2-599a76d638f5', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 11:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('a948dec9-3c7c-3ef9-c360-599a7644bd07', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 16:45:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('ac36db67-d9d7-169d-e175-599a764eca47', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 19:00:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('af636980-2316-c922-592d-599a76c49abd', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 11:00:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b28ff6e7-07b0-d6ed-7d5b-599a76282dde', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 06:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b57dfa9b-76ab-cf91-66fd-599a763feb6b', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 15:00:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b8aa8be6-2132-0c82-429a-599a769e7026', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 09:30:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('bb989960-f2dd-0744-86f8-599a76f05fd0', 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 12:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `securitygroups`
--

INSERT INTO `securitygroups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `noninheritable`) VALUES
('5fceea0f-484d-978c-0c13-599ae1171c0d', 'Тестовая группа', '2017-08-21 13:34:26', '2017-08-21 13:42:34', '1', '1', NULL, 0, '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `securitygroups_records`
--

INSERT INTO `securitygroups_records` (`id`, `securitygroup_id`, `record_id`, `module`, `date_modified`, `modified_user_id`, `created_by`, `deleted`) VALUES
('2ec6d05b-8c91-11e7-98ee-7446a08797ed', '5fceea0f-484d-978c-0c13-599ae1171c0d', '17f34406-be07-b7c2-d4be-59a520054121', 'Documents', '2017-08-29 00:00:00', NULL, NULL, 0),
('b7b971ed-cfe8-2df4-8d56-599bcb75e4bc', '5fceea0f-484d-978c-0c13-599ae1171c0d', '559fa3be-40ba-9fe7-c560-599bcbc2bded', 'Leads', '2017-08-29 07:32:43', '', '', 1),
('c1ace007-8c91-11e7-98ee-7446a08797ed', '5fceea0f-484d-978c-0c13-599ae1171c0d', '8420ca84-e12c-46af-d9b1-59a521ab1f0e', 'Documents', '2017-08-29 00:00:00', NULL, NULL, 0),
('cbfd4cab-8c7a-ca5f-a3a6-599bcbd15205', '5fceea0f-484d-978c-0c13-599ae1171c0d', '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads', '2017-08-30 14:07:36', '', '', 0),
('f354fe6b-8c8e-11e7-98ee-7446a08797ed', '5fceea0f-484d-978c-0c13-599ae1171c0d', '8fda4bce-7a45-4cea-a6a2-59a51d956d10', 'Documents', '2017-08-29 00:00:00', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('1efe0ba8-9e7a-7e31-e3b8-59afefed53f3', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:b55d023e-ae8f-cead-e37a-59afef888ffe:Qweqeqw]', '2017-09-06 12:50:43', '2017-09-06 12:50:43', '1', '1', NULL, 0, '1', 'Leads', 'b55d023e-ae8f-cead-e37a-59afef888ffe', NULL, NULL),
('2d4ca70e-2ef7-ec61-79ab-59c3c868d66f', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:15b2317d-5f17-b967-0f5d-59c3c87bbba0:Мама]', '2017-09-21 14:09:43', '2017-09-21 14:09:43', '1', '1', NULL, 0, '1', 'Leads', '15b2317d-5f17-b967-0f5d-59c3c87bbba0', NULL, NULL),
('32198f3b-7e9a-fdb9-725f-59a50f6064ad', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:832522a5-c2bf-1b3f-6541-59a50fc69935:qwerty]', '2017-08-29 06:53:44', '2017-09-04 13:02:54', '1', '1', NULL, 1, '1', 'Leads', '832522a5-c2bf-1b3f-6541-59a50fc69935', NULL, NULL),
('4d9a0cce-8ffe-2cb5-bc2f-59a9504a96ed', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:838d76b5-f039-452c-f060-59a95005195b:цуцуцуц]', '2017-09-01 12:20:52', '2017-09-04 13:02:31', '1', '1', NULL, 1, '1', 'Leads', '838d76b5-f039-452c-f060-59a95005195b', NULL, NULL),
('5231df79-2462-dc87-4baa-59b111bfe249', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:10c2e549-c39f-7ef0-f7da-59b11183c89e:Qwd]', '2017-09-07 09:28:59', '2017-09-07 09:28:59', '1', '1', NULL, 0, '1', 'Leads', '10c2e549-c39f-7ef0-f7da-59b11183c89e', NULL, NULL),
('791dd9ac-597b-447f-96ed-59c3776a0e1d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:6acfcff6-723f-f3e3-3c1b-59c377a909f2:1]', '2017-09-21 08:23:44', '2017-09-21 08:23:44', '1', '1', NULL, 0, '1', 'Leads', '6acfcff6-723f-f3e3-3c1b-59c377a909f2', NULL, NULL),
('79cc9d90-7ba2-ca9a-d484-59b0e0051fe0', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:42592f10-786a-0ed0-3aa8-59b0e0dcb109:Bjbjbjb Erwe]', '2017-09-07 06:00:05', '2017-09-07 06:00:05', '1', '1', NULL, 0, '1', 'Leads', '42592f10-786a-0ed0-3aa8-59b0e0dcb109', NULL, NULL),
('88ae8821-d295-9e17-1940-599a89ff01fd', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:4a2d9def-1fda-713f-409f-599a892565f9:test]', '2017-08-21 07:21:18', '2017-09-04 13:02:50', '1', '1', NULL, 1, '1', 'Leads', '4a2d9def-1fda-713f-409f-599a892565f9', NULL, NULL),
('8a5115db-cfa3-0b07-f8ef-59ba212e89b5', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:9e430572-0c88-020a-a77c-59ba2115b313:adasdadsdad] {SugarFeed.FOR} [Accounts:d45b7965-8105-7147-d758-59ba21cbfdef:Рога и копыта]: ', '2017-09-14 06:29:12', '2017-09-14 06:29:12', '1', '1', NULL, 0, '1', 'Cases', '9e430572-0c88-020a-a77c-59ba2115b313', NULL, NULL),
('91e94bf9-b442-877b-d911-59b10ffbe9b5', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:1a850344-233e-e32f-fe21-59b10fc56fe1:TEST]', '2017-09-07 09:19:04', '2017-09-07 09:19:04', '1', '1', NULL, 0, '1', 'Leads', '1a850344-233e-e32f-fe21-59b10fc56fe1', NULL, NULL),
('97284423-5214-cdd7-8b10-59c38a14fb27', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:8d61d039-9372-369c-f48f-59c38ae4f7fb:4]', '2017-09-21 09:47:52', '2017-09-21 09:47:52', '1', '1', NULL, 0, '1', 'Leads', '8d61d039-9372-369c-f48f-59c38ae4f7fb', NULL, NULL),
('a6c76f28-8379-1ba3-9018-59a67c448f0f', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:484a8025-f2a1-f64a-e028-59a67cff19a5:Пустая запись]', '2017-08-30 08:51:24', '2017-09-04 13:02:32', '1', '1', NULL, 1, '1', 'Leads', '484a8025-f2a1-f64a-e028-59a67cff19a5', NULL, NULL),
('af1eb4c5-fd96-6068-4675-59affbb34790', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:711acfc9-ba15-32d6-171e-59affbea8e58:Sdfsdfdsf]', '2017-09-06 13:43:34', '2017-09-06 13:43:34', '1', '1', NULL, 0, '', 'Leads', '711acfc9-ba15-32d6-171e-59affbea8e58', NULL, NULL),
('b30d656e-07e7-9c39-1fbb-59c38802ed58', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:a909e9a5-90ce-7a2f-fd1a-59c38846be76:23]', '2017-09-21 09:39:16', '2017-09-21 09:39:16', '1', '1', NULL, 0, '1', 'Leads', 'a909e9a5-90ce-7a2f-fd1a-59c38846be76', NULL, NULL),
('b92dcb90-57b3-2ae3-10fb-59b8cebfa5c9', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:5a7265ea-aa41-cc92-4445-59b8ce6cc94a:12313123]', '2017-09-13 06:23:00', '2017-09-13 06:23:00', '1', '1', NULL, 0, '1', 'Leads', '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', NULL, NULL),
('bea70737-23da-fc54-77c6-59a512b29f5c', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:86bdbdc5-2a0a-fde9-d210-59a512d4d699:фамилия]', '2017-08-29 07:06:46', '2017-09-04 13:02:36', '1', '1', NULL, 1, '1', 'Leads', '86bdbdc5-2a0a-fde9-d210-59a512d4d699', NULL, NULL),
('c306c626-4b77-0911-5f61-59ca6c62233f', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:98d382fa-5d6c-7a6e-c895-59ca6cc9dc07:Валера]', '2017-09-26 15:04:25', '2017-09-26 15:04:25', '1', '1', NULL, 0, '1', 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', NULL, NULL),
('c4344832-ac48-de8a-8703-59b0e07abc46', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:e32272a9-d480-2e6c-abc4-59b0e087ec6f:Bjbjbjb Erwe]', '2017-09-07 06:00:56', '2017-09-07 06:00:56', '1', '1', NULL, 0, '1', 'Leads', 'e32272a9-d480-2e6c-abc4-59b0e087ec6f', NULL, NULL),
('cfb362b9-db7e-583c-441a-599bcb55db2b', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:559fa3be-40ba-9fe7-c560-599bcbc2bded:аа]', '2017-08-22 06:14:11', '2017-09-04 13:02:54', '1', '1', NULL, 1, '1', 'Leads', '559fa3be-40ba-9fe7-c560-599bcbc2bded', NULL, NULL),
('d023bffd-fbc4-285c-e53e-59c36fe27c65', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:9ce12f06-52ad-9bbe-3467-59c36fa66eef:Dsddsd]', '2017-09-21 07:50:10', '2017-09-21 07:50:10', '1', '1', NULL, 0, '1', 'Leads', '9ce12f06-52ad-9bbe-3467-59c36fa66eef', NULL, NULL),
('ead524fb-07ae-7eb1-c901-59aea13893a3', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:3e372765-5b6e-54bd-3f65-59aea194b1e0:Цуйуц]', '2017-09-05 13:05:30', '2017-09-05 13:05:30', '1', '1', NULL, 0, '1', 'Leads', '3e372765-5b6e-54bd-3f65-59aea194b1e0', NULL, NULL),
('edb30fd0-0178-a3ce-c9dd-59b6a125a6ff', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:70007648-47bc-d3b4-9904-59b6a1659460:Вавяфывваы]', '2017-09-11 14:46:53', '2017-09-11 14:46:53', '1', '1', NULL, 0, '1', 'Leads', '70007648-47bc-d3b4-9904-59b6a1659460', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `date_due_flag`, `date_due`, `date_start_flag`, `date_start`, `parent_type`, `parent_id`, `contact_id`, `priority`) VALUES
('16e36973-7b85-cc98-f04e-59ccb6b74043', 'Ремонт ходовой', '2017-09-28 08:46:20', '2017-09-28 08:46:20', '1', '1', '', 0, '1', 'Completed', 1, NULL, 1, NULL, 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '', 'High'),
('39ef8cad-5ffc-bf53-114a-59ccab2040bb', 'Эвакуатор', '2017-09-28 07:59:27', '2017-09-28 07:59:27', '1', '1', '', 0, '1', 'Not Started', 1, NULL, 1, NULL, 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '', 'High'),
('a66a8b08-3a52-1a1a-f647-59ccb3ff5d77', 'Покупка талонов', '2017-09-28 08:30:48', '2017-09-28 08:30:48', '1', '1', '', 0, '1', 'Not Started', 1, NULL, 1, NULL, 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '', 'High'),
('a7d8084e-9e88-9154-f30a-59ccb7b9e9b7', 'Ремонт колеса', '2017-09-28 08:48:29', '2017-09-28 08:48:29', '1', '1', '', 0, '1', 'Completed', 1, NULL, 1, NULL, 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '', 'High'),
('ec45de78-a05a-8054-eb21-59ccb7ec063c', 'Замена двигателя', '2017-09-28 08:49:24', '2017-09-28 08:49:24', '1', '1', '', 0, '1', 'In Progress', 1, NULL, 1, NULL, 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', '', 'High');

-- --------------------------------------------------------

--
-- Структура таблицы `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `templatesectionline`
--

INSERT INTO `templatesectionline` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `thumbnail`, `grp`, `ord`) VALUES
('6d970a65-c062-b5db-5cf5-59d1e6c4bdb5', 'Headline', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<p></p><h1>Add your headline here..</h1>', 0, 'include/javascript/mozaik/tpls/default/thumbs/headline.png', NULL, 1),
('7c7bb2fd-25d5-1e7c-3849-59d1e612bb12', 'Content', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content1.png', NULL, 2),
('9c77b7b5-4ced-4a5e-3d76-59d1e630bada', 'Content with two columns', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content2.png', NULL, 3),
('a2d0cfba-f391-ceef-cdf2-59d1e6cc4b3d', 'Content with three columns', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content3.png', NULL, 4),
('a7f15c44-678f-3657-0c0e-59d1e6c023ef', 'Content with left image', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1left.png', NULL, 5),
('ad11fade-1860-6044-0116-59d1e6f73e4b', 'Content with right image', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1right.png', NULL, 6),
('b2af8cb2-af79-5602-3dbc-59d1e6b18b33', 'Content with two image', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image2.png', NULL, 7),
('b80e9094-e6b9-21b4-d4a6-59d1e63ffd03', 'Content with three image', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image3.png', NULL, 8),
('bcf0adeb-7c0e-bc5e-c427-59d1e65f4eba', 'Footer', '2017-10-02 07:11:05', '2017-10-02 07:11:05', '1', '1', '<p class=\"footer\">Take your footer contents and information here..</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/footer.png', NULL, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(109, '97330f8b-4418-f38a-08ff-599ae3a25b85', '1', 'SecurityGroups', '5fceea0f-484d-978c-0c13-599ae1171c0d', 'Тестовая группа', '2017-08-21 13:42:37', 'detailview', 'fv2eaeegi81oiuqm2h2bllubn1', 1, 0),
(136, 'f0a8a917-f08b-e826-6024-599bce2004b7', '1', 'ACLRoles', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'Роль1', '2017-08-22 06:25:17', 'detailview', 'fk5f5nrd4clm4qum7rasugk8b1', 1, 0),
(385, '8fc50a54-f854-3e85-b619-59a511bb6ee4', '1', 'Leads', '832522a5-c2bf-1b3f-6541-59a50fc69935', 'qwerty123', '2017-08-29 07:04:24', 'detailview', 'fk5f5nrd4clm4qum7rasugk8b1', 0, 0),
(386, '58a67775-4160-197d-c924-59a51247d448', '1', 'Documents', 'b55c0f3e-abbf-da4c-0805-59a50fca9fe1', NULL, '2017-08-29 07:05:05', 'editview', 'fk5f5nrd4clm4qum7rasugk8b1', 0, 0),
(391, '8091e095-0fe9-e3e9-6e90-59a517394074', '1', 'Leads', '86bdbdc5-2a0a-fde9-d210-59a512d4d699', 'фамилия', '2017-08-29 07:27:40', 'detailview', 'fk5f5nrd4clm4qum7rasugk8b1', 0, 0),
(392, 'd65f86ce-93d4-ff33-e56f-59a5171a2bd0', '1', 'Leads', '559fa3be-40ba-9fe7-c560-599bcbc2bded', 'аа', '2017-08-29 07:28:05', 'detailview', 'fk5f5nrd4clm4qum7rasugk8b1', 0, 0),
(412, '3cee409f-3e20-6106-4f27-59a527af053c', '1', 'AOW_WorkFlow', '5f2441bd-29f9-1463-bdf0-59a50f636276', 'Расчет возраста', '2017-08-29 08:36:43', 'detailview', 'fk5f5nrd4clm4qum7rasugk8b1', 0, 0),
(597, '6039c6c5-bda6-2ee1-2628-59a941dc0b3f', '1', 'Users', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'test', '2017-09-01 11:17:26', 'detailview', 'han2pctuq3mjr1m149lfh1vth1', 1, 0),
(599, '132c0d7e-3583-9480-d9ad-59a9429d6b7f', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'Users', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'test', '2017-09-01 11:19:17', 'detailview', 'ke6jrjtssg2nv82ehecihhqrm3', 1, 0),
(656, '61384db2-6905-387d-2ab5-59a9744936ca', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'Leads', '838d76b5-f039-452c-f060-59a95005195b', 'wqwqwqw цуцуцуц', '2017-09-01 14:54:15', 'detailview', 'vp60q2ruk480hd2u8tet5preq0', 1, 0),
(665, '6cefeeb9-a71f-ffa3-9fed-59acf0a61198', '1', 'Leads', '838d76b5-f039-452c-f060-59a95005195b', 'wqwqwqw цуцуцуц', '2017-09-04 06:17:44', 'detailview', 'bokhsomk3noe0ouv6nlb0vf424', 1, 0),
(685, '718e552e-36ba-6f37-b666-59ad174811f6', '1', 'Leads', '484a8025-f2a1-f64a-e028-59a67cff19a5', 'Пустая запись', '2017-09-04 09:06:43', 'editview', '83as18aqn1l1bq8kra3769auj1', 1, 0),
(759, 'da8572f0-e276-d134-cba8-59aeb78b02b5', '1', 'Leads', '3e372765-5b6e-54bd-3f65-59aea194b1e0', 'Цуйуц', '2017-09-05 14:40:34', 'detailview', '4ov9u0kgo81jedpcdctebg5ji5', 0, 0),
(783, '4d730886-ad8c-ab3d-5440-59affb74a2fd', '1', 'Leads', '711acfc9-ba15-32d6-171e-59affbea8e58', 'Sdfsdfdsf', '2017-09-06 13:44:54', 'detailview', 'h7r55u6ffeqgvpn8bech9qpo50', 1, 0),
(785, '58620367-43c0-64d8-998d-59b008523404', '1', 'Leads', 'b55d023e-ae8f-cead-e37a-59afef888ffe', 'Qweqeqw', '2017-09-06 14:37:35', 'editview', 'cj74p074cki1gqrti4613dfcu3', 1, 0),
(786, '59b24296-f3bf-e8c6-7adb-59b0e0c42bb8', '1', 'Leads', '42592f10-786a-0ed0-3aa8-59b0e0dcb109', 'Bjbjbjb Erwe', '2017-09-07 06:00:16', 'detailview', 'cj74p074cki1gqrti4613dfcu3', 1, 0),
(791, 'c122245f-3bbc-bfe5-a7aa-59b0e2fd38fc', '1', 'Leads', 'e32272a9-d480-2e6c-abc4-59b0e087ec6f', 'Bjbjbjb Qqqqqqqqqqqqq', '2017-09-07 06:08:03', 'detailview', 'cj74p074cki1gqrti4613dfcu3', 1, 0),
(802, '68d778c8-b8e4-a4e0-1a70-59b105e95e72', '1', 'Leads', '4a2d9def-1fda-713f-409f-599a892565f9', 'Тест Тестовый', '2017-09-07 08:40:15', 'editview', 'jpj4j0dgbgt4dm7e18mcod1395', 1, 0),
(805, 'e0507bc2-dbf5-89c2-c9e5-59b1116415f5', '1', 'Leads', '10c2e549-c39f-7ef0-f7da-59b11183c89e', 'Qwd', '2017-09-07 09:29:54', 'editview', 'nli5pj2i7jdgscs01kdno7nhh2', 1, 0),
(842, '865105c6-0ea2-aaf9-7dc6-59b69968547f', '1', 'bh_Card_ident', '3bd563c6-65dc-e97a-3cfc-59b64503040f', '242344кцукукуцкц', '2017-09-11 14:10:18', 'detailview', '9n5iofduj8o6i1202nhpajqhm1', 1, 0),
(905, 'd9373d9e-f849-402e-bcba-59b8ec8e5684', '1', 'bh_org_trade_points', 'b28f695c-119e-2025-b215-59b8db435115', 'ТОчка 1', '2017-09-13 08:31:35', 'editview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(924, '91ba0b1b-f194-8536-4132-59b90196e2ec', '1', 'bh_organizations', 'a458164c-0e99-6007-b8f6-59b90109ab8a', 'цуйуйцуй', '2017-09-13 09:59:21', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(928, 'c4300a81-0acb-c276-e490-59b90fee2bfc', '1', 'bh_organizations', '810e0a4a-2d62-5d82-4d3f-59b8ff128fea', 'Организация 1', '2017-09-13 10:58:07', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(932, 'cb22846e-0ec8-5edd-ca8a-59b91d98445c', '1', 'bh_org_trade_points', '18bd9629-d148-fc4f-0bde-59b91d30ba8d', 'Точка1', '2017-09-13 11:59:09', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(948, '2c4a8fc5-8ffb-d026-7f94-59b92fc3b955', '1', 'bh_Realty', '900c0ca4-717c-71a5-03f9-59b7d157cf73', 'Квартира 1', '2017-09-13 13:13:51', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(951, 'a0ff2905-c80f-b088-a85d-59b9390ad05a', '1', 'bh_faq', 'afeac37e-153a-349b-061e-59b78ce04a05', 'Как правильно заинтересовать клиента', '2017-09-13 13:57:52', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(952, '4b7ae7b6-f945-d195-458b-59b93916728f', '1', 'bh_faq_history', '7a4f1e1a-79b3-d870-ac7c-59b78ca84ed6', 'Правильно заинтересовывать так', '2017-09-13 13:58:04', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(954, 'a152ff8b-d867-4e36-80ce-59b9436af6e8', '1', 'bh_Scripts_employee_comment', '1a01a3bd-a719-a223-3eb5-59b943ad5116', 'Комментарий', '2017-09-13 14:41:23', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(955, '48ebea9e-aba1-78d2-1b96-59ba1e26a3cf', '1', 'bh_script_param_response', '17ae3e18-60df-2d00-3d76-59b940929860', 'test', '2017-09-14 06:15:33', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1004, '6d5c5f88-4e6e-89e0-b34d-59bb8884f0d7', '1', 'Leads', '70007648-47bc-d3b4-9904-59b6a1659460', 'Вавяфывваы', '2017-09-15 08:00:34', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1037, '905fa946-2181-d33c-e0ed-59bba3244f25', '1', 'bh_Scripts_leadership_recommend', '863d0ced-1265-5628-ec69-59bb70c7b1ee', 'Скрипт очень крутой', '2017-09-15 09:56:58', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1046, 'e3b5b089-fd48-386c-f40b-59bbbc86e4a1', '1', 'Leads', '1a850344-233e-e32f-fe21-59b10fc56fe1', 'TEST', '2017-09-15 11:40:13', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1073, '30cf0ce6-4136-a180-8882-59bbd0bcce0a', '1', 'bh_cases_log', '35e9cdfc-a364-d2d0-5521-59ba8e52b293', 'Обращение 1', '2017-09-15 13:06:15', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1089, '8bb69f76-8fc5-9c4b-7458-59bfb71583d9', '1', 'bh_marketing_company_history', '61c060b8-0391-3e3c-a034-59bfa8231477', 'Пам', '2017-09-18 12:10:18', 'detailview', '704t98d0ffv90o8dgcak81l3o0', 1, 0),
(1090, '4b942301-60d4-4926-ce40-59bfba1e44c0', '1', 'bh_marketing_response', 'aaf23322-06e2-0bb4-6a12-59bfbaae9ba1', 'Test', '2017-09-18 12:24:10', 'detailview', '704t98d0ffv90o8dgcak81l3o0', 0, 0),
(1097, '2d0fad0e-1cc9-015e-ba54-59c209444947', '1', 'bh_scripts', 'e1b4e2b2-c827-1cbc-f4bd-59bb8fc5f4e6', 'ВОт такой скрип', '2017-09-20 06:22:36', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1101, '46555b96-86e5-ec41-e6b2-59c20d7d55d3', '1', 'bh_marketing_directorate', 'ac2361ec-f3ca-1138-8d47-59c20de54bc1', '12', '2017-09-20 06:41:32', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1106, 'ce3b6556-904e-7bd7-7b86-59c20f3f4732', '1', 'bh_marketing_company', 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', 'Парам пам пам', '2017-09-20 06:48:37', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1108, 'aba906b0-a061-387b-c625-59c2119628aa', '1', 'bh_Autotransport', '4fc0c7e0-08e2-cc2b-20b7-59b900899d00', 'Авто1', '2017-09-20 06:56:46', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1127, 'c9f0c264-9b30-3b8d-4622-59c223d49acb', '1', 'bh_case_compound', 'a79292fc-f0e5-d67a-46f2-59bbc2dbe213', 'название', '2017-09-20 08:14:20', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1134, '5defdafb-9971-0c37-3c3a-59c22c532a29', '1', 'Cases', '9e430572-0c88-020a-a77c-59ba2115b313', 'adasdadsdad', '2017-09-20 08:54:59', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1136, 'dc4c7bf2-d579-6f6f-5382-59c22dc5591a', '1', 'bh_Autotransport', '35a4e2aa-5dc6-d455-e9e9-59c21d48be24', 'Авто', '2017-09-20 08:59:27', 'editview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1140, '20e6d416-8d28-21e4-2eb1-59c2396b8ef3', '1', 'bh_providers', 'e8780716-2587-fba6-b6bd-59b7eb19fc44', 'Рога и КОпыта', '2017-09-20 09:49:38', 'detailview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1142, '50d2e713-4038-ede5-d9eb-59c24d1067d6', '1', 'bh_org', '2553f09e-02ea-9028-fb5e-59b920e28d1c', 'Организация 1', '2017-09-20 11:13:29', 'editview', '7ipelfc6tefdvdmo9fmos4qkn5', 1, 0),
(1155, '7a1202ab-fdf9-fd3c-7d81-59c36fccd433', '1', 'Leads', '9ce12f06-52ad-9bbe-3467-59c36fa66eef', 'Dsddsd', '2017-09-21 07:50:18', 'detailview', '9jka2v7o5r4lehs4tp86b2n5b4', 1, 0),
(1157, '6dac2bf5-4ad8-c812-b89b-59c3884d372c', '1', 'Leads', 'a909e9a5-90ce-7a2f-fd1a-59c38846be76', '23', '2017-09-21 09:39:24', 'detailview', '9jka2v7o5r4lehs4tp86b2n5b4', 1, 0),
(1159, '8a486b5b-cbee-7b30-ba2a-59c3ac1410b4', '1', 'Leads', '8d61d039-9372-369c-f48f-59c38ae4f7fb', '4', '2017-09-21 12:13:20', 'detailview', '9jka2v7o5r4lehs4tp86b2n5b4', 1, 0),
(1177, 'e9a6710f-b971-c93f-f291-59c4b90ffd4c', '1', 'bh_lead_adress', 'cdfe0480-e6e6-db79-ad5f-59c258a02b61', 'Адр', '2017-09-22 07:18:19', 'editview', 'oadlbhfjhsdcdlhg3q2t866vs7', 1, 0),
(1186, '81b30eda-9070-59e8-0864-59c4c6e88289', '1', 'bh_region', '125bb334-314b-ef8b-a4a1-59c4bce5e0a3', 'Одесская область', '2017-09-22 08:16:24', 'detailview', 'oadlbhfjhsdcdlhg3q2t866vs7', 1, 0),
(1189, 'a88fd552-43c2-fe85-daa0-59c4cb471645', '1', 'bh_country', '7cb164fe-204f-dfc2-8436-59c4b39d584e', 'Украина', '2017-09-22 08:34:34', 'detailview', 'oadlbhfjhsdcdlhg3q2t866vs7', 1, 0),
(1190, 'acda7430-30c6-e547-5ff3-59c4dcd5f309', '1', 'bh_passports', '81b30487-f8a6-ee09-ef84-59c4dc8ed1eb', NULL, '2017-09-22 09:46:48', 'detailview', 'oadlbhfjhsdcdlhg3q2t866vs7', 1, 0),
(1207, 'cc16157e-8309-d3ba-8ffc-59ca095477de', '1', 'Accounts', 'd45b7965-8105-7147-d758-59ba21cbfdef', 'Рога и копыта', '2017-09-26 08:01:07', 'detailview', 'rgrn2c2g8as4ge1b160r59v1k0', 1, 0),
(1294, 'be42020a-56a5-be55-ac0f-59ca52fe69a9', '1', 'Leads', '6acfcff6-723f-f3e3-3c1b-59c377a909f2', '1', '2017-09-26 13:12:35', 'editview', 'rgrn2c2g8as4ge1b160r59v1k0', 1, 0),
(1340, 'bdc7f9f7-bf89-f723-0a61-59ca5fe54946', '1', 'bh_communicators', '60cc4274-135d-7edf-ffeb-59ca0b4eeb6a', '12', '2017-09-26 14:07:38', 'editview', 'rgrn2c2g8as4ge1b160r59v1k0', 1, 0),
(1423, 'a1e2d8bd-76a1-b853-2bff-59ccbe787df5', '1', 'Tasks', 'ec45de78-a05a-8054-eb21-59ccb7ec063c', 'Замена двигателя', '2017-09-28 09:20:07', 'detailview', '1ekhcn3ae6c0ap75ja1svvcq50', 1, 0),
(1469, '76bb84b8-d3f8-0ede-386a-59ccfea85399', '1', 'bh_phones', '2b7f4cf2-c725-3f4c-de28-59c91319bb23', NULL, '2017-09-28 13:53:52', 'detailview', '1ekhcn3ae6c0ap75ja1svvcq50', 1, 0),
(1528, '9abbdaa5-1a03-fede-f5c6-59ce2ddf5c12', '1', 'Leads', '15b2317d-5f17-b967-0f5d-59c3c87bbba0', 'Мама', '2017-09-29 11:26:21', 'detailview', 'gkmh8nc6oh1q2l2i5jidn6qij2', 1, 0),
(1540, '123e3662-9fdc-951a-94e0-59d1e572cd19', '1', 'Campaigns', '9acf08d5-024e-412b-be11-59d1e04134b9', 'sssss', '2017-10-02 07:04:46', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1541, '81800dcf-0729-b866-b71c-59d1e55912a4', '1', 'Campaigns', 'f05d0f96-3e1c-6f00-8c2d-59d1e5c25ef9', 'моя', '2017-10-02 07:07:47', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1543, 'efea125d-680a-93b5-af73-59d1e7598775', '1', 'Campaigns', 'c1455a14-42a3-3790-84ca-59d1e676ad27', 'ййй', '2017-10-02 07:13:30', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1550, '9ee4f463-fccb-cd91-407e-59d1fdd8394c', '1', 'Campaigns', '51b98206-9490-5a8a-b032-59d1e7fc5b7a', 'test', '2017-10-02 08:50:14', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1552, 'c2023ae2-5513-4fb7-d61b-59d1ffe6646f', '1', 'Campaigns', '1ed19be7-94c2-25d0-0b3a-59d1fe8df63f', 'моя тестовая 1', '2017-10-02 08:56:18', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1554, '6f4ade99-8b5b-5f49-c3fa-59d214b45ff2', '1', 'Campaigns', '5727958b-2c4b-87e4-d763-59d20c9f7ca6', 'тест юра', '2017-10-02 10:28:44', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1556, '2011390d-faf6-acde-f1d1-59d2189bfa41', '1', 'Campaigns', '17d20276-8067-1b81-97d9-59d218370d5b', 'test1', '2017-10-02 10:45:46', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1557, '640b4612-e309-e180-0ddf-59d21a9c4082', '1', 'Campaigns', '2529fb54-1576-0088-a446-59d21afde5c1', '11111', '2017-10-02 10:51:09', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1558, '7c2e5dcd-85ae-8f36-0deb-59d21ac4c72d', '1', 'Campaigns', '98a40280-effe-124e-331c-59d21ae4750e', '222222', '2017-10-02 10:51:59', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1559, '9532946b-466c-631f-1b57-59d21a1bd01e', '1', 'Campaigns', 'f34f0858-460c-1912-b873-59d21a2b3174', 'qqqqqqq', '2017-10-02 10:53:17', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1560, '33222dcd-bd59-45bd-4239-59d21b60df69', '1', 'Campaigns', '896e8aca-8bfc-63a3-edb4-59d21bdbab08', 'новая', '2017-10-02 10:56:17', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1561, 'f135eb2b-7fd2-b8fe-f790-59d21ddc6417', '1', 'Campaigns', '34910e79-5d01-b742-5a9f-59d21dfe16cf', 'камп 1', '2017-10-02 11:04:19', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1562, '832c92e0-039c-f4e8-ee34-59d227d8b886', '1', 'Campaigns', '783704f3-0d96-ea61-b319-59d227b3908b', 'тест юра', '2017-10-02 11:49:17', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1563, '3346a766-0885-80a7-1d7a-59d228320462', '1', 'Campaigns', '1bf2e844-8764-d8e2-b3cd-59d228b2fa80', 'ццццц', '2017-10-02 11:52:59', 'save', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1564, '430241a9-915e-1bf4-cc39-59d233286d60', '1', 'Campaigns', 'cd986260-4c2a-1f3a-58fe-59d232973e79', 'компания 111', '2017-10-02 12:40:19', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1566, '40675bf4-0ba7-06ee-dd38-59d2385a17df', '1', 'Campaigns', '47c9c4b7-4e4b-6596-2ad9-59d238ebe0bd', 'тест 2222', '2017-10-02 13:02:51', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1571, '24928351-b826-1692-0f7f-59d24a1bb073', '1', 'ProspectLists', 'ef76f4c9-a638-bab4-f91a-59d1e4089280', 'мой', '2017-10-02 14:16:17', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1575, 'e9cd8220-8a6f-00a5-bab0-59d345abf359', '1', 'InboundEmail', 'd5395caa-5dc9-4cd0-c5b0-59d34509d5a0', 'test', '2017-10-03 08:08:05', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1576, '20f663e4-098a-1183-309d-59d34717ae35', '1', 'Campaigns', 'b5183c65-1b93-5e6e-b364-59d24333e4a8', 'new 1', '2017-10-03 08:18:23', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1578, '91a20fc6-895c-240e-71ca-59d34a364da7', '1', 'Campaigns', '3f0232ce-059c-a184-3838-59d34aed4ef4', 'Непочтовая компапния', '2017-10-03 08:31:39', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1597, '68d3bdda-aaf7-b1da-75bd-59d35208c06a', '1', 'bh_marketing_company_history', '61c060b8-0391-3e3c-a034-59bfa8231477', 'Пам', '2017-10-03 09:01:55', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1669, 'acb007c9-5e1c-01e8-be57-59d3934a2d42', '1', 'Cases', '9e430572-0c88-020a-a77c-59ba2115b313', 'adasdadsdad', '2017-10-03 13:40:53', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1672, '18d027d1-5a2f-0e00-bcc4-59d3984e9ed6', '1', 'Documents', '9193a8b7-a12e-afbf-3979-59ba79cb5d22', 'Документ 1', '2017-10-03 14:00:57', 'editview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1675, '116878fb-68eb-a312-68e3-59d39da8afa8', '1', 'AOS_PDF_Templates', '29661054-86f4-9bea-a18f-59d3976e2037', 'мой шаблон', '2017-10-03 14:23:00', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1677, 'a6a29b02-8ea7-3734-3464-59d3a3131fc4', '1', 'bh_marketing_response', 'aaf23322-06e2-0bb4-6a12-59bfbaae9ba1', 'Test', '2017-10-03 14:49:18', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 0, 0),
(1681, '7aff4a3f-88c3-b973-2aa4-59d4780b737d', '1', 'bh_channels_impact', '6f216cb1-9775-2242-895d-59d363d9bfa1', 'Канал 1', '2017-10-04 05:58:15', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1689, '3ed60094-46f4-f77d-65db-59d480b0a7d9', '1', 'AOS_Products', 'dd77710e-fd7e-fed7-124f-59d4802bb968', 'Товар топливо', '2017-10-04 06:31:55', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1720, 'd32d02a6-5470-f37d-fd19-59d49500c8c2', '1', 'AOS_Products', 'ece2079a-b00c-3d10-7add-59d484650d4a', 'Услуга эвакуатора', '2017-10-04 08:03:37', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1722, '2c1ad3fc-7ab1-4c85-1a1a-59d496640db8', '1', 'bh_formed_packets', 'f3d20d02-cabe-a079-6b45-59d496d392f4', 'Пакет 3', '2017-10-04 08:07:52', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1724, 'beca28cd-02e6-dc10-2cda-59d497b61e20', '1', 'bh_marketing_response', 'f34f076b-3745-ce6a-978c-59d359b4b094', 'отклик от клиента Администратор', '2017-10-04 08:12:29', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1728, 'c9095254-34a2-cf59-6ab8-59d4a0beb19d', '1', 'bh_marketing_response', '7769832a-236d-bfbd-fcb6-59d49d972ed1', 'Отклик от клиента Валера', '2017-10-04 08:47:09', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1731, 'bea1346e-bf26-650f-c36c-59d4a44998be', '1', 'AOS_Products', '94f6d3be-aa40-c800-02c7-59d373af2ff6', 'test', '2017-10-04 09:06:12', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1744, 'a36a4689-da5f-5250-380b-59d4babe1095', '1', 'AOS_Products', '379778c7-a5c6-67e5-ebc4-59d4a63f0710', 'Бензин канистра', '2017-10-04 10:41:06', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1749, 'ba9cf3d4-c91d-0d11-7b61-59d4c45f5a0a', '1', 'AOS_Products', '952151a3-60a8-2c53-3404-59d48521121c', 'Талон на бензин AИ 92', '2017-10-04 11:20:50', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1754, '44bc4765-d473-8226-a7b6-59d4c6587722', '1', 'AOS_Products', '22328d1a-9962-3f5e-3618-59d485e104eb', 'Талон на бензин AИ 95', '2017-10-04 11:29:37', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1755, 'df960827-897f-8b2c-1270-59d4c67c7851', '1', 'bh_campaine_products', '370e7ee5-9fc1-cd14-8b2d-59d36f14c292', 'Продукт 1', '2017-10-04 11:30:52', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1757, '1319449f-d7ac-033b-f7d6-59d4c7b8db12', '1', 'bh_marketing_directorate', 'ac2361ec-f3ca-1138-8d47-59c20de54bc1', 'Список клиентов Компания 1', '2017-10-04 11:33:54', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1760, '301bcab0-32c7-6fec-65d2-59d4c88134f2', '1', 'bh_marketing_company', 'd431499d-a668-1db4-8b3d-59bf89d1ebb8', 'Маркетинговая Компания 1', '2017-10-04 11:39:23', 'detailview', 'ee4m7lf1qdvbqra4lgg4sadn04', 1, 0),
(1762, 'c18a8910-5ac9-1a7e-4d15-59d4cca5e8f3', '1', 'bh_Autotransport', '4fc0c7e0-08e2-cc2b-20b7-59b900899d00', 'Авто1', '2017-10-04 11:57:22', 'detailview', '7kcqatoejjk06gjqoqr9u9tvb7', 1, 0),
(1763, '60d08a23-1d15-15e3-82e4-59d4cc55dc9c', '1', 'bh_Autotransport', '35a4e2aa-5dc6-d455-e9e9-59c21d48be24', 'Авто', '2017-10-04 11:57:53', 'detailview', '7kcqatoejjk06gjqoqr9u9tvb7', 1, 0),
(1766, 'e451885e-22bf-e7bd-d80c-59d4cd969d53', '1', 'bh_Autotransport', '4ead9f49-d87b-7fe5-c730-59cc9c77c36a', 'Клиент Валера BMW 720i', '2017-10-04 12:00:42', 'detailview', '7kcqatoejjk06gjqoqr9u9tvb7', 1, 0),
(1767, '3f035daf-ae44-1fa1-5581-59d4cd85f155', '1', 'Leads', '98d382fa-5d6c-7a6e-c895-59ca6cc9dc07', 'Валера', '2017-10-04 12:02:25', 'detailview', '7kcqatoejjk06gjqoqr9u9tvb7', 1, 0),
(1771, 'a9ff2103-1036-6d95-5928-59d4da711bf2', '1', 'bh_packet_activation', '2905487e-f13a-594a-6d2f-59bb73118e66', 'Пакет 1 активация', '2017-10-04 12:57:51', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1773, '7a806513-8e62-16f0-ce8f-59d4dbbcf24a', '1', 'bh_formed_packets', '2f4db81b-4e87-d6e9-6df6-59bbb89f3be2', 'Пакет 1', '2017-10-04 13:02:39', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1776, 'f2a322bd-d711-7986-747e-59d5cb53559d', '1', 'Leads', '5a7265ea-aa41-cc92-4445-59b8ce6cc94a', 'Николай Васильев', '2017-10-05 06:05:24', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1781, '3ee9f15f-28a4-7a3c-e24f-59d5ccf315be', '1', 'Leads', '10c2e549-c39f-7ef0-f7da-59b11183c89e', 'Андрей', '2017-10-05 06:08:16', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1782, 'e643c24b-2a7b-b77e-0754-59d5cc8a2b6f', '1', 'Leads', '9ce12f06-52ad-9bbe-3467-59c36fa66eef', 'Виталий Dsddsd', '2017-10-05 06:08:42', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1789, '8f205a32-f5dd-8f0f-5ef4-59d5cd8634da', '1', 'Leads', '8d61d039-9372-369c-f48f-59c38ae4f7fb', 'Иван', '2017-10-05 06:13:41', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1790, '5a471661-17da-c22c-171a-59d5cd923485', '1', 'Leads', '70007648-47bc-d3b4-9904-59b6a1659460', 'Алексей', '2017-10-05 06:14:07', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1792, '403d0d22-19c2-c712-59b9-59d5ce3f4658', '1', 'Leads', 'a909e9a5-90ce-7a2f-fd1a-59c38846be76', 'Евгений', '2017-10-05 06:15:58', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1794, '536e01d7-d347-a66e-16d6-59d5ce422515', '1', 'Leads', '6acfcff6-723f-f3e3-3c1b-59c377a909f2', 'Сергей', '2017-10-05 06:17:01', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1797, '8cace646-208b-46c9-dbb9-59d5cee2636b', '1', 'Leads', '1a850344-233e-e32f-fe21-59b10fc56fe1', 'Иван Иванов', '2017-10-05 06:19:30', 'detailview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1803, 'c0f8d169-5ff2-8bc3-2012-59d5d0e3f73e', '1', 'Users', '1', 'Administrator', '2017-10-05 06:26:33', 'editview', 'r4iu2b8fegqhrc52kcqqtvi3c7', 1, 0),
(1809, '6e7f9038-1048-063d-5cb8-59d5d952b571', '1', 'bh_Card_ident', '3bd563c6-65dc-e97a-3cfc-59b64503040f', '23434423422323', '2017-10-05 07:04:11', 'detailview', 'b73sge5bqq0bq8mjrrqlli9ii1', 1, 0),
(1810, 'c8c12f8c-fc9c-b5e9-4b92-59d5daea97c8', '1', 'bh_marketing_response', '39d947d8-fec3-148a-3c9a-59d34f872059', 'отклик от клиента Test', '2017-10-05 07:07:36', 'detailview', 'b73sge5bqq0bq8mjrrqlli9ii1', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('1940fe7f-2b0f-74de-87a3-59b66f43cffd', 'upload/upgrades/module/SCRIPTS2017_09_11_140958.zip', 'd704fe7343cfd4834f6d8ca16c918094', 'module', 'installed', '1505128196', 'SCRIPTS', '', 'SCRIPTS', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NzoiU0NSSVBUUyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTEgMTE6MDk6NTUiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1MTI4MTk2O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo3OiJTQ1JJUFRTIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEwOiJiaF9zY3JpcHRzIjtzOjU6ImNsYXNzIjtzOjEwOiJiaF9zY3JpcHRzIjtzOjQ6InBhdGgiO3M6MzM6Im1vZHVsZXMvYmhfc2NyaXB0cy9iaF9zY3JpcHRzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3NjcmlwdHMiO3M6MjoidG8iO3M6MTg6Im1vZHVsZXMvYmhfc2NyaXB0cyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-11 11:09:55', 1),
('1fd34183-b018-7e00-8690-59bb6f3c7e1f', 'upload/upgrades/module/Scripts_leadership_recommend2017_09_15_091026.zip', '31800e7910bef0ea59e6693d2e075758', 'module', 'installed', '1505455824', 'Scripts_leadership_recommend', '', 'Scripts_leadership_recommend', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6Mjg6IlNjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE1IDA2OjEwOjI0IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTQ1NTgyNDtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjg6e3M6MjoiaWQiO3M6Mjg6IlNjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MzE6ImJoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO3M6NToiY2xhc3MiO3M6MzE6ImJoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO3M6NDoicGF0aCI7czo3NToibW9kdWxlcy9iaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kL2JoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTA2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYmhfc2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZF9iaF9zY3JpcHRzX2JoX3NjcmlwdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiYmhfc2NyaXB0cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxMjc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9iaF9zY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kX2JoX3NjcmlwdHNfYmhfU2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MTp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6MTA2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYmhfc2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZF9iaF9zY3JpcHRzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjYzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO3M6MjoidG8iO3M6Mzk6Im1vZHVsZXMvYmhfU2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZCI7fX1zOjg6Imxhbmd1YWdlIjthOjY6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9zY3JpcHRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImJoX3NjcmlwdHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYmhfc2NyaXB0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJiaF9zY3JpcHRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjgyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQucGhwIjtzOjk6InRvX21vZHVsZSI7czozMToiYmhfU2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZCI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo4MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MzE6ImJoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxMDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9iaF9zY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kX2JoX3NjcmlwdHNfYmhfc2NyaXB0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJiaF9zY3JpcHRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjEyNDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2JoX3NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmRfYmhfc2NyaXB0c19iaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MzE6ImJoX1NjcmlwdHNfbGVhZGVyc2hpcF9yZWNvbW1lbmQiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-15 06:10:24', 1),
('20a9dab9-2622-6ac9-cefc-59bf98a55ef9', 'upload/upgrades/module/marketing_company_history.zip', '19077dd74adebdbb9506fa15fe26857e', 'module', 'installed', '1505728469', 'marketing_company_history', '', 'marketing_company_history', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjI1OiJtYXJrZXRpbmdfY29tcGFueV9oaXN0b3J5IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xOCAwOTo1NDoyOSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDU3Mjg0Njk7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjI1OiJtYXJrZXRpbmdfY29tcGFueV9oaXN0b3J5IjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjI4OiJiaF9tYXJrZXRpbmdfY29tcGFueV9oaXN0b3J5IjtzOjU6ImNsYXNzIjtzOjI4OiJiaF9tYXJrZXRpbmdfY29tcGFueV9oaXN0b3J5IjtzOjQ6InBhdGgiO3M6Njk6Im1vZHVsZXMvYmhfbWFya2V0aW5nX2NvbXBhbnlfaGlzdG9yeS9iaF9tYXJrZXRpbmdfY29tcGFueV9oaXN0b3J5LnBocCI7czozOiJ0YWIiO2k6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjYwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6MjoidG8iO3M6MzY6Im1vZHVsZXMvYmhfbWFya2V0aW5nX2NvbXBhbnlfaGlzdG9yeSI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-18 09:57:48', 1),
('22d558cb-f085-8445-ca84-59bb755f6ec9', 'upload/upgrades/module/Product_formed_packets2017_09_15_093909.zip', '9c7bd1f23399601ddcce490ea0db5d6e', 'module', 'installed', '1505457547', 'Product_formed_packets', '', 'Product_formed_packets', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjIyOiJQcm9kdWN0X2Zvcm1lZF9wYWNrZXRzIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xNSAwNjozOTowNiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDU0NTc1NDc7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjIyOiJQcm9kdWN0X2Zvcm1lZF9wYWNrZXRzIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE3OiJiaF9mb3JtZWRfcGFja2V0cyI7czo1OiJjbGFzcyI7czoxNzoiYmhfZm9ybWVkX3BhY2tldHMiO3M6NDoicGF0aCI7czo0NzoibW9kdWxlcy9iaF9mb3JtZWRfcGFja2V0cy9iaF9mb3JtZWRfcGFja2V0cy5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9mb3JtZWRfcGFja2V0cyI7czoyOiJ0byI7czoyNToibW9kdWxlcy9iaF9mb3JtZWRfcGFja2V0cyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-15 06:39:06', 1),
('2aad43a9-e70a-2179-dce3-59c4d2a8a704', 'upload/upgrades/module/passports.zip', 'bf2fdca9de6fff367dc0d47dfabf5029', 'module', 'installed', '1506070823', 'passports', '', 'passports', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjk6InBhc3Nwb3J0cyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMjIgMDk6MDA6MjMiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA2MDcwODIzO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo5OiJwYXNzcG9ydHMiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTI6ImJoX3Bhc3Nwb3J0cyI7czo1OiJjbGFzcyI7czoxMjoiYmhfcGFzc3BvcnRzIjtzOjQ6InBhdGgiO3M6Mzc6Im1vZHVsZXMvYmhfcGFzc3BvcnRzL2JoX3Bhc3Nwb3J0cy5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9wYXNzcG9ydHMiO3M6MjoidG8iO3M6MjA6Im1vZHVsZXMvYmhfcGFzc3BvcnRzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-22 09:05:55', 1),
('33f9adb9-d531-c5e4-e0db-59c9f3e8090e', 'upload/upgrades/module/communicators.zip', '56aae095c98fae4615000cf150ea3e9a', 'module', 'installed', '1506407100', 'communicators', '', 'communicators', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjEzOiJjb21tdW5pY2F0b3JzIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0yNiAwNjoyNTowMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDY0MDcxMDA7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjEzOiJjb21tdW5pY2F0b3JzIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE2OiJiaF9jb21tdW5pY2F0b3JzIjtzOjU6ImNsYXNzIjtzOjE2OiJiaF9jb21tdW5pY2F0b3JzIjtzOjQ6InBhdGgiO3M6NDU6Im1vZHVsZXMvYmhfY29tbXVuaWNhdG9ycy9iaF9jb21tdW5pY2F0b3JzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2NvbW11bmljYXRvcnMiO3M6MjoidG8iO3M6MjQ6Im1vZHVsZXMvYmhfY29tbXVuaWNhdG9ycyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-26 06:28:23', 1),
('36d617a7-984b-e765-744e-59c8f2cdee53', 'upload/upgrades/module/phones.zip', 'f7eb762f43bd8006dcc8cd16cd8e181c', 'module', 'installed', '1506341286', 'phones', '', 'phones', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjY6InBob25lcyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMjUgMTI6MDg6MDYiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA2MzQxMjg2O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo2OiJwaG9uZXMiO3M6NToiYmVhbnMiO2E6Mjp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTc6ImJoX2NvbnRhY3RfcGVyc29uIjtzOjU6ImNsYXNzIjtzOjE3OiJiaF9jb250YWN0X3BlcnNvbiI7czo0OiJwYXRoIjtzOjQ3OiJtb2R1bGVzL2JoX2NvbnRhY3RfcGVyc29uL2JoX2NvbnRhY3RfcGVyc29uLnBocCI7czozOiJ0YWIiO2I6MTt9aToxO2E6NDp7czo2OiJtb2R1bGUiO3M6OToiYmhfcGhvbmVzIjtzOjU6ImNsYXNzIjtzOjk6ImJoX3Bob25lcyI7czo0OiJwYXRoIjtzOjMxOiJtb2R1bGVzL2JoX3Bob25lcy9iaF9waG9uZXMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYmhfY29udGFjdF9wZXJzb24iO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvYmhfY29udGFjdF9wZXJzb24iO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NDE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYmhfcGhvbmVzIjtzOjI6InRvIjtzOjE3OiJtb2R1bGVzL2JoX3Bob25lcyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-25 12:11:30', 1),
('3844493f-4f05-2474-a42b-59ccfc599181', 'upload/upgrades/module/yaai-master.zip', 'bc26717ee8880347014297df1fed6a2c', 'module', 'installed', '3.6.10', 'Callinize - community Edition', 'Integrates Asterisk telephony features into SugarCRM.', 'Asterisk_SugarCRM_Connector', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MTp7aToxO3M6NToiNi40LjAiO31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjI6e2k6MTtzOjg6IjZcLjRcLlxkIjtpOjI7czoxMjoiNlwuWzAtN11cLlxkIjt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjY6InJlYWRtZSI7czoxNzU6IlBsZWFzZSBzZWUgdGhlIGRvY3VtZW50YXRpb24gYXQgaHR0cDovL3d3dy5naXRodWIuY29tL2JsYWszci95YWFpL1VzZXItTWFudWFsIHRoZXJlIGFyZSBzb21lIGltcG9ydGFudCBub3RlcyB5b3UgbmVlZCB0byByZWFkIGlmIHlvdSBhcmUgaW5zdGFsbGluZyBhbiB1cGRhdGVkIHZlcnNpb24gb2YgeWFhaS4iO3M6Mzoia2V5IjtzOjA6IiI7czo2OiJhdXRob3IiO3M6ODI6IkJsYWtlIFJvYmVydHNvbiAvIEtJTkFNVSBCdXNpbmVzcyBTb2x1dGlvbnMgQUcgLyBhYmNvbmEgYWN0aXZlIGJ1c2luZXNzIGNvbnN1bHRpbmciO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUzOiJJbnRlZ3JhdGVzIEFzdGVyaXNrIHRlbGVwaG9ueSBmZWF0dXJlcyBpbnRvIFN1Z2FyQ1JNLiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyOToiQ2FsbGluaXplIC0gY29tbXVuaXR5IEVkaXRpb24iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjExOiJEZWMgMywgMjAxMyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjY6IjMuNi4xMCI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo0OiJ0cnVlIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Njp7czoyOiJpZCI7czoyNzoiQXN0ZXJpc2tfU3VnYXJDUk1fQ29ubmVjdG9yIjtzOjQ6ImNvcHkiO2E6ODp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FzdGVyaXNrIjtzOjI6InRvIjtzOjIzOiJjdXN0b20vbW9kdWxlcy9Bc3RlcmlzayI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvc2VydmljZS9jYWxsaW5pemUiO3M6MjoidG8iO3M6MjQ6ImN1c3RvbS9zZXJ2aWNlL2NhbGxpbml6ZSI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo2OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvUGhvbmUvTGlzdFZpZXcudHBsIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvUGhvbmUvTGlzdFZpZXcudHBsIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2phdmFzY3JpcHQvanF1ZXJ5L2pxdWVyeS5wYWNrLmpzIjtzOjI6InRvIjtzOjQ3OiJjdXN0b20vaW5jbHVkZS9qYXZhc2NyaXB0L2pxdWVyeS9qcXVlcnkucGFjay5qcyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yLnBocCI7czoyOiJ0byI7czo1MzoiY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci5waHAiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci50cGwiO3M6MjoidG8iO3M6NTM6ImN1c3RvbS9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3IudHBsIjt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjc2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3JfdGFibGUudHBsIjtzOjI6InRvIjtzOjU5OiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yX3RhYmxlLnRwbCI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czo2OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlnX21ldGEucGhwIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlnX21ldGEucGhwIjt9fXM6MTQ6ImFkbWluaXN0cmF0aW9uIjthOjE6e2k6MDthOjE6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9hc3Rlcmlza19jb25maWd1cmF0b3IucGhwIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTU6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Vc2Vycy9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvVXNlcnMvbGFuZ3VhZ2UvZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL1VzZXJzL2xhbmd1YWdlL3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6NjthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJDb25maWd1cmF0b3IiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjc7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQ29uZmlndXJhdG9yIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aTo4O2E6Mzp7czo0OiJmcm9tIjtzOjY4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9sYW5ndWFnZS9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkNvbmZpZ3VyYXRvciI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6OTthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9DYWxscy9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiQ2FsbHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjEwO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NhbGxzL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MTE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ2FsbHMvbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkNhbGxzIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aToxMjthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9sYW5ndWFnZS9jYWxsX3N0YXR1c19kb21fX2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjEzO2E6Mzp7czo0OiJmcm9tIjtzOjcyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2xhbmd1YWdlL2NhbGxfc3RhdHVzX2RvbV9fZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MTQ7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvbGFuZ3VhZ2UvY2FsbF9zdGF0dXNfZG9tX19ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9fXM6MTM6ImN1c3RvbV9maWVsZHMiO2E6Nzp7aTowO2E6MjA6e3M6MjoiaWQiO3M6MjQ6IlVzZXJzYXN0ZXJpc2tfb3V0Ym91bmRfYyI7czo0OiJuYW1lIjtzOjE5OiJhc3Rlcmlza19vdXRib3VuZF9jIjtzOjU6ImxhYmVsIjtzOjIxOiJMQkxfQVNURVJJU0tfT1VUQk9VTkQiO3M6ODoiY29tbWVudHMiO047czo0OiJoZWxwIjtOO3M6NjoibW9kdWxlIjtzOjU6IlVzZXJzIjtzOjQ6InR5cGUiO3M6NDoiYm9vbCI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7aTowO3M6MTM6ImRhdGVfbW9kaWZpZWQiO3M6MTk6IjIwMDktMDUtMjIgMDA6MDA6MDAiO3M6NzoiZGVsZXRlZCI7czoxOiIwIjtzOjc6ImF1ZGl0ZWQiO3M6MToiMCI7czoxMToibWFzc191cGRhdGUiO3M6MToiMCI7czoxNToiZHVwbGljYXRlX21lcmdlIjtzOjE6IjAiO3M6MTA6InJlcG9ydGFibGUiO3M6MToiMSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjE7YToyMDp7czoyOiJpZCI7czoyMzoiVXNlcnNhc3Rlcmlza19pbmJvdW5kX2MiO3M6NDoibmFtZSI7czoxODoiYXN0ZXJpc2tfaW5ib3VuZF9jIjtzOjU6ImxhYmVsIjtzOjIwOiJMQkxfQVNURVJJU0tfSU5CT1VORCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO047czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO3M6NDoidHlwZSI7czo0OiJib29sIjtzOjg6Im1heF9zaXplIjtzOjI6IjQ1IjtzOjE0OiJyZXF1aXJlX29wdGlvbiI7czoxOiIwIjtzOjEzOiJkZWZhdWx0X3ZhbHVlIjtpOjA7czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MjthOjIwOntzOjI6ImlkIjtzOjE5OiJVc2Vyc2FzdGVyaXNrX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MTQ6ImFzdGVyaXNrX2V4dF9jIjtzOjU6ImxhYmVsIjtzOjE2OiJMQkxfQVNURVJJU0tfRVhUIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7TjtzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJ0eXBlIjtzOjc6InZhcmNoYXIiO3M6ODoibWF4X3NpemUiO3M6MjoiNDUiO3M6MTQ6InJlcXVpcmVfb3B0aW9uIjtzOjE6IjAiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO047czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MzthOjIxOntzOjI6ImlkIjtzOjIzOiJDYWxsc2FzdGVyaXNrX2NhbGxfaWRfYyI7czo0OiJuYW1lIjtzOjE4OiJhc3Rlcmlza19jYWxsX2lkX2MiO3M6NToibGFiZWwiO3M6MjA6IkxCTF9BU1RFUklTS19DQUxMX0lEIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7czoxMjc6IlRoaXMgaXMgdGhlIHVuaXF1ZSBpZCBhc3NpZ25lZCB0byB0aGlzIGNhbGwgYnkgdGhlIFBCWCwgVXNlZnVsIGZvciBkZWJ1Z2dpbmcgYnV0IG90aGVyd2lzZSBubyByZWFzb24gdG8gZGlzcGxheSB0byBhbiBlbmQgdXNlci4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjQ7YToyMTp7czoyOiJpZCI7czoyNToiQ2FsbHNhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo0OiJuYW1lIjtzOjIwOiJhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo1OiJsYWJlbCI7czoyMjoiTEJMX0FTVEVSSVNLX0NBTExFUl9JRCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTY6InRyaW1tZWQgY2FsbGVySWQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjU7YToyMTp7czoyOiJpZCI7czoyNzoiQ2FsbHNhc3Rlcmlza19pbmJvdW5kX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MjI6ImFzdGVyaXNrX2luYm91bmRfZXh0X2MiO3M6NToibGFiZWwiO3M6MjQ6IkxCTF9BU1RFUklTS19JTkJPVU5EX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTE0OiJDb250YWlucyB0aGUgaW5ib3VuZGVkIGV4dGVuc2lvbi4gIFRoaXMgaXMgdXNlZnVsIGZvciBpZGVudGlmeWluZyB0aGUgcXVldWUgb3IgcmluZ2dyb3VwIHRoYXQgdGhlIGNhbGwgY2FtZSBpbiBvbi4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjY7YToyMTp7czoyOiJpZCI7czoyNDoiQ2FsbHNhc3Rlcmlza191c2VyX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MTk6ImFzdGVyaXNrX3VzZXJfZXh0X2MiO3M6NToibGFiZWwiO3M6MjE6IkxCTF9BU1RFUklTS19VU0VSX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6NjE6IkNvbnRhaW5zIHRoZSB1c2VyIGV4dGVuc2lvbiB0aGF0IGFuc3dlcmVkIG9yIHBsYWNlZCB0aGUgY2FsbC4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO319czoxMToibG9naWNfaG9va3MiO2E6MTp7aTowO2E6Nzp7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjQ6Imhvb2siO3M6MTQ6ImFmdGVyX3VpX2ZyYW1lIjtzOjU6Im9yZGVyIjtpOjExO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcyOiJBZGRzIGFzdGVyaXNrIHJlbGF0ZWQgamF2YXNjcmlwdCB0byBwYWdlIHRvIGVuYWJsZSBDbGljayBUbyBEaWFsL0xvZ2dpbmciO3M6NDoiZmlsZSI7czo0NjoiY3VzdG9tL21vZHVsZXMvQXN0ZXJpc2svaW5jbHVkZS9Bc3Rlcmlza0pTLnBocCI7czo1OiJjbGFzcyI7czoxMDoiQXN0ZXJpc2tKUyI7czo4OiJmdW5jdGlvbiI7czoxNDoiZWNob0phdmFTY3JpcHQiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-28 13:40:59', 1),
('4086e730-a69b-c6b9-857e-59b673131d47', 'upload/upgrades/module/Auto2017_09_11_142633.zip', 'e25a0aba7329262aa8725a22fd64ddbd', 'module', 'installed', '1505129192', 'Auto', '', 'Auto', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDoiQXV0byI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTEgMTE6MjY6MzEiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1MTI5MTkyO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo0OiJBdXRvIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE2OiJiaF9BdXRvdHJhbnNwb3J0IjtzOjU6ImNsYXNzIjtzOjE2OiJiaF9BdXRvdHJhbnNwb3J0IjtzOjQ6InBhdGgiO3M6NDU6Im1vZHVsZXMvYmhfQXV0b3RyYW5zcG9ydC9iaF9BdXRvdHJhbnNwb3J0LnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX0F1dG90cmFuc3BvcnQiO3M6MjoidG8iO3M6MjQ6Im1vZHVsZXMvYmhfQXV0b3RyYW5zcG9ydCI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-11 11:26:31', 1),
('4aa007b7-3ce5-0c63-200c-59bf886a9492', 'upload/upgrades/module/marketing_company.zip', '10190640a614aeace33f3d27872f53b3', 'module', 'installed', '1505722011', 'marketing_company', 'Маркетинговая компания', 'marketing_company', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6NDM6ItCc0LDRgNC60LXRgtC40L3Qs9C+0LLQsNGPINC60L7QvNC/0LDQvdC40Y8iO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTc6Im1hcmtldGluZ19jb21wYW55IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xOCAwODowNjo1MSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDU3MjIwMTE7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjE3OiJtYXJrZXRpbmdfY29tcGFueSI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyMDoiYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6NToiY2xhc3MiO3M6MjA6ImJoX21hcmtldGluZ19jb21wYW55IjtzOjQ6InBhdGgiO3M6NTM6Im1vZHVsZXMvYmhfbWFya2V0aW5nX2NvbXBhbnkvYmhfbWFya2V0aW5nX2NvbXBhbnkucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NTI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6MjoidG8iO3M6Mjg6Im1vZHVsZXMvYmhfbWFya2V0aW5nX2NvbXBhbnkiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-18 08:48:06', 1),
('4e39e7c1-a977-0bfb-5be4-59d36e1e8f16', 'upload/upgrades/module/campaine_products2017_10_03_140206.zip', '8dd1583c3c701e95127cdef897c9530b', 'module', 'installed', '1507028524', 'campaine_products', '', 'campaine_products', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE3OiJjYW1wYWluZV9wcm9kdWN0cyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMTAtMDMgMTE6MDI6MDQiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA3MDI4NTI0O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxNzoiY2FtcGFpbmVfcHJvZHVjdHMiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MjA6ImJoX2NhbXBhaW5lX3Byb2R1Y3RzIjtzOjU6ImNsYXNzIjtzOjIwOiJiaF9jYW1wYWluZV9wcm9kdWN0cyI7czo0OiJwYXRoIjtzOjUzOiJtb2R1bGVzL2JoX2NhbXBhaW5lX3Byb2R1Y3RzL2JoX2NhbXBhaW5lX3Byb2R1Y3RzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2NhbXBhaW5lX3Byb2R1Y3RzIjtzOjI6InRvIjtzOjI4OiJtb2R1bGVzL2JoX2NhbXBhaW5lX3Byb2R1Y3RzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-10-03 11:02:04', 1),
('4f140991-adc4-0994-8536-59bbc0d4f01e', 'upload/upgrades/module/Case_compound2017_09_15_145603.zip', '47f7489089f400e189e78fd2faf95c6e', 'module', 'installed', '1505476561', 'Case_compound', 'Модуль состав обращения', 'Case_compound', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czo0NDoi0JzQvtC00YPQu9GMINGB0L7RgdGC0LDQsiDQvtCx0YDQsNGJ0LXQvdC40Y8iO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTM6IkNhc2VfY29tcG91bmQiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE1IDExOjU2OjAwIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTQ3NjU2MTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTM6IkNhc2VfY29tcG91bmQiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTY6ImJoX2Nhc2VfY29tcG91bmQiO3M6NToiY2xhc3MiO3M6MTY6ImJoX2Nhc2VfY29tcG91bmQiO3M6NDoicGF0aCI7czo0NToibW9kdWxlcy9iaF9jYXNlX2NvbXBvdW5kL2JoX2Nhc2VfY29tcG91bmQucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYmhfY2FzZV9jb21wb3VuZCI7czoyOiJ0byI7czoyNDoibW9kdWxlcy9iaF9jYXNlX2NvbXBvdW5kIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-15 11:56:00', 1),
('501bd9ff-9fab-b3e5-d8f8-59ca60f179ee', 'upload/upgrades/module/MultiTextFields.zip', '8a7158fc29e2f3abd8370e9856b5b82a', 'module', 'installed', '0.3', 'MultiTextFields by SugarTalk moded by William Kreider', 'Multi text fields for SugarCRM/SuiteCRM', 'MultiTextFields', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6NTp7aTowO3M6NToiNi4xLioiO2k6MTtzOjU6IjYuMi4qIjtpOjI7czo1OiI2LjMuKiI7aTozO3M6NToiNi40LioiO2k6NDtzOjU6IjYuNS4qIjt9czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTEtMDktMTkgMTQ6MDA6MDAiO3M6NzoidmVyc2lvbiI7czozOiIwLjMiO3M6NjoiYXV0aG9yIjtzOjM4OiJTdWdhclRhbGsubmV0IG1vZGVkIGJ5IFdpbGxpYW0gS3JlaWRlciI7czoxMToiZGVzY3JpcHRpb24iO3M6Mzk6Ik11bHRpIHRleHQgZmllbGRzIGZvciBTdWdhckNSTS9TdWl0ZUNSTSI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo1MzoiTXVsdGlUZXh0RmllbGRzIGJ5IFN1Z2FyVGFsayBtb2RlZCBieSBXaWxsaWFtIEtyZWlkZXIiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czoxNToiTXVsdGlUZXh0RmllbGRzIjtzOjg6Imxhbmd1YWdlIjthOjY6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9sYW5ndWFnZS9hcHBsaWNhdGlvbi5ydV9ydS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9sYW5ndWFnZS9hcHBsaWNhdGlvbi5lbl91cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo0NjoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lZGl0Y3VzdG9tZmllbGRzLnJ1X3J1LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6IkR5bmFtaWNGaWVsZHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vbGFuZ3VhZ2UvZWRpdGN1c3RvbWZpZWxkcy5lbl91cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJEeW5hbWljRmllbGRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjQzOiI8YmFzZXBhdGg+L2xhbmd1YWdlL21vZHVsZWJ1aWxkZXIucnVfcnUucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiTW9kdWxlQnVpbGRlciI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo0MzoiPGJhc2VwYXRoPi9sYW5ndWFnZS9tb2R1bGVidWlsZGVyLmVuX3VzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6Ik1vZHVsZUJ1aWxkZXIiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo0OiJjb3B5IjthOjU6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9pbnN0YWxsL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL011bHRpdGV4dGZpZWxkLyI7czoyOiJ0byI7czo0MjoiaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvTXVsdGl0ZXh0ZmllbGQvIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjg0OiI8YmFzZXBhdGg+L2luc3RhbGwvbW9kdWxlcy9EeW5hbWljRmllbGRzL3RlbXBsYXRlcy9GaWVsZHMvVGVtcGxhdGVNdWx0aXRleHRmaWVsZC5waHAiO3M6MjoidG8iO3M6NjU6Im1vZHVsZXMvRHluYW1pY0ZpZWxkcy90ZW1wbGF0ZXMvRmllbGRzL1RlbXBsYXRlTXVsdGl0ZXh0ZmllbGQucGhwIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjgyOiI8YmFzZXBhdGg+L2luc3RhbGwvbW9kdWxlcy9EeW5hbWljRmllbGRzL3RlbXBsYXRlcy9GaWVsZHMvRm9ybXMvbXVsdGl0ZXh0ZmllbGQucGhwIjtzOjI6InRvIjtzOjYzOiJtb2R1bGVzL0R5bmFtaWNGaWVsZHMvdGVtcGxhdGVzL0ZpZWxkcy9Gb3Jtcy9tdWx0aXRleHRmaWVsZC5waHAiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6ODI6IjxiYXNlcGF0aD4vaW5zdGFsbC9tb2R1bGVzL0R5bmFtaWNGaWVsZHMvdGVtcGxhdGVzL0ZpZWxkcy9Gb3Jtcy9tdWx0aXRleHRmaWVsZC50cGwiO3M6MjoidG8iO3M6NjM6Im1vZHVsZXMvRHluYW1pY0ZpZWxkcy90ZW1wbGF0ZXMvRmllbGRzL0Zvcm1zL211bHRpdGV4dGZpZWxkLnRwbCI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czoyNToiPGJhc2VwYXRoPi9pbnN0YWxsL2ltYWdlcyI7czoyOiJ0byI7czoyODoiY3VzdG9tL3RoZW1lcy9kZWZhdWx0L2ltYWdlcyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-26 14:13:16', 1),
('67d7c370-a98a-f8d0-0d9d-59ba8d532be5', 'upload/upgrades/module/Cases_log2017_09_14_170843.zip', '1a5664be4cb815747bfa3aa028015764', 'module', 'installed', '1505398122', 'Cases_log', 'Журнал обращений', 'Cases_log', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czozMToi0JbRg9GA0L3QsNC7INC+0LHRgNCw0YnQtdC90LjQuSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo5OiJDYXNlc19sb2ciO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE0IDE0OjA4OjQxIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTM5ODEyMjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6OToiQ2FzZXNfbG9nIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJiaF9jYXNlc19sb2ciO3M6NToiY2xhc3MiO3M6MTI6ImJoX2Nhc2VzX2xvZyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL2JoX2Nhc2VzX2xvZy9iaF9jYXNlc19sb2cucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYmhfY2FzZXNfbG9nIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL2JoX2Nhc2VzX2xvZyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-14 14:08:41', 1),
('7b521db4-f408-224a-2082-59b7c216f7c4', 'upload/upgrades/module/Scripts_param_responser2017_09_12_141849.zip', '99b40c8e8bc10975223b2f4e93f4af6b', 'module', 'installed', '1505215127', 'Scripts_param_responser', '', 'Scripts_param_responser', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MjM6IlNjcmlwdHNfcGFyYW1fcmVzcG9uc2VyIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xMiAxMToxODo0NiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDUyMTUxMjc7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo4OntzOjI6ImlkIjtzOjIzOiJTY3JpcHRzX3BhcmFtX3Jlc3BvbnNlciI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyNDoiYmhfc2NyaXB0X3BhcmFtX3Jlc3BvbnNlIjtzOjU6ImNsYXNzIjtzOjI0OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO3M6NDoicGF0aCI7czo2MToibW9kdWxlcy9iaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UvYmhfc2NyaXB0X3BhcmFtX3Jlc3BvbnNlLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjk5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYmhfc2NyaXB0X3BhcmFtX3Jlc3BvbnNlX2JoX3NjcmlwdHNfYmhfc2NyaXB0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJiaF9zY3JpcHRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjExMzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2JoX3NjcmlwdF9wYXJhbV9yZXNwb25zZV9iaF9zY3JpcHRzX2JoX3NjcmlwdF9wYXJhbV9yZXNwb25zZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjI0OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO319czoxMzoicmVsYXRpb25zaGlwcyI7YToxOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2JoX3NjcmlwdF9wYXJhbV9yZXNwb25zZV9iaF9zY3JpcHRzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjU2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3NjcmlwdF9wYXJhbV9yZXNwb25zZSI7czoyOiJ0byI7czozMjoibW9kdWxlcy9iaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO319czo4OiJsYW5ndWFnZSI7YTo2OntpOjA7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYmhfc2NyaXB0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJiaF9zY3JpcHRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX3NjcmlwdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiYmhfc2NyaXB0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo3NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UucGhwIjtzOjk6InRvX21vZHVsZSI7czoyNDoiYmhfc2NyaXB0X3BhcmFtX3Jlc3BvbnNlIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjc1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX3NjcmlwdF9wYXJhbV9yZXNwb25zZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjI0OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2JoX3NjcmlwdF9wYXJhbV9yZXNwb25zZV9iaF9zY3JpcHRzX2JoX3NjcmlwdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiYmhfc2NyaXB0cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxMTA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9iaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2VfYmhfc2NyaXB0c19iaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UucGhwIjtzOjk6InRvX21vZHVsZSI7czoyNDoiYmhfc2NyaXB0X3BhcmFtX3Jlc3BvbnNlIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-12 11:18:46', 1);
INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('7ce09c14-4a05-c203-4dcc-59b7cb0f3d14', 'upload/upgrades/module/Scripts_employee_comments2017_09_12_145518.zip', 'd68e72dc15175485b8adceaaf102e354', 'module', 'installed', '1505217316', 'Scripts_employee_comments', '', 'Scripts_employee_comments', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MjU6IlNjcmlwdHNfZW1wbG95ZWVfY29tbWVudHMiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTEyIDExOjU1OjE1IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTIxNzMxNjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjg6e3M6MjoiaWQiO3M6MjU6IlNjcmlwdHNfZW1wbG95ZWVfY29tbWVudHMiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6Mjc6ImJoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudCI7czo1OiJjbGFzcyI7czoyNzoiYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50IjtzOjQ6InBhdGgiO3M6Njc6Im1vZHVsZXMvYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50L2JoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudC5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxMDI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9iaF9zY3JpcHRzX2VtcGxveWVlX2NvbW1lbnRfYmhfc2NyaXB0c19iaF9zY3JpcHRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImJoX3NjcmlwdHMiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTE5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYmhfc2NyaXB0c19lbXBsb3llZV9jb21tZW50X2JoX3NjcmlwdHNfYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6Mjc6ImJoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudCI7fX1zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjE6e2k6MDthOjE6e3M6OToibWV0YV9kYXRhIjtzOjEwMjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2JoX3NjcmlwdHNfZW1wbG95ZWVfY29tbWVudF9iaF9zY3JpcHRzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudCI7czoyOiJ0byI7czozNToibW9kdWxlcy9iaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQiO319czo4OiJsYW5ndWFnZSI7YTo2OntpOjA7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYmhfc2NyaXB0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJiaF9zY3JpcHRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX3NjcmlwdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiYmhfc2NyaXB0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo3ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoyNzoiYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjc4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjI3OiJiaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2JoX3NjcmlwdHNfZW1wbG95ZWVfY29tbWVudF9iaF9zY3JpcHRzX2JoX3NjcmlwdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiYmhfc2NyaXB0cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxMTY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9iaF9zY3JpcHRzX2VtcGxveWVlX2NvbW1lbnRfYmhfc2NyaXB0c19iaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoyNzoiYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50Ijt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-12 11:55:15', 1),
('7ce361f2-49be-fbf9-77ef-59b7c0c4adb8', 'upload/upgrades/module/Scripts_status_history2017_09_12_140723.zip', '93ebde632968eae0d759e6d54442902b', 'module', 'installed', '1505214439', 'Scripts_status_history', '', 'Scripts_status_history', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MjI6IlNjcmlwdHNfc3RhdHVzX2hpc3RvcnkiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTEyIDExOjA3OjE4IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTIxNDQzOTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjk6e3M6MjoiaWQiO3M6MjI6IlNjcmlwdHNfc3RhdHVzX2hpc3RvcnkiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MjE6ImJoX3Njcl9zdGF0dXNfaGlzdG9yeSI7czo1OiJjbGFzcyI7czoyMToiYmhfc2NyX3N0YXR1c19oaXN0b3J5IjtzOjQ6InBhdGgiO3M6NTU6Im1vZHVsZXMvYmhfc2NyX3N0YXR1c19oaXN0b3J5L2JoX3Njcl9zdGF0dXNfaGlzdG9yeS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxMDc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9iaF9zY3Jfc3RhdHVzX2hpc3RvcnlfYmhfc2NyaXB0c19iaF9zY3Jfc3RhdHVzX2hpc3RvcnkucGhwIjtzOjk6InRvX21vZHVsZSI7czoyMToiYmhfc2NyX3N0YXR1c19oaXN0b3J5Ijt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MTp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6OTY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9iaF9zY3Jfc3RhdHVzX2hpc3RvcnlfYmhfc2NyaXB0c01ldGFEYXRhLnBocCI7fX1zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo1MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9zY3Jfc3RhdHVzX2hpc3RvcnkiO3M6MjoidG8iO3M6Mjk6Im1vZHVsZXMvYmhfc2NyX3N0YXR1c19oaXN0b3J5Ijt9fXM6ODoibGFuZ3VhZ2UiO2E6Njp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX3NjcmlwdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiYmhfc2NyaXB0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9zY3JpcHRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImJoX3NjcmlwdHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYmhfc2NyX3N0YXR1c19oaXN0b3J5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MjE6ImJoX3Njcl9zdGF0dXNfaGlzdG9yeSI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9zY3Jfc3RhdHVzX2hpc3RvcnkucGhwIjtzOjk6InRvX21vZHVsZSI7czoyMToiYmhfc2NyX3N0YXR1c19oaXN0b3J5IjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo1O2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fXM6NzoidmFyZGVmcyI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6OTM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9iaF9zY3Jfc3RhdHVzX2hpc3RvcnlfYmhfc2NyaXB0c19iaF9zY3JpcHRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImJoX3NjcmlwdHMiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTA0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYmhfc2NyX3N0YXR1c19oaXN0b3J5X2JoX3NjcmlwdHNfYmhfc2NyX3N0YXR1c19oaXN0b3J5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MjE6ImJoX3Njcl9zdGF0dXNfaGlzdG9yeSI7fX1zOjEyOiJsYXlvdXRmaWVsZHMiO2E6MTp7aTowO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MTp7czoxMDoiYmhfc2NyaXB0cyI7czozNzoiYmhfc2NyX3N0YXR1c19oaXN0b3J5X2JoX3NjcmlwdHNfbmFtZSI7fX19fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-12 11:07:18', 1),
('7ea625df-aeb8-c0a3-6bf6-59b7841b4da0', 'upload/upgrades/module/FAQ2017_09_12_095407.zip', '59ba8e5c35e47df75177876d44062f06', 'module', 'installed', '1505199242', 'FAQ', '', 'FAQ', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MzoiRkFRIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xMiAwNjo1NDowMSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDUxOTkyNDI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo5OntzOjI6ImlkIjtzOjM6IkZBUSI7czo1OiJiZWFucyI7YToyOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czo2OiJiaF9mYXEiO3M6NToiY2xhc3MiO3M6NjoiYmhfZmFxIjtzOjQ6InBhdGgiO3M6MjU6Im1vZHVsZXMvYmhfZmFxL2JoX2ZhcS5waHAiO3M6MzoidGFiIjtiOjE7fWk6MTthOjQ6e3M6NjoibW9kdWxlIjtzOjE0OiJiaF9mYXFfaGlzdG9yeSI7czo1OiJjbGFzcyI7czoxNDoiYmhfZmFxX2hpc3RvcnkiO3M6NDoicGF0aCI7czo0MToibW9kdWxlcy9iaF9mYXFfaGlzdG9yeS9iaF9mYXFfaGlzdG9yeS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2JoX2ZhcV9oaXN0b3J5X2JoX2ZhcV9iaF9mYXEucGhwIjtzOjk6InRvX21vZHVsZSI7czo2OiJiaF9mYXEiO319czoxMzoicmVsYXRpb25zaGlwcyI7YToxOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2JoX2ZhcV9oaXN0b3J5X2JoX2ZhcU1ldGFEYXRhLnBocCI7fX1zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czozODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9mYXEiO3M6MjoidG8iO3M6MTQ6Im1vZHVsZXMvYmhfZmFxIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2ZhcV9oaXN0b3J5IjtzOjI6InRvIjtzOjIyOiJtb2R1bGVzL2JoX2ZhcV9oaXN0b3J5Ijt9fXM6ODoibGFuZ3VhZ2UiO2E6Njp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjY1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX2ZhcV9oaXN0b3J5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6ImJoX2ZhcV9oaXN0b3J5IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjY1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX2ZhcV9oaXN0b3J5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6ImJoX2ZhcV9oaXN0b3J5IjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjU3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX2ZhcS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjY6ImJoX2ZhcSI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo1NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9iaF9mYXEucGhwIjtzOjk6InRvX21vZHVsZSI7czo2OiJiaF9mYXEiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2JoX2ZhcV9oaXN0b3J5X2JoX2ZhcV9iaF9mYXFfaGlzdG9yeS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJiaF9mYXFfaGlzdG9yeSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo3ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2JoX2ZhcV9oaXN0b3J5X2JoX2ZhcV9iaF9mYXEucGhwIjtzOjk6InRvX21vZHVsZSI7czo2OiJiaF9mYXEiO319czoxMjoibGF5b3V0ZmllbGRzIjthOjE6e2k6MDthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjA6e319fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-12 06:54:01', 1),
('7f50bef4-8805-688b-7cf2-59bf7a3465c4', 'upload/upgrades/module/project_bh_marketing_company2017_09_18_104310.zip', '0dfeb7282b75fa7d6145201adee0b2ca', 'module', 'installed', '1505720590', 'project_bh_marketing_company', 'Маркетинговая компания', 'project_bh_marketing_company', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjY6IjYuNS4yNCI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiYmhfbXIiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6NDM6ItCc0LDRgNC60LXRgtC40L3Qs9C+0LLQsNGPINC60L7QvNC/0LDQvdC40Y8iO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6Mjg6InByb2plY3RfYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE4IDA3OjQzOjEwIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTcyMDU5MDtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjI6e3M6MjoiaWQiO3M6Mjg6InByb2plY3RfYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MzE6IjxiYXNlcGF0aD4vYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6MjoidG8iO3M6NTA6ImN1c3RvbS9tb2R1bGVidWlsZGVyL3BhY2thZ2VzL2JoX21hcmtldGluZ19jb21wYW55Ijt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-18 07:48:12', 1),
('82a1b69b-fb81-f7eb-2763-59d362ce7551', 'upload/upgrades/module/channels_impact2017_10_03_131243.zip', '868f96913c3117ea0ed229b9d2d28585', 'module', 'installed', '1507025561', 'channels_impact', '', 'channels_impact', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE1OiJjaGFubmVsc19pbXBhY3QiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTEwLTAzIDEwOjEyOjQxIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNzAyNTU2MTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTU6ImNoYW5uZWxzX2ltcGFjdCI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxODoiYmhfY2hhbm5lbHNfaW1wYWN0IjtzOjU6ImNsYXNzIjtzOjE4OiJiaF9jaGFubmVsc19pbXBhY3QiO3M6NDoicGF0aCI7czo0OToibW9kdWxlcy9iaF9jaGFubmVsc19pbXBhY3QvYmhfY2hhbm5lbHNfaW1wYWN0LnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2NoYW5uZWxzX2ltcGFjdCI7czoyOiJ0byI7czoyNjoibW9kdWxlcy9iaF9jaGFubmVsc19pbXBhY3QiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-10-03 10:12:41', 1),
('84461eab-5c46-63f3-52fd-599a78d46657', 'upload/upgrades/langpack/ru.zip', 'd91a9d99bacde0dc2caf34f62025b596', 'langpack', 'installed', '7.9.4.0', 'Russian (Russia)', 'Перевод: www.crowdin.com/project/suitecrmtranslations', 'ru_RU', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNjoiUnVzc2lhbiAoUnVzc2lhKSI7czoxMToiZGVzY3JpcHRpb24iO3M6NjA6ItCf0LXRgNC10LLQvtC0OiB3d3cuY3Jvd2Rpbi5jb20vcHJvamVjdC9zdWl0ZWNybXRyYW5zbGF0aW9ucyI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YTowOnt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo2OiJhdXRob3IiO3M6MTg6IlN1aXRlQ1JNIENvbW11bml0eSI7czo3OiJ2ZXJzaW9uIjtzOjc6IjcuOS40LjAiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE3LTA3LTIwIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJydV9SVSI7czo5OiJpbWFnZV9kaXIiO3M6MTc6IjxiYXNlcGF0aD4vaW1hZ2VzIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luY2x1ZGUiO3M6MjoidG8iO3M6NzoiaW5jbHVkZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-08-21 06:07:33', 1),
('85c0bf11-4af2-4278-8c34-59c4c333e2fa', 'upload/upgrades/module/locality.zip', '0fc6c58a6432f2facaa374842566c4c7', 'module', 'installed', '1506066592', 'locality', '', 'locality', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjg6ImxvY2FsaXR5IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0yMiAwNzo0OTo1MiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDYwNjY1OTI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjg6ImxvY2FsaXR5IjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjExOiJiaF9sb2NhbGl0eSI7czo1OiJjbGFzcyI7czoxMToiYmhfbG9jYWxpdHkiO3M6NDoicGF0aCI7czozNToibW9kdWxlcy9iaF9sb2NhbGl0eS9iaF9sb2NhbGl0eS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9sb2NhbGl0eSI7czoyOiJ0byI7czoxOToibW9kdWxlcy9iaF9sb2NhbGl0eSI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-22 08:02:05', 1),
('8d24d744-c755-24fe-820c-59cdf78b005e', 'upload/upgrades/module/Asterisk Download.zip', 'df0ed2e709700b411def184728df3e9b', 'module', 'installed', '2.3.0.9 for v6.x', 'Asterisk SugarCRM Connector', 'Integrates Asterisk telephony features into SugarCRM.', 'Asterisk_SugarCRM_Connector', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MTp7aToxO3M6NToiNi40LjAiO31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjI6e2k6MTtzOjg6IjZcLjRcLlxkIjtpOjI7czo5OiI2XC5cZFwuXGQiO319czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjM6e2k6MDtzOjI6IkNFIjtpOjE7czozOiJQUk8iO2k6MjtzOjM6IkVOVCI7fXM6NjoicmVhZG1lIjtzOjY6IlJFQURNRSI7czozOiJrZXkiO3M6MDoiIjtzOjY6ImF1dGhvciI7czoxMTI6IkJoZWEgS25vd2xlZGdlIFRlY2hub2xvZ2llcyAvIEJsYWtlIFJvYmVydHNvbiAvIEtJTkFNVSBCdXNpbmVzcyBTb2x1dGlvbnMgQUcgLyBhYmNvbmEgYWN0aXZlIGJ1c2luZXNzIGNvbnN1bHRpbmciO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUzOiJJbnRlZ3JhdGVzIEFzdGVyaXNrIHRlbGVwaG9ueSBmZWF0dXJlcyBpbnRvIFN1Z2FyQ1JNLiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyNzoiQXN0ZXJpc2sgU3VnYXJDUk0gQ29ubmVjdG9yIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMi0wNS0xMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjE2OiIyLjMuMC45IGZvciB2Ni54IjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjQ6InRydWUiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo2OntzOjI6ImlkIjtzOjI3OiJBc3Rlcmlza19TdWdhckNSTV9Db25uZWN0b3IiO3M6NDoiY29weSI7YTo1OntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQXN0ZXJpc2siO3M6MjoidG8iO3M6MjM6ImN1c3RvbS9tb2R1bGVzL0FzdGVyaXNrIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjY5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9QaG9uZS9MaXN0Vmlldy50cGwiO3M6MjoidG8iO3M6NTI6ImN1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9QaG9uZS9MaXN0Vmlldy50cGwiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvamF2YXNjcmlwdC9qcXVlcnkvanF1ZXJ5LnBhY2suanMiO3M6MjoidG8iO3M6NDc6ImN1c3RvbS9pbmNsdWRlL2phdmFzY3JpcHQvanF1ZXJ5L2pxdWVyeS5wYWNrLmpzIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3IucGhwIjtzOjI6InRvIjtzOjUzOiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yLnBocCI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yLnRwbCI7czoyOiJ0byI7czo1MzoiY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci50cGwiO319czoxNDoiYWRtaW5pc3RyYXRpb24iO2E6MTp7aTowO2E6MTp7czo0OiJmcm9tIjtzOjcyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci5waHAiO319czo4OiJsYW5ndWFnZSI7YToxNTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL1VzZXJzL2xhbmd1YWdlL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Vc2Vycy9sYW5ndWFnZS9nZV9nZS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvVXNlcnMvbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2xhbmd1YWdlL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vbGFuZ3VhZ2UvZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9sYW5ndWFnZS9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aTo2O2E6Mzp7czo0OiJmcm9tIjtzOjY4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkNvbmZpZ3VyYXRvciI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NzthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvbGFuZ3VhZ2UvZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJDb25maWd1cmF0b3IiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjg7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2xhbmd1YWdlL3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQ29uZmlndXJhdG9yIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aTo5O2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NhbGxzL2xhbmd1YWdlL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTA7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ2FsbHMvbGFuZ3VhZ2UvZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkNhbGxzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aToxMTthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9DYWxscy9sYW5ndWFnZS9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiQ2FsbHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO31pOjEyO2E6Mzp7czo0OiJmcm9tIjtzOjcyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2xhbmd1YWdlL2NhbGxfc3RhdHVzX2RvbV9fZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTM7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvbGFuZ3VhZ2UvY2FsbF9zdGF0dXNfZG9tX19nZV9nZS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aToxNDthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9sYW5ndWFnZS9jYWxsX3N0YXR1c19kb21fX3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO319czoxMzoiY3VzdG9tX2ZpZWxkcyI7YTo0OntpOjA7YToyMDp7czoyOiJpZCI7czoyNDoiVXNlcnNhc3Rlcmlza19vdXRib3VuZF9jIjtzOjQ6Im5hbWUiO3M6MTk6ImFzdGVyaXNrX291dGJvdW5kX2MiO3M6NToibGFiZWwiO3M6MjE6IkxCTF9BU1RFUklTS19PVVRCT1VORCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO047czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO3M6NDoidHlwZSI7czo0OiJib29sIjtzOjg6Im1heF9zaXplIjtzOjI6IjQ1IjtzOjE0OiJyZXF1aXJlX29wdGlvbiI7czoxOiIwIjtzOjEzOiJkZWZhdWx0X3ZhbHVlIjtpOjA7czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MTthOjIwOntzOjI6ImlkIjtzOjIzOiJVc2Vyc2FzdGVyaXNrX2luYm91bmRfYyI7czo0OiJuYW1lIjtzOjE4OiJhc3Rlcmlza19pbmJvdW5kX2MiO3M6NToibGFiZWwiO3M6MjA6IkxCTF9BU1RFUklTS19JTkJPVU5EIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7TjtzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJ0eXBlIjtzOjQ6ImJvb2wiO3M6ODoibWF4X3NpemUiO3M6MjoiNDUiO3M6MTQ6InJlcXVpcmVfb3B0aW9uIjtzOjE6IjAiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO2k6MDtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA1LTIyIDAwOjAwOjAwIjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjEiO3M6NDoiZXh0MSI7TjtzOjQ6ImV4dDIiO047czo0OiJleHQzIjtOO3M6NDoiZXh0NCI7Tjt9aToyO2E6MjA6e3M6MjoiaWQiO3M6MTk6IlVzZXJzYXN0ZXJpc2tfZXh0X2MiO3M6NDoibmFtZSI7czoxNDoiYXN0ZXJpc2tfZXh0X2MiO3M6NToibGFiZWwiO3M6MTY6IkxCTF9BU1RFUklTS19FWFQiO3M6ODoiY29tbWVudHMiO047czo0OiJoZWxwIjtOO3M6NjoibW9kdWxlIjtzOjU6IlVzZXJzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA1LTIyIDAwOjAwOjAwIjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjEiO3M6NDoiZXh0MSI7TjtzOjQ6ImV4dDIiO047czo0OiJleHQzIjtOO3M6NDoiZXh0NCI7Tjt9aTozO2E6MjE6e3M6MjoiaWQiO3M6MjU6IkNhbGxzYXN0ZXJpc2tfY2FsbGVyX2lkX2MiO3M6NDoibmFtZSI7czoyMDoiYXN0ZXJpc2tfY2FsbGVyX2lkX2MiO3M6NToibGFiZWwiO3M6MjI6IkxCTF9BU1RFUklTS19DQUxMRVJfSUQiO3M6ODoiY29tbWVudHMiO047czo0OiJoZWxwIjtzOjE2OiJ0cmltbWVkIGNhbGxlcklkIjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czo0OiJ0eXBlIjtzOjc6InZhcmNoYXIiO3M6ODoibWF4X3NpemUiO3M6MjoiNDUiO3M6MTQ6InJlcXVpcmVfb3B0aW9uIjtzOjE6IjAiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO047czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNi0xOCAxNTozODo0OCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIwIjtzOjEwOiJpbXBvcnRhYmxlIjtzOjQ6InRydWUiO3M6NDoiZXh0MSI7TjtzOjQ6ImV4dDIiO047czo0OiJleHQzIjtOO3M6NDoiZXh0NCI7Tjt9fXM6MTE6ImxvZ2ljX2hvb2tzIjthOjE6e2k6MDthOjc6e3M6NjoibW9kdWxlIjtzOjA6IiI7czo0OiJob29rIjtzOjE0OiJhZnRlcl91aV9mcmFtZSI7czo1OiJvcmRlciI7aToxMTtzOjExOiJkZXNjcmlwdGlvbiI7czo3MjoiQWRkcyBhc3RlcmlzayByZWxhdGVkIGphdmFzY3JpcHQgdG8gcGFnZSB0byBlbmFibGUgQ2xpY2sgVG8gRGlhbC9Mb2dnaW5nIjtzOjQ6ImZpbGUiO3M6NDY6ImN1c3RvbS9tb2R1bGVzL0FzdGVyaXNrL2luY2x1ZGUvQXN0ZXJpc2tKUy5waHAiO3M6NToiY2xhc3MiO3M6MTA6IkFzdGVyaXNrSlMiO3M6ODoiZnVuY3Rpb24iO3M6MTQ6ImVjaG9KYXZhU2NyaXB0Ijt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-29 07:31:15', 1),
('8fc4305c-870b-60a2-0acd-59c3c1675d48', 'upload/upgrades/module/position_at_work.zip', '848a5e93e8685aa5a7c1bc4f25750a6a', 'module', 'installed', '1505999759', 'position_at_work', '', 'position_at_work', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE2OiJwb3NpdGlvbl9hdF93b3JrIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0yMSAxMzoxNTo1OSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDU5OTk3NTk7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjE2OiJwb3NpdGlvbl9hdF93b3JrIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjU6ImNsYXNzIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjQ6InBhdGgiO3M6NTE6Im1vZHVsZXMvYmhfcG9zaXRpb25fYXRfd29yay9iaF9wb3NpdGlvbl9hdF93b3JrLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3Bvc2l0aW9uX2F0X3dvcmsiO3M6MjoidG8iO3M6Mjc6Im1vZHVsZXMvYmhfcG9zaXRpb25fYXRfd29yayI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-21 13:41:58', 1),
('9278982b-406f-1c20-aab4-59b91198b090', 'upload/upgrades/module/ORG22017_09_13_093206.zip', 'fea9a19012b22b994a76a47b429ba962', 'module', 'installed', '1505284320', 'ORG2', '', 'ORG2', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDoiT1JHMiI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTMgMDY6MzE6NTYiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1Mjg0MzIwO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo0OiJPUkcyIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjU6ImNsYXNzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjQ6InBhdGgiO3M6NTE6Im1vZHVsZXMvYmhfb3JnX3RyYWRlX3BvaW50cy9iaF9vcmdfdHJhZGVfcG9pbnRzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX29yZ190cmFkZV9wb2ludHMiO3M6MjoidG8iO3M6Mjc6Im1vZHVsZXMvYmhfb3JnX3RyYWRlX3BvaW50cyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-13 11:06:30', 1),
('941a3f63-c44c-dc68-2514-59b91f4e3ef6', 'upload/upgrades/module/Organization2017_09_13_150708.zip', 'c456c24a479c49f81f9961ee3acf3ab1', 'module', 'installed', '1505304426', 'Organization', '', 'Organization', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTI6Ik9yZ2FuaXphdGlvbiI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTMgMTI6MDc6MDUiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1MzA0NDI2O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxMjoiT3JnYW5pemF0aW9uIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjY6ImJoX29yZyI7czo1OiJjbGFzcyI7czo2OiJiaF9vcmciO3M6NDoicGF0aCI7czoyNToibW9kdWxlcy9iaF9vcmcvYmhfb3JnLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjM4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX29yZyI7czoyOiJ0byI7czoxNDoibW9kdWxlcy9iaF9vcmciO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-13 12:07:05', 1),
('a037ada6-adc6-99ff-6c13-59c3c13ab62e', 'upload/upgrades/module/category_at_work.zip', 'be0f620202b2783e971ea5965deafcf9', 'module', 'installed', '1506000125', 'category_at_work', '', 'category_at_work', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE2OiJjYXRlZ29yeV9hdF93b3JrIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0yMSAxMzoyMjowNSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDYwMDAxMjU7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjE2OiJjYXRlZ29yeV9hdF93b3JrIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjU6ImNsYXNzIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjQ6InBhdGgiO3M6NTE6Im1vZHVsZXMvYmhfY2F0ZWdvcnlfYXRfd29yay9iaF9jYXRlZ29yeV9hdF93b3JrLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2NhdGVnb3J5X2F0X3dvcmsiO3M6MjoidG8iO3M6Mjc6Im1vZHVsZXMvYmhfY2F0ZWdvcnlfYXRfd29yayI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-21 13:42:41', 1),
('bcc71836-4b34-f72a-75bd-59b6760f7bc4', 'upload/upgrades/module/Realty2017_09_11_144010.zip', '11bcd8a4c00dfe39616b548791d71e06', 'module', 'installed', '1505130009', 'Realty', '', 'Realty', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NjoiUmVhbHR5IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xMSAxMTo0MDowOCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDUxMzAwMDk7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjY6IlJlYWx0eSI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czo5OiJiaF9SZWFsdHkiO3M6NToiY2xhc3MiO3M6OToiYmhfUmVhbHR5IjtzOjQ6InBhdGgiO3M6MzE6Im1vZHVsZXMvYmhfUmVhbHR5L2JoX1JlYWx0eS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9SZWFsdHkiO3M6MjoidG8iO3M6MTc6Im1vZHVsZXMvYmhfUmVhbHR5Ijt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-11 11:40:08', 1),
('c0a46b00-3bb6-cde9-72c2-59c24c0a7565', 'upload/upgrades/module/lead_adress.zip', 'ca3e3311aabd30e9239ce2c858cc6388', 'module', 'installed', '1505905207', 'lead_adress', '', 'lead_adress', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjExOiJsZWFkX2FkcmVzcyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMjAgMTE6MDA6MDciO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1OTA1MjA3O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxMToibGVhZF9hZHJlc3MiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTQ6ImJoX2xlYWRfYWRyZXNzIjtzOjU6ImNsYXNzIjtzOjE0OiJiaF9sZWFkX2FkcmVzcyI7czo0OiJwYXRoIjtzOjQxOiJtb2R1bGVzL2JoX2xlYWRfYWRyZXNzL2JoX2xlYWRfYWRyZXNzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2xlYWRfYWRyZXNzIjtzOjI6InRvIjtzOjIyOiJtb2R1bGVzL2JoX2xlYWRfYWRyZXNzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-20 11:10:39', 1),
('c128ec9c-b51a-db99-e099-59b7dce9b812', 'upload/upgrades/module/Provid2017_09_12_160948.zip', 'f18086caa86ef0901f3449e288676089', 'module', 'installed', '1505221787', 'Provid', '', 'Provid', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NjoiUHJvdmlkIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xMiAxMzowOTo0NiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDUyMjE3ODc7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjY6IlByb3ZpZCI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxMjoiYmhfcHJvdmlkZXJzIjtzOjU6ImNsYXNzIjtzOjEyOiJiaF9wcm92aWRlcnMiO3M6NDoicGF0aCI7czozNzoibW9kdWxlcy9iaF9wcm92aWRlcnMvYmhfcHJvdmlkZXJzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3Byb3ZpZGVycyI7czoyOiJ0byI7czoyMDoibW9kdWxlcy9iaF9wcm92aWRlcnMiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-12 13:09:46', 1),
('c2dfc039-30f1-1791-1dc1-59b63555eb9e', 'upload/upgrades/module/Card2017_09_11_100207.zip', 'bd0a6ddad6629e0c11f36a3c311a5e3f', 'module', 'installed', '1505113324', 'Card', '', 'Card', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDoiQ2FyZCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTEgMDc6MDI6MDQiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1MTEzMzI0O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6OTp7czoyOiJpZCI7czo0OiJDYXJkIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJiaF9DYXJkX2lkZW50IjtzOjU6ImNsYXNzIjtzOjEzOiJiaF9DYXJkX2lkZW50IjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvYmhfQ2FyZF9pZGVudC9iaF9DYXJkX2lkZW50LnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MTp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9iaF9jYXJkX2lkZW50X2xlYWRzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX0NhcmRfaWRlbnQiO3M6MjoidG8iO3M6MjE6Im1vZHVsZXMvYmhfQ2FyZF9pZGVudCI7fX1zOjg6Imxhbmd1YWdlIjthOjY6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9MZWFkcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkxlYWRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0xlYWRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiTGVhZHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYmhfQ2FyZF9pZGVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJiaF9DYXJkX2lkZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX0NhcmRfaWRlbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYmhfQ2FyZF9pZGVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX1zOjc6InZhcmRlZnMiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjc1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYmhfY2FyZF9pZGVudF9sZWFkc19MZWFkcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkxlYWRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjgzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYmhfY2FyZF9pZGVudF9sZWFkc19iaF9DYXJkX2lkZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO319czoxMjoibGF5b3V0ZmllbGRzIjthOjE6e2k6MDthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjE6e3M6NToiTGVhZHMiO3M6MjQ6ImJoX2NhcmRfaWRlbnRfbGVhZHNfbmFtZSI7fX19fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-11 07:02:04', 1),
('c306c712-68ea-c16d-d546-59bfc48dd7d9', 'upload/upgrades/module/marketing_directorate.zip', 'd579512e8952da911c051350aabf3c11', 'module', 'installed', '1505738738', 'marketing_directorate', '', 'marketing_directorate', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjIxOiJtYXJrZXRpbmdfZGlyZWN0b3JhdGUiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE4IDEyOjQ1OjM4IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTczODczODtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MjE6Im1hcmtldGluZ19kaXJlY3RvcmF0ZSI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyNDoiYmhfbWFya2V0aW5nX2RpcmVjdG9yYXRlIjtzOjU6ImNsYXNzIjtzOjI0OiJiaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGUiO3M6NDoicGF0aCI7czo2MToibW9kdWxlcy9iaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGUvYmhfbWFya2V0aW5nX2RpcmVjdG9yYXRlLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjU2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX21hcmtldGluZ19kaXJlY3RvcmF0ZSI7czoyOiJ0byI7czozMjoibW9kdWxlcy9iaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGUiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-18 13:06:40', 1),
('caad528f-9a44-c9af-bdd7-59bbc120f27d', 'upload/upgrades/module/Case_current_status2017_09_15_150139.zip', '62eefcd4dc1a8d9dc5fa2ec9f70a1cb8', 'module', 'installed', '1505476897', 'Case_current_status', 'текущий статус заявки', 'Case_current_status', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czo0MDoi0YLQtdC60YPRidC40Lkg0YHRgtCw0YLRg9GBINC30LDRj9Cy0LrQuCI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxOToiQ2FzZV9jdXJyZW50X3N0YXR1cyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTUgMTI6MDE6MzYiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1NDc2ODk3O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxOToiQ2FzZV9jdXJyZW50X3N0YXR1cyI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxNDoiYmhfY2FzZV9zdGF0dXMiO3M6NToiY2xhc3MiO3M6MTQ6ImJoX2Nhc2Vfc3RhdHVzIjtzOjQ6InBhdGgiO3M6NDE6Im1vZHVsZXMvYmhfY2FzZV9zdGF0dXMvYmhfY2FzZV9zdGF0dXMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYmhfY2FzZV9zdGF0dXMiO3M6MjoidG8iO3M6MjI6Im1vZHVsZXMvYmhfY2FzZV9zdGF0dXMiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-15 12:01:36', 1);
INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('cb21fc61-f71d-f5a6-d076-59bfadbe433e', 'upload/upgrades/module/marketing_response.zip', 'a41e184b0a51811a3b47efe79cae5da5', 'module', 'installed', '1505733649', 'marketing_response', '', 'marketing_response', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE4OiJtYXJrZXRpbmdfcmVzcG9uc2UiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE4IDExOjIwOjQ5IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTczMzY0OTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTg6Im1hcmtldGluZ19yZXNwb25zZSI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyMToiYmhfbWFya2V0aW5nX3Jlc3BvbnNlIjtzOjU6ImNsYXNzIjtzOjIxOiJiaF9tYXJrZXRpbmdfcmVzcG9uc2UiO3M6NDoicGF0aCI7czo1NToibW9kdWxlcy9iaF9tYXJrZXRpbmdfcmVzcG9uc2UvYmhfbWFya2V0aW5nX3Jlc3BvbnNlLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX21hcmtldGluZ19yZXNwb25zZSI7czoyOiJ0byI7czoyOToibW9kdWxlcy9iaF9tYXJrZXRpbmdfcmVzcG9uc2UiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3J1X1JVLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-18 11:26:43', 1),
('cf2f8eaa-856c-3222-1b62-59c3b2959426', 'upload/upgrades/module/place_of_work.zip', 'e23a476d557d907677be055d151b318b', 'module', 'installed', '1505997294', 'place_of_work', '', 'place_of_work', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjEzOiJwbGFjZV9vZl93b3JrIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0yMSAxMjozNDo1NCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDU5OTcyOTQ7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjEzOiJwbGFjZV9vZl93b3JrIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjU6ImNsYXNzIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjQ6InBhdGgiO3M6NDU6Im1vZHVsZXMvYmhfcGxhY2Vfb2Zfd29yay9iaF9wbGFjZV9vZl93b3JrLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3BsYWNlX29mX3dvcmsiO3M6MjoidG8iO3M6MjQ6Im1vZHVsZXMvYmhfcGxhY2Vfb2Zfd29yayI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2017-09-21 12:37:43', 1),
('d24b5cf5-325f-725b-d3b2-59bb720159b9', 'upload/upgrades/module/Product_packet_activation2017_09_15_092658.zip', 'aab0d34b1cd4b319a4267e9ae96459b1', 'module', 'installed', '1505456816', 'Product_packet_activation', 'Модуль Продукт Активация пакетов', 'Product_packet_activation', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6NjE6ItCc0L7QtNGD0LvRjCDQn9GA0L7QtNGD0LrRgiDQkNC60YLQuNCy0LDRhtC40Y8g0L/QsNC60LXRgtC+0LIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MjU6IlByb2R1Y3RfcGFja2V0X2FjdGl2YXRpb24iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTE1IDA2OjI2OjU1IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNTQ1NjgxNjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MjU6IlByb2R1Y3RfcGFja2V0X2FjdGl2YXRpb24iO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MjA6ImJoX3BhY2tldF9hY3RpdmF0aW9uIjtzOjU6ImNsYXNzIjtzOjIwOiJiaF9wYWNrZXRfYWN0aXZhdGlvbiI7czo0OiJwYXRoIjtzOjUzOiJtb2R1bGVzL2JoX3BhY2tldF9hY3RpdmF0aW9uL2JoX3BhY2tldF9hY3RpdmF0aW9uLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3BhY2tldF9hY3RpdmF0aW9uIjtzOjI6InRvIjtzOjI4OiJtb2R1bGVzL2JoX3BhY2tldF9hY3RpdmF0aW9uIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-15 06:26:55', 1),
('dd7dab2a-f422-b338-3437-59c4ad26145e', 'upload/upgrades/module/country.zip', '643694fe2ecdb113539e5b0fa40557fd', 'module', 'installed', '1506061373', 'country', '', 'country', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjk6Ik5Ib3JvYmV0cyI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjc6ImNvdW50cnkiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA5LTIyIDA2OjIyOjUzIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUwNjA2MTM3MztzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6NzoiY291bnRyeSI7czo1OiJiZWFucyI7YTozOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxMDoiYmhfY291bnRyeSI7czo1OiJjbGFzcyI7czoxMDoiYmhfY291bnRyeSI7czo0OiJwYXRoIjtzOjMzOiJtb2R1bGVzL2JoX2NvdW50cnkvYmhfY291bnRyeS5waHAiO3M6MzoidGFiIjtiOjE7fWk6MTthOjQ6e3M6NjoibW9kdWxlIjtzOjk6ImJoX3JlZ2lvbiI7czo1OiJjbGFzcyI7czo5OiJiaF9yZWdpb24iO3M6NDoicGF0aCI7czozMToibW9kdWxlcy9iaF9yZWdpb24vYmhfcmVnaW9uLnBocCI7czozOiJ0YWIiO2I6MTt9aToyO2E6NDp7czo2OiJtb2R1bGUiO3M6MTQ6ImJoX3JlZ2lvbl9hcmVhIjtzOjU6ImNsYXNzIjtzOjE0OiJiaF9yZWdpb25fYXJlYSI7czo0OiJwYXRoIjtzOjQxOiJtb2R1bGVzL2JoX3JlZ2lvbl9hcmVhL2JoX3JlZ2lvbl9hcmVhLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX2NvdW50cnkiO3M6MjoidG8iO3M6MTg6Im1vZHVsZXMvYmhfY291bnRyeSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9yZWdpb24iO3M6MjoidG8iO3M6MTc6Im1vZHVsZXMvYmhfcmVnaW9uIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX3JlZ2lvbl9hcmVhIjtzOjI6InRvIjtzOjIyOiJtb2R1bGVzL2JoX3JlZ2lvbl9hcmVhIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-22 06:29:04', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$AB5.Jy4.$8YFSVKwAOkp9s3KqH8rAI.', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2017-08-21 05:56:19', '2017-09-29 11:27:16', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('eff07114-603c-c0d2-0e5e-599bcd264773', 'test', '$1$PT5.s75.$eYixAm5NMYlJSRLR41SCc.', 0, '2017-08-22 06:20:00', NULL, 1, NULL, 'test', 0, 0, 1, NULL, '2017-08-22 06:20:35', '2017-09-01 11:19:13', 'eff07114-603c-c0d2-0e5e-599bcd264773', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_cstm`
--

CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_outbound_c` tinyint(1) DEFAULT '0',
  `asterisk_inbound_c` tinyint(1) DEFAULT '0',
  `asterisk_ext_c` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_cstm`
--

INSERT INTO `users_cstm` (`id_c`, `asterisk_outbound_c`, `asterisk_inbound_c`, `asterisk_ext_c`) VALUES
('1', 1, 1, '7008'),
('eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('12102f99-a4b6-e4d0-56b2-59a3c4d39e77', 'FP_Event_Locations2_FP_EVENT_LOCATIONS', 0, '2017-08-28 07:23:30', '2017-08-28 07:23:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('143e42ef-ff91-ec88-f846-59b6879fdd87', 'bh_scripts2_BH_SCRIPTS', 0, '2017-09-11 12:54:03', '2017-09-11 12:54:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('14be1c2f-3a86-47f3-553d-59ca68cc1a50', 'Home2_CASE', 0, '2017-09-26 14:45:37', '2017-09-26 14:45:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('15a32647-45a7-2db9-14c7-599a905d3445', 'Employees2_EMPLOYEE', 0, '2017-08-21 07:50:29', '2017-08-21 07:50:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1851948a-f0ac-d967-f59e-59c24b462d38', 'Prospects2_PROSPECT', 0, '2017-09-20 11:06:51', '2017-09-20 11:06:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1a96b380-49a9-0583-f436-59b7cb12f497', 'bh_Scripts_employee_comment2_BH_SCRIPTS_EMPLOYEE_C', 0, '2017-09-12 11:57:42', '2017-09-12 11:57:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1d629894-5fd1-19aa-aebf-59b00907fd0d', 'Calls2_CALL', 0, '2017-09-06 14:42:04', '2017-09-06 14:42:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e7c9dac-0fe1-f1c5-ab34-59b25199c2cf', 'Cases2_CASE', 0, '2017-09-08 08:15:24', '2017-09-08 08:15:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1ec182c9-33e2-793b-f47d-59ca68a2a270', 'Home2_CONTACT', 0, '2017-09-26 14:45:37', '2017-09-26 14:45:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2123e57a-72f9-35e4-a584-59bfada4b5e7', 'bh_marketing_response2_BH_MARKETING_RESPONSE', 0, '2017-09-18 11:27:18', '2017-09-18 11:27:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2255043e-cc46-fd36-4b47-59c9f8559574', 'bh_communicators2_BH_COMMUNICATORS', 0, '2017-09-26 06:50:47', '2017-09-26 06:50:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('24f47178-83a4-b67f-91e6-59ca6886aee1', 'Home2_DOCUMENT', 0, '2017-09-26 14:45:37', '2017-09-26 14:45:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('274215ac-b479-3697-947d-599bcd97aace', 'global', 0, '2017-08-22 06:20:35', '2017-09-01 13:49:44', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YTo0MTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjQ6IjM2MDAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjI1OGM5MTRkLTU3MTUtMjFiOC1kOTE0LTU5OWJjZDA0MDg2NiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi0JLRgdC1IjtzOjY6IkxlYWRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6Ik1lZXRpbmdzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('2aad47b7-d3ba-e710-83ad-59c24d0fa37b', 'bh_lead_adress2_BH_LEAD_ADRESS', 0, '2017-09-20 11:12:24', '2017-09-20 11:12:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2aea5c5b-1c34-6bdd-187c-59ca68fca858', 'Home2_NOTE', 0, '2017-09-26 14:45:37', '2017-09-26 14:45:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2eb19d23-8a8f-fc39-4999-59d1e3530f5f', 'ProspectLists2_PROSPECTLIST', 0, '2017-10-02 06:59:56', '2017-10-02 06:59:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('32f577d3-0658-e850-8f13-59b253b52d38', 'Opportunities2_OPPORTUNITY', 0, '2017-09-08 08:21:47', '2017-09-08 08:21:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('33c6d392-9c63-2ab0-8680-59bb7331c4d6', 'bh_packet_activation2_BH_PACKET_ACTIVATION', 0, '2017-09-15 06:29:48', '2017-09-15 06:29:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('399c2e36-7736-b1de-def0-599bcdbf7855', 'Home', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImYyMjliYjA0LWJlYmQtMmRiYy0xMmRmLTU5OWJjZDc5MDkxNCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImYzZGYzNWVmLTA2NzItYjMwYy0zZjYyLTU5OWJjZDIxOWU5NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE3MGMwZTM3LWNjNGYtNzA5MC00MDIwLTU5OWJjZDRiMDVkMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJhOTQwOGM5LTVkMzUtMzMxZi1kNTJhLTU5OWJjZDRlNzQyMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNDlkNDBjMTQtZmFmNC05MmM5LTFmMjctNTk5YmNkNzdkNzM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmNmZDA1MmItNTJhNi0wMGVjLTM2NTUtNTk5YmNkYjcxNmE4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJmM2RmMzVlZi0wNjcyLWIzMGMtM2Y2Mi01OTliY2QyMTllOTciO2k6MTtzOjM2OiIxNzBjMGUzNy1jYzRmLTcwOTAtNDAyMC01OTliY2Q0YjA1ZDEiO2k6MjtzOjM2OiIyYTk0MDhjOS01ZDM1LTMzMWYtZDUyYS01OTliY2Q0ZTc0MjAiO2k6MztzOjM2OiI0OWQ0MGMxNC1mYWY0LTkyYzktMWYyNy01OTliY2Q3N2Q3MzkiO2k6NDtzOjM2OiI2Y2ZkMDUyYi01MmE2LTAwZWMtMzY1NS01OTliY2RiNzE2YTgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImYyMjliYjA0LWJlYmQtMmRiYy0xMmRmLTU5OWJjZDc5MDkxNCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('3b20885d-4663-84e4-cbe0-59b93ffe65a9', 'bh_Scripts_employee_comment2_BH_SCRIPTS_EMPLOYEE_C', 0, '2017-09-13 14:22:24', '2017-09-13 14:22:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4250a6bc-f383-79ab-299c-59bbc129c8a5', 'bh_case_compound2_BH_CASE_COMPOUND', 0, '2017-09-15 12:04:38', '2017-09-15 12:04:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4bca7d68-abe4-1a2c-e9f5-599a7623e0a7', 'Home', 0, '2017-08-21 05:58:05', '2017-09-12 12:49:16', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjYzMzc0MTI5LTlmN2YtYzhjNS1mYzc0LTU5OWE3Njg4NzM1OCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjY0MzE0ODM5LTExNGEtNzI1NC0zZDAxLTU5OWE3NmZmMDYyOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY1NjljODgzLTU2NzMtODkzOS05MjFhLTU5OWE3NjU4ZmUyZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY2MjU0YmQ5LTg3OTQtNWFhYi04NGM4LTU5OWE3Njg4ZjZhMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjc1ZGRmY2YtMTgzYy04ODg2LTQzNzktNTk5YTc2OWMyOTEwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjg1N2RkMjktOWQ5NC1mMjVlLWUxOTktNTk5YTc2NDEyZmNhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI2NDMxNDgzOS0xMTRhLTcyNTQtM2QwMS01OTlhNzZmZjA2MjkiO2k6MTtzOjM2OiI2NTY5Yzg4My01NjczLTg5MzktOTIxYS01OTlhNzY1OGZlMmQiO2k6MjtzOjM2OiI2NjI1NGJkOS04Nzk0LTVhYWItODRjOC01OTlhNzY4OGY2YTIiO2k6MztzOjM2OiI2NzVkZGZjZi0xODNjLTg4ODYtNDM3OS01OTlhNzY5YzI5MTAiO2k6NDtzOjM2OiI2ODU3ZGQyOS05ZDk0LWYyNWUtZTE5OS01OTlhNzY0MTJmY2EiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjYzMzc0MTI5LTlmN2YtYzhjNS1mYzc0LTU5OWE3Njg4NzM1OCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('4c0e3cb3-192c-1b2d-0688-59c4b9ce421d', 'bh_region2_BH_REGION', 0, '2017-09-22 07:17:19', '2017-09-22 07:17:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('51369be7-1b64-2804-26d9-59b6362ee50f', 'bh_Card_ident2_BH_CARD_IDENT', 0, '2017-09-11 07:06:54', '2017-09-11 07:06:54', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('52621554-6b57-5f75-f8c6-599a76bbb811', 'Home2_CALL', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('53b80617-9c84-8f5a-e800-59b7a3e43fcc', 'bh_Realty2_BH_REALTY', 0, '2017-09-12 09:06:46', '2017-09-12 09:06:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('53ffa086-2683-c777-9e8f-59bbc141b977', 'bh_case_status2_BH_CASE_STATUS', 0, '2017-09-15 12:04:22', '2017-09-15 12:04:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('54b60449-ae7a-0239-d6d0-599bcdd98d52', 'Home2_CALL', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5566f6bb-697b-5ec4-88cc-59a54cbcd604', 'Accounts2_ACCOUNT', 0, '2017-08-29 11:15:42', '2017-08-29 11:15:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('566b00bf-5a6c-8fec-a372-599a769e86e9', 'Home2_LEAD_6857dd29-9d94-f25e-e199-599a76412fca', 0, '2017-08-21 05:58:15', '2017-08-21 05:58:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('57b9df6f-5001-8548-e2db-59b785c0d686', 'bh_faq_history2_BH_FAQ_HISTORY', 0, '2017-09-12 06:57:47', '2017-09-12 06:57:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('587ca3ee-6256-9407-92e8-599a76aa1313', 'Home2_MEETING', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5e9747d5-422e-eac2-0f01-599a76fb08fb', 'Home2_OPPORTUNITY', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ee3fbe1-7178-abe7-ebe6-59c4b1ae6098', 'bh_country2_BH_COUNTRY', 0, '2017-09-22 06:46:00', '2017-09-22 06:46:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('64f05e4a-0021-eaac-a641-599a7674ae0d', 'Home2_ACCOUNT', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('67445580-7004-100d-6b58-599bcd9b59b6', 'Home2_MEETING', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('677bd1f7-ab5a-f991-7f79-59bb6f3e7c04', 'bh_Scripts_leadership_recommend2_BH_SCRIPTS_LEADER', 0, '2017-09-15 06:14:35', '2017-09-15 06:14:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6b497872-51bc-fe5e-7f85-599a769e3089', 'Home2_LEAD', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6f9ca6df-2b04-8fd8-d1ff-59ba1f7d5c0f', 'AOS_PDF_Templates2_AOS_PDF_TEMPLATES', 0, '2017-09-14 06:18:29', '2017-09-14 06:18:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('716405a0-91c3-85ef-5d1c-599a76e785ba', 'Home2_SUGARFEED', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('71bea1f5-d874-26b5-7427-59ba8e1b70f2', 'bh_cases_log2_BH_CASES_LOG', 0, '2017-09-14 14:13:30', '2017-09-14 14:13:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7642d31f-7430-b922-981d-59a920183c1d', 'AOS_Contracts2_AOS_CONTRACTS', 0, '2017-09-01 08:54:20', '2017-09-01 08:54:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77de9298-1495-2aa4-d2b4-599bcdc6fa70', 'Home2_OPPORTUNITY', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77f59a85-9eb6-3754-2df6-599a76f20cc4', 'ETag', 0, '2017-08-21 05:56:19', '2017-10-03 11:02:04', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MzI7fQ=='),
('79335e62-ef56-af6c-d47b-59d36f3c2ef4', 'bh_campaine_products2_BH_CAMPAINE_PRODUCTS', 0, '2017-10-03 11:07:04', '2017-10-03 11:07:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7eb498f3-56e4-07f5-c062-599bcd1ec47a', 'Home2_ACCOUNT', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('812ffdb4-e959-2e32-8dfa-59b8d6b4b4fb', 'bh_org_trade_points2_BH_ORG_TRADE_POINTS', 0, '2017-09-13 06:53:56', '2017-09-13 06:53:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('87a34272-d196-109f-d44e-59b7e5e87298', 'bh_providers2_BH_PROVIDERS', 0, '2017-09-12 13:46:52', '2017-09-12 13:46:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('88a22ad3-f8ac-6757-ced2-59d492260361', 'AOS_Products', 0, '2017-10-04 07:51:08', '2017-10-04 07:51:08', '1', 'YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToyOntpOjA7czozMjoiYmhfZm9ybWVkX3BhY2tldHNfYW9zX3Byb2R1Y3RzXzEiO2k6MTtzOjIyOiJhb3NfcHJvZHVjdHNfcHVyY2hhc2VzIjt9fQ=='),
('8a10b393-2fb1-83fd-8241-599bcd31547f', 'ETag', 0, '2017-08-22 06:21:35', '2017-09-01 11:19:13', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('8a6cd013-327b-0d24-141e-599bcd091b58', 'Home2_LEAD', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8d9ee9a9-a04c-40a1-4d31-59bfc29dfd6e', 'bh_marketing_directorate2_BH_MARKETING_DIRECTORATE', 0, '2017-09-18 12:55:21', '2017-09-18 12:55:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8e04a0eb-bb99-79d8-9067-599bc9db9527', 'ACLRoles2_ACLROLE', 0, '2017-08-22 06:06:26', '2017-08-22 06:06:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8f677909-a6e0-a85b-ae75-599a76b6a8e1', 'global', 0, '2017-08-21 05:56:19', '2017-10-05 07:41:49', '1', 'YTo4ODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjhlZWE2NmQ1LTI2ZjItYWZkNS0wZTZhLTU5OWE3Njk3YmU5YSI7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL01vc2NvdyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjoidXQiO3M6MToiMSI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo2OiLQktGB0LUiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiTWVldGluZ3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6NDp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxOToiRlBfRXZlbnRfTG9jYXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjEzOiJBT1dfV29ya0Zsb3dRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkRvY3VtZW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJDb250YWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiQU9TX0NvbnRyYWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czo2OiJDYWxsc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjIzOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE0OiJiaF9DYXJkX2lkZW50USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJiaF9zY3JpcHRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjc6ImJoX2ZhcVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNToiYmhfZmFxX2hpc3RvcnlRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6ImJoX1JlYWx0eVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoyMjoiYmhfc2NyX3N0YXR1c19oaXN0b3J5USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjI1OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2VRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6Mjg6ImJoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiYmhfcHJvdmlkZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjIwOiJiaF9vcmdfdHJhZGVfcG9pbnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE3OiJiaF9BdXRvdHJhbnNwb3J0USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE3OiJiaF9vcmdhbml6YXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjc6ImJoX29yZ1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxODoiQU9TX1BERl9UZW1wbGF0ZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVGFza3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6ImJoX2Nhc2VzX2xvZ1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czozMjoiYmhfU2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoyMToiYmhfcGFja2V0X2FjdGl2YXRpb25RIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTg6ImJoX2Zvcm1lZF9wYWNrZXRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJiaF9jYXNlX3N0YXR1c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNzoiYmhfY2FzZV9jb21wb3VuZFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiQ2FtcGFpZ25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIxOiJiaF9tYXJrZXRpbmdfY29tcGFueVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiUHJvc3BlY3RMaXN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMjoidXNlclByaXZHdWlkIjtzOjM2OiJmM2NkODQ3YS0zOWQyLWNkY2UtOGFkNi01OWQxZmY3ZmIyNjEiO3M6MzQ6IkluYm91bmRFbWFpbF9JbmJvdW5kRW1haWxfT1JERVJfQlkiO3M6MTI6ImRhdGVfZW50ZXJlZCI7czoyMjoiT3V0Ym91bmRFbWFpbEFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjI1OiJiaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGVRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6Mjk6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnlRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MjI6ImJoX21hcmtldGluZ19yZXNwb25zZVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxOToiYmhfY2hhbm5lbHNfaW1wYWN0USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIxOiJiaF9jYW1wYWluZV9wcm9kdWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9fQ=='),
('90a60257-117a-3f9d-42f2-59b782381033', 'bh_faq2_BH_FAQ', 0, '2017-09-12 06:43:05', '2017-09-12 06:43:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('91046455-4674-7236-9993-599bcdc33c37', 'Home2_SUGARFEED', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('928cfd60-57a1-05fd-5a68-59d341ab1b7c', 'OutboundEmailAccounts2_OUTBOUNDEMAILACCOUNTS', 0, '2017-10-03 07:52:22', '2017-10-03 07:52:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('98960b24-77c2-dd7e-35c3-59c4db33a12a', 'bh_passports2_BH_PASSPORTS', 0, '2017-09-22 09:45:14', '2017-09-22 09:45:14', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9eb56d46-cdad-0bc0-3ecf-59bb7743b890', 'bh_formed_packets2_BH_FORMED_PACKETS', 0, '2017-09-15 06:46:06', '2017-09-15 06:46:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a81c942b-6db7-210b-4a04-59b2555f988a', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2017-09-08 08:31:25', '2017-09-08 08:31:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ad6acce3-06f6-093d-8bc3-599bcd5120ba', 'Home2_LEAD_6cfd052b-52a6-00ec-3655-599bcdb716a8', 0, '2017-08-22 06:21:49', '2017-08-22 06:21:49', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b3877a97-eb47-c174-4d79-59c8f9d08671', 'bh_phones2_BH_PHONES', 0, '2017-09-25 12:40:35', '2017-09-25 12:40:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b71b0c3b-6157-f821-7689-59ca681bbd91', 'search', 0, '2017-09-26 14:45:37', '2017-09-28 09:48:52', '1', 'YToyOntzOjEyOiJnbG9iYWxTZWFyY2giO2E6MTp7czo1OiJMZWFkcyI7czo0OiJMZWFkIjt9czo5OiJzaG93R1NEaXYiO3M6Mjoibm8iO30='),
('b9c00a1a-ecf4-8506-22f3-59a6790a74c4', 'Leads', 0, '2017-08-30 08:38:46', '2017-08-30 08:38:46', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('b9f50e83-147a-a4c0-3e22-59ba96af03e5', 'Cases', 0, '2017-09-14 14:45:14', '2017-09-14 14:45:14', '1', 'YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YTo4OntpOjA7czoyMDoiY2FzZXNfYmhfY2FzZXNfbG9nXzEiO2k6MTtzOjEwOiJhY3Rpdml0aWVzIjtpOjI7czo3OiJoaXN0b3J5IjtpOjM7czo5OiJkb2N1bWVudHMiO2k6NDtzOjg6ImNvbnRhY3RzIjtpOjU7czo0OiJidWdzIjtpOjY7czo3OiJwcm9qZWN0IjtpOjc7czoxNDoic2VjdXJpdHlncm91cHMiO319'),
('bc96c828-64c6-aaab-9ce9-59bf70d08486', 'Campaigns2_CAMPAIGN', 0, '2017-09-18 07:04:50', '2017-09-18 07:04:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c092025f-e214-8d6e-bcff-59b2533b8bed', 'AOS_Products2_AOS_PRODUCTS', 0, '2017-09-08 08:24:11', '2017-09-08 08:24:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c91ece35-e604-6164-afa9-599ae16f2f93', 'SecurityGroups2_SECURITYGROUP', 0, '2017-08-21 13:33:58', '2017-08-21 13:33:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc5b3bbb-03f4-b913-b1fb-599a888eed95', 'Users2_USER', 0, '2017-08-21 07:16:43', '2017-08-21 07:16:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc5b6d23-75ee-dfcc-073c-59a50d549a62', 'AOW_WorkFlow2_AOW_WORKFLOW', 0, '2017-08-29 06:45:03', '2017-08-29 06:45:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d6f23750-baf6-0d42-e513-599a795b7eee', 'Leads2_LEAD', 0, '2017-08-21 06:09:57', '2017-08-30 08:38:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('d87be567-df20-292f-19b5-59bf9fa4fc91', 'bh_marketing_company_history2_BH_MARKETING_COMPANY', 0, '2017-09-18 10:26:47', '2017-09-18 10:26:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dc0f7246-0448-b2f1-b4d1-59c4b893d02a', 'bh_region_area2_BH_REGION_AREA', 0, '2017-09-22 07:17:06', '2017-09-22 07:17:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e0e0c295-1309-7603-9604-59d363b97a97', 'bh_channels_impact2_BH_CHANNELS_IMPACT', 0, '2017-10-03 10:17:06', '2017-10-03 10:17:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e1eb8043-7dea-ad5a-91ae-59a50fdee4fa', 'Documents2_DOCUMENT', 0, '2017-08-29 06:54:56', '2017-08-29 06:54:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e21a3e52-e2a0-0508-93da-59d35046b224', 'bh_marketing_company_history2_BH_MARKETING_COMPANY', 0, '2017-10-03 08:53:14', '2017-10-03 08:53:14', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e325547d-46f5-c535-3675-59b8f41efea6', 'bh_organizations2_BH_ORGANIZATIONS', 0, '2017-09-13 09:02:34', '2017-09-13 09:02:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e375a2c2-117c-b4a4-2503-59b7bf1f252e', 'bh_scr_status_history2_BH_SCR_STATUS_HISTORY', 0, '2017-09-12 11:06:19', '2017-09-12 11:06:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e44fec8b-1a32-bcd4-ecd8-59b9201e4f13', 'bh_org2_BH_ORG', 0, '2017-09-13 12:09:51', '2017-09-13 12:09:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eb4e0cde-d43b-6b8c-58ee-59a7bd1125b2', 'Contacts2_CONTACT', 0, '2017-08-31 07:40:47', '2017-08-31 07:40:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eee537f2-d9c4-a176-e436-59bf88614d80', 'bh_marketing_company2_BH_MARKETING_COMPANY', 0, '2017-09-18 08:49:26', '2017-09-18 08:49:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ef8723a6-e2ee-88f2-8cd2-59b8f2f58139', 'bh_Autotransport2_BH_AUTOTRANSPORT', 0, '2017-09-13 08:53:25', '2017-09-13 08:53:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f39ca709-0804-d8ef-9c08-59b7c44b144c', 'bh_script_param_response2_BH_SCRIPT_PARAM_RESPONSE', 0, '2017-09-12 11:28:13', '2017-09-12 11:28:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f41f35d2-195a-ebad-6f67-599bcd9674ea', 'Leads2_LEAD', 0, '2017-08-22 06:21:57', '2017-08-22 06:21:57', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Структура таблицы `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('9357b8ab-0066-7d89-c2c3-59cd0d7eccde', 0, '2017-09-28 14:57:14', '2017-09-29 09:52:35', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Administrator:VFREEBUSY\r\nDTSTART:2017-09-28 00:00:00\r\nDTEND:2017-11-28 00:00:00\r\nFREEBUSY:20170929T094900Z/20170929T094900Z\r\nX-FREEBUSY-ID:1f3b8873-7596-7b37-21f9-59ce17272da3\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T095000Z/20170929T095000Z\r\nX-FREEBUSY-ID:2aea5731-6378-7b1a-e6a8-59ce176f5afb\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T095200Z/20170929T095200Z\r\nX-FREEBUSY-ID:564eb885-659c-5155-d16a-59ce1784e11c\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170928T145700Z/20170928T145700Z\r\nX-FREEBUSY-ID:564eb49f-24c7-1e2c-75d5-59cd0dca7699\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T095200Z/20170929T095200Z\r\nX-FREEBUSY-ID:5c81afb3-471c-665c-3793-59ce17c956d5\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170928T150300Z/20170928T150300Z\r\nX-FREEBUSY-ID:6277809a-8dc1-7a35-b33f-59cd0f0d6664\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T063800Z/20170929T063800Z\r\nX-FREEBUSY-ID:8bb694d0-8f0e-c822-3843-59cdead820d8\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170928T150500Z/20170928T150500Z\r\nX-FREEBUSY-ID:a79bbed5-0d30-451c-8a03-59cd0f873a4e\r\nX-FREEBUSY-TYPE:Call\r\nDTSTAMP:2017-09-29 09:52:35\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Индексы таблицы `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Индексы таблицы `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Индексы таблицы `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Индексы таблицы `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Индексы таблицы `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Индексы таблицы `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Индексы таблицы `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Индексы таблицы `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Индексы таблицы `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Индексы таблицы `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Индексы таблицы `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Индексы таблицы `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Индексы таблицы `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Индексы таблицы `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Индексы таблицы `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Индексы таблицы `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Индексы таблицы `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Индексы таблицы `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Индексы таблицы `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Индексы таблицы `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Индексы таблицы `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Индексы таблицы `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Индексы таблицы `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Индексы таблицы `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Индексы таблицы `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Индексы таблицы `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Индексы таблицы `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Индексы таблицы `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Индексы таблицы `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_products_bh_case_compound_1_c`
--
ALTER TABLE `aos_products_bh_case_compound_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_products_bh_case_compound_1_ida1` (`aos_products_bh_case_compound_1aos_products_ida`),
  ADD KEY `aos_products_bh_case_compound_1_alt` (`aos_products_bh_case_compound_1bh_case_compound_idb`);

--
-- Индексы таблицы `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Индексы таблицы `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Индексы таблицы `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Индексы таблицы `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Индексы таблицы `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Индексы таблицы `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Индексы таблицы `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Индексы таблицы `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Индексы таблицы `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Индексы таблицы `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Индексы таблицы `asterisk_log`
--
ALTER TABLE `asterisk_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_extension` (`user_extension`),
  ADD KEY `call_record_id` (`call_record_id`),
  ADD KEY `uistate` (`uistate`),
  ADD KEY `timestamp_call` (`timestamp_call`);

--
-- Индексы таблицы `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_autotransport`
--
ALTER TABLE `bh_autotransport`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_autotransport_audit`
--
ALTER TABLE `bh_autotransport_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_autotransport_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_campaine_products`
--
ALTER TABLE `bh_campaine_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_campaine_products_aos_products_1_c`
--
ALTER TABLE `bh_campaine_products_aos_products_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_campaine_products_aos_products_1_alt` (`bh_campaine_products_aos_products_1bh_campaine_products_ida`,`bh_campaine_products_aos_products_1aos_products_idb`);

--
-- Индексы таблицы `bh_campaine_products_audit`
--
ALTER TABLE `bh_campaine_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_campaine_products_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_card_ident`
--
ALTER TABLE `bh_card_ident`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_card_ident_audit`
--
ALTER TABLE `bh_card_ident_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_card_ident_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_card_ident_leads_c`
--
ALTER TABLE `bh_card_ident_leads_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_card_ident_leads_ida1` (`bh_card_ident_leadsbh_card_ident_ida`),
  ADD KEY `bh_card_ident_leads_idb2` (`bh_card_ident_leadsleads_idb`);

--
-- Индексы таблицы `bh_cases_log`
--
ALTER TABLE `bh_cases_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_cases_log_audit`
--
ALTER TABLE `bh_cases_log_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_cases_log_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_case_compound`
--
ALTER TABLE `bh_case_compound`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_case_compound_audit`
--
ALTER TABLE `bh_case_compound_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_case_compound_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_case_status`
--
ALTER TABLE `bh_case_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_case_status_audit`
--
ALTER TABLE `bh_case_status_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_case_status_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_category_at_work`
--
ALTER TABLE `bh_category_at_work`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_category_at_work_audit`
--
ALTER TABLE `bh_category_at_work_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_category_at_work_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_category_at_work_bh_place_of_work_1_c`
--
ALTER TABLE `bh_category_at_work_bh_place_of_work_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_category_at_work_bh_place_of_work_1_ida1` (`bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida`),
  ADD KEY `bh_category_at_work_bh_place_of_work_1_alt` (`bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb`);

--
-- Индексы таблицы `bh_channels_impact`
--
ALTER TABLE `bh_channels_impact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_channels_impact_audit`
--
ALTER TABLE `bh_channels_impact_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_channels_impact_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_communicators`
--
ALTER TABLE `bh_communicators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_communicators_audit`
--
ALTER TABLE `bh_communicators_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_communicators_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_communicators_cstm`
--
ALTER TABLE `bh_communicators_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `bh_contact_person`
--
ALTER TABLE `bh_contact_person`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_contact_person_audit`
--
ALTER TABLE `bh_contact_person_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_contact_person_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_country`
--
ALTER TABLE `bh_country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_country_audit`
--
ALTER TABLE `bh_country_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_country_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_country_bh_region_1_c`
--
ALTER TABLE `bh_country_bh_region_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_country_bh_region_1_ida1` (`bh_country_bh_region_1bh_country_ida`),
  ADD KEY `bh_country_bh_region_1_alt` (`bh_country_bh_region_1bh_region_idb`);

--
-- Индексы таблицы `bh_faq`
--
ALTER TABLE `bh_faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_faq_audit`
--
ALTER TABLE `bh_faq_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_faq_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_faq_history`
--
ALTER TABLE `bh_faq_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_faq_history_audit`
--
ALTER TABLE `bh_faq_history_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_faq_history_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_faq_history_bh_faq_c`
--
ALTER TABLE `bh_faq_history_bh_faq_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_faq_history_bh_faq_ida1` (`bh_faq_history_bh_faqbh_faq_ida`),
  ADD KEY `bh_faq_history_bh_faq_alt` (`bh_faq_history_bh_faqbh_faq_history_idb`);

--
-- Индексы таблицы `bh_formed_packets`
--
ALTER TABLE `bh_formed_packets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_formed_packets_aos_products_1_c`
--
ALTER TABLE `bh_formed_packets_aos_products_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_formed_packets_aos_products_1_alt` (`bh_formed_packets_aos_products_1bh_formed_packets_ida`,`bh_formed_packets_aos_products_1aos_products_idb`);

--
-- Индексы таблицы `bh_formed_packets_audit`
--
ALTER TABLE `bh_formed_packets_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_formed_packets_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_formed_packets_bh_packet_activation_1_c`
--
ALTER TABLE `bh_formed_packets_bh_packet_activation_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_formed_packets_bh_packet_activation_1_ida1` (`bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida`),
  ADD KEY `bh_formed_packets_bh_packet_activation_1_alt` (`bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb`);

--
-- Индексы таблицы `bh_lead_adress`
--
ALTER TABLE `bh_lead_adress`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_lead_adress_audit`
--
ALTER TABLE `bh_lead_adress_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_lead_adress_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_lead_adress_bh_country_1_c`
--
ALTER TABLE `bh_lead_adress_bh_country_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_lead_adress_bh_country_1_ida1` (`bh_lead_adress_bh_country_1bh_lead_adress_ida`),
  ADD KEY `bh_lead_adress_bh_country_1_idb2` (`bh_lead_adress_bh_country_1bh_country_idb`);

--
-- Индексы таблицы `bh_lead_adress_bh_locality_1_c`
--
ALTER TABLE `bh_lead_adress_bh_locality_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_lead_adress_bh_locality_1_ida1` (`bh_lead_adress_bh_locality_1bh_lead_adress_ida`),
  ADD KEY `bh_lead_adress_bh_locality_1_idb2` (`bh_lead_adress_bh_locality_1bh_locality_idb`);

--
-- Индексы таблицы `bh_lead_adress_bh_region_1_c`
--
ALTER TABLE `bh_lead_adress_bh_region_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_lead_adress_bh_region_1_ida1` (`bh_lead_adress_bh_region_1bh_lead_adress_ida`),
  ADD KEY `bh_lead_adress_bh_region_1_idb2` (`bh_lead_adress_bh_region_1bh_region_idb`);

--
-- Индексы таблицы `bh_lead_adress_bh_region_area_1_c`
--
ALTER TABLE `bh_lead_adress_bh_region_area_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_lead_adress_bh_region_area_1_ida1` (`bh_lead_adress_bh_region_area_1bh_lead_adress_ida`),
  ADD KEY `bh_lead_adress_bh_region_area_1_idb2` (`bh_lead_adress_bh_region_area_1bh_region_area_idb`);

--
-- Индексы таблицы `bh_locality`
--
ALTER TABLE `bh_locality`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_locality_audit`
--
ALTER TABLE `bh_locality_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_locality_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_marketing_company`
--
ALTER TABLE `bh_marketing_company`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_marketing_company_audit`
--
ALTER TABLE `bh_marketing_company_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_marketing_company_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_marketing_company_bh_campaine_products_1_c`
--
ALTER TABLE `bh_marketing_company_bh_campaine_products_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_marketing_company_bh_campaine_products_1_ida1` (`bh_marketi9abccompany_ida`),
  ADD KEY `bh_marketing_company_bh_campaine_products_1_alt` (`bh_marketi9283roducts_idb`);

--
-- Индексы таблицы `bh_marketing_company_bh_channels_impact_1_c`
--
ALTER TABLE `bh_marketing_company_bh_channels_impact_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_marketing_company_bh_channels_impact_1_ida1` (`bh_marketid0c7company_ida`),
  ADD KEY `bh_marketing_company_bh_channels_impact_1_alt` (`bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb`);

--
-- Индексы таблицы `bh_marketing_company_bh_marketing_company_history_1_c`
--
ALTER TABLE `bh_marketing_company_bh_marketing_company_history_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_marketing_company_bh_marketing_company_history_1_ida1` (`bh_marketi1e9fcompany_ida`),
  ADD KEY `bh_marketing_company_bh_marketing_company_history_1_alt` (`bh_marketid398history_idb`);

--
-- Индексы таблицы `bh_marketing_company_bh_marketing_directorate_1_c`
--
ALTER TABLE `bh_marketing_company_bh_marketing_directorate_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_marketing_company_bh_marketing_directorate_1_ida1` (`bh_marketia9b6company_ida`),
  ADD KEY `bh_marketing_company_bh_marketing_directorate_1_alt` (`bh_marketi618ectorate_idb`);

--
-- Индексы таблицы `bh_marketing_company_bh_marketing_response_1_c`
--
ALTER TABLE `bh_marketing_company_bh_marketing_response_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_marketing_company_bh_marketing_response_1_ida1` (`bh_marketi8c3ecompany_ida`),
  ADD KEY `bh_marketing_company_bh_marketing_response_1_alt` (`bh_marketi8b4desponse_idb`);

--
-- Индексы таблицы `bh_marketing_company_history`
--
ALTER TABLE `bh_marketing_company_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_marketing_company_history_audit`
--
ALTER TABLE `bh_marketing_company_history_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_marketing_company_history_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_marketing_directorate`
--
ALTER TABLE `bh_marketing_directorate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_marketing_directorate_audit`
--
ALTER TABLE `bh_marketing_directorate_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_marketing_directorate_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_marketing_directorate_leads_1_c`
--
ALTER TABLE `bh_marketing_directorate_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_marketing_directorate_leads_1_alt` (`bh_marketing_directorate_leads_1bh_marketing_directorate_ida`,`bh_marketing_directorate_leads_1leads_idb`);

--
-- Индексы таблицы `bh_marketing_response`
--
ALTER TABLE `bh_marketing_response`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_marketing_response_audit`
--
ALTER TABLE `bh_marketing_response_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_marketing_response_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_org`
--
ALTER TABLE `bh_org`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_org_audit`
--
ALTER TABLE `bh_org_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_org_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_org_bh_place_of_work_1_c`
--
ALTER TABLE `bh_org_bh_place_of_work_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_org_bh_place_of_work_1_ida1` (`bh_org_bh_place_of_work_1bh_org_ida`),
  ADD KEY `bh_org_bh_place_of_work_1_alt` (`bh_org_bh_place_of_work_1bh_place_of_work_idb`);

--
-- Индексы таблицы `bh_org_trade_points`
--
ALTER TABLE `bh_org_trade_points`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_org_trade_points_audit`
--
ALTER TABLE `bh_org_trade_points_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_org_trade_points_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_packet_activation`
--
ALTER TABLE `bh_packet_activation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_packet_activation_audit`
--
ALTER TABLE `bh_packet_activation_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_packet_activation_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_passports`
--
ALTER TABLE `bh_passports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_passports_audit`
--
ALTER TABLE `bh_passports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_passports_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_passports_bh_country_1_c`
--
ALTER TABLE `bh_passports_bh_country_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_passports_bh_country_1_ida1` (`bh_passports_bh_country_1bh_passports_ida`),
  ADD KEY `bh_passports_bh_country_1_idb2` (`bh_passports_bh_country_1bh_country_idb`);

--
-- Индексы таблицы `bh_phones`
--
ALTER TABLE `bh_phones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_phones_audit`
--
ALTER TABLE `bh_phones_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_phones_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_place_of_work`
--
ALTER TABLE `bh_place_of_work`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_place_of_work_audit`
--
ALTER TABLE `bh_place_of_work_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_place_of_work_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_position_at_work`
--
ALTER TABLE `bh_position_at_work`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_position_at_work_audit`
--
ALTER TABLE `bh_position_at_work_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_position_at_work_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_position_at_work_bh_place_of_work_1_c`
--
ALTER TABLE `bh_position_at_work_bh_place_of_work_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_position_at_work_bh_place_of_work_1_ida1` (`bh_position_at_work_bh_place_of_work_1bh_position_at_work_ida`),
  ADD KEY `bh_position_at_work_bh_place_of_work_1_alt` (`bh_position_at_work_bh_place_of_work_1bh_place_of_work_idb`);

--
-- Индексы таблицы `bh_providers`
--
ALTER TABLE `bh_providers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_providers_aos_contracts_1_c`
--
ALTER TABLE `bh_providers_aos_contracts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_providers_aos_contracts_1_ida1` (`bh_providers_aos_contracts_1bh_providers_ida`),
  ADD KEY `bh_providers_aos_contracts_1_alt` (`bh_providers_aos_contracts_1aos_contracts_idb`);

--
-- Индексы таблицы `bh_providers_aos_contracts_2_c`
--
ALTER TABLE `bh_providers_aos_contracts_2_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_providers_aos_contracts_2_ida1` (`bh_providers_aos_contracts_2bh_providers_ida`),
  ADD KEY `bh_providers_aos_contracts_2_alt` (`bh_providers_aos_contracts_2aos_contracts_idb`);

--
-- Индексы таблицы `bh_providers_audit`
--
ALTER TABLE `bh_providers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_providers_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_providers_bh_org_trade_points_1_c`
--
ALTER TABLE `bh_providers_bh_org_trade_points_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_providers_bh_org_trade_points_1_ida1` (`bh_providers_bh_org_trade_points_1bh_providers_ida`),
  ADD KEY `bh_providers_bh_org_trade_points_1_alt` (`bh_providers_bh_org_trade_points_1bh_org_trade_points_idb`);

--
-- Индексы таблицы `bh_realty`
--
ALTER TABLE `bh_realty`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_realty_audit`
--
ALTER TABLE `bh_realty_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_realty_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_region`
--
ALTER TABLE `bh_region`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_region_area`
--
ALTER TABLE `bh_region_area`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_region_area_audit`
--
ALTER TABLE `bh_region_area_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_region_area_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_region_area_bh_locality_1_c`
--
ALTER TABLE `bh_region_area_bh_locality_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_region_area_bh_locality_1_ida1` (`bh_region_area_bh_locality_1bh_region_area_ida`),
  ADD KEY `bh_region_area_bh_locality_1_alt` (`bh_region_area_bh_locality_1bh_locality_idb`);

--
-- Индексы таблицы `bh_region_audit`
--
ALTER TABLE `bh_region_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_region_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_region_bh_region_area_1_c`
--
ALTER TABLE `bh_region_bh_region_area_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_region_bh_region_area_1_ida1` (`bh_region_bh_region_area_1bh_region_ida`),
  ADD KEY `bh_region_bh_region_area_1_alt` (`bh_region_bh_region_area_1bh_region_area_idb`);

--
-- Индексы таблицы `bh_scripts`
--
ALTER TABLE `bh_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_scripts_audit`
--
ALTER TABLE `bh_scripts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_scripts_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_scripts_bh_scripts_employee_comment_1_c`
--
ALTER TABLE `bh_scripts_bh_scripts_employee_comment_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_scripts_bh_scripts_employee_comment_1_ida1` (`bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida`),
  ADD KEY `bh_scripts_bh_scripts_employee_comment_1_alt` (`bh_scripts22dfcomment_idb`);

--
-- Индексы таблицы `bh_scripts_bh_scripts_leadership_recommend_1_c`
--
ALTER TABLE `bh_scripts_bh_scripts_leadership_recommend_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_scripts_bh_scripts_leadership_recommend_1_ida1` (`bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida`),
  ADD KEY `bh_scripts_bh_scripts_leadership_recommend_1_alt` (`bh_scriptsb2a1commend_idb`);

--
-- Индексы таблицы `bh_scripts_bh_script_param_response_1_c`
--
ALTER TABLE `bh_scripts_bh_script_param_response_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_scripts_bh_script_param_response_1_ida1` (`bh_scripts_bh_script_param_response_1bh_scripts_ida`),
  ADD KEY `bh_scripts_bh_script_param_response_1_alt` (`bh_scripts6c20esponse_idb`);

--
-- Индексы таблицы `bh_scripts_employee_comment`
--
ALTER TABLE `bh_scripts_employee_comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_scripts_employee_comment_audit`
--
ALTER TABLE `bh_scripts_employee_comment_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_scripts_employee_comment_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_scripts_employee_comment_bh_scripts_c`
--
ALTER TABLE `bh_scripts_employee_comment_bh_scripts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_scripts_employee_comment_bh_scripts_alt` (`bh_scripts7127comment_ida`,`bh_scripts_employee_comment_bh_scriptsbh_scripts_idb`);

--
-- Индексы таблицы `bh_scripts_leadership_recommend`
--
ALTER TABLE `bh_scripts_leadership_recommend`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_scripts_leadership_recommend_audit`
--
ALTER TABLE `bh_scripts_leadership_recommend_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_scripts_leadership_recommend_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_scripts_leadership_recommend_bh_scripts_c`
--
ALTER TABLE `bh_scripts_leadership_recommend_bh_scripts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_scripts_leadership_recommend_bh_scripts_alt` (`bh_scriptsfdbacommend_ida`,`bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb`);

--
-- Индексы таблицы `bh_script_param_response`
--
ALTER TABLE `bh_script_param_response`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_script_param_response_audit`
--
ALTER TABLE `bh_script_param_response_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_script_param_response_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_script_param_response_bh_scripts_c`
--
ALTER TABLE `bh_script_param_response_bh_scripts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_script_param_response_bh_scripts_alt` (`bh_script_param_response_bh_scriptsbh_script_param_response_ida`,`bh_script_param_response_bh_scriptsbh_scripts_idb`);

--
-- Индексы таблицы `bh_scr_status_history`
--
ALTER TABLE `bh_scr_status_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bh_scr_status_history_audit`
--
ALTER TABLE `bh_scr_status_history_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bh_scr_status_history_parent_id` (`parent_id`);

--
-- Индексы таблицы `bh_scr_status_history_bh_scripts_c`
--
ALTER TABLE `bh_scr_status_history_bh_scripts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bh_scr_status_history_bh_scripts_ida1` (`bh_scr_status_history_bh_scriptsbh_scr_status_history_ida`),
  ADD KEY `bh_scr_status_history_bh_scripts_alt` (`bh_scr_status_history_bh_scriptsbh_scripts_idb`);

--
-- Индексы таблицы `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Индексы таблицы `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Индексы таблицы `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Индексы таблицы `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Индексы таблицы `calls_cstm`
--
ALTER TABLE `calls_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Индексы таблицы `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Индексы таблицы `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Индексы таблицы `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Индексы таблицы `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Индексы таблицы `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Индексы таблицы `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Индексы таблицы `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Индексы таблицы `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Индексы таблицы `cases_bh_cases_log_1_c`
--
ALTER TABLE `cases_bh_cases_log_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_bh_cases_log_1_ida1` (`cases_bh_cases_log_1cases_ida`),
  ADD KEY `cases_bh_cases_log_1_alt` (`cases_bh_cases_log_1bh_cases_log_idb`);

--
-- Индексы таблицы `cases_bh_case_compound_1_c`
--
ALTER TABLE `cases_bh_case_compound_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_bh_case_compound_1_ida1` (`cases_bh_case_compound_1cases_ida`),
  ADD KEY `cases_bh_case_compound_1_alt` (`cases_bh_case_compound_1bh_case_compound_idb`);

--
-- Индексы таблицы `cases_bh_marketing_company_1_c`
--
ALTER TABLE `cases_bh_marketing_company_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_bh_marketing_company_1_ida1` (`cases_bh_marketing_company_1cases_ida`),
  ADD KEY `cases_bh_marketing_company_1_alt` (`cases_bh_marketing_company_1bh_marketing_company_idb`);

--
-- Индексы таблицы `cases_bh_marketing_response_1_c`
--
ALTER TABLE `cases_bh_marketing_response_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_bh_marketing_response_1_ida1` (`cases_bh_marketing_response_1cases_ida`),
  ADD KEY `cases_bh_marketing_response_1_alt` (`cases_bh_marketing_response_1bh_marketing_response_idb`);

--
-- Индексы таблицы `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Индексы таблицы `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Индексы таблицы `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Индексы таблицы `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Индексы таблицы `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Индексы таблицы `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Индексы таблицы `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Индексы таблицы `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Индексы таблицы `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Индексы таблицы `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Индексы таблицы `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Индексы таблицы `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Индексы таблицы `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Индексы таблицы `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Индексы таблицы `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Индексы таблицы `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Индексы таблицы `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Индексы таблицы `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Индексы таблицы `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Индексы таблицы `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Индексы таблицы `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Индексы таблицы `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Индексы таблицы `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Индексы таблицы `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Индексы таблицы `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Индексы таблицы `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Индексы таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Индексы таблицы `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Индексы таблицы `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Индексы таблицы `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Индексы таблицы `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Индексы таблицы `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Индексы таблицы `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Индексы таблицы `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Индексы таблицы `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Индексы таблицы `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Индексы таблицы `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Индексы таблицы `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Индексы таблицы `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Индексы таблицы `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Индексы таблицы `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Индексы таблицы `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Индексы таблицы `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Индексы таблицы `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Индексы таблицы `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Индексы таблицы `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Индексы таблицы `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Индексы таблицы `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Индексы таблицы `leads_aos_contracts_1_c`
--
ALTER TABLE `leads_aos_contracts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_aos_contracts_1_ida1` (`leads_aos_contracts_1leads_ida`),
  ADD KEY `leads_aos_contracts_1_alt` (`leads_aos_contracts_1aos_contracts_idb`);

--
-- Индексы таблицы `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Индексы таблицы `leads_bh_autotransport_1_c`
--
ALTER TABLE `leads_bh_autotransport_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_autotransport_1_ida1` (`leads_bh_autotransport_1leads_ida`),
  ADD KEY `leads_bh_autotransport_1_alt` (`leads_bh_autotransport_1bh_autotransport_idb`);

--
-- Индексы таблицы `leads_bh_lead_adress_1_c`
--
ALTER TABLE `leads_bh_lead_adress_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_lead_adress_1_ida1` (`leads_bh_lead_adress_1leads_ida`),
  ADD KEY `leads_bh_lead_adress_1_alt` (`leads_bh_lead_adress_1bh_lead_adress_idb`);

--
-- Индексы таблицы `leads_bh_marketing_response_1_c`
--
ALTER TABLE `leads_bh_marketing_response_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_marketing_response_1_ida1` (`leads_bh_marketing_response_1leads_ida`),
  ADD KEY `leads_bh_marketing_response_1_alt` (`leads_bh_marketing_response_1bh_marketing_response_idb`);

--
-- Индексы таблицы `leads_bh_packet_activation_1_c`
--
ALTER TABLE `leads_bh_packet_activation_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_packet_activation_1_ida1` (`leads_bh_packet_activation_1leads_ida`),
  ADD KEY `leads_bh_packet_activation_1_alt` (`leads_bh_packet_activation_1bh_packet_activation_idb`);

--
-- Индексы таблицы `leads_bh_passports_1_c`
--
ALTER TABLE `leads_bh_passports_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_passports_1_ida1` (`leads_bh_passports_1leads_ida`),
  ADD KEY `leads_bh_passports_1_alt` (`leads_bh_passports_1bh_passports_idb`);

--
-- Индексы таблицы `leads_bh_phones_1_c`
--
ALTER TABLE `leads_bh_phones_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_phones_1_ida1` (`leads_bh_phones_1leads_ida`),
  ADD KEY `leads_bh_phones_1_alt` (`leads_bh_phones_1bh_phones_idb`);

--
-- Индексы таблицы `leads_bh_place_of_work_1_c`
--
ALTER TABLE `leads_bh_place_of_work_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_place_of_work_1_ida1` (`leads_bh_place_of_work_1leads_ida`),
  ADD KEY `leads_bh_place_of_work_1_alt` (`leads_bh_place_of_work_1bh_place_of_work_idb`);

--
-- Индексы таблицы `leads_bh_realty_1_c`
--
ALTER TABLE `leads_bh_realty_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_bh_realty_1_ida1` (`leads_bh_realty_1leads_ida`),
  ADD KEY `leads_bh_realty_1_alt` (`leads_bh_realty_1bh_realty_idb`);

--
-- Индексы таблицы `leads_cases_1_c`
--
ALTER TABLE `leads_cases_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_cases_1_ida1` (`leads_cases_1leads_ida`),
  ADD KEY `leads_cases_1_alt` (`leads_cases_1cases_idb`);

--
-- Индексы таблицы `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `leads_documents_1_c`
--
ALTER TABLE `leads_documents_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_documents_1_ida1` (`leads_documents_1leads_ida`),
  ADD KEY `leads_documents_1_alt` (`leads_documents_1documents_idb`);

--
-- Индексы таблицы `leads_leads_2_c`
--
ALTER TABLE `leads_leads_2_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_leads_2_ida1` (`leads_leads_2leads_ida`),
  ADD KEY `leads_leads_2_alt` (`leads_leads_2leads_idb`);

--
-- Индексы таблицы `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Индексы таблицы `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Индексы таблицы `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Индексы таблицы `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Индексы таблицы `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Индексы таблицы `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Индексы таблицы `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Индексы таблицы `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Индексы таблицы `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Индексы таблицы `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Индексы таблицы `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Индексы таблицы `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Индексы таблицы `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Индексы таблицы `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Индексы таблицы `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Индексы таблицы `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Индексы таблицы `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Индексы таблицы `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Индексы таблицы `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Индексы таблицы `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Индексы таблицы `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Индексы таблицы `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Индексы таблицы `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Индексы таблицы `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Индексы таблицы `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Индексы таблицы `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Индексы таблицы `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Индексы таблицы `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Индексы таблицы `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Индексы таблицы `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Индексы таблицы `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Индексы таблицы `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Индексы таблицы `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Индексы таблицы `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Индексы таблицы `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Индексы таблицы `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Индексы таблицы `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Индексы таблицы `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Индексы таблицы `users_cstm`
--
ALTER TABLE `users_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Индексы таблицы `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Индексы таблицы `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Индексы таблицы `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Индексы таблицы `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Индексы таблицы `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `asterisk_log`
--
ALTER TABLE `asterisk_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT для таблицы `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1811;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
