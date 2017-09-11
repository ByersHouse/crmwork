-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2017 г., 14:02
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
('10006f4e-1995-a3f7-d040-599a767c6afc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('10242559-0a04-8759-1538-599a76a78fcb', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Documents', 'module', 90, 0),
('1037ce50-f339-d83d-571b-599a7616b8fe', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Bugs', 'module', 90, 0),
('108103fd-e2a2-8020-382e-599a76faa134', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('122bcf2b-0263-366d-f276-599a7608c60b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('1232f917-292f-166d-8cf2-599a7675f0da', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('12953261-8c96-3d2b-1466-599a7671fedd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Documents', 'module', 90, 0),
('12b38830-fddb-40db-f1f9-599a76d03f09', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('1414041c-a88d-b370-cb89-599a76722916', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('14e61b9f-4b5b-5453-4fdd-599a762dd32b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Prospects', 'module', 90, 0),
('150638a8-f2e5-9a41-f892-599a76a4eebd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Documents', 'module', 90, 0),
('16da136a-5dfc-c35d-c9a0-599a76aba991', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Prospects', 'module', 90, 0),
('1738c437-c666-8b55-1482-599a76cf8052', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('190ca66f-f678-1e58-ec89-599a764cee9d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('1d1e0fbb-1646-912f-9ee5-599a76edc54c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'FP_events', 'module', 90, 0),
('27ad8ca0-77a0-ab16-f9c6-599a7635979f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('27b11e3d-2767-75e2-3aa0-599a76a06d34', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('2a4900f1-0d23-87af-78bf-599a76b543ea', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('2a9b9ca6-ec0b-28e6-2895-599a76a91b3c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('2a9f2f03-4e32-8b49-db40-599a769c8cf9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('2d1039ac-84bf-5d18-a1fa-599a76d40eec', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('2d4b1a67-b673-b8af-609c-599a76592468', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('2f5bcb7c-01ed-2f9a-9377-599a767d2a06', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('2f8139d6-c4ba-a173-3e17-599a76a71ec8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('2fbc2a9d-00b8-1e7c-df26-599a766b4fd1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('30fb0732-6c01-442f-7303-599a76b7dda1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('3230c053-1cb9-4dd7-0382-599a763a785a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('326bb7b2-d1f6-3dcd-bb36-599a76cc0d21', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('32884659-0e0f-7967-616d-599a761fed2a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('32f8b987-71ac-30cd-ce89-599a76a206d8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Accounts', 'module', 89, 0),
('34a1c91e-dbb8-2292-5f43-599a76e46c55', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('351b3d00-cab8-4599-cd23-599a760c5041', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('3569ca1d-5d1d-93ab-f11c-599a76b20cd2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Accounts', 'module', 90, 0),
('35765415-a9b1-3edd-2fbe-599a76463ef9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('3712dd9c-0f00-e804-bdf7-599a767c4aa4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('378c422c-5606-c4bc-aa2a-599a76c3135f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('379c436b-7dc1-0b8f-7e28-599a76add149', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Accounts', 'module', 90, 0),
('3825e8c1-3bb3-8840-920f-599a761b0d3d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('38590393-3334-451d-d787-599a76bd97ac', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Bugs', 'module', 89, 0),
('3983e7c2-4efd-c675-a26c-599a769576da', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('3a0d5c4b-3619-bf1a-ba9d-599a7686d0c5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('3a3bd492-5d2e-ed69-12cd-599a76844f98', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('3a951426-f5d3-fe90-297e-599a7671c591', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Meetings', 'module', 89, 0),
('3a96e081-44b5-a31c-e2e0-599a76303946', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('3c015422-02c0-9a2e-daf0-599a76e8f888', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('3d061aeb-131c-5184-c01c-599a769a8e04', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Meetings', 'module', 90, 0),
('3d84f2fd-271a-b8e4-3f1a-599a7698bcaa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('3e33e3ab-8840-3f45-b394-599a76324061', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Accounts', 'module', 90, 0),
('3f0d0fb5-8b81-b8ac-c7c3-599a7645eae9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('3f77238f-e07c-4558-a396-599a76453832', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Meetings', 'module', 90, 0),
('40347a97-9172-8323-67e9-599a762c29bc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('403d751f-c68a-39b9-698a-59b66cec15d0', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'access', 'bh_faq', 'module', 89, 0),
('4066667d-6d98-02b4-b85a-599a76d11110', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Accounts', 'module', 90, 0),
('41e82abc-1c93-bd73-70df-599a7668e349', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('4298f071-0d80-36f8-21bd-599a7664a71d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('42a58e42-1ea1-22b4-78ac-599a762944f9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('43565ee4-fb48-f32c-6a5d-599a76387c8f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('441ab32d-c53a-461b-cef3-599a769e1cac', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('442f03d6-c9f5-ca69-c139-599a766a906f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('443c9b5a-8389-2e0c-e1af-599a76552385', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Project', 'module', 89, 0),
('44dba980-c693-4c70-51d6-599a76623d7c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('464d34cc-bab7-f459-d05a-599a762f3f44', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Meetings', 'module', 90, 0),
('4682da80-3fbc-c882-1978-599a76910426', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('46adae36-98bd-3e32-945c-599a76a78d1a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Project', 'module', 90, 0),
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
('4d06ba48-56bf-61e8-70a7-599a76232212', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Project', 'module', 90, 0),
('4d67476f-484d-6e84-332e-599a76dbec89', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('4d720d74-dd00-821b-435f-599a762f9829', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('4d9cc169-770e-35e1-0089-599a7685e553', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Calls', 'module', 89, 0),
('4ddd1350-eba8-5a56-0b13-599a76936d76', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('4e366ce6-dec3-1030-c860-599a76028b05', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('4eafd9da-47c5-5ffd-ce34-599a76186675', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('4ecffe8d-2969-a48e-6b4d-599a76aee76b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('4f394f86-bf59-ff75-cec7-599a76b6ed28', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Project', 'module', 90, 0),
('504c544a-437a-f484-b021-599a76cf4ae8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Calls', 'module', 90, 0),
('505542fa-70e9-0cf4-4528-599a76c33d7e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('508ca8ad-9d36-7262-8350-599a760ddfd6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('50e5e572-17cf-78e3-7a7e-599a768612cd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5120d34b-0d03-06b0-bf54-599a76d0e08f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('512d4333-a968-5388-8fee-599a76059035', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Project', 'module', 90, 0),
('51410ad4-f775-89a5-85d1-599a768aae96', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('527edcda-edc8-f410-1637-599a7667ba42', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Calls', 'module', 90, 0),
('52c65175-5073-01ae-263e-599a7695923c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('535fd60d-0662-1a02-a4b7-599a761a2245', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('537ab49e-2a3d-6b41-448c-599a769d1cfa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('5391eebf-ab4e-4ae4-a7e4-599a761273a8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('53957182-401f-fcfa-927c-599a76dfc67a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('53ec5026-6afa-14ca-4e4c-59b634c965ac', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'access', 'bh_Card_ident', 'module', 89, 0),
('53f09772-495d-3b6b-ca7a-599a7634553b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('544f15fd-ec58-4ad4-2bcd-599a76eeafc5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Leads', 'module', 89, 0),
('54b168ed-487c-07ec-5d43-599a76278540', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Calls', 'module', 90, 0),
('552588b7-015f-95f3-9424-599a765c8048', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('5575e793-934c-b621-5cf6-599a763fdc34', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('55c7f645-925c-e071-f180-599a76061941', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5602e7da-b0bf-44e1-b7e1-599a761bca42', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('562a3575-dcc4-9603-76ee-599a7654e4c4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('56a014a9-5861-99d9-9868-599a76e9496d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('57226694-959d-b748-ca9e-599a76871007', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Calls', 'module', 90, 0),
('572efc0d-ce8c-5979-f6dd-599a762606fd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('580c0698-a7fb-6f20-928d-599a7610176c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('5813834e-4421-fdec-cb21-599a765948e8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('58256cb1-17ea-9034-02f6-599a76157a36', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('5873fb3c-f309-8326-4d35-599a76ab2a50', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('58778a33-c7f3-c7a8-98de-599a76ca8bd8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('58d9cca3-fadd-cdc1-21bc-599a762ee621', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('5954f5b6-b18c-7bdf-fe5b-599a76e1f253', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Calls', 'module', 90, 0),
('59b1c18d-7bee-7c94-6af1-599a760e9928', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Cases', 'module', 89, 0),
('5a9a00e0-d74a-8d27-c60c-599a765190e2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('5ac31560-42eb-6e43-48a2-599a76e2c3bf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('5ae4f7ba-7208-82e3-977c-599a76f8a3c4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('5ae89963-cb8c-22ed-920e-599a76ababd1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5afa76b2-3c4c-3168-dccd-599a76483f9a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('5b895950-f652-3fb7-d9a4-599a76847777', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('5bc5f50c-b575-ee04-88d8-599a765ba65a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Calls', 'module', 90, 0),
('5d499050-901f-2edf-d3c3-599a765055bf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('5d560ecd-c37a-2d65-1c25-599a76bf2666', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('5d5995ea-c68d-1dfd-48cd-599a76159284', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5d69a019-50f7-bb8e-22f8-599a7630d916', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('5d72ad88-69f5-c4a4-46f8-599a76490dbe', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('5df8856f-6b5f-a254-437b-599a760563d8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('5f6a0648-1c07-9ffd-5f0b-599a76cf4e06', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Bugs', 'module', 90, 0),
('5fcaafff-63cf-8860-6a1b-599a767e7948', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5fdaaee4-120b-7659-a0be-599a7622cb4b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('5ff91570-aaca-bd9a-29f3-599a76693f18', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('6022271c-5323-8ed4-07fd-599a765486ff', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('620d3247-dafc-1709-1c46-599a767f909d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('62e721df-0eea-67ea-b2dd-599a76169bf6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('63103e9c-612c-0ef7-3ac8-599a76836298', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('63a47330-ba9b-039e-a1b6-59b66c448e43', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'view', 'bh_faq', 'module', 90, 0),
('64419b3a-a27b-d036-b131-599a7694107b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('647e3b5a-18c9-3784-c3a9-599a7673ba37', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('6596b7de-f007-f037-dfd0-599a76bac848', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('65bfb8cc-e196-31ac-bb5e-599a76f02496', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('66000a2d-b4c8-33c5-e3af-599a768b6d94', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Documents', 'module', 89, 0),
('667247d6-57d9-c106-e04e-599a76924c90', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('66e0f2ca-4ac4-0589-717e-599a76764a33', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Cases', 'module', 90, 0),
('66f11e65-7204-49bd-8137-599a76465765', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('686f4fd4-d7db-bbde-cca0-599a76f70fe2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('68a4c502-7f1a-f47e-917a-599a76835ab5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('68d4f693-e8d6-3ccd-2415-599a76882932', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Cases', 'module', 90, 0),
('69622ce1-87e7-4ddc-d1ba-599a7608c0e6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('6a7a9655-6567-d48d-8f35-59b66cd4bad6', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'list', 'bh_faq', 'module', 90, 0),
('6ac90976-42a4-435e-752c-599a7656c0aa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Cases', 'module', 90, 0),
('6ad750a5-7770-99b7-ecc9-599a761c22d9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('6b3f055e-47c2-7717-bb86-599a7627099a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('6caed5f7-b443-ad1f-9c91-599a7609eb1d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('6cbd0680-2a22-2bab-a74e-599a76767d0b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Cases', 'module', 90, 0),
('6d09dfd9-bece-50a8-8f97-599a76fcb62f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('6eef9a96-6e30-b5ce-24ac-599a76d07812', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Cases', 'module', 90, 0),
('6f1c5563-1183-a1df-9367-599a76f184f2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('6f9ce98d-b52b-4d93-a5a8-599a7664bdc7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('6fbb30a7-91bc-4692-2a27-599a76b28f0e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('70e39ffe-c96e-6dad-7298-599a7601d285', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Cases', 'module', 90, 0),
('7150af57-79e1-ab7d-d0fd-59b66c06a980', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'edit', 'bh_faq', 'module', 90, 0),
('719b8ba0-2df6-16ef-16ba-599a765391b9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Leads', 'module', 90, 0),
('71cbde36-c1f4-1503-38c2-599a7625438b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('72100511-3c2b-03bf-0525-599a76c447f0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('724c734f-a06b-fb3d-471a-599a76a3608d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('726ac32d-7a1c-9e10-e3ef-599a760817d6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('73162ac0-f612-90b7-1b4a-599a76389796', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('748208e2-fccf-7e77-e40d-599a76e98cef', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('7489916a-ba1e-733d-0134-599a76ca72dc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Leads', 'module', 90, 0),
('74c2cfb4-d4df-557b-14b0-599a7687badc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'EAPM', 'module', 89, 0),
('74dbdba9-f729-4f09-60dd-599a764bd49f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('753a764b-cfc3-c022-ac3a-599a7693e625', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('767693d6-01a4-cb7f-eda8-599a76a8346c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('767d91ff-10e3-6b2c-c4c1-599a76a0e0cc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Leads', 'module', 90, 0),
('774c0a8b-c73e-614d-7f5d-599a768e113f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('778b565a-8185-0161-61f7-599a762edd50', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('77b0db2a-f2f9-fa0b-1be8-599a76bb0c51', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'EAPM', 'module', 90, 0),
('77e84575-4a4d-4998-c363-59b66c958c14', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'delete', 'bh_faq', 'module', 90, 0),
('77ea0eee-f34d-f833-e87b-599a760327b1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('78b0226f-1988-8d39-8258-599a762fb01c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Leads', 'module', 90, 0),
('79a32e2a-5f69-e6f3-1865-599a76af6f9f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('7a21ce8d-4a10-c1ea-d375-599a76bf263d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'EAPM', 'module', 90, 0),
('7a9998c1-05f4-3a02-2e90-599a7683146d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('7ae2b49f-4c79-b8e3-8b05-599a7674d118', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Leads', 'module', 90, 0),
('7c546860-d735-3847-bba2-599a76dbfa58', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('7c91189e-d124-f5d9-7494-599a761089d5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('7cd6b298-cfcf-15df-f946-599a76430512', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Leads', 'module', 90, 0),
('7ce5002f-61a3-ef9c-b703-599a7672175a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('7d491bd3-c5cd-d032-d2fd-599a76127842', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('7dff2a3f-9474-6ea8-ae6d-599a7611eb73', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Alerts', 'module', 89, 0),
('7e8c3cf8-dfc3-d3dc-7f0f-599a7684bcd7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('7eaa0420-9892-8398-a91f-599a76f91846', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Bugs', 'module', 90, 0),
('7ebe4eff-a715-5381-94e5-59b66c3b4d0e', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'import', 'bh_faq', 'module', 90, 0),
('7ec578eb-1401-bab8-4247-599a768b2dd8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('7f40b80f-027e-eb1b-f246-599a762217d7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('7f5606c0-e966-ad2c-5056-599a76fe2f5e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('80372cb0-9292-5b87-b97a-599a76fdf7c0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('80aebad9-80cf-e430-2dba-599a76ccc8dd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Alerts', 'module', 90, 0),
('81367f9d-74ce-b3ac-b663-599a76b363d7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'EAPM', 'module', 90, 0),
('815bf937-161c-c561-0e02-599a76f7ee04', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('818893e2-b41e-db10-0220-599a76ba264a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('81f041fd-6492-c233-c2ae-599a7644021e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('82b9fccd-ea73-9cb0-3ba7-599a7695ca47', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Users', 'module', 89, 0),
('831fcf60-fb21-bb9a-8290-599a76d6c2ed', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Alerts', 'module', 90, 0),
('8369013d-f4fe-969b-94cd-599a76316c39', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'EAPM', 'module', 90, 0),
('83bb1e4c-1c9f-077d-f6ca-599a76081817', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('83ccf998-f661-b065-1a9f-599a76c4ae43', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('83f4509c-31c1-9fb5-62e5-599a764a3425', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('84de4479-13db-4468-a19e-599a7646b98b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
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
('887088cb-3e3b-f910-12bb-599a766966b9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('89518738-794d-643a-d6ee-599a76019687', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Users', 'module', 90, 0),
('89536ec8-b106-4e00-efae-599a768fb7d3', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('89d22c86-ff26-8f3d-0bf2-599a764ddedb', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('8a143a89-d852-bac7-8a78-599a7669f65d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('8a5bb4b7-4f0a-e653-d3ad-599a762fce29', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('8a72e141-a0a5-f359-88e8-599a76dcbe76', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Alerts', 'module', 90, 0),
('8a7be1e5-c600-e11f-c78e-599a7654ab2a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('8ae19333-33b9-e1d7-35c1-599a76ddcf67', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('8b841396-1dec-d71c-c83e-599a7663f6a3', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Users', 'module', 90, 0),
('8bc466d2-7e96-eada-6340-599a76dc8870', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('8bc62cd3-8ae6-2d6a-2075-599a760b5ced', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('8c083c53-f768-14ea-6cf0-599a761ad6c7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('8ca568b9-10cb-1570-3b4a-599a76a8a642', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Alerts', 'module', 90, 0),
('8ca919bb-e9df-f6c1-6ced-59b66c4d2163', '2017-09-11 10:59:08', '2017-09-11 10:59:08', '1', '1', 'massupdate', 'bh_faq', 'module', 90, 0),
('8d142b2c-aaff-e327-7669-599a764012b6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('8d884b9c-b0ed-1a91-dc57-599a76aafc65', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('8dc870e2-345d-b98f-f737-599a76dda2a7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Contacts', 'module', 89, 0),
('8df8b3ed-d884-4c72-1388-599a76d027c7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('8e357884-7157-79db-7702-599a76999246', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('8eef2709-ef90-e8af-5d0f-599a766e53b6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Users', 'module', 90, 0),
('8f54f8a2-ed18-17b6-2f55-599a765c5d73', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('8f852298-7b51-7c64-345e-599a76d2b1b0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('8ff947f9-6219-4d53-0078-599a76a84845', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('902b3e49-651b-8544-bdb2-599a76d6c38d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('907806fb-5939-c7d3-7ae4-599a76178746', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Contacts', 'module', 90, 0),
('90e327e0-13c4-c7fb-a48c-599a764d44e5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Users', 'module', 90, 0),
('90e50c33-99fd-6c82-c170-599a7662bb66', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('90f9081d-bafd-0cf9-9b40-599a76a7b7cc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Documents', 'module', 90, 0),
('91b7bc33-79ee-6f4d-6f72-599a76b6a67e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('921f4a16-e988-d14f-e6d2-599a765f6048', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('925009fa-fcaa-14c2-22a9-599a76999d19', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'FP_events', 'module', 90, 0),
('926c0087-e1d1-54e7-e6cd-599a76e5f4d2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Contacts', 'module', 90, 0),
('92a8dbae-2582-ce8c-d72c-599a76a61e08', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9315bce7-3083-68eb-8008-599a764ede45', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('935600c6-acca-a9cb-32d0-599a76c1cc91', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('9451c3b2-f67b-1dd3-6b3c-599a76522f3a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('949e942e-c1f6-c280-bb27-599a76a9edff', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('9558541b-6614-fe5a-6b49-599a76d8bad5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('95c71c7b-e7a5-bdf3-73c8-599a763b6889', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('970fa5c7-9e9b-8073-ee56-599a76cec617', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('97ab00df-fd27-ce69-1c49-599a76ed439b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('97c96a0a-1b30-448b-496e-599a7614e760', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('97cc42d9-4b38-c51a-573b-59b634bc484a', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'view', 'bh_Card_ident', 'module', 90, 0),
('9903a9bc-cd01-e9f8-83ab-599a76baf5ca', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Contacts', 'module', 90, 0),
('9a750e0b-cab3-77f3-c37b-599a765090cd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('9a78fb8d-00e6-4eeb-b735-599a7611a612', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9aae0522-a3ad-8a7f-1964-599a7640014e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Prospects', 'module', 89, 0),
('9b3623e6-f296-e43d-655f-599a76515725', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Contacts', 'module', 90, 0),
('9d28731e-2e06-99f0-172d-599a762f0f74', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9d68bda2-cba2-7a37-fb05-599a7656174f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('9dea0a8d-ea2e-3fbd-6254-599a76876955', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('9ee0e220-19ea-07bf-7ec4-59b6346d31fc', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'list', 'bh_Card_ident', 'module', 90, 0),
('9f6b0311-ce4c-81a1-1fa5-599a76742253', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Tasks', 'module', 89, 0),
('a1ffd7d5-c062-d26c-dc01-599a76e078cb', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('a21a9d5d-8656-149c-6bd7-599a76ce1593', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Tasks', 'module', 90, 0),
('a48b9a02-d346-bc77-5831-599a761734a6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Tasks', 'module', 90, 0),
('a4edefd2-27a8-7164-180c-599a76df73a0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('a5f5881d-7a40-e621-cf06-59b6344aedcf', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'edit', 'bh_Card_ident', 'module', 90, 0),
('a6be267d-ec0f-ea59-2980-599a76ca1044', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('a6f91258-a707-3386-a35b-599a76387104', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Emails', 'module', 89, 0),
('a75ee405-2c0e-072e-f6e5-599a76267685', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('a92f3963-29d0-adb5-9c80-599a76631e3f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('a9a89432-d3a4-c2c6-f0b9-599a761759a9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Emails', 'module', 90, 0),
('a9d384ef-3b0b-cf21-8880-599a7682e745', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('aa0e7fba-8cc7-a73b-9204-599a7621ac07', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('aba031cc-930a-e15f-3ccd-599a763473bf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Tasks', 'module', 90, 0),
('abdb223e-757a-51fa-4657-599a76af5158', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Emails', 'module', 90, 0),
('acbdff7a-f67c-5d60-ee34-599a76a6a833', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('acc191a4-f1e0-7850-138d-599a767f1037', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('accb953c-201c-25b1-dd7d-59b634c8a40b', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'delete', 'bh_Card_ident', 'module', 90, 0),
('ae114b64-95d7-2cd0-84b3-599a7611c783', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Tasks', 'module', 90, 0),
('ae4c3f6d-3f23-ced3-f8ea-599a76fb3486', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Emails', 'module', 90, 0),
('af2f076c-e2e4-a816-b63c-599a76aa547f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('af329dd7-e59b-9365-7bbe-599a76174090', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('b07eb402-78fb-d89b-d86f-599a761894a5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Emails', 'module', 90, 0),
('b082434b-4222-88e7-bc62-599a766d22a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('b1de95ee-6191-7bb7-dc04-599a766c3b8c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('b1e22113-04e1-1855-a95e-599a76d1e9b1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('b2ca46ac-cda9-7b91-90f6-599a765a88c2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('b2efc543-62af-1b43-e2be-599a7693aa3e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Emails', 'module', 90, 0),
('b3e030a9-b0ff-9f6a-40b3-59b634f1cf4b', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'import', 'bh_Card_ident', 'module', 90, 0),
('b44f9bd7-6b31-ba43-0b75-599a767dabb7', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('b45323ba-aea9-5e9a-ebb7-599a763905cf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('b52240b9-9ccd-7844-dee3-599a76a404ab', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Emails', 'module', 90, 0),
('b579d64e-2c0b-e934-4d50-599a762da785', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('b702b909-a5a7-47eb-4a17-599a7678bfd4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('b7935dc8-e6ed-3d7a-4267-599a7622258a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('b7ead238-d15d-a284-a2be-599a763d67a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('b8090a7a-a8bb-404b-e9e9-599a76584b47', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Documents', 'module', 90, 0),
('b973c218-5642-8084-7ffe-599a768a9a8e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('b9b509db-5212-985d-4c0d-599a7649e361', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('ba5be8cd-5b52-1f56-1cd0-599a76b3b3a4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('bad30dd5-a449-14ed-a21e-599a7610bccc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('baf4d9a2-d71f-2bd4-ed39-59b634a0a894', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'export', 'bh_Card_ident', 'module', 90, 0),
('bc234c98-1558-dc7c-e597-599a76de017b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('bd0b6a42-c658-63a3-44ce-599a769ee7df', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('bd2b98ee-63d7-5faa-68dd-599a7628f04a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('bd4802f8-17bb-c95d-2f16-599a766abab0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'FP_events', 'module', 90, 0),
('bdf1d0ea-c232-8a0d-3473-599a76f3d8d5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('be3cc24c-9c96-8cea-f704-599a76951e8e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Spots', 'module', 89, 0),
('c1130119-811d-e0f1-a188-599a76014f0a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('c11e6609-eb68-6e72-8fd8-599a76432987', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('c12ad41a-e614-1127-435d-599a76ba594d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Spots', 'module', 90, 0),
('c1cae57c-140a-5c4a-1b44-59b634f6798f', '2017-09-11 07:02:04', '2017-09-11 07:02:04', '1', '1', 'massupdate', 'bh_Card_ident', 'module', 90, 0),
('c35d5765-c6dc-f0a0-d14d-599a76148de5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Spots', 'module', 90, 0),
('c3cdec72-21e4-d044-b152-599a76f9318d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('c4bd30a3-504d-9721-57b4-599a7670b869', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('c4db83e6-82d1-19ae-c5b7-599a76eb308e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('c59aa46f-3cdc-2714-9510-599a761ac686', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('c5a70b73-7864-7e3e-5b1f-599a76a5ac40', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Prospects', 'module', 90, 0),
('c67d762f-0ce5-4684-410d-599a7653eada', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('c70e1e5a-7658-287c-f79b-599a7655525b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('c76ccd64-4ab3-95c0-8341-599a76e37bcc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('c84a24bb-fcf2-70b6-a1c9-599a766eedc1', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('c92d0e1a-1a57-63ec-0f6c-599a76a8bdb4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('c97f129d-f046-2920-2906-599a765213cf', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('c9da3bb1-8fc6-07ef-9181-599a76af6caa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('ca1c4902-515d-5799-d74d-599a76478eb8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('ca3371a6-68a8-76a2-cc5b-599a76b779c2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Spots', 'module', 90, 0),
('cabb3007-62ee-106a-02e5-599a76eadb86', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('cb249b1c-29b1-8851-a950-599a76f89651', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('cbdc8b99-c896-75d5-79c8-599a76717ba4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('cca486d5-9d13-6b76-5978-599a764ac8bc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Spots', 'module', 90, 0),
('ccc84595-3cd9-e0da-754c-599a767aa944', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('cccbd0a0-901c-e450-0de3-599a764df161', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('cd2c343e-c38d-7d46-7e52-599a762e8286', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('ce512fbf-cc9a-5485-b8b3-599a769c3cfa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('ce8c1d3e-13dc-4100-ddf2-599a760e9a76', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('cf15813c-01d7-b922-a192-599a7625b808', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Spots', 'module', 90, 0),
('cf77caea-db36-7986-2faa-599a7614b74d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('cf9d46df-5f1d-2e10-e40b-599a76aa9488', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('cfb9efa5-e6d9-190d-4bbe-599a76407503', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('d100b130-5fb5-d546-f01a-599a767dddf8', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('d13b916c-4c23-49c0-8d57-599a7610086e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('d1481ede-976d-a030-3166-599a763e26bd', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Spots', 'module', 90, 0),
('d20e42e7-1bb2-2022-4478-599a76fa6fea', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('d227526a-468c-be95-e205-599a76b7370f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('d22aeaa6-84cc-32e5-f416-599a761d0f2c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('d3b03a48-06b9-43fa-9aa2-599a769cdb60', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('d3b91eab-3097-b90f-4a09-599a7659f1d6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('d47f572e-5a92-4139-d72d-599a76735be0', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('d4d6e558-1c04-98d3-f356-599a766fe517', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('d518f351-2ef4-02a0-c395-599a761f081f', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('d65fcea6-07dd-4dba-625f-599a763c6ba4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('d6f06ba9-d94b-c5bc-adda-599a764f4754', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('d747e49c-d4e9-8976-40e5-599a76fc9ab6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('d782d5c8-ebcc-c7d4-09a6-599a7679945d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('d85aff29-c700-c9b2-0f53-599a76a3cfe4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('d90f47f9-d7a3-b3f0-fddc-599a7695afd5', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('da35f08a-255d-9edf-54b3-599a764f89ad', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('da70e24d-2b62-284f-55d3-599a76409796', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('db0a7f6a-bc73-6809-03d6-599a7675ec2d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('dbbed651-952b-ce50-3b31-599a76484a11', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('dcde0e34-8f5f-558b-abca-599a768505c9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('dce5732d-c6d0-4c2e-1ed2-599a769ee793', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('dd206ef5-64f9-ad86-8b62-599a76a3a6fa', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('dd67c8e5-6468-483e-3a2f-599a762df87a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Notes', 'module', 89, 0),
('dd7f1bdf-deaa-38f0-536e-599a76141f3b', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('ddf88f8e-67da-534e-2851-599a7696039e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('ddfc05ee-2d52-2b5d-b7f8-599a761895d2', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('deace5a1-368f-b25f-56dd-599a76a2f43a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('df1a0d27-369d-f0ec-d97c-599a763a2972', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Documents', 'module', 90, 0),
('e0175e4c-fbba-00ab-c331-599a76dccaee', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'Notes', 'module', 90, 0),
('e04cfef2-621f-cb32-bcc0-599a76b8439c', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('e0530a6f-730b-8f47-fd4b-599a76def419', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Bugs', 'module', 90, 0),
('e071059b-ba2c-d6ef-f894-599a76067462', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('e0a81e97-cc4e-b445-4a87-599a76b8cae9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('e0aba5dd-dfef-af28-ade1-599a76f974cc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('e249e332-0fbb-e777-c1dd-599a764b4d2a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Notes', 'module', 90, 0),
('e2be0fc0-9666-57b9-2519-599a76461d41', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('e35b266f-a587-2aa3-8804-599a76b97c97', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('e3961019-4f85-3fa4-48e0-599a7622372e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('e40f83a8-df43-c3cb-26eb-599a76820755', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('e47c60ca-66e8-4e30-b14e-599a76d0df8e', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'Notes', 'module', 90, 0),
('e5ac08e8-9487-2865-bcdb-599a7652a4a9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('e60ab470-4551-7a0a-a8d8-599a765073fc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('e645a76a-1a26-c36c-d1ea-599a760b0881', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('e6ed7044-b4b8-5b46-0472-599a76e601fe', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'Notes', 'module', 90, 0),
('e77a92b3-cf00-629e-3929-599a76d9b656', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('e85b9b43-cacf-69f6-9b18-599a76376cad', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('e8cf0cfc-ea67-47d8-7cdc-599a768ffa34', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'Prospects', 'module', 90, 0),
('e8f8ccc5-87ff-9a45-f9c4-599a76e061ba', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('e91ffcae-3344-7fbf-9ae1-599a767950ac', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'Notes', 'module', 90, 0),
('e933b11c-955a-13ab-c435-599a7667cd69', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('ea2a2d43-e7dd-01a6-ceb5-599a760328d9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('eacc9db3-842c-ae5d-6757-599a767c8813', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('eb52824b-4df9-2bb6-b1d3-599a760786ed', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'Notes', 'module', 90, 0),
('eba84c44-9760-da85-6634-599a763a2a26', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('ebe33cce-1e66-60de-331e-599a76cbde82', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('ecd9a7c0-f660-0395-52c0-599a763925f6', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('edc387db-0902-5f17-019f-599a7687ef24', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('ee57d7f3-b72a-3ac6-2514-599a76d25780', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('efc7bba0-b740-bf9b-467c-599a768c6ac4', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('f096de93-659a-d860-17ec-599a763703d9', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'FP_events', 'module', 89, 0),
('f145e9a6-b454-eb8b-5316-599a763a2747', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('f1e68ed9-ad71-8a88-fc05-599a762c7258', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('f27743a6-b199-7da2-1e69-599a76f61a03', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('f384e471-9f75-968a-67d4-599a769624ce', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '', 'view', 'FP_events', 'module', 90, 0);

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
('84972bc1-3e77-3dc2-dc3a-599bca2865f0', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a1ffd7d5-c062-d26c-dc01-599a76e078cb', 0, '2017-08-22 06:10:20', 0),
('849ab7cf-3500-f5f0-57f0-599bca6ad7dd', 'd191d6fe-6762-5011-a734-599bca2b2a07', '27b11e3d-2767-75e2-3aa0-599a76a06d34', 0, '2017-08-22 06:10:20', 0),
('84d9332e-e02d-2c55-7b6c-599bca034651', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3230c053-1cb9-4dd7-0382-599a763a785a', 0, '2017-08-22 06:10:20', 0),
('8514205c-3eb4-67e7-bda2-599bcad5eee4', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'acbdff7a-f67c-5d60-ee34-599a76a6a833', 0, '2017-08-22 06:10:20', 0),
('8552a282-a1ed-1c1a-5102-599bca2d4751', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'aa0e7fba-8cc7-a73b-9204-599a7621ac07', 0, '2017-08-22 06:10:20', 0),
('85563712-e88e-900b-a682-599bca1d5c1a', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2f8139d6-c4ba-a173-3e17-599a76a71ec8', 0, '2017-08-22 06:10:20', 0),
('859125c9-18bd-26fd-3009-599bcad72c14', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b1de95ee-6191-7bb7-dc04-599a766c3b8c', 0, '2017-08-22 06:10:20', 0),
('8594b4c0-ed33-2f7f-8c9b-599bca2ccde4', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3712dd9c-0f00-e804-bdf7-599a767c4aa4', 0, '2017-08-22 06:10:20', 0),
('85d333bf-65ae-22b6-a8a8-599bcaf6342b', 'd191d6fe-6762-5011-a734-599bca2b2a07', '34a1c91e-dbb8-2292-5f43-599a76e46c55', 0, '2017-08-22 06:10:20', 0),
('86503106-2899-4c6a-0af9-599bca960bfe', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2d1039ac-84bf-5d18-a1fa-599a76d40eec', 0, '2017-08-22 06:10:20', 0),
('86cd3837-1a50-bb8c-ce94-599bca9c6ba5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '3983e7c2-4efd-c675-a26c-599a769576da', 0, '2017-08-22 06:10:20', 0),
('870bb98d-05b6-55b3-8c38-599bcaafec9d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '2a9f2f03-4e32-8b49-db40-599a769c8cf9', 0, '2017-08-22 06:10:20', 0),
('874a410e-1325-683d-83f4-599bca94595d', 'd191d6fe-6762-5011-a734-599bca2b2a07', '552588b7-015f-95f3-9424-599a765c8048', 0, '2017-08-22 06:10:20', 0),
('87c74d93-feeb-0271-5e06-599bcaced156', 'd191d6fe-6762-5011-a734-599bca2b2a07', '6022271c-5323-8ed4-07fd-599a765486ff', 0, '2017-08-22 06:10:20', 0),
('8805cb69-d5ca-e96c-33a2-599bca89ae22', 'd191d6fe-6762-5011-a734-599bca2b2a07', '5d72ad88-69f5-c4a4-46f8-599a76490dbe', 0, '2017-08-22 06:10:20', 0),
('8882c1ef-577a-cd95-5e33-599bca3701d5', 'd191d6fe-6762-5011-a734-599bca2b2a07', '65bfb8cc-e196-31ac-bb5e-599a76f02496', 0, '2017-08-22 06:10:20', 0),
('8ca5cb09-4b10-840b-c1d8-599bca80e2e6', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'af2f076c-e2e4-a816-b63c-599a76aa547f', 0, '2017-08-22 06:10:20', 0),
('8ce44d78-986d-1c37-9a33-599bcaa3d342', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a75ee405-2c0e-072e-f6e5-599a76267685', 0, '2017-08-22 06:10:20', 0),
('8d6144f7-8890-1a82-4d36-599bcaf05ee1', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'b44f9bd7-6b31-ba43-0b75-599a767dabb7', 0, '2017-08-22 06:10:20', 0),
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
('981f6575-2015-3035-1332-599bcab0b290', 'd191d6fe-6762-5011-a734-599bca2b2a07', 'a4edefd2-27a8-7164-180c-599a76df73a0', 0, '2017-08-22 06:10:20', 0),
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
('4a496cb7-e076-3c1c-3c9c-59b105786fe6', 'Предварительный контакт \'Тест Тестовый\'', '2017-09-07 08:39:15', '2017-09-07 09:44:58', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=4a2d9def-1fda-713f-409f-599a892565f9&return_module=Leads&return_action=DetailView', NULL),
('67cb0af9-db76-3d3a-5837-59b122b8715e', 'Предварительный контакт \' TEST\'', '2017-09-07 10:41:26', '2017-09-07 11:06:27', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('8f4428df-f39a-a1a5-4bbf-59b129cf18b0', 'Предварительный контакт \' TEST\'', '2017-09-07 11:12:23', '2017-09-07 11:30:01', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL),
('c8c96aea-d9d4-e278-4451-59b103e579dd', 'Предварительный контакт \'Тест Тестовый\'', '2017-09-07 08:30:15', '2017-09-07 08:31:24', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=4a2d9def-1fda-713f-409f-599a892565f9&return_module=Leads&return_action=DetailView', NULL),
('e9b8a01c-9bf7-2342-ac2f-59b11650a0d5', 'Предварительный контакт \' TEST\'', '2017-09-07 09:52:07', '2017-09-07 10:35:13', '1', '1', 'Вам назначена задача', 0, '1', 1, 'Lead', 'info', 'index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView', NULL);

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

--
-- Дамп данных таблицы `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

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

--
-- Дамп данных таблицы `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('107d8f70-ea41-9f58-2844-59affb38cc91', 'Sdfsdfdsf', '2017-09-06 13:43:36', '2017-09-06 13:43:36', '1', '1', NULL, 0, NULL, NULL, 1, '711acfc9-ba15-32d6-171e-59affbea8e58', 'Leads'),
('13157379-d465-d2f6-ef1a-59aea1433c6f', 'Цуйуц', '2017-09-05 13:05:33', '2017-09-05 14:38:18', '1', '1', NULL, 0, '', NULL, 1, '3e372765-5b6e-54bd-3f65-59aea194b1e0', 'Leads'),
('143ef288-830c-0983-db66-59a9500936f9', 'wqwqwqw цуцуцуц', '2017-09-01 12:20:53', '2017-09-01 14:52:53', '1', '1', NULL, 0, '', NULL, 1, '838d76b5-f039-452c-f060-59a95005195b', 'Leads'),
('19e8feba-59f2-f084-2c60-59b645b90df8', '242344кцукукуцкц', '2017-09-11 08:10:40', '2017-09-11 09:31:17', '1', '1', NULL, 0, '', NULL, 1, '3bd563c6-65dc-e97a-3cfc-59b64503040f', 'bh_Card_ident'),
('1edc1f41-0ef2-8bdd-27c9-59afef548c9a', 'Qweqeqw', '2017-09-06 12:50:46', '2017-09-06 12:50:46', '1', '1', NULL, 0, NULL, NULL, 1, 'b55d023e-ae8f-cead-e37a-59afef888ffe', 'Leads'),
('2092e8a1-43a4-9fa8-7078-59a51d98a51b', '', '2017-08-29 07:52:20', '2017-08-29 07:52:20', '1', '1', NULL, 0, NULL, NULL, 1, '8fda4bce-7a45-4cea-a6a2-59a51d956d10', 'Documents'),
('3f730924-9e0e-4fc7-09a9-599a89587844', 'Тест Тестовый', '2017-08-21 07:21:19', '2017-09-07 08:39:21', '1', '1', NULL, 0, '', NULL, 1, '4a2d9def-1fda-713f-409f-599a892565f9', 'Leads'),
('577d52a6-c263-ef90-360e-59a521cfe7a8', '', '2017-08-29 08:12:25', '2017-08-29 08:12:25', '1', '1', NULL, 0, NULL, NULL, 1, '8420ca84-e12c-46af-d9b1-59a521ab1f0e', 'Documents'),
('5f6f641f-3406-2fba-461b-599bcbbfb408', 'аа', '2017-08-22 06:14:12', '2017-08-22 06:14:12', '1', '1', NULL, 0, NULL, NULL, 1, '559fa3be-40ba-9fe7-c560-599bcbc2bded', 'Leads'),
('6592ac77-d3b1-904c-7c85-59b10f184069', 'TEST', '2017-09-07 09:19:11', '2017-09-07 11:12:29', '1', '1', NULL, 0, '', NULL, 1, '1a850344-233e-e32f-fe21-59b10fc56fe1', 'Leads'),
('80b0f6f2-b3ff-83f9-e70a-59b0e01c3284', 'Bjbjbjb Erwe', '2017-09-07 06:00:10', '2017-09-07 06:00:10', '1', '1', NULL, 0, NULL, NULL, 1, '42592f10-786a-0ed0-3aa8-59b0e0dcb109', 'Leads'),
('8d5b5428-3c71-ba01-8928-59a50fdde953', 'Расчет возраста', '2017-08-29 06:52:28', '2017-08-29 08:31:48', '1', '1', NULL, 0, '', NULL, 1, '5f2441bd-29f9-1463-bdf0-59a50f636276', 'AOW_WorkFlow'),
('9375b16f-b9d7-d50d-f44a-59a51d726bf8', '', '2017-08-29 07:53:22', '2017-08-29 07:53:22', '1', '1', NULL, 0, NULL, NULL, 1, 'd3dc678c-5d73-00a6-06eb-59a51dfdf75b', 'Documents'),
('acfe415b-0961-2ed6-5ba9-59a50f67c5a7', '', '2017-08-29 06:53:49', '2017-08-29 06:53:49', '1', '1', NULL, 0, NULL, NULL, 1, 'b55c0f3e-abbf-da4c-0805-59a50fca9fe1', 'Documents'),
('ad2ec330-ef2b-d056-b7e0-59a67cffa90d', 'Пустая запись', '2017-08-30 08:51:25', '2017-09-01 11:26:22', '1', '1', NULL, 0, '', NULL, 1, '484a8025-f2a1-f64a-e028-59a67cff19a5', 'Leads'),
('b05132c3-b5ac-398c-3a50-59a51296cb1d', '', '2017-08-29 07:06:49', '2017-08-29 07:06:49', '1', '1', NULL, 0, NULL, NULL, 1, '13c9318f-c1df-e406-b28d-59a51296984b', 'Documents'),
('bdf00cfb-c61b-920a-6ece-59a512178a66', 'фамилия', '2017-08-29 07:06:47', '2017-08-29 07:06:47', '1', '1', NULL, 0, NULL, NULL, 1, '86bdbdc5-2a0a-fde9-d210-59a512d4d699', 'Leads'),
('cc9301e1-7910-e9eb-6e01-59a50f8de6d3', 'qwerty123', '2017-08-29 06:53:46', '2017-08-29 07:04:14', '1', '1', NULL, 0, '', NULL, 1, '832522a5-c2bf-1b3f-6541-59a50fc69935', 'Leads'),
('de10130f-d09e-6fc3-9cfa-59a511a574d4', '', '2017-08-29 07:04:18', '2017-08-29 07:04:18', '1', '1', NULL, 0, NULL, NULL, 1, '466a30cf-0cbe-58bf-53f3-59a5111e9f65', 'Documents'),
('ed5e9b69-9863-7bfe-2152-59a520b47604', '', '2017-08-29 08:08:19', '2017-08-29 08:08:19', '1', '1', NULL, 0, NULL, NULL, 1, '17f34406-be07-b7c2-d4be-59a520054121', 'Documents'),
('f1f4a11b-53a1-763e-8a7c-59b1116c38ca', 'Qwd', '2017-09-07 09:29:05', '2017-09-07 09:29:05', '1', '1', NULL, 0, NULL, NULL, 1, '10c2e549-c39f-7ef0-f7da-59b11183c89e', 'Leads'),
('f21e8df4-335a-4302-3d84-59b0e0639acd', 'Bjbjbjb Qqqqqqqqqqqqq', '2017-09-07 06:00:57', '2017-09-07 06:07:57', '1', '1', NULL, 0, '', NULL, 1, 'e32272a9-d480-2e6c-abc4-59b0e087ec6f', 'Leads');

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
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Дамп данных таблицы `aow_workflow`
--

INSERT INTO `aow_workflow` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `flow_module`, `flow_run_on`, `status`, `run_when`, `multiple_runs`) VALUES
('5f2441bd-29f9-1463-bdf0-59a50f636276', 'Расчет возраста', '2017-08-29 06:52:26', '2017-08-29 08:36:56', '1', '1', NULL, 1, '1', 'Leads', 'All_Records', 'Active', 'On_Save', 1);

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
  `push_sent` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('3bd563c6-65dc-e97a-3cfc-59b64503040f', '242344кцукукуцкц', '2017-09-11 08:10:39', '2017-09-11 09:31:17', '1', '1', NULL, 0, '1', '2017-09-06', NULL, 'active', 'active', 'by_client', NULL);

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
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('MySettings', 'tab', 'YTozNzp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6NjoiYmhfZmFxIjtzOjY6ImJoX2ZhcSI7fQ=='),
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
('notify', 'allow_default_outbound', '0'),
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
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents`
--

INSERT INTO `documents` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `document_name`, `doc_id`, `doc_type`, `doc_url`, `active_date`, `exp_date`, `category_id`, `subcategory_id`, `status_id`, `document_revision_id`, `related_doc_id`, `related_doc_rev_id`, `is_template`, `template_type`) VALUES
('13c9318f-c1df-e406-b28d-59a51296984b', '2017-08-29 07:06:46', '2017-08-29 07:06:46', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('17f34406-be07-b7c2-d4be-59a520054121', '2017-08-29 08:08:14', '2017-08-29 08:08:14', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('466a30cf-0cbe-58bf-53f3-59a5111e9f65', '2017-08-29 07:04:13', '2017-08-29 07:05:40', '1', '1', NULL, 1, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('8420ca84-e12c-46af-d9b1-59a521ab1f0e', '2017-08-29 08:12:21', '2017-08-29 08:12:21', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('8fda4bce-7a45-4cea-a6a2-59a51d956d10', '2017-08-29 07:52:14', '2017-08-29 07:52:14', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('b55c0f3e-abbf-da4c-0805-59a50fca9fe1', '2017-08-29 06:53:44', '2017-08-29 07:05:40', '1', '1', NULL, 1, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('d3dc678c-5d73-00a6-06eb-59a51dfdf75b', '2017-08-29 07:53:15', '2017-08-29 07:53:15', '1', '1', NULL, 0, NULL, '', NULL, 'Sugar', NULL, '2017-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

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
('66615e8e-93e9-52f6-1056-599a76627aee', 'yurenkoyura@gmail.com', 'YURENKOYURA@GMAIL.COM', 0, 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', 0);

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
('250f9c06-f8c8-8e51-8659-599bcdd98125', '250f9d5f-83a0-7ad1-c7d9-599bcd1a0506', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'Users', 1, 0, '2017-08-22 06:20:35', '2017-08-22 06:20:35', 0),
('6622d67b-9ccb-d01a-2459-599a767b9b8b', '66615e8e-93e9-52f6-1056-599a76627aee', '1', 'Users', 1, 0, '2017-08-21 05:56:19', '2017-08-21 05:56:19', 0);

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
('24f90ca0-ec90-4340-5057-599a760c357d', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('2ccb3cf0-2fb9-cf76-b59c-599a765ee3e6', '2013-05-24 14:31:45', '2017-08-21 05:56:19', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('57f00950-02b6-dbb7-4622-599a7692dfbc', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('8e730ef8-6afa-7261-c2c2-599a760b950a', '2017-08-21 05:56:19', '2017-08-21 05:56:19', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
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
('Callsasterisk_caller_id_c', 'asterisk_caller_id_c', 'LBL_ASTERISK_CALLER_ID', '', 'trimmed callerId', 'Calls', 'varchar', 45, 0, NULL, '2017-08-21 07:13:45', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_call_id_c', 'asterisk_call_id_c', 'LBL_ASTERISK_CALL_ID', '', 'This is the unique id assigned to this call by the PBX, Useful for debugging but otherwise no reason to display to an end user.', 'Calls', 'varchar', 45, 0, NULL, '2017-08-21 07:13:45', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_inbound_ext_c', 'asterisk_inbound_ext_c', 'LBL_ASTERISK_INBOUND_EXT', '', 'Contains the inbounded extension.  This is useful for identifying the queue or ringgroup that the call came in on.', 'Calls', 'varchar', 45, 0, NULL, '2017-08-21 07:13:45', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_user_ext_c', 'asterisk_user_ext_c', 'LBL_ASTERISK_USER_EXT', '', 'Contains the user extension that answered or placed the call.', 'Calls', 'varchar', 45, 0, NULL, '2017-08-21 07:13:45', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
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
('Usersasterisk_ext_c', 'asterisk_ext_c', 'LBL_ASTERISK_EXT', '', '', 'Users', 'varchar', 45, 0, NULL, '2017-08-21 07:13:45', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, ''),
('Usersasterisk_inbound_c', 'asterisk_inbound_c', 'LBL_ASTERISK_INBOUND', '', '', 'Users', 'bool', 45, 0, '0', '2017-08-21 07:13:45', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, ''),
('Usersasterisk_outbound_c', 'asterisk_outbound_c', 'LBL_ASTERISK_OUTBOUND', '', '', 'Users', 'bool', 45, 0, '0', '2017-08-21 07:13:45', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, '');

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
  `ukrpasport_nom` varchar(10) DEFAULT NULL,
  `ukrpas_kemvidan` varchar(255) DEFAULT NULL,
  `ukrpas_datavidachy` date DEFAULT NULL,
  `placebirth` varchar(30) DEFAULT NULL,
  `zagrpasport_nom` varchar(10) DEFAULT NULL,
  `zagrpas_kemvidan` varchar(255) DEFAULT NULL,
  `zagrpas_datavidachy` date DEFAULT NULL,
  `pasport_nom_nerezident` varchar(10) DEFAULT NULL,
  `zagrpas_date_end` date DEFAULT NULL,
  `nerezpas_date_vidachi` date DEFAULT NULL,
  `nerezpas_date_end` date DEFAULT NULL,
  `vidnazhit_nom` varchar(10) DEFAULT NULL,
  `vidnazhit_date_vidachi` date DEFAULT NULL,
  `vidnazhit_date_end` date DEFAULT NULL,
  `problem_law` text,
  `judded_by_article` varchar(255) DEFAULT NULL,
  `family_status` varchar(100) DEFAULT NULL,
  `realty` text,
  `realtyby` text,
  `realty_vid` varchar(100) DEFAULT NULL,
  `srok_vladenya_nedvizh` varchar(255) DEFAULT NULL,
  `transport_owner1` varchar(100) DEFAULT NULL,
  `how_buytransport1` varchar(100) DEFAULT NULL,
  `yearissuetrans1` int(11) DEFAULT NULL,
  `trans1_manufacturer` varchar(50) DEFAULT NULL,
  `model_trans1` varchar(50) DEFAULT NULL,
  `transport_owner2` varchar(100) DEFAULT NULL,
  `how_buytransport2` varchar(100) DEFAULT NULL,
  `yearissuetrans2` int(11) DEFAULT NULL,
  `trans2_manufacturer` varchar(50) DEFAULT NULL,
  `model_trans2` varchar(50) DEFAULT NULL,
  `volume_trans1` decimal(10,1) DEFAULT NULL,
  `volume_trans2` decimal(10,1) DEFAULT NULL,
  `transport_owner3` varchar(100) DEFAULT NULL,
  `transport_owner4` varchar(100) DEFAULT NULL,
  `how_buytransport3` varchar(100) DEFAULT NULL,
  `how_buytransport4` varchar(100) DEFAULT NULL,
  `yearissuetrans3` int(11) DEFAULT NULL,
  `yearissuetrans4` int(11) DEFAULT NULL,
  `trans3_manufacturer` varchar(50) DEFAULT NULL,
  `trans4_manufacturer` varchar(50) DEFAULT NULL,
  `model_trans3` varchar(50) DEFAULT NULL,
  `model_trans4` varchar(50) DEFAULT NULL,
  `volume_trans3` decimal(10,1) DEFAULT NULL,
  `volume_trans4` decimal(10,1) DEFAULT NULL,
  `fuel_type_trans1` varchar(50) DEFAULT NULL,
  `fuel_type_trans2` varchar(50) DEFAULT NULL,
  `fuel_type_trans3` varchar(50) DEFAULT NULL,
  `fuel_type_trans4` varchar(50) DEFAULT NULL,
  `type_owner_trans1` varchar(50) DEFAULT NULL,
  `type_owner_trans2` varchar(50) DEFAULT NULL,
  `type_owner_trans3` varchar(50) DEFAULT NULL,
  `type_owner_trans4` varchar(50) DEFAULT NULL,
  `zalog_trans1` tinyint(1) DEFAULT '0',
  `zalog_trans2` tinyint(1) DEFAULT '0',
  `zalog_trans3` tinyint(1) DEFAULT '0',
  `zalog_trans4` tinyint(1) DEFAULT '0',
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
  `child_count` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`, `lead_status`, `lead_sex`, `resident`, `inn`, `date_birthday`, `soc_status`, `statliveplace`, `education`, `ukrpasport_nom`, `ukrpas_kemvidan`, `ukrpas_datavidachy`, `placebirth`, `zagrpasport_nom`, `zagrpas_kemvidan`, `zagrpas_datavidachy`, `pasport_nom_nerezident`, `zagrpas_date_end`, `nerezpas_date_vidachi`, `nerezpas_date_end`, `vidnazhit_nom`, `vidnazhit_date_vidachi`, `vidnazhit_date_end`, `problem_law`, `judded_by_article`, `family_status`, `realty`, `realtyby`, `realty_vid`, `srok_vladenya_nedvizh`, `transport_owner1`, `how_buytransport1`, `yearissuetrans1`, `trans1_manufacturer`, `model_trans1`, `transport_owner2`, `how_buytransport2`, `yearissuetrans2`, `trans2_manufacturer`, `model_trans2`, `volume_trans1`, `volume_trans2`, `transport_owner3`, `transport_owner4`, `how_buytransport3`, `how_buytransport4`, `yearissuetrans3`, `yearissuetrans4`, `trans3_manufacturer`, `trans4_manufacturer`, `model_trans3`, `model_trans4`, `volume_trans3`, `volume_trans4`, `fuel_type_trans1`, `fuel_type_trans2`, `fuel_type_trans3`, `fuel_type_trans4`, `type_owner_trans1`, `type_owner_trans2`, `type_owner_trans3`, `type_owner_trans4`, `zalog_trans1`, `zalog_trans2`, `zalog_trans3`, `zalog_trans4`, `orgname`, `org_legal_form`, `org_size`, `org_sphere`, `org_position`, `org_specialization`, `orgwork_date_start`, `org_owner`, `org_work_months`, `org_work_years`, `org_workstage_months`, `org_workstage_years`, `org_earn_method`, `org_earn_level`, `org_debentures`, `debet_type`, `debet_type_level`, `level_volume`, `room1_number`, `room2_number`, `flat1_dateregister`, `regist_term_months_flat1`, `regist_term_years_flat1`, `flat2_datelivestart`, `regist_term_months_flat2`, `regist_term_years_flat2`, `work_address_street`, `work_address_city`, `work_address_state`, `work_address_index`, `work_address_country`, `work_room_number`, `skype_account`, `viber`, `facebook`, `vk`, `twitter`, `ok`, `googleplus`, `odnokl`, `instagram`, `phone_addr_registr`, `phone_addr_fact`, `phone_contact_face`, `account_num`, `bank_name`, `bank_mfo`, `bank_emitent_name`, `bank_emitent_mfo`, `card_num`, `overdraft`, `credit_rating`, `age`, `first_name2`, `last_name2`, `message_to_assigned`, `patronymic`, `child_count`) VALUES
('10c2e549-c39f-7ef0-f7da-59b11183c89e', '2017-09-07 09:28:59', '2017-09-07 09:28:59', '1', '1', '', 0, '1', '', '', 'Qwd', NULL, NULL, NULL, 0, NULL, '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '', '', 'New', '', NULL, '', NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 'http://', '', 'man', 0, '1312313231', NULL, '^^', '^^', '', '', '', NULL, '', '', '', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '^^', '', 'unmarried', '', '', 'once', '', '', '', 0, '', '', '', '', 0, '', '', '8.9', '0.0', '', '', '', '', 0, 0, '', '', '', '', '0.0', '0.0', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', '', '', NULL, 0, '', '', '', '', '^^', '', 0, '', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', '', '', '', 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', '', '', '', NULL, '', '', '', '', '', '0.000', '0.000', 0, '', '', '', '', 0),
('1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 09:19:04', '2017-09-07 11:12:23', '1', '1', NULL, 0, '1', NULL, NULL, 'TEST', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'New', NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, NULL, 'http://', NULL, 'man', 0, '4648686464', NULL, '^^', '^^', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '^^', NULL, 'unmarried', '^^', '^^', 'once', NULL, NULL, NULL, 1970, NULL, NULL, NULL, NULL, 1971, NULL, NULL, '2.5', '3.2', NULL, NULL, NULL, NULL, 1972, 1973, NULL, NULL, NULL, NULL, '0.0', '0.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '^^', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', 'http://', 'http://', NULL, 'http://', 'http://', 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', '0.000', 0, NULL, NULL, NULL, NULL, 2);

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
('198a36d7-d0eb-cfbe-3767-59aced56d740', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-09-04 06:07:12', '1', 'phone_work', 'phone', '+38063789456', '+38(063) 123-45-67', NULL, NULL),
('20c24308-0e75-ad33-3203-59a4106b81a2', '4a2d9def-1fda-713f-409f-599a892565f9', '2017-08-28 12:47:33', '1', 'phone_work', 'phone', '102', '+38063789456', NULL, NULL),
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
('d96ab0f8-560b-d736-b0c8-59a96d058b2e', '838d76b5-f039-452c-f060-59a95005195b', '2017-09-01 14:22:43', '1', 'assigned_user_id', 'relate', '1', 'eff07114-603c-c0d2-0e5e-599bcd264773', NULL, NULL),
('e0bac5ef-9656-7f1b-4bdc-59b1167fe228', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 09:52:07', '1', 'volume_trans1', 'decimal', '0.0', '2.5', NULL, NULL),
('e73425cc-e934-43cf-3d13-59b129f47c3a', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 11:12:23', '1', 'yearissuetrans2', 'enum', NULL, '1971', NULL, NULL),
('e7efa56e-6d64-020c-1c08-59b1293a2a78', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 11:12:23', '1', 'yearissuetrans3', 'enum', NULL, '1972', NULL, NULL),
('e8e9af67-9ca5-d096-3d7d-59b129784f3b', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 11:12:23', '1', 'yearissuetrans4', 'enum', NULL, '1973', NULL, NULL),
('ef9f7dc3-f671-889e-5a1d-59b116679a84', '1a850344-233e-e32f-fe21-59b10fc56fe1', '2017-09-07 09:52:07', '1', 'volume_trans2', 'decimal', '0.0', '3.2', NULL, NULL);

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
('10c2e549-c39f-7ef0-f7da-59b11183c89e', 0.00000000, 0.00000000, NULL, NULL),
('1a850344-233e-e32f-fe21-59b10fc56fe1', 0.00000000, 0.00000000, '', ''),
('3e372765-5b6e-54bd-3f65-59aea194b1e0', 0.00000000, 0.00000000, '', ''),
('42592f10-786a-0ed0-3aa8-59b0e0dcb109', 0.00000000, 0.00000000, NULL, NULL),
('484a8025-f2a1-f64a-e028-59a67cff19a5', 0.00000000, 0.00000000, '', ''),
('4a2d9def-1fda-713f-409f-599a892565f9', 0.00000000, 0.00000000, '', ''),
('559fa3be-40ba-9fe7-c560-599bcbc2bded', 0.00000000, 0.00000000, NULL, NULL),
('711acfc9-ba15-32d6-171e-59affbea8e58', 0.00000000, 0.00000000, NULL, NULL),
('832522a5-c2bf-1b3f-6541-59a50fc69935', 0.00000000, 0.00000000, '', ''),
('838d76b5-f039-452c-f060-59a95005195b', 0.00000000, 0.00000000, '', ''),
('86bdbdc5-2a0a-fde9-d210-59a512d4d699', 0.00000000, 0.00000000, NULL, NULL),
('b55d023e-ae8f-cead-e37a-59afef888ffe', 0.00000000, 0.00000000, NULL, NULL),
('e32272a9-d480-2e6c-abc4-59b0e087ec6f', 0.00000000, 0.00000000, '', '');

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
('63265c44-f3fe-8e42-1f78-599a76c05b05', 'system', 'system', '1', 'SMTP', 'other', '', 25, '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

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
('12552067-333b-27a6-4918-59b66c13547c', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12ce9908-985f-b7d1-d5e9-59b66cca307b', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12d22cde-4828-f8d8-aece-59b66cfc0329', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1310aa10-1ef3-e65e-5ac8-59b66ccd502b', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('13565e6d-2e23-70dc-7ef1-59b66c59c8cc', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('138da1fc-0639-a0ea-af91-59b66c63eee1', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('13cfc417-aa62-22f2-04d4-59b66ce5a1fd', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('140e4d2e-c803-c0da-681b-59b66cc4f190', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1411d189-e643-16d2-4e05-59b66cf9ae2a', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('14505968-37b1-4a7d-63c1-59b66cc59a9f', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('148b41de-0ab9-b57e-b7d0-59b66c4cd93f', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14cd55aa-4a3d-213a-c6f3-59b66c9e0f31', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('1588d539-056f-aa91-c609-59b66c94aaf1', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('15b1ea43-3e4a-2184-de86-59b66cb48280', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15c758e9-c6a9-fb0e-0cb5-59b66c7d39ac', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('15f06468-f110-8eb5-9af8-59b66c99c82c', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('16446ed5-90a5-7b8b-cf47-59b66cca35ab', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('16c161ea-255d-9e8c-ecc0-59b66cd4c285', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('16ffeeea-1887-c1b6-f05a-59b66c2f9fb7', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('177ce4f6-47eb-5f48-8384-59b66c364036', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('178d0a8a-c375-f536-c961-59b66c80c4f6', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17f9eb68-bc7b-5032-0020-59b66c3b7752', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('1876ee06-ad1f-ac2e-8926-59b66cd4ff31', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('18f3e927-5d7a-7909-bc85-59b66c61c5a5', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('193268f4-9e5d-5cf9-58d4-59b66c4e71d3', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('19af6a06-8616-5949-23e6-59b66ca5daaa', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('19ede782-23e0-7b1a-15a5-59b66c2c1898', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('1a2c620c-aa73-33ab-6b94-59b66c322e5f', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('1aa97c85-88cf-ddd6-1947-59b66cf47ed3', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('1aca05af-2cac-a404-0aef-59b66c3653c6', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ae7f4f4-e2f8-160d-ed24-59b66c530703', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('1b64f0fe-19bd-3355-e1ef-59b66cda787d', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('1ba37690-b468-a0b8-1d59-59b66c3a4025', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('1c207dfe-5991-ca59-30f9-59b66c9f7a4c', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('1c9d7f62-4b9c-ba0c-e4f5-59b66c07a501', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('1cdbf255-d979-44ef-270a-59b66c42249f', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('1d58f5fd-950c-9464-0867-59b66ca81d34', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('1dd5f96d-9c89-16ea-8a09-59b66cb93c95', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('1e147555-5f72-9085-3435-59b66c59da0f', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('1e411e4d-421a-dd2b-56d6-59b66c652516', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('1e7f9007-bf00-8d22-adad-59b66c37fe53', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e91797a-7952-2e80-db8f-59b66c7a044c', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('1efca8eb-9b4f-d14c-3260-59b66c31dd5e', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f0e7e9e-7917-36ff-f412-59b66cfa618a', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('1f3b21f1-d2ab-fce5-5e37-59b66cbcc866', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f8b70f2-b6fc-dff1-294d-59b66c485212', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('1fb82b2a-642a-bfae-6005-59b66cc36eec', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fc9f08d-ef75-03b0-1910-59b66cb9bb36', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('1ff6a09a-6409-4910-77df-59b66c568d96', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('20470981-d625-111c-2c31-59b66c3ea81f', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('2073ae25-7fb0-cfde-339f-59b66c72ae75', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('20f0a42d-3a35-7504-1b52-59b66c2c8d96', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('21028d7e-4868-6e6d-7b64-59b66c776de6', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('212f26e4-e9ba-f194-aaa6-59b66cca8058', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('217f8e60-8748-fbca-29f8-59b66cf2313e', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('21eaabf8-fa1f-065b-b41f-59b66cb7be10', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21fc83b7-a37b-f52e-18d1-59b66cd05485', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('229a0c1e-cfb1-aaea-2857-59b66c8f3622', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22f68583-8e96-26b1-cbc0-59b66c8b9aa3', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('2331714d-bf92-8186-4e0e-59b66ce75890', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23ae7162-5c8b-11d9-1431-59b66c7502cd', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23f091af-1ddd-57d2-7630-59b66c49d1cd', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('242b8498-59ee-4872-d3e8-59b66ca34bd0', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24666076-0c7d-f919-ab70-59b66c0ee4a7', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('246d97c4-c1dd-f8f9-296e-59b66c1480ff', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('24ac1c08-53d7-bbbf-cacd-59b66cd82c9a', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('24e37d6f-30b1-f545-a2a5-59b66ca033f0', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2521f45e-938b-3a86-4f0e-59b66cdb4c41', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('252917ce-c7dd-e063-cbc4-59b66c1d217d', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('25679412-0af1-b0bc-00ea-59b66cb8e0e0', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('259ef70d-0a5f-8c47-d13e-59b66c4d8c5e', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('25e49d7e-5f1f-a9f0-e096-59b66c3ee044', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('261bf95e-cca6-6e3b-b987-59b66cf12b92', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26231936-ed55-8e76-cec5-59b66c38e32c', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('26820392-015f-1bb3-be8c-59b66c0bd201', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26a0167a-5d7e-6f5b-4801-59b66cb70f9e', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('26de92e7-a328-f65b-bdd5-59b66c4601ff', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('275ba820-0f8d-6348-9437-59b66cc021aa', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('27d8a1b0-8d74-f726-51e0-59b66c5dbbfe', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('281721b2-5b1e-8c68-291c-59b66c53a062', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('289428dc-03df-3a21-48fd-59b66c2b8df5', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('28d2a841-a11d-f1d1-517b-59b66c37670b', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('294fa929-93a3-1a43-3259-59b66c069c8c', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('298e2f93-213b-1d96-c3bd-59b66ce290d4', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('2a0b29cd-9cd2-08be-f8c4-59b66cf434f0', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('2a49a208-2d65-6d96-b5cc-59b66c5772a9', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('2a72b093-19eb-463e-82ea-59b66c84d724', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ac6ad84-1091-4cee-a53c-59b66c21e668', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('2aefb7a9-1a13-9408-eb93-59b66c64095b', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b05247e-d693-90b8-7014-59b66c9555c2', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('2b2e3eaf-8ef5-dfee-063d-59b66c04c3fc', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b6cb888-20f0-03a6-fe39-59b66ccd3032', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('2bc0bcd8-411f-ac03-9e95-59b66c499aa4', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('2be9baa4-61de-308c-3979-59b66ccab509', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('2c28386f-63a6-4502-b57f-59b66c1bcf31', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2c3dbe00-605c-f549-f592-59b66c6cba48', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('2c66cff2-acf0-86c3-9e9c-59b66cc0b389', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2c7c32e2-6567-592a-29e0-59b66c7631d1', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('2cf938a2-f7d9-d793-8d37-59b66c96e71b', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('2d37bc62-ebe5-2709-3238-59b66ca1bc0c', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('2d9f4d91-6a80-724e-ae10-59b66cee5690', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2da9fb45-0180-7eaa-164e-59b66c4c7e3b', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2db4bbce-5d6d-5a51-772b-59b66cf9e42e', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('2df33888-e77a-b7fc-c12b-59b66c11d670', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('2e1c4d10-0b01-72ab-78dc-59b66cef427b', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2e520b29-39b4-b8d4-344f-59b66cb871a5', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('2e6580ba-ec1e-21d1-a030-59b66c644615', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e99411a-eba4-f8d7-8329-59b66c079c8b', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2edefb66-c9b3-a32c-63a2-59b66c10312b', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f16434e-8e3a-77ec-c480-59b66cf55a5c', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2f1d7f50-78ed-9617-ae80-59b66c7792a4', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f2101ed-284f-512f-9a49-59b66c20552a', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('2f54c1fc-242b-45b2-fef6-59b66c068c5d', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('2f9a7fa6-467b-649f-c02c-59b66c4080d3', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fd8f420-41ea-18a1-2b39-59b66c351b7e', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('3025c8b5-614f-d530-5041-59b66c924ad6', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('30644875-a300-fb00-943c-59b66cacb600', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('311fce11-88c3-7e00-05fe-59b66c83962e', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('319cc4e7-70b3-5c32-4743-59b66cd7226a', 'bh_card_ident_leads', 'bh_Card_ident', 'bh_card_ident', 'id', 'Leads', 'leads', 'id', 'bh_card_ident_leads_c', 'bh_card_ident_leadsbh_card_ident_ida', 'bh_card_ident_leadsleads_idb', 'many-to-many', NULL, NULL, 0, 0),
('323a0f49-12fd-357f-0410-59b66c31d981', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33580256-6961-f393-a6c0-59b66cc2c669', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33cbb561-117e-04ce-dd18-59b66c7074ca', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('340a3ad3-b3a5-405c-3df8-59b66c874c89', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3478f921-181b-f62b-95fc-59b66ca88604', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34f5fdc0-5086-7dee-aa73-59b66cf22fee', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3572f00e-7293-b865-06f9-59b66c413bef', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35814c12-e7c6-3335-9a5e-59b66cdd0943', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35eff9a0-953f-8d2c-60ac-59b66c72ed79', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('36220c9a-4b88-08f9-35ed-59b66cc8084e', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('366cfc93-95a2-f50b-7f77-59b66c496f92', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('3771bd5d-3a3e-c1cc-b3ac-59b66cca533a', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('389be003-2d05-9db9-50d3-59b66c86112c', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b280952-316b-4748-6849-59b66c1e1169', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c0e26eb-97e2-ce72-68e7-59b66c7aa5b7', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c8b2ac7-0788-58f7-6c1e-59b66c525a05', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3df2018f-03ed-8e9f-42de-59b66ce277d9', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4000e8d5-1150-8de8-21cc-59b66cfc62b4', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('403f6f57-c940-c0de-ff0a-59b66c04183d', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40bc60f3-2478-6402-5767-59b66c4830eb', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41da0cae-c762-44c0-e607-59b66c9f5000', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('422198ee-5596-9353-b981-59b66c958674', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42f80bd0-ba16-e33f-3f98-59b66c97b39b', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43e00f76-2a5d-f2af-155f-59b66c65899f', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('4558d9fd-e70e-f01b-1da4-59b66cf7dc55', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45d5d33c-8be0-ecab-15f7-59b66cf7d5ad', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4614544d-0f7e-d81d-81f2-59b66c9d6aa9', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46566d4c-bfbd-72c6-c239-59b66c322ddd', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46915df0-087a-85eb-c73e-59b66c3b6411', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('46cfd0d2-bc9a-111d-a20f-59b66c37bf0e', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('46e00887-411c-7762-5891-59b66c654153', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('470e58df-682c-10fc-7142-59b66ce50bae', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('4711f8bd-8eaf-d0b3-077c-59b66c3264bf', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47cd7977-c932-760f-5fed-59b66c7d8294', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('4888f137-628f-a121-026c-59b66c21c6a7', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49aa0972-0a37-72ee-6430-59b66cb41405', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49f54c27-5fa4-153b-db73-59b66c234003', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a724173-adf7-bf7e-fccc-59b66c141337', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ab0ca40-233a-7f3b-33b2-59b66c912f01', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ab4561d-af7a-fe75-6ce5-59b66c08b94e', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b2dc78e-ef93-aeca-ea13-59b66c9cca3d', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('4b315e53-874a-4683-7a9f-59b66c13d8ff', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b6c4700-28b5-7986-46c2-59b66cee5a54', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bae50df-92b5-256e-0d56-59b66cb44cbd', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d301349-07a4-37ea-88bb-59b66c360c91', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('517a001b-deec-cd6b-a9d4-59b66ca16ccb', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55f31330-4351-8222-b881-59b66c325b7f', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56000ad6-40b1-d051-d028-59b66c802285', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56701f93-e240-8023-da4e-59b66c8a1bcd', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56ae9550-4a45-a7ae-b1f9-59b66c22bc74', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('594a0359-be59-6bcf-8673-59b66ca843f6', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a9a396e-4569-a9a9-186d-59b66c76112a', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b173bfd-2254-a54b-0d87-59b66c0fec6c', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b55b977-ebe7-74a0-f1f7-59b66c1a988d', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5bd2bb9e-73f3-ded8-76ab-59b66c4bf9ba', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c14ddd5-b9b5-9a0f-1944-59b66c7b6799', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('611b0634-d364-5c02-557e-59b66c35d130', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65030c0a-50ae-be25-bd7c-59b66cb4f6bc', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6554ccd2-a797-5190-7c03-59b66c5d422d', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6593522d-449e-becb-ea1d-59b66c8b359f', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('661052b2-1cb1-1a48-b9db-59b66cae5938', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66408dd2-143f-8498-2477-59b66c177286', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('668d53f4-2fff-b626-1031-59b66cbf08c5', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66fc0ac1-eebf-4cd9-b806-59b66c39f20f', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('677906dd-338e-6093-a077-59b66cfc64c2', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67f99913-6c75-f0dc-c77c-59b66ced1d29', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('68348a78-b4ba-b7b5-653d-59b66c277377', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('6876a869-9cca-8e7a-6723-59b66c7a8abd', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68b18982-dc00-e886-8510-59b66c1b4a69', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('68b52844-3c09-1640-9a3e-59b66c4666a0', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('692e9bd9-6510-966b-00b9-59b66c327037', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('69ab9f22-4ac9-c772-a769-59b66cb4bc08', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a289b94-5890-58e0-7f36-59b66c066bf1', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6ab051f6-754d-bafa-9e6c-59b66ce02cc2', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ae41582-c0a8-c107-f21e-59b66c41a1e8', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6aeede19-612b-cfaa-5127-59b66c2b5642', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b347b61-3b4e-38f4-7fad-59b66c86e283', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b61199f-4f7d-5d80-fcf5-59b66c4b521f', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6b6bd676-f9f5-93f3-2cab-59b66cda353f', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bb17184-6f72-a07b-4000-59b66c82c24f', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6beff7f4-28b6-904e-9d8a-59b66c582f5f', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c1c9e55-83c5-b8cb-cb24-59b66c9eccca', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6c6cf524-0168-1888-f7d7-59b66c430490', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c999bf0-d408-9698-e5e9-59b66cdb9067', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6c9d318f-28ae-73a8-b442-59b66c221a81', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6cd30085-2ad3-6af0-faf0-59b66c367474', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d55285e-3689-c6f9-51c6-59b66c808fd3', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('720e2c1b-b7b8-3d1a-e856-59b66c56c4d7', 'bh_card_ident_modified_user', 'Users', 'users', 'id', 'bh_Card_ident', 'bh_card_ident', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('728b2d5f-8a7b-a024-d1a8-59b66cb9a3da', 'bh_card_ident_created_by', 'Users', 'users', 'id', 'bh_Card_ident', 'bh_card_ident', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72c9adeb-68d1-9faa-90cb-59b66cb94376', 'bh_card_ident_assigned_user', 'Users', 'users', 'id', 'bh_Card_ident', 'bh_card_ident', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7346a4d8-0312-c61b-b077-59b66cdc9177', 'securitygroups_bh_card_ident', 'SecurityGroups', 'securitygroups', 'id', 'bh_Card_ident', 'bh_card_ident', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_Card_ident', 0, 0),
('75ef024f-18c7-e363-edc0-59b66c819cca', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('762d822b-4f6e-80f1-b3b6-59b66c5d87ba', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76aa93f5-469a-77aa-f48a-59b66c62dddc', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7727965e-cb20-ff98-c876-59b66c5f76de', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79989d77-80ba-a57c-800b-59b66c054f6d', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('7b0c0794-cbe2-ed90-1739-59b66c7ce842', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b4a8ca8-2389-a0e6-1b41-59b66ce1e96a', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bc7998e-b18a-7ec2-e51b-59b66c62d544', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e7e4146-f06e-bdfc-f7b6-59b66cc44cfa', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ed003ce-73c1-2f0d-72fe-59b66c2c037e', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7efb434e-f8e2-f7ab-00e2-59b66cac5a51', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f784701-d41c-ddc8-ca49-59b66c5d1f4c', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fb6cc64-6b1d-e23d-9a28-59b66c8afac8', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('8033c309-ec77-8fe6-9211-59b66caa1d9d', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80b0cfd0-167b-5319-0969-59b66c037b7e', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('819c7a86-d345-ddb1-9e06-59b66caa9795', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82198bf6-2d15-d5b6-b834-59b66cb86a7e', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82580567-36ec-692a-949e-59b66c0eb48f', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82d50daa-84fe-1d06-4ab8-59b66c426033', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('83908001-5cac-8c29-f266-59b66cdef505', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('83e0e463-e611-3e35-0814-59b66cca7fe8', 'bh_faq_modified_user', 'Users', 'users', 'id', 'bh_faq', 'bh_faq', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('840d8315-2236-7d57-a236-59b66c71c3af', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('841f6bf0-9cac-2d15-d0fb-59b66c9f4f0d', 'bh_faq_created_by', 'Users', 'users', 'id', 'bh_faq', 'bh_faq', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('844c0664-0091-a1fc-a11b-59b66cee84d9', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('845de15f-88ee-3c77-33ad-59b66c1a59e4', 'bh_faq_assigned_user', 'Users', 'users', 'id', 'bh_faq', 'bh_faq', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('848a8a47-57fb-a53f-8656-59b66c35a08a', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84daef2d-6d7e-6610-cda2-59b66c1862ca', 'securitygroups_bh_faq', 'SecurityGroups', 'securitygroups', 'id', 'bh_faq', 'bh_faq', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'bh_faq', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('85078f64-84f7-e9c5-7e9d-59b66c5797ea', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85460425-db91-9066-4788-59b66c5628be', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85848024-d759-bdb3-40eb-59b66c7fd98d', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('85bf75cd-945e-12ba-94b7-59b66c1a1fa7', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8608bd04-ae7d-aef8-5455-59b66c442a1c', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('863c7ffe-dafe-1fee-b256-59b66c36d951', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86473013-6a64-953b-f831-59b66c0e2a46', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('867afe29-2cfb-552b-a307-59b66cd1e825', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86bd1ebf-f108-1cd7-a41b-59b66cb6023d', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('86f80e40-7e63-b303-3d8f-59b66c02fe68', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('873a16f7-1d89-846d-71a2-59b66c6752ad', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('877506dd-d1ae-fe9a-b20e-59b66cf54931', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('87b7180a-785a-1ad5-acfa-59b66c00e01b', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87f20a40-3d69-cda0-d7ad-59b66c2a587f', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('87f59104-b456-0229-afd6-59b66c7f1dc8', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('886f0218-d96d-ff4b-122b-59b66ce51b9b', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('88729bf0-bc9e-17a2-74a7-59b66c8b53e1', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88ec0d4c-31df-85ba-b5e0-59b66c991228', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('88ef9ac8-5f31-25a6-4c77-59b66c68725f', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89690195-c7a7-bbd8-d900-59b66cf47b27', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('89e60c32-9a28-8d8e-b268-59b66c31aa28', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d20e691-f01f-03d1-57e8-59b66c4b9271', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d247ff7-13c9-dd80-74eb-59b66c7053f3', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d62f57c-6322-65ab-1450-59b66c08b915', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d9deda4-e4b1-4e3c-4869-59b66cce2d3d', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e1ae3a4-17e0-0dbe-5d82-59b66c8dff08', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e596888-9bae-ad46-284a-59b66c6ad6cf', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('8e97e06c-0c34-72ac-7416-59b66cb53e28', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f14e5a4-11e3-4e8a-97ec-59b66c9c7b85', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f5368c0-9acf-5422-6e02-59b66c127348', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92f5d19d-06b2-b304-92b5-59b66c040a51', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('933450cb-7873-7dab-0230-59b66c4ef75d', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9372dda3-32bb-5441-7c3c-59b66cfbdda6', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('952be577-d683-456f-b0e0-59b66c290158', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('956a7269-7805-27c6-92a5-59b66c2d7791', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95e77378-ba33-0699-7694-59b66cb47d12', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bc71090-d10b-e3db-d35c-59b66ca2499e', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c441cfb-f33e-324f-a553-59b66caae3bc', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9deee4f0-2ee2-a2ab-c350-59b66c035bb1', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e6be1a7-0265-00f1-b49e-59b66ca10aec', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9eb8b9c8-657f-9fe3-0c50-59b66c67a5ef', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ee8e713-4368-73a8-34ac-59b66c1cf188', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f23d0bd-3dab-6da8-bd5d-59b66cd9c359', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f276e07-81e1-a8ed-a5d6-59b66cb5daf7', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('9f35b5ae-c7ee-d41e-ba3e-59b66c5558b1', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f625fbb-c58d-c4f7-1821-59b66ce560f1', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fb2b87c-d507-d66a-93da-59b66cca32c5', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fdf517c-c08b-5625-c650-59b66c74f819', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fe2f515-b444-9988-208a-59b66cee833c', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('9ff130de-d988-7a8a-4811-59b66caceec4', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('a0217e8f-396e-b625-1e56-59b66cc7c8ee', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a05c563a-ac83-fa21-59f3-59b66c105f6b', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('a06e3090-582e-b8b7-1d66-59b66c28457a', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a09e70d3-233d-257b-5746-59b66c766e89', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0acc853-4ffe-71b5-63fe-59b66c68eff9', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0d9644e-e023-9367-9377-59b66c30c6e9', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a0dcf686-8472-5470-c082-59b66ce8fcfe', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a11b755f-e645-e91b-2dba-59b66cf6914f', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a129c793-7838-61d0-54a4-59b66ca61aee', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1566744-a201-dbcb-4aeb-59b66cdf959e', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a159f0a1-8880-a04c-d580-59b66c135e49', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a194e758-5903-f7bb-6916-59b66c43c980', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a1d6f071-771a-7901-37b7-59b66c224448', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a211eb66-ef90-d5b1-2f93-59b66c064dbe', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a2157749-64fd-c7f2-33d4-59b66c5c375c', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a253ff3b-50e7-68bd-b874-59b66ce68352', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a28eee0d-45d2-2567-3ad0-59b66ccf4358', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a2cd619c-bd6c-a790-3e3c-59b66cd975e8', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2d0f8ac-b6ba-72cf-6e21-59b66c104f97', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a30f7a67-c2dc-f0e6-ad6a-59b66ce822ea', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('a34a6c0b-0fd5-dae9-f297-59b66c74a46f', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a34df3fd-3cff-4da0-73b9-59b66c3cc48b', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3cb0818-8162-e5a8-46d2-59b66c727cb8', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4098cdf-e06a-e37a-9949-59b66c777ac1', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a50aa625-8392-1072-bbdb-59b66ceb61d0', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a587ad92-a280-08ad-aa19-59b66c38c233', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5c62199-c216-afa9-ee4f-59b66c47770d', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a63873de-1a30-b768-0be0-59b66c782f93', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6b57b45-d92c-fb47-586b-59b66cd762de', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('a6f3f921-cd40-0d0b-2744-59b66c7d1691', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a7a501e0-cb5d-2102-9995-59b66ca9f1e3', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8b7c96c-2f41-15cc-068d-59b66cd57cf8', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a934c63b-ed5d-273e-4f20-59b66c75249e', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a97345f2-10ad-9f06-16a4-59b66c9488d9', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab8d062d-15ac-93c7-2dd4-59b66c8ab6e6', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad206829-5cfd-751d-32c6-59b66c8c2566', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad9d714b-3c5b-1da0-e8e5-59b66ce7cd52', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af483567-4f76-8919-82dd-59b66c7d968f', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1b22d90-24fc-0b45-c5d5-59b66cf7c305', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b22f2f33-50ee-ce2f-e8d9-59b66c0be04c', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2ac2a74-ad23-4862-5fa0-59b66c1c2a1f', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b32926fc-0928-b475-bd8f-59b66cafcf4a', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b35d062e-230a-686e-e1e5-59b66cb1114c', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3a622ad-ca24-7349-890a-59b66c9eb490', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3ef6ad5-3375-4f45-a801-59b66cf6f62c', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b46c6138-d812-49c6-2fec-59b66cea7c30', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4e96dfb-5dbc-2b4c-49f2-59b66ca6815f', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b61e5ae4-60e2-e7b1-95f4-59b66c758f90', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b663f6ad-cfeb-869b-fae6-59b66c5376f8', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b69b503e-fa84-0776-eb3e-59b66c553ee2', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6e10fce-ebe4-cf89-0c32-59b66c53b94f', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b71856b8-58ad-2b2d-82d2-59b66cd0ab27', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('b791c62e-512e-680e-7b19-59b66c1abaa1', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b79558a3-fe13-70f0-7f09-59b66c461745', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b84d4499-a51e-f231-2846-59b66cc27918', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8ca4095-b99e-eea4-2f88-59b66c65ed34', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b94759cd-179e-aed0-2476-59b66c5b15cf', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('b985dcb3-823d-cb0a-e3fe-59b66c045fa0', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ba02d213-fe6e-8328-0cb6-59b66ce8ffc7', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ba4152e5-ae48-7c98-1cd9-59b66cbaa184', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('babe5d53-f0f2-152c-05bf-59b66c8f218d', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bafcd886-799f-56f0-174c-59b66c09cceb', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bb2d0dda-8d3b-6d00-5106-59b66cad1df2', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('bb3b5d81-9d14-a441-3516-59b66cf265b0', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb79dc06-ff95-2adf-cc71-59b66cbad1b4', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbc6a1b1-b623-40a2-daeb-59b66c25928b', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbf6df76-88a1-4a12-f3a7-59b66c5ef27f', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc052624-0167-6338-1a27-59b66cfc6edf', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc73d5ba-9a8c-4556-2c40-59b66c8c3021', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcf0d495-6ac2-6cd4-2417-59b66c7540b9', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf15010c-6394-abdc-33df-59b66c4ac3ce', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('c0e009cf-9397-5d4b-d6f4-59b66c3a6677', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c11b0016-399f-1070-3283-59b66ce2cea8', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c28aeb08-2907-75cb-5356-59b66c8bee7a', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('c2fd052a-477a-5d20-542d-59b66cc542fd', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c38f9e8b-da91-775d-cac4-59b66c9c6070', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c40c9f66-27d9-c31a-56de-59b66ce10fe4', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c44b2c25-ce57-9c86-d60f-59b66c17bf6e', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c930c4aa-2169-6935-4505-59b66c9196bf', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9a30a2e-24ed-daa6-9464-59b66c8d9d48', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('c9adcfe0-aae8-0fee-59e6-59b66c096407', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca200030-753e-7529-f813-59b66c1c86f6', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd490551-7978-3859-a4c1-59b66cb6d7a3', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ce048209-dda8-4d27-fb42-59b66cb674a0', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cec0007f-c4e8-e1bc-909e-59b66cc85b30', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ced1eb60-59b8-46c5-b87a-59b66c68b65c', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf106fde-a6ca-f7d5-d549-59b66cb71333', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf3d018a-34f1-4d2c-ac25-59b66c7e2781', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cf8d7ca0-8a00-1e57-e347-59b66ca910cd', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cff891eb-2c82-bfd7-58ce-59b66ccc17d1', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('d00a7da6-6a1e-c3db-f14f-59b66c8f514f', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('d048fbb8-89b2-e667-37ec-59b66cb1833e', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('d08772a2-112e-cf70-2c23-59b66c8e48b7', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d0b41a70-dbd6-88f8-daca-59b66cfa273f', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d10473a7-0515-e6bc-9fd8-59b66c6ef917', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('d142f817-af2e-cfd5-f7da-59b66c8e5e7e', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d1817f3b-f1fc-f52c-3fd2-59b66c8a908a', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('d1ec92ca-8ba5-a44d-8501-59b66c1d0033', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1fe7aaa-76fe-9b58-cfd7-59b66c6a66a2', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('d23cf69d-217c-c818-5cb9-59b66cd2defe', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('d27b7425-e421-839f-a6a2-59b66c7d318f', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d2a818ca-87d3-5f26-6717-59b66cf8fe83', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d32516b2-621f-50d5-bc6d-59b66cd729bf', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5df6311-961f-fd80-c542-59b66ca83211', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d61deac6-14c2-ad3f-a6fc-59b66c3aa452', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d69ae7eb-09e0-1b16-45b8-59b66c40d7cb', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6d96d16-8641-e327-2042-59b66ca30d84', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('d9c0440c-829d-bb66-04db-59b66c62709b', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbf660fe-3bad-fd6b-8de5-59b66cfb4d6d', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('dc34e290-c513-78ea-95f6-59b66c30c41a', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('dcf780a9-baab-5e42-c200-59b66cef5bc7', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd361b16-28a5-c6c4-79da-59b66c0596b9', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddb31f0a-dc6f-5cd7-4144-59b66c37a1f0', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddf1974c-f657-8262-f40b-59b66c72490c', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('de6e98d8-1098-1740-c592-59b66c15e95d', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('dead1b0c-203c-d842-f8ab-59b66c558a17', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('df2a1384-e31e-f344-ce35-59b66ce791ac', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('df68917f-4994-e309-0791-59b66c2a3429', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('dfe591c4-39a2-85d8-4d84-59b66cf754c9', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0241ad4-d28f-a010-84a9-59b66cc02e96', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e14e5ca4-8d7f-9b0f-1a50-59b66c276671', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('e1cb5740-e256-ae15-458d-59b66cac50ad', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('e209d90a-f497-a7b4-a345-59b66ccc4586', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('e286d7a3-efd2-ebb6-a102-59b66c6cbbab', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('e303d918-b3b5-c923-2b21-59b66c7db4db', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('e380db9a-dafb-a6dc-a113-59b66cf9cfda', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('e3bf5ace-95ba-7988-0c92-59b66c5a8b0c', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e43c58b2-6c0a-cf97-c464-59b66cd8f449', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e44e3790-7ffd-c220-6c91-59b66c4448e2', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4b966e5-8407-96be-685b-59b66ccce3de', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4cb43ca-e416-3aa1-58df-59b66c879948', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e509c2cd-6b3d-d22c-221a-59b66caf182c', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e57f92ac-92a6-cd6b-b95d-59b66c4f3159', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e586ce31-c1bb-86ff-5074-59b66c2b2b75', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('e5fc9bfb-acb4-18ba-1d93-59b66c646a7b', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6b82a8b-863c-bf87-f860-59b66c02f106', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e72df217-cc69-d356-e86b-59b66c5ee791', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('e7aaffbe-2b79-5355-1a4e-59b66c4e0136', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7ae9204-dfec-618c-8fa7-59b66c29b242', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8668361-d03d-f46a-ad04-59b66c238abc', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f36deb54-3035-4444-4581-59b66c039951', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3ac60e7-0793-29a9-bcca-59b66c1bb5f7', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fbc00cf8-27d9-30a1-4043-59b66c71add0', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ff60052d-4ae8-8578-14ae-59b66c9d792b', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

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
('32198f3b-7e9a-fdb9-725f-59a50f6064ad', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:832522a5-c2bf-1b3f-6541-59a50fc69935:qwerty]', '2017-08-29 06:53:44', '2017-09-04 13:02:54', '1', '1', NULL, 1, '1', 'Leads', '832522a5-c2bf-1b3f-6541-59a50fc69935', NULL, NULL),
('4d9a0cce-8ffe-2cb5-bc2f-59a9504a96ed', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:838d76b5-f039-452c-f060-59a95005195b:цуцуцуц]', '2017-09-01 12:20:52', '2017-09-04 13:02:31', '1', '1', NULL, 1, '1', 'Leads', '838d76b5-f039-452c-f060-59a95005195b', NULL, NULL),
('5231df79-2462-dc87-4baa-59b111bfe249', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:10c2e549-c39f-7ef0-f7da-59b11183c89e:Qwd]', '2017-09-07 09:28:59', '2017-09-07 09:28:59', '1', '1', NULL, 0, '1', 'Leads', '10c2e549-c39f-7ef0-f7da-59b11183c89e', NULL, NULL),
('79cc9d90-7ba2-ca9a-d484-59b0e0051fe0', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:42592f10-786a-0ed0-3aa8-59b0e0dcb109:Bjbjbjb Erwe]', '2017-09-07 06:00:05', '2017-09-07 06:00:05', '1', '1', NULL, 0, '1', 'Leads', '42592f10-786a-0ed0-3aa8-59b0e0dcb109', NULL, NULL),
('88ae8821-d295-9e17-1940-599a89ff01fd', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:4a2d9def-1fda-713f-409f-599a892565f9:test]', '2017-08-21 07:21:18', '2017-09-04 13:02:50', '1', '1', NULL, 1, '1', 'Leads', '4a2d9def-1fda-713f-409f-599a892565f9', NULL, NULL),
('91e94bf9-b442-877b-d911-59b10ffbe9b5', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:1a850344-233e-e32f-fe21-59b10fc56fe1:TEST]', '2017-09-07 09:19:04', '2017-09-07 09:19:04', '1', '1', NULL, 0, '1', 'Leads', '1a850344-233e-e32f-fe21-59b10fc56fe1', NULL, NULL),
('a6c76f28-8379-1ba3-9018-59a67c448f0f', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:484a8025-f2a1-f64a-e028-59a67cff19a5:Пустая запись]', '2017-08-30 08:51:24', '2017-09-04 13:02:32', '1', '1', NULL, 1, '1', 'Leads', '484a8025-f2a1-f64a-e028-59a67cff19a5', NULL, NULL),
('af1eb4c5-fd96-6068-4675-59affbb34790', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:711acfc9-ba15-32d6-171e-59affbea8e58:Sdfsdfdsf]', '2017-09-06 13:43:34', '2017-09-06 13:43:34', '1', '1', NULL, 0, '', 'Leads', '711acfc9-ba15-32d6-171e-59affbea8e58', NULL, NULL),
('bea70737-23da-fc54-77c6-59a512b29f5c', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:86bdbdc5-2a0a-fde9-d210-59a512d4d699:фамилия]', '2017-08-29 07:06:46', '2017-09-04 13:02:36', '1', '1', NULL, 1, '1', 'Leads', '86bdbdc5-2a0a-fde9-d210-59a512d4d699', NULL, NULL),
('c4344832-ac48-de8a-8703-59b0e07abc46', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:e32272a9-d480-2e6c-abc4-59b0e087ec6f:Bjbjbjb Erwe]', '2017-09-07 06:00:56', '2017-09-07 06:00:56', '1', '1', NULL, 0, '1', 'Leads', 'e32272a9-d480-2e6c-abc4-59b0e087ec6f', NULL, NULL),
('cfb362b9-db7e-583c-441a-599bcb55db2b', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:559fa3be-40ba-9fe7-c560-599bcbc2bded:аа]', '2017-08-22 06:14:11', '2017-09-04 13:02:54', '1', '1', NULL, 1, '1', 'Leads', '559fa3be-40ba-9fe7-c560-599bcbc2bded', NULL, NULL),
('ead524fb-07ae-7eb1-c901-59aea13893a3', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:3e372765-5b6e-54bd-3f65-59aea194b1e0:Цуйуц]', '2017-09-05 13:05:30', '2017-09-05 13:05:30', '1', '1', NULL, 0, '1', 'Leads', '3e372765-5b6e-54bd-3f65-59aea194b1e0', NULL, NULL);

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
(792, '7e982b6d-9171-e5d2-bce4-59b0e3a9e255', '1', 'Users', '1', 'Administrator', '2017-09-07 06:12:50', 'editview', 'cj74p074cki1gqrti4613dfcu3', 1, 0),
(802, '68d778c8-b8e4-a4e0-1a70-59b105e95e72', '1', 'Leads', '4a2d9def-1fda-713f-409f-599a892565f9', 'Тест Тестовый', '2017-09-07 08:40:15', 'editview', 'jpj4j0dgbgt4dm7e18mcod1395', 1, 0),
(805, 'e0507bc2-dbf5-89c2-c9e5-59b1116415f5', '1', 'Leads', '10c2e549-c39f-7ef0-f7da-59b11183c89e', 'Qwd', '2017-09-07 09:29:54', 'editview', 'nli5pj2i7jdgscs01kdno7nhh2', 1, 0),
(821, 'b75d12e6-0598-f204-d3df-59b643908bdb', '1', 'Leads', '1a850344-233e-e32f-fe21-59b10fc56fe1', 'TEST', '2017-09-11 08:03:57', 'detailview', 'u33vvf6srhh4s5ucem7gbq3bh5', 1, 0),
(840, 'a1e3d60a-a186-6a4f-a1b8-59b65942f3ea', '1', 'bh_Card_ident', '3bd563c6-65dc-e97a-3cfc-59b64503040f', '242344кцукукуцкц', '2017-09-11 09:38:40', 'editview', 'u33vvf6srhh4s5ucem7gbq3bh5', 1, 0);

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
('6108833e-4ddd-37c1-4e25-599a8857fcc6', 'upload/upgrades/module/yaai-master.zip', 'bc26717ee8880347014297df1fed6a2c', 'module', 'installed', '3.6.10', 'Callinize - community Edition', 'Integrates Asterisk telephony features into SugarCRM.', 'Asterisk_SugarCRM_Connector', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MTp7aToxO3M6NToiNi40LjAiO31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjI6e2k6MTtzOjg6IjZcLjRcLlxkIjtpOjI7czoxMjoiNlwuWzAtN11cLlxkIjt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjY6InJlYWRtZSI7czoxNzU6IlBsZWFzZSBzZWUgdGhlIGRvY3VtZW50YXRpb24gYXQgaHR0cDovL3d3dy5naXRodWIuY29tL2JsYWszci95YWFpL1VzZXItTWFudWFsIHRoZXJlIGFyZSBzb21lIGltcG9ydGFudCBub3RlcyB5b3UgbmVlZCB0byByZWFkIGlmIHlvdSBhcmUgaW5zdGFsbGluZyBhbiB1cGRhdGVkIHZlcnNpb24gb2YgeWFhaS4iO3M6Mzoia2V5IjtzOjA6IiI7czo2OiJhdXRob3IiO3M6ODI6IkJsYWtlIFJvYmVydHNvbiAvIEtJTkFNVSBCdXNpbmVzcyBTb2x1dGlvbnMgQUcgLyBhYmNvbmEgYWN0aXZlIGJ1c2luZXNzIGNvbnN1bHRpbmciO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUzOiJJbnRlZ3JhdGVzIEFzdGVyaXNrIHRlbGVwaG9ueSBmZWF0dXJlcyBpbnRvIFN1Z2FyQ1JNLiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyOToiQ2FsbGluaXplIC0gY29tbXVuaXR5IEVkaXRpb24iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjExOiJEZWMgMywgMjAxMyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjY6IjMuNi4xMCI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo0OiJ0cnVlIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Njp7czoyOiJpZCI7czoyNzoiQXN0ZXJpc2tfU3VnYXJDUk1fQ29ubmVjdG9yIjtzOjQ6ImNvcHkiO2E6ODp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FzdGVyaXNrIjtzOjI6InRvIjtzOjIzOiJjdXN0b20vbW9kdWxlcy9Bc3RlcmlzayI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvc2VydmljZS9jYWxsaW5pemUiO3M6MjoidG8iO3M6MjQ6ImN1c3RvbS9zZXJ2aWNlL2NhbGxpbml6ZSI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo2OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvUGhvbmUvTGlzdFZpZXcudHBsIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvUGhvbmUvTGlzdFZpZXcudHBsIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2phdmFzY3JpcHQvanF1ZXJ5L2pxdWVyeS5wYWNrLmpzIjtzOjI6InRvIjtzOjQ3OiJjdXN0b20vaW5jbHVkZS9qYXZhc2NyaXB0L2pxdWVyeS9qcXVlcnkucGFjay5qcyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yLnBocCI7czoyOiJ0byI7czo1MzoiY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci5waHAiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci50cGwiO3M6MjoidG8iO3M6NTM6ImN1c3RvbS9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3IudHBsIjt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjc2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3JfdGFibGUudHBsIjtzOjI6InRvIjtzOjU5OiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yX3RhYmxlLnRwbCI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czo2OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlnX21ldGEucGhwIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlnX21ldGEucGhwIjt9fXM6MTQ6ImFkbWluaXN0cmF0aW9uIjthOjE6e2k6MDthOjE6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9hc3Rlcmlza19jb25maWd1cmF0b3IucGhwIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTU6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Vc2Vycy9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvVXNlcnMvbGFuZ3VhZ2UvZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL1VzZXJzL2xhbmd1YWdlL3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6NjthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJDb25maWd1cmF0b3IiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjc7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQ29uZmlndXJhdG9yIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aTo4O2E6Mzp7czo0OiJmcm9tIjtzOjY4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9sYW5ndWFnZS9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkNvbmZpZ3VyYXRvciI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6OTthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9DYWxscy9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiQ2FsbHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjEwO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NhbGxzL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MTE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ2FsbHMvbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkNhbGxzIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aToxMjthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9sYW5ndWFnZS9jYWxsX3N0YXR1c19kb21fX2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjEzO2E6Mzp7czo0OiJmcm9tIjtzOjcyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2xhbmd1YWdlL2NhbGxfc3RhdHVzX2RvbV9fZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MTQ7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvbGFuZ3VhZ2UvY2FsbF9zdGF0dXNfZG9tX19ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9fXM6MTM6ImN1c3RvbV9maWVsZHMiO2E6Nzp7aTowO2E6MjA6e3M6MjoiaWQiO3M6MjQ6IlVzZXJzYXN0ZXJpc2tfb3V0Ym91bmRfYyI7czo0OiJuYW1lIjtzOjE5OiJhc3Rlcmlza19vdXRib3VuZF9jIjtzOjU6ImxhYmVsIjtzOjIxOiJMQkxfQVNURVJJU0tfT1VUQk9VTkQiO3M6ODoiY29tbWVudHMiO047czo0OiJoZWxwIjtOO3M6NjoibW9kdWxlIjtzOjU6IlVzZXJzIjtzOjQ6InR5cGUiO3M6NDoiYm9vbCI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7aTowO3M6MTM6ImRhdGVfbW9kaWZpZWQiO3M6MTk6IjIwMDktMDUtMjIgMDA6MDA6MDAiO3M6NzoiZGVsZXRlZCI7czoxOiIwIjtzOjc6ImF1ZGl0ZWQiO3M6MToiMCI7czoxMToibWFzc191cGRhdGUiO3M6MToiMCI7czoxNToiZHVwbGljYXRlX21lcmdlIjtzOjE6IjAiO3M6MTA6InJlcG9ydGFibGUiO3M6MToiMSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjE7YToyMDp7czoyOiJpZCI7czoyMzoiVXNlcnNhc3Rlcmlza19pbmJvdW5kX2MiO3M6NDoibmFtZSI7czoxODoiYXN0ZXJpc2tfaW5ib3VuZF9jIjtzOjU6ImxhYmVsIjtzOjIwOiJMQkxfQVNURVJJU0tfSU5CT1VORCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO047czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO3M6NDoidHlwZSI7czo0OiJib29sIjtzOjg6Im1heF9zaXplIjtzOjI6IjQ1IjtzOjE0OiJyZXF1aXJlX29wdGlvbiI7czoxOiIwIjtzOjEzOiJkZWZhdWx0X3ZhbHVlIjtpOjA7czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MjthOjIwOntzOjI6ImlkIjtzOjE5OiJVc2Vyc2FzdGVyaXNrX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MTQ6ImFzdGVyaXNrX2V4dF9jIjtzOjU6ImxhYmVsIjtzOjE2OiJMQkxfQVNURVJJU0tfRVhUIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7TjtzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJ0eXBlIjtzOjc6InZhcmNoYXIiO3M6ODoibWF4X3NpemUiO3M6MjoiNDUiO3M6MTQ6InJlcXVpcmVfb3B0aW9uIjtzOjE6IjAiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO047czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MzthOjIxOntzOjI6ImlkIjtzOjIzOiJDYWxsc2FzdGVyaXNrX2NhbGxfaWRfYyI7czo0OiJuYW1lIjtzOjE4OiJhc3Rlcmlza19jYWxsX2lkX2MiO3M6NToibGFiZWwiO3M6MjA6IkxCTF9BU1RFUklTS19DQUxMX0lEIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7czoxMjc6IlRoaXMgaXMgdGhlIHVuaXF1ZSBpZCBhc3NpZ25lZCB0byB0aGlzIGNhbGwgYnkgdGhlIFBCWCwgVXNlZnVsIGZvciBkZWJ1Z2dpbmcgYnV0IG90aGVyd2lzZSBubyByZWFzb24gdG8gZGlzcGxheSB0byBhbiBlbmQgdXNlci4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjQ7YToyMTp7czoyOiJpZCI7czoyNToiQ2FsbHNhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo0OiJuYW1lIjtzOjIwOiJhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo1OiJsYWJlbCI7czoyMjoiTEJMX0FTVEVSSVNLX0NBTExFUl9JRCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTY6InRyaW1tZWQgY2FsbGVySWQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjU7YToyMTp7czoyOiJpZCI7czoyNzoiQ2FsbHNhc3Rlcmlza19pbmJvdW5kX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MjI6ImFzdGVyaXNrX2luYm91bmRfZXh0X2MiO3M6NToibGFiZWwiO3M6MjQ6IkxCTF9BU1RFUklTS19JTkJPVU5EX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTE0OiJDb250YWlucyB0aGUgaW5ib3VuZGVkIGV4dGVuc2lvbi4gIFRoaXMgaXMgdXNlZnVsIGZvciBpZGVudGlmeWluZyB0aGUgcXVldWUgb3IgcmluZ2dyb3VwIHRoYXQgdGhlIGNhbGwgY2FtZSBpbiBvbi4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjY7YToyMTp7czoyOiJpZCI7czoyNDoiQ2FsbHNhc3Rlcmlza191c2VyX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MTk6ImFzdGVyaXNrX3VzZXJfZXh0X2MiO3M6NToibGFiZWwiO3M6MjE6IkxCTF9BU1RFUklTS19VU0VSX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6NjE6IkNvbnRhaW5zIHRoZSB1c2VyIGV4dGVuc2lvbiB0aGF0IGFuc3dlcmVkIG9yIHBsYWNlZCB0aGUgY2FsbC4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO319czoxMToibG9naWNfaG9va3MiO2E6MTp7aTowO2E6Nzp7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjQ6Imhvb2siO3M6MTQ6ImFmdGVyX3VpX2ZyYW1lIjtzOjU6Im9yZGVyIjtpOjExO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcyOiJBZGRzIGFzdGVyaXNrIHJlbGF0ZWQgamF2YXNjcmlwdCB0byBwYWdlIHRvIGVuYWJsZSBDbGljayBUbyBEaWFsL0xvZ2dpbmciO3M6NDoiZmlsZSI7czo0NjoiY3VzdG9tL21vZHVsZXMvQXN0ZXJpc2svaW5jbHVkZS9Bc3Rlcmlza0pTLnBocCI7czo1OiJjbGFzcyI7czoxMDoiQXN0ZXJpc2tKUyI7czo4OiJmdW5jdGlvbiI7czoxNDoiZWNob0phdmFTY3JpcHQiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-08-21 07:13:45', 1),
('84461eab-5c46-63f3-52fd-599a78d46657', 'upload/upgrades/langpack/ru.zip', 'd91a9d99bacde0dc2caf34f62025b596', 'langpack', 'installed', '7.9.4.0', 'Russian (Russia)', 'Перевод: www.crowdin.com/project/suitecrmtranslations', 'ru_RU', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNjoiUnVzc2lhbiAoUnVzc2lhKSI7czoxMToiZGVzY3JpcHRpb24iO3M6NjA6ItCf0LXRgNC10LLQvtC0OiB3d3cuY3Jvd2Rpbi5jb20vcHJvamVjdC9zdWl0ZWNybXRyYW5zbGF0aW9ucyI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YTowOnt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo2OiJhdXRob3IiO3M6MTg6IlN1aXRlQ1JNIENvbW11bml0eSI7czo3OiJ2ZXJzaW9uIjtzOjc6IjcuOS40LjAiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE3LTA3LTIwIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJydV9SVSI7czo5OiJpbWFnZV9kaXIiO3M6MTc6IjxiYXNlcGF0aD4vaW1hZ2VzIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luY2x1ZGUiO3M6MjoidG8iO3M6NzoiaW5jbHVkZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-08-21 06:07:33', 1),
('9be00d5d-4d48-b016-dc32-59b66c398d19', 'upload/upgrades/module/FAQ2017_09_11_135910.zip', 'face410d28ed3f4b39b52be89f3ba733', 'module', 'installed', '1505127549', 'FAQ', '', 'FAQ', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MzoiRkFRIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNy0wOS0xMSAxMDo1OTowOCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1MDUxMjc1NDk7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjM6IkZBUSI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czo2OiJiaF9mYXEiO3M6NToiY2xhc3MiO3M6NjoiYmhfZmFxIjtzOjQ6InBhdGgiO3M6MjU6Im1vZHVsZXMvYmhfZmFxL2JoX2ZhcS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czozODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9iaF9mYXEiO3M6MjoidG8iO3M6MTQ6Im1vZHVsZXMvYmhfZmFxIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9SVS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2017-09-11 10:59:08', 1),
('c2dfc039-30f1-1791-1dc1-59b63555eb9e', 'upload/upgrades/module/Card2017_09_11_100207.zip', 'bd0a6ddad6629e0c11f36a3c311a5e3f', 'module', 'installed', '1505113324', 'Card', '', 'Card', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYmgiO3M6NjoiYXV0aG9yIjtzOjEzOiJZdXJpeSBZdXJlbmtvIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDoiQ2FyZCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDktMTEgMDc6MDI6MDQiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTA1MTEzMzI0O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6OTp7czoyOiJpZCI7czo0OiJDYXJkIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJiaF9DYXJkX2lkZW50IjtzOjU6ImNsYXNzIjtzOjEzOiJiaF9DYXJkX2lkZW50IjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvYmhfQ2FyZF9pZGVudC9iaF9DYXJkX2lkZW50LnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MTp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9iaF9jYXJkX2lkZW50X2xlYWRzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2JoX0NhcmRfaWRlbnQiO3M6MjoidG8iO3M6MjE6Im1vZHVsZXMvYmhfQ2FyZF9pZGVudCI7fX1zOjg6Imxhbmd1YWdlIjthOjY6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9MZWFkcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkxlYWRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0xlYWRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiTGVhZHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvYmhfQ2FyZF9pZGVudC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJiaF9DYXJkX2lkZW50IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2JoX0NhcmRfaWRlbnQucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYmhfQ2FyZF9pZGVudCI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX1zOjc6InZhcmRlZnMiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjc1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYmhfY2FyZF9pZGVudF9sZWFkc19MZWFkcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkxlYWRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjgzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYmhfY2FyZF9pZGVudF9sZWFkc19iaF9DYXJkX2lkZW50LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO319czoxMjoibGF5b3V0ZmllbGRzIjthOjE6e2k6MDthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjE6e3M6NToiTGVhZHMiO3M6MjQ6ImJoX2NhcmRfaWRlbnRfbGVhZHNfbmFtZSI7fX19fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2017-09-11 07:02:04', 1);

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
('1', 'admin', '$1$AB5.Jy4.$8YFSVKwAOkp9s3KqH8rAI.', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2017-08-21 05:56:19', '2017-08-31 07:25:09', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
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
('1', 1, 1, '101'),
('eff07114-603c-c0d2-0e5e-599bcd264773', 0, 0, '');

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
('15a32647-45a7-2db9-14c7-599a905d3445', 'Employees2_EMPLOYEE', 0, '2017-08-21 07:50:29', '2017-08-21 07:50:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1d629894-5fd1-19aa-aebf-59b00907fd0d', 'Calls2_CALL', 0, '2017-09-06 14:42:04', '2017-09-06 14:42:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e7c9dac-0fe1-f1c5-ab34-59b25199c2cf', 'Cases2_CASE', 0, '2017-09-08 08:15:24', '2017-09-08 08:15:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('274215ac-b479-3697-947d-599bcd97aace', 'global', 0, '2017-08-22 06:20:35', '2017-09-01 13:49:44', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YTo0MTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjQ6IjM2MDAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjI1OGM5MTRkLTU3MTUtMjFiOC1kOTE0LTU5OWJjZDA0MDg2NiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi0JLRgdC1IjtzOjY6IkxlYWRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6Ik1lZXRpbmdzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('32f577d3-0658-e850-8f13-59b253b52d38', 'Opportunities2_OPPORTUNITY', 0, '2017-09-08 08:21:47', '2017-09-08 08:21:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('399c2e36-7736-b1de-def0-599bcdbf7855', 'Home', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImYyMjliYjA0LWJlYmQtMmRiYy0xMmRmLTU5OWJjZDc5MDkxNCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImYzZGYzNWVmLTA2NzItYjMwYy0zZjYyLTU5OWJjZDIxOWU5NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE3MGMwZTM3LWNjNGYtNzA5MC00MDIwLTU5OWJjZDRiMDVkMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJhOTQwOGM5LTVkMzUtMzMxZi1kNTJhLTU5OWJjZDRlNzQyMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNDlkNDBjMTQtZmFmNC05MmM5LTFmMjctNTk5YmNkNzdkNzM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmNmZDA1MmItNTJhNi0wMGVjLTM2NTUtNTk5YmNkYjcxNmE4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJmM2RmMzVlZi0wNjcyLWIzMGMtM2Y2Mi01OTliY2QyMTllOTciO2k6MTtzOjM2OiIxNzBjMGUzNy1jYzRmLTcwOTAtNDAyMC01OTliY2Q0YjA1ZDEiO2k6MjtzOjM2OiIyYTk0MDhjOS01ZDM1LTMzMWYtZDUyYS01OTliY2Q0ZTc0MjAiO2k6MztzOjM2OiI0OWQ0MGMxNC1mYWY0LTkyYzktMWYyNy01OTliY2Q3N2Q3MzkiO2k6NDtzOjM2OiI2Y2ZkMDUyYi01MmE2LTAwZWMtMzY1NS01OTliY2RiNzE2YTgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImYyMjliYjA0LWJlYmQtMmRiYy0xMmRmLTU5OWJjZDc5MDkxNCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('4bca7d68-abe4-1a2c-e9f5-599a7623e0a7', 'Home', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjYzMzc0MTI5LTlmN2YtYzhjNS1mYzc0LTU5OWE3Njg4NzM1OCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjY0MzE0ODM5LTExNGEtNzI1NC0zZDAxLTU5OWE3NmZmMDYyOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY1NjljODgzLTU2NzMtODkzOS05MjFhLTU5OWE3NjU4ZmUyZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY2MjU0YmQ5LTg3OTQtNWFhYi04NGM4LTU5OWE3Njg4ZjZhMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjc1ZGRmY2YtMTgzYy04ODg2LTQzNzktNTk5YTc2OWMyOTEwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjg1N2RkMjktOWQ5NC1mMjVlLWUxOTktNTk5YTc2NDEyZmNhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI2NDMxNDgzOS0xMTRhLTcyNTQtM2QwMS01OTlhNzZmZjA2MjkiO2k6MTtzOjM2OiI2NTY5Yzg4My01NjczLTg5MzktOTIxYS01OTlhNzY1OGZlMmQiO2k6MjtzOjM2OiI2NjI1NGJkOS04Nzk0LTVhYWItODRjOC01OTlhNzY4OGY2YTIiO2k6MztzOjM2OiI2NzVkZGZjZi0xODNjLTg4ODYtNDM3OS01OTlhNzY5YzI5MTAiO2k6NDtzOjM2OiI2ODU3ZGQyOS05ZDk0LWYyNWUtZTE5OS01OTlhNzY0MTJmY2EiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjYzMzc0MTI5LTlmN2YtYzhjNS1mYzc0LTU5OWE3Njg4NzM1OCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('51369be7-1b64-2804-26d9-59b6362ee50f', 'bh_Card_ident2_BH_CARD_IDENT', 0, '2017-09-11 07:06:54', '2017-09-11 07:06:54', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('52621554-6b57-5f75-f8c6-599a76bbb811', 'Home2_CALL', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('54b60449-ae7a-0239-d6d0-599bcdd98d52', 'Home2_CALL', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5566f6bb-697b-5ec4-88cc-59a54cbcd604', 'Accounts2_ACCOUNT', 0, '2017-08-29 11:15:42', '2017-08-29 11:15:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('566b00bf-5a6c-8fec-a372-599a769e86e9', 'Home2_LEAD_6857dd29-9d94-f25e-e199-599a76412fca', 0, '2017-08-21 05:58:15', '2017-08-21 05:58:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('587ca3ee-6256-9407-92e8-599a76aa1313', 'Home2_MEETING', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5e9747d5-422e-eac2-0f01-599a76fb08fb', 'Home2_OPPORTUNITY', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('64f05e4a-0021-eaac-a641-599a7674ae0d', 'Home2_ACCOUNT', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('67445580-7004-100d-6b58-599bcd9b59b6', 'Home2_MEETING', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6b497872-51bc-fe5e-7f85-599a769e3089', 'Home2_LEAD', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('716405a0-91c3-85ef-5d1c-599a76e785ba', 'Home2_SUGARFEED', 0, '2017-08-21 05:58:05', '2017-08-21 05:58:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7642d31f-7430-b922-981d-59a920183c1d', 'AOS_Contracts2_AOS_CONTRACTS', 0, '2017-09-01 08:54:20', '2017-09-01 08:54:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77de9298-1495-2aa4-d2b4-599bcdc6fa70', 'Home2_OPPORTUNITY', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77f59a85-9eb6-3754-2df6-599a76f20cc4', 'ETag', 0, '2017-08-21 05:56:19', '2017-09-11 10:59:08', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Nzt9'),
('7eb498f3-56e4-07f5-c062-599bcd1ec47a', 'Home2_ACCOUNT', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8a10b393-2fb1-83fd-8241-599bcd31547f', 'ETag', 0, '2017-08-22 06:21:35', '2017-09-01 11:19:13', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('8a6cd013-327b-0d24-141e-599bcd091b58', 'Home2_LEAD', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8e04a0eb-bb99-79d8-9067-599bc9db9527', 'ACLRoles2_ACLROLE', 0, '2017-08-22 06:06:26', '2017-08-22 06:06:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8f677909-a6e0-a85b-ae75-599a76b6a8e1', 'global', 0, '2017-08-21 05:56:19', '2017-09-11 07:06:54', '1', 'YTo1Nzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjhlZWE2NmQ1LTI2ZjItYWZkNS0wZTZhLTU5OWE3Njk3YmU5YSI7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL01vc2NvdyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjoidXQiO3M6MToiMSI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo2OiLQktGB0LUiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiTWVldGluZ3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6NDp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxOToiRlBfRXZlbnRfTG9jYXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjEzOiJBT1dfV29ya0Zsb3dRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkRvY3VtZW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJDb250YWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiQU9TX0NvbnRyYWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czo2OiJDYWxsc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjIzOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE0OiJiaF9DYXJkX2lkZW50USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('91046455-4674-7236-9993-599bcdc33c37', 'Home2_SUGARFEED', 0, '2017-08-22 06:21:41', '2017-08-22 06:21:41', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a81c942b-6db7-210b-4a04-59b2555f988a', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2017-09-08 08:31:25', '2017-09-08 08:31:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ad6acce3-06f6-093d-8bc3-599bcd5120ba', 'Home2_LEAD_6cfd052b-52a6-00ec-3655-599bcdb716a8', 0, '2017-08-22 06:21:49', '2017-08-22 06:21:49', 'eff07114-603c-c0d2-0e5e-599bcd264773', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b9c00a1a-ecf4-8506-22f3-59a6790a74c4', 'Leads', 0, '2017-08-30 08:38:46', '2017-08-30 08:38:46', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('c092025f-e214-8d6e-bcff-59b2533b8bed', 'AOS_Products2_AOS_PRODUCTS', 0, '2017-09-08 08:24:11', '2017-09-08 08:24:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c91ece35-e604-6164-afa9-599ae16f2f93', 'SecurityGroups2_SECURITYGROUP', 0, '2017-08-21 13:33:58', '2017-08-21 13:33:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc5b3bbb-03f4-b913-b1fb-599a888eed95', 'Users2_USER', 0, '2017-08-21 07:16:43', '2017-08-21 07:16:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc5b6d23-75ee-dfcc-073c-59a50d549a62', 'AOW_WorkFlow2_AOW_WORKFLOW', 0, '2017-08-29 06:45:03', '2017-08-29 06:45:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d6f23750-baf6-0d42-e513-599a795b7eee', 'Leads2_LEAD', 0, '2017-08-21 06:09:57', '2017-08-30 08:38:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('e1eb8043-7dea-ad5a-91ae-59a50fdee4fa', 'Documents2_DOCUMENT', 0, '2017-08-29 06:54:56', '2017-08-29 06:54:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eb4e0cde-d43b-6b8c-58ee-59a7bd1125b2', 'Contacts2_CONTACT', 0, '2017-08-31 07:40:47', '2017-08-31 07:40:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
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
-- Индексы таблицы `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Индексы таблицы `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
