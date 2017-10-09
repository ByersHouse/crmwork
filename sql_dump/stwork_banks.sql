-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: stwork
-- ------------------------------------------------------
-- Server version	5.5.53-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('d45b7965-8105-7147-d758-59ba21cbfdef','Рога и копыта','2017-09-14 06:27:50','2017-09-26 07:56:14','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('d45b7965-8105-7147-d758-59ba21cbfdef',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('00000005-41a7-303a-0c9d-59bf847c8bb5','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','edit','bh_marketing_company','module',90,1),('10006f4e-1995-a3f7-d040-599a767c6afc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Campaigns','module',90,0),('10242559-0a04-8759-1538-599a76a78fcb','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Documents','module',90,0),('1037ce50-f339-d83d-571b-599a7616b8fe','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Bugs','module',90,0),('108103fd-e2a2-8020-382e-599a76faa134','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Prospects','module',90,0),('11a4931e-df05-8782-cc9d-59c24b561769','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','massupdate','bh_lead_adress','module',90,1),('11a4936c-22c8-a24b-c040-59c9f3050073','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','edit','bh_communicators','module',90,0),('11bf6cf9-7295-2476-943b-59b7dba4a8d7','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','view','bh_organizations','module',90,1),('122bcf2b-0263-366d-f276-599a7608c60b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Bugs','module',90,0),('1232f917-292f-166d-8cf2-599a7675f0da','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Campaigns','module',90,0),('12953261-8c96-3d2b-1466-599a7671fedd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Documents','module',90,0),('12b38830-fddb-40db-f1f9-599a76d03f09','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Prospects','module',90,0),('1312d41e-f6ef-ba4d-bc4f-59c8f2884fcf','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','edit','bh_contact_person','module',90,0),('138ceb8c-38ef-22c5-c2c6-59c4ad358b50','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','import','bh_region','module',90,0),('13d34286-162f-3370-6ac7-59ba8d52c272','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','access','bh_cases_log','module',89,0),('1414041c-a88d-b370-cb89-599a76722916','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','jjwg_Address_Cache','module',90,0),('14e61b9f-4b5b-5453-4fdd-599a762dd32b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Prospects','module',90,0),('150638a8-f2e5-9a41-f892-599a76a4eebd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Documents','module',90,0),('1669401c-8a18-fbdc-97e6-59c9f314b5ff','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','delete','bh_communicators','module',90,0),('16da136a-5dfc-c35d-c9a0-599a76aba991','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Prospects','module',90,0),('16e30f8c-e2eb-945e-acc9-59c8f251249a','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','view','bh_contact_person','module',90,0),('1730104a-6fed-dd48-97ba-59b672e9cdaf','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','edit','bh_Autotransport','module',90,0),('17358d02-5ca5-757c-d0da-59bbc186d57a','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','import','bh_case_status','module',90,0),('1738c437-c666-8b55-1482-599a76cf8052','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Documents','module',90,0),('17540a03-308d-4ef7-1896-59b672815395','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','view','bh_Autotransport','module',90,0),('179a7a16-f9b3-6ae1-9d58-59c8f2f7b6a4','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','delete','bh_contact_person','module',90,0),('17d78036-05dc-1e53-bab3-59c4ad2e7fac','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','export','bh_region','module',90,0),('184f3e2b-6dcc-1831-e3e6-59b8d1b06d20','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','list','bh_org_trade_points','module',90,1),('190ca66f-f678-1e58-ec89-599a764cee9d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Prospects','module',90,0),('1a6ae93b-4339-25e4-cafa-59bb7270d18a','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','list','bh_packet_activation','module',90,0),('1ab3f428-fc55-dc6d-9df9-59bf986734dd','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','access','bh_marketing_company_history','module',89,0),('1b2e08ad-c44a-9405-1f50-59c9f3e337d1','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','import','bh_communicators','module',90,0),('1c2223b8-f84e-b970-1612-59c4ad37b9a1','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','massupdate','bh_region','module',90,0),('1c5f2612-dc1a-94b6-a892-59c8f202ca5e','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','import','bh_contact_person','module',90,0),('1d1e0fbb-1646-912f-9ee5-599a76edc54c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','FP_events','module',90,0),('1db61d2d-2a65-275f-5dcd-59b7db129edb','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','list','bh_organizations','module',90,1),('1dc7a99b-519c-c6af-8de5-59b672a82162','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','delete','bh_Autotransport','module',90,0),('1dfe82ee-9c7f-c22a-71e3-59b7dc120390','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','view','bh_providers','module',90,0),('1f722786-7567-72e6-9109-59b91135c643','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','view','bh_org_trade_points','module',90,0),('1fc11267-a0c3-3ec5-4a70-59bbc15a22d3','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','export','bh_case_status','module',90,0),('201f58b5-6ff4-ddc0-5b00-59b8d1f89584','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','edit','bh_org_trade_points','module',90,1),('2123e025-9718-1b2e-b717-59c8f200c6af','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','export','bh_contact_person','module',90,0),('22180b9b-e226-3feb-799c-59c9f3899432','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','export','bh_communicators','module',90,0),('22551f3f-bc02-fb61-c2ff-59c3c147c7e7','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','view','bh_category_at_work','module',90,0),('25171453-da2c-54e2-1b62-59d8796716c7','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','access','bh_banks','module',89,0),('251ac31a-eea6-006a-9b79-59b6723ee7d1','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','import','bh_Autotransport','module',90,0),('25ab87b5-41e2-8c46-9e05-59c8f2f0a8b4','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','massupdate','bh_contact_person','module',90,0),('268a2e3a-5594-3400-db43-59b7dcd7e6d6','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','list','bh_providers','module',90,0),('269451a2-8810-6095-712a-59bbbfdb95ce','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','view','bh_case_compound','module',90,0),('26dcb5ab-7ffa-6ffe-2877-59c3c188d0ae','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','list','bh_category_at_work','module',90,0),('26dcbda0-9bc0-742f-2638-59c9f33e0ddd','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','massupdate','bh_communicators','module',90,0),('27ad8ca0-77a0-ab16-f9c6-599a7635979f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOD_IndexEvent','module',89,0),('27b11e3d-2767-75e2-3aa0-599a76a06d34','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOP_Case_Events','module',89,0),('28743d9b-9fb6-9018-020e-59b7dba3db44','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','edit','bh_organizations','module',90,1),('29365b90-6a3c-a3ee-6c46-59b911214dfc','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','list','bh_org_trade_points','module',90,0),('2a4900f1-0d23-87af-78bf-599a76b543ea','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Opportunities','module',90,0),('2a49afbf-68c3-4e25-d58b-59bb72171224','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','edit','bh_packet_activation','module',90,0),('2a9b9ca6-ec0b-28e6-2895-599a76a91b3c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOD_IndexEvent','module',90,0),('2a9efee5-e467-e2ed-2db0-59b8d10a1d8e','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','delete','bh_org_trade_points','module',90,1),('2a9f2f03-4e32-8b49-db40-599a769c8cf9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOP_Case_Events','module',90,0),('2b2757c9-4653-51e7-ad7b-59c3c17291a6','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','edit','bh_category_at_work','module',90,0),('2b3ac3a9-679c-e622-dee7-59bbc1b7bcae','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','massupdate','bh_case_status','module',90,0),('2bc099af-3958-1640-441f-59ba8d8abd9d','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','view','bh_cases_log','module',90,0),('2bde7008-e517-120c-f292-59bf983a2a4d','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','view','bh_marketing_company_history','module',90,0),('2bf0e55b-df04-a037-8d29-59b6720854cf','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','export','bh_Autotransport','module',90,0),('2c6ca114-fe02-1f30-adc1-59b784d1f214','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','view','bh_faq_history','module',90,0),('2d1039ac-84bf-5d18-a1fa-599a76d40eec','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOP_Case_Events','module',90,0),('2d4b1a67-b673-b8af-609c-599a76592468','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOD_IndexEvent','module',90,0),('2dc60a5b-f948-2492-e755-59bfc0ab2026','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','massupdate','bh_marketing_directorate','module',90,1),('2dc60c88-2775-5ea0-291c-59c24b3678e9','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','delete','bh_lead_adress','module',90,1),('2e98c196-61c4-e978-5f6e-59b7dc90d591','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','edit','bh_providers','module',90,0),('2f5bcb7c-01ed-2f9a-9377-599a767d2a06','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOW_WorkFlow','module',89,0),('2f5e7497-037f-ce40-19ab-59bbbf9ff419','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','list','bh_case_compound','module',90,0),('2f720362-ce34-3e16-a184-59c3c1a22dcd','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','delete','bh_category_at_work','module',90,0),('2f8139d6-c4ba-a173-3e17-599a76a71ec8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOP_Case_Events','module',90,0),('2fbc2a9d-00b8-1e7c-df26-599a766b4fd1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOD_IndexEvent','module',90,0),('2fec1eff-59d6-9f80-518e-59bf984d03d1','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','list','bh_marketing_company_history','module',90,0),('30c15593-5f2c-f1e9-0251-59b7dbd35543','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','delete','bh_organizations','module',90,1),('30fb0732-6c01-442f-7303-599a76b7dda1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Campaigns','module',89,0),('3230c053-1cb9-4dd7-0382-599a763a785a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOP_Case_Events','module',90,0),('326bb7b2-d1f6-3dcd-bb36-599a76cc0d21','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOD_IndexEvent','module',90,0),('32884659-0e0f-7967-616d-599a761fed2a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOW_WorkFlow','module',90,0),('32887adc-e20b-e102-83b9-59b6724747bf','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','massupdate','bh_Autotransport','module',90,0),('32f8b987-71ac-30cd-ce89-599a76a206d8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Accounts','module',89,0),('33777ade-3bd4-9fad-3e79-59b911cde8a0','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','edit','bh_org_trade_points','module',90,0),('33f9a716-8109-21c6-0e53-59bf98bf898d','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','edit','bh_marketing_company_history','module',90,0),('34a1c91e-dbb8-2292-5f43-599a76e46c55','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOP_Case_Events','module',90,0),('351b3d00-cab8-4599-cd23-599a760c5041','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOD_IndexEvent','module',90,0),('3536c3a2-729e-cad0-1182-59b784c46585','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','list','bh_faq_history','module',90,0),('3569ca1d-5d1d-93ab-f11c-599a76b20cd2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Accounts','module',90,0),('35765415-a9b1-3edd-2fbe-599a76463ef9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOW_WorkFlow','module',90,0),('3598c0dd-4994-3efb-7ea1-59b7b0b18741','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','edit','bh_scr_status_history','module',90,0),('3668ed30-8671-db7a-cc79-59b7dc7e7564','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','delete','bh_providers','module',90,0),('3712dd9c-0f00-e804-bdf7-599a767c4aa4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOP_Case_Events','module',90,0),('37502d41-9ebf-a063-417e-59c3c1cc3ec6','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','import','bh_category_at_work','module',90,0),('378c422c-5606-c4bc-aa2a-599a76c3135f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOD_IndexEvent','module',90,0),('379c436b-7dc1-0b8f-7e28-599a76add149','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Accounts','module',90,0),('37ab9347-789b-bb3e-8f2c-59bbbfdf43b9','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','edit','bh_case_compound','module',90,0),('37ca3990-c92a-bad9-5e57-59bf9806bd56','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','delete','bh_marketing_company_history','module',90,0),('37ce37ea-27d3-d904-7148-59b8d1d756f3','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','import','bh_org_trade_points','module',90,1),('381479a7-456d-c0c6-2d8b-59b7db7141ea','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','import','bh_organizations','module',90,1),('3825e8c1-3bb3-8840-920f-599a761b0d3d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOW_WorkFlow','module',90,0),('38590393-3334-451d-d787-599a76bd97ac','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Bugs','module',89,0),('3983e7c2-4efd-c675-a26c-599a769576da','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOP_Case_Events','module',90,0),('3a0d5c4b-3619-bf1a-ba9d-599a7686d0c5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Accounts','module',90,0),('3a3bd492-5d2e-ed69-12cd-599a76844f98','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOD_IndexEvent','module',90,0),('3a951426-f5d3-fe90-297e-599a7671c591','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Meetings','module',89,0),('3a96e081-44b5-a31c-e2e0-599a76303946','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOW_WorkFlow','module',90,0),('3b9ac13c-07f9-54bf-9454-59c3c11565ff','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','export','bh_category_at_work','module',90,0),('3bd7d41c-7e93-3e92-00f9-59bf98667f71','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','import','bh_marketing_company_history','module',90,0),('3c015422-02c0-9a2e-daf0-599a76e8f888','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Accounts','module',90,0),('3c431967-0493-9262-b237-59b91f9218fb','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','view','bh_org','module',90,0),('3cbe969e-5a00-06ef-0a47-59b9119d1672','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','delete','bh_org_trade_points','module',90,0),('3d061aeb-131c-5184-c01c-599a769a8e04','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Meetings','module',90,0),('3d456c55-b4ac-2a1e-1c89-59b78475afab','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','edit','bh_faq_history','module',90,0),('3d84f2fd-271a-b8e4-3f1a-599a7698bcaa','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOW_WorkFlow','module',90,0),('3dfa7ca9-5d59-e53b-daed-59b7dc015fe1','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','import','bh_providers','module',90,0),('3e33e3ab-8840-3f45-b394-599a76324061','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Accounts','module',90,0),('3f0d0fb5-8b81-b8ac-c7c3-599a7645eae9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','jjwg_Address_Cache','module',90,0),('3f77238f-e07c-4558-a396-599a76453832','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Meetings','module',90,0),('3f876ce3-2304-03e2-85f9-59ba8d0cacc8','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','list','bh_cases_log','module',90,0),('3fa61e39-d45d-3197-f8ef-59b7db086f01','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','export','bh_organizations','module',90,1),('3fe56b81-c390-ba5d-f3fc-59bf98e11fae','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','export','bh_marketing_company_history','module',90,0),('3fe56c1c-95b2-fba0-38e0-59c3c1b65e45','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','massupdate','bh_category_at_work','module',90,0),('3ff8b300-2bbb-685f-4827-59bbbf97f043','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','delete','bh_case_compound','module',90,0),('40347a97-9172-8323-67e9-599a762c29bc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOW_WorkFlow','module',90,0),('403d751f-c68a-39b9-698a-59b66cec15d0','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','access','bh_faq','module',89,0),('4066667d-6d98-02b4-b85a-599a76d11110','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Accounts','module',90,0),('40d90b58-01d8-a509-9305-59bf84d6ae00','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','delete','bh_marketing_company','module',90,1),('41e82abc-1c93-bd73-70df-599a7668e349','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Meetings','module',90,0),('4298f071-0d80-36f8-21bd-599a7664a71d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Accounts','module',90,0),('42a58e42-1ea1-22b4-78ac-599a762944f9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOW_WorkFlow','module',90,0),('43565ee4-fb48-f32c-6a5d-599a76387c8f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOS_Product_Categories','module',89,0),('43f30804-1345-7726-d87f-59bf983e6be5','2017-09-18 09:57:48','2017-09-18 09:57:48','1','1','massupdate','bh_marketing_company_history','module',90,0),('4413362c-ed62-2cb5-83a9-59b91f156bde','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','list','bh_org','module',90,0),('441ab32d-c53a-461b-cef3-599a769e1cac','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Meetings','module',90,0),('442f03d6-c9f5-ca69-c139-599a766a906f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','FP_events','module',90,0),('443c9b5a-8389-2e0c-e1af-599a76552385','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Project','module',89,0),('44aa2260-1ac5-b228-23d8-59bf888992df','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','access','bh_marketing_company','module',89,0),('44d70b39-dfc3-a514-5f50-59b784be15a8','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','delete','bh_faq_history','module',90,0),('44dba980-c693-4c70-51d6-599a76623d7c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','jjwg_Maps','module',89,0),('450bb1ca-9ed0-8d22-f35d-59b91190de16','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','import','bh_org_trade_points','module',90,0),('454d969d-34e3-d771-d78b-59b7dcbb7701','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','export','bh_providers','module',90,0),('464d34cc-bab7-f459-d05a-599a762f3f44','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Meetings','module',90,0),('4682da80-3fbc-c882-1978-599a76910426','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOS_Product_Categories','module',90,0),('46adae36-98bd-3e32-945c-599a76a78d1a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Project','module',90,0),('4737b2ac-4ea9-0d57-cc6d-59b7dbc5ffe6','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','massupdate','bh_organizations','module',90,1),('47d48aee-fe5d-3a4d-196f-59ba8dd281ff','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','edit','bh_cases_log','module',90,0),('48010d07-4b18-cc34-e95e-599a76f93915','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOS_Quotes','module',89,0),('48083cfe-787f-34a6-6902-599a761531d1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','jjwg_Maps','module',90,0),('48a1a6c1-7b10-befa-bfcd-599a76b891a4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Project','module',90,0),('48be407a-4f81-937a-17d3-599a760687b6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Meetings','module',90,0),('49326f2b-a6c0-4d45-ab0c-599a762d1c07','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOS_Product_Categories','module',90,0),('4ab7b63e-64af-ac18-b17a-599a76696b5e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','jjwg_Maps','module',90,0),('4ad439a9-6960-8427-0973-599a76564278','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Project','module',90,0),('4af0c8aa-088c-59aa-9f55-599a760e1d62','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Meetings','module',90,0),('4b2d90ae-1311-c1d5-8c0d-599a76fa2293','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOS_Quotes','module',90,0),('4bc1cad1-4ca1-c909-26d9-599a769a6015','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AM_ProjectTemplates','module',89,0),('4be1fa06-bc0c-05fa-a61c-599a760880a1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOS_Product_Categories','module',90,0),('4c605d76-8543-157e-6983-59b91f5daaca','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','edit','bh_org','module',90,0),('4c8c1f43-5d7b-8f22-0843-59b7b06a84f0','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','delete','bh_scr_status_history','module',90,0),('4ca71c0a-350f-128d-c36f-59b78450fb31','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','import','bh_faq_history','module',90,0),('4d06ba48-56bf-61e8-70a7-599a76232212','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Project','module',90,0),('4d1dbbe7-7fdb-f8d4-4f98-59b7dcf6ba69','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','massupdate','bh_providers','module',90,0),('4d67476f-484d-6e84-332e-599a76dbec89','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','jjwg_Maps','module',90,0),('4d720d74-dd00-821b-435f-599a762f9829','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Opportunities','module',90,0),('4d9cc169-770e-35e1-0089-599a7685e553','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Calls','module',89,0),('4ddd1350-eba8-5a56-0b13-599a76936d76','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOS_Quotes','module',90,0),('4e366ce6-dec3-1030-c860-599a76028b05','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('4eafd9da-47c5-5ffd-ce34-599a76186675','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AM_ProjectTemplates','module',90,0),('4ecffe8d-2969-a48e-6b4d-599a76aee76b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOS_Product_Categories','module',90,0),('4f394f86-bf59-ff75-cec7-599a76b6ed28','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Project','module',90,0),('4f64bbac-e636-362f-fd59-59c4ad010352','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','access','bh_region_area','module',89,0),('4fa4ab9f-b664-1d6e-13f2-59ba8dfb87f3','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','delete','bh_cases_log','module',90,0),('504c544a-437a-f484-b021-599a76cf4ae8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Calls','module',90,0),('505542fa-70e9-0cf4-4528-599a76c33d7e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','jjwg_Maps','module',90,0),('508ca8ad-9d36-7262-8350-599a760ddfd6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOS_Quotes','module',90,0),('50cb356d-fed4-f3c2-92e9-59d87992d692','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','view','bh_banks','module',90,0),('50e5e572-17cf-78e3-7a7e-599a768612cd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('5120d34b-0d03-06b0-bf54-599a76d0e08f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AM_ProjectTemplates','module',90,0),('512d4333-a968-5388-8fee-599a76059035','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Project','module',90,0),('5140ef18-3ef1-8bb6-8eea-59b911bd32c4','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','export','bh_org_trade_points','module',90,0),('51410ad4-f775-89a5-85d1-599a768aae96','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOS_Product_Categories','module',90,0),('527edcda-edc8-f410-1637-599a7667ba42','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Calls','module',90,0),('52bb3580-c0c0-473b-67a4-59bf8894921c','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','view','bh_marketing_company','module',90,0),('52c65175-5073-01ae-263e-599a7695923c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','jjwg_Maps','module',90,0),('535fd60d-0662-1a02-a4b7-599a761a2245','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Project','module',90,0),('537ab49e-2a3d-6b41-448c-599a769d1cfa','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOS_Quotes','module',90,0),('5391eebf-ab4e-4ae4-a7e4-599a761273a8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AM_ProjectTemplates','module',90,0),('53957182-401f-fcfa-927c-599a76dfc67a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('53ec5026-6afa-14ca-4e4c-59b634c965ac','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','access','bh_Card_ident','module',89,0),('53f09772-495d-3b6b-ca7a-599a7634553b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOS_Product_Categories','module',90,0),('5438bac9-f0e0-6020-3ef8-59b784f8373a','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','export','bh_faq_history','module',90,0),('544f15fd-ec58-4ad4-2bcd-599a76eeafc5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Leads','module',89,0),('546efb74-fd58-22cb-df12-59b91f24293b','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','delete','bh_org','module',90,0),('54b168ed-487c-07ec-5d43-599a76278540','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Calls','module',90,0),('552588b7-015f-95f3-9424-599a765c8048','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOS_Invoices','module',89,0),('5575e793-934c-b621-5cf6-599a763fdc34','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','jjwg_Maps','module',90,0),('55c7f645-925c-e071-f180-599a76061941','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('5602e7da-b0bf-44e1-b7e1-599a761bca42','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AM_ProjectTemplates','module',90,0),('562a3575-dcc4-9603-76ee-599a7654e4c4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOS_Quotes','module',90,0),('56a014a9-5861-99d9-9868-599a76e9496d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOS_Product_Categories','module',90,0),('56c8cdac-7d29-44d3-875c-59bf88ad2208','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','list','bh_marketing_company','module',90,0),('56c8ce0f-8421-500a-20ea-59c3c1df8211','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','access','bh_position_at_work','module',89,0),('57226694-959d-b748-ca9e-599a76871007','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Calls','module',90,0),('572efc0d-ce8c-5979-f6dd-599a762606fd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','jjwg_Areas','module',89,0),('580c0698-a7fb-6f20-928d-599a7610176c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Campaigns','module',90,0),('5813834e-4421-fdec-cb21-599a765948e8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOS_Invoices','module',90,0),('58256cb1-17ea-9034-02f6-599a76157a36','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','jjwg_Maps','module',90,0),('58304744-8db6-d055-31f9-59ba8d0394c0','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','import','bh_cases_log','module',90,0),('5873fb3c-f309-8326-4d35-599a76ab2a50','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AM_ProjectTemplates','module',90,0),('58778a33-c7f3-c7a8-98de-599a76ca8bd8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('58d9cca3-fadd-cdc1-21bc-599a762ee621','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOS_Quotes','module',90,0),('5954f5b6-b18c-7bdf-fe5b-599a76e1f253','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Calls','module',90,0),('59b1c18d-7bee-7c94-6af1-599a760e9928','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Cases','module',89,0),('5a49874d-e56e-2735-186d-59b9115d3d2c','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','massupdate','bh_org_trade_points','module',90,0),('5a9a00e0-d74a-8d27-c60c-599a765190e2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','jjwg_Areas','module',90,0),('5ac31560-42eb-6e43-48a2-599a76e2c3bf','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOS_Invoices','module',90,0),('5ad66b0e-8773-817a-cc6f-59bf88037a9e','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','edit','bh_marketing_company','module',90,0),('5ae4f7ba-7208-82e3-977c-599a76f8a3c4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AM_ProjectTemplates','module',90,0),('5ae89963-cb8c-22ed-920e-599a76ababd1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('5afa76b2-3c4c-3168-dccd-599a76483f9a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOR_Reports','module',89,0),('5b895950-f652-3fb7-d9a4-599a76847777','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOS_Quotes','module',90,0),('5b8bde2c-d02e-7c84-8126-59b7844447ae','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','massupdate','bh_faq_history','module',90,0),('5bc5f50c-b575-ee04-88d8-599a765ba65a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Calls','module',90,0),('5cfbb3b6-bc9c-4b77-7557-59c4ad088457','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','view','bh_region_area','module',90,0),('5d499050-901f-2edf-d3c3-599a765055bf','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','jjwg_Areas','module',90,0),('5d560ecd-c37a-2d65-1c25-599a76bf2666','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AM_ProjectTemplates','module',90,0),('5d5995ea-c68d-1dfd-48cd-599a76159284','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('5d69a019-50f7-bb8e-22f8-599a7630d916','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','EmailMarketing','module',89,0),('5d72ad88-69f5-c4a4-46f8-599a76490dbe','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOS_Invoices','module',90,0),('5df8856f-6b5f-a254-437b-599a760563d8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Calls','module',90,0),('5ee3f5d6-23fa-c71d-b497-59bf88a554b6','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','delete','bh_marketing_company','module',90,0),('5f6a0648-1c07-9ffd-5f0b-599a76cf4e06','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Bugs','module',90,0),('5fcaafff-63cf-8860-6a1b-599a767e7948','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('5fdaaee4-120b-7659-a0be-599a7622cb4b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','EmailMarketing','module',90,0),('5ff91570-aaca-bd9a-29f3-599a76693f18','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','jjwg_Areas','module',90,0),('6022271c-5323-8ed4-07fd-599a765486ff','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOS_Invoices','module',90,0),('6126f82a-b5fa-3c34-4a6b-59d879a843e9','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','list','bh_banks','module',90,0),('61e8b266-a43a-32a5-0425-59bbbf4e851d','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','import','bh_case_compound','module',90,0),('620d3247-dafc-1709-1c46-599a767f909d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','EmailMarketing','module',90,0),('62e721df-0eea-67ea-b2dd-599a76169bf6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','jjwg_Areas','module',90,0),('62f19314-8562-fc87-14bd-59c3c1b2a847','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','view','bh_position_at_work','module',90,0),('62f19453-98c3-471f-d613-59bf88d448e7','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','import','bh_marketing_company','module',90,0),('63103e9c-612c-0ef7-3ac8-599a76836298','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOS_Invoices','module',90,0),('63a47330-ba9b-039e-a1b6-59b66c448e43','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','view','bh_faq','module',90,0),('63d0b7b6-f10d-c16e-38fd-59b91f5ad517','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','import','bh_org','module',90,0),('64419b3a-a27b-d036-b131-599a7694107b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOR_Reports','module',90,0),('647e3b5a-18c9-3784-c3a9-599a7673ba37','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','EmailMarketing','module',90,0),('6516e723-d25b-f31b-058b-59c4adf1ac25','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','list','bh_region_area','module',90,0),('6596b7de-f007-f037-dfd0-599a76bac848','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','jjwg_Areas','module',90,0),('65bfb8cc-e196-31ac-bb5e-599a76f02496','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOS_Invoices','module',90,0),('65cc0527-4470-8b41-b710-59bbc16bb741','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','edit','bh_case_status','module',90,0),('66000a2d-b4c8-33c5-e3af-599a768b6d94','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Documents','module',89,0),('667247d6-57d9-c106-e04e-599a76924c90','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','EmailMarketing','module',90,0),('66a86caa-6115-9077-48d3-59b7b0e80a4e','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','access','bh_scr_status_history','module',89,0),('66e0f2ca-4ac4-0589-717e-599a76764a33','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Cases','module',90,0),('66f11e65-7204-49bd-8137-599a76465765','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOR_Reports','module',90,0),('66ff349b-5f94-8096-b341-59bf88a631c0','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','export','bh_marketing_company','module',90,0),('673c3290-0dfc-43e0-3125-59c3c196cf71','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','list','bh_position_at_work','module',90,0),('682e6a7e-03a0-8b90-b65f-59b67643393b','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','access','bh_Realty','module',89,0),('686f4fd4-d7db-bbde-cca0-599a76f70fe2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOS_Invoices','module',90,0),('68a4c502-7f1a-f47e-917a-599a76835ab5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','EmailMarketing','module',90,0),('68d4f693-e8d6-3ccd-2415-599a76882932','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Cases','module',90,0),('69618158-70d4-9cae-ed16-59c4ad232744','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','edit','bh_region_area','module',90,0),('69622ce1-87e7-4ddc-d1ba-599a7608c0e6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOR_Reports','module',90,0),('6a18a7ab-1de0-0c67-610f-59c24cfb895c','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','access','bh_lead_adress','module',89,0),('6a7a9655-6567-d48d-8f35-59b66cd4bad6','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','list','bh_faq','module',90,0),('6ac90976-42a4-435e-752c-599a7656c0aa','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Cases','module',90,0),('6ad750a5-7770-99b7-ecc9-599a761c22d9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','EmailMarketing','module',90,0),('6b0cc8f4-fe64-546d-e5d7-59bf8868687f','2017-09-18 08:48:06','2017-09-18 08:48:06','1','1','massupdate','bh_marketing_company','module',90,0),('6b3f055e-47c2-7717-bb86-599a7627099a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','FP_events','module',90,0),('6b7a1d3a-27c2-c47e-58a0-59bb7273ac3a','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','delete','bh_packet_activation','module',90,0),('6b86d58e-062c-7402-15f6-59c3c11412eb','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','edit','bh_position_at_work','module',90,0),('6caed5f7-b443-ad1f-9c91-599a7609eb1d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Calls_Reschedule','module',89,0),('6cbd0680-2a22-2bab-a74e-599a76767d0b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Cases','module',90,0),('6d09dfd9-bece-50a8-8f97-599a76fcb62f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','EmailMarketing','module',90,0),('6d2f9c77-61d2-f0bc-65c3-59ba8d270f7b','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','export','bh_cases_log','module',90,0),('6dac2767-84b0-fd08-6c34-59c4ad65fb27','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','delete','bh_region_area','module',90,0),('6dace3cd-0d93-6684-b16d-59b7c2a0f8a3','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','access','bh_script_param_response','module',89,0),('6ea003a6-eb38-6e2f-cf87-59c4ad8e6df8','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','list','bh_region','module',90,0),('6ea055a5-ceeb-0443-6f69-59bfc4089b20','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','access','bh_marketing_directorate','module',89,0),('6eef9a96-6e30-b5ce-24ac-599a76d07812','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Cases','module',90,0),('6f1c5563-1183-a1df-9367-599a76f184f2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','jjwg_Areas','module',90,0),('6f9ce98d-b52b-4d93-a5a8-599a7664bdc7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Calls_Reschedule','module',90,0),('6fbb30a7-91bc-4692-2a27-599a76b28f0e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOR_Reports','module',90,0),('6fd17c3b-c08d-f825-ead5-59c3c1ac2a14','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','delete','bh_position_at_work','module',90,0),('704a2c34-89ec-1e3d-fdce-59d87974a94c','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','edit','bh_banks','module',90,0),('70e39ffe-c96e-6dad-7298-599a7601d285','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Cases','module',90,0),('7102aeaa-eb9e-9fad-a836-59c3b26a0040','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','access','bh_place_of_work','module',89,0),('7150af57-79e1-ab7d-d0fd-59b66c06a980','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','edit','bh_faq','module',90,0),('719b8ba0-2df6-16ef-16ba-599a765391b9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Leads','module',90,0),('71cbde36-c1f4-1503-38c2-599a7625438b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','jjwg_Areas','module',90,0),('71f6ce5b-97c0-7762-e10b-59c4ad5ab9c4','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','import','bh_region_area','module',90,0),('72100511-3c2b-03bf-0525-599a76c447f0','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Opportunities','module',90,0),('724c734f-a06b-fb3d-471a-599a76a3608d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Calls_Reschedule','module',90,0),('726ac32d-7a1c-9e10-e3ef-599a760817d6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOR_Reports','module',90,0),('73162ac0-f612-90b7-1b4a-599a76389796','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Cases','module',90,0),('734a381d-16f3-ced5-38dd-59bb72c17969','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','import','bh_packet_activation','module',90,0),('741c2ceb-05af-bedc-53ae-59c3c1aebdcb','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','import','bh_position_at_work','module',90,0),('748208e2-fccf-7e77-e40d-599a76e98cef','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Opportunities','module',90,0),('7489916a-ba1e-733d-0134-599a76ca72dc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Leads','module',90,0),('74a97ab1-2ebe-4dff-4fe7-59b91faf47ee','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','export','bh_org','module',90,0),('74c2cfb4-d4df-557b-14b0-599a7687badc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','EAPM','module',89,0),('74dbdba9-f729-4f09-60dd-599a764bd49f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOR_Reports','module',90,0),('753a764b-cfc3-c022-ac3a-599a7693e625','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Calls_Reschedule','module',90,0),('760463a1-6cb1-3454-e684-59c4ad2efc8a','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','export','bh_region_area','module',90,0),('76410c2d-f475-a8a6-09f5-59c24beeab9f','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','import','bh_lead_adress','module',90,1),('767693d6-01a4-cb7f-eda8-599a76a8346c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','OutboundEmailAccounts','module',89,0),('767d91ff-10e3-6b2c-c4c1-599a76a0e0cc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Leads','module',90,0),('76961da8-5c8d-7e9c-47c4-59b6769d3e19','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','view','bh_Realty','module',90,0),('774c0a8b-c73e-614d-7f5d-599a768e113f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Campaigns','module',90,0),('778b565a-8185-0161-61f7-599a762edd50','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOR_Reports','module',90,0),('77b0db2a-f2f9-fa0b-1be8-599a76bb0c51','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','EAPM','module',90,0),('77e84575-4a4d-4998-c363-59b66c958c14','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','delete','bh_faq','module',90,0),('77ea0eee-f34d-f833-e87b-599a760327b1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Calls_Reschedule','module',90,0),('7866c3b7-21dc-a8ff-a3af-59c3c1bcd752','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','export','bh_position_at_work','module',90,0),('78b0226f-1988-8d39-8258-599a762fb01c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Leads','module',90,0),('78e0d8a6-20a1-fc8a-55b2-59bfc40f62b7','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','view','bh_marketing_directorate','module',90,0),('791a8fa0-25f8-f94e-65ea-59bbbfd954e4','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','export','bh_case_compound','module',90,0),('79a32e2a-5f69-e6f3-1865-599a76af6f9f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','OutboundEmailAccounts','module',90,0),('7a21ce8d-4a10-c1ea-d375-599a76bf263d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','EAPM','module',90,0),('7a4f0128-42ee-68c3-5ef8-59c4ad4290b2','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','massupdate','bh_region_area','module',90,0),('7a9998c1-05f4-3a02-2e90-599a7683146d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Calls_Reschedule','module',90,0),('7ae2b49f-4c79-b8e3-8b05-599a7674d118','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Leads','module',90,0),('7b975a4b-46a7-99f7-f91a-59bb7242a6bf','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','export','bh_packet_activation','module',90,0),('7bae28e1-b4c1-0c10-154c-59b8d12f77ee','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','export','bh_org_trade_points','module',90,1),('7c546860-d735-3847-bba2-599a76dbfa58','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','EAPM','module',90,0),('7c91189e-d124-f5d9-7494-599a761089d5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','OutboundEmailAccounts','module',90,0),('7cb16ef5-a0f0-21e5-2d1a-59c3c1f9fd68','2017-09-21 13:41:58','2017-09-21 13:41:58','1','1','massupdate','bh_position_at_work','module',90,0),('7cd6b298-cfcf-15df-f946-599a76430512','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Leads','module',90,0),('7ce5002f-61a3-ef9c-b703-599a7672175a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','ProspectLists','module',89,0),('7d2db09a-1002-3661-c0a5-59b676bf5c78','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','list','bh_Realty','module',90,0),('7d491bd3-c5cd-d032-d2fd-599a76127842','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Calls_Reschedule','module',90,0),('7d795b94-1fae-4771-f408-59d879139ab2','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','delete','bh_banks','module',90,0),('7de10ccf-fe6d-669d-ffff-59c9f379ecdb','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','list','bh_communicators','module',90,0),('7de10fdc-bd80-ba09-07bf-59bf84570484','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','import','bh_marketing_company','module',90,1),('7de29fe2-9df4-ba42-08f6-59bfc4e418fe','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','list','bh_marketing_directorate','module',90,0),('7dff2a3f-9474-6ea8-ae6d-599a7611eb73','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Alerts','module',89,0),('7e8c3cf8-dfc3-d3dc-7f0f-599a7684bcd7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Leads','module',90,0),('7eaa0420-9892-8398-a91f-599a76f91846','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Bugs','module',90,0),('7ebe4eff-a715-5381-94e5-59b66c3b4d0e','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','import','bh_faq','module',90,0),('7ec578eb-1401-bab8-4247-599a768b2dd8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','EAPM','module',90,0),('7f0d0569-4d22-d81e-7877-59b7cb41c821','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','massupdate','bh_Scripts_employee_comment','module',90,0),('7f40b80f-027e-eb1b-f246-599a762217d7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','OutboundEmailAccounts','module',90,0),('7f5606c0-e966-ad2c-5056-599a76fe2f5e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','ProspectLists','module',90,0),('80372cb0-9292-5b87-b97a-599a76fdf7c0','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Calls_Reschedule','module',90,0),('8081f854-29db-e4ab-ca31-59c3b28c77df','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','view','bh_place_of_work','module',90,0),('80aebad9-80cf-e430-2dba-599a76ccc8dd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Alerts','module',90,0),('81367f9d-74ce-b3ac-b663-599a76b363d7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','EAPM','module',90,0),('815bf937-161c-c561-0e02-599a76f7ee04','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','EmailTemplates','module',89,0),('8167a29b-41f0-7c64-5de2-59bbbf4d9ebc','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','massupdate','bh_case_compound','module',90,0),('818893e2-b41e-db10-0220-599a76ba264a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','ProspectLists','module',90,0),('81f041fd-6492-c233-c2ae-599a7644021e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','OutboundEmailAccounts','module',90,0),('82a7447b-eb54-11e7-5d51-59bfc4906091','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','edit','bh_marketing_directorate','module',90,0),('82a74fbf-0e30-41e5-ee0e-59c4d2b1751c','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','access','bh_passports','module',89,0),('82b9fccd-ea73-9cb0-3ba7-599a7695ca47','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Users','module',89,0),('831fcf60-fb21-bb9a-8290-599a76d6c2ed','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Alerts','module',90,0),('8369013d-f4fe-969b-94cd-599a76316c39','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','EAPM','module',90,0),('83bb1e4c-1c9f-077d-f6ca-599a76081817','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','ProspectLists','module',90,0),('83ccf998-f661-b065-1a9f-599a76c4ae43','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','EmailTemplates','module',90,0),('83e47d41-66b5-13fc-9703-59bb722ed942','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','massupdate','bh_packet_activation','module',90,0),('83f4509c-31c1-9fb5-62e5-599a764a3425','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','FP_Event_Locations','module',89,0),('84424fa2-5e9e-d532-ac85-59b676a6f2c7','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','edit','bh_Realty','module',90,0),('8461ccdd-62f6-3ca8-4a11-59b7c2561792','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','view','bh_script_param_response','module',90,0),('84de4479-13db-4468-a19e-599a7646b98b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','OutboundEmailAccounts','module',90,0),('85099372-b9f7-4dc5-d464-59c3b21ae927','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','list','bh_place_of_work','module',90,0),('852af6b0-5afc-6223-16a2-599a767682bb','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Users','module',90,0),('852e910a-c2b1-4e10-1592-599a76f06334','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','ProjectTask','module',89,0),('8590dce6-2c17-8350-5b11-599a761d707a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Alerts','module',90,0),('85af2c6c-b992-4b90-5d69-599a76a8e905','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','ProspectLists','module',90,0),('85d2f3fc-5365-7963-7b59-59b66c187958','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','export','bh_faq','module',90,0),('85da094b-bfaa-435a-fe8a-599a76d51309','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','EAPM','module',90,0),('863e0db8-f331-9366-8029-599a76b8ea4b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','EmailTemplates','module',90,0),('86e250d5-73e9-2af4-6bdf-599a76a1ad3e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','FP_Event_Locations','module',90,0),('875d803a-dbb3-edc5-cbd5-599a768ac071','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Users','module',90,0),('877c0129-2dbf-79d8-bbb5-59d8794e0176','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','import','bh_banks','module',90,0),('878dd400-8684-a569-c1bc-599a76789c54','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','OutboundEmailAccounts','module',90,0),('87c35f5a-7824-debd-0b43-599a769f4261','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Alerts','module',90,0),('87de1377-f874-3bd1-934c-599a7678407c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','ProjectTask','module',90,0),('87e1a6af-c022-c7fd-5114-599a76c61e15','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','ProspectLists','module',90,0),('88601fcf-2d89-a9f5-216a-59c24cf252df','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','view','bh_lead_adress','module',90,0),('887088cb-3e3b-f910-12bb-599a766966b9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','EmailTemplates','module',90,0),('889e0f2c-135d-c5f9-3219-59b672bbe965','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','list','bh_Autotransport','module',90,0),('89518738-794d-643a-d6ee-599a76019687','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Users','module',90,0),('89536ec8-b106-4e00-efae-599a768fb7d3','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','FP_Event_Locations','module',90,0),('899142db-42ff-d5d0-f96e-59c3b200a0bc','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','edit','bh_place_of_work','module',90,0),('89d22c86-ff26-8f3d-0bf2-599a764ddedb','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','ProjectTask','module',90,0),('8a083f8d-a912-52ad-f05e-59bb6e57eae4','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','access','bh_Scripts_leadership_recommend','module',89,0),('8a143a89-d852-bac7-8a78-599a7669f65d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','ProspectLists','module',90,0),('8a5bb4b7-4f0a-e653-d3ad-599a762fce29','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOR_Scheduled_Reports','module',89,0),('8a61e5a8-7064-bf1a-ee00-59bb756a0ebd','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','access','bh_formed_packets','module',89,0),('8a72e141-a0a5-f359-88e8-599a76dcbe76','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Alerts','module',90,0),('8a7be1e5-c600-e11f-c78e-599a7654ab2a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','OutboundEmailAccounts','module',90,0),('8ae19333-33b9-e1d7-35c1-599a76ddcf67','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','EmailTemplates','module',90,0),('8b186e89-e4e8-1131-7f96-59b676935c90','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','delete','bh_Realty','module',90,0),('8b841396-1dec-d71c-c83e-599a7663f6a3','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Users','module',90,0),('8bc466d2-7e96-eada-6340-599a76dc8870','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','FP_Event_Locations','module',90,0),('8bc62cd3-8ae6-2d6a-2075-599a760b5ced','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','ProjectTask','module',90,0),('8c083c53-f768-14ea-6cf0-599a761ad6c7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','ProspectLists','module',90,0),('8c31e714-573b-4f89-f784-59b7c2206a8a','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','list','bh_script_param_response','module',90,0),('8ca568b9-10cb-1570-3b4a-599a76a8a642','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Alerts','module',90,0),('8ca919bb-e9df-f6c1-6ced-59b66c4d2163','2017-09-11 10:59:08','2017-09-11 10:59:08','1','1','massupdate','bh_faq','module',90,0),('8caaba3e-3987-7270-c375-59c24c51f02b','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','list','bh_lead_adress','module',90,0),('8d142b2c-aaff-e327-7669-599a764012b6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','EmailTemplates','module',90,0),('8d884b9c-b0ed-1a91-dc57-599a76aafc65','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOR_Scheduled_Reports','module',90,0),('8dc870e2-345d-b98f-f737-599a76dda2a7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Contacts','module',89,0),('8df8b3ed-d884-4c72-1388-599a76d027c7','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','ProjectTask','module',90,0),('8e357884-7157-79db-7702-599a76999246','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','FP_Event_Locations','module',90,0),('8e55f494-bf00-5ba1-f237-59c3b218d38c','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','delete','bh_place_of_work','module',90,0),('8eef2709-ef90-e8af-5d0f-599a766e53b6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Users','module',90,0),('8f54f8a2-ed18-17b6-2f55-599a765c5d73','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Alerts','module',90,0),('8f852298-7b51-7c64-345e-599a76d2b1b0','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','EmailTemplates','module',90,0),('8f8723da-783c-76f5-a401-59c4c35eea90','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','access','bh_locality','module',89,0),('8ff947f9-6219-4d53-0078-599a76a84845','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOR_Scheduled_Reports','module',90,0),('902b3e49-651b-8544-bdb2-599a76d6c38d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','ProjectTask','module',90,0),('907806fb-5939-c7d3-7ae4-599a76178746','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Contacts','module',90,0),('90e327e0-13c4-c7fb-a48c-599a764d44e5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Users','module',90,0),('90e50c33-99fd-6c82-c170-599a7662bb66','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','FP_Event_Locations','module',90,0),('90f565a5-9bfe-d574-bdd6-59c24cc28d0b','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','edit','bh_lead_adress','module',90,0),('90f9081d-bafd-0cf9-9b40-599a76a7b7cc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Documents','module',90,0),('91a4a297-57d1-0801-44f2-59b7b065001d','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','import','bh_scr_status_history','module',90,0),('91aff240-f2e3-b52d-cdf0-59b676dc3603','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','import','bh_Realty','module',90,0),('91b7bc33-79ee-6f4d-6f72-599a76b6a67e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','EmailTemplates','module',90,0),('91bd288a-a072-251c-0380-59d87903981c','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','export','bh_banks','module',90,0),('91f5ea0f-dc26-b25d-53a1-59b91feb5429','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','massupdate','bh_org','module',90,0),('921f4a16-e988-d14f-e6d2-599a765f6048','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','ProjectTask','module',90,0),('925009fa-fcaa-14c2-22a9-599a76999d19','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','FP_events','module',90,0),('926c0087-e1d1-54e7-e6cd-599a76e5f4d2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Contacts','module',90,0),('92a0a51a-b066-5037-e827-59c3b2b652de','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','import','bh_place_of_work','module',90,0),('92a8dbae-2582-ce8c-d72c-599a76a61e08','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOR_Scheduled_Reports','module',90,0),('9315bce7-3083-68eb-8008-599a764ede45','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Users','module',90,0),('935600c6-acca-a9cb-32d0-599a76c1cc91','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','FP_Event_Locations','module',90,0),('9394c8a9-ac5d-9aea-4de7-59c4d2dbf9c7','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','view','bh_passports','module',90,0),('93c37e2f-2733-3827-016a-59b7c2930266','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','edit','bh_script_param_response','module',90,0),('9451c3b2-f67b-1dd3-6b3c-599a76522f3a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','ProjectTask','module',90,0),('949e942e-c1f6-c280-bb27-599a76a9edff','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Contacts','module',90,0),('9502fe60-51ba-d1f1-a3ec-59bfc41e8594','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','delete','bh_marketing_directorate','module',90,0),('9558541b-6614-fe5a-6b49-599a76d8bad5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOR_Scheduled_Reports','module',90,0),('957d02b1-d1e8-ce0c-d536-59c24c556555','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','delete','bh_lead_adress','module',90,0),('95c71c7b-e7a5-bdf3-73c8-599a763b6889','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','FP_Event_Locations','module',90,0),('970fa5c7-9e9b-8073-ee56-599a76cec617','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Contacts','module',90,0),('97a25914-a7cb-8d75-b613-59bfc02774e3','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','access','bh_marketing_directorate','module',89,1),('97ab00df-fd27-ce69-1c49-599a76ed439b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Opportunities','module',90,0),('97c96a0a-1b30-448b-496e-599a7614e760','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOR_Scheduled_Reports','module',90,0),('97cc42d9-4b38-c51a-573b-59b634bc484a','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','view','bh_Card_ident','module',90,0),('988612d1-2079-7e4c-2abf-59b676d57e14','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','export','bh_Realty','module',90,0),('98d385cf-eff9-4a46-870a-59c4d23b338a','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','list','bh_passports','module',90,0),('98e3baca-f3c3-a01f-7939-59ba8de0cbf6','2017-09-14 14:08:41','2017-09-14 14:08:41','1','1','massupdate','bh_cases_log','module',90,0),('9903a9bc-cd01-e9f8-83ab-599a76baf5ca','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Contacts','module',90,0),('994d92ef-ab20-ab04-1d42-59c3b2e891be','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','export','bh_place_of_work','module',90,0),('9a0227ad-4452-aa73-5465-59bb75781d2a','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','view','bh_formed_packets','module',90,0),('9a750e0b-cab3-77f3-c37b-599a765090cd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Campaigns','module',90,0),('9a78fb8d-00e6-4eeb-b735-599a7611a612','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOR_Scheduled_Reports','module',90,0),('9aae0522-a3ad-8a7f-1964-599a7640014e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Prospects','module',89,0),('9abbd579-71c3-3a89-c7d2-59bfc43e6c94','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','import','bh_marketing_directorate','module',90,0),('9b2a4b54-a1bd-8078-8e2c-59b7b077ec07','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','export','bh_scr_status_history','module',90,0),('9b3623e6-f296-e43d-655f-599a76515725','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Contacts','module',90,0),('9b939f51-39a0-7c32-41f5-59b7c21a2977','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','delete','bh_script_param_response','module',90,0),('9bb20949-8ec9-ef75-505d-59d362ee5263','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','access','bh_channels_impact','module',89,0),('9c3cd6ef-7e43-78e7-420b-59d87908259e','2017-10-07 06:52:11','2017-10-07 06:52:11','1','1','massupdate','bh_banks','module',90,0),('9ce12610-f6bc-69a0-5731-59c24c53450a','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','import','bh_lead_adress','module',90,0),('9d28731e-2e06-99f0-172d-599a762f0f74','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('9d68bda2-cba2-7a37-fb05-599a7656174f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Contacts','module',90,0),('9dd54586-64f0-ea9c-5645-59c3b2f579e0','2017-09-21 12:37:43','2017-09-21 12:37:43','1','1','massupdate','bh_place_of_work','module',90,0),('9dea0a8d-ea2e-3fbd-6254-599a76876955','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Bugs','module',90,0),('9e124d4e-f621-9da9-2054-59c4adb5ae96','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','access','bh_country','module',89,0),('9e91fd1e-eac7-0430-59a4-59b7cbd45807','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','access','bh_Scripts_employee_comment','module',89,0),('9ee0e220-19ea-07bf-7ec4-59b6346d31fc','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','list','bh_Card_ident','module',90,0),('9f6b0311-ce4c-81a1-1fa5-599a76742253','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Tasks','module',89,0),('9fbd863c-caad-36c0-8ffc-59bfc4b8223c','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','export','bh_marketing_directorate','module',90,0),('a074a3de-2c36-0a45-fc8a-59c4d2699e3d','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','edit','bh_passports','module',90,0),('a12bcf8d-4105-01ef-7a44-59c24c5fe930','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','export','bh_lead_adress','module',90,0),('a168ca82-04aa-975a-f17b-59c8f299a00f','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','access','bh_phones','module',89,0),('a1d24d23-a8cb-60d0-aed5-59bb75bb7c9e','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','list','bh_formed_packets','module',90,0),('a1ffd7d5-c062-d26c-dc01-599a76e078cb','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','access','AOD_Index','module',89,1),('a21a9d5d-8656-149c-6bd7-599a76ce1593','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Tasks','module',90,0),('a3a235a4-3762-a2ac-a9f7-59b7c25d9ea3','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','import','bh_script_param_response','module',90,0),('a3cb2d0b-33eb-ac16-b898-59bfad96ad3e','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','access','bh_marketing_response','module',89,0),('a435c4fb-2546-97bf-e9f6-59b8d11d5c81','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','massupdate','bh_org_trade_points','module',90,1),('a4824a60-bf3f-570d-bb1a-59c4c3fe7aa0','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','view','bh_locality','module',90,0),('a48b9a02-d346-bc77-5831-599a761734a6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Tasks','module',90,0),('a4edefd2-27a8-7164-180c-599a76df73a0','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','view','AOD_Index','module',90,1),('a5395a72-3ca8-4c86-f92b-59c4d25fdcc1','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','delete','bh_passports','module',90,0),('a5766a22-caea-beca-5bb3-59c24c115a99','2017-09-20 11:10:39','2017-09-20 11:10:39','1','1','massupdate','bh_lead_adress','module',90,0),('a5b36b43-7f24-e326-ea62-59bfc43855b3','2017-09-18 13:06:40','2017-09-18 13:06:40','1','1','massupdate','bh_marketing_directorate','module',90,0),('a5c8230d-3965-39a6-8e15-59b66f29ed78','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','access','bh_scripts','module',89,0),('a5f5881d-7a40-e621-cf06-59b6344aedcf','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','edit','bh_Card_ident','module',90,0),('a6be267d-ec0f-ea59-2980-599a76ca1044','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Tasks','module',90,0),('a6f91258-a707-3386-a35b-599a76387104','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Emails','module',89,0),('a75ee405-2c0e-072e-f6e5-599a76267685','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','list','AOD_Index','module',90,1),('a8391db3-5c5c-3ade-248b-59bbc1b30f30','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','access','bh_case_status','module',89,0),('a87e39a9-ce23-8f8f-c18d-59d36e128f3f','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','access','bh_campaine_products','module',89,0),('a8a35c93-73b2-40ba-2bfd-59b676e79a20','2017-09-11 11:40:08','2017-09-11 11:40:08','1','1','massupdate','bh_Realty','module',90,0),('a92f3963-29d0-adb5-9c80-599a76631e3f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Tasks','module',90,0),('a946f4b4-8972-8d8a-cedf-59c4c35d1fec','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','list','bh_locality','module',90,0),('a963d29d-76d0-8609-42e8-59bb75d83e4c','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','edit','bh_formed_packets','module',90,0),('a9a89432-d3a4-c2c6-f0b9-599a761759a9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Emails','module',90,0),('a9d384ef-3b0b-cf21-8880-599a7682e745','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOP_Case_Updates','module',89,0),('a9fe18cb-dd4c-51fa-66d7-59c4d2cf6a00','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','import','bh_passports','module',90,0),('aa0e7fba-8cc7-a73b-9204-599a7621ac07','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','edit','AOD_Index','module',90,1),('aba031cc-930a-e15f-3ccd-599a763473bf','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Tasks','module',90,0),('abdb223e-757a-51fa-4657-599a76af5158','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Emails','module',90,0),('abef5917-5bca-2075-33f7-59b7c2b9dc1e','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','export','bh_script_param_response','module',90,0),('acbdff7a-f67c-5d60-ee34-599a76a6a833','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','delete','AOD_Index','module',90,1),('acc191a4-f1e0-7850-138d-599a767f1037','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOP_Case_Updates','module',90,0),('accb953c-201c-25b1-dd7d-59b634c8a40b','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','delete','bh_Card_ident','module',90,0),('ad919292-259c-7524-ef67-59c4c38c46a4','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','edit','bh_locality','module',90,0),('ae114b64-95d7-2cd0-84b3-599a7611c783','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Tasks','module',90,0),('ae358c44-31a1-7746-bbf2-59b7b019f19d','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','massupdate','bh_scr_status_history','module',90,0),('ae4c3f6d-3f23-ced3-f8ea-599a76fb3486','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Emails','module',90,0),('aec2cbca-cfd3-afba-49e4-59c4d2a440df','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','export','bh_passports','module',90,0),('af2f076c-e2e4-a816-b63c-599a76aa547f','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','import','AOD_Index','module',90,1),('af329dd7-e59b-9365-7bbe-599a76174090','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOP_Case_Updates','module',90,0),('b0263c00-3c8f-ec38-0c1a-59b7cbdbad8b','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','view','bh_Scripts_employee_comment','module',90,0),('b07eb402-78fb-d89b-d86f-599a761894a5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Emails','module',90,0),('b082434b-4222-88e7-bc62-599a766d22a4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Tasks','module',90,0),('b0f57029-f964-3cdc-dccc-59bb75c12dde','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','delete','bh_formed_packets','module',90,0),('b14a87c4-2997-560b-bfeb-59bb7278b4c0','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','access','bh_packet_activation','module',89,0),('b1de95ee-6191-7bb7-dc04-599a766c3b8c','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','export','AOD_Index','module',90,1),('b1e22113-04e1-1855-a95e-599a76d1e9b1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOP_Case_Updates','module',90,0),('b2514175-3aad-7c16-c429-59bb6e11abea','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','view','bh_Scripts_leadership_recommend','module',90,0),('b2564cf4-ea38-8300-e234-59c4c3c3e894','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','delete','bh_locality','module',90,0),('b2ca46ac-cda9-7b91-90f6-599a765a88c2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AM_TaskTemplates','module',89,0),('b2efc543-62af-1b43-e2be-599a7693aa3e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Emails','module',90,0),('b34a03c1-3bc5-c171-19a3-59c4ad28c09b','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','edit','bh_region','module',90,0),('b374659d-9cb9-b93a-5599-59b66fb510f5','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','view','bh_scripts','module',90,0),('b3877144-bfa9-bbeb-a6d5-59c4d2da66b2','2017-09-22 09:05:55','2017-09-22 09:05:55','1','1','massupdate','bh_passports','module',90,0),('b3c4822f-a59d-9609-bb8d-59c8f20fa10b','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','view','bh_phones','module',90,0),('b3e030a9-b0ff-9f6a-40b3-59b634f1cf4b','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','import','bh_Card_ident','module',90,0),('b44f9bd7-6b31-ba43-0b75-599a767dabb7','2017-08-21 05:56:19','2017-09-13 10:48:57','1','','massupdate','AOD_Index','module',90,1),('b45323ba-aea9-5e9a-ebb7-599a763905cf','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOP_Case_Updates','module',90,0),('b52240b9-9ccd-7844-dee3-599a76a404ab','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Emails','module',90,0),('b579d64e-2c0b-e934-4d50-599a762da785','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AM_TaskTemplates','module',90,0),('b668f904-221e-0107-8d5d-59d36e59027e','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','view','bh_campaine_products','module',90,0),('b6a0e7b1-52c2-c940-7b61-59bfc0fe8adc','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','view','bh_marketing_directorate','module',90,1),('b702b909-a5a7-47eb-4a17-599a7678bfd4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOP_Case_Updates','module',90,0),('b7935dc8-e6ed-3d7a-4267-599a7622258a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Emails','module',90,0),('b7ba74a8-3591-00d2-1c62-59b8d1c515c4','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','access','bh_org_trade_points','module',89,1),('b7ead238-d15d-a284-a2be-599a763d67a4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AM_TaskTemplates','module',90,0),('b8090a7a-a8bb-404b-e9e9-599a76584b47','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Documents','module',90,0),('b84c2ec9-622b-f790-a0a8-59bfad802bc8','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','view','bh_marketing_response','module',90,0),('b84c2ef7-0468-c180-e2ce-59c4c37051ad','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','import','bh_locality','module',90,0),('b856449e-d222-090f-5f1f-59bbc12f710e','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','view','bh_case_status','module',90,0),('b8893699-c9d7-b5f1-9df5-59c4add76d7d','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','view','bh_country','module',90,0),('b904140e-bc79-8387-d171-59bb75f085c4','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','import','bh_formed_packets','module',90,0),('b973c218-5642-8084-7ffe-599a768a9a8e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOP_Case_Updates','module',90,0),('b97d5eed-9bb7-51f3-b696-59c8f22623e8','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','list','bh_phones','module',90,0),('b9b509db-5212-985d-4c0d-599a7649e361','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Campaigns','module',90,0),('ba0bf5ff-c23a-b0b1-b729-59b66f12bd2a','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','list','bh_scripts','module',90,0),('ba570b24-08c6-7845-5e07-59b7c21ec0c3','2017-09-12 11:18:46','2017-09-12 11:18:46','1','1','massupdate','bh_script_param_response','module',90,0),('ba5be8cd-5b52-1f56-1cd0-599a76b3b3a4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AM_TaskTemplates','module',90,0),('bad30dd5-a449-14ed-a21e-599a7610bccc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Opportunities','module',90,0),('baf4d9a2-d71f-2bd4-ed39-59b634a0a894','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','export','bh_Card_ident','module',90,0),('bb4b0297-ea29-2093-369d-59d36e336ee1','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','list','bh_campaine_products','module',90,0),('bbde6250-7ce1-ffe7-99a0-59b7cb9f416e','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','list','bh_Scripts_employee_comment','module',90,0),('bc234c98-1558-dc7c-e597-599a76de017b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOP_Case_Updates','module',90,0),('bc59c21b-9dca-220f-8c61-59bfad62bfe1','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','list','bh_marketing_response','module',90,0),('bd0b6a42-c658-63a3-44ce-599a769ee7df','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AM_TaskTemplates','module',90,0),('bd10e03d-e81c-7555-e8a9-59c4c36184ec','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','export','bh_locality','module',90,0),('bd10eb3e-f70f-8de5-9552-59c4add94d53','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','list','bh_country','module',90,0),('bd2b98ee-63d7-5faa-68dd-599a7628f04a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOS_Products','module',89,0),('bd4802f8-17bb-c95d-2f16-599a766abab0','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','FP_events','module',90,0),('bdf1d0ea-c232-8a0d-3473-599a76f3d8d5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOW_Processed','module',89,0),('be3cc24c-9c96-8cea-f704-599a76951e8e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Spots','module',89,0),('bebc00b0-08a5-21dd-8407-59bf84b2609c','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','export','bh_marketing_company','module',90,1),('bec4f2ae-15be-293c-eb58-59bb6e898707','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','list','bh_Scripts_leadership_recommend','module',90,0),('bfee9cd3-9dbe-5b53-a3b6-59d36efe57b9','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','edit','bh_campaine_products','module',90,0),('c0e1770d-4ef2-4f75-7742-59bf84ef7c73','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','access','bh_marketing_company','module',89,1),('c0e1e7d9-e3bf-7a46-159d-59bbc19d8cfa','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','list','bh_case_status','module',90,0),('c0e21852-8add-5413-bcdb-59b66f2a33f9','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','edit','bh_scripts','module',90,0),('c112bb8b-c6f4-37d8-eecd-59bb75715775','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','export','bh_formed_packets','module',90,0),('c1130119-811d-e0f1-a188-599a76014f0a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Bugs','module',90,0),('c11e6609-eb68-6e72-8fd8-599a76432987','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOW_Processed','module',90,0),('c12ad41a-e614-1127-435d-599a76ba594d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Spots','module',90,0),('c1988527-0605-153c-16c6-59c4c37d45be','2017-09-22 08:02:05','2017-09-22 08:02:05','1','1','massupdate','bh_locality','module',90,0),('c1cae57c-140a-5c4a-1b44-59b634f6798f','2017-09-11 07:02:04','2017-09-11 07:02:04','1','1','massupdate','bh_Card_ident','module',90,0),('c3220fb1-2db0-4037-fcd9-59b7845924c4','2017-09-12 06:54:01','2017-09-12 06:54:01','1','1','access','bh_faq_history','module',89,0),('c35d5765-c6dc-f0a0-d14d-599a76148de5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Spots','module',90,0),('c3cdec72-21e4-d044-b152-599a76f9318d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOW_Processed','module',90,0),('c3fae434-755c-3686-d9f6-59bfadee775a','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','edit','bh_marketing_response','module',90,0),('c453a6f3-91a6-2995-5065-59d36e855b8f','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','delete','bh_campaine_products','module',90,0),('c474f24f-fc9f-625f-4826-59bfc09e4f9c','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','list','bh_marketing_directorate','module',90,1),('c4bd30a3-504d-9721-57b4-599a7670b869','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOS_Products','module',90,0),('c4db83e6-82d1-19ae-c5b7-599a76eb308e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AM_TaskTemplates','module',90,0),('c4ef063a-69e8-c7dc-202e-59c4adee8922','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','edit','bh_country','module',90,0),('c59aa46f-3cdc-2714-9510-599a761ac686','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOK_KnowledgeBase','module',89,0),('c5a62322-0600-de49-1210-59c8f2bc0ab7','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','edit','bh_phones','module',90,0),('c5a62a42-6743-36c3-aae7-59c24bdf6372','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','access','bh_lead_adress','module',89,1),('c5a70b73-7864-7e3e-5b1f-599a76a5ac40','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Prospects','module',90,0),('c67d762f-0ce5-4684-410d-599a7653eada','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOW_Processed','module',90,0),('c70e1e5a-7658-287c-f79b-599a7655525b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AM_TaskTemplates','module',90,0),('c7121e21-54f6-4552-b364-59bb6e700fa4','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','edit','bh_Scripts_leadership_recommend','module',90,0),('c76ccd64-4ab3-95c0-8341-599a76e37bcc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOS_Products','module',90,0),('c779a7c9-26e3-9715-dce2-59b66ff7779a','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','delete','bh_scripts','module',90,0),('c8087122-1b3a-12ff-e830-59bfad5fad08','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','delete','bh_marketing_response','module',90,0),('c84a24bb-fcf2-70b6-a1c9-599a766eedc1','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOK_KnowledgeBase','module',90,0),('c85211d8-2f9d-93a1-8e6d-59b7cb0ad2bb','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','edit','bh_Scripts_employee_comment','module',90,0),('c8a45143-db17-246a-d3b5-59bb7522a154','2017-09-15 06:39:06','2017-09-15 06:39:06','1','1','massupdate','bh_formed_packets','module',90,0),('c8f73b77-63e4-980b-0dd5-59d36e6a5e13','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','import','bh_campaine_products','module',90,0),('c92d0e1a-1a57-63ec-0f6c-599a76a8bdb4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOW_Processed','module',90,0),('c939a27d-f3fb-2b41-5fdb-59c4ad553804','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','delete','bh_country','module',90,0),('c97f129d-f046-2920-2906-599a765213cf','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AM_TaskTemplates','module',90,0),('c9d73f32-87ba-00eb-1c6f-59d36242af37','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','view','bh_channels_impact','module',90,0),('c9da3bb1-8fc6-07ef-9181-599a76af6caa','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOS_PDF_Templates','module',89,0),('ca1c4902-515d-5799-d74d-599a76478eb8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOS_Products','module',90,0),('ca3371a6-68a8-76a2-cc5b-599a76b779c2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Spots','module',90,0),('ca6ad381-d75d-c53e-e659-59c8f2b57624','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','delete','bh_phones','module',90,0),('ca7060b1-f092-0493-b455-59bb72f3b85d','2017-09-15 06:26:55','2017-09-15 06:26:55','1','1','view','bh_packet_activation','module',90,0),('cabb3007-62ee-106a-02e5-599a76eadb86','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOK_KnowledgeBase','module',90,0),('cb249b1c-29b1-8851-a950-599a76f89651','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','jjwg_Markers','module',89,0),('cbdc8b99-c896-75d5-79c8-599a76717ba4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOW_Processed','module',90,0),('cc5328f0-0b0d-cf44-28f1-59bfad28d72f','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','import','bh_marketing_response','module',90,0),('cc973570-a026-50e2-48d0-59bbbf18eea1','2017-09-15 11:56:00','2017-09-15 11:56:00','1','1','access','bh_case_compound','module',89,0),('cca486d5-9d13-6b76-5978-599a764ac8bc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Spots','module',90,0),('ccc84595-3cd9-e0da-754c-599a767aa944','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOS_PDF_Templates','module',90,0),('cccbd0a0-901c-e450-0de3-599a764df161','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOS_Products','module',90,0),('cd1dc2b1-271b-a2c4-2596-59d36eed1a61','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','export','bh_campaine_products','module',90,0),('cd2c343e-c38d-7d46-7e52-599a762e8286','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOK_KnowledgeBase','module',90,0),('cdc15a9b-e176-b575-a7c7-59c4ade5c073','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','import','bh_country','module',90,0),('ce11459f-76dd-cba4-027a-59b66f57b289','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','import','bh_scripts','module',90,0),('ce512fbf-cc9a-5485-b8b3-599a769c3cfa','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','jjwg_Markers','module',90,0),('ce8c1d3e-13dc-4100-ddf2-599a760e9a76','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOW_Processed','module',90,0),('cef28965-08a0-a7a5-9a77-59c8f263b83a','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','import','bh_phones','module',90,0),('cf15813c-01d7-b922-a192-599a7625b808','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Spots','module',90,0),('cf20b7c7-b03e-d6f2-1459-59bb6e53ac20','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','delete','bh_Scripts_leadership_recommend','module',90,0),('cf77caea-db36-7986-2faa-599a7614b74d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOS_PDF_Templates','module',90,0),('cf9d46df-5f1d-2e10-e40b-599a76aa9488','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOK_KnowledgeBase','module',90,0),('cfb9efa5-e6d9-190d-4bbe-599a76407503','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOS_Products','module',90,0),('d060bbce-7331-04db-b5dd-59bfad48fd48','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','export','bh_marketing_response','module',90,0),('d06ec66e-78c8-115b-4bd7-59d3624d21f6','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','list','bh_channels_impact','module',90,0),('d100b130-5fb5-d546-f01a-599a767dddf8','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','jjwg_Markers','module',90,0),('d13b916c-4c23-49c0-8d57-599a7610086e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOW_Processed','module',90,0),('d14100b7-3c05-1881-29a9-59b8d184c80b','2017-09-13 06:31:56','2017-09-13 10:48:57','1','1','view','bh_org_trade_points','module',90,1),('d1481ede-976d-a030-3166-599a763e26bd','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Spots','module',90,0),('d20bfcc4-7a24-1836-12f8-59c4ad0bc877','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','export','bh_country','module',90,0),('d20e42e7-1bb2-2022-4478-599a76fa6fea','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOK_KnowledgeBase','module',90,0),('d227526a-468c-be95-e205-599a76b7370f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOS_PDF_Templates','module',90,0),('d22aeaa6-84cc-32e5-f416-599a761d0f2c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOS_Products','module',90,0),('d37a2d6f-6705-e229-ce8c-59c8f2472093','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','export','bh_phones','module',90,0),('d3b03a48-06b9-43fa-9aa2-599a769cdb60','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','jjwg_Markers','module',90,0),('d3b91eab-3097-b90f-4a09-599a7659f1d6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Spots','module',90,0),('d431405f-6186-7a9a-303c-59bfad4110f7','2017-09-18 11:26:43','2017-09-18 11:26:43','1','1','massupdate','bh_marketing_response','module',90,0),('d47f572e-5a92-4139-d72d-599a76735be0','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOK_KnowledgeBase','module',90,0),('d4a8d076-a15a-9b9e-ca19-59b66f1f517e','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','export','bh_scripts','module',90,0),('d4d6e558-1c04-98d3-f356-599a766fe517','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOS_PDF_Templates','module',90,0),('d5125d7b-dca5-9b68-c7b5-59d3627ce325','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','edit','bh_channels_impact','module',90,0),('d518f351-2ef4-02a0-c395-599a761f081f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOS_Products','module',90,0),('d525687b-47f7-38cc-3c93-59bfc0aa92c0','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','edit','bh_marketing_directorate','module',90,1),('d59f021e-3c9a-135f-423d-59c8f23e773b','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','list','bh_contact_person','module',90,0),('d59f0530-f8e8-a791-598a-59c24b83ef22','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','export','bh_lead_adress','module',90,1),('d65690a6-e4eb-6c79-2963-59c4ad754739','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','massupdate','bh_country','module',90,0),('d65692ae-28b7-9276-291e-59c8f2688a8e','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','access','bh_contact_person','module',89,0),('d65fcea6-07dd-4dba-625f-599a763c6ba4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','jjwg_Markers','module',90,0),('d6f06ba9-d94b-c5bc-adda-599a764f4754','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOK_KnowledgeBase','module',90,0),('d6f0db6c-b7f2-427e-b7d8-59bb6eadcaec','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','import','bh_Scripts_leadership_recommend','module',90,0),('d736c0c1-e430-a162-701a-59b7cb39ac1f','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','delete','bh_Scripts_employee_comment','module',90,0),('d747e49c-d4e9-8976-40e5-599a76fc9ab6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOS_PDF_Templates','module',90,0),('d782d5c8-ebcc-c7d4-09a6-599a7679945d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','AOS_Contracts','module',89,0),('d801d9ee-2a57-a8b2-82b8-59c8f2b36f37','2017-09-25 12:11:30','2017-09-25 12:11:30','1','1','massupdate','bh_phones','module',90,0),('d85aff29-c700-c9b2-0f53-599a76a3cfe4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','SecurityGroups','module',89,0),('d90f47f9-d7a3-b3f0-fddc-599a7695afd5','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','jjwg_Markers','module',90,0),('d9700c2e-080c-56d6-abd4-59c3c1803779','2017-09-21 13:42:41','2017-09-21 13:42:41','1','1','access','bh_category_at_work','module',89,0),('d9b5edf8-aba9-115b-6881-59d362bb5e88','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','delete','bh_channels_impact','module',90,0),('da35f08a-255d-9edf-54b3-599a764f89ad','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOS_PDF_Templates','module',90,0),('da70e24d-2b62-284f-55d3-599a76409796','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','AOS_Contracts','module',90,0),('daa13915-14a0-edd2-0965-59bfc0cf6f34','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','delete','bh_marketing_directorate','module',90,1),('db0a7f6a-bc73-6809-03d6-599a7675ec2d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','SecurityGroups','module',90,0),('db407830-e29c-338c-d4a6-59b66f9819f2','2017-09-11 11:09:55','2017-09-11 11:09:55','1','1','massupdate','bh_scripts','module',90,0),('db857f7c-30ac-4e3e-a481-59d36eaae5d2','2017-10-03 11:02:04','2017-10-03 11:02:04','1','1','massupdate','bh_campaine_products','module',90,0),('dbbed651-952b-ce50-3b31-599a76484a11','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','jjwg_Markers','module',90,0),('dcde0e34-8f5f-558b-abca-599a768505c9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Campaigns','module',90,0),('dce5732d-c6d0-4c2e-1ed2-599a769ee793','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOS_PDF_Templates','module',90,0),('dd206ef5-64f9-ad86-8b62-599a76a3a6fa','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','AOS_Contracts','module',90,0),('dd67c8e5-6468-483e-3a2f-599a762df87a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Notes','module',89,0),('dd7f1bdf-deaa-38f0-536e-599a76141f3b','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','TemplateSectionLine','module',89,0),('ddbab590-8a34-ddd5-5c5f-59c9f3dbf733','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','access','bh_communicators','module',89,0),('dddc73d7-3832-7d83-213f-59d3628e165b','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','import','bh_channels_impact','module',90,0),('ddf88f8e-67da-534e-2851-599a7696039e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','SecurityGroups','module',90,0),('ddfc05ee-2d52-2b5d-b7f8-599a761895d2','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Opportunities','module',90,0),('deace5a1-368f-b25f-56dd-599a76a2f43a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','jjwg_Markers','module',90,0),('dec0e7c6-6385-0052-2404-59bb6e0c6592','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','export','bh_Scripts_leadership_recommend','module',90,0),('df1a0d27-369d-f0ec-d97c-599a763a2972','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Documents','module',90,0),('dfc263c4-29e6-bf4d-d926-59b7cb4bb033','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','import','bh_Scripts_employee_comment','module',90,0),('dfe00a14-19ed-4260-5839-59bfc0673a84','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','import','bh_marketing_directorate','module',90,1),('e0175e4c-fbba-00ab-c331-599a76dccaee','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','Notes','module',90,0),('e04cfef2-621f-cb32-bcc0-599a76b8439c','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','AOS_Contracts','module',90,0),('e0530a6f-730b-8f47-fd4b-599a76def419','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Bugs','module',90,0),('e071059b-ba2c-d6ef-f894-599a76067462','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','FP_events','module',90,0),('e0a81e97-cc4e-b445-4a87-599a76b8cae9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','SecurityGroups','module',90,0),('e0aba5dd-dfef-af28-ade1-599a76f974cc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','TemplateSectionLine','module',90,0),('e1b63eb5-1cd0-be40-79bd-59b7b06cf284','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','view','bh_scr_status_history','module',90,0),('e249e332-0fbb-e777-c1dd-599a764b4d2a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Notes','module',90,0),('e2be0fc0-9666-57b9-2519-599a76461d41','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','AOS_Contracts','module',90,0),('e35b266f-a587-2aa3-8804-599a76b97c97','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','TemplateSectionLine','module',90,0),('e3961019-4f85-3fa4-48e0-599a7622372e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','SecurityGroups','module',90,0),('e40f83a8-df43-c3cb-26eb-599a76820755','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','jjwg_Address_Cache','module',89,0),('e4438bb2-15a9-05e1-f3ec-59b6720c03ee','2017-09-11 11:26:31','2017-09-11 11:26:31','1','1','access','bh_Autotransport','module',89,0),('e47c60ca-66e8-4e30-b14e-599a76d0df8e','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','Notes','module',90,0),('e56e17ed-fe89-4165-1d92-59d362adcff8','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','export','bh_channels_impact','module',90,0),('e5ac08e8-9487-2865-bcdb-599a7652a4a9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','AOS_Contracts','module',90,0),('e60ab470-4551-7a0a-a8d8-599a765073fc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','TemplateSectionLine','module',90,0),('e645a76a-1a26-c36c-d1ea-599a760b0881','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','SecurityGroups','module',90,0),('e68cf622-355e-4efb-7f52-59c4ad34cbb3','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','access','bh_region','module',89,0),('e68cfbf2-7605-7520-20d7-59c24baadffe','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','view','bh_lead_adress','module',90,1),('e69104a6-b8d9-d7ce-4632-59bb6eed5300','2017-09-15 06:10:24','2017-09-15 06:10:24','1','1','massupdate','bh_Scripts_leadership_recommend','module',90,0),('e6ed7044-b4b8-5b46-0472-599a76e601fe','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','Notes','module',90,0),('e77a92b3-cf00-629e-3929-599a76d9b656','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','jjwg_Address_Cache','module',90,0),('e85b9b43-cacf-69f6-9b18-599a76376cad','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','AOS_Contracts','module',90,0),('e8cb02dc-809c-88a7-4db1-59b7cb111997','2017-09-12 11:55:15','2017-09-12 11:55:15','1','1','export','bh_Scripts_employee_comment','module',90,0),('e8cf0cfc-ea67-47d8-7cdc-599a768ffa34','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','Prospects','module',90,0),('e8f8ccc5-87ff-9a45-f9c4-599a76e061ba','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','TemplateSectionLine','module',90,0),('e91ffcae-3344-7fbf-9ae1-599a767950ac','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','Notes','module',90,0),('e933b11c-955a-13ab-c435-599a7667cd69','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','SecurityGroups','module',90,0),('e9d32dd6-131f-e29d-5ccf-59d3626ad573','2017-10-03 10:12:41','2017-10-03 10:12:41','1','1','massupdate','bh_channels_impact','module',90,0),('ea2a2d43-e7dd-01a6-ceb5-599a760328d9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','list','jjwg_Address_Cache','module',90,0),('eacc9db3-842c-ae5d-6757-599a767c8813','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','AOS_Contracts','module',90,0),('eb14abbf-71f8-e1bc-6343-59c24bcfc36e','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','list','bh_lead_adress','module',90,1),('eb52824b-4df9-2bb6-b1d3-599a760786ed','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','Notes','module',90,0),('eba84c44-9760-da85-6634-599a763a2a26','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','TemplateSectionLine','module',90,0),('ebcbc3c3-13b2-dfe3-063e-59bf84982a5d','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','view','bh_marketing_company','module',90,1),('ebe33cce-1e66-60de-331e-599a76cbde82','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','SecurityGroups','module',90,0),('ecd9a7c0-f660-0395-52c0-599a763925f6','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','edit','jjwg_Address_Cache','module',90,0),('edc387db-0902-5f17-019f-599a7687ef24','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','Notes','module',90,0),('ee57d7f3-b72a-3ac6-2514-599a76d25780','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','export','TemplateSectionLine','module',90,0),('ef5f455f-73c2-76fd-b252-59c24b11dc83','2017-09-20 11:05:22','2017-09-20 11:07:44','1','1','edit','bh_lead_adress','module',90,1),('efc7bba0-b740-bf9b-467c-599a768c6ac4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','delete','jjwg_Address_Cache','module',90,0),('f01664e3-fcb6-d4e0-c6e7-59bf8451f0a6','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','list','bh_marketing_company','module',90,1),('f096de93-659a-d860-17ec-599a763703d9','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','FP_events','module',89,0),('f145e9a6-b454-eb8b-5316-599a763a2747','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','massupdate','TemplateSectionLine','module',90,0),('f19d0637-8caa-0ba3-2bf5-59b7dc16bca8','2017-09-12 13:09:46','2017-09-12 13:09:46','1','1','access','bh_providers','module',89,0),('f1e68ed9-ad71-8a88-fc05-599a762c7258','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','access','Opportunities','module',89,0),('f26e0c58-3bf1-59ac-c883-59bbc1a14bc6','2017-09-15 12:01:36','2017-09-15 12:01:36','1','1','delete','bh_case_status','module',90,0),('f27743a6-b199-7da2-1e69-599a76f61a03','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','import','jjwg_Address_Cache','module',90,0),('f278c9d5-b5df-b9f4-adda-59bfc05642ac','2017-09-18 12:49:50','2017-09-18 13:05:59','1','1','export','bh_marketing_directorate','module',90,1),('f35bbe29-f0cb-621b-1ce2-59b9110bee4e','2017-09-13 11:06:30','2017-09-13 11:06:30','1','1','access','bh_org_trade_points','module',89,0),('f384e471-9f75-968a-67d4-599a769624ce','2017-08-21 05:56:19','2017-08-21 05:56:19','1','','view','FP_events','module',90,0),('f393ac6e-7af0-f082-b418-59b7dbb8143b','2017-09-12 13:04:43','2017-09-13 11:14:18','1','1','access','bh_organizations','module',89,1),('f3a9e3ff-9c8b-26a2-e697-59c4adc7854e','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','view','bh_region','module',90,0),('f4200695-203c-a881-f5d6-59c9f37ef76d','2017-09-26 06:28:23','2017-09-26 06:28:23','1','1','view','bh_communicators','module',90,0),('f56706de-3b38-860a-02e6-59b91f457090','2017-09-13 12:07:05','2017-09-13 12:07:05','1','1','access','bh_org','module',89,0),('f7f40297-9d1e-3555-d59a-59c4ad8c2f19','2017-09-22 06:29:04','2017-09-22 06:29:04','1','1','delete','bh_region','module',90,0),('f8220776-315c-f6e6-f2d0-59b7b0f83a47','2017-09-12 09:59:00','2017-09-12 09:59:00','1','1','list','bh_scr_status_history','module',90,0),('fbc50f51-4f33-2c97-2945-59bf8418c58b','2017-09-18 08:31:39','2017-09-18 08:41:05','1','1','massupdate','bh_marketing_company','module',90,1);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('d191d6fe-6762-5011-a734-599bca2b2a07','2017-08-22 06:06:59','2017-08-22 06:24:27','1','1','Роль1',NULL,0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES ('10630db7-593e-d49c-a5db-599bcae46f5c','d191d6fe-6762-5011-a734-599bca2b2a07','af329dd7-e59b-9365-7bbe-599a76174090',0,'2017-08-22 06:10:20',0),('10e00e33-06d5-4a04-36ae-599bcad4662d','d191d6fe-6762-5011-a734-599bca2b2a07','bc234c98-1558-dc7c-e597-599a76de017b',0,'2017-08-22 06:10:20',0),('111e89d4-b91f-2162-3863-599bcae07898','d191d6fe-6762-5011-a734-599bca2b2a07','acc191a4-f1e0-7850-138d-599a767f1037',0,'2017-08-22 06:10:20',0),('115d0303-84f2-a097-610c-599bca4d0bcb','d191d6fe-6762-5011-a734-599bca2b2a07','59b1c18d-7bee-7c94-6af1-599a760e9928',0,'2017-08-22 06:10:20',0),('11da090c-5c3e-66d5-a76b-599bca377660','d191d6fe-6762-5011-a734-599bca2b2a07','6cbd0680-2a22-2bab-a74e-599a76767d0b',0,'2017-08-22 06:10:20',0),('12188c8e-2f06-bac8-bd9b-599bcab12faf','d191d6fe-6762-5011-a734-599bca2b2a07','6ac90976-42a4-435e-752c-599a7656c0aa',0,'2017-08-22 06:10:20',0),('1257014c-c1d4-5165-b503-599bca6490ca','d191d6fe-6762-5011-a734-599bca2b2a07','70e39ffe-c96e-6dad-7298-599a7601d285',0,'2017-08-22 06:10:20',0),('12d40344-9f4b-818b-f201-599bca2ad635','d191d6fe-6762-5011-a734-599bca2b2a07','6eef9a96-6e30-b5ce-24ac-599a76d07812',0,'2017-08-22 06:10:20',0),('1312891c-01cd-2a0b-889f-599bca5e6838','d191d6fe-6762-5011-a734-599bca2b2a07','68d4f693-e8d6-3ccd-2415-599a76882932',0,'2017-08-22 06:10:20',0),('135109be-54e4-bb57-2284-599bca6b8546','d191d6fe-6762-5011-a734-599bca2b2a07','73162ac0-f612-90b7-1b4a-599a76389796',0,'2017-08-22 06:10:20',0),('13ce09ca-321a-711b-eb09-599bcac2fc30','d191d6fe-6762-5011-a734-599bca2b2a07','66e0f2ca-4ac4-0589-717e-599a76764a33',0,'2017-08-22 06:10:20',0),('140c94c6-ff19-6516-6a66-599bca89aa61','d191d6fe-6762-5011-a734-599bca2b2a07','6caed5f7-b443-ad1f-9c91-599a7609eb1d',0,'2017-08-22 06:10:20',0),('144b10c4-b529-87f6-6d10-599bcaa9208a','d191d6fe-6762-5011-a734-599bca2b2a07','77ea0eee-f34d-f833-e87b-599a760327b1',0,'2017-08-22 06:10:20',0),('14c81c25-ff7a-c0fb-9d70-599bca31ff21','d191d6fe-6762-5011-a734-599bca2b2a07','753a764b-cfc3-c022-ac3a-599a7693e625',0,'2017-08-22 06:10:20',0),('150696ba-a02c-0c9a-8795-599bca31e0b1','d191d6fe-6762-5011-a734-599bca2b2a07','7d491bd3-c5cd-d032-d2fd-599a76127842',0,'2017-08-22 06:10:20',0),('15839c05-5600-5489-f921-599bcac44cc8','d191d6fe-6762-5011-a734-599bca2b2a07','7a9998c1-05f4-3a02-2e90-599a7683146d',0,'2017-08-22 06:10:20',0),('15c21252-8a50-c69a-4b31-599bca9d6fff','d191d6fe-6762-5011-a734-599bca2b2a07','724c734f-a06b-fb3d-471a-599a76a3608d',0,'2017-08-22 06:10:20',0),('163f1b46-2093-da2f-fca4-599bca60c78e','d191d6fe-6762-5011-a734-599bca2b2a07','80372cb0-9292-5b87-b97a-599a76fdf7c0',0,'2017-08-22 06:10:20',0),('167d9c54-4b46-de14-c420-599bcaedab9c','d191d6fe-6762-5011-a734-599bca2b2a07','6f9ce98d-b52b-4d93-a5a8-599a7664bdc7',0,'2017-08-22 06:10:20',0),('16bc1e6c-52c8-6d41-8ed5-599bcaddba4c','d191d6fe-6762-5011-a734-599bca2b2a07','5afa76b2-3c4c-3168-dccd-599a76483f9a',0,'2017-08-22 06:10:20',0),('17358b17-2777-e590-965b-599bca4c7e0f','d191d6fe-6762-5011-a734-599bca2b2a07','edit',0,'2017-08-22 06:10:20',0),('17391379-a411-907e-ad2d-599bcacf973b','d191d6fe-6762-5011-a734-599bca2b2a07','6fbb30a7-91bc-4692-2a27-599a76b28f0e',0,'2017-08-22 06:10:20',0),('17779a11-2056-d590-a6ce-599bca859c0e','d191d6fe-6762-5011-a734-599bca2b2a07','69622ce1-87e7-4ddc-d1ba-599a7608c0e6',0,'2017-08-22 06:10:20',0),('17b6131e-48cd-3c86-74fa-599bcade59a6','d191d6fe-6762-5011-a734-599bca2b2a07','74dbdba9-f729-4f09-60dd-599a764bd49f',0,'2017-08-22 06:10:20',0),('17f49209-27ea-1853-e334-599bca903c74','d191d6fe-6762-5011-a734-599bca2b2a07','726ac32d-7a1c-9e10-e3ef-599a760817d6',0,'2017-08-22 06:10:20',0),('1871aeaf-e329-ef13-8f32-599bca6805b3','d191d6fe-6762-5011-a734-599bca2b2a07','66f11e65-7204-49bd-8137-599a76465765',0,'2017-08-22 06:10:20',0),('18eeac92-3393-1934-1edf-599bca52c2d0','d191d6fe-6762-5011-a734-599bca2b2a07','778b565a-8185-0161-61f7-599a762edd50',0,'2017-08-22 06:10:20',0),('192d2e0a-be49-4bab-a9c4-599bca16beff','d191d6fe-6762-5011-a734-599bca2b2a07','64419b3a-a27b-d036-b131-599a7694107b',0,'2017-08-22 06:10:20',0),('196ba16b-3bf8-ced1-c792-599bcaa7cbcf','d191d6fe-6762-5011-a734-599bca2b2a07','8a5bb4b7-4f0a-e653-d3ad-599a762fce29',0,'2017-08-22 06:10:20',0),('19e8af4d-358e-6353-1569-599bcac35c87','d191d6fe-6762-5011-a734-599bca2b2a07','9558541b-6614-fe5a-6b49-599a76d8bad5',0,'2017-08-22 06:10:20',0),('1a272001-9a10-7795-6807-599bca3f4db5','d191d6fe-6762-5011-a734-599bca2b2a07','92a8dbae-2582-ce8c-d72c-599a76a61e08',0,'2017-08-22 06:10:20',0),('1a65aad5-b28c-efa7-4344-599bca2e8d2f','d191d6fe-6762-5011-a734-599bca2b2a07','9a78fb8d-00e6-4eeb-b735-599a7611a612',0,'2017-08-22 06:10:20',0),('24684b76-0458-7712-fc09-599bcad1661b','d191d6fe-6762-5011-a734-599bca2b2a07','97c96a0a-1b30-448b-496e-599a7614e760',0,'2017-08-22 06:10:20',0),('24a6cc59-f61b-ab50-85b1-599bcad520f8','d191d6fe-6762-5011-a734-599bca2b2a07','8ff947f9-6219-4d53-0078-599a76a84845',0,'2017-08-22 06:10:20',0),('2523dc01-e140-70a6-1eb8-599bca695c3e','d191d6fe-6762-5011-a734-599bca2b2a07','9d28731e-2e06-99f0-172d-599a762f0f74',0,'2017-08-22 06:10:20',0),('25625192-7850-05f2-e7f7-599bcaf9c6a0','d191d6fe-6762-5011-a734-599bca2b2a07','8d884b9c-b0ed-1a91-dc57-599a76aafc65',0,'2017-08-22 06:10:20',0),('25df5fb1-88d4-001e-007f-599bca7f42eb','d191d6fe-6762-5011-a734-599bca2b2a07','38590393-3334-451d-d787-599a76bd97ac',0,'2017-08-22 06:10:20',0),('261dd1a8-e568-3652-ce65-599bca38d8eb','d191d6fe-6762-5011-a734-599bca2b2a07','c1130119-811d-e0f1-a188-599a76014f0a',0,'2017-08-22 06:10:20',0),('269ad8b1-760f-0f18-aab8-599bca5effd8','d191d6fe-6762-5011-a734-599bca2b2a07','9dea0a8d-ea2e-3fbd-6254-599a76876955',0,'2017-08-22 06:10:20',0),('26d95a1f-0dc6-f743-4872-599bca369f44','d191d6fe-6762-5011-a734-599bca2b2a07','1037ce50-f339-d83d-571b-599a7616b8fe',0,'2017-08-22 06:10:20',0),('2717daae-0748-c7ff-275a-599bcaffcc10','d191d6fe-6762-5011-a734-599bca2b2a07','e0530a6f-730b-8f47-fd4b-599a76def419',0,'2017-08-22 06:10:20',0),('2794dd40-7601-7d96-5390-599bcae5faca','d191d6fe-6762-5011-a734-599bca2b2a07','7eaa0420-9892-8398-a91f-599a76f91846',0,'2017-08-22 06:10:20',0),('27d35ef8-da30-2d73-78e5-599bca5a24c1','d191d6fe-6762-5011-a734-599bca2b2a07','122bcf2b-0263-366d-f276-599a7608c60b',0,'2017-08-22 06:10:20',0),('2811d377-1145-ae98-7138-599bcad60e5d','d191d6fe-6762-5011-a734-599bca2b2a07','5f6a0648-1c07-9ffd-5f0b-599a76cf4e06',0,'2017-08-22 06:10:20',0),('288edcff-e61b-f3ae-8c86-599bca5b2c8e','d191d6fe-6762-5011-a734-599bca2b2a07','544f15fd-ec58-4ad4-2bcd-599a76eeafc5',89,'2017-08-22 06:10:20',0),('28cd5731-b9bb-88c3-921c-599bcaf01a1e','d191d6fe-6762-5011-a734-599bca2b2a07','78b0226f-1988-8d39-8258-599a762fb01c',0,'2017-08-22 06:10:20',0),('294a6119-239c-f4ae-052c-599bca6954c6','d191d6fe-6762-5011-a734-599bca2b2a07','767d91ff-10e3-6b2c-c4c1-599a76a0e0cc',0,'2017-08-22 06:10:20',0),('2988e843-e8be-233b-3204-599bca562202','d191d6fe-6762-5011-a734-599bca2b2a07','7cd6b298-cfcf-15df-f946-599a76430512',0,'2017-08-22 06:10:20',0),('29c76bfd-8117-98e5-a921-599bcab7a961','d191d6fe-6762-5011-a734-599bca2b2a07','7ae2b49f-4c79-b8e3-8b05-599a7674d118',0,'2017-08-22 06:10:20',0),('386d931b-8ff2-71a2-34a5-599bca1c5485','d191d6fe-6762-5011-a734-599bca2b2a07','7489916a-ba1e-733d-0134-599a76ca72dc',0,'2017-08-22 06:10:20',0),('38ea92e8-2c72-8f53-9578-599bca74e439','d191d6fe-6762-5011-a734-599bca2b2a07','7e8c3cf8-dfc3-d3dc-7f0f-599a7684bcd7',0,'2017-08-22 06:10:20',0),('396795cb-4572-ec5e-d6c8-599bca24b6c3','d191d6fe-6762-5011-a734-599bca2b2a07','719b8ba0-2df6-16ef-16ba-599a765391b9',80,'2017-08-22 06:10:20',0),('39a281d6-e9ac-c0a7-8438-599bca2b8b73','d191d6fe-6762-5011-a734-599bca2b2a07','export',0,'2017-08-22 06:10:20',0),('39a61590-1046-aed5-e34e-599bcaca646e','d191d6fe-6762-5011-a734-599bca2b2a07','48010d07-4b18-cc34-e95e-599a76f93915',0,'2017-08-22 06:10:20',0),('3a2319ca-ac6f-2a25-22f4-599bca3d2f20','d191d6fe-6762-5011-a734-599bca2b2a07','537ab49e-2a3d-6b41-448c-599a769d1cfa',0,'2017-08-22 06:10:20',0),('3a61ac3e-9c20-e8d5-e682-599bca980a02','d191d6fe-6762-5011-a734-599bca2b2a07','508ca8ad-9d36-7262-8350-599a760ddfd6',0,'2017-08-22 06:10:20',0),('3adea14a-9671-da62-33bf-599bcab24afb','d191d6fe-6762-5011-a734-599bca2b2a07','58d9cca3-fadd-cdc1-21bc-599a762ee621',0,'2017-08-22 06:10:20',0),('3b5812cf-969f-9736-8400-599bcacd24e1','d191d6fe-6762-5011-a734-599bca2b2a07','import',0,'2017-08-22 06:10:20',0),('3b96943b-db60-5abc-ae51-599bca30c4bd','d191d6fe-6762-5011-a734-599bca2b2a07','list',0,'2017-08-22 06:10:20',0),('3c139216-de78-5951-75df-599bcad12fae','d191d6fe-6762-5011-a734-599bca2b2a07','massupdate',0,'2017-08-22 06:10:20',0),('3c909b3a-b474-74bc-e165-599bca1547e3','d191d6fe-6762-5011-a734-599bca2b2a07','view',0,'2017-08-22 06:10:20',0),('3ccf1b4e-455e-93ce-b7c8-599bca8565ee','d191d6fe-6762-5011-a734-599bca2b2a07','a6f91258-a707-3386-a35b-599a76387104',0,'2017-08-22 06:10:20',0),('3d0d91b0-1f32-0521-827a-599bcaac4e9f','d191d6fe-6762-5011-a734-599bca2b2a07','b07eb402-78fb-d89b-d86f-599a761894a5',0,'2017-08-22 06:10:20',0),('3d8a9ca7-2cd7-cd9b-7be7-599bcafe03e2','d191d6fe-6762-5011-a734-599bca2b2a07','ae4c3f6d-3f23-ced3-f8ea-599a76fb3486',0,'2017-08-22 06:10:20',0),('3ffb91a0-01eb-b36a-83b3-599bca3f52e7','d191d6fe-6762-5011-a734-599bca2b2a07','b52240b9-9ccd-7844-dee3-599a76a404ab',0,'2017-08-22 06:10:20',0),('41b12a4d-2f5c-b17c-ac9f-599bca5706be','d191d6fe-6762-5011-a734-599bca2b2a07','b2efc543-62af-1b43-e2be-599a7693aa3e',0,'2017-08-22 06:10:20',0),('422e2d78-b309-e960-5648-599bcaab864f','d191d6fe-6762-5011-a734-599bca2b2a07','abdb223e-757a-51fa-4657-599a76af5158',0,'2017-08-22 06:10:20',0),('426cadd3-b671-f3ba-ce91-599bca4bae75','d191d6fe-6762-5011-a734-599bca2b2a07','b7935dc8-e6ed-3d7a-4267-599a7622258a',0,'2017-08-22 06:10:20',0),('42e9a3ed-9a26-3542-498d-599bca24a2f7','d191d6fe-6762-5011-a734-599bca2b2a07','a9a89432-d3a4-c2c6-f0b9-599a761759a9',0,'2017-08-22 06:10:20',0),('432824da-6ae7-2acf-9a32-599bca89cb85','d191d6fe-6762-5011-a734-599bca2b2a07','4e366ce6-dec3-1030-c860-599a76028b05',0,'2017-08-22 06:10:20',0),('4366abb8-80b8-9cb1-d631-599bcae57aac','d191d6fe-6762-5011-a734-599bca2b2a07','58778a33-c7f3-c7a8-98de-599a76ca8bd8',0,'2017-08-22 06:10:20',0),('43e3b891-a59d-18ec-0bbb-599bcac27750','d191d6fe-6762-5011-a734-599bca2b2a07','55c7f645-925c-e071-f180-599a76061941',0,'2017-08-22 06:10:20',0),('44223457-e6fc-36df-89f7-599bca47db94','d191d6fe-6762-5011-a734-599bca2b2a07','5d5995ea-c68d-1dfd-48cd-599a76159284',0,'2017-08-22 06:10:20',0),('4460b806-0edf-8d03-8a76-599bcac6627d','d191d6fe-6762-5011-a734-599bca2b2a07','5ae89963-cb8c-22ed-920e-599a76ababd1',0,'2017-08-22 06:10:20',0),('44ddb6bf-055f-18e9-1618-599bcac26d65','d191d6fe-6762-5011-a734-599bca2b2a07','53957182-401f-fcfa-927c-599a76dfc67a',0,'2017-08-22 06:10:20',0),('455ab45a-63b8-a84e-6edf-599bcab251b8','d191d6fe-6762-5011-a734-599bca2b2a07','5fcaafff-63cf-8860-6a1b-599a767e7948',0,'2017-08-22 06:10:20',0),('469337bd-0071-7acb-8393-599bca77d833','d191d6fe-6762-5011-a734-599bca2b2a07','50e5e572-17cf-78e3-7a7e-599a768612cd',0,'2017-08-22 06:10:20',0),('47525e8e-0c5e-e5df-cfe4-599bcad3f13a','d191d6fe-6762-5011-a734-599bca2b2a07','562a3575-dcc4-9603-76ee-599a7654e4c4',0,'2017-08-22 06:10:20',0),('47cf5e7d-fa8d-a0c9-a583-599bca7cad10','d191d6fe-6762-5011-a734-599bca2b2a07','4ddd1350-eba8-5a56-0b13-599a76936d76',0,'2017-08-22 06:10:20',0),('480dd270-7ca6-c4bd-4837-599bcacf4204','d191d6fe-6762-5011-a734-599bca2b2a07','5b895950-f652-3fb7-d9a4-599a76847777',0,'2017-08-22 06:10:20',0),('488ad278-b5c4-a128-398c-599bcaa9d558','d191d6fe-6762-5011-a734-599bca2b2a07','4b2d90ae-1311-c1d5-8c0d-599a76fa2293',0,'2017-08-22 06:10:20',0),('48c955be-2f9e-bfd0-f510-599bca466f76','d191d6fe-6762-5011-a734-599bca2b2a07','43565ee4-fb48-f32c-6a5d-599a76387c8f',0,'2017-08-22 06:10:20',0),('4907de53-e166-933b-fe69-599bcad6ee18','d191d6fe-6762-5011-a734-599bca2b2a07','4ecffe8d-2969-a48e-6b4d-599a76aee76b',0,'2017-08-22 06:10:20',0),('4984d1e5-54af-6e8e-c88d-599bcae02d4b','d191d6fe-6762-5011-a734-599bca2b2a07','4be1fa06-bc0c-05fa-a61c-599a760880a1',0,'2017-08-22 06:10:20',0),('4a01d8d5-f186-a803-fa5d-599bca0f096a','d191d6fe-6762-5011-a734-599bca2b2a07','53f09772-495d-3b6b-ca7a-599a7634553b',0,'2017-08-22 06:10:20',0),('4a405b4f-033f-d731-bc31-599bca257f41','d191d6fe-6762-5011-a734-599bca2b2a07','51410ad4-f775-89a5-85d1-599a768aae96',0,'2017-08-22 06:10:20',0),('4a7edc05-6150-30c7-be72-599bcaf1143b','d191d6fe-6762-5011-a734-599bca2b2a07','49326f2b-a6c0-4d45-ab0c-599a762d1c07',0,'2017-08-22 06:10:20',0),('4afbd66e-0ca5-0b21-55d4-599bca9c751e','d191d6fe-6762-5011-a734-599bca2b2a07','56a014a9-5861-99d9-9868-599a76e9496d',0,'2017-08-22 06:10:20',0),('4b3a531e-7d32-417e-4a51-599bca42a93e','d191d6fe-6762-5011-a734-599bca2b2a07','4682da80-3fbc-c882-1978-599a76910426',0,'2017-08-22 06:10:20',0),('4bb7605c-18b2-696f-7e6f-599bca75d96c','d191d6fe-6762-5011-a734-599bca2b2a07','852e910a-c2b1-4e10-1592-599a76f06334',0,'2017-08-22 06:10:20',0),('4bf5e60a-3afb-e302-cb2f-599bca682c90','d191d6fe-6762-5011-a734-599bca2b2a07','8df8b3ed-d884-4c72-1388-599a76d027c7',0,'2017-08-22 06:10:20',0),('4c346ea5-a06d-e051-23e3-599bca013a1f','d191d6fe-6762-5011-a734-599bca2b2a07','8bc62cd3-8ae6-2d6a-2075-599a760b5ced',0,'2017-08-22 06:10:20',0),('4cb16b4d-88ef-ea04-6db6-599bcacf7897','d191d6fe-6762-5011-a734-599bca2b2a07','921f4a16-e988-d14f-e6d2-599a765f6048',0,'2017-08-22 06:10:20',0),('4cefe111-f6ab-4587-6d93-599bca1b591a','d191d6fe-6762-5011-a734-599bca2b2a07','902b3e49-651b-8544-bdb2-599a76d6c38d',0,'2017-08-22 06:10:20',0),('4d2e60d6-f1da-8cbf-eb34-599bca38bdd1','d191d6fe-6762-5011-a734-599bca2b2a07','89d22c86-ff26-8f3d-0bf2-599a764ddedb',0,'2017-08-22 06:10:20',0),('4dab6d05-1dca-f84f-06fc-599bcaeb7552','d191d6fe-6762-5011-a734-599bca2b2a07','9451c3b2-f67b-1dd3-6b3c-599a76522f3a',0,'2017-08-22 06:10:20',0),('4e2865ad-c786-96bb-b724-599bca49959b','d191d6fe-6762-5011-a734-599bca2b2a07','87de1377-f874-3bd1-934c-599a7678407c',0,'2017-08-22 06:10:20',0),('4e66e1a1-9b3c-d999-535d-599bca42008c','d191d6fe-6762-5011-a734-599bca2b2a07','443c9b5a-8389-2e0c-e1af-599a76552385',0,'2017-08-22 06:10:20',0),('4ea5667c-215d-8419-9671-599bca8b4ece','d191d6fe-6762-5011-a734-599bca2b2a07','4d06ba48-56bf-61e8-70a7-599a76232212',0,'2017-08-22 06:10:20',0),('4ee059ec-4e27-c8d9-2d34-599bcacdbe06','d191d6fe-6762-5011-a734-599bca2b2a07','c9da3bb1-8fc6-07ef-9181-599a76af6caa',0,'2017-08-22 06:10:20',0),('4f2267c8-5e82-5d64-027b-599bca714d39','d191d6fe-6762-5011-a734-599bca2b2a07','4ad439a9-6960-8427-0973-599a76564278',0,'2017-08-22 06:10:20',0),('4f60e8cc-3ed1-0fd2-66e7-599bcaeb6b7c','d191d6fe-6762-5011-a734-599bca2b2a07','512d4333-a968-5388-8fee-599a76059035',0,'2017-08-22 06:10:20',0),('4fddfbf8-5181-6898-6b12-599bca91bedc','d191d6fe-6762-5011-a734-599bca2b2a07','4f394f86-bf59-ff75-cec7-599a76b6ed28',0,'2017-08-22 06:10:20',0),('501c7029-650c-d863-0fa1-599bcaefa963','d191d6fe-6762-5011-a734-599bca2b2a07','48a1a6c1-7b10-befa-bfcd-599a76b891a4',0,'2017-08-22 06:10:20',0),('505afba8-8718-0467-b1c1-599bca07a8bc','d191d6fe-6762-5011-a734-599bca2b2a07','535fd60d-0662-1a02-a4b7-599a761a2245',0,'2017-08-22 06:10:20',0),('50d7fe9b-a53c-9e25-5161-599bca89c9cc','d191d6fe-6762-5011-a734-599bca2b2a07','46adae36-98bd-3e32-945c-599a76a78d1a',0,'2017-08-22 06:10:20',0),('51167608-e154-b898-861f-599bca3d60db','d191d6fe-6762-5011-a734-599bca2b2a07','4bc1cad1-4ca1-c909-26d9-599a769a6015',0,'2017-08-22 06:10:20',0),('519375c0-25be-764c-4c8a-599bcad14057','d191d6fe-6762-5011-a734-599bca2b2a07','5602e7da-b0bf-44e1-b7e1-599a761bca42',0,'2017-08-22 06:10:20',0),('51d1f958-f534-9fd7-8b96-599bca332094','d191d6fe-6762-5011-a734-599bca2b2a07','5391eebf-ab4e-4ae4-a7e4-599a761273a8',0,'2017-08-22 06:10:20',0),('524ef908-2412-f9f9-77ec-599bca315fa8','d191d6fe-6762-5011-a734-599bca2b2a07','5ae4f7ba-7208-82e3-977c-599a76f8a3c4',0,'2017-08-22 06:10:20',0),('528d7736-ac78-4708-f2c0-599bca1f2377','d191d6fe-6762-5011-a734-599bca2b2a07','5873fb3c-f309-8326-4d35-599a76ab2a50',0,'2017-08-22 06:10:20',0),('52cbfab0-673f-f370-4ee8-599bca1cd05a','d191d6fe-6762-5011-a734-599bca2b2a07','5120d34b-0d03-06b0-bf54-599a76d0e08f',0,'2017-08-22 06:10:20',0),('5348fe9a-df7f-c604-2e6d-599bca21b935','d191d6fe-6762-5011-a734-599bca2b2a07','5d560ecd-c37a-2d65-1c25-599a76bf2666',0,'2017-08-22 06:10:20',0),('538776be-4080-f160-dec0-599bca825b60','d191d6fe-6762-5011-a734-599bca2b2a07','4eafd9da-47c5-5ffd-ce34-599a76186675',0,'2017-08-22 06:10:20',0),('54048c40-7383-1fa8-ce1c-599bcacc30c2','d191d6fe-6762-5011-a734-599bca2b2a07','2f5bcb7c-01ed-2f9a-9377-599a767d2a06',0,'2017-08-22 06:10:20',0),('5443019f-2fcf-5b03-269f-599bcab55a81','d191d6fe-6762-5011-a734-599bca2b2a07','3a96e081-44b5-a31c-e2e0-599a76303946',0,'2017-08-22 06:10:20',0),('54818b81-fe05-13fb-9881-599bca2cf4fe','d191d6fe-6762-5011-a734-599bca2b2a07','3825e8c1-3bb3-8840-920f-599a761b0d3d',0,'2017-08-22 06:10:20',0),('54fe8bca-71bf-dcea-8a73-599bca5366de','d191d6fe-6762-5011-a734-599bca2b2a07','40347a97-9172-8323-67e9-599a762c29bc',0,'2017-08-22 06:10:20',0),('5b5400ae-6e58-e7db-7960-599bca34744b','d191d6fe-6762-5011-a734-599bca2b2a07','d4d6e558-1c04-98d3-f356-599a766fe517',0,'2017-08-22 06:10:20',0),('5c902577-784b-865c-763c-599bca37542d','d191d6fe-6762-5011-a734-599bca2b2a07','3d84f2fd-271a-b8e4-3f1a-599a7698bcaa',0,'2017-08-22 06:10:20',0),('5d0d279e-0ead-f36d-c951-599bca1712a2','d191d6fe-6762-5011-a734-599bca2b2a07','35765415-a9b1-3edd-2fbe-599a76463ef9',0,'2017-08-22 06:10:20',0),('5e039b61-e034-f9ba-4181-599bca31c27d','d191d6fe-6762-5011-a734-599bca2b2a07','d227526a-468c-be95-e205-599a76b7370f',0,'2017-08-22 06:10:20',0),('5e8092da-9698-ac78-2129-599bca008685','d191d6fe-6762-5011-a734-599bca2b2a07','da35f08a-255d-9edf-54b3-599a764f89ad',0,'2017-08-22 06:10:20',0),('61301c6d-4439-2d5e-fadf-599bcac6ce78','d191d6fe-6762-5011-a734-599bca2b2a07','d747e49c-d4e9-8976-40e5-599a76fc9ab6',0,'2017-08-22 06:10:20',0),('61eba8ad-171a-46f8-3397-599bca763e24','d191d6fe-6762-5011-a734-599bca2b2a07','cf77caea-db36-7986-2faa-599a7614b74d',0,'2017-08-22 06:10:20',0),('61ef3a65-0d57-d27b-76b7-599bcaf1a17e','d191d6fe-6762-5011-a734-599bca2b2a07','42a58e42-1ea1-22b4-78ac-599a762944f9',0,'2017-08-22 06:10:20',0),('622a217b-cdaf-6675-18ff-599bca46c676','d191d6fe-6762-5011-a734-599bca2b2a07','dce5732d-c6d0-4c2e-1ed2-599a769ee793',0,'2017-08-22 06:10:20',0),('626c37c4-c522-36ba-cc77-599bcaa915a3','d191d6fe-6762-5011-a734-599bca2b2a07','32884659-0e0f-7967-616d-599a761fed2a',0,'2017-08-22 06:10:20',0),('62aabc04-23ff-2286-3466-599bca050c6f','d191d6fe-6762-5011-a734-599bca2b2a07','be3cc24c-9c96-8cea-f704-599a76951e8e',0,'2017-08-22 06:10:20',0),('62e93d54-17dd-1d0a-dcac-599bcaf2de7b','d191d6fe-6762-5011-a734-599bca2b2a07','cca486d5-9d13-6b76-5978-599a764ac8bc',0,'2017-08-22 06:10:20',0),('6366324d-a668-0c34-5280-599bcadae597','d191d6fe-6762-5011-a734-599bca2b2a07','ca3371a6-68a8-76a2-cc5b-599a76b779c2',0,'2017-08-22 06:10:20',0),('63a4bdcd-ac86-d1b6-6e15-599bcab22c48','d191d6fe-6762-5011-a734-599bca2b2a07','d1481ede-976d-a030-3166-599a763e26bd',0,'2017-08-22 06:10:20',0),('63e333be-b88c-8f0f-8b0d-599bca89cfed','d191d6fe-6762-5011-a734-599bca2b2a07','cf15813c-01d7-b922-a192-599a7625b808',0,'2017-08-22 06:10:20',0),('64603d71-4521-db25-88ca-599bca436ea0','d191d6fe-6762-5011-a734-599bca2b2a07','c35d5765-c6dc-f0a0-d14d-599a76148de5',0,'2017-08-22 06:10:20',0),('649ebdbf-855a-3e90-9497-599bca4456f2','d191d6fe-6762-5011-a734-599bca2b2a07','d3b91eab-3097-b90f-4a09-599a7659f1d6',0,'2017-08-22 06:10:20',0),('64d9a9bf-7ff3-5244-1b91-599bca4f8882','d191d6fe-6762-5011-a734-599bca2b2a07','ccc84595-3cd9-e0da-754c-599a767aa944',0,'2017-08-22 06:10:20',0),('651bcafc-0714-5836-514b-599bca250e98','d191d6fe-6762-5011-a734-599bca2b2a07','c12ad41a-e614-1127-435d-599a76ba594d',0,'2017-08-22 06:10:20',0),('655a47b5-ba59-c91d-a9fd-599bca304c79','d191d6fe-6762-5011-a734-599bca2b2a07','f1e68ed9-ad71-8a88-fc05-599a762c7258',0,'2017-08-22 06:10:20',0),('65d74e66-105d-ef77-2adc-599bcafe142c','d191d6fe-6762-5011-a734-599bca2b2a07','748208e2-fccf-7e77-e40d-599a76e98cef',0,'2017-08-22 06:10:20',0),('6615c025-6428-a05f-7081-599bcad5dbae','d191d6fe-6762-5011-a734-599bca2b2a07','4d720d74-dd00-821b-435f-599a762f9829',0,'2017-08-22 06:10:20',0),('668f345e-4e32-1a7d-88f1-599bca3ea8d0','d191d6fe-6762-5011-a734-599bca2b2a07','9aae0522-a3ad-8a7f-1964-599a7640014e',0,'2017-08-22 06:10:20',0),('6692c6ed-4fc4-deeb-0b00-599bcaed6506','d191d6fe-6762-5011-a734-599bca2b2a07','bad30dd5-a449-14ed-a21e-599a7610bccc',0,'2017-08-22 06:10:20',0),('66d14a40-1d87-23b7-3769-599bca58c69f','d191d6fe-6762-5011-a734-599bca2b2a07','97ab00df-fd27-ce69-1c49-599a76ed439b',0,'2017-08-22 06:10:20',0),('670fc986-9da7-54fc-b678-599bca848897','d191d6fe-6762-5011-a734-599bca2b2a07','2a4900f1-0d23-87af-78bf-599a76b543ea',0,'2017-08-22 06:10:20',0),('674abf64-782e-1900-1f24-599bca7a2500','d191d6fe-6762-5011-a734-599bca2b2a07','12b38830-fddb-40db-f1f9-599a76d03f09',0,'2017-08-22 06:10:20',0),('67893e27-4429-ba25-1676-599bca3cd3bd','d191d6fe-6762-5011-a734-599bca2b2a07','108103fd-e2a2-8020-382e-599a76faa134',0,'2017-08-22 06:10:20',0),('67c7b973-31b6-968c-84ae-599bca689ea5','d191d6fe-6762-5011-a734-599bca2b2a07','16da136a-5dfc-c35d-c9a0-599a76aba991',0,'2017-08-22 06:10:20',0),('6844bb9b-54ec-915e-80e9-599bca1de827','d191d6fe-6762-5011-a734-599bca2b2a07','14e61b9f-4b5b-5453-4fdd-599a762dd32b',0,'2017-08-22 06:10:20',0),('6883389f-1814-6df2-cc3b-599bca7ac0eb','d191d6fe-6762-5011-a734-599bca2b2a07','e8cf0cfc-ea67-47d8-7cdc-599a768ffa34',0,'2017-08-22 06:10:20',0),('69003994-1efd-97d8-d04b-599bcacd0e18','d191d6fe-6762-5011-a734-599bca2b2a07','190ca66f-f678-1e58-ec89-599a764cee9d',0,'2017-08-22 06:10:20',0),('693ebd91-f031-6f79-9bb5-599bca8f2d23','d191d6fe-6762-5011-a734-599bca2b2a07','c5a70b73-7864-7e3e-5b1f-599a76a5ac40',0,'2017-08-22 06:10:20',0),('69bbb5c1-3550-0873-dbf4-599bca42b454','d191d6fe-6762-5011-a734-599bca2b2a07','c59aa46f-3cdc-2714-9510-599a761ac686',0,'2017-08-22 06:10:20',0),('69fa38c3-fbc2-29dd-5556-599bcabb794e','d191d6fe-6762-5011-a734-599bca2b2a07','cf9d46df-5f1d-2e10-e40b-599a76aa9488',0,'2017-08-22 06:10:20',0),('6a38c4e2-1763-4b18-fd86-599bcab4be8f','d191d6fe-6762-5011-a734-599bca2b2a07','cd2c343e-c38d-7d46-7e52-599a762e8286',0,'2017-08-22 06:10:20',0),('6ab5c445-b954-75d4-6ad1-599bcae8d128','d191d6fe-6762-5011-a734-599bca2b2a07','d47f572e-5a92-4139-d72d-599a76735be0',0,'2017-08-22 06:10:20',0),('6af44afe-c67d-92da-b1c2-599bcab922a9','d191d6fe-6762-5011-a734-599bca2b2a07','d20e42e7-1bb2-2022-4478-599a76fa6fea',0,'2017-08-22 06:10:20',0),('6b71495c-bb50-b872-aacf-599bca77bd54','d191d6fe-6762-5011-a734-599bca2b2a07','cabb3007-62ee-106a-02e5-599a76eadb86',0,'2017-08-22 06:10:20',0),('6d68dc85-ff0a-df34-8155-599bcae4c7f7','d191d6fe-6762-5011-a734-599bca2b2a07','ddfc05ee-2d52-2b5d-b7f8-599a761895d2',0,'2017-08-22 06:10:20',0),('6de5e3a5-1d53-a088-c4bf-599bcaa97247','d191d6fe-6762-5011-a734-599bca2b2a07','72100511-3c2b-03bf-0525-599a76c447f0',0,'2017-08-22 06:10:20',0),('6e20c695-ce01-ab3f-3085-599bcac5708f','d191d6fe-6762-5011-a734-599bca2b2a07','d6f06ba9-d94b-c5bc-adda-599a764f4754',0,'2017-08-22 06:10:20',0),('6e246341-5958-1b1e-5916-599bca84f815','d191d6fe-6762-5011-a734-599bca2b2a07','767693d6-01a4-cb7f-eda8-599a76a8346c',0,'2017-08-22 06:10:20',0),('6e5f54d5-a9f5-bf55-047d-599bcae2934a','d191d6fe-6762-5011-a734-599bca2b2a07','c84a24bb-fcf2-70b6-a1c9-599a766eedc1',0,'2017-08-22 06:10:20',0),('6e62e383-c5bb-e443-f3dc-599bcad4862c','d191d6fe-6762-5011-a734-599bca2b2a07','81f041fd-6492-c233-c2ae-599a7644021e',0,'2017-08-22 06:10:20',0),('6e9dd568-a219-9764-d94c-599bcac7c0b6','d191d6fe-6762-5011-a734-599bca2b2a07','74c2cfb4-d4df-557b-14b0-599a7687badc',0,'2017-08-22 06:10:20',0),('6edfe8b2-22c1-af00-b924-599bca6c01c7','d191d6fe-6762-5011-a734-599bca2b2a07','7f40b80f-027e-eb1b-f246-599a762217d7',0,'2017-08-22 06:10:20',0),('6f1adb70-e0a5-19fa-c314-599bcabcea3d','d191d6fe-6762-5011-a734-599bca2b2a07','7ec578eb-1401-bab8-4247-599a768b2dd8',0,'2017-08-22 06:10:20',0),('6f595cfc-8f51-ab03-9cae-599bca4bbf9a','d191d6fe-6762-5011-a734-599bca2b2a07','7c546860-d735-3847-bba2-599a76dbfa58',0,'2017-08-22 06:10:20',0),('6f5ce2c3-e872-7435-36b1-599bcae7eb29','d191d6fe-6762-5011-a734-599bca2b2a07','878dd400-8684-a569-c1bc-599a76789c54',0,'2017-08-22 06:10:20',0),('6f97d74a-2854-6d38-b1e1-599bca92de6b','d191d6fe-6762-5011-a734-599bca2b2a07','8369013d-f4fe-969b-94cd-599a76316c39',0,'2017-08-22 06:10:20',0),('6f9b6ea6-cd2d-5777-3ec5-599bcade9ac1','d191d6fe-6762-5011-a734-599bca2b2a07','84de4479-13db-4468-a19e-599a7646b98b',0,'2017-08-22 06:10:20',0),('6fd9e699-033d-7a51-77d9-599bcabfd123','d191d6fe-6762-5011-a734-599bca2b2a07','7c91189e-d124-f5d9-7494-599a761089d5',0,'2017-08-22 06:10:20',0),('7014dbb8-7899-25c7-b214-599bca180a33','d191d6fe-6762-5011-a734-599bca2b2a07','81367f9d-74ce-b3ac-b663-599a76b363d7',0,'2017-08-22 06:10:20',0),('70535d69-c492-39de-afb2-599bca60ba13','d191d6fe-6762-5011-a734-599bca2b2a07','7a21ce8d-4a10-c1ea-d375-599a76bf263d',0,'2017-08-22 06:10:20',0),('7091d3f6-c087-03d1-0c95-599bcaf849cd','d191d6fe-6762-5011-a734-599bca2b2a07','85da094b-bfaa-435a-fe8a-599a76d51309',0,'2017-08-22 06:10:20',0),('710ed2f5-3459-9d9e-21b1-599bca408387','d191d6fe-6762-5011-a734-599bca2b2a07','77b0db2a-f2f9-fa0b-1be8-599a76bb0c51',0,'2017-08-22 06:10:20',0),('714d5117-7e07-9d48-86b9-599bcae6cbdd','d191d6fe-6762-5011-a734-599bca2b2a07','3a951426-f5d3-fe90-297e-599a7671c591',0,'2017-08-22 06:10:20',0),('718bd662-31e9-d007-49c8-599bca47bd3a','d191d6fe-6762-5011-a734-599bca2b2a07','441ab32d-c53a-461b-cef3-599a769e1cac',0,'2017-08-22 06:10:20',0),('71ca5ff7-6344-ed4b-c0c1-599bca8adddc','d191d6fe-6762-5011-a734-599bca2b2a07','41e82abc-1c93-bd73-70df-599a7668e349',0,'2017-08-22 06:10:20',0),('7247539e-1194-87d7-5db8-599bca55f051','d191d6fe-6762-5011-a734-599bca2b2a07','48be407a-4f81-937a-17d3-599a760687b6',0,'2017-08-22 06:10:20',0),('7285de2a-425e-856c-1d09-599bca90e4b6','d191d6fe-6762-5011-a734-599bca2b2a07','464d34cc-bab7-f459-d05a-599a762f3f44',0,'2017-08-22 06:10:20',0),('75b26ae0-3350-84a3-fb40-599bca0df37a','d191d6fe-6762-5011-a734-599bca2b2a07','3f77238f-e07c-4558-a396-599a76453832',0,'2017-08-22 06:10:20',0),('762f6af9-ea02-5dd7-6344-599bca17b72a','d191d6fe-6762-5011-a734-599bca2b2a07','4af0c8aa-088c-59aa-9f55-599a760e1d62',0,'2017-08-22 06:10:20',0),('76ac6a7f-ed37-e5fd-b62e-599bcad0aa36','d191d6fe-6762-5011-a734-599bca2b2a07','3d061aeb-131c-5184-c01c-599a769a8e04',0,'2017-08-22 06:10:20',0),('772976d6-952d-97d1-dd88-599bca58746e','d191d6fe-6762-5011-a734-599bca2b2a07','d782d5c8-ebcc-c7d4-09a6-599a7679945d',0,'2017-08-22 06:10:20',0),('77a67b43-3d0a-25d0-8ae3-599bca167f1b','d191d6fe-6762-5011-a734-599bca2b2a07','e2be0fc0-9666-57b9-2519-599a76461d41',0,'2017-08-22 06:10:20',0),('77aa0d02-5535-a280-1b80-599bca539f6f','d191d6fe-6762-5011-a734-599bca2b2a07','8a7be1e5-c600-e11f-c78e-599a7654ab2a',0,'2017-08-22 06:10:20',0),('77e4f622-dcd7-7b40-b0c3-599bca5e21b6','d191d6fe-6762-5011-a734-599bca2b2a07','e04cfef2-621f-cb32-bcc0-599a76b8439c',0,'2017-08-22 06:10:20',0),('782701a9-3bc5-8eb2-c6ca-599bcab081ad','d191d6fe-6762-5011-a734-599bca2b2a07','79a32e2a-5f69-e6f3-1865-599a76af6f9f',0,'2017-08-22 06:10:20',0),('7861f033-54e2-cd5b-d99b-599bca38ee6b','d191d6fe-6762-5011-a734-599bca2b2a07','e85b9b43-cacf-69f6-9b18-599a76376cad',0,'2017-08-22 06:10:20',0),('7865892c-340a-af54-2ed8-599bca948cf5','d191d6fe-6762-5011-a734-599bca2b2a07','f096de93-659a-d860-17ec-599a763703d9',0,'2017-08-22 06:10:20',0),('78def84a-57b2-f07e-e8d4-599bca8d5d34','d191d6fe-6762-5011-a734-599bca2b2a07','e5ac08e8-9487-2865-bcdb-599a7652a4a9',0,'2017-08-22 06:10:20',0),('78e28875-093d-4e98-7aee-599bca25f7a5','d191d6fe-6762-5011-a734-599bca2b2a07','6b3f055e-47c2-7717-bb86-599a7627099a',0,'2017-08-22 06:10:20',0),('791d70f1-d7a9-5d05-987d-599bca84b255','d191d6fe-6762-5011-a734-599bca2b2a07','dd206ef5-64f9-ad86-8b62-599a76a3a6fa',0,'2017-08-22 06:10:20',0),('79210afc-a264-ed86-fa90-599bca84fa92','d191d6fe-6762-5011-a734-599bca2b2a07','442f03d6-c9f5-ca69-c139-599a766a906f',0,'2017-08-22 06:10:20',0),('795f84bf-dc48-cce7-1ada-599bca3d51c1','d191d6fe-6762-5011-a734-599bca2b2a07','bd4802f8-17bb-c95d-2f16-599a766abab0',0,'2017-08-22 06:10:20',0),('799a7004-306e-7e7f-2245-599bca22dfd9','d191d6fe-6762-5011-a734-599bca2b2a07','eacc9db3-842c-ae5d-6757-599a767c8813',0,'2017-08-22 06:10:20',0),('79d8fc7e-bfb2-dc29-7190-599bcab95317','d191d6fe-6762-5011-a734-599bca2b2a07','da70e24d-2b62-284f-55d3-599a76409796',0,'2017-08-22 06:10:20',0),('7a55e751-8e64-6e6e-b3fa-599bca387f1d','d191d6fe-6762-5011-a734-599bca2b2a07','66000a2d-b4c8-33c5-e3af-599a768b6d94',0,'2017-08-22 06:10:20',0),('7a946dbb-5cf3-1030-423c-599bca74da4c','d191d6fe-6762-5011-a734-599bca2b2a07','10242559-0a04-8759-1538-599a76a78fcb',0,'2017-08-22 06:10:20',0),('7ad2eaf6-88fc-632e-a2d0-599bcaff2d25','d191d6fe-6762-5011-a734-599bca2b2a07','df1a0d27-369d-f0ec-d97c-599a763a2972',0,'2017-08-22 06:10:20',0),('7b500b6d-b66f-dd9a-574e-599bca09a22e','d191d6fe-6762-5011-a734-599bca2b2a07','150638a8-f2e5-9a41-f892-599a76a4eebd',0,'2017-08-22 06:10:20',0),('7b8e829d-63e4-4f70-6b41-599bca2c8245','d191d6fe-6762-5011-a734-599bca2b2a07','12953261-8c96-3d2b-1466-599a7671fedd',0,'2017-08-22 06:10:20',0),('7bcd0735-e208-1dbd-294d-599bca3c0c76','d191d6fe-6762-5011-a734-599bca2b2a07','b8090a7a-a8bb-404b-e9e9-599a76584b47',0,'2017-08-22 06:10:20',0),('7c4a0e7e-eac0-a239-04ff-599bca793a40','d191d6fe-6762-5011-a734-599bca2b2a07','1738c437-c666-8b55-1482-599a76cf8052',0,'2017-08-22 06:10:20',0),('7c888b3f-c542-64e9-2656-599bca74fd43','d191d6fe-6762-5011-a734-599bca2b2a07','90f9081d-bafd-0cf9-9b40-599a76a7b7cc',0,'2017-08-22 06:10:20',0),('7cc702cf-34a6-b541-a281-599bcaefb8d7','d191d6fe-6762-5011-a734-599bca2b2a07','9f6b0311-ce4c-81a1-1fa5-599a76742253',0,'2017-08-22 06:10:20',0),('7d058d46-41b7-1402-d449-599bca796703','d191d6fe-6762-5011-a734-599bca2b2a07','a92f3963-29d0-adb5-9c80-599a76631e3f',0,'2017-08-22 06:10:20',0),('7d828b68-08d3-03bf-32ce-599bca8c7200','d191d6fe-6762-5011-a734-599bca2b2a07','a6be267d-ec0f-ea59-2980-599a76ca1044',0,'2017-08-22 06:10:20',0),('7dc107b0-4491-bc4c-9e7f-599bca834ab6','d191d6fe-6762-5011-a734-599bca2b2a07','ae114b64-95d7-2cd0-84b3-599a7611c783',0,'2017-08-22 06:10:20',0),('7dff801f-8dd7-bec1-b7fa-599bca1e4809','d191d6fe-6762-5011-a734-599bca2b2a07','aba031cc-930a-e15f-3ccd-599a763473bf',0,'2017-08-22 06:10:20',0),('7e3e0fb6-b35f-671c-af45-599bcaebfb31','d191d6fe-6762-5011-a734-599bca2b2a07','a48b9a02-d346-bc77-5831-599a761734a6',0,'2017-08-22 06:10:20',0),('7ebb0e46-7854-901f-a142-599bcaa8a392','d191d6fe-6762-5011-a734-599bca2b2a07','b082434b-4222-88e7-bc62-599a766d22a4',0,'2017-08-22 06:10:20',0),('7f3803ee-7fad-b337-f4b7-599bcabab26e','d191d6fe-6762-5011-a734-599bca2b2a07','a21a9d5d-8656-149c-6bd7-599a76ce1593',0,'2017-08-22 06:10:20',0),('7f7696f0-6dbf-640e-4bf3-599bcaa9e4b0','d191d6fe-6762-5011-a734-599bca2b2a07','dd67c8e5-6468-483e-3a2f-599a762df87a',0,'2017-08-22 06:10:20',0),('7ff392fc-e3bb-1b90-4ff1-599bca97762d','d191d6fe-6762-5011-a734-599bca2b2a07','e6ed7044-b4b8-5b46-0472-599a76e601fe',0,'2017-08-22 06:10:20',0),('80321050-932e-edc3-6287-599bca9c99d8','d191d6fe-6762-5011-a734-599bca2b2a07','e47c60ca-66e8-4e30-b14e-599a76d0df8e',0,'2017-08-22 06:10:20',0),('80709f6b-4691-00fc-b21a-599bcaacc664','d191d6fe-6762-5011-a734-599bca2b2a07','eb52824b-4df9-2bb6-b1d3-599a760786ed',0,'2017-08-22 06:10:20',0),('80af13e6-6f9a-e6bc-d66d-599bca0ed3b4','d191d6fe-6762-5011-a734-599bca2b2a07','e91ffcae-3344-7fbf-9ae1-599a767950ac',0,'2017-08-22 06:10:20',0),('8125058d-44ae-ce96-0176-599bca9e61de','d191d6fe-6762-5011-a734-599bca2b2a07','delete',0,'2017-08-22 06:10:20',0),('812c110a-55c1-d567-97bb-599bca71fce6','d191d6fe-6762-5011-a734-599bca2b2a07','e249e332-0fbb-e777-c1dd-599a764b4d2a',0,'2017-08-22 06:10:20',0),('816a9c0e-57d3-674d-bea1-599bca217da9','d191d6fe-6762-5011-a734-599bca2b2a07','edc387db-0902-5f17-019f-599a7687ef24',0,'2017-08-22 06:10:20',0),('81a91ae9-3e17-9fa4-2ef3-599bca090c29','d191d6fe-6762-5011-a734-599bca2b2a07','e0175e4c-fbba-00ab-c331-599a76dccaee',0,'2017-08-22 06:10:20',0),('822615ee-c4fd-20fb-94e6-599bca3f8a17','d191d6fe-6762-5011-a734-599bca2b2a07','4d9cc169-770e-35e1-0089-599a7685e553',0,'2017-08-22 06:10:20',0),('8264938e-4da8-9c48-cce5-599bca3bf49d','d191d6fe-6762-5011-a734-599bca2b2a07','57226694-959d-b748-ca9e-599a76871007',0,'2017-08-22 06:10:20',0),('82a31b33-9d45-4b08-5f64-599bca3e06b8','d191d6fe-6762-5011-a734-599bca2b2a07','54b168ed-487c-07ec-5d43-599a76278540',0,'2017-08-22 06:10:20',0),('83201719-cb53-6609-07f0-599bcaa7e823','d191d6fe-6762-5011-a734-599bca2b2a07','5bc5f50c-b575-ee04-88d8-599a765ba65a',0,'2017-08-22 06:10:20',0),('8323bd6c-a73e-eb27-8b20-599bcaaed178','d191d6fe-6762-5011-a734-599bca2b2a07','925009fa-fcaa-14c2-22a9-599a76999d19',0,'2017-08-22 06:10:20',0),('835e901b-bead-16d2-67f3-599bca6b8b08','d191d6fe-6762-5011-a734-599bca2b2a07','5954f5b6-b18c-7bdf-fe5b-599a76e1f253',0,'2017-08-22 06:10:20',0),('839d11de-1c6c-f5aa-ba7d-599bca78d640','d191d6fe-6762-5011-a734-599bca2b2a07','527edcda-edc8-f410-1637-599a7667ba42',0,'2017-08-22 06:10:20',0),('83a0b75c-08ae-47d5-14a4-599bca7e9326','d191d6fe-6762-5011-a734-599bca2b2a07','1d1e0fbb-1646-912f-9ee5-599a76edc54c',0,'2017-08-22 06:10:20',0),('83df3ea7-caeb-cc84-626a-599bca1ea10d','d191d6fe-6762-5011-a734-599bca2b2a07','e071059b-ba2c-d6ef-f894-599a76067462',0,'2017-08-22 06:10:20',0),('841a2b44-2801-a4cc-52f9-599bcae5f46c','d191d6fe-6762-5011-a734-599bca2b2a07','5df8856f-6b5f-a254-437b-599a760563d8',0,'2017-08-22 06:10:20',0),('8458a413-d805-c72c-859c-599bca367175','d191d6fe-6762-5011-a734-599bca2b2a07','504c544a-437a-f484-b021-599a76cf4ae8',0,'2017-08-22 06:10:20',0),('845c3b42-b989-f2b6-501b-599bca221570','d191d6fe-6762-5011-a734-599bca2b2a07','f384e471-9f75-968a-67d4-599a769624ce',0,'2017-08-22 06:10:20',0),('84972bc1-3e77-3dc2-dc3a-599bca2865f0','d191d6fe-6762-5011-a734-599bca2b2a07','a1ffd7d5-c062-d26c-dc01-599a76e078cb',0,'2017-09-13 10:48:57',1),('849ab7cf-3500-f5f0-57f0-599bca6ad7dd','d191d6fe-6762-5011-a734-599bca2b2a07','27b11e3d-2767-75e2-3aa0-599a76a06d34',0,'2017-08-22 06:10:20',0),('84d9332e-e02d-2c55-7b6c-599bca034651','d191d6fe-6762-5011-a734-599bca2b2a07','3230c053-1cb9-4dd7-0382-599a763a785a',0,'2017-08-22 06:10:20',0),('8514205c-3eb4-67e7-bda2-599bcad5eee4','d191d6fe-6762-5011-a734-599bca2b2a07','acbdff7a-f67c-5d60-ee34-599a76a6a833',0,'2017-09-13 10:48:57',1),('8552a282-a1ed-1c1a-5102-599bca2d4751','d191d6fe-6762-5011-a734-599bca2b2a07','aa0e7fba-8cc7-a73b-9204-599a7621ac07',0,'2017-09-13 10:48:57',1),('85563712-e88e-900b-a682-599bca1d5c1a','d191d6fe-6762-5011-a734-599bca2b2a07','2f8139d6-c4ba-a173-3e17-599a76a71ec8',0,'2017-08-22 06:10:20',0),('859125c9-18bd-26fd-3009-599bcad72c14','d191d6fe-6762-5011-a734-599bca2b2a07','b1de95ee-6191-7bb7-dc04-599a766c3b8c',0,'2017-09-13 10:48:57',1),('8594b4c0-ed33-2f7f-8c9b-599bca2ccde4','d191d6fe-6762-5011-a734-599bca2b2a07','3712dd9c-0f00-e804-bdf7-599a767c4aa4',0,'2017-08-22 06:10:20',0),('85d333bf-65ae-22b6-a8a8-599bcaf6342b','d191d6fe-6762-5011-a734-599bca2b2a07','34a1c91e-dbb8-2292-5f43-599a76e46c55',0,'2017-08-22 06:10:20',0),('86503106-2899-4c6a-0af9-599bca960bfe','d191d6fe-6762-5011-a734-599bca2b2a07','2d1039ac-84bf-5d18-a1fa-599a76d40eec',0,'2017-08-22 06:10:20',0),('86cd3837-1a50-bb8c-ce94-599bca9c6ba5','d191d6fe-6762-5011-a734-599bca2b2a07','3983e7c2-4efd-c675-a26c-599a769576da',0,'2017-08-22 06:10:20',0),('870bb98d-05b6-55b3-8c38-599bcaafec9d','d191d6fe-6762-5011-a734-599bca2b2a07','2a9f2f03-4e32-8b49-db40-599a769c8cf9',0,'2017-08-22 06:10:20',0),('874a410e-1325-683d-83f4-599bca94595d','d191d6fe-6762-5011-a734-599bca2b2a07','552588b7-015f-95f3-9424-599a765c8048',0,'2017-08-22 06:10:20',0),('87c74d93-feeb-0271-5e06-599bcaced156','d191d6fe-6762-5011-a734-599bca2b2a07','6022271c-5323-8ed4-07fd-599a765486ff',0,'2017-08-22 06:10:20',0),('8805cb69-d5ca-e96c-33a2-599bca89ae22','d191d6fe-6762-5011-a734-599bca2b2a07','5d72ad88-69f5-c4a4-46f8-599a76490dbe',0,'2017-08-22 06:10:20',0),('8882c1ef-577a-cd95-5e33-599bca3701d5','d191d6fe-6762-5011-a734-599bca2b2a07','65bfb8cc-e196-31ac-bb5e-599a76f02496',0,'2017-08-22 06:10:20',0),('8ca5cb09-4b10-840b-c1d8-599bca80e2e6','d191d6fe-6762-5011-a734-599bca2b2a07','af2f076c-e2e4-a816-b63c-599a76aa547f',0,'2017-09-13 10:48:57',1),('8ce44d78-986d-1c37-9a33-599bcaa3d342','d191d6fe-6762-5011-a734-599bca2b2a07','a75ee405-2c0e-072e-f6e5-599a76267685',0,'2017-09-13 10:48:57',1),('8d6144f7-8890-1a82-4d36-599bcaf05ee1','d191d6fe-6762-5011-a734-599bca2b2a07','b44f9bd7-6b31-ba43-0b75-599a767dabb7',0,'2017-09-13 10:48:57',1),('92856b98-1c2c-5aa4-9fea-599bcac9ce20','d191d6fe-6762-5011-a734-599bca2b2a07','63103e9c-612c-0ef7-3ac8-599a76836298',0,'2017-08-22 06:10:20',0),('930262b7-f466-6c74-e551-599bcaee366a','d191d6fe-6762-5011-a734-599bca2b2a07','5ac31560-42eb-6e43-48a2-599a76e2c3bf',0,'2017-08-22 06:10:20',0),('9340ed3a-f369-b626-c04e-599bca1b61f6','d191d6fe-6762-5011-a734-599bca2b2a07','686f4fd4-d7db-bbde-cca0-599a76f70fe2',0,'2017-08-22 06:10:20',0),('937f6941-25b4-f065-8cba-599bca43ec1a','d191d6fe-6762-5011-a734-599bca2b2a07','5813834e-4421-fdec-cb21-599a765948e8',0,'2017-08-22 06:10:20',0),('93fc741e-01ec-2480-eb2b-599bcaf62ef7','d191d6fe-6762-5011-a734-599bca2b2a07','bd2b98ee-63d7-5faa-68dd-599a7628f04a',0,'2017-08-22 06:10:20',0),('943aff8b-b495-5610-6272-599bca7916d3','d191d6fe-6762-5011-a734-599bca2b2a07','cccbd0a0-901c-e450-0de3-599a764df161',0,'2017-08-22 06:10:20',0),('94b7ff0c-c530-ce68-19f7-599bca9751a0','d191d6fe-6762-5011-a734-599bca2b2a07','ca1c4902-515d-5799-d74d-599a76478eb8',0,'2017-08-22 06:10:20',0),('94f677f0-708f-0b5a-cba4-599bcaf33659','d191d6fe-6762-5011-a734-599bca2b2a07','d22aeaa6-84cc-32e5-f416-599a761d0f2c',0,'2017-08-22 06:10:20',0),('9534f169-00de-dd0d-9de2-599bca6d78dd','d191d6fe-6762-5011-a734-599bca2b2a07','cfb9efa5-e6d9-190d-4bbe-599a76407503',0,'2017-08-22 06:10:20',0),('9573741b-2d00-bed3-8fd9-599bcadcdfde','d191d6fe-6762-5011-a734-599bca2b2a07','c76ccd64-4ab3-95c0-8341-599a76e37bcc',0,'2017-08-22 06:10:20',0),('95f075ef-6ae7-7bae-43cd-599bca131213','d191d6fe-6762-5011-a734-599bca2b2a07','d518f351-2ef4-02a0-c395-599a761f081f',0,'2017-08-22 06:10:20',0),('966d7e45-264b-098d-9f92-599bca61ab2c','d191d6fe-6762-5011-a734-599bca2b2a07','c4bd30a3-504d-9721-57b4-599a7670b869',0,'2017-08-22 06:10:20',0),('96ea79ad-1bb8-cd99-b2bc-599bca3bdf11','d191d6fe-6762-5011-a734-599bca2b2a07','7dff2a3f-9474-6ea8-ae6d-599a7611eb73',0,'2017-08-22 06:10:20',0),('9728f5ac-892a-5b56-3d98-599bca87dcee','d191d6fe-6762-5011-a734-599bca2b2a07','87c35f5a-7824-debd-0b43-599a769f4261',0,'2017-08-22 06:10:20',0),('97677af2-8790-d135-22ef-599bcaaea77a','d191d6fe-6762-5011-a734-599bca2b2a07','8590dce6-2c17-8350-5b11-599a761d707a',0,'2017-08-22 06:10:20',0),('97e47535-629f-f6f0-8365-599bcaef8d0c','d191d6fe-6762-5011-a734-599bca2b2a07','8ca568b9-10cb-1570-3b4a-599a76a8a642',0,'2017-08-22 06:10:20',0),('981f6575-2015-3035-1332-599bcab0b290','d191d6fe-6762-5011-a734-599bca2b2a07','a4edefd2-27a8-7164-180c-599a76df73a0',0,'2017-09-13 10:48:57',1),('9822f325-323c-36f9-6a14-599bcaa7aff3','d191d6fe-6762-5011-a734-599bca2b2a07','8a72e141-a0a5-f359-88e8-599a76dcbe76',0,'2017-08-22 06:10:20',0),('985de61e-f517-3dfa-377d-599bcaf1192a','d191d6fe-6762-5011-a734-599bca2b2a07','27ad8ca0-77a0-ab16-f9c6-599a7635979f',0,'2017-08-22 06:10:20',0),('98618f9a-3487-5ddc-b3e8-599bca55f835','d191d6fe-6762-5011-a734-599bca2b2a07','831fcf60-fb21-bb9a-8290-599a76d6c2ed',0,'2017-08-22 06:10:20',0),('98daeac4-d11f-f04f-175f-599bca06e72d','d191d6fe-6762-5011-a734-599bca2b2a07','326bb7b2-d1f6-3dcd-bb36-599a76cc0d21',0,'2017-08-22 06:10:20',0),('98de8827-3676-e5fe-a023-599bcafacfa0','d191d6fe-6762-5011-a734-599bca2b2a07','8f54f8a2-ed18-17b6-2f55-599a765c5d73',0,'2017-08-22 06:10:20',0),('99197095-c75e-751d-e9b9-599bca493123','d191d6fe-6762-5011-a734-599bca2b2a07','2fbc2a9d-00b8-1e7c-df26-599a766b4fd1',0,'2017-08-22 06:10:20',0),('991d02a4-e8a2-7b41-9dd7-599bca6bddaf','d191d6fe-6762-5011-a734-599bca2b2a07','80aebad9-80cf-e430-2dba-599a76ccc8dd',0,'2017-08-22 06:10:20',0),('9957f280-793e-177c-784b-599bcae3d639','d191d6fe-6762-5011-a734-599bca2b2a07','378c422c-5606-c4bc-aa2a-599a76c3135f',0,'2017-08-22 06:10:20',0),('995b8a6e-5427-5816-bd71-599bcabebd95','d191d6fe-6762-5011-a734-599bca2b2a07','d85aff29-c700-c9b2-0f53-599a76a3cfe4',0,'2017-08-22 06:10:20',0),('99d4f6ec-b2ae-f6ad-40b9-599bca5f34b3','d191d6fe-6762-5011-a734-599bca2b2a07','351b3d00-cab8-4599-cd23-599a760c5041',0,'2017-08-22 06:10:20',0),('99d88c7b-e515-67bd-511c-599bcaee6a4f','d191d6fe-6762-5011-a734-599bca2b2a07','e3961019-4f85-3fa4-48e0-599a7622372e',0,'2017-08-22 06:10:20',0),('9a137b8a-3fb5-f26c-716e-599bcaa6583f','d191d6fe-6762-5011-a734-599bca2b2a07','2d4b1a67-b673-b8af-609c-599a76592468',0,'2017-08-22 06:10:20',0),('9a1704a9-8612-9a80-b6e9-599bca7ec6e4','d191d6fe-6762-5011-a734-599bca2b2a07','e0a81e97-cc4e-b445-4a87-599a76b8cae9',0,'2017-08-22 06:10:20',0),('9a9400e8-4533-65c7-52d8-599bca205868','d191d6fe-6762-5011-a734-599bca2b2a07','e933b11c-955a-13ab-c435-599a7667cd69',0,'2017-08-22 06:10:20',0),('9b110e45-3691-466c-ae1f-599bca2c87bb','d191d6fe-6762-5011-a734-599bca2b2a07','e645a76a-1a26-c36c-d1ea-599a760b0881',0,'2017-08-22 06:10:20',0),('9b4f86dd-8c7a-5765-5bee-599bca123828','d191d6fe-6762-5011-a734-599bca2b2a07','ddf88f8e-67da-534e-2851-599a7696039e',0,'2017-08-22 06:10:20',0),('9bcc8f4a-b739-cf5a-4964-599bcab87256','d191d6fe-6762-5011-a734-599bca2b2a07','ebe33cce-1e66-60de-331e-599a76cbde82',0,'2017-08-22 06:10:20',0),('9c0b079c-2212-ce79-b6cd-599bca2e63a3','d191d6fe-6762-5011-a734-599bca2b2a07','db0a7f6a-bc73-6809-03d6-599a7675ec2d',0,'2017-08-22 06:10:20',0),('9c881b8a-59e0-6fae-71b9-599bca8ac995','d191d6fe-6762-5011-a734-599bca2b2a07','dd7f1bdf-deaa-38f0-536e-599a76141f3b',0,'2017-08-22 06:10:20',0),('9cc69334-b033-03b4-d3c1-599bca27b593','d191d6fe-6762-5011-a734-599bca2b2a07','e8f8ccc5-87ff-9a45-f9c4-599a76e061ba',0,'2017-08-22 06:10:20',0),('9d0517fa-f8c6-7784-3802-599bca53b5e6','d191d6fe-6762-5011-a734-599bca2b2a07','e60ab470-4551-7a0a-a8d8-599a765073fc',0,'2017-08-22 06:10:20',0),('9d8212d4-f7db-6e88-a2f8-599bca84311b','d191d6fe-6762-5011-a734-599bca2b2a07','ee57d7f3-b72a-3ac6-2514-599a76d25780',0,'2017-08-22 06:10:20',0),('9dc0970b-11e1-0869-17d9-599bca9ce967','d191d6fe-6762-5011-a734-599bca2b2a07','eba84c44-9760-da85-6634-599a763a2a26',0,'2017-08-22 06:10:20',0),('9e3d9a70-00e2-2dcf-ede3-599bcae0733c','d191d6fe-6762-5011-a734-599bca2b2a07','e35b266f-a587-2aa3-8804-599a76b97c97',0,'2017-08-22 06:10:20',0),('9eba9a4d-cb7e-07cd-f8e8-599bca552448','d191d6fe-6762-5011-a734-599bca2b2a07','f145e9a6-b454-eb8b-5316-599a763a2747',0,'2017-08-22 06:10:20',0),('9f379821-3bd9-7986-0c17-599bca777ea3','d191d6fe-6762-5011-a734-599bca2b2a07','e0aba5dd-dfef-af28-ade1-599a76f974cc',0,'2017-08-22 06:10:20',0),('9fb49db8-37b0-9295-ebc9-599bca590776','d191d6fe-6762-5011-a734-599bca2b2a07','7ce5002f-61a3-ef9c-b703-599a7672175a',0,'2017-08-22 06:10:20',0),('9fef8d9d-1c55-e106-73f7-599bca3c1bd1','d191d6fe-6762-5011-a734-599bca2b2a07','3a3bd492-5d2e-ed69-12cd-599a76844f98',0,'2017-08-22 06:10:20',0),('a02e0b87-2df2-11d2-d699-599bca43f3ce','d191d6fe-6762-5011-a734-599bca2b2a07','2a9b9ca6-ec0b-28e6-2895-599a76a91b3c',0,'2017-08-22 06:10:20',0),('a03195ce-146a-f929-bc19-599bca65319b','d191d6fe-6762-5011-a734-599bca2b2a07','85af2c6c-b992-4b90-5d69-599a76a8e905',0,'2017-08-22 06:10:20',0),('a06c8493-ddba-9e16-9734-599bcadddb63','d191d6fe-6762-5011-a734-599bca2b2a07','30fb0732-6c01-442f-7303-599a76b7dda1',0,'2017-08-22 06:10:20',0),('a07012da-0674-5de6-5a3a-599bca788d43','d191d6fe-6762-5011-a734-599bca2b2a07','83bb1e4c-1c9f-077d-f6ca-599a76081817',0,'2017-08-22 06:10:20',0),('a0e98fb6-83b5-db2b-f4ef-599bca9087c7','d191d6fe-6762-5011-a734-599bca2b2a07','b9b509db-5212-985d-4c0d-599a7649e361',0,'2017-08-22 06:10:20',0),('a0ed2f40-9be4-b7b2-76a3-599bcab111f0','d191d6fe-6762-5011-a734-599bca2b2a07','8a143a89-d852-bac7-8a78-599a7669f65d',0,'2017-08-22 06:10:20',0),('a128096a-0166-ffe0-b64c-599bcaab9854','d191d6fe-6762-5011-a734-599bca2b2a07','9a750e0b-cab3-77f3-c37b-599a765090cd',0,'2017-08-22 06:10:20',0),('a12ba431-b076-c23f-eb58-599bcac843d2','d191d6fe-6762-5011-a734-599bca2b2a07','87e1a6af-c022-c7fd-5114-599a76c61e15',0,'2017-08-22 06:10:20',0),('a16a2091-432d-9a72-629b-599bca969d7f','d191d6fe-6762-5011-a734-599bca2b2a07','818893e2-b41e-db10-0220-599a76ba264a',0,'2017-08-22 06:10:20',0),('a1a51042-d7a9-3679-4c7e-599bca798534','d191d6fe-6762-5011-a734-599bca2b2a07','10006f4e-1995-a3f7-d040-599a767c6afc',0,'2017-08-22 06:10:20',0),('a1e39591-7c36-5540-5afc-599bca8b9705','d191d6fe-6762-5011-a734-599bca2b2a07','dcde0e34-8f5f-558b-abca-599a768505c9',0,'2017-08-22 06:10:20',0),('a1e72bcb-be44-eb1b-8a4a-599bcaffe414','d191d6fe-6762-5011-a734-599bca2b2a07','8c083c53-f768-14ea-6cf0-599a761ad6c7',0,'2017-08-22 06:10:20',0),('a22212d8-b3e7-5de5-c685-599bca3b8ce4','d191d6fe-6762-5011-a734-599bca2b2a07','774c0a8b-c73e-614d-7f5d-599a768e113f',0,'2017-08-22 06:10:20',0),('a225a41e-5871-e53b-dadf-599bca845a5b','d191d6fe-6762-5011-a734-599bca2b2a07','7f5606c0-e966-ad2c-5056-599a76fe2f5e',0,'2017-08-22 06:10:20',0),('a29f12c5-3d93-a266-aaaf-599bcaeb204b','d191d6fe-6762-5011-a734-599bca2b2a07','1232f917-292f-166d-8cf2-599a7675f0da',0,'2017-08-22 06:10:20',0),('a2a2a3fd-5282-69ee-9aac-599bca0f6bc8','d191d6fe-6762-5011-a734-599bca2b2a07','815bf937-161c-c561-0e02-599a76f7ee04',0,'2017-08-22 06:10:20',0),('a2dd99a9-9007-11be-1e4b-599bca742439','d191d6fe-6762-5011-a734-599bca2b2a07','580c0698-a7fb-6f20-928d-599a7610176c',0,'2017-08-22 06:10:20',0),('a2e12a63-fb14-3475-9c6b-599bca830837','d191d6fe-6762-5011-a734-599bca2b2a07','8ae19333-33b9-e1d7-35c1-599a76ddcf67',0,'2017-08-22 06:10:20',0),('a31c12bf-e216-f775-68f8-599bca20d16c','d191d6fe-6762-5011-a734-599bca2b2a07','44dba980-c693-4c70-51d6-599a76623d7c',0,'2017-08-22 06:10:20',0),('a35e286c-a401-573c-ca73-599bcacde286','d191d6fe-6762-5011-a734-599bca2b2a07','887088cb-3e3b-f910-12bb-599a766966b9',0,'2017-08-22 06:10:20',0),('a39cabd5-c9da-f4bf-85aa-599bca8954c4','d191d6fe-6762-5011-a734-599bca2b2a07','8f852298-7b51-7c64-345e-599a76d2b1b0',0,'2017-08-22 06:10:20',0),('a419ab26-4c67-a4b3-2bf4-599bcae3ffda','d191d6fe-6762-5011-a734-599bca2b2a07','8d142b2c-aaff-e327-7669-599a764012b6',0,'2017-08-22 06:10:20',0),('a45824f0-21b4-646c-7728-599bca85a014','d191d6fe-6762-5011-a734-599bca2b2a07','863e0db8-f331-9366-8029-599a76b8ea4b',0,'2017-08-22 06:10:20',0),('a496adcc-6881-25d6-f982-599bcac44062','d191d6fe-6762-5011-a734-599bca2b2a07','91b7bc33-79ee-6f4d-6f72-599a76b6a67e',0,'2017-08-22 06:10:20',0),('a513b2a6-1953-bc2f-8ff0-599bcafac4f4','d191d6fe-6762-5011-a734-599bca2b2a07','83ccf998-f661-b065-1a9f-599a76c4ae43',0,'2017-08-22 06:10:20',0),('a5523d02-7df1-eb61-faa2-599bcab6e986','d191d6fe-6762-5011-a734-599bca2b2a07','b2ca46ac-cda9-7b91-90f6-599a765a88c2',0,'2017-08-22 06:10:20',0),('a590be65-f43b-2cf9-af27-599bcad1eb94','d191d6fe-6762-5011-a734-599bca2b2a07','bd0b6a42-c658-63a3-44ce-599a769ee7df',0,'2017-08-22 06:10:20',0),('a60db9e2-224a-63c3-5975-599bca7b4144','d191d6fe-6762-5011-a734-599bca2b2a07','ba5be8cd-5b52-1f56-1cd0-599a76b3b3a4',0,'2017-08-22 06:10:20',0),('a70426b2-8d80-b3c2-22a7-599bca8b47c6','d191d6fe-6762-5011-a734-599bca2b2a07','505542fa-70e9-0cf4-4528-599a76c33d7e',0,'2017-08-22 06:10:20',0),('a7812fd8-616d-d2af-4b42-599bcaa43420','d191d6fe-6762-5011-a734-599bca2b2a07','4d67476f-484d-6e84-332e-599a76dbec89',0,'2017-08-22 06:10:20',0),('a7fe2f13-583e-1419-c634-599bcad0895a','d191d6fe-6762-5011-a734-599bca2b2a07','5575e793-934c-b621-5cf6-599a763fdc34',0,'2017-08-22 06:10:20',0),('a87b2dee-4b5e-8dfc-ef5c-599bcac4672e','d191d6fe-6762-5011-a734-599bca2b2a07','52c65175-5073-01ae-263e-599a7695923c',0,'2017-08-22 06:10:20',0),('a8b9a479-61bf-a35c-89fa-599bca717218','d191d6fe-6762-5011-a734-599bca2b2a07','4ab7b63e-64af-ac18-b17a-599a76696b5e',0,'2017-08-22 06:10:20',0),('a8f82175-c01e-bbe4-1557-599bca87a52e','d191d6fe-6762-5011-a734-599bca2b2a07','58256cb1-17ea-9034-02f6-599a76157a36',0,'2017-08-22 06:10:20',0),('a97527b3-1d04-c85a-e4f8-599bca7a8790','d191d6fe-6762-5011-a734-599bca2b2a07','48083cfe-787f-34a6-6902-599a761531d1',0,'2017-08-22 06:10:20',0),('a9b3ab13-9a06-00da-0928-599bca8689e3','d191d6fe-6762-5011-a734-599bca2b2a07','e40f83a8-df43-c3cb-26eb-599a76820755',0,'2017-08-22 06:10:20',0),('aa30b42f-d727-65cb-056d-599bca9abbe3','d191d6fe-6762-5011-a734-599bca2b2a07','efc7bba0-b740-bf9b-467c-599a768c6ac4',0,'2017-08-22 06:10:20',0),('aa6f308c-ab2c-0029-6618-599bca86048d','d191d6fe-6762-5011-a734-599bca2b2a07','ecd9a7c0-f660-0395-52c0-599a763925f6',0,'2017-08-22 06:10:20',0),('aaadb8c3-6427-7b71-b0fa-599bcaedc425','d191d6fe-6762-5011-a734-599bca2b2a07','1414041c-a88d-b370-cb89-599a76722916',0,'2017-08-22 06:10:20',0),('aaec3b71-6ae0-a1a4-49e5-599bca10987c','d191d6fe-6762-5011-a734-599bca2b2a07','f27743a6-b199-7da2-1e69-599a76f61a03',0,'2017-08-22 06:10:20',0),('b37b6f17-d327-496d-db88-599bca0ec76a','d191d6fe-6762-5011-a734-599bca2b2a07','c70e1e5a-7658-287c-f79b-599a7655525b',0,'2017-08-22 06:10:20',0),('b3f86b50-c99b-80fb-f246-599bcaa34e1f','d191d6fe-6762-5011-a734-599bca2b2a07','c4db83e6-82d1-19ae-c5b7-599a76eb308e',0,'2017-08-22 06:10:20',0),('b436ef07-948e-cc96-14ad-599bcace5d87','d191d6fe-6762-5011-a734-599bca2b2a07','b7ead238-d15d-a284-a2be-599a763d67a4',0,'2017-08-22 06:10:20',0),('b4b3e36a-4a92-7839-ce9d-599bcaf91811','d191d6fe-6762-5011-a734-599bca2b2a07','c97f129d-f046-2920-2906-599a765213cf',0,'2017-08-22 06:10:20',0),('b530e9ec-9104-451e-0e75-599bca9c491e','d191d6fe-6762-5011-a734-599bca2b2a07','b579d64e-2c0b-e934-4d50-599a762da785',0,'2017-08-22 06:10:20',0),('b5e8d2b4-ffe3-4772-9317-599bca6ef846','d191d6fe-6762-5011-a734-599bca2b2a07','ea2a2d43-e7dd-01a6-ceb5-599a760328d9',0,'2017-08-22 06:10:20',0),('b627550c-c0da-4d02-fa6a-599bca35a45d','d191d6fe-6762-5011-a734-599bca2b2a07','3f0d0fb5-8b81-b8ac-c7c3-599a7645eae9',0,'2017-08-22 06:10:20',0),('b665d351-d2be-9630-a65a-599bca70de04','d191d6fe-6762-5011-a734-599bca2b2a07','e77a92b3-cf00-629e-3929-599a76d9b656',0,'2017-08-22 06:10:20',0),('b6e2ee3c-a0e8-dca3-c533-599bca07563a','d191d6fe-6762-5011-a734-599bca2b2a07','cb249b1c-29b1-8851-a950-599a76f89651',0,'2017-08-22 06:10:20',0),('b7216961-6bdb-06ad-76de-599bca5622e7','d191d6fe-6762-5011-a734-599bca2b2a07','d65fcea6-07dd-4dba-625f-599a763c6ba4',0,'2017-08-22 06:10:20',0),('b75fe160-eeed-30fb-5d22-599bca4e4e4d','d191d6fe-6762-5011-a734-599bca2b2a07','d3b03a48-06b9-43fa-9aa2-599a769cdb60',0,'2017-08-22 06:10:20',0),('b7dce02b-928c-a6a9-abee-599bcadc37f3','d191d6fe-6762-5011-a734-599bca2b2a07','dbbed651-952b-ce50-3b31-599a76484a11',0,'2017-08-22 06:10:20',0),('b859ef17-6b93-41bc-4b2b-599bcaa2e931','d191d6fe-6762-5011-a734-599bca2b2a07','d90f47f9-d7a3-b3f0-fddc-599a7695afd5',0,'2017-08-22 06:10:20',0),('b8986e86-d00f-a5c9-4982-599bca602b1b','d191d6fe-6762-5011-a734-599bca2b2a07','d100b130-5fb5-d546-f01a-599a767dddf8',0,'2017-08-22 06:10:20',0),('b9156da2-fc32-e833-08b9-599bca3c4874','d191d6fe-6762-5011-a734-599bca2b2a07','deace5a1-368f-b25f-56dd-599a76a2f43a',0,'2017-08-22 06:10:20',0),('b953e998-8c04-5776-7804-599bcab249f2','d191d6fe-6762-5011-a734-599bca2b2a07','ce512fbf-cc9a-5485-b8b3-599a769c3cfa',0,'2017-08-22 06:10:20',0),('b9926865-a106-df22-673f-599bcae9efbb','d191d6fe-6762-5011-a734-599bca2b2a07','572efc0d-ce8c-5979-f6dd-599a762606fd',0,'2017-08-22 06:10:20',0),('ba0f6e1e-5594-7bcb-c5fb-599bca1e6776','d191d6fe-6762-5011-a734-599bca2b2a07','62e721df-0eea-67ea-b2dd-599a76169bf6',0,'2017-08-22 06:10:20',0),('ba4decf0-325b-1d9d-6f9d-599bcafc72c6','d191d6fe-6762-5011-a734-599bca2b2a07','5ff91570-aaca-bd9a-29f3-599a76693f18',0,'2017-08-22 06:10:20',0),('ba8c61a8-c2fe-edec-c5cf-599bca533899','d191d6fe-6762-5011-a734-599bca2b2a07','6f1c5563-1183-a1df-9367-599a76f184f2',0,'2017-08-22 06:10:20',0),('bb0966ed-fb1e-4e56-5220-599bca9f8a39','d191d6fe-6762-5011-a734-599bca2b2a07','6596b7de-f007-f037-dfd0-599a76bac848',0,'2017-08-22 06:10:20',0),('bb47f91e-168a-36a2-808f-599bca7565a0','d191d6fe-6762-5011-a734-599bca2b2a07','5d499050-901f-2edf-d3c3-599a765055bf',0,'2017-08-22 06:10:20',0),('bbc4f48a-56b0-1dce-ad67-599bca788973','d191d6fe-6762-5011-a734-599bca2b2a07','71cbde36-c1f4-1503-38c2-599a7625438b',0,'2017-08-22 06:10:20',0),('bc037ab6-bc85-41b0-a0a4-599bcab5be2b','d191d6fe-6762-5011-a734-599bca2b2a07','5a9a00e0-d74a-8d27-c60c-599a765190e2',0,'2017-08-22 06:10:20',0),('bc8076d8-902c-1970-f3cf-599bca3e7c09','d191d6fe-6762-5011-a734-599bca2b2a07','8dc870e2-345d-b98f-f737-599a76dda2a7',0,'2017-08-22 06:10:20',0),('bcbef6d1-7568-df4f-7591-599bca0d16ca','d191d6fe-6762-5011-a734-599bca2b2a07','970fa5c7-9e9b-8073-ee56-599a76cec617',0,'2017-08-22 06:10:20',0),('bd3bf6ed-010f-1306-2706-599bcafcc7ec','d191d6fe-6762-5011-a734-599bca2b2a07','949e942e-c1f6-c280-bb27-599a76a9edff',0,'2017-08-22 06:10:20',0),('bd7a7988-9cb8-5958-ea45-599bca0e669a','d191d6fe-6762-5011-a734-599bca2b2a07','9b3623e6-f296-e43d-655f-599a76515725',0,'2017-08-22 06:10:20',0),('c48f132a-c7cd-5388-a162-599bcad62414','d191d6fe-6762-5011-a734-599bca2b2a07','9903a9bc-cd01-e9f8-83ab-599a76baf5ca',0,'2017-08-22 06:10:20',0),('c4cd90ff-c429-2c6c-6349-599bcad18ed4','d191d6fe-6762-5011-a734-599bca2b2a07','926c0087-e1d1-54e7-e6cd-599a76e5f4d2',0,'2017-08-22 06:10:20',0),('c54a9b58-7fc1-4660-75a6-599bcab54a76','d191d6fe-6762-5011-a734-599bca2b2a07','9d68bda2-cba2-7a37-fb05-599a7656174f',0,'2017-08-22 06:10:20',0),('c5891f58-b466-9c6b-4ef5-599bcac87f7e','d191d6fe-6762-5011-a734-599bca2b2a07','907806fb-5939-c7d3-7ae4-599a76178746',0,'2017-08-22 06:10:20',0),('c6061212-512a-1096-763b-599bca6a5d5b','d191d6fe-6762-5011-a734-599bca2b2a07','32f8b987-71ac-30cd-ce89-599a76a206d8',0,'2017-08-22 06:10:20',0),('c6449639-a3c2-babd-50ad-599bcac4d8bb','d191d6fe-6762-5011-a734-599bca2b2a07','3c015422-02c0-9a2e-daf0-599a76e8f888',0,'2017-08-22 06:10:20',0),('c6c197f2-7478-55f6-88ba-599bca9e11b5','d191d6fe-6762-5011-a734-599bca2b2a07','3a0d5c4b-3619-bf1a-ba9d-599a7686d0c5',0,'2017-08-22 06:10:20',0),('c7001e47-67e3-f685-10ce-599bca063dc9','d191d6fe-6762-5011-a734-599bca2b2a07','4066667d-6d98-02b4-b85a-599a76d11110',0,'2017-08-22 06:10:20',0),('c77d1610-09c1-1e4a-78cb-599bca211a43','d191d6fe-6762-5011-a734-599bca2b2a07','3e33e3ab-8840-3f45-b394-599a76324061',0,'2017-08-22 06:10:20',0),('c7bb9313-adb6-0065-a1d2-599bcab9fd86','d191d6fe-6762-5011-a734-599bca2b2a07','379c436b-7dc1-0b8f-7e28-599a76add149',0,'2017-08-22 06:10:20',0),('c838ab5b-d94a-e493-774c-599bcae9869d','d191d6fe-6762-5011-a734-599bca2b2a07','4298f071-0d80-36f8-21bd-599a7664a71d',0,'2017-08-22 06:10:20',0),('c8772d99-cd07-62f9-ad44-599bcabb24fc','d191d6fe-6762-5011-a734-599bca2b2a07','3569ca1d-5d1d-93ab-f11c-599a76b20cd2',0,'2017-08-22 06:10:20',0),('c8f42461-1c10-572e-dba5-599bca9e4c6a','d191d6fe-6762-5011-a734-599bca2b2a07','bdf1d0ea-c232-8a0d-3473-599a76f3d8d5',0,'2017-08-22 06:10:20',0),('c932a2b1-fe3e-1d94-ff55-599bcae9c80c','d191d6fe-6762-5011-a734-599bca2b2a07','c92d0e1a-1a57-63ec-0f6c-599a76a8bdb4',0,'2017-08-22 06:10:20',0),('c9afa25c-18f2-fb30-538e-599bca5d730d','d191d6fe-6762-5011-a734-599bca2b2a07','c67d762f-0ce5-4684-410d-599a7653eada',0,'2017-08-22 06:10:20',0),('c9ee2d72-48fb-4524-e466-599bca1df81c','d191d6fe-6762-5011-a734-599bca2b2a07','ce8c1d3e-13dc-4100-ddf2-599a760e9a76',0,'2017-08-22 06:10:20',0),('ca2caf6e-b645-a2e7-f6e7-599bcad88c64','d191d6fe-6762-5011-a734-599bca2b2a07','cbdc8b99-c896-75d5-79c8-599a76717ba4',0,'2017-08-22 06:10:20',0),('caa9addf-399d-94eb-f410-599bca222cc2','d191d6fe-6762-5011-a734-599bca2b2a07','c3cdec72-21e4-d044-b152-599a76f9318d',0,'2017-08-22 06:10:20',0),('cae825fc-c05f-3ec0-3b2a-599bcac43e85','d191d6fe-6762-5011-a734-599bca2b2a07','d13b916c-4c23-49c0-8d57-599a7610086e',0,'2017-08-22 06:10:20',0),('cb26adc4-d307-6a9b-5449-599bcac45453','d191d6fe-6762-5011-a734-599bca2b2a07','c11e6609-eb68-6e72-8fd8-599a76432987',0,'2017-08-22 06:10:20',0),('cba3a8d1-2dbe-501b-4123-599bcabeb0b1','d191d6fe-6762-5011-a734-599bca2b2a07','5d69a019-50f7-bb8e-22f8-599a7630d916',0,'2017-08-22 06:10:20',0),('cbe22e33-d5c9-e705-19ef-599bca63b693','d191d6fe-6762-5011-a734-599bca2b2a07','667247d6-57d9-c106-e04e-599a76924c90',0,'2017-08-22 06:10:20',0),('cc5f375f-7d7b-d318-8f08-599bca4b5248','d191d6fe-6762-5011-a734-599bca2b2a07','647e3b5a-18c9-3784-c3a9-599a7673ba37',0,'2017-08-22 06:10:20',0),('ccdc357f-3a9d-c864-5475-599bcad4fe0a','d191d6fe-6762-5011-a734-599bca2b2a07','6ad750a5-7770-99b7-ecc9-599a761c22d9',0,'2017-08-22 06:10:20',0),('cd1ab21e-50b7-1f66-77be-599bcaede6d1','d191d6fe-6762-5011-a734-599bca2b2a07','68a4c502-7f1a-f47e-917a-599a76835ab5',0,'2017-08-22 06:10:20',0),('cd5938ed-c7e8-4623-1fa9-599bcaeff96e','d191d6fe-6762-5011-a734-599bca2b2a07','620d3247-dafc-1709-1c46-599a767f909d',0,'2017-08-22 06:10:20',0),('cd97b355-f912-e34e-7fa6-599bcab808c7','d191d6fe-6762-5011-a734-599bca2b2a07','6d09dfd9-bece-50a8-8f97-599a76fcb62f',0,'2017-08-22 06:10:20',0),('ce14b527-c79c-f0a8-8901-599bcaa287e8','d191d6fe-6762-5011-a734-599bca2b2a07','5fdaaee4-120b-7659-a0be-599a7622cb4b',0,'2017-08-22 06:10:20',0),('ce533f73-0d1e-c04f-4cf2-599bca2deffe','d191d6fe-6762-5011-a734-599bca2b2a07','83f4509c-31c1-9fb5-62e5-599a764a3425',0,'2017-08-22 06:10:20',0),('ced035d7-669c-a763-37d7-599bcac1568a','d191d6fe-6762-5011-a734-599bca2b2a07','8e357884-7157-79db-7702-599a76999246',0,'2017-08-22 06:10:20',0),('cf0eba72-e216-939a-bd07-599bca5e4805','d191d6fe-6762-5011-a734-599bca2b2a07','8bc466d2-7e96-eada-6340-599a76dc8870',0,'2017-08-22 06:10:20',0),('cf4d3132-f563-5b94-a070-599bca40830e','d191d6fe-6762-5011-a734-599bca2b2a07','935600c6-acca-a9cb-32d0-599a76c1cc91',0,'2017-08-22 06:10:20',0),('cf8bbf04-895a-d6a3-daa3-599bca957faf','d191d6fe-6762-5011-a734-599bca2b2a07','90e50c33-99fd-6c82-c170-599a7662bb66',0,'2017-08-22 06:10:20',0),('d0473f70-cc4f-0bc4-dd9a-599bca76b0c9','d191d6fe-6762-5011-a734-599bca2b2a07','89536ec8-b106-4e00-efae-599a768fb7d3',0,'2017-08-22 06:10:20',0),('d0c440db-ef60-46c5-9b31-599bcab2c218','d191d6fe-6762-5011-a734-599bca2b2a07','95c71c7b-e7a5-bdf3-73c8-599a763b6889',0,'2017-08-22 06:10:20',0),('d102c4f6-db9e-a562-b6cd-599bca305246','d191d6fe-6762-5011-a734-599bca2b2a07','86e250d5-73e9-2af4-6bdf-599a76a1ad3e',0,'2017-08-22 06:10:20',0),('d1414ee2-c288-8610-c502-599bcac8cece','d191d6fe-6762-5011-a734-599bca2b2a07','a9d384ef-3b0b-cf21-8880-599a7682e745',0,'2017-08-22 06:10:20',0),('d1be4b98-6eb0-b082-426b-599bca2af959','d191d6fe-6762-5011-a734-599bca2b2a07','b45323ba-aea9-5e9a-ebb7-599a763905cf',0,'2017-08-22 06:10:20',0),('e3cf8926-bac5-6902-0c01-599bca1d3627','d191d6fe-6762-5011-a734-599bca2b2a07','b1e22113-04e1-1855-a95e-599a76d1e9b1',0,'2017-08-22 06:10:20',0),('e44c8f0c-3085-3bd3-3b1e-599bcab6804f','d191d6fe-6762-5011-a734-599bca2b2a07','b973c218-5642-8084-7ffe-599a768a9a8e',0,'2017-08-22 06:10:20',0),('e48b07c8-897d-2259-08b0-599bcafec8e1','d191d6fe-6762-5011-a734-599bca2b2a07','b702b909-a5a7-47eb-4a17-599a7678bfd4',0,'2017-08-22 06:10:20',0),('f07e2cf0-ae67-32c5-87e6-599bcabc52ba','d191d6fe-6762-5011-a734-599bca2b2a07','access',0,'2017-08-22 06:10:20',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
INSERT INTO `acl_roles_users` VALUES ('f0e00d3f-406c-22ff-427f-599bce5c152c','d191d6fe-6762-5011-a734-599bca2b2a07','eff07114-603c-c0d2-0e5e-599bcd264773','2017-08-22 06:24:27',0);
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `message_to_assigned` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
INSERT INTO `alerts` VALUES ('3baa8e31-bdd1-7b3c-733b-59b8cdf9301f','Предварительный контакт \' TEST\'','2017-09-13 06:18:49','2017-09-13 06:21:13','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView',NULL),('4a496cb7-e076-3c1c-3c9c-59b105786fe6','Предварительный контакт \'Тест Тестовый\'','2017-09-07 08:39:15','2017-09-07 09:44:58','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=4a2d9def-1fda-713f-409f-599a892565f9&return_module=Leads&return_action=DetailView',NULL),('5b0e63d8-1543-dba7-0d16-59d5ced1728c','Предварительный контакт \'Иван Иванов\'','2017-10-05 06:19:20','2017-10-05 06:20:06','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView',NULL),('67cb0af9-db76-3d3a-5837-59b122b8715e','Предварительный контакт \' TEST\'','2017-09-07 10:41:26','2017-09-07 11:06:27','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView',NULL),('6a173dcf-3d92-48a1-95b7-59d4ceae3933','Предварительный контакт \'Валера \'','2017-10-04 12:04:30','2017-10-04 12:05:46','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView',NULL),('6acfc329-7f61-399b-08c0-59ca507faaa8','Предварительный контакт \' 1\'','2017-09-26 13:03:56','2017-09-26 13:04:49','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=6acfcff6-723f-f3e3-3c1b-59c377a909f2&return_module=Leads&return_action=DetailView',NULL),('857f4a0d-0e00-ab0a-5b10-59b8cd8184ef','Предварительный контакт \' TEST\'','2017-09-13 06:17:11','2017-09-13 06:19:34','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView',NULL),('8e14748b-40a5-e2b8-3372-59d5cd8ce8f2','Предварительный контакт \'Иван \'','2017-10-05 06:13:30','2017-10-05 06:13:43','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=8d61d039-9372-369c-f48f-59c38ae4f7fb&return_module=Leads&return_action=DetailView',NULL),('8f4428df-f39a-a1a5-4bbf-59b129cf18b0','Предварительный контакт \' TEST\'','2017-09-07 11:12:23','2017-09-07 11:30:01','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView',NULL),('9bfc6862-2a2f-55e2-b046-59d5ccead9ed','Предварительный контакт \'Виталий Dsddsd\'','2017-10-05 06:08:17','2017-10-05 06:09:21','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=9ce12f06-52ad-9bbe-3467-59c36fa66eef&return_module=Leads&return_action=DetailView',NULL),('ac9d72c3-c920-6d78-2ca9-59ca61bf1d63','Предварительный контакт \' 12313123\'','2017-09-26 14:18:47','2017-09-26 14:19:11','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView',NULL),('b71b0189-17ad-3c33-c0cc-59ca19daae41','Предварительный контакт \' 12313123\'','2017-09-26 09:11:08','2017-09-26 09:12:06','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView',NULL),('bd8af7d4-938c-1eff-b09f-59c21ccc6176','Предварительный контакт \' 12313123\'','2017-09-20 07:43:37','2017-09-20 07:44:38','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView',NULL),('c56912ec-fea3-e025-2cb2-59cde4279ace','Предварительный контакт \'Валера \'','2017-09-29 06:13:06','2017-09-29 06:16:36','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView',NULL),('c8c96aea-d9d4-e278-4451-59b103e579dd','Предварительный контакт \'Тест Тестовый\'','2017-09-07 08:30:15','2017-09-07 08:31:24','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=4a2d9def-1fda-713f-409f-599a892565f9&return_module=Leads&return_action=DetailView',NULL),('cd39cc8b-e091-60f5-4a1d-59d5cbb252e4','Предварительный контакт \'Николай Васильев\'','2017-10-05 06:05:15','2017-10-05 06:06:26','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView',NULL),('d83ee236-4601-5f0c-b3ca-59d1d7a9c633','Предварительный контакт \'Валера \'','2017-10-02 06:04:49','2017-10-02 06:05:24','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView',NULL),('d93303a6-f075-4b01-6a2d-59cde576b9fb','Предварительный контакт \'Валера \'','2017-09-29 06:16:02','2017-09-29 06:17:10','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07&return_module=Leads&return_action=DetailView',NULL),('db9c1955-e89c-b736-87f9-59d5cd91d1ab','Предварительный контакт \'Алексей \'','2017-10-05 06:13:51','2017-10-05 06:16:32','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=70007648-47bc-d3b4-9904-59b6a1659460&return_module=Leads&return_action=DetailView',NULL),('e18e0987-53d3-c4b4-312b-59d5cea5b69a','Предварительный контакт \'Евгений \'','2017-10-05 06:15:48','2017-10-05 06:16:30','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=a909e9a5-90ce-7a2f-fd1a-59c38846be76&return_module=Leads&return_action=DetailView',NULL),('e9b8a01c-9bf7-2342-ac2f-59b11650a0d5','Предварительный контакт \' TEST\'','2017-09-07 09:52:07','2017-09-07 10:35:13','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=1a850344-233e-e32f-fe21-59b10fc56fe1&return_module=Leads&return_action=DetailView',NULL),('ec4303da-b8ca-61b8-cb1d-59d5ceecf70d','Предварительный контакт \'Сергей \'','2017-10-05 06:16:52','2017-10-05 06:17:56','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=6acfcff6-723f-f3e3-3c1b-59c377a909f2&return_module=Leads&return_action=DetailView',NULL),('eea2ae5a-f287-a719-0e05-59d5cc030c88','Предварительный контакт \'Андрей \'','2017-10-05 06:08:07','2017-10-05 06:08:26','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=10c2e549-c39f-7ef0-f7da-59b11183c89e&return_module=Leads&return_action=DetailView',NULL),('fbc502a0-e7d6-9ea6-1def-59c24e71b52f','Предварительный контакт \' 12313123\'','2017-09-20 11:17:55','2017-09-20 11:23:33','1','1','Вам назначена задача',0,'1',1,'Lead','info','index.php?action=DetailView&module=Leads&record=5a7265ea-aa41-cc92-4445-59b8ce6cc94a&return_module=Leads&return_action=DetailView',NULL);
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2017-10-06 21:12:30','2017-10-06 21:12:30','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
INSERT INTO `aop_case_events` VALUES ('b837c26b-63f1-8484-cbbd-59ba21ea3b0d','Priority changed from  to P1.','2017-09-14 06:29:12','2017-09-14 06:29:12','1','1','Priority changed from  to P1.',0,NULL,'9e430572-0c88-020a-a77c-59ba2115b313'),('c8550919-cadb-795b-2f99-59ba21732793','Status changed from  to Open_New.','2017-09-14 06:29:12','2017-09-14 06:29:12','1','1','Status changed from  to Open_New.',0,NULL,'9e430572-0c88-020a-a77c-59ba2115b313'),('cf9a784a-d8f5-7963-2ffc-59ba8cdc1846','Type changed from Administration to buy_sell.','2017-09-14 14:03:17','2017-09-14 14:03:17','1','1','Type changed from Administration to buy_sell.',0,NULL,'9e430572-0c88-020a-a77c-59ba2115b313'),('d063a2ad-cf7e-3d5d-cdb8-59ba21b62537','Assigned User changed from  to Administrator.','2017-09-14 06:29:12','2017-09-14 06:29:12','1','1','Assigned User changed from  to Administrator.',0,NULL,'9e430572-0c88-020a-a77c-59ba2115b313'),('e562f86b-e6f0-aa98-4c35-59ba216c4012','Type changed from  to Administration.','2017-09-14 06:29:12','2017-09-14 06:29:12','1','1','Type changed from  to Administration.',0,NULL,'9e430572-0c88-020a-a77c-59ba2115b313');
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
INSERT INTO `aop_case_updates` VALUES ('7f9fee88-2fce-e882-73df-59ba227c14c0','ВЫАЫВЫВ','2017-09-14 06:31:53','2017-09-14 06:31:53','1','1','ВЫАЫВЫВ',0,'1','9e430572-0c88-020a-a77c-59ba2115b313',NULL,0),('d8bf4600-1486-7089-0888-59ba22ac3c20','ффывывВЫФ','2017-09-14 06:30:27','2017-09-14 06:30:27','1','1','ффывывВЫФ',0,'1','9e430572-0c88-020a-a77c-59ba2115b313',NULL,0);
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `graphs_per_row` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `margin_footer` int(255) DEFAULT '9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
INSERT INTO `aos_pdf_templates` VALUES ('29661054-86f4-9bea-a18f-59d3976e2037','мой шаблон','2017-10-03 13:57:26','2017-10-03 14:22:56','1','1','<table style=\"width: 100%; font-family: Arial; text-align: center;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\r\n<tbody style=\"text-align: left;\">\r\n<tr style=\"text-align: left;\">\r\n<td style=\"text-align: left;\">\r\n<p><img style=\"float: left;\" src=\"themes/default/images/company_logo.png\" alt=\"\" /> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-weight: bold; text-align: left;\">\r\n<div>SuiteCRM Ltd<br />Название улицы<br />Название города<br />Название страны</div>\r\n</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"text-align: left;\"> </td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"text-align: left;\">\r\n<h1>Предложение</h1>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Arial; text-align: center;\"> </p>\r\n<table style=\"text-align: center; width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody style=\"text-align: left;\">\r\n<tr style=\"text-align: left;\">\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Подготовлено для</td>\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Ответственный(ая)</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_billing_account<br /> $aos_quotes_billing_address_street<br /> $aos_quotes_billing_address_city <br /> $aos_quotes_billing_address_state $aos_quotes_billing_address_postalcode</div>\r\n</td>\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_modified_by_name</div>\r\n</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Дата Создания</td>\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Действительно до</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_date_entered</div>\r\n</td>\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_expiration</div>\r\n</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Номер предложения</td>\r\n<td style=\"font-weight: bold; background-color: #b0c4de; padding: 2px 6px; border-style: solid; border-width: 0.5px; vertical-align: top; text-align: left; width: 50%;\">Условия оплаты</td>\r\n</tr>\r\n<tr style=\"text-align: left;\">\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_number</div>\r\n</td>\r\n<td style=\"padding: 2px 6px; border-style: solid; border-width: 0.5px; width: 50%; vertical-align: top; text-align: left;\">\r\n<div>$aos_quotes_term</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\" colspan=\"8\">$aos_line_item_groups_name</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Количество</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Товар</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Описание</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Цена по прайсу</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Скидка</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Цена за единицу</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">НДС (%)</td>\r\n<td style=\"border-style: solid; background-color: #b0c4de; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: center;\">Итого без НДС</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; text-align: center;\">$aos_products_quotes_product_qty</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_name</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_description</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_list_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_discount</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_unit_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_vat</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_products_quotes_product_total_price</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\" colspan=\"3\">$aos_services_quotes_name</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_list_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_discount</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_unit_price</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_vat</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_services_quotes_service_total_price</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Итого без скидки</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_total_amt</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Скидка</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_discount_amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Итого со скидкой</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_subtotal_amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">Всего НДС</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_tax_amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\"> </td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px; font-weight: bold; text-align: right;\">ИТОГО С НДС</td>\r\n<td style=\"border-style: solid; border-width: 0.5px; padding: 2px 6px;\">$aos_line_item_groups_total_amount</td>\r\n</tr>\r\n</tbody>\r\n</table>',0,'',1,'AOS_Invoices',NULL,'<table style=\"width: 100%; border: 0pt none; border-spacing: 0pt;\">\r\n<tbody>\r\n<tr>\r\n<td>Страница {PAGENO}</td>\r\n<td style=\"text-align: right;\">{DATE m/d/Y}</td>\r\n</tr>\r\n</tbody>\r\n</table>',15,15,16,16,9,9);
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
INSERT INTO `aos_pdf_templates_audit` VALUES ('eb9cc810-0ae6-2e13-f2db-59d39d24eced','29661054-86f4-9bea-a18f-59d3976e2037','2017-10-03 14:22:56','1','type','enum','Leads','AOS_Invoices',NULL,NULL);
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `product_currency` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
INSERT INTO `aos_products` VALUES ('22328d1a-9962-3f5e-3618-59d485e104eb','Талон на бензин AИ 95','2017-10-04 06:54:51','2017-10-04 08:11:20','1','1',NULL,0,'','XXXX',NULL,NULL,'Good',0.000000,0.000000,'-99',20.000000,0.000000,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'active','fuel','name'),('22a362ec-05d2-bd7a-fe35-59d484983668','Дизель','2017-10-04 06:47:48','2017-10-04 06:47:48','1','1','',0,NULL,'XXXX','',NULL,'Service',0.000000,0.000000,NULL,22.000000,0.000000,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('379778c7-a5c6-67e5-ebc4-59d4a63f0710','Бензин канистра','2017-10-04 09:15:29','2017-10-04 09:15:29','1','1',NULL,0,NULL,'XXXX',NULL,NULL,'Good',NULL,0.000000,'-99',0.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,'','2017-10-04',0,100,'active','fuel','liters'),('94f6d3be-aa40-c800-02c7-59d373af2ff6','test','2017-10-03 11:24:38','2017-10-03 12:04:56','1','1',NULL,0,'','XXXX',NULL,NULL,'Good',NULL,0.000000,'-99',0.000000,0.000000,NULL,'',NULL,'',NULL,NULL,NULL,'2017-10-03',0,200,'active','fuel','name'),('952151a3-60a8-2c53-3404-59d48521121c','Талон на бензин AИ 92','2017-10-04 06:53:20','2017-10-04 07:49:54','1','1',NULL,0,'','XXXX',NULL,NULL,'Good',0.000000,0.000000,'-99',100.000000,0.000000,NULL,'',NULL,'',NULL,NULL,NULL,'2017-10-04',NULL,NULL,'active','fuel','name'),('dd77710e-fd7e-fed7-124f-59d4802bb968','Товар топливо','2017-10-04 06:31:51','2017-10-04 06:31:51','1','1',NULL,0,NULL,'XXXX',NULL,NULL,'Good',NULL,0.000000,'-99',0.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,'active','fuel','name'),('ece2079a-b00c-3d10-7add-59d484650d4a','Услуга эвакуатора','2017-10-04 06:49:05','2017-10-04 07:59:53','1','1',NULL,0,'','XXXX',NULL,NULL,'Service',0.000000,0.000000,'-99',100.000000,0.000000,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'active','fuel','pieces');
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_bh_case_compound_1_c`
--

DROP TABLE IF EXISTS `aos_products_bh_case_compound_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_bh_case_compound_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_products_bh_case_compound_1aos_products_ida` varchar(36) DEFAULT NULL,
  `aos_products_bh_case_compound_1bh_case_compound_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_products_bh_case_compound_1_ida1` (`aos_products_bh_case_compound_1aos_products_ida`),
  KEY `aos_products_bh_case_compound_1_alt` (`aos_products_bh_case_compound_1bh_case_compound_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_bh_case_compound_1_c`
--

LOCK TABLES `aos_products_bh_case_compound_1_c` WRITE;
/*!40000 ALTER TABLE `aos_products_bh_case_compound_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_bh_case_compound_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
INSERT INTO `aow_actions` VALUES ('280ff4cd-89b5-b420-dfff-59a5261360b0','','2017-08-29 08:31:46','2017-08-29 08:36:56','1','1',NULL,0,'',2,'ComputeField','YTowOnt9'),('528b2104-2fc8-62a2-37f1-59a50fb15435','','2017-08-29 06:52:26','2017-08-29 08:36:56','1','1',NULL,0,'',1,'ComputeField','YTowOnt9');
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
INSERT INTO `aow_conditions` VALUES ('3effa725-ef2b-3b6e-479f-59a511522bc7','','2017-08-29 07:03:13','2017-08-29 08:36:56','1','1',NULL,0,'',1,'YToxOntpOjA7czo1OiJMZWFkcyI7fQ==','date_birthday','Not_Equal_To','Value',NULL);
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
INSERT INTO `aow_processed` VALUES ('1edc9e8b-8abd-5bf9-67db-59a51117fb40','','2017-08-29 07:04:13','2017-08-29 08:36:56','1','1',NULL,0,'','832522a5-c2bf-1b3f-6541-59a50fc69935','Leads','Complete'),('40a2bad3-9ea7-7ec2-8f19-59a51d73506a','','2017-08-29 07:53:15','2017-08-29 08:36:56','1','1',NULL,0,'','4a2d9def-1fda-713f-409f-599a892565f9','Leads','Complete'),('680e21fc-44ad-cd67-4853-59a51d5bb53b','','2017-08-29 07:52:14','2017-08-29 08:36:56','1','1',NULL,0,'','4a2d9def-1fda-713f-409f-599a892565f9','Leads','Complete'),('7a1e2aca-0bc4-19d3-3d73-59a5213298a1','','2017-08-29 08:12:21','2017-08-29 08:36:56','1','1',NULL,0,'','4a2d9def-1fda-713f-409f-599a892565f9','Leads','Complete'),('89190cea-8ee6-6cc4-9691-59a5206e8d70','','2017-08-29 08:08:14','2017-08-29 08:36:56','1','1',NULL,0,'','4a2d9def-1fda-713f-409f-599a892565f9','Leads','Complete'),('8c3c1372-7fe0-e5d7-8438-59a50facd03f','','2017-08-29 06:53:44','2017-08-29 08:36:56','1','1',NULL,0,'','832522a5-c2bf-1b3f-6541-59a50fc69935','Leads','Complete'),('a439039c-63f9-defc-dd20-59a5129b89fc','','2017-08-29 07:06:46','2017-08-29 08:36:56','1','1',NULL,0,'','86bdbdc5-2a0a-fde9-d210-59a512d4d699','Leads','Complete');
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
INSERT INTO `aow_processed_aow_actions` VALUES ('11de050a-31d4-8995-fb44-59a51146f403','1edc9e8b-8abd-5bf9-67db-59a51117fb40','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 07:04:13',0),('1c6304d7-bfdb-026d-aa3e-59a5203c4785','89190cea-8ee6-6cc4-9691-59a5206e8d70','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 08:08:14',0),('36d62996-dd60-ca01-3dc5-59a50f040f8b','8c3c1372-7fe0-e5d7-8438-59a50facd03f','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 06:53:44',0),('3ddf5261-a244-b6da-01ae-59a51dd99603','680e21fc-44ad-cd67-4853-59a51d5bb53b','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 07:52:14',0),('66a095d3-c4a9-2702-d643-59a5218290bd','7a1e2aca-0bc4-19d3-3d73-59a5213298a1','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 08:12:21',0),('9c015e63-3f25-7aee-5b21-59a51d6a9585','40a2bad3-9ea7-7ec2-8f19-59a51d73506a','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 07:53:15',0),('b7e2c548-6779-ff2a-944a-59a512ff0eda','a439039c-63f9-defc-dd20-59a5129b89fc','528b2104-2fc8-62a2-37f1-59a50fb15435','Complete','2017-08-29 07:06:46',0);
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asterisk_log`
--

DROP TABLE IF EXISTS `asterisk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asterisk_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_master` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_extension` (`user_extension`),
  KEY `call_record_id` (`call_record_id`),
  KEY `uistate` (`uistate`),
  KEY `timestamp_call` (`timestamp_call`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asterisk_log`
--

LOCK TABLES `asterisk_log` WRITE;
/*!40000 ALTER TABLE `asterisk_log` DISABLE KEYS */;
INSERT INTO `asterisk_log` VALUES (85,0,NULL,'1506678570.11','Hangup',NULL,'0937795618','SIP/3331-0000000b',NULL,'2017-09-29 09:49:41',NULL,'2017-09-29 09:50:15','O',NULL,NULL,0,'3331',NULL,NULL,'leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Валера','http://crm/index.php?module=Leads&action=DetailView&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07',NULL,NULL,NULL,NULL,NULL,0,NULL),(86,0,NULL,'1506678648.12','Hangup',NULL,'0937795618','SIP/3331-0000000c',NULL,'2017-09-29 09:50:59',NULL,'2017-09-29 09:51:16','O',NULL,NULL,0,'3331',NULL,NULL,'leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Валера','http://crm/index.php?module=Leads&action=DetailView&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07',NULL,NULL,NULL,NULL,NULL,0,NULL),(87,0,NULL,'1506678727.15','Hangup',NULL,'3330','SIP/3331-0000000f',NULL,'2017-09-29 09:52:18',NULL,'2017-09-29 09:52:32','O',NULL,NULL,0,'3331',NULL,NULL,'leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Валера','http://crm/index.php?module=Leads&action=DetailView&record=98d382fa-5d6c-7a6e-c895-59ca6cc9dc07',NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `asterisk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `edrpou` varchar(8) NOT NULL DEFAULT '0',
  `mfo` varchar(6) NOT NULL DEFAULT '0',
  `jur_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
INSERT INTO `banks` VALUES ('bba5df02-ab2a-11e7-9df9-208984589f5e','АБ \"ЕКСПРЕС-БАНК\"','20053145','322959','м. Київ Повітрофлотський проспект, 25'),('bba5e15c-ab2a-11e7-9df9-208984589f5e','АБ \"УКРГАЗБАНК\"','23697280','320478','м. Київ вул. Єреванська, 1'),('bba5e252-ab2a-11e7-9df9-208984589f5e','АКБ \"ІНДУСТРІАЛБАНК\"','13857564','313849','м. Запоріжжя вул. Незалежної України, 39 Д'),('bba5e398-ab2a-11e7-9df9-208984589f5e','Акціонерний банк \"Південний\"','20953647','328209','м. Одеса вул. Краснова, 6/1'),('bba5e477-ab2a-11e7-9df9-208984589f5e','АТ \"АЛЬТБАНК\"','19358784','320940','м. Київ вул. Вузівська, 5'),('bba5e551-ab2a-11e7-9df9-208984589f5e','АТ \"БАНК БОГУСЛАВ\"','34540113','380322','м. Київ вул. Нижньоюрківська, 81'),('bba5e628-ab2a-11e7-9df9-208984589f5e','АТ \"БМ БАНК\"','33881201','380913','м. Київ бульвар Тараса Шевченка, буд. 37/122'),('bba5e72a-ab2a-11e7-9df9-208984589f5e','АТ \"КІБ\"','21580639','322540','м. Київ вул. Бульварно-Кудрявська, 6'),('bba5f0fb-ab2a-11e7-9df9-208984589f5e','АТ \"МетаБанк\"','20496061','313582','м. Запоріжжя пр. Металургів, 30'),('bba5f214-ab2a-11e7-9df9-208984589f5e','АТ \"Місто Банк\"','20966466','328760','м. Одеса вул. Фонтанська дорога,11'),('bba5f305-ab2a-11e7-9df9-208984589f5e','АТ \"ОТП БАНК\"','21685166','300528','м. Київ вул. Жилянська, 43'),('bba5f3ff-ab2a-11e7-9df9-208984589f5e','АТ \"Ощадбанк\"','00032129','300465','м. Київ вул. Госпітальна, 12г'),('bba5f4ef-ab2a-11e7-9df9-208984589f5e','АТ \"ПІРЕУС БАНК МКБ\"','20034231','300658','м. Київ вул. Іллінська, 8'),('bba5f5ca-ab2a-11e7-9df9-208984589f5e','АТ \"ПРОКРЕДИТ БАНК\"','21677333','320984','м. Київ проспект Перемоги, 107-А'),('bba5f6a5-ab2a-11e7-9df9-208984589f5e','АТ (публ.) \"Український банк реконструкції та розвитку\"','26520688','380883','м. Київ вул. Олексія Терьохіна, 4'),('bba5f788-ab2a-11e7-9df9-208984589f5e','АТ \"Райффайзен Банк Аваль\"','14305909','300335','м. Київ вулиця Лєскова, буд. 9'),('bba5f867-ab2a-11e7-9df9-208984589f5e','АТ \"ТАСКОМБАНК\"','09806443','339500','м. Київ вул. Симона Петлюри, 30'),('bba5f942-ab2a-11e7-9df9-208984589f5e','АТ \"УКРБУДІНВЕСТБАНК\"','26547581','380377','м. Київ бул.Лесі Українки, 30-в'),('bba5fa21-ab2a-11e7-9df9-208984589f5e','АТ \"Укрексімбанк\"','00032112','322313','м. Київ вул. Антоновича, 127'),('bba5fb00-ab2a-11e7-9df9-208984589f5e','АТ \"УкрСиббанк\"','09807750','351005','м. Київ вулиця Андріївська, 2/12'),('bba5fbdb-ab2a-11e7-9df9-208984589f5e','ПАT \"ІНГ Банк Україна\"','21684818','300539','м. Київ вул. Спаська, 30-А'),('bba5fcb6-ab2a-11e7-9df9-208984589f5e','ПАТ \"А - БАНК\"','14360080','307770','м. Дніпро вул. Батумська, 11'),('bba5ff80-ab2a-11e7-9df9-208984589f5e','ПАТ \"АБ \"РАДАБАНК\"','21322127','306500','м. Дніпро проспект Олександра Поля, буд. 46'),('bba60068-ab2a-11e7-9df9-208984589f5e','ПАТ \"Айбокс Банк\"','21570492','322302','м. Київ вул. Ділова, 9а'),('bba60147-ab2a-11e7-9df9-208984589f5e','ПАТ АКБ \"АРКАДА\"','19361386','322335','м. Київ вул. Ольгинська, 3'),('bba60221-ab2a-11e7-9df9-208984589f5e','ПАТ \"АКБ \"КОНКОРД\"','34514392','307350','м. Дніпро площа Троїцька, 2'),('bba602fc-ab2a-11e7-9df9-208984589f5e','ПАТ АКБ \"Львів\"','09801546','325268','м. Львів вул.Сербська, 1'),('bba603d7-ab2a-11e7-9df9-208984589f5e','ПАТ \"АКБ \"Траст-капітал\"','26519933','380106','м. Київ вул.Підвисоцького, буд. №7'),('bba604b1-ab2a-11e7-9df9-208984589f5e','ПАТ \"АЛЬПАРІ БАНК\"','38377143','380894','м. Київ вул. Тарасівська, б. 19'),('bba6058c-ab2a-11e7-9df9-208984589f5e','ПАТ \"АЛЬФА-БАНК\"','23494714','300346','м. Київ вулиця Десятинна, 4/6'),('bba6066b-ab2a-11e7-9df9-208984589f5e','ПАТ \"АП БАНК\"','35590956','380548','м. Київ вул. Дегтярівська, буд. 27-Т (літера А)'),('bba60777-ab2a-11e7-9df9-208984589f5e','ПАТ \"АПЕКС-БАНК\"','36482677','380720','м. Київ вул. Печерська, буд. 2/16'),('bba60856-ab2a-11e7-9df9-208984589f5e','ПАТ \"АСВІО БАНК\"','09809192','353489','м. Чернігів вул. Преображенська, 2 (04080, Київ, Фрунзе, 104)'),('bba60930-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК АВАНГАРД\"','38690683','380946','м. Київ вулиця Шолуденка, будинок 3'),('bba60a57-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК АЛЬЯНС\"','14360506','300119','м. Київ вулиця Січових Стрільців, будинок 50'),('bba60b3f-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ВОСТОК\"','26237202','307123','м. Дніпропетровськ вул.Курсантська, 24'),('bba60c1e-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК \"ГРАНТ\"','14070197','351607','м. Харків вулиця Данилевського, 19'),('bba60cf9-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ІНВЕСТИЦІЙ ТА ЗАОЩАДЖЕНЬ\"','33695095','380281','м. Київ вул. Мельникова, 83-д'),('bba60dd3-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК КРЕДИТ ДНІПРО\"','14352406','305749','м. Київ вул. Мечникова, буд.3'),('bba60eb2-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК \"ПОРТАЛ\"','38870739','339016','м. Київ проспект Перемоги, будинок 5А'),('bba60f96-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК СІЧ\"','37716841','380816','м. Київ вул. Володимирська, б. 63'),('bba6106c-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК \"УКРАЇНСЬКИЙ КАПІТАЛ\"','22868414','320371','м. Київ просп. Перемоги, 67'),('bba6114b-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ФАМІЛЬНИЙ\"','20042839','334840','м. Київ Голосіївський проспект, будинок 26-а'),('bba6122a-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ФОРВАРД\"','34186061','380418','м. Київ вул. Саксаганського, будинок 105.'),('bba614fd-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК 3/4\"','36002395','380645','м. Київ вул. Кирилівська, 25'),('bba615dc-ab2a-11e7-9df9-208984589f5e','ПАТ \"БТА БАНК\"','14359845','321723','м. Київ вул. Жилянська, 75'),('bba616c0-ab2a-11e7-9df9-208984589f5e','ПАТ \"ВЕРНУМ БАНК\"','36301800','380689','м. Київ проспект Гагаріна Юрія, 17в'),('bba617a4-ab2a-11e7-9df9-208984589f5e','ПАТ \"ВіЕс Банк\"','19358632','325213','м. Львів вул. Грабовського, 11'),('bba61887-ab2a-11e7-9df9-208984589f5e','ПАТ \"ВТБ БАНК\"','14359319','321767','м. Київ б-р Т. Шевченка/вул. Пушкінська, б. 8/26'),('bba61962-ab2a-11e7-9df9-208984589f5e','ПАТ \"ДІВІ БАНК\"','37572263','380827','м. Київ вул. Ігорівська/Набережно-Хрещатицька, 13/5 (літ. А)'),('bba61a45-ab2a-11e7-9df9-208984589f5e','ПАТ \"Дойче Банк ДБУ\"','36520434','380731','м. Київ вул. Лаврська, буд. 20'),('bba61b1c-ab2a-11e7-9df9-208984589f5e','ПАТ \"ЄВРОПРОМБАНК\"','36061927','377090','м. Київ бульвар Шевченка Тараса, будинок 11, приміщення 51.'),('bba61c04-ab2a-11e7-9df9-208984589f5e','ПАТ \"Ідея Банк\"','19390819','336310','м. Львів вул. Валова,11'),('bba61cde-ab2a-11e7-9df9-208984589f5e','ПАТ \"КБ \"ГЛОБУС\"','35591059','380526','м. Київ пров.Куренівський, б.19/5'),('bba61f1e-ab2a-11e7-9df9-208984589f5e','ПАТ \"КБ \"ЗЕМЕЛЬНИЙ КАПІТАЛ\"','20280450','305880','м. Дніпро проспект Пушкіна, 15'),('bba6200a-ab2a-11e7-9df9-208984589f5e','ПАТ КБ \"ПРИВАТБАНК\"','14360570','305299','м. Київ вул. Грушевського, 1Д'),('bba620f2-ab2a-11e7-9df9-208984589f5e','ПАТ КБ \"Центр\"','37119553','380742','м. Київ вул. Раїси Окіпної, будинок 8А'),('bba621d1-ab2a-11e7-9df9-208984589f5e','ПАТ \"КОМІНВЕСТБАНК\"','19355562','312248','м. Ужгород вул. Юрія Гойди, 10'),('bba622b9-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДИТ ЄВРОПА БАНК\"','34576883','380366','м. Київ вул. Мечнікова, буд.2'),('bba62399-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДИТ ОПТИМА БАНК\"','34819265','380571','м. Київ вул. Дмитрівська, буд.69'),('bba62481-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДИТВЕСТ БАНК\"','34575675','380441','м. Київ вул. Леонтовича, 4, літера \"А, А1\"'),('bba62564-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДІ АГРІКОЛЬ БАНК\"','14361575','300614','м. Київ вул. Пушкінська, 42/4'),('bba6264c-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДОБАНК\"','09807862','325365','м. Львів вул. Сахарова, 78'),('bba6272b-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРИСТАЛБАНК\"','39544699','339050','м. Київ вулиця Кудрявський узвіз, 2'),('bba6280f-ab2a-11e7-9df9-208984589f5e','ПАТ \"МАРФІН БАНК\"','21650966','328168','м. Чорноморськ проспект Миру, 28'),('bba628f2-ab2a-11e7-9df9-208984589f5e','ПАТ \"МЕГАБАНК\"','09804119','351629','м. Харків вул. Алчевських, 30'),('bba62d9e-ab2a-11e7-9df9-208984589f5e','ПАТ \"МІБ\"','35810511','380582','м. Київ вул. Лаврська, 16'),('bba62e9d-ab2a-11e7-9df9-208984589f5e','ПАТ \"МОТОР-БАНК\"','35345213','313009','м. Запоріжжя проспект Моторобудівників, буд. 54 `Б`'),('bba62f85-ab2a-11e7-9df9-208984589f5e','ПАТ \"ОКСІ БАНК\"','09306278','325990','м. Львів вул. Газова, 17'),('bba63068-ab2a-11e7-9df9-208984589f5e','ПАТ \"ПЕРШИЙ ІНВЕСТИЦІЙНИЙ БАНК\"','26410155','300506','м. Київ площа Перемоги, 1'),('bba63226-ab2a-11e7-9df9-208984589f5e','ПАТ \"Полтава-банк\"','09807595','331489','м. Полтава вул. Пилипа Орлика, 40-а'),('bba633d7-ab2a-11e7-9df9-208984589f5e','ПАТ \"Промінвестбанк\"','00039002','300012','м. Київ пpовулок Шевченка, 12'),('bba635a3-ab2a-11e7-9df9-208984589f5e','ПАТ \"ПУМБ\"','14282829','334851','м. Київ вул. Андріївська, 4'),('bba637da-ab2a-11e7-9df9-208984589f5e','ПАТ \"ПФБ\"','25292831','331768','м. Кременчук кварт. 278, буд. 22-Б'),('bba638ea-ab2a-11e7-9df9-208984589f5e','ПАТ \"РВС БАНК\"','39849797','339072','м. Київ вулиця Введенська, будинок 29/58'),('bba639d6-ab2a-11e7-9df9-208984589f5e','ПАТ \"РОЗРАХУНКОВИЙ ЦЕНТР\"','35917889','344443','м. Київ вул. Тропініна, 7-Г'),('bba63abe-ab2a-11e7-9df9-208984589f5e','ПАТ \"СБЕРБАНК\"','25959784','320627','м. Київ вул. Володимирська, буд.46'),('bba63ba2-ab2a-11e7-9df9-208984589f5e','ПАТ \"СЕБ КОРПОРАТИВНИЙ БАНК\"','37515069','380797','м. Київ вул. Михайлівська, 7'),('bba63c8e-ab2a-11e7-9df9-208984589f5e','ПАТ \"СІТІБАНК\"','21685485','300584','м. Київ вул. Ділова, 16-Г'),('bba63d76-ab2a-11e7-9df9-208984589f5e','ПАТ \"СКАЙ БАНК\"','09620081','351254','м. Київ вул. Гончара Олеся, буд. 76/2'),('bba63e5a-ab2a-11e7-9df9-208984589f5e','ПАТ \"УКРСОЦБАНК\"','00039019','300023','м. Київ вул. Ковпака, 29'),('bba63f3e-ab2a-11e7-9df9-208984589f5e','ПАТ \"УНІВЕРСАЛ БАНК\"','21133352','322001','м. Київ вул. Автозаводська, 54/19'),('bba64021-ab2a-11e7-9df9-208984589f5e','ПАТ \"ЮНЕКС БАНК\"','20023569','322539','м. Київ вул. Почайнинська, 38'),('bba640fc-ab2a-11e7-9df9-208984589f5e','ПАТКБ \"ПРАВЕКС-БАНК\"','14360920','380838','м. Київ вул. Кловський узвіз, 9/2'),('bba641df-ab2a-11e7-9df9-208984589f5e','Полікомбанк','19356610','353100','м. Чернігів вул. О. Молодчого, буд. 46'),('bba642c7-ab2a-11e7-9df9-208984589f5e','ПуАТ \"КБ \"АКОРДБАНК\"','35960913','380634','м. Київ вул.Стеценко, буд. 6'),('bba643ab-ab2a-11e7-9df9-208984589f5e','АБ \"КЛІРИНГОВИЙ ДІМ\"','21665382','300647','м. Київ вул.Борисоглібська, буд.5,  літера А.');
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_autotransport`
--

DROP TABLE IF EXISTS `bh_autotransport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `autotransport_another_model` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_autotransport`
--

LOCK TABLES `bh_autotransport` WRITE;
/*!40000 ALTER TABLE `bh_autotransport` DISABLE KEYS */;
INSERT INTO `bh_autotransport` VALUES ('35a4e2aa-5dc6-d455-e9e9-59c21d48be24','Авто','2017-09-20 07:48:55','2017-09-20 07:48:55','1','1','авто',0,'1','car','diesel','inheritance','single',0,0,0,'audi','',''),('4ead9f49-d87b-7fe5-c730-59cc9c77c36a','Клиент Валера BMW 720i','2017-09-28 06:52:14','2017-10-04 12:00:38','1','1','Клиент Валера',0,'','car','diesel','inheritance','single',0,0,3.5,'bmw','720i',NULL),('4fc0c7e0-08e2-cc2b-20b7-59b900899d00','Авто1','2017-09-13 09:55:29','2017-09-13 09:55:29','1','1','',0,'1','car','diesel','inheritance','single',0,0,0,'audi','',''),('9baff353-0cb6-4435-6a1f-59cc9c9d4fcc','','2017-09-28 06:53:32','2017-09-28 06:53:32','1','1',NULL,0,NULL,'car','diesel','inheritance',NULL,0,2011,3.5,'audi','GLE','');
/*!40000 ALTER TABLE `bh_autotransport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_autotransport_audit`
--

DROP TABLE IF EXISTS `bh_autotransport_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_autotransport_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_autotransport_audit`
--

LOCK TABLES `bh_autotransport_audit` WRITE;
/*!40000 ALTER TABLE `bh_autotransport_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_autotransport_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_banks`
--

DROP TABLE IF EXISTS `bh_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_banks` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mfo` varchar(6) DEFAULT '0',
  `okpo` varchar(8) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_banks`
--

LOCK TABLES `bh_banks` WRITE;
/*!40000 ALTER TABLE `bh_banks` DISABLE KEYS */;
INSERT INTO `bh_banks` VALUES ('bba5df02-ab2a-11e7-9df9-208984589f5e','АБ \"ЕКСПРЕС-БАНК\"','322959','20053145','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ Повітрофлотський проспект, 25',0,'1'),('bba5e15c-ab2a-11e7-9df9-208984589f5e','АБ \"УКРГАЗБАНК\"','320478','23697280','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Єреванська, 1',0,'1'),('bba5e252-ab2a-11e7-9df9-208984589f5e','АКБ \"ІНДУСТРІАЛБАНК\"','313849','13857564','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Запоріжжя вул. Незалежної України, 39 Д',0,'1'),('bba5e398-ab2a-11e7-9df9-208984589f5e','Акціонерний банк \"Південний\"','328209','20953647','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Одеса вул. Краснова, 6/1',0,'1'),('bba5e477-ab2a-11e7-9df9-208984589f5e','АТ \"АЛЬТБАНК\"','320940','19358784','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Вузівська, 5',0,'1'),('bba5e551-ab2a-11e7-9df9-208984589f5e','АТ \"БАНК БОГУСЛАВ\"','380322','34540113','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Нижньоюрківська, 81',0,'1'),('bba5e628-ab2a-11e7-9df9-208984589f5e','АТ \"БМ БАНК\"','380913','33881201','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ бульвар Тараса Шевченка, буд. 37/122',0,'1'),('bba5e72a-ab2a-11e7-9df9-208984589f5e','АТ \"КІБ\"','322540','21580639','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Бульварно-Кудрявська, 6',0,'1'),('bba5f0fb-ab2a-11e7-9df9-208984589f5e','АТ \"МетаБанк\"','313582','20496061','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Запоріжжя пр. Металургів, 30',0,'1'),('bba5f214-ab2a-11e7-9df9-208984589f5e','АТ \"Місто Банк\"','328760','20966466','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Одеса вул. Фонтанська дорога,11',0,'1'),('bba5f305-ab2a-11e7-9df9-208984589f5e','АТ \"ОТП БАНК\"','300528','21685166','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Жилянська, 43',0,'1'),('bba5f3ff-ab2a-11e7-9df9-208984589f5e','АТ \"Ощадбанк\"','300465','00032129','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Госпітальна, 12г',0,'1'),('bba5f4ef-ab2a-11e7-9df9-208984589f5e','АТ \"ПІРЕУС БАНК МКБ\"','300658','20034231','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Іллінська, 8',0,'1'),('bba5f5ca-ab2a-11e7-9df9-208984589f5e','АТ \"ПРОКРЕДИТ БАНК\"','320984','21677333','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ проспект Перемоги, 107-А',0,'1'),('bba5f6a5-ab2a-11e7-9df9-208984589f5e','АТ (публ.) \"Український банк реконструкції та розвитку\"','380883','26520688','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Олексія Терьохіна, 4',0,'1'),('bba5f788-ab2a-11e7-9df9-208984589f5e','АТ \"Райффайзен Банк Аваль\"','300335','14305909','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Лєскова, буд. 9',0,'1'),('bba5f867-ab2a-11e7-9df9-208984589f5e','АТ \"ТАСКОМБАНК\"','339500','09806443','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Симона Петлюри, 30',0,'1'),('bba5f942-ab2a-11e7-9df9-208984589f5e','АТ \"УКРБУДІНВЕСТБАНК\"','380377','26547581','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ бул.Лесі Українки, 30-в',0,'1'),('bba5fa21-ab2a-11e7-9df9-208984589f5e','АТ \"Укрексімбанк\"','322313','00032112','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Антоновича, 127',0,'1'),('bba5fb00-ab2a-11e7-9df9-208984589f5e','АТ \"УкрСиббанк\"','351005','09807750','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Андріївська, 2/12',0,'1'),('bba5fbdb-ab2a-11e7-9df9-208984589f5e','ПАT \"ІНГ Банк Україна\"','300539','21684818','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Спаська, 30-А',0,'1'),('bba5fcb6-ab2a-11e7-9df9-208984589f5e','ПАТ \"А - БАНК\"','307770','14360080','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Дніпро вул. Батумська, 11',0,'1'),('bba5ff80-ab2a-11e7-9df9-208984589f5e','ПАТ \"АБ \"РАДАБАНК\"','306500','21322127','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Дніпро проспект Олександра Поля, буд. 46',0,'1'),('bba60068-ab2a-11e7-9df9-208984589f5e','ПАТ \"Айбокс Банк\"','322302','21570492','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Ділова, 9а',0,'1'),('bba60147-ab2a-11e7-9df9-208984589f5e','ПАТ АКБ \"АРКАДА\"','322335','19361386','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Ольгинська, 3',0,'1'),('bba60221-ab2a-11e7-9df9-208984589f5e','ПАТ \"АКБ \"КОНКОРД\"','307350','34514392','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Дніпро площа Троїцька, 2',0,'1'),('bba602fc-ab2a-11e7-9df9-208984589f5e','ПАТ АКБ \"Львів\"','325268','09801546','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Львів вул.Сербська, 1',0,'1'),('bba603d7-ab2a-11e7-9df9-208984589f5e','ПАТ \"АКБ \"Траст-капітал\"','380106','26519933','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул.Підвисоцького, буд. №7',0,'1'),('bba604b1-ab2a-11e7-9df9-208984589f5e','ПАТ \"АЛЬПАРІ БАНК\"','380894','38377143','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Тарасівська, б. 19',0,'1'),('bba6058c-ab2a-11e7-9df9-208984589f5e','ПАТ \"АЛЬФА-БАНК\"','300346','23494714','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Десятинна, 4/6',0,'1'),('bba6066b-ab2a-11e7-9df9-208984589f5e','ПАТ \"АП БАНК\"','380548','35590956','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Дегтярівська, буд. 27-Т (літера А)',0,'1'),('bba60777-ab2a-11e7-9df9-208984589f5e','ПАТ \"АПЕКС-БАНК\"','380720','36482677','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Печерська, буд. 2/16',0,'1'),('bba60856-ab2a-11e7-9df9-208984589f5e','ПАТ \"АСВІО БАНК\"','353489','09809192','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Чернігів вул. Преображенська, 2 (04080, Київ, Фрунзе, 104)',0,'1'),('bba60930-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК АВАНГАРД\"','380946','38690683','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Шолуденка, будинок 3',0,'1'),('bba60a57-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК АЛЬЯНС\"','300119','14360506','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Січових Стрільців, будинок 50',0,'1'),('bba60b3f-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ВОСТОК\"','307123','26237202','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Дніпропетровськ вул.Курсантська, 24',0,'1'),('bba60c1e-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК \"ГРАНТ\"','351607','14070197','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Харків вулиця Данилевського, 19',0,'1'),('bba60cf9-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ІНВЕСТИЦІЙ ТА ЗАОЩАДЖЕНЬ\"','380281','33695095','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Мельникова, 83-д',0,'1'),('bba60dd3-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК КРЕДИТ ДНІПРО\"','305749','14352406','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Мечникова, буд.3',0,'1'),('bba60eb2-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК \"ПОРТАЛ\"','339016','38870739','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ проспект Перемоги, будинок 5А',0,'1'),('bba60f96-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК СІЧ\"','380816','37716841','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Володимирська, б. 63',0,'1'),('bba6106c-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК \"УКРАЇНСЬКИЙ КАПІТАЛ\"','320371','22868414','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ просп. Перемоги, 67',0,'1'),('bba6114b-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ФАМІЛЬНИЙ\"','334840','20042839','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ Голосіївський проспект, будинок 26-а',0,'1'),('bba6122a-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК ФОРВАРД\"','380418','34186061','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Саксаганського, будинок 105.',0,'1'),('bba614fd-ab2a-11e7-9df9-208984589f5e','ПАТ \"БАНК 3/4\"','380645','36002395','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Кирилівська, 25',0,'1'),('bba615dc-ab2a-11e7-9df9-208984589f5e','ПАТ \"БТА БАНК\"','321723','14359845','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Жилянська, 75',0,'1'),('bba616c0-ab2a-11e7-9df9-208984589f5e','ПАТ \"ВЕРНУМ БАНК\"','380689','36301800','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ проспект Гагаріна Юрія, 17в',0,'1'),('bba617a4-ab2a-11e7-9df9-208984589f5e','ПАТ \"ВіЕс Банк\"','325213','19358632','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Львів вул. Грабовського, 11',0,'1'),('bba61887-ab2a-11e7-9df9-208984589f5e','ПАТ \"ВТБ БАНК\"','321767','14359319','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ б-р Т. Шевченка/вул. Пушкінська, б. 8/26',0,'1'),('bba61962-ab2a-11e7-9df9-208984589f5e','ПАТ \"ДІВІ БАНК\"','380827','37572263','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Ігорівська/Набережно-Хрещатицька, 13/5 (літ. А)',0,'1'),('bba61a45-ab2a-11e7-9df9-208984589f5e','ПАТ \"Дойче Банк ДБУ\"','380731','36520434','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Лаврська, буд. 20',0,'1'),('bba61b1c-ab2a-11e7-9df9-208984589f5e','ПАТ \"ЄВРОПРОМБАНК\"','377090','36061927','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ бульвар Шевченка Тараса, будинок 11, приміщення 51.',0,'1'),('bba61c04-ab2a-11e7-9df9-208984589f5e','ПАТ \"Ідея Банк\"','336310','19390819','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Львів вул. Валова,11',0,'1'),('bba61cde-ab2a-11e7-9df9-208984589f5e','ПАТ \"КБ \"ГЛОБУС\"','380526','35591059','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ пров.Куренівський, б.19/5',0,'1'),('bba61f1e-ab2a-11e7-9df9-208984589f5e','ПАТ \"КБ \"ЗЕМЕЛЬНИЙ КАПІТАЛ\"','305880','20280450','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Дніпро проспект Пушкіна, 15',0,'1'),('bba6200a-ab2a-11e7-9df9-208984589f5e','ПАТ КБ \"ПРИВАТБАНК\"','305299','14360570','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Грушевського, 1Д',0,'1'),('bba620f2-ab2a-11e7-9df9-208984589f5e','ПАТ КБ \"Центр\"','380742','37119553','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Раїси Окіпної, будинок 8А',0,'1'),('bba621d1-ab2a-11e7-9df9-208984589f5e','ПАТ \"КОМІНВЕСТБАНК\"','312248','19355562','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Ужгород вул. Юрія Гойди, 10',0,'1'),('bba622b9-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДИТ ЄВРОПА БАНК\"','380366','34576883','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Мечнікова, буд.2',0,'1'),('bba62399-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДИТ ОПТИМА БАНК\"','380571','34819265','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Дмитрівська, буд.69',0,'1'),('bba62481-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДИТВЕСТ БАНК\"','380441','34575675','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Леонтовича, 4, літера \"А, А1\"',0,'1'),('bba62564-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДІ АГРІКОЛЬ БАНК\"','300614','14361575','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Пушкінська, 42/4',0,'1'),('bba6264c-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРЕДОБАНК\"','325365','09807862','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Львів вул. Сахарова, 78',0,'1'),('bba6272b-ab2a-11e7-9df9-208984589f5e','ПАТ \"КРИСТАЛБАНК\"','339050','39544699','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Кудрявський узвіз, 2',0,'1'),('bba6280f-ab2a-11e7-9df9-208984589f5e','ПАТ \"МАРФІН БАНК\"','328168','21650966','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Чорноморськ проспект Миру, 28',0,'1'),('bba628f2-ab2a-11e7-9df9-208984589f5e','ПАТ \"МЕГАБАНК\"','351629','09804119','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Харків вул. Алчевських, 30',0,'1'),('bba62d9e-ab2a-11e7-9df9-208984589f5e','ПАТ \"МІБ\"','380582','35810511','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Лаврська, 16',0,'1'),('bba62e9d-ab2a-11e7-9df9-208984589f5e','ПАТ \"МОТОР-БАНК\"','313009','35345213','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Запоріжжя проспект Моторобудівників, буд. 54 `Б`',0,'1'),('bba62f85-ab2a-11e7-9df9-208984589f5e','ПАТ \"ОКСІ БАНК\"','325990','09306278','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Львів вул. Газова, 17',0,'1'),('bba63068-ab2a-11e7-9df9-208984589f5e','ПАТ \"ПЕРШИЙ ІНВЕСТИЦІЙНИЙ БАНК\"','300506','26410155','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ площа Перемоги, 1',0,'1'),('bba63226-ab2a-11e7-9df9-208984589f5e','ПАТ \"Полтава-банк\"','331489','09807595','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Полтава вул. Пилипа Орлика, 40-а',0,'1'),('bba633d7-ab2a-11e7-9df9-208984589f5e','ПАТ \"Промінвестбанк\"','300012','00039002','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ пpовулок Шевченка, 12',0,'1'),('bba635a3-ab2a-11e7-9df9-208984589f5e','ПАТ \"ПУМБ\"','334851','14282829','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Андріївська, 4',0,'1'),('bba637da-ab2a-11e7-9df9-208984589f5e','ПАТ \"ПФБ\"','331768','25292831','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Кременчук кварт. 278, буд. 22-Б',0,'1'),('bba638ea-ab2a-11e7-9df9-208984589f5e','ПАТ \"РВС БАНК\"','339072','39849797','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вулиця Введенська, будинок 29/58',0,'1'),('bba639d6-ab2a-11e7-9df9-208984589f5e','ПАТ \"РОЗРАХУНКОВИЙ ЦЕНТР\"','344443','35917889','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Тропініна, 7-Г',0,'1'),('bba63abe-ab2a-11e7-9df9-208984589f5e','ПАТ \"СБЕРБАНК\"','320627','25959784','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Володимирська, буд.46',0,'1'),('bba63ba2-ab2a-11e7-9df9-208984589f5e','ПАТ \"СЕБ КОРПОРАТИВНИЙ БАНК\"','380797','37515069','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Михайлівська, 7',0,'1'),('bba63c8e-ab2a-11e7-9df9-208984589f5e','ПАТ \"СІТІБАНК\"','300584','21685485','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Ділова, 16-Г',0,'1'),('bba63d76-ab2a-11e7-9df9-208984589f5e','ПАТ \"СКАЙ БАНК\"','351254','09620081','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Гончара Олеся, буд. 76/2',0,'1'),('bba63e5a-ab2a-11e7-9df9-208984589f5e','ПАТ \"УКРСОЦБАНК\"','300023','00039019','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Ковпака, 29',0,'1'),('bba63f3e-ab2a-11e7-9df9-208984589f5e','ПАТ \"УНІВЕРСАЛ БАНК\"','322001','21133352','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Автозаводська, 54/19',0,'1'),('bba64021-ab2a-11e7-9df9-208984589f5e','ПАТ \"ЮНЕКС БАНК\"','322539','20023569','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Почайнинська, 38',0,'1'),('bba640fc-ab2a-11e7-9df9-208984589f5e','ПАТКБ \"ПРАВЕКС-БАНК\"','380838','14360920','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул. Кловський узвіз, 9/2',0,'1'),('bba641df-ab2a-11e7-9df9-208984589f5e','Полікомбанк','353100','19356610','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Чернігів вул. О. Молодчого, буд. 46',0,'1'),('bba642c7-ab2a-11e7-9df9-208984589f5e','ПуАТ \"КБ \"АКОРДБАНК\"','380634','35960913','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул.Стеценко, буд. 6',0,'1'),('bba643ab-ab2a-11e7-9df9-208984589f5e','АБ \"КЛІРИНГОВИЙ ДІМ\"','300647','21665382','2017-10-07 12:21:56','2017-10-07 12:21:56','1','1','м. Київ вул.Борисоглібська, буд.5,  літера А.',0,'1');
/*!40000 ALTER TABLE `bh_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_banks_audit`
--

DROP TABLE IF EXISTS `bh_banks_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_banks_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_banks_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_banks_audit`
--

LOCK TABLES `bh_banks_audit` WRITE;
/*!40000 ALTER TABLE `bh_banks_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_banks_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_campaine_products`
--

DROP TABLE IF EXISTS `bh_campaine_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_campaine_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_campaine_products`
--

LOCK TABLES `bh_campaine_products` WRITE;
/*!40000 ALTER TABLE `bh_campaine_products` DISABLE KEYS */;
INSERT INTO `bh_campaine_products` VALUES ('370e7ee5-9fc1-cd14-8b2d-59d36f14c292','Продукт 1','2017-10-03 11:08:07','2017-10-04 11:14:20','1','1','Продукт 1',0,'1');
/*!40000 ALTER TABLE `bh_campaine_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_campaine_products_aos_products_1_c`
--

DROP TABLE IF EXISTS `bh_campaine_products_aos_products_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_campaine_products_aos_products_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_campaine_products_aos_products_1bh_campaine_products_ida` varchar(36) DEFAULT NULL,
  `bh_campaine_products_aos_products_1aos_products_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_campaine_products_aos_products_1_alt` (`bh_campaine_products_aos_products_1bh_campaine_products_ida`,`bh_campaine_products_aos_products_1aos_products_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_campaine_products_aos_products_1_c`
--

LOCK TABLES `bh_campaine_products_aos_products_1_c` WRITE;
/*!40000 ALTER TABLE `bh_campaine_products_aos_products_1_c` DISABLE KEYS */;
INSERT INTO `bh_campaine_products_aos_products_1_c` VALUES ('467c24ba-618b-6c0d-5c5f-59d4a6bc56fd','2017-10-04 09:15:29',0,'370e7ee5-9fc1-cd14-8b2d-59d36f14c292','379778c7-a5c6-67e5-ebc4-59d4a63f0710'),('beedb40c-0d03-c63a-97f0-59d4a6c6a151','2017-10-04 09:13:33',0,'370e7ee5-9fc1-cd14-8b2d-59d36f14c292','dd77710e-fd7e-fed7-124f-59d4802bb968'),('d76764ed-9e8a-b405-8893-59d4c227f0e0','2017-10-04 11:13:49',0,'370e7ee5-9fc1-cd14-8b2d-59d36f14c292','952151a3-60a8-2c53-3404-59d48521121c'),('e63dfc05-8529-bde6-6ff9-59d4c2014da1','2017-10-04 11:14:20',0,'370e7ee5-9fc1-cd14-8b2d-59d36f14c292','22328d1a-9962-3f5e-3618-59d485e104eb');
/*!40000 ALTER TABLE `bh_campaine_products_aos_products_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_campaine_products_audit`
--

DROP TABLE IF EXISTS `bh_campaine_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_campaine_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_campaine_products_audit`
--

LOCK TABLES `bh_campaine_products_audit` WRITE;
/*!40000 ALTER TABLE `bh_campaine_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_campaine_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_card_ident`
--

DROP TABLE IF EXISTS `bh_card_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `secret_word` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_card_ident`
--

LOCK TABLES `bh_card_ident` WRITE;
/*!40000 ALTER TABLE `bh_card_ident` DISABLE KEYS */;
INSERT INTO `bh_card_ident` VALUES ('3bd563c6-65dc-e97a-3cfc-59b64503040f','23434423422323','2017-09-11 08:10:39','2017-10-05 06:51:58','1','1',NULL,0,'1','2017-09-06',NULL,'active','active','by_client',NULL);
/*!40000 ALTER TABLE `bh_card_ident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_card_ident_audit`
--

DROP TABLE IF EXISTS `bh_card_ident_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_card_ident_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_card_ident_audit`
--

LOCK TABLES `bh_card_ident_audit` WRITE;
/*!40000 ALTER TABLE `bh_card_ident_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_card_ident_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_card_ident_leads_c`
--

DROP TABLE IF EXISTS `bh_card_ident_leads_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_card_ident_leads_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_card_ident_leadsbh_card_ident_ida` varchar(36) DEFAULT NULL,
  `bh_card_ident_leadsleads_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_card_ident_leads_ida1` (`bh_card_ident_leadsbh_card_ident_ida`),
  KEY `bh_card_ident_leads_idb2` (`bh_card_ident_leadsleads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_card_ident_leads_c`
--

LOCK TABLES `bh_card_ident_leads_c` WRITE;
/*!40000 ALTER TABLE `bh_card_ident_leads_c` DISABLE KEYS */;
INSERT INTO `bh_card_ident_leads_c` VALUES ('494317ac-1862-8f8e-8f5f-59b645d7ff7f','2017-09-11 08:10:39',0,'3bd563c6-65dc-e97a-3cfc-59b64503040f','1a850344-233e-e32f-fe21-59b10fc56fe1');
/*!40000 ALTER TABLE `bh_card_ident_leads_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_case_compound`
--

DROP TABLE IF EXISTS `bh_case_compound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_case_compound` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_case_compound`
--

LOCK TABLES `bh_case_compound` WRITE;
/*!40000 ALTER TABLE `bh_case_compound` DISABLE KEYS */;
INSERT INTO `bh_case_compound` VALUES ('a79292fc-f0e5-d67a-46f2-59bbc2dbe213','название','2017-09-15 12:08:49','2017-09-15 12:08:49','1','1','описание',0,'1');
/*!40000 ALTER TABLE `bh_case_compound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_case_compound_audit`
--

DROP TABLE IF EXISTS `bh_case_compound_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_case_compound_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_case_compound_audit`
--

LOCK TABLES `bh_case_compound_audit` WRITE;
/*!40000 ALTER TABLE `bh_case_compound_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_case_compound_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_case_status`
--

DROP TABLE IF EXISTS `bh_case_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_case_status` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_case_status`
--

LOCK TABLES `bh_case_status` WRITE;
/*!40000 ALTER TABLE `bh_case_status` DISABLE KEYS */;
INSERT INTO `bh_case_status` VALUES ('b218abce-875b-1147-18da-59bbc25e06ea','статус 1','2017-09-15 12:05:21','2017-09-15 12:05:21','1','1','описание',0,'1');
/*!40000 ALTER TABLE `bh_case_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_case_status_audit`
--

DROP TABLE IF EXISTS `bh_case_status_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_case_status_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_case_status_audit`
--

LOCK TABLES `bh_case_status_audit` WRITE;
/*!40000 ALTER TABLE `bh_case_status_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_case_status_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_cases_log`
--

DROP TABLE IF EXISTS `bh_cases_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `case_status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_cases_log`
--

LOCK TABLES `bh_cases_log` WRITE;
/*!40000 ALTER TABLE `bh_cases_log` DISABLE KEYS */;
INSERT INTO `bh_cases_log` VALUES ('35e9cdfc-a364-d2d0-5521-59ba8e52b293','Обращение 1','2017-09-14 14:14:12','2017-09-15 13:05:38','1','1','описание',0,'1','skype','2017-09-08 08:00:00','2017-09-05 08:00:00',NULL,NULL);
/*!40000 ALTER TABLE `bh_cases_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_cases_log_audit`
--

DROP TABLE IF EXISTS `bh_cases_log_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_cases_log_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_cases_log_audit`
--

LOCK TABLES `bh_cases_log_audit` WRITE;
/*!40000 ALTER TABLE `bh_cases_log_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_cases_log_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_category_at_work`
--

DROP TABLE IF EXISTS `bh_category_at_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_category_at_work` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_category_at_work`
--

LOCK TABLES `bh_category_at_work` WRITE;
/*!40000 ALTER TABLE `bh_category_at_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_category_at_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_category_at_work_audit`
--

DROP TABLE IF EXISTS `bh_category_at_work_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_category_at_work_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_category_at_work_audit`
--

LOCK TABLES `bh_category_at_work_audit` WRITE;
/*!40000 ALTER TABLE `bh_category_at_work_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_category_at_work_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_category_at_work_bh_place_of_work_1_c`
--

DROP TABLE IF EXISTS `bh_category_at_work_bh_place_of_work_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_category_at_work_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida` varchar(36) DEFAULT NULL,
  `bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_category_at_work_bh_place_of_work_1_ida1` (`bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida`),
  KEY `bh_category_at_work_bh_place_of_work_1_alt` (`bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_category_at_work_bh_place_of_work_1_c`
--

LOCK TABLES `bh_category_at_work_bh_place_of_work_1_c` WRITE;
/*!40000 ALTER TABLE `bh_category_at_work_bh_place_of_work_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_category_at_work_bh_place_of_work_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_channels_impact`
--

DROP TABLE IF EXISTS `bh_channels_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `channel_impact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_channels_impact`
--

LOCK TABLES `bh_channels_impact` WRITE;
/*!40000 ALTER TABLE `bh_channels_impact` DISABLE KEYS */;
INSERT INTO `bh_channels_impact` VALUES ('6f216cb1-9775-2242-895d-59d363d9bfa1','Канал 1','2017-10-03 10:17:54','2017-10-03 10:38:54','1','1','описание',0,'1','name1');
/*!40000 ALTER TABLE `bh_channels_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_channels_impact_audit`
--

DROP TABLE IF EXISTS `bh_channels_impact_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_channels_impact_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_channels_impact_audit`
--

LOCK TABLES `bh_channels_impact_audit` WRITE;
/*!40000 ALTER TABLE `bh_channels_impact_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_channels_impact_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_communicators`
--

DROP TABLE IF EXISTS `bh_communicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `communicator` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_communicators`
--

LOCK TABLES `bh_communicators` WRITE;
/*!40000 ALTER TABLE `bh_communicators` DISABLE KEYS */;
INSERT INTO `bh_communicators` VALUES ('60cc4274-135d-7edf-ffeb-59ca0b4eeb6a','12','2017-09-26 08:11:17','2017-09-26 13:49:32','1','1',NULL,0,'1','12^,^1^,^0^,^transborder^,^12');
/*!40000 ALTER TABLE `bh_communicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_communicators_audit`
--

DROP TABLE IF EXISTS `bh_communicators_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_communicators_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_communicators_audit`
--

LOCK TABLES `bh_communicators_audit` WRITE;
/*!40000 ALTER TABLE `bh_communicators_audit` DISABLE KEYS */;
INSERT INTO `bh_communicators_audit` VALUES ('3699069d-9d64-65f7-76f0-59ca0f088d31','60cc4274-135d-7edf-ffeb-59ca0b4eeb6a','2017-09-26 08:26:13','1','communicator','MultiTextField','12^,^1^,^0^,^viber^,^12^|^Balabool^,^0^,^0^,^whatsapp^,^','',NULL,NULL),('37502e81-6c7c-35b4-7e38-59ca0d9e3d06','60cc4274-135d-7edf-ffeb-59ca0b4eeb6a','2017-09-26 08:17:51','1','communicator','MultiTextField','12^,^1^,^0^,^viber^,^12','12^,^1^,^0^,^viber^,^12^|^Balabool^,^0^,^0^,^whatsapp^,^',NULL,NULL),('4fdec209-0bde-68e7-67b7-59ca0f9cbe8d','60cc4274-135d-7edf-ffeb-59ca0b4eeb6a','2017-09-26 08:26:54','1','communicator','MultiTextField','','book^,^1^,^0^,^facebook^,^^|^Vasya^,^0^,^0^,^viber^,^',NULL,NULL),('8823134b-70ed-b6ba-b987-59ca5916d8c2','60cc4274-135d-7edf-ffeb-59ca0b4eeb6a','2017-09-26 13:42:09','1','communicator','MultiTextField','12^,^1^,^0^,^viber^,^12','12^,^1^,^0^,^transborder^,^12',NULL,NULL);
/*!40000 ALTER TABLE `bh_communicators_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_communicators_cstm`
--

DROP TABLE IF EXISTS `bh_communicators_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_communicators_cstm` (
  `id_c` char(36) NOT NULL,
  `ggg_c` text,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_communicators_cstm`
--

LOCK TABLES `bh_communicators_cstm` WRITE;
/*!40000 ALTER TABLE `bh_communicators_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_communicators_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_contact_person`
--

DROP TABLE IF EXISTS `bh_contact_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_contact_person` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_contact_person`
--

LOCK TABLES `bh_contact_person` WRITE;
/*!40000 ALTER TABLE `bh_contact_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_contact_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_contact_person_audit`
--

DROP TABLE IF EXISTS `bh_contact_person_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_contact_person_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_contact_person_audit`
--

LOCK TABLES `bh_contact_person_audit` WRITE;
/*!40000 ALTER TABLE `bh_contact_person_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_contact_person_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_country`
--

DROP TABLE IF EXISTS `bh_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_country` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_country`
--

LOCK TABLES `bh_country` WRITE;
/*!40000 ALTER TABLE `bh_country` DISABLE KEYS */;
INSERT INTO `bh_country` VALUES ('7cb164fe-204f-dfc2-8436-59c4b39d584e','Украина','2017-09-22 06:53:36','2017-09-22 07:36:13','1','1',NULL,0,'1');
/*!40000 ALTER TABLE `bh_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_country_audit`
--

DROP TABLE IF EXISTS `bh_country_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_country_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_country_audit`
--

LOCK TABLES `bh_country_audit` WRITE;
/*!40000 ALTER TABLE `bh_country_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_country_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_country_bh_region_1_c`
--

DROP TABLE IF EXISTS `bh_country_bh_region_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_country_bh_region_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_country_bh_region_1bh_country_ida` varchar(36) DEFAULT NULL,
  `bh_country_bh_region_1bh_region_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_country_bh_region_1_ida1` (`bh_country_bh_region_1bh_country_ida`),
  KEY `bh_country_bh_region_1_alt` (`bh_country_bh_region_1bh_region_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_country_bh_region_1_c`
--

LOCK TABLES `bh_country_bh_region_1_c` WRITE;
/*!40000 ALTER TABLE `bh_country_bh_region_1_c` DISABLE KEYS */;
INSERT INTO `bh_country_bh_region_1_c` VALUES ('3066246d-83ec-d923-6e44-59c4bd69712b','2017-09-22 07:36:13',0,'7cb164fe-204f-dfc2-8436-59c4b39d584e','125bb334-314b-ef8b-a4a1-59c4bce5e0a3'),('6e63479b-b122-d750-0bac-59c4bd58ba9d','2017-09-22 07:35:38',0,'7cb164fe-204f-dfc2-8436-59c4b39d584e','74d3318e-642d-dc11-a2c6-59c4bc72eb7f'),('85c0be01-2017-a3a2-7e93-59c4bd9ff259','2017-09-22 07:37:00',0,'7cb164fe-204f-dfc2-8436-59c4b39d584e','7b8021e0-a18c-0a7c-68c2-59c4bd44a93f');
/*!40000 ALTER TABLE `bh_country_bh_region_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_faq`
--

DROP TABLE IF EXISTS `bh_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `element_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_faq`
--

LOCK TABLES `bh_faq` WRITE;
/*!40000 ALTER TABLE `bh_faq` DISABLE KEYS */;
INSERT INTO `bh_faq` VALUES ('afeac37e-153a-349b-061e-59b78ce04a05','Как правильно заинтересовать клиента','2017-09-12 07:27:42','2017-09-12 12:44:01','1','1',NULL,0,'1','question');
/*!40000 ALTER TABLE `bh_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_faq_audit`
--

DROP TABLE IF EXISTS `bh_faq_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_faq_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_faq_audit`
--

LOCK TABLES `bh_faq_audit` WRITE;
/*!40000 ALTER TABLE `bh_faq_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_faq_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_faq_history`
--

DROP TABLE IF EXISTS `bh_faq_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `date_redact` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_faq_history`
--

LOCK TABLES `bh_faq_history` WRITE;
/*!40000 ALTER TABLE `bh_faq_history` DISABLE KEYS */;
INSERT INTO `bh_faq_history` VALUES ('7a4f1e1a-79b3-d870-ac7c-59b78ca84ed6','Правильно заинтересовывать так','2017-09-12 07:29:17','2017-09-12 12:46:44','1','1','ывпаыыкефкфцук',0,'1','Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:Редакция содержания:','2017-09-08');
/*!40000 ALTER TABLE `bh_faq_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_faq_history_audit`
--

DROP TABLE IF EXISTS `bh_faq_history_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_faq_history_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_faq_history_audit`
--

LOCK TABLES `bh_faq_history_audit` WRITE;
/*!40000 ALTER TABLE `bh_faq_history_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_faq_history_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_faq_history_bh_faq_c`
--

DROP TABLE IF EXISTS `bh_faq_history_bh_faq_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_faq_history_bh_faq_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_faq_history_bh_faqbh_faq_ida` varchar(36) DEFAULT NULL,
  `bh_faq_history_bh_faqbh_faq_history_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_faq_history_bh_faq_ida1` (`bh_faq_history_bh_faqbh_faq_ida`),
  KEY `bh_faq_history_bh_faq_alt` (`bh_faq_history_bh_faqbh_faq_history_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_faq_history_bh_faq_c`
--

LOCK TABLES `bh_faq_history_bh_faq_c` WRITE;
/*!40000 ALTER TABLE `bh_faq_history_bh_faq_c` DISABLE KEYS */;
INSERT INTO `bh_faq_history_bh_faq_c` VALUES ('7fae2b70-5790-5dc0-7945-59b78cc68eb8','2017-09-12 07:29:17',0,'afeac37e-153a-349b-061e-59b78ce04a05','7a4f1e1a-79b3-d870-ac7c-59b78ca84ed6');
/*!40000 ALTER TABLE `bh_faq_history_bh_faq_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_formed_packets`
--

DROP TABLE IF EXISTS `bh_formed_packets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `packet_list` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_formed_packets`
--

LOCK TABLES `bh_formed_packets` WRITE;
/*!40000 ALTER TABLE `bh_formed_packets` DISABLE KEYS */;
INSERT INTO `bh_formed_packets` VALUES ('2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','Пакет 1','2017-09-15 11:26:40','2017-10-04 06:46:43','1','1','qweqwe',0,'1','2017-09-13',6545,1321312,23,'key'),('d83562f1-dbef-4974-fa5b-59d4957ad3fc','Пакет 2','2017-10-04 08:02:19','2017-10-04 08:02:19','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL),('f3d20d02-cabe-a079-6b45-59d496d392f4','Пакет 3','2017-10-04 08:07:48','2017-10-04 08:09:06','1','1',NULL,0,'1','2017-10-04',0,0,0,'key');
/*!40000 ALTER TABLE `bh_formed_packets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_formed_packets_aos_products_1_c`
--

DROP TABLE IF EXISTS `bh_formed_packets_aos_products_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_formed_packets_aos_products_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_formed_packets_aos_products_1bh_formed_packets_ida` varchar(36) DEFAULT NULL,
  `bh_formed_packets_aos_products_1aos_products_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_formed_packets_aos_products_1_alt` (`bh_formed_packets_aos_products_1bh_formed_packets_ida`,`bh_formed_packets_aos_products_1aos_products_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_formed_packets_aos_products_1_c`
--

LOCK TABLES `bh_formed_packets_aos_products_1_c` WRITE;
/*!40000 ALTER TABLE `bh_formed_packets_aos_products_1_c` DISABLE KEYS */;
INSERT INTO `bh_formed_packets_aos_products_1_c` VALUES ('27149560-c5c8-31e1-61c4-59d48590af3b','2017-10-04 06:54:51',0,'2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','22328d1a-9962-3f5e-3618-59d485e104eb'),('28027aa2-5b2e-6c78-79ee-59d484c01401','2017-10-04 06:47:48',0,'2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','22a362ec-05d2-bd7a-fe35-59d484983668'),('77f5fe9b-8b54-e83b-9600-59d497261920','2017-10-04 08:08:40',0,'f3d20d02-cabe-a079-6b45-59d496d392f4','22328d1a-9962-3f5e-3618-59d485e104eb'),('9a036ecd-8e47-b417-7d33-59d485eb58bb','2017-10-04 06:53:20',0,'2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','952151a3-60a8-2c53-3404-59d48521121c'),('d0f3b8ab-5d13-5c3b-4916-59d49776bd0e','2017-10-04 08:09:06',0,'f3d20d02-cabe-a079-6b45-59d496d392f4','ece2079a-b00c-3d10-7add-59d484650d4a'),('de8e74de-1950-78c4-6d5c-59d495c7e473','2017-10-04 08:02:19',0,'d83562f1-dbef-4974-fa5b-59d4957ad3fc','ece2079a-b00c-3d10-7add-59d484650d4a'),('e61c8de3-1c62-84a4-1e7b-59d49761b50e','2017-10-04 08:11:20',0,'d83562f1-dbef-4974-fa5b-59d4957ad3fc','22328d1a-9962-3f5e-3618-59d485e104eb'),('f1c418d8-fb80-731f-93b5-59d484f0ef6f','2017-10-04 06:49:05',0,'2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','ece2079a-b00c-3d10-7add-59d484650d4a');
/*!40000 ALTER TABLE `bh_formed_packets_aos_products_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_formed_packets_audit`
--

DROP TABLE IF EXISTS `bh_formed_packets_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_formed_packets_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_formed_packets_audit`
--

LOCK TABLES `bh_formed_packets_audit` WRITE;
/*!40000 ALTER TABLE `bh_formed_packets_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_formed_packets_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_formed_packets_bh_packet_activation_1_c`
--

DROP TABLE IF EXISTS `bh_formed_packets_bh_packet_activation_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_formed_packets_bh_packet_activation_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida` varchar(36) DEFAULT NULL,
  `bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_formed_packets_bh_packet_activation_1_ida1` (`bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida`),
  KEY `bh_formed_packets_bh_packet_activation_1_alt` (`bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_formed_packets_bh_packet_activation_1_c`
--

LOCK TABLES `bh_formed_packets_bh_packet_activation_1_c` WRITE;
/*!40000 ALTER TABLE `bh_formed_packets_bh_packet_activation_1_c` DISABLE KEYS */;
INSERT INTO `bh_formed_packets_bh_packet_activation_1_c` VALUES ('15b0b848-2857-a4f7-1bce-59d487ca60c1','2017-10-04 07:04:24',0,'2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','2905487e-f13a-594a-6d2f-59bb73118e66');
/*!40000 ALTER TABLE `bh_formed_packets_bh_packet_activation_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_lead_adress`
--

DROP TABLE IF EXISTS `bh_lead_adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `adress_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_lead_adress`
--

LOCK TABLES `bh_lead_adress` WRITE;
/*!40000 ALTER TABLE `bh_lead_adress` DISABLE KEYS */;
INSERT INTO `bh_lead_adress` VALUES ('71b9c3fb-17fe-fb62-95b1-59c4ca9a4524','','2017-09-22 08:33:02','2017-09-22 08:33:02','1','1',NULL,0,NULL,'','','',NULL,NULL,'','fact'),('a4083cbf-858f-e628-b24b-59c4cafc804b','','2017-09-22 08:31:42','2017-09-22 08:31:42','1','1',NULL,0,NULL,'','','',NULL,NULL,'','register'),('cdfe0480-e6e6-db79-ad5f-59c258a02b61','Адр','2017-09-20 12:00:28','2017-09-20 12:17:01','1','1',NULL,0,'','5','А','211','2017-09-16','2017-09-01','123455',NULL);
/*!40000 ALTER TABLE `bh_lead_adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_lead_adress_audit`
--

DROP TABLE IF EXISTS `bh_lead_adress_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_lead_adress_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_lead_adress_audit`
--

LOCK TABLES `bh_lead_adress_audit` WRITE;
/*!40000 ALTER TABLE `bh_lead_adress_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_lead_adress_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_lead_adress_bh_country_1_c`
--

DROP TABLE IF EXISTS `bh_lead_adress_bh_country_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_lead_adress_bh_country_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_country_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_country_1bh_country_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_lead_adress_bh_country_1_ida1` (`bh_lead_adress_bh_country_1bh_lead_adress_ida`),
  KEY `bh_lead_adress_bh_country_1_idb2` (`bh_lead_adress_bh_country_1bh_country_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_lead_adress_bh_country_1_c`
--

LOCK TABLES `bh_lead_adress_bh_country_1_c` WRITE;
/*!40000 ALTER TABLE `bh_lead_adress_bh_country_1_c` DISABLE KEYS */;
INSERT INTO `bh_lead_adress_bh_country_1_c` VALUES ('88601e44-517f-f564-8760-59c4ca596f1b','2017-09-22 08:33:02',0,'71b9c3fb-17fe-fb62-95b1-59c4ca9a4524','7cb164fe-204f-dfc2-8436-59c4b39d584e'),('b387776a-a21a-55ad-457f-59c4cacc563f','2017-09-22 08:33:02',1,'a4083cbf-858f-e628-b24b-59c4cafc804b','7cb164fe-204f-dfc2-8436-59c4b39d584e');
/*!40000 ALTER TABLE `bh_lead_adress_bh_country_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_lead_adress_bh_locality_1_c`
--

DROP TABLE IF EXISTS `bh_lead_adress_bh_locality_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_lead_adress_bh_locality_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_locality_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_locality_1bh_locality_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_lead_adress_bh_locality_1_ida1` (`bh_lead_adress_bh_locality_1bh_lead_adress_ida`),
  KEY `bh_lead_adress_bh_locality_1_idb2` (`bh_lead_adress_bh_locality_1bh_locality_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_lead_adress_bh_locality_1_c`
--

LOCK TABLES `bh_lead_adress_bh_locality_1_c` WRITE;
/*!40000 ALTER TABLE `bh_lead_adress_bh_locality_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_lead_adress_bh_locality_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_lead_adress_bh_region_1_c`
--

DROP TABLE IF EXISTS `bh_lead_adress_bh_region_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_lead_adress_bh_region_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_region_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_region_1bh_region_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_lead_adress_bh_region_1_ida1` (`bh_lead_adress_bh_region_1bh_lead_adress_ida`),
  KEY `bh_lead_adress_bh_region_1_idb2` (`bh_lead_adress_bh_region_1bh_region_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_lead_adress_bh_region_1_c`
--

LOCK TABLES `bh_lead_adress_bh_region_1_c` WRITE;
/*!40000 ALTER TABLE `bh_lead_adress_bh_region_1_c` DISABLE KEYS */;
INSERT INTO `bh_lead_adress_bh_region_1_c` VALUES ('c343c948-6948-307c-8728-59c4ca4d2603','2017-09-22 08:31:42',0,'a4083cbf-858f-e628-b24b-59c4cafc804b','125bb334-314b-ef8b-a4a1-59c4bce5e0a3');
/*!40000 ALTER TABLE `bh_lead_adress_bh_region_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_lead_adress_bh_region_area_1_c`
--

DROP TABLE IF EXISTS `bh_lead_adress_bh_region_area_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_lead_adress_bh_region_area_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_lead_adress_bh_region_area_1bh_lead_adress_ida` varchar(36) DEFAULT NULL,
  `bh_lead_adress_bh_region_area_1bh_region_area_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_lead_adress_bh_region_area_1_ida1` (`bh_lead_adress_bh_region_area_1bh_lead_adress_ida`),
  KEY `bh_lead_adress_bh_region_area_1_idb2` (`bh_lead_adress_bh_region_area_1bh_region_area_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_lead_adress_bh_region_area_1_c`
--

LOCK TABLES `bh_lead_adress_bh_region_area_1_c` WRITE;
/*!40000 ALTER TABLE `bh_lead_adress_bh_region_area_1_c` DISABLE KEYS */;
INSERT INTO `bh_lead_adress_bh_region_area_1_c` VALUES ('d5dc8bd7-d1f5-3e85-fc1a-59c4ca075463','2017-09-22 08:31:42',0,'a4083cbf-858f-e628-b24b-59c4cafc804b','37131337-4145-92a7-41b3-59c4c6c0859d');
/*!40000 ALTER TABLE `bh_lead_adress_bh_region_area_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_locality`
--

DROP TABLE IF EXISTS `bh_locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `locality_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_locality`
--

LOCK TABLES `bh_locality` WRITE;
/*!40000 ALTER TABLE `bh_locality` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_locality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_locality_audit`
--

DROP TABLE IF EXISTS `bh_locality_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_locality_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_locality_audit`
--

LOCK TABLES `bh_locality_audit` WRITE;
/*!40000 ALTER TABLE `bh_locality_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_locality_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company`
--

DROP TABLE IF EXISTS `bh_marketing_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `impact_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company`
--

LOCK TABLES `bh_marketing_company` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company` DISABLE KEYS */;
INSERT INTO `bh_marketing_company` VALUES ('d431499d-a668-1db4-8b3d-59bf89d1ebb8','Маркетинговая Компания 1','2017-09-18 08:53:02','2017-10-04 11:39:19','1','1',NULL,0,'1','2017-09-09','2017-09-01','active','first','111111','segment');
/*!40000 ALTER TABLE `bh_marketing_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_audit`
--

DROP TABLE IF EXISTS `bh_marketing_company_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_marketing_company_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_audit`
--

LOCK TABLES `bh_marketing_company_audit` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_marketing_company_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_bh_campaine_products_1_c`
--

DROP TABLE IF EXISTS `bh_marketing_company_bh_campaine_products_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_marketing_company_bh_campaine_products_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketi9abccompany_ida` varchar(36) DEFAULT NULL,
  `bh_marketi9283roducts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_marketing_company_bh_campaine_products_1_ida1` (`bh_marketi9abccompany_ida`),
  KEY `bh_marketing_company_bh_campaine_products_1_alt` (`bh_marketi9283roducts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_bh_campaine_products_1_c`
--

LOCK TABLES `bh_marketing_company_bh_campaine_products_1_c` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_bh_campaine_products_1_c` DISABLE KEYS */;
INSERT INTO `bh_marketing_company_bh_campaine_products_1_c` VALUES ('51a75c9e-e331-016b-6016-59d37128c50f','2017-10-03 11:14:48',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','370e7ee5-9fc1-cd14-8b2d-59d36f14c292');
/*!40000 ALTER TABLE `bh_marketing_company_bh_campaine_products_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_bh_channels_impact_1_c`
--

DROP TABLE IF EXISTS `bh_marketing_company_bh_channels_impact_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_marketing_company_bh_channels_impact_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketid0c7company_ida` varchar(36) DEFAULT NULL,
  `bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_marketing_company_bh_channels_impact_1_ida1` (`bh_marketid0c7company_ida`),
  KEY `bh_marketing_company_bh_channels_impact_1_alt` (`bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_bh_channels_impact_1_c`
--

LOCK TABLES `bh_marketing_company_bh_channels_impact_1_c` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_bh_channels_impact_1_c` DISABLE KEYS */;
INSERT INTO `bh_marketing_company_bh_channels_impact_1_c` VALUES ('25a8d2ad-5430-cdb6-f1ed-59d36587b533','2017-10-03 10:24:55',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','6f216cb1-9775-2242-895d-59d363d9bfa1');
/*!40000 ALTER TABLE `bh_marketing_company_bh_channels_impact_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_bh_marketing_company_history_1_c`
--

DROP TABLE IF EXISTS `bh_marketing_company_bh_marketing_company_history_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_marketing_company_bh_marketing_company_history_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketi1e9fcompany_ida` varchar(36) DEFAULT NULL,
  `bh_marketid398history_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_marketing_company_bh_marketing_company_history_1_ida1` (`bh_marketi1e9fcompany_ida`),
  KEY `bh_marketing_company_bh_marketing_company_history_1_alt` (`bh_marketid398history_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_bh_marketing_company_history_1_c`
--

LOCK TABLES `bh_marketing_company_bh_marketing_company_history_1_c` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_bh_marketing_company_history_1_c` DISABLE KEYS */;
INSERT INTO `bh_marketing_company_bh_marketing_company_history_1_c` VALUES ('446461b6-509f-984d-1cc6-59d3515d504b','2017-10-03 09:01:50',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','61c060b8-0391-3e3c-a034-59bfa8231477');
/*!40000 ALTER TABLE `bh_marketing_company_bh_marketing_company_history_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_bh_marketing_directorate_1_c`
--

DROP TABLE IF EXISTS `bh_marketing_company_bh_marketing_directorate_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_marketing_company_bh_marketing_directorate_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketia9b6company_ida` varchar(36) DEFAULT NULL,
  `bh_marketi618ectorate_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_marketing_company_bh_marketing_directorate_1_ida1` (`bh_marketia9b6company_ida`),
  KEY `bh_marketing_company_bh_marketing_directorate_1_alt` (`bh_marketi618ectorate_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_bh_marketing_directorate_1_c`
--

LOCK TABLES `bh_marketing_company_bh_marketing_directorate_1_c` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_bh_marketing_directorate_1_c` DISABLE KEYS */;
INSERT INTO `bh_marketing_company_bh_marketing_directorate_1_c` VALUES ('dad9ba24-e2e0-f633-d68a-59d34ca4e646','2017-10-03 08:39:29',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','ac2361ec-f3ca-1138-8d47-59c20de54bc1');
/*!40000 ALTER TABLE `bh_marketing_company_bh_marketing_directorate_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_bh_marketing_response_1_c`
--

DROP TABLE IF EXISTS `bh_marketing_company_bh_marketing_response_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_marketing_company_bh_marketing_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketi8c3ecompany_ida` varchar(36) DEFAULT NULL,
  `bh_marketi8b4desponse_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_marketing_company_bh_marketing_response_1_ida1` (`bh_marketi8c3ecompany_ida`),
  KEY `bh_marketing_company_bh_marketing_response_1_alt` (`bh_marketi8b4desponse_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_bh_marketing_response_1_c`
--

LOCK TABLES `bh_marketing_company_bh_marketing_response_1_c` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_bh_marketing_response_1_c` DISABLE KEYS */;
INSERT INTO `bh_marketing_company_bh_marketing_response_1_c` VALUES ('3ce90e04-f846-50f0-8da2-59d35935731a','2017-10-03 09:33:44',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','f34f076b-3745-ce6a-978c-59d359b4b094'),('41a9674d-b650-2825-4b6f-59d34ff2d5bf','2017-10-03 08:49:15',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','39d947d8-fec3-148a-3c9a-59d34f872059'),('9e3b9988-1675-dc4f-866a-59d49d5a233b','2017-10-04 08:38:19',0,'d431499d-a668-1db4-8b3d-59bf89d1ebb8','7769832a-236d-bfbd-fcb6-59d49d972ed1');
/*!40000 ALTER TABLE `bh_marketing_company_bh_marketing_response_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_history`
--

DROP TABLE IF EXISTS `bh_marketing_company_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `company_end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_history`
--

LOCK TABLES `bh_marketing_company_history` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_history` DISABLE KEYS */;
INSERT INTO `bh_marketing_company_history` VALUES ('61c060b8-0391-3e3c-a034-59bfa8231477','Пам','2017-09-18 11:04:59','2017-10-03 09:01:50','1','1',NULL,0,'1','2017-09-21','2017-09-01','active','2017-09-12');
/*!40000 ALTER TABLE `bh_marketing_company_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_company_history_audit`
--

DROP TABLE IF EXISTS `bh_marketing_company_history_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_marketing_company_history_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_company_history_audit`
--

LOCK TABLES `bh_marketing_company_history_audit` WRITE;
/*!40000 ALTER TABLE `bh_marketing_company_history_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_marketing_company_history_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_directorate`
--

DROP TABLE IF EXISTS `bh_marketing_directorate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_directorate`
--

LOCK TABLES `bh_marketing_directorate` WRITE;
/*!40000 ALTER TABLE `bh_marketing_directorate` DISABLE KEYS */;
INSERT INTO `bh_marketing_directorate` VALUES ('ac2361ec-f3ca-1138-8d47-59c20de54bc1','Список клиентов Компания 1','2017-09-20 06:40:49','2017-10-04 10:23:23','1','1',NULL,0,'1',NULL,NULL);
/*!40000 ALTER TABLE `bh_marketing_directorate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_directorate_audit`
--

DROP TABLE IF EXISTS `bh_marketing_directorate_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_marketing_directorate_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_directorate_audit`
--

LOCK TABLES `bh_marketing_directorate_audit` WRITE;
/*!40000 ALTER TABLE `bh_marketing_directorate_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_marketing_directorate_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_directorate_leads_1_c`
--

DROP TABLE IF EXISTS `bh_marketing_directorate_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_marketing_directorate_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_marketing_directorate_leads_1bh_marketing_directorate_ida` varchar(36) DEFAULT NULL,
  `bh_marketing_directorate_leads_1leads_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_marketing_directorate_leads_1_alt` (`bh_marketing_directorate_leads_1bh_marketing_directorate_ida`,`bh_marketing_directorate_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_directorate_leads_1_c`
--

LOCK TABLES `bh_marketing_directorate_leads_1_c` WRITE;
/*!40000 ALTER TABLE `bh_marketing_directorate_leads_1_c` DISABLE KEYS */;
INSERT INTO `bh_marketing_directorate_leads_1_c` VALUES ('387e82f5-b4ea-d3f1-b79a-59d4b56f9785','2017-10-04 10:20:40',0,'ac2361ec-f3ca-1138-8d47-59c20de54bc1','1a850344-233e-e32f-fe21-59b10fc56fe1'),('55e34938-6c89-ea1c-a75e-59d4b509aa86','2017-10-04 10:17:17',0,'ac2361ec-f3ca-1138-8d47-59c20de54bc1','15b2317d-5f17-b967-0f5d-59c3c87bbba0'),('9aa5bead-8c67-c7e6-a121-59d4b430c53e','2017-10-04 10:15:44',0,'ac2361ec-f3ca-1138-8d47-59c20de54bc1','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07');
/*!40000 ALTER TABLE `bh_marketing_directorate_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_response`
--

DROP TABLE IF EXISTS `bh_marketing_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `response_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_response`
--

LOCK TABLES `bh_marketing_response` WRITE;
/*!40000 ALTER TABLE `bh_marketing_response` DISABLE KEYS */;
INSERT INTO `bh_marketing_response` VALUES ('39d947d8-fec3-148a-3c9a-59d34f872059','отклик от клиента Test','2017-10-03 08:49:15','2017-10-04 10:26:27','1','1',NULL,0,'eff07114-603c-c0d2-0e5e-599bcd264773','2017-10-03',NULL,'positive'),('7769832a-236d-bfbd-fcb6-59d49d972ed1','Отклик от клиента Валера','2017-10-04 08:38:19','2017-10-04 08:38:19','1','1',NULL,0,'1','2017-10-04','','none'),('aaf23322-06e2-0bb4-6a12-59bfbaae9ba1','Test','2017-09-18 12:24:07','2017-10-03 14:49:44','1','1',NULL,1,'1','2017-09-07','Comment','positive'),('f34f076b-3745-ce6a-978c-59d359b4b094','отклик от клиента Администратор','2017-10-03 09:33:44','2017-10-03 09:33:44','1','1',NULL,0,'1','2017-10-04','','negative');
/*!40000 ALTER TABLE `bh_marketing_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_marketing_response_audit`
--

DROP TABLE IF EXISTS `bh_marketing_response_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_marketing_response_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_marketing_response_audit`
--

LOCK TABLES `bh_marketing_response_audit` WRITE;
/*!40000 ALTER TABLE `bh_marketing_response_audit` DISABLE KEYS */;
INSERT INTO `bh_marketing_response_audit` VALUES ('a86d3743-2545-94eb-1be0-59d358a7df26','39d947d8-fec3-148a-3c9a-59d34f872059','2017-10-03 09:29:26','1','assigned_user_id','relate','1','eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL);
/*!40000 ALTER TABLE `bh_marketing_response_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_org`
--

DROP TABLE IF EXISTS `bh_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `org_sphere` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_org`
--

LOCK TABLES `bh_org` WRITE;
/*!40000 ALTER TABLE `bh_org` DISABLE KEYS */;
INSERT INTO `bh_org` VALUES ('2553f09e-02ea-9028-fb5e-59b920e28d1c','Организация 1','2017-09-13 12:10:28','2017-09-13 12:31:44','1','1','уцффайфвцйукйццф',0,'1','priventerprise','big','industry');
/*!40000 ALTER TABLE `bh_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_org_audit`
--

DROP TABLE IF EXISTS `bh_org_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_org_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_org_audit`
--

LOCK TABLES `bh_org_audit` WRITE;
/*!40000 ALTER TABLE `bh_org_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_org_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_org_bh_place_of_work_1_c`
--

DROP TABLE IF EXISTS `bh_org_bh_place_of_work_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_org_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_org_bh_place_of_work_1bh_org_ida` varchar(36) DEFAULT NULL,
  `bh_org_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_org_bh_place_of_work_1_ida1` (`bh_org_bh_place_of_work_1bh_org_ida`),
  KEY `bh_org_bh_place_of_work_1_alt` (`bh_org_bh_place_of_work_1bh_place_of_work_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_org_bh_place_of_work_1_c`
--

LOCK TABLES `bh_org_bh_place_of_work_1_c` WRITE;
/*!40000 ALTER TABLE `bh_org_bh_place_of_work_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_org_bh_place_of_work_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_org_trade_points`
--

DROP TABLE IF EXISTS `bh_org_trade_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_org_trade_points`
--

LOCK TABLES `bh_org_trade_points` WRITE;
/*!40000 ALTER TABLE `bh_org_trade_points` DISABLE KEYS */;
INSERT INTO `bh_org_trade_points` VALUES ('18bd9629-d148-fc4f-0bde-59b91d30ba8d','Точка1','2017-09-13 11:57:57','2017-09-13 11:59:04','1','1',NULL,0,'1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bh_org_trade_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_org_trade_points_audit`
--

DROP TABLE IF EXISTS `bh_org_trade_points_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_org_trade_points_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_org_trade_points_audit`
--

LOCK TABLES `bh_org_trade_points_audit` WRITE;
/*!40000 ALTER TABLE `bh_org_trade_points_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_org_trade_points_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_packet_activation`
--

DROP TABLE IF EXISTS `bh_packet_activation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `packet_list` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_packet_activation`
--

LOCK TABLES `bh_packet_activation` WRITE;
/*!40000 ALTER TABLE `bh_packet_activation` DISABLE KEYS */;
INSERT INTO `bh_packet_activation` VALUES ('2905487e-f13a-594a-6d2f-59bb73118e66','Пакет 1 активация','2017-09-15 06:30:28','2017-10-04 12:57:46','1','1','описание',0,'1','2017-09-07','key');
/*!40000 ALTER TABLE `bh_packet_activation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_packet_activation_audit`
--

DROP TABLE IF EXISTS `bh_packet_activation_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_packet_activation_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_packet_activation_audit`
--

LOCK TABLES `bh_packet_activation_audit` WRITE;
/*!40000 ALTER TABLE `bh_packet_activation_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_packet_activation_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_passports`
--

DROP TABLE IF EXISTS `bh_passports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `passport_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_passports`
--

LOCK TABLES `bh_passports` WRITE;
/*!40000 ALTER TABLE `bh_passports` DISABLE KEYS */;
INSERT INTO `bh_passports` VALUES ('81b30487-f8a6-ee09-ef84-59c4dc8ed1eb','','2017-09-22 09:46:45','2017-09-22 09:46:45','1','1',NULL,0,NULL,'tyryyr4664','vggdggd','2017-09-02','2017-09-08','nfjffjjjjf','2017-09-02','transborder');
/*!40000 ALTER TABLE `bh_passports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_passports_audit`
--

DROP TABLE IF EXISTS `bh_passports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_passports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_passports_audit`
--

LOCK TABLES `bh_passports_audit` WRITE;
/*!40000 ALTER TABLE `bh_passports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_passports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_passports_bh_country_1_c`
--

DROP TABLE IF EXISTS `bh_passports_bh_country_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_passports_bh_country_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_passports_bh_country_1bh_passports_ida` varchar(36) DEFAULT NULL,
  `bh_passports_bh_country_1bh_country_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_passports_bh_country_1_ida1` (`bh_passports_bh_country_1bh_passports_ida`),
  KEY `bh_passports_bh_country_1_idb2` (`bh_passports_bh_country_1bh_country_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_passports_bh_country_1_c`
--

LOCK TABLES `bh_passports_bh_country_1_c` WRITE;
/*!40000 ALTER TABLE `bh_passports_bh_country_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_passports_bh_country_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_phones`
--

DROP TABLE IF EXISTS `bh_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `operator` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_phones`
--

LOCK TABLES `bh_phones` WRITE;
/*!40000 ALTER TABLE `bh_phones` DISABLE KEYS */;
INSERT INTO `bh_phones` VALUES ('2b7f4cf2-c725-3f4c-de28-59c91319bb23',NULL,'2017-09-25 14:33:46','2017-09-28 13:53:49','1','1',NULL,0,'1','+38(093) 779-56-18','LifeCell');
/*!40000 ALTER TABLE `bh_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_phones_audit`
--

DROP TABLE IF EXISTS `bh_phones_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_phones_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_phones_audit`
--

LOCK TABLES `bh_phones_audit` WRITE;
/*!40000 ALTER TABLE `bh_phones_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_phones_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_place_of_work`
--

DROP TABLE IF EXISTS `bh_place_of_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `date_end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_place_of_work`
--

LOCK TABLES `bh_place_of_work` WRITE;
/*!40000 ALTER TABLE `bh_place_of_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_place_of_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_place_of_work_audit`
--

DROP TABLE IF EXISTS `bh_place_of_work_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_place_of_work_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_place_of_work_audit`
--

LOCK TABLES `bh_place_of_work_audit` WRITE;
/*!40000 ALTER TABLE `bh_place_of_work_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_place_of_work_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_position_at_work`
--

DROP TABLE IF EXISTS `bh_position_at_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_position_at_work` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_position_at_work`
--

LOCK TABLES `bh_position_at_work` WRITE;
/*!40000 ALTER TABLE `bh_position_at_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_position_at_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_position_at_work_audit`
--

DROP TABLE IF EXISTS `bh_position_at_work_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_position_at_work_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_position_at_work_audit`
--

LOCK TABLES `bh_position_at_work_audit` WRITE;
/*!40000 ALTER TABLE `bh_position_at_work_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_position_at_work_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_position_at_work_bh_place_of_work_1_c`
--

DROP TABLE IF EXISTS `bh_position_at_work_bh_place_of_work_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_position_at_work_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_position_at_work_bh_place_of_work_1bh_position_at_work_ida` varchar(36) DEFAULT NULL,
  `bh_position_at_work_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_position_at_work_bh_place_of_work_1_ida1` (`bh_position_at_work_bh_place_of_work_1bh_position_at_work_ida`),
  KEY `bh_position_at_work_bh_place_of_work_1_alt` (`bh_position_at_work_bh_place_of_work_1bh_place_of_work_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_position_at_work_bh_place_of_work_1_c`
--

LOCK TABLES `bh_position_at_work_bh_place_of_work_1_c` WRITE;
/*!40000 ALTER TABLE `bh_position_at_work_bh_place_of_work_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_position_at_work_bh_place_of_work_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_providers`
--

DROP TABLE IF EXISTS `bh_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `date_activation` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_providers`
--

LOCK TABLES `bh_providers` WRITE;
/*!40000 ALTER TABLE `bh_providers` DISABLE KEYS */;
INSERT INTO `bh_providers` VALUES ('e8780716-2587-fba6-b6bd-59b7eb19fc44','Рога и КОпыта','2017-09-12 14:12:49','2017-09-12 14:21:12','1','1',NULL,0,'1','not_active','2017-09-05');
/*!40000 ALTER TABLE `bh_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_providers_aos_contracts_1_c`
--

DROP TABLE IF EXISTS `bh_providers_aos_contracts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_providers_aos_contracts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_providers_aos_contracts_1bh_providers_ida` varchar(36) DEFAULT NULL,
  `bh_providers_aos_contracts_1aos_contracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_providers_aos_contracts_1_ida1` (`bh_providers_aos_contracts_1bh_providers_ida`),
  KEY `bh_providers_aos_contracts_1_alt` (`bh_providers_aos_contracts_1aos_contracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_providers_aos_contracts_1_c`
--

LOCK TABLES `bh_providers_aos_contracts_1_c` WRITE;
/*!40000 ALTER TABLE `bh_providers_aos_contracts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_providers_aos_contracts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_providers_aos_contracts_2_c`
--

DROP TABLE IF EXISTS `bh_providers_aos_contracts_2_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_providers_aos_contracts_2_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_providers_aos_contracts_2bh_providers_ida` varchar(36) DEFAULT NULL,
  `bh_providers_aos_contracts_2aos_contracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_providers_aos_contracts_2_ida1` (`bh_providers_aos_contracts_2bh_providers_ida`),
  KEY `bh_providers_aos_contracts_2_alt` (`bh_providers_aos_contracts_2aos_contracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_providers_aos_contracts_2_c`
--

LOCK TABLES `bh_providers_aos_contracts_2_c` WRITE;
/*!40000 ALTER TABLE `bh_providers_aos_contracts_2_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_providers_aos_contracts_2_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_providers_audit`
--

DROP TABLE IF EXISTS `bh_providers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_providers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_providers_audit`
--

LOCK TABLES `bh_providers_audit` WRITE;
/*!40000 ALTER TABLE `bh_providers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_providers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_providers_bh_org_trade_points_1_c`
--

DROP TABLE IF EXISTS `bh_providers_bh_org_trade_points_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_providers_bh_org_trade_points_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_providers_bh_org_trade_points_1bh_providers_ida` varchar(36) DEFAULT NULL,
  `bh_providers_bh_org_trade_points_1bh_org_trade_points_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_providers_bh_org_trade_points_1_ida1` (`bh_providers_bh_org_trade_points_1bh_providers_ida`),
  KEY `bh_providers_bh_org_trade_points_1_alt` (`bh_providers_bh_org_trade_points_1bh_org_trade_points_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_providers_bh_org_trade_points_1_c`
--

LOCK TABLES `bh_providers_bh_org_trade_points_1_c` WRITE;
/*!40000 ALTER TABLE `bh_providers_bh_org_trade_points_1_c` DISABLE KEYS */;
INSERT INTO `bh_providers_bh_org_trade_points_1_c` VALUES ('8a224270-ff32-eabd-fa9b-59b91d77001b','2017-09-13 11:59:04',0,'e8780716-2587-fba6-b6bd-59b7eb19fc44','18bd9629-d148-fc4f-0bde-59b91d30ba8d');
/*!40000 ALTER TABLE `bh_providers_bh_org_trade_points_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_realty`
--

DROP TABLE IF EXISTS `bh_realty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `realty_date_purchase` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_realty`
--

LOCK TABLES `bh_realty` WRITE;
/*!40000 ALTER TABLE `bh_realty` DISABLE KEYS */;
INSERT INTO `bh_realty` VALUES ('900c0ca4-717c-71a5-03f9-59b7d157cf73','Квартира 1','2017-09-12 12:22:54','2017-09-13 13:06:09','1','1',NULL,0,'1','single','inheritance',1,'apartment','2017-09-07');
/*!40000 ALTER TABLE `bh_realty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_realty_audit`
--

DROP TABLE IF EXISTS `bh_realty_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_realty_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_realty_audit`
--

LOCK TABLES `bh_realty_audit` WRITE;
/*!40000 ALTER TABLE `bh_realty_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_realty_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_region`
--

DROP TABLE IF EXISTS `bh_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_region` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_region`
--

LOCK TABLES `bh_region` WRITE;
/*!40000 ALTER TABLE `bh_region` DISABLE KEYS */;
INSERT INTO `bh_region` VALUES ('125bb334-314b-ef8b-a4a1-59c4bce5e0a3','Одесская область','2017-09-22 07:30:26','2017-09-22 07:30:26','1','1',NULL,0,'1'),('74d3318e-642d-dc11-a2c6-59c4bc72eb7f','Николаевская область','2017-09-22 07:31:15','2017-09-22 07:31:15','1','1',NULL,0,'1'),('7b8021e0-a18c-0a7c-68c2-59c4bd44a93f','Харьковская область','2017-09-22 07:37:00','2017-09-22 07:37:00','1','1',NULL,0,'1');
/*!40000 ALTER TABLE `bh_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_region_area`
--

DROP TABLE IF EXISTS `bh_region_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_region_area` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_region_area`
--

LOCK TABLES `bh_region_area` WRITE;
/*!40000 ALTER TABLE `bh_region_area` DISABLE KEYS */;
INSERT INTO `bh_region_area` VALUES ('230c2e88-cfc6-fa11-b0dd-59c4c64e8b4a','Беляевский район','2017-09-22 08:14:48','2017-09-22 08:14:48','1','1',NULL,0,'1'),('37131337-4145-92a7-41b3-59c4c6c0859d','Арцизский район','2017-09-22 08:15:26','2017-09-22 08:15:26','1','1',NULL,0,'1');
/*!40000 ALTER TABLE `bh_region_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_region_area_audit`
--

DROP TABLE IF EXISTS `bh_region_area_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_region_area_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_region_area_audit`
--

LOCK TABLES `bh_region_area_audit` WRITE;
/*!40000 ALTER TABLE `bh_region_area_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_region_area_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_region_area_bh_locality_1_c`
--

DROP TABLE IF EXISTS `bh_region_area_bh_locality_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_region_area_bh_locality_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_region_area_bh_locality_1bh_region_area_ida` varchar(36) DEFAULT NULL,
  `bh_region_area_bh_locality_1bh_locality_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_region_area_bh_locality_1_ida1` (`bh_region_area_bh_locality_1bh_region_area_ida`),
  KEY `bh_region_area_bh_locality_1_alt` (`bh_region_area_bh_locality_1bh_locality_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_region_area_bh_locality_1_c`
--

LOCK TABLES `bh_region_area_bh_locality_1_c` WRITE;
/*!40000 ALTER TABLE `bh_region_area_bh_locality_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_region_area_bh_locality_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_region_audit`
--

DROP TABLE IF EXISTS `bh_region_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_region_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_region_audit`
--

LOCK TABLES `bh_region_audit` WRITE;
/*!40000 ALTER TABLE `bh_region_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_region_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_region_bh_region_area_1_c`
--

DROP TABLE IF EXISTS `bh_region_bh_region_area_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_region_bh_region_area_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_region_bh_region_area_1bh_region_ida` varchar(36) DEFAULT NULL,
  `bh_region_bh_region_area_1bh_region_area_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_region_bh_region_area_1_ida1` (`bh_region_bh_region_area_1bh_region_ida`),
  KEY `bh_region_bh_region_area_1_alt` (`bh_region_bh_region_area_1bh_region_area_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_region_bh_region_area_1_c`
--

LOCK TABLES `bh_region_bh_region_area_1_c` WRITE;
/*!40000 ALTER TABLE `bh_region_bh_region_area_1_c` DISABLE KEYS */;
INSERT INTO `bh_region_bh_region_area_1_c` VALUES ('297c1ed2-e872-542e-021b-59c4c6e67350','2017-09-22 08:14:48',0,'125bb334-314b-ef8b-a4a1-59c4bce5e0a3','230c2e88-cfc6-fa11-b0dd-59c4c64e8b4a'),('3c51ecb6-948f-622a-6272-59c4c651e70e','2017-09-22 08:15:26',0,'125bb334-314b-ef8b-a4a1-59c4bce5e0a3','37131337-4145-92a7-41b3-59c4c6c0859d');
/*!40000 ALTER TABLE `bh_region_bh_region_area_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scr_status_history`
--

DROP TABLE IF EXISTS `bh_scr_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `scr_status_history_rate_effort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scr_status_history`
--

LOCK TABLES `bh_scr_status_history` WRITE;
/*!40000 ALTER TABLE `bh_scr_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scr_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scr_status_history_audit`
--

DROP TABLE IF EXISTS `bh_scr_status_history_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_scr_status_history_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scr_status_history_audit`
--

LOCK TABLES `bh_scr_status_history_audit` WRITE;
/*!40000 ALTER TABLE `bh_scr_status_history_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scr_status_history_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scr_status_history_bh_scripts_c`
--

DROP TABLE IF EXISTS `bh_scr_status_history_bh_scripts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_scr_status_history_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scr_status_history_bh_scriptsbh_scr_status_history_ida` varchar(36) DEFAULT NULL,
  `bh_scr_status_history_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_scr_status_history_bh_scripts_ida1` (`bh_scr_status_history_bh_scriptsbh_scr_status_history_ida`),
  KEY `bh_scr_status_history_bh_scripts_alt` (`bh_scr_status_history_bh_scriptsbh_scripts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scr_status_history_bh_scripts_c`
--

LOCK TABLES `bh_scr_status_history_bh_scripts_c` WRITE;
/*!40000 ALTER TABLE `bh_scr_status_history_bh_scripts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scr_status_history_bh_scripts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_script_param_response`
--

DROP TABLE IF EXISTS `bh_script_param_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `channel_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_script_param_response`
--

LOCK TABLES `bh_script_param_response` WRITE;
/*!40000 ALTER TABLE `bh_script_param_response` DISABLE KEYS */;
INSERT INTO `bh_script_param_response` VALUES ('17ae3e18-60df-2d00-3d76-59b940929860','test','2017-09-13 14:28:37','2017-09-13 14:28:37','1','1','описание',0,'1','none','2017-09-13','комментарий',NULL);
/*!40000 ALTER TABLE `bh_script_param_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_script_param_response_audit`
--

DROP TABLE IF EXISTS `bh_script_param_response_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_script_param_response_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_script_param_response_audit`
--

LOCK TABLES `bh_script_param_response_audit` WRITE;
/*!40000 ALTER TABLE `bh_script_param_response_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_script_param_response_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_script_param_response_bh_scripts_c`
--

DROP TABLE IF EXISTS `bh_script_param_response_bh_scripts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_script_param_response_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_script_param_response_bh_scriptsbh_script_param_response_ida` varchar(36) DEFAULT NULL,
  `bh_script_param_response_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_script_param_response_bh_scripts_alt` (`bh_script_param_response_bh_scriptsbh_script_param_response_ida`,`bh_script_param_response_bh_scriptsbh_scripts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_script_param_response_bh_scripts_c`
--

LOCK TABLES `bh_script_param_response_bh_scripts_c` WRITE;
/*!40000 ALTER TABLE `bh_script_param_response_bh_scripts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_script_param_response_bh_scripts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts`
--

DROP TABLE IF EXISTS `bh_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deactivation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts`
--

LOCK TABLES `bh_scripts` WRITE;
/*!40000 ALTER TABLE `bh_scripts` DISABLE KEYS */;
INSERT INTO `bh_scripts` VALUES ('e1b4e2b2-c827-1cbc-f4bd-59bb8fc5f4e6','ВОт такой скрип','2017-09-15 08:30:45','2017-09-19 13:04:56','1','1',NULL,0,'1','active','warm_up','individual',NULL,NULL,0,'2017-09-01 08:00:00',NULL);
/*!40000 ALTER TABLE `bh_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_audit`
--

DROP TABLE IF EXISTS `bh_scripts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_scripts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_audit`
--

LOCK TABLES `bh_scripts_audit` WRITE;
/*!40000 ALTER TABLE `bh_scripts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_bh_script_param_response_1_c`
--

DROP TABLE IF EXISTS `bh_scripts_bh_script_param_response_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_scripts_bh_script_param_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts_bh_script_param_response_1bh_scripts_ida` varchar(36) DEFAULT NULL,
  `bh_scripts6c20esponse_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_scripts_bh_script_param_response_1_ida1` (`bh_scripts_bh_script_param_response_1bh_scripts_ida`),
  KEY `bh_scripts_bh_script_param_response_1_alt` (`bh_scripts6c20esponse_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_bh_script_param_response_1_c`
--

LOCK TABLES `bh_scripts_bh_script_param_response_1_c` WRITE;
/*!40000 ALTER TABLE `bh_scripts_bh_script_param_response_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_bh_script_param_response_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_bh_scripts_employee_comment_1_c`
--

DROP TABLE IF EXISTS `bh_scripts_bh_scripts_employee_comment_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_scripts_bh_scripts_employee_comment_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida` varchar(36) DEFAULT NULL,
  `bh_scripts22dfcomment_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_scripts_bh_scripts_employee_comment_1_ida1` (`bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida`),
  KEY `bh_scripts_bh_scripts_employee_comment_1_alt` (`bh_scripts22dfcomment_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_bh_scripts_employee_comment_1_c`
--

LOCK TABLES `bh_scripts_bh_scripts_employee_comment_1_c` WRITE;
/*!40000 ALTER TABLE `bh_scripts_bh_scripts_employee_comment_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_bh_scripts_employee_comment_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_bh_scripts_leadership_recommend_1_c`
--

DROP TABLE IF EXISTS `bh_scripts_bh_scripts_leadership_recommend_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_scripts_bh_scripts_leadership_recommend_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida` varchar(36) DEFAULT NULL,
  `bh_scriptsb2a1commend_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_scripts_bh_scripts_leadership_recommend_1_ida1` (`bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida`),
  KEY `bh_scripts_bh_scripts_leadership_recommend_1_alt` (`bh_scriptsb2a1commend_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_bh_scripts_leadership_recommend_1_c`
--

LOCK TABLES `bh_scripts_bh_scripts_leadership_recommend_1_c` WRITE;
/*!40000 ALTER TABLE `bh_scripts_bh_scripts_leadership_recommend_1_c` DISABLE KEYS */;
INSERT INTO `bh_scripts_bh_scripts_leadership_recommend_1_c` VALUES ('362a2963-ed6c-1000-ca3a-59bb909a0601','2017-09-15 08:32:01',0,'e1b4e2b2-c827-1cbc-f4bd-59bb8fc5f4e6','863d0ced-1265-5628-ec69-59bb70c7b1ee');
/*!40000 ALTER TABLE `bh_scripts_bh_scripts_leadership_recommend_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_employee_comment`
--

DROP TABLE IF EXISTS `bh_scripts_employee_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `bh_scripts_employee_comment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_employee_comment`
--

LOCK TABLES `bh_scripts_employee_comment` WRITE;
/*!40000 ALTER TABLE `bh_scripts_employee_comment` DISABLE KEYS */;
INSERT INTO `bh_scripts_employee_comment` VALUES ('1a01a3bd-a719-a223-3eb5-59b943ad5116','Комментарий','2017-09-13 14:41:18','2017-09-13 14:41:18','1','1','',0,'1','','2017-09-04');
/*!40000 ALTER TABLE `bh_scripts_employee_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_employee_comment_audit`
--

DROP TABLE IF EXISTS `bh_scripts_employee_comment_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_scripts_employee_comment_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_employee_comment_audit`
--

LOCK TABLES `bh_scripts_employee_comment_audit` WRITE;
/*!40000 ALTER TABLE `bh_scripts_employee_comment_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_employee_comment_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_employee_comment_bh_scripts_c`
--

DROP TABLE IF EXISTS `bh_scripts_employee_comment_bh_scripts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_scripts_employee_comment_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scripts7127comment_ida` varchar(36) DEFAULT NULL,
  `bh_scripts_employee_comment_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_scripts_employee_comment_bh_scripts_alt` (`bh_scripts7127comment_ida`,`bh_scripts_employee_comment_bh_scriptsbh_scripts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_employee_comment_bh_scripts_c`
--

LOCK TABLES `bh_scripts_employee_comment_bh_scripts_c` WRITE;
/*!40000 ALTER TABLE `bh_scripts_employee_comment_bh_scripts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_employee_comment_bh_scripts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_leadership_recommend`
--

DROP TABLE IF EXISTS `bh_scripts_leadership_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `recommend_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_leadership_recommend`
--

LOCK TABLES `bh_scripts_leadership_recommend` WRITE;
/*!40000 ALTER TABLE `bh_scripts_leadership_recommend` DISABLE KEYS */;
INSERT INTO `bh_scripts_leadership_recommend` VALUES ('863d0ced-1265-5628-ec69-59bb70c7b1ee','Скрипт очень крутой','2017-09-15 06:16:01','2017-09-15 08:32:01','1','1','Описание:',0,'1','2017-09-07','asdfadas');
/*!40000 ALTER TABLE `bh_scripts_leadership_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_leadership_recommend_audit`
--

DROP TABLE IF EXISTS `bh_scripts_leadership_recommend_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bh_scripts_leadership_recommend_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_leadership_recommend_audit`
--

LOCK TABLES `bh_scripts_leadership_recommend_audit` WRITE;
/*!40000 ALTER TABLE `bh_scripts_leadership_recommend_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_leadership_recommend_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bh_scripts_leadership_recommend_bh_scripts_c`
--

DROP TABLE IF EXISTS `bh_scripts_leadership_recommend_bh_scripts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bh_scripts_leadership_recommend_bh_scripts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bh_scriptsfdbacommend_ida` varchar(36) DEFAULT NULL,
  `bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bh_scripts_leadership_recommend_bh_scripts_alt` (`bh_scriptsfdbacommend_ida`,`bh_scripts_leadership_recommend_bh_scriptsbh_scripts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bh_scripts_leadership_recommend_bh_scripts_c`
--

LOCK TABLES `bh_scripts_leadership_recommend_bh_scripts_c` WRITE;
/*!40000 ALTER TABLE `bh_scripts_leadership_recommend_bh_scripts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bh_scripts_leadership_recommend_bh_scripts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES ('1a39d864-1260-0e2b-a2b2-59cd0d25af02','** Авто-запись **','2017-09-28 14:57:19','2017-09-28 14:57:22','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе','Inbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('1f3b8873-7596-7b37-21f9-59ce17272da3','Исходящий звонок','2017-09-29 09:50:26','2017-09-29 09:50:26','1','1','',0,'1',0,0,'2017-09-29 09:49:41','2017-09-29 09:49:41',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('243d5a9d-cf69-1b1b-845d-59cdfb1a534d','** Авто-запись **','2017-09-29 07:49:54','2017-09-29 07:49:57','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('2aea5731-6378-7b1a-e6a8-59ce176f5afb','Исходящий звонок','2017-09-29 09:51:18','2017-09-29 09:51:18','1','1','',0,'1',0,0,'2017-09-29 09:50:59','2017-09-29 09:50:59',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('54e0809e-a136-8683-5aff-59cdfdc6d1e1','** Авто-запись **','2017-09-29 08:00:01','2017-09-29 08:00:03','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('564eb49f-24c7-1e2c-75d5-59cd0dca7699','Пропущенный звонок','2017-09-28 14:57:14','2017-09-28 14:57:58','1','1','Пропущенный/неудачный звонок (Subscriber absent\n------------------\n Phone Number         : 0957580217                              \n',0,'1',0,0,'2017-09-28 14:57:14','2017-09-28 14:57:14',NULL,'Held','Inbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('564eb885-659c-5155-d16a-59ce1784e11c','Исходящий звонок','2017-09-29 09:52:25','2017-09-29 09:52:25','1','1','',0,'1',0,0,'2017-09-29 09:52:18','2017-09-29 09:52:18',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('5c81afb3-471c-665c-3793-59ce17c956d5','Исходящий звонок','2017-09-29 09:52:35','2017-09-29 09:52:35','1','1','',0,'1',0,0,'2017-09-29 09:52:18','2017-09-29 09:52:18',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('6277809a-8dc1-7a35-b33f-59cd0f0d6664','Исходящий звонок','2017-09-28 15:04:33','2017-09-28 15:04:33','1','1','',0,'1',0,0,'2017-09-28 15:03:58','2017-09-28 15:03:58',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('8bb694d0-8f0e-c822-3843-59cdead820d8','Исходящий звонок','2017-09-29 06:38:46','2017-09-29 06:38:46','1','1','',0,'1',0,0,'2017-09-29 06:38:11','2017-09-29 06:38:11',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('a79bbed5-0d30-451c-8a03-59cd0f873a4e','Исходящий звонок','2017-09-28 15:05:46','2017-09-28 15:05:46','1','1','',0,'1',0,0,'2017-09-28 15:05:11','2017-09-28 15:05:11',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('b9034307-83e2-1e7d-726a-59ce00ecd078','** Авто-запись **','2017-09-29 08:12:57','2017-09-29 08:13:00','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('c6d75073-8011-f9d5-1876-59cd119b7e57','** Авто-запись **','2017-09-28 15:12:42','2017-09-28 15:12:45','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('e4a4b6ea-057d-097a-174a-59cdee5d2ddd','** Авто-запись **','2017-09-29 06:58:00','2017-09-29 06:58:03','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('e4e1c393-ab9b-dc9d-c177-59ce02ab006a','** Авто-запись **','2017-09-29 08:20:50','2017-09-29 08:20:50','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'В процессе',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_cstm`
--

DROP TABLE IF EXISTS `calls_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_call_id_c` varchar(45) DEFAULT NULL,
  `asterisk_caller_id_c` varchar(45) DEFAULT NULL,
  `asterisk_inbound_ext_c` varchar(45) DEFAULT NULL,
  `asterisk_user_ext_c` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_cstm`
--

LOCK TABLES `calls_cstm` WRITE;
/*!40000 ALTER TABLE `calls_cstm` DISABLE KEYS */;
INSERT INTO `calls_cstm` VALUES ('1a39d864-1260-0e2b-a2b2-59cd0d25af02','','','',''),('1f3b8873-7596-7b37-21f9-59ce17272da3','1506678570.11','0937795618',NULL,'3331'),('243d5a9d-cf69-1b1b-845d-59cdfb1a534d','','','',''),('2aea5731-6378-7b1a-e6a8-59ce176f5afb','1506678648.12','0937795618',NULL,'3331'),('54e0809e-a136-8683-5aff-59cdfdc6d1e1','','','',''),('564eb49f-24c7-1e2c-75d5-59cd0dca7699','1506600951.0','0957580217','7009','7009'),('564eb885-659c-5155-d16a-59ce1784e11c','1506678727.15','3330',NULL,'3331'),('5c81afb3-471c-665c-3793-59ce17c956d5','1506678727.15','3330',NULL,'3331'),('6277809a-8dc1-7a35-b33f-59cd0f0d6664','1506601358.3','0937795618',NULL,'7010'),('8bb694d0-8f0e-c822-3843-59cdead820d8','1506657411.17','0937795618',NULL,'7010'),('a79bbed5-0d30-451c-8a03-59cd0f873a4e','1506601431.4','380937795618',NULL,'7010'),('b9034307-83e2-1e7d-726a-59ce00ecd078','','','',''),('c6d75073-8011-f9d5-1876-59cd119b7e57','','','',''),('e4a4b6ea-057d-097a-174a-59cdee5d2ddd','','','','');
/*!40000 ALTER TABLE `calls_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
INSERT INTO `calls_users` VALUES ('1ba81c58-28e5-95e5-00fc-59cd0d45755a','1a39d864-1260-0e2b-a2b2-59cd0d25af02','1','1','none','2017-09-28 14:57:22',0),('20a9d9c6-7ab9-78d5-8800-59ce17328e31','1f3b8873-7596-7b37-21f9-59ce17272da3','1','1','none','2017-09-29 09:50:26',0),('25ab8bc6-65f1-cb5c-9aca-59cdfb12da4b','243d5a9d-cf69-1b1b-845d-59cdfb1a534d','1','1','none','2017-09-29 07:49:57',0),('2d4ca530-7bfb-09af-5855-59ce172cd9a1','2aea5731-6378-7b1a-e6a8-59ce176f5afb','1','1','none','2017-09-29 09:51:18',0),('564eb109-b9a4-9097-3359-59cdfd80540e','54e0809e-a136-8683-5aff-59cdfdc6d1e1','1','1','none','2017-09-29 08:00:03',0),('57bcf678-94c4-f59d-178d-59ce172ed5a0','564eb885-659c-5155-d16a-59ce1784e11c','1','1','none','2017-09-29 09:52:25',0),('57f9fa82-647b-d375-9587-59cd0daac602','564eb49f-24c7-1e2c-75d5-59cd0dca7699','1','1','none','2017-09-28 14:57:58',0),('5db2da0d-0944-0e1b-a053-59ce17503164','5c81afb3-471c-665c-3793-59ce17c956d5','1','1','none','2017-09-29 09:52:35',0),('63e5b1ab-1cc0-798b-2223-59cd0ff60781','6277809a-8dc1-7a35-b33f-59cd0f0d6664','1','1','none','2017-09-28 15:04:33',0),('8d24d2a0-fcff-aa52-19ec-59cdea5fdb83','8bb694d0-8f0e-c822-3843-59cdead820d8','1','1','none','2017-09-29 06:38:46',0),('a8cce317-1246-7964-9033-59cd0f86db4e','a79bbed5-0d30-451c-8a03-59cd0f873a4e','1','1','none','2017-09-28 15:05:46',0),('ba717cbd-0976-0c58-1b0b-59ce00aada29','b9034307-83e2-1e7d-726a-59ce00ecd078','1','1','none','2017-09-29 08:13:00',0),('c52c1702-2d19-7d63-4cba-59ce178d0b1b','c3faea98-e2b8-7730-569d-59ce1701f679','1','1','none','2017-09-29 09:51:36',0),('c8458eb7-749b-3586-d619-59cd115c56b4','c6d75073-8011-f9d5-1876-59cd119b7e57','1','1','none','2017-09-28 15:12:45',0),('e612ebd8-b995-6c8f-f00f-59cdeebbb67f','e4a4b6ea-057d-097a-174a-59cdee5d2ddd','1','1','none','2017-09-29 06:58:03',0),('e64ff317-0178-4b5b-46ec-59ce021df5ae','e4e1c393-ab9b-dc9d-c177-59ce02ab006a','1','1','none','2017-09-29 08:20:50',0);
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
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
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES ('13483d16-d582-2980-91c6-59d86beadf2c','asdasd','2017-10-07 05:51:59','2017-10-07 05:51:59','1','1',0,'1',83,0,'http://',NULL,NULL,'0000-00-00','Planning',0,'-99',NULL,NULL,NULL,NULL,'NewsLetter',NULL,NULL,NULL),('2c47497a-1306-e912-7193-59d85e6f9444','dfsf','2017-10-07 04:54:53','2017-10-07 04:54:53','1','1',0,'1',81,0,'http://',NULL,NULL,'0000-00-00','Planning',0,'-99',NULL,NULL,NULL,NULL,'Email',NULL,NULL,''),('344dbf3e-955d-2a40-0799-59d86ad4dfdb','fsfsf','2017-10-07 05:49:26','2017-10-07 05:49:26','1','1',0,'1',82,0,'http://',NULL,NULL,'0000-00-00','Active',0,'-99',NULL,NULL,NULL,NULL,'Email',NULL,NULL,'');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
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
  `result_comment` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES ('9e430572-0c88-020a-a77c-59ba2115b313','adasdadsdad','2017-09-14 06:29:12','2017-09-20 08:13:11','1','1',NULL,0,'1',1,'buy_sell','Open_New','P1',NULL,NULL,'d45b7965-8105-7147-d758-59ba21cbfdef','Open','','consult','incoming','active_work',NULL);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bh_case_compound_1_c`
--

DROP TABLE IF EXISTS `cases_bh_case_compound_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bh_case_compound_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_case_compound_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_case_compound_1bh_case_compound_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cases_bh_case_compound_1_ida1` (`cases_bh_case_compound_1cases_ida`),
  KEY `cases_bh_case_compound_1_alt` (`cases_bh_case_compound_1bh_case_compound_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bh_case_compound_1_c`
--

LOCK TABLES `cases_bh_case_compound_1_c` WRITE;
/*!40000 ALTER TABLE `cases_bh_case_compound_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bh_case_compound_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bh_cases_log_1_c`
--

DROP TABLE IF EXISTS `cases_bh_cases_log_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bh_cases_log_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_cases_log_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_cases_log_1bh_cases_log_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cases_bh_cases_log_1_ida1` (`cases_bh_cases_log_1cases_ida`),
  KEY `cases_bh_cases_log_1_alt` (`cases_bh_cases_log_1bh_cases_log_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bh_cases_log_1_c`
--

LOCK TABLES `cases_bh_cases_log_1_c` WRITE;
/*!40000 ALTER TABLE `cases_bh_cases_log_1_c` DISABLE KEYS */;
INSERT INTO `cases_bh_cases_log_1_c` VALUES ('26748673-6025-a290-67ef-59ba90e515c1','2017-09-14 14:23:26',0,'9e430572-0c88-020a-a77c-59ba2115b313','35e9cdfc-a364-d2d0-5521-59ba8e52b293');
/*!40000 ALTER TABLE `cases_bh_cases_log_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bh_marketing_company_1_c`
--

DROP TABLE IF EXISTS `cases_bh_marketing_company_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bh_marketing_company_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_marketing_company_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_marketing_company_1bh_marketing_company_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cases_bh_marketing_company_1_ida1` (`cases_bh_marketing_company_1cases_ida`),
  KEY `cases_bh_marketing_company_1_alt` (`cases_bh_marketing_company_1bh_marketing_company_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bh_marketing_company_1_c`
--

LOCK TABLES `cases_bh_marketing_company_1_c` WRITE;
/*!40000 ALTER TABLE `cases_bh_marketing_company_1_c` DISABLE KEYS */;
INSERT INTO `cases_bh_marketing_company_1_c` VALUES ('e685ff7a-a7e5-b316-251f-59d38d05fa54','2017-10-03 13:16:15',0,'9e430572-0c88-020a-a77c-59ba2115b313','d431499d-a668-1db4-8b3d-59bf89d1ebb8');
/*!40000 ALTER TABLE `cases_bh_marketing_company_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bh_marketing_response_1_c`
--

DROP TABLE IF EXISTS `cases_bh_marketing_response_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bh_marketing_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `cases_bh_marketing_response_1cases_ida` varchar(36) DEFAULT NULL,
  `cases_bh_marketing_response_1bh_marketing_response_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cases_bh_marketing_response_1_ida1` (`cases_bh_marketing_response_1cases_ida`),
  KEY `cases_bh_marketing_response_1_alt` (`cases_bh_marketing_response_1bh_marketing_response_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bh_marketing_response_1_c`
--

LOCK TABLES `cases_bh_marketing_response_1_c` WRITE;
/*!40000 ALTER TABLE `cases_bh_marketing_response_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bh_marketing_response_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
INSERT INTO `cases_cstm` VALUES ('9e430572-0c88-020a-a77c-59ba2115b313',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.24'),('MySettings','tab','YTo3Mjp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTA6ImJoX3NjcmlwdHMiO3M6MTA6ImJoX3NjcmlwdHMiO3M6MTY6ImJoX0F1dG90cmFuc3BvcnQiO3M6MTY6ImJoX0F1dG90cmFuc3BvcnQiO3M6OToiYmhfUmVhbHR5IjtzOjk6ImJoX1JlYWx0eSI7czo2OiJiaF9mYXEiO3M6NjoiYmhfZmFxIjtzOjE0OiJiaF9mYXFfaGlzdG9yeSI7czoxNDoiYmhfZmFxX2hpc3RvcnkiO3M6MjE6ImJoX3Njcl9zdGF0dXNfaGlzdG9yeSI7czoyMToiYmhfc2NyX3N0YXR1c19oaXN0b3J5IjtzOjI0OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO3M6MjQ6ImJoX3NjcmlwdF9wYXJhbV9yZXNwb25zZSI7czoyNzoiYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50IjtzOjI3OiJiaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQiO3M6MTI6ImJoX3Byb3ZpZGVycyI7czoxMjoiYmhfcHJvdmlkZXJzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjY6ImJoX29yZyI7czo2OiJiaF9vcmciO3M6MTI6ImJoX2Nhc2VzX2xvZyI7czoxMjoiYmhfY2FzZXNfbG9nIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjtzOjIwOiJiaF9wYWNrZXRfYWN0aXZhdGlvbiI7czoyMDoiYmhfcGFja2V0X2FjdGl2YXRpb24iO3M6MTc6ImJoX2Zvcm1lZF9wYWNrZXRzIjtzOjE3OiJiaF9mb3JtZWRfcGFja2V0cyI7czoxNjoiYmhfY2FzZV9jb21wb3VuZCI7czoxNjoiYmhfY2FzZV9jb21wb3VuZCI7czoxNDoiYmhfY2FzZV9zdGF0dXMiO3M6MTQ6ImJoX2Nhc2Vfc3RhdHVzIjtzOjIwOiJiaF9tYXJrZXRpbmdfY29tcGFueSI7czoyMDoiYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6Mjg6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6Mjg6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6MjE6ImJoX21hcmtldGluZ19yZXNwb25zZSI7czoyMToiYmhfbWFya2V0aW5nX3Jlc3BvbnNlIjtzOjI0OiJiaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGUiO3M6MjQ6ImJoX21hcmtldGluZ19kaXJlY3RvcmF0ZSI7czoxNDoiYmhfbGVhZF9hZHJlc3MiO3M6MTQ6ImJoX2xlYWRfYWRyZXNzIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjEwOiJiaF9jb3VudHJ5IjtzOjEwOiJiaF9jb3VudHJ5IjtzOjk6ImJoX3JlZ2lvbiI7czo5OiJiaF9yZWdpb24iO3M6MTQ6ImJoX3JlZ2lvbl9hcmVhIjtzOjE0OiJiaF9yZWdpb25fYXJlYSI7czoxMToiYmhfbG9jYWxpdHkiO3M6MTE6ImJoX2xvY2FsaXR5IjtzOjEyOiJiaF9wYXNzcG9ydHMiO3M6MTI6ImJoX3Bhc3Nwb3J0cyI7czoxNzoiYmhfY29udGFjdF9wZXJzb24iO3M6MTc6ImJoX2NvbnRhY3RfcGVyc29uIjtzOjk6ImJoX3Bob25lcyI7czo5OiJiaF9waG9uZXMiO3M6MTY6ImJoX2NvbW11bmljYXRvcnMiO3M6MTY6ImJoX2NvbW11bmljYXRvcnMiO3M6MTg6ImJoX2NoYW5uZWxzX2ltcGFjdCI7czoxODoiYmhfY2hhbm5lbHNfaW1wYWN0IjtzOjIwOiJiaF9jYW1wYWluZV9wcm9kdWN0cyI7czoyMDoiYmhfY2FtcGFpbmVfcHJvZHVjdHMiO3M6ODoiYmhfYmFua3MiO3M6ODoiYmhfYmFua3MiO30='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','2'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username','admin'),('proxy','password','AFpCmPtVJMs='),('captcha','on','0'),('captcha','public_key',''),('captcha','private_key',''),('ldap','hostname',''),('ldap','port',''),('ldap','base_dn',''),('ldap','login_filter',''),('ldap','bind_attr',''),('ldap','login_attr',''),('ldap','group_dn',''),('ldap','group_name',''),('ldap','group_user_attr',''),('ldap','group_attr',''),('ldap','admin_user',''),('ldap','admin_password',''),('ldap','auto_create_users','0'),('ldap','enc_key',''),('system','ldap_enabled','0'),('ldap','group_attr_req_dn','0'),('ldap','group','0'),('ldap','authentication','0'),('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.24'),('MySettings','tab','YTo3Mjp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTM6ImJoX0NhcmRfaWRlbnQiO3M6MTA6ImJoX3NjcmlwdHMiO3M6MTA6ImJoX3NjcmlwdHMiO3M6MTY6ImJoX0F1dG90cmFuc3BvcnQiO3M6MTY6ImJoX0F1dG90cmFuc3BvcnQiO3M6OToiYmhfUmVhbHR5IjtzOjk6ImJoX1JlYWx0eSI7czo2OiJiaF9mYXEiO3M6NjoiYmhfZmFxIjtzOjE0OiJiaF9mYXFfaGlzdG9yeSI7czoxNDoiYmhfZmFxX2hpc3RvcnkiO3M6MjE6ImJoX3Njcl9zdGF0dXNfaGlzdG9yeSI7czoyMToiYmhfc2NyX3N0YXR1c19oaXN0b3J5IjtzOjI0OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2UiO3M6MjQ6ImJoX3NjcmlwdF9wYXJhbV9yZXNwb25zZSI7czoyNzoiYmhfU2NyaXB0c19lbXBsb3llZV9jb21tZW50IjtzOjI3OiJiaF9TY3JpcHRzX2VtcGxveWVlX2NvbW1lbnQiO3M6MTI6ImJoX3Byb3ZpZGVycyI7czoxMjoiYmhfcHJvdmlkZXJzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjE5OiJiaF9vcmdfdHJhZGVfcG9pbnRzIjtzOjY6ImJoX29yZyI7czo2OiJiaF9vcmciO3M6MTI6ImJoX2Nhc2VzX2xvZyI7czoxMjoiYmhfY2FzZXNfbG9nIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjtzOjMxOiJiaF9TY3JpcHRzX2xlYWRlcnNoaXBfcmVjb21tZW5kIjtzOjIwOiJiaF9wYWNrZXRfYWN0aXZhdGlvbiI7czoyMDoiYmhfcGFja2V0X2FjdGl2YXRpb24iO3M6MTc6ImJoX2Zvcm1lZF9wYWNrZXRzIjtzOjE3OiJiaF9mb3JtZWRfcGFja2V0cyI7czoxNjoiYmhfY2FzZV9jb21wb3VuZCI7czoxNjoiYmhfY2FzZV9jb21wb3VuZCI7czoxNDoiYmhfY2FzZV9zdGF0dXMiO3M6MTQ6ImJoX2Nhc2Vfc3RhdHVzIjtzOjIwOiJiaF9tYXJrZXRpbmdfY29tcGFueSI7czoyMDoiYmhfbWFya2V0aW5nX2NvbXBhbnkiO3M6Mjg6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6Mjg6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnkiO3M6MjE6ImJoX21hcmtldGluZ19yZXNwb25zZSI7czoyMToiYmhfbWFya2V0aW5nX3Jlc3BvbnNlIjtzOjI0OiJiaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGUiO3M6MjQ6ImJoX21hcmtldGluZ19kaXJlY3RvcmF0ZSI7czoxNDoiYmhfbGVhZF9hZHJlc3MiO3M6MTQ6ImJoX2xlYWRfYWRyZXNzIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjE2OiJiaF9wbGFjZV9vZl93b3JrIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjE5OiJiaF9wb3NpdGlvbl9hdF93b3JrIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjE5OiJiaF9jYXRlZ29yeV9hdF93b3JrIjtzOjEwOiJiaF9jb3VudHJ5IjtzOjEwOiJiaF9jb3VudHJ5IjtzOjk6ImJoX3JlZ2lvbiI7czo5OiJiaF9yZWdpb24iO3M6MTQ6ImJoX3JlZ2lvbl9hcmVhIjtzOjE0OiJiaF9yZWdpb25fYXJlYSI7czoxMToiYmhfbG9jYWxpdHkiO3M6MTE6ImJoX2xvY2FsaXR5IjtzOjEyOiJiaF9wYXNzcG9ydHMiO3M6MTI6ImJoX3Bhc3Nwb3J0cyI7czoxNzoiYmhfY29udGFjdF9wZXJzb24iO3M6MTc6ImJoX2NvbnRhY3RfcGVyc29uIjtzOjk6ImJoX3Bob25lcyI7czo5OiJiaF9waG9uZXMiO3M6MTY6ImJoX2NvbW11bmljYXRvcnMiO3M6MTY6ImJoX2NvbW11bmljYXRvcnMiO3M6MTg6ImJoX2NoYW5uZWxzX2ltcGFjdCI7czoxODoiYmhfY2hhbm5lbHNfaW1wYWN0IjtzOjIwOiJiaF9jYW1wYWluZV9wcm9kdWN0cyI7czoyMDoiYmhfY2FtcGFpbmVfcHJvZHVjdHMiO3M6ODoiYmhfYmFua3MiO3M6ODoiYmhfYmFua3MiO30='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','2'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username','admin'),('proxy','password','AFpCmPtVJMs='),('captcha','on','0'),('captcha','public_key',''),('captcha','private_key',''),('ldap','hostname',''),('ldap','port',''),('ldap','base_dn',''),('ldap','login_filter',''),('ldap','bind_attr',''),('ldap','login_attr',''),('ldap','group_dn',''),('ldap','group_name',''),('ldap','group_user_attr',''),('ldap','group_attr',''),('ldap','admin_user',''),('ldap','admin_password',''),('ldap','auto_create_users','0'),('ldap','enc_key',''),('system','ldap_enabled','0'),('ldap','group_attr_req_dn','0'),('ldap','group','0'),('ldap','authentication','0');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
INSERT INTO `cron_remove_documents` VALUES ('6c3996f0-5eca-645c-0aa5-59a5121dc0b3','b55c0f3e-abbf-da4c-0805-59a50fca9fe1','Documents','2017-08-29 10:05:43'),('a7c1c984-7f1d-b0d3-e54a-59a5122998d4','466a30cf-0cbe-58bf-53f3-59a5111e9f65','Documents','2017-08-29 10:05:40');
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
INSERT INTO `document_revisions` VALUES ('c97cf0e4-7469-f016-5f7f-59ba796843bb','Документ создан','9193a8b7-a12e-afbf-3979-59ba79cb5d22','','Sugar','','2017-09-14 12:45:48','1','1.jpg','jpg','image/jpeg','1',0,'2017-09-14 12:45:48');
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `termination_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES ('13c9318f-c1df-e406-b28d-59a51296984b','2017-08-29 07:06:46','2017-08-29 07:06:46','1','1',NULL,0,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('17f34406-be07-b7c2-d4be-59a520054121','2017-08-29 08:08:14','2017-08-29 08:08:14','1','1',NULL,0,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('466a30cf-0cbe-58bf-53f3-59a5111e9f65','2017-08-29 07:04:13','2017-08-29 07:05:40','1','1',NULL,1,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('8420ca84-e12c-46af-d9b1-59a521ab1f0e','2017-08-29 08:12:21','2017-08-29 08:12:21','1','1',NULL,0,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('8fda4bce-7a45-4cea-a6a2-59a51d956d10','2017-08-29 07:52:14','2017-08-29 07:52:14','1','1',NULL,0,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('9193a8b7-a12e-afbf-3979-59ba79cb5d22','2017-09-14 12:45:48','2017-09-15 11:01:25','1','1',NULL,0,'1','Документ 1',NULL,'Sugar',NULL,'2017-09-14',NULL,NULL,NULL,'Active','c97cf0e4-7469-f016-5f7f-59ba796843bb','','',0,NULL,'valid',NULL,NULL,NULL),('b55c0f3e-abbf-da4c-0805-59a50fca9fe1','2017-08-29 06:53:44','2017-08-29 07:05:40','1','1',NULL,1,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('d3dc678c-5d73-00a6-06eb-59a51dfdf75b','2017-08-29 07:53:15','2017-08-29 07:53:15','1','1',NULL,0,NULL,'',NULL,'Sugar',NULL,'2017-08-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('11fa63a7-98b9-723d-5ca2-599af1ffc847','34677acc-ae73-3071-678c-599af16b1a6c','4a2d9def-1fda-713f-409f-599a892565f9','Leads',1,0,'2017-08-21 14:42:20','2017-08-21 14:42:20',0),('1a39df05-0f91-74ff-02b9-59ce1604857b','480099d1-0c64-8c0d-8f3f-59ccfe11d234','1','Users',1,0,'2017-09-29 09:44:51','2017-09-29 09:44:51',0),('250f9c06-f8c8-8e51-8659-599bcdd98125','250f9d5f-83a0-7ad1-c7d9-599bcd1a0506','eff07114-603c-c0d2-0e5e-599bcd264773','Users',1,0,'2017-08-22 06:20:35','2017-08-22 06:20:35',0),('409c8ed7-acff-f6d7-458c-59ccfe7b3ae7','480099d1-0c64-8c0d-8f3f-59ccfe11d234','1','Users',1,0,'2017-09-28 13:51:06','2017-09-28 13:51:06',1),('6622d67b-9ccb-d01a-2459-599a767b9b8b','66615e8e-93e9-52f6-1056-599a76627aee','1','Users',1,0,'2017-08-21 05:56:19','2017-08-21 05:56:19',1),('ead7a7a1-a283-f187-1823-59ca6c79be89','eb14a935-0381-5457-c600-59ca6c326a4e','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Leads',1,0,'2017-09-26 15:04:25','2017-09-26 15:04:25',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('250f9d5f-83a0-7ad1-c7d9-599bcd1a0506','test@gmail.com','TEST@GMAIL.COM',0,0,'2017-08-22 06:20:35','2017-08-22 06:20:35',0),('34677acc-ae73-3071-678c-599af16b1a6c','test@example.com','TEST@EXAMPLE.COM',0,0,'2017-08-21 14:42:20','2017-08-21 14:42:20',0),('480099d1-0c64-8c0d-8f3f-59ccfe11d234','new@admin.com','NEW@ADMIN.COM',0,0,'2017-09-28 13:51:06','2017-09-28 13:51:06',0),('66615e8e-93e9-52f6-1056-599a76627aee','yurenkoyura@gmail.com','YURENKOYURA@GMAIL.COM',0,0,'2017-08-21 05:56:19','2017-08-21 05:56:19',0),('eb14a935-0381-5457-c600-59ca6c326a4e','nhvhmf@jjgj.com','NHVHMF@JJGJ.COM',0,0,'2017-09-26 15:04:25','2017-09-26 15:04:25',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
INSERT INTO `email_marketing` VALUES ('1422a3a2-5299-6e91-a653-59d80d467811',0,'2017-10-06 23:09:03','2017-10-06 23:09:03','1','1','','','','','','','0000-00-00 00:00:00','23edbc63-4ea7-b05e-8340-59d80cb1f6b1','active','','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('1960bf6f-ffb8-eec4-a0c5-59d1f3f4e768',0,'2017-10-02 08:07:09','2017-10-02 08:07:09','1','1','','','','','','','0000-00-00 00:00:00','83b206a7-d8a5-5104-c472-59d1f32e6a47','active','51b98206-9490-5a8a-b032-59d1e7fc5b7a','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('399ebb21-0904-e1b5-7ae8-59d1f32737a4',0,'2017-10-02 08:07:10','2017-10-02 08:46:51','1','1','моя рассылка','фыфы','yurenkoyura@gmail.com','ИВАН','YURENKOYURA@GMAIL.COM',NULL,'2017-10-18 08:00:00','8743a4f2-a3f6-17ae-826c-59d1fc20668f','active','51b98206-9490-5a8a-b032-59d1e7fc5b7a','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('3b0e0969-4039-bf47-7ff4-59d1fee74960',0,'2017-10-02 08:52:57','2017-10-02 09:23:32','1','1','ууууу','фыфы','yurenkoyura@gmail.com','ц','YURENKOYURA@GMAIL.COM',NULL,'2017-10-03 08:00:00','b8043ae0-2614-7263-f815-59d2045eebdf','active','1ed19be7-94c2-25d0-0b3a-59d1fe8df63f','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('3b9ea020-9a9e-5b4c-b921-59d8288f95da',0,'2017-10-07 01:05:14','2017-10-07 01:05:14','1','1','','','','','','','0000-00-00 00:00:00','d5d3eb0a-df96-1540-bdf2-59d82841d034','active','','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('4fcb25a9-a7ed-1e13-72bd-59d834d730d3',0,'2017-10-07 01:57:52','2017-10-07 01:57:59','1','1','awdaw','','',NULL,NULL,NULL,'0000-00-00 00:00:00','c57f3f36-95c1-e871-9f2a-59d8349830a9','active','3a89ade1-2370-5f81-2955-59d8343a2edd','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('54c14f8e-b500-53a0-24e6-59d835d8363b',0,'2017-10-07 02:00:00','2017-10-07 02:00:29','1','1','awdd','awd','awda',NULL,NULL,NULL,'0000-00-00 00:00:00','b426574f-8530-94aa-b944-59d835a03b78','active','cc87b167-5377-ed71-39d1-59d835e4ed2c','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('59b5b5ea-e674-59a2-f0e6-59d82f42d723',0,'2017-10-07 01:35:54','2017-10-07 01:35:54','1','1','','','','','','','0000-00-00 00:00:00','df314985-4e04-d8f8-bf4f-59d82fd614b5','active','63da2d6f-52fd-5eee-b509-59d82fe92ba2','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('6a3e050e-577b-21b2-e650-59d82d28b3be',0,'2017-10-07 01:26:47','2017-10-07 01:26:47','1','1','','','',NULL,NULL,NULL,'0000-00-00 00:00:00','','','','',0),('73534a40-1675-7b09-5834-59d2190404b1',0,'2017-10-02 10:47:32','2017-10-02 10:47:58','1','1','bjz','','',NULL,NULL,NULL,'2017-10-03 08:00:00','ae805a55-824e-f322-380a-59d219329732','active','17d20276-8067-1b81-97d9-59d218370d5b','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('77a7b4ec-88ac-3164-bdbe-59d80d10f888',0,'2017-10-06 23:11:51','2017-10-06 23:12:09','1','1','asdadasd','','',NULL,NULL,NULL,'2031-02-15 08:00:00','2457b59c-87d4-5685-a34e-59d80dc172ea','active','83ae2454-b1c0-b8b6-6120-59d80d50c4ff','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('787ce63d-8155-7d7b-ac49-59d234ee0686',0,'2017-10-02 12:42:58','2017-10-02 12:43:28','1','1','ывыв','фыфы','yurenkoyura@gmail.com',NULL,NULL,NULL,'2017-10-01 08:00:00','469fd4a6-7f61-a55b-c14a-59d234bc4382','active','cd986260-4c2a-1f3a-58fe-59d232973e79','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('81ffa100-0919-622f-6569-59d216e1ecb9',0,'2017-10-02 10:33:52','2017-10-02 10:33:52','1','1','','','','','','','0000-00-00 00:00:00','5e3d8e92-70e8-6900-78c2-59d2164db1d4','active','5727958b-2c4b-87e4-d763-59d20c9f7ca6','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('88641e2c-1f25-cd0b-34df-59d86b4c78d0',0,'2017-10-07 05:50:09','2017-10-07 05:50:26','1','1','asdasd','asd','holubyurii@outlook.com',NULL,NULL,NULL,'2017-10-07 08:00:00','d956bf63-e6bc-cd93-6963-59d86b3b741a','active','344dbf3e-955d-2a40-0799-59d86ad4dfdb','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('a9900b22-a418-4ab9-f91d-59d20839c49f',0,'2017-10-02 09:35:40','2017-10-02 09:39:55','1','1','','фыфы','yurenkoyura@gmail.com','ц','YURENKOYURA@GMAIL.COM',NULL,'0000-00-00 00:00:00','3d75c17e-0e9c-320d-131a-59d209d3a06e','active','1ed19be7-94c2-25d0-0b3a-59d1fe8df63f','8081fb8a-e6d7-647f-92c7-59ccdf9d8a17',1),('b4dc6fc9-68c8-0cdc-cd82-59d8547fb889',0,'2017-10-07 04:13:56','2017-10-07 04:14:16','1','1','dwdsds','sdss','holubyurii@outlook.com',NULL,'holubyurii@outlook.com',NULL,'0000-00-00 00:00:00','7dd088db-b104-40f2-efe8-59d8540f1ca0','active','5f6f14db-e88f-109e-a2e6-59d854297110','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('b6f1657d-e200-85f0-57fe-59d86bb74550',0,'2017-10-07 05:52:58','2017-10-07 05:53:10','1','1','asda','asda','asda',NULL,NULL,NULL,'0000-00-00 00:00:00','b793ed5d-bf0c-3ca7-1084-59d86b0a0270','active','13483d16-d582-2980-91c6-59d86beadf2c','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('b99aced3-cc11-f716-3c82-59d85638caef',0,'2017-10-07 04:22:48','2017-10-07 04:23:06','1','1','dfd','dfdfd','holubyurii@outlook.com',NULL,'holubyurii@outlook.com',NULL,'2017-10-06 08:00:00','b5d8332f-7d05-4970-2ccc-59d8567d24f0','active','2f80dfb2-5323-9dea-976d-59d8567fa75d','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('c3fbfcce-98c0-6595-f181-59d340e5a642',0,'2017-10-03 07:47:08','2017-10-03 07:47:08','1','1','','','','','','','0000-00-00 00:00:00','d5842676-e843-6da2-47c2-59d334e371e9','active','b5183c65-1b93-5e6e-b364-59d24333e4a8','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('c9ea8508-8424-1397-7b6c-59d85d162068',0,'2017-10-07 04:51:53','2017-10-07 04:52:51','1','1','erete','','',NULL,NULL,NULL,'0000-00-00 00:00:00','8446be9a-cabe-159e-cf5c-59d85d750e9f','active','85e4f084-a61e-426e-99c3-59d85d54ee1f','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('cadefab4-7017-1b0b-c2bb-59d334171985',0,'2017-10-03 06:56:12','2017-10-03 08:21:26','1','1','моя','','',NULL,NULL,NULL,'2017-10-05 08:00:00','91e8c76c-7c37-882e-5c5a-59d34865cf9b','active','b5183c65-1b93-5e6e-b364-59d24333e4a8','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('cc226124-7d74-e271-33b0-59d25198fd26',0,'2017-10-02 14:45:49','2017-10-03 06:40:34','1','1','ftffg','','',NULL,NULL,NULL,'2017-10-05 08:00:00','3e8a0768-8d88-60be-1724-59d3301309a2','active','b5183c65-1b93-5e6e-b364-59d24333e4a8','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('d9c0fcff-7526-db71-268a-59d855ccfdcb',0,'2017-10-07 04:19:30','2017-10-07 04:19:46','1','1','4343','3434','holubyurii@outlook.com',NULL,'holubyurii@outlook.com',NULL,'2017-10-05 08:00:00','4bd0eeee-c9fb-4980-5eb6-59d8550f8dcb','active','34a46f11-41e6-1f18-9e37-59d8553534e7','63265c44-f3fe-8e42-1f78-599a76c05b05',1),('e519bf1a-f158-5520-1bfa-59d829f44d9f',0,'2017-10-07 01:08:29','2017-10-07 01:32:17','1','1','adwad','','',NULL,NULL,NULL,'0000-00-00 00:00:00','965389ea-0c21-7931-5c5b-59d82ea40b4e','active','23bc82e2-6707-04cd-3388-59d828d60379','63265c44-f3fe-8e42-1f78-599a76c05b05',1);
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('10b75664-ec9f-c423-7ec5-599a76fbf666','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL),('16ff0c56-837a-cf6d-e27f-59d85d66b2d5','2017-10-07 04:51:50','2017-10-07 04:51:50','1','1',NULL,'dfsf','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('19bff561-0968-309b-87af-599a769bc259','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('21131e45-70fc-034a-74c6-599a76c34f6f','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p> </p>\r\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ',0,NULL,NULL,NULL),('217c4d91-1dc8-29d6-fc9d-59d3419cc9ce','2017-10-03 07:51:37','2017-10-03 07:51:37','1','1',NULL,'vv','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('2255ffdd-b176-9d99-f6c6-59d234251917','2017-10-02 12:42:42','2017-10-02 12:42:42','1','1',NULL,'цц',NULL,'',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></td></tr></tbody></table></div>',0,NULL,NULL,NULL),('23edbc63-4ea7-b05e-8340-59d80cb1f6b1','2017-10-06 23:08:39','2017-10-06 23:09:00','1','1',NULL,'sfsdf','This template is used to send a user a link to click to reset the user\'s account password.','sdfdfsd','You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. Click on the link below to reset your password: $contact_user_link_guid                     ','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><div style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><table width=\"550\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Click on the link below to reset your password:</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $contact_user_link_guid </p>  </td>         </tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"></td>         </tr></tbody></table></div></div>',0,'',0,NULL),('2457b59c-87d4-5685-a34e-59d80dc172ea','2017-10-06 23:11:47','2017-10-06 23:11:47','1','1',NULL,'ads','Default event invite template.','sfsdfs',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('24f90ca0-ec90-4340-5057-599a760c357d','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('2ccb3cf0-2fb9-cf76-b59c-599a765ee3e6','2013-05-24 14:31:45','2017-08-21 05:56:19','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n',0,NULL,NULL,'email'),('31fedeac-9792-f388-93db-59d1f35a099a','2017-10-02 08:07:05','2017-10-02 08:07:05','1','1',NULL,'ффф','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('37b67d53-09da-14f3-1dab-59d82c5cb6ff','2017-10-07 01:22:07','2017-10-07 01:22:11','1','1',NULL,'dsdsd','Default event invite template.','dffdfsdsdsds','\r\nDear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nIf you would like to accept this invititation please click accept.\r\n $fp_events_link or $fp_events_link_declined\r\nYours Sincerely,\r\n','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,'',0,'email'),('3d75c17e-0e9c-320d-131a-59d209d3a06e','2017-10-02 09:39:44','2017-10-02 09:39:51','1','1',NULL,'rr','Template for informing a contact that their case has been closed.',NULL,' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('3e8a0768-8d88-60be-1724-59d3301309a2','2017-10-03 06:39:56','2017-10-03 06:40:03','1','1',NULL,'rr','Template for informing a contact that their case has been closed.','zxzxzxx',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('469c7931-6319-e340-d2c6-59d82d26d69b','2017-10-07 01:28:33','2017-10-07 01:28:35','1','1',NULL,'vcv',NULL,'cvc',NULL,NULL,0,'',0,NULL),('469fd4a6-7f61-a55b-c14a-59d234bc4382','2017-10-02 12:42:53','2017-10-02 12:42:53','1','1',NULL,'цц','','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></td></tr></tbody></table></div>',0,NULL,NULL,''),('46cdfb85-1be5-7fc1-e3be-59d829c901fa','2017-10-07 01:08:23','2017-10-07 01:08:27','1','1',NULL,'awda','Default event invite template.','awd','\r\nDear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nIf you would like to accept this invititation please click accept.\r\n $fp_events_link or $fp_events_link_declined\r\nYours Sincerely,\r\n','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,'',0,'email'),('4bd0eeee-c9fb-4980-5eb6-59d8550f8dcb','2017-10-07 04:19:24','2017-10-07 04:19:27','1','1',NULL,'444',NULL,'44',NULL,NULL,0,'',0,NULL),('57f00950-02b6-dbb7-4622-599a7692dfbc','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('5e3d8e92-70e8-6900-78c2-59d2164db1d4','2017-10-02 10:33:44','2017-10-02 10:33:44','1','1',NULL,'nn','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"></p><h1 style=\"font-family:Arial, Helvetica, sans-serif;font-size:24px;line-height:38.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Add your headline here..</h1></div>',0,NULL,NULL,''),('66e50510-20b8-98a5-26bb-59d82d214e9c','2017-10-07 01:25:22','2017-10-07 01:25:22','1','1',NULL,'sdcs','Default event invite template.','aacadscs',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('6a9aea02-cd32-d3d5-13f8-59d2516d2b18','2017-10-02 14:45:41','2017-10-02 14:45:45','1','1',NULL,'еуые','Template for informing a contact that their case has been closed.','тема письма',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('6cb50b10-907a-6eca-6eff-59d3410c47ec','2017-10-03 07:49:29','2017-10-03 07:49:29','1','1',NULL,'ee','Template for informing a contact that their case has been closed.','weweweewe',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('6ffd59f6-40aa-a8e6-1051-59d33432c1c2','2017-10-03 06:56:08','2017-10-03 06:56:08','1','1',NULL,'test','Template for informing a contact that their case has been closed.','trtrr',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('7cd37e0a-c569-9d89-3e7a-59d82fdce335','2017-10-07 01:35:51','2017-10-07 01:35:51','1','1',NULL,'asd','Default event invite template.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('7dd088db-b104-40f2-efe8-59d8540f1ca0','2017-10-07 04:13:48','2017-10-07 04:13:53','1','1',NULL,'sasa','Template used when informing a contact that they\'ve been given an account on the joomla portal.','awdad','Hi $contact_name,\r\n					    An account has been created for you at $portal_address.\r\n					    You may login using this email address and the password $joomla_pass','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Hi $contact_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">An account has been created for you at <a href=\"$portal_address\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$portal_address</a>.</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You may login using this email address and the password $joomla_pass</p></div>',0,'',0,NULL),('80001a66-60da-6f23-d2ac-59d3305dac66','2017-10-03 06:39:59','2017-10-03 06:39:59','1','1',NULL,'rr','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('83b206a7-d8a5-5104-c472-59d1f32e6a47','2017-10-02 08:07:04','2017-10-02 08:07:04','1','1',NULL,'ффф','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('8446be9a-cabe-159e-cf5c-59d85d750e9f','2017-10-07 04:51:49','2017-10-07 04:51:49','1','1',NULL,'dfsf','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('8711eb64-ae6b-2782-3cbe-59d216db514c','2017-10-02 10:33:48','2017-10-02 10:33:48','1','1',NULL,'nn','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"></p><h1 style=\"font-family:Arial, Helvetica, sans-serif;font-size:24px;line-height:38.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Add your headline here..</h1></div>',0,NULL,NULL,''),('8743a4f2-a3f6-17ae-826c-59d1fc20668f','2017-10-02 08:46:13','2017-10-02 08:46:13','1','1',NULL,'чссч','Default event invite template.','тема 1',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('893128b7-349a-022f-c0be-59d1f5ce6b4b','2017-10-02 08:14:08','2017-10-02 08:14:08','1','1',NULL,'zz','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('8a5d9f54-1f7f-509a-f8f5-59d3412510c2','2017-10-03 07:49:28','2017-10-03 07:49:28','1','1',NULL,'ee','Template for informing a contact that their case has been closed.','weweweewe',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('8e730ef8-6afa-7261-c2c2-599a760b950a','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('91e8c76c-7c37-882e-5c5a-59d34865cf9b','2017-10-03 08:19:27','2017-10-03 08:19:36','1','1',NULL,'vv1','Template for informing a contact that their case has been closed.','wqweerty',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('965389ea-0c21-7931-5c5b-59d82ea40b4e','2017-10-07 01:31:19','2017-10-07 01:31:22','1','1',NULL,'sda','This template is used to send a user a link to click to reset the user\'s account password.','asda','You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. Click on the link below to reset your password: $contact_user_link_guid                     ','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><div style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><table width=\"550\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Click on the link below to reset your password:</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $contact_user_link_guid </p>  </td>         </tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"></td>         </tr></tbody></table></div></div>',0,'',0,NULL),('972e928b-24cd-c2f3-d9a1-59d341bf3419','2017-10-03 07:51:39','2017-10-03 07:51:39','1','1',NULL,'vv','Template for informing a contact that their case has been closed.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('a2ecab34-dd76-ee79-6ff6-59d20356960a','2017-10-02 09:13:59','2017-10-02 09:13:59','1','1',NULL,'ggg','Template for informing a contact that their case has been closed.','dfdd',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('a5452953-bd47-dbe0-27b8-59d80dda79d0','2017-10-06 23:11:48','2017-10-06 23:11:48','1','1',NULL,'ads','Default event invite template.','sfsdfs',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('abefe36b-b743-75f4-17ef-59d1fb7904df','2017-10-02 08:38:42','2017-10-02 08:38:42','1','1',NULL,'sdsd','Template to send to a contact when a case is received from them.','asdqwdadewqwqe',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Description</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_description</td></tr></tbody></table></div>',0,NULL,NULL,''),('ae805a55-824e-f322-380a-59d219329732','2017-10-02 10:47:21','2017-10-02 10:47:28','1','1',NULL,'new','Template for informing a contact that their case has been closed.',NULL,' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('b426574f-8530-94aa-b944-59d835a03b78','2017-10-07 01:59:55','2017-10-07 01:59:58','1','1',NULL,'awd',NULL,'awdad',NULL,NULL,0,'',0,NULL),('b5d8332f-7d05-4970-2ccc-59d8567d24f0','2017-10-07 04:22:41','2017-10-07 04:22:45','1','1',NULL,'we',NULL,'w',NULL,NULL,0,'',0,NULL),('b793ed5d-bf0c-3ca7-1084-59d86b0a0270','2017-10-07 05:52:51','2017-10-07 05:52:55','1','1',NULL,'asdasd','Template for informing a contact that their case has been closed.','asda',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('b7f1f5df-e4a7-9061-2c58-59d82d5a12d9','2017-10-07 01:25:24','2017-10-07 01:25:24','1','1',NULL,'sdcs','Default event invite template.','aacadscs',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('b8043ae0-2614-7263-f815-59d2045eebdf','2017-10-02 09:19:03','2017-10-02 09:19:09','1','1',NULL,'уу','Template for informing a contact that their case has been closed.','бььллол',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolutionTitleTitleTitleLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div>',0,'',0,NULL),('bf9c5c37-e10b-ba4a-c3f1-59d1f5379b90','2017-10-02 08:14:06','2017-10-02 08:14:12','1','1',NULL,'zz','Template for informing a contact that their case has been closed.',NULL,' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('c40c03f2-e4fc-4305-282c-59d203733515','2017-10-02 09:13:56','2017-10-02 09:13:56','1','1',NULL,'ggg','Template for informing a contact that their case has been closed.','dfdd',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,NULL,NULL,''),('c57f3f36-95c1-e871-9f2a-59d8349830a9','2017-10-07 01:57:36','2017-10-07 01:57:49','1','1',NULL,'awd',NULL,NULL,NULL,NULL,0,'',0,NULL),('c6f3a423-a5ae-b66f-8682-59d204610ec5','2017-10-02 09:19:06','2017-10-02 09:19:06','1','1',NULL,'уу','Template for informing a contact that their case has been closed.','бььллол',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div>',0,NULL,NULL,''),('c857af92-7353-104b-c58d-59d82e269d3d','2017-10-07 01:30:24','2017-10-07 01:30:28','1','1',NULL,'sdfs','This template is used to send a user a link to click to reset the user\'s account password.','sdfsa','You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. Click on the link below to reset your password: $contact_user_link_guid                     ','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><div style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><table width=\"550\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Click on the link below to reset your password:</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $contact_user_link_guid </p>  </td>         </tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"></td>         </tr></tbody></table></div></div>',0,'',0,NULL),('d5842676-e843-6da2-47c2-59d334e371e9','2017-10-03 06:56:05','2017-10-03 07:47:04','1','1',NULL,'test','Template for informing a contact that their case has been closed.','trtrr',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('d5d3eb0a-df96-1540-bdf2-59d82841d034','2017-10-07 01:05:07','2017-10-07 01:05:12','1','1',NULL,'dsasd','This template is used to send a user a link to click to reset the user\'s account password.','asdasdas','You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. Click on the link below to reset your password: $contact_user_link_guid                     ','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><div style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><table width=\"550\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Click on the link below to reset your password:</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $contact_user_link_guid </p>  </td>         </tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"></td>         </tr></tbody></table></div></div>',0,'',0,NULL),('d6a1e6d1-1f22-1190-d4c4-59d208d305c1','2017-10-02 09:35:29','2017-10-02 09:35:42','1','1',NULL,'shabl1','Template for informing a contact that their case has been closed.',NULL,' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('d956bf63-e6bc-cd93-6963-59d86b3b741a','2017-10-07 05:50:01','2017-10-07 05:50:06','1','1',NULL,'ss',NULL,'sds',NULL,NULL,0,'',0,NULL),('dde53347-f0cb-dc39-3335-59d1fe47bbb9','2017-10-02 08:52:52','2017-10-02 08:52:59','1','1',NULL,'ууу','Template for informing a contact that their case has been closed.','уууууу',' Hi $contact_first_name $contact_last_name,\r\n					    Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					    Status$acase_statusReference$acase_case_numberResolution$acase_resolution','<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">Resolution</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\">$acase_resolution</td></tr></tbody></table></div>',0,'',0,NULL),('df314985-4e04-d8f8-bf4f-59d82fd614b5','2017-10-07 01:35:49','2017-10-07 01:35:49','1','1',NULL,'asd','Default event invite template.','',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\">\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Dear $contact_name,</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$fp_events_description</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">If you would like to accept this invititation please click accept.</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $fp_events_link or $fp_events_link_declined</p>\r\n<p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Yours Sincerely,</p>\r\n</div>',0,NULL,NULL,'email'),('ebb1c0e4-cedc-73b3-66b0-599a76ccb3a4','2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('f26bb8e9-4872-fec6-1afb-59d82eae3734','2017-10-07 01:30:30','2017-10-07 01:30:30','1','1',NULL,'sdfs','This template is used to send a user a link to click to reset the user\'s account password.','sdfsa',NULL,'<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><div style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><table width=\"550\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Click on the link below to reset your password:</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> $contact_user_link_guid </p>  </td>         </tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px;margin:0px;\"></td>         </tr></tbody></table></div></div>',0,NULL,NULL,'');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES ('17b81158-5307-d7da-4795-599bd5447572','Leads 4a2d9def-1fda-713f-409f-599a892565f9 1','2017-08-22 06:57:04','2017-08-22 06:57:20','1','1',NULL,1,'1','4a2d9def-1fda-713f-409f-599a892565f9','Leads'),('438c3ca7-7008-db35-d76f-59a964f9dab7','Leads 838d76b5-f039-452c-f060-59a95005195b 1','2017-09-01 13:47:21','2017-09-01 13:47:21','1','1',NULL,0,'1','838d76b5-f039-452c-f060-59a95005195b','Leads'),('6f74c450-6011-7f82-88d5-59a950e254c1','Leads 838d76b5-f039-452c-f060-59a95005195b 1','2017-09-01 12:22:14','2017-09-01 12:22:22','1','1',NULL,1,'1','838d76b5-f039-452c-f060-59a95005195b','Leads'),('a1a5a94d-6a04-7cba-344e-59a950e2bdfb','Leads 838d76b5-f039-452c-f060-59a95005195b 1','2017-09-01 12:21:49','2017-09-01 12:21:57','1','1',NULL,1,'1','838d76b5-f039-452c-f060-59a95005195b','Leads'),('a5e1e6ff-9f80-e1ac-e78e-599bdf43d55c','Leads 4a2d9def-1fda-713f-409f-599a892565f9 1','2017-08-22 07:40:23','2017-08-22 08:05:55','1','1',NULL,1,'1','4a2d9def-1fda-713f-409f-599a892565f9','Leads'),('d4b42d2e-7971-64fa-db2e-59a951df42d8','Leads 838d76b5-f039-452c-f060-59a95005195b 1','2017-09-01 12:22:26','2017-09-01 13:06:26','1','1',NULL,1,'1','838d76b5-f039-452c-f060-59a95005195b','Leads'),('e7c5f047-3b4e-1625-5d9c-599ae1a708ee','SecurityGroups 5fceea0f-484d-978c-0c13-599ae1171c0d 1','2017-08-21 13:34:41','2017-08-21 13:39:50','1','1',NULL,1,'1','5fceea0f-484d-978c-0c13-599ae1171c0d','SecurityGroups'),('ee3c2081-39ed-5757-6715-59a9502faed1','Leads 838d76b5-f039-452c-f060-59a95005195b 1','2017-09-01 12:22:01','2017-09-01 12:22:09','1','1',NULL,1,'1','838d76b5-f039-452c-f060-59a95005195b','Leads');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('bh_communicatorsggg_c','ggg_c','LBL_GGG','','','bh_communicators','multitextfield',255,0,NULL,'2017-09-27 09:28:06',0,0,0,0,0,'false','','','',''),('Callsasterisk_caller_id_c','asterisk_caller_id_c','LBL_ASTERISK_CALLER_ID',NULL,'trimmed callerId','Calls','varchar',45,0,NULL,'2017-09-29 07:31:15',0,0,0,0,0,'true',NULL,NULL,NULL,NULL),('Callsasterisk_call_id_c','asterisk_call_id_c','LBL_ASTERISK_CALL_ID','','This is the unique id assigned to this call by the PBX, Useful for debugging but otherwise no reason to display to an end user.','Calls','varchar',45,0,NULL,'2017-09-28 13:40:59',0,0,0,0,0,'true',NULL,NULL,NULL,''),('Callsasterisk_inbound_ext_c','asterisk_inbound_ext_c','LBL_ASTERISK_INBOUND_EXT','','Contains the inbounded extension.  This is useful for identifying the queue or ringgroup that the call came in on.','Calls','varchar',45,0,NULL,'2017-09-28 13:40:59',0,0,0,0,0,'true',NULL,NULL,NULL,''),('Callsasterisk_user_ext_c','asterisk_user_ext_c','LBL_ASTERISK_USER_EXT','','Contains the user extension that answered or placed the call.','Calls','varchar',45,0,NULL,'2017-09-28 13:40:59',0,0,0,0,0,'true',NULL,NULL,NULL,''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2017-08-21 05:56:19',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2017-08-21 05:56:19',0,0,0,0,1,'true','8','','',''),('Usersasterisk_ext_c','asterisk_ext_c','LBL_ASTERISK_EXT',NULL,NULL,'Users','varchar',45,0,NULL,'2017-09-29 07:31:15',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Usersasterisk_inbound_c','asterisk_inbound_c','LBL_ASTERISK_INBOUND',NULL,NULL,'Users','bool',45,0,'0','2017-09-29 07:31:15',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Usersasterisk_outbound_c','asterisk_outbound_c','LBL_ASTERISK_OUTBOUND',NULL,NULL,'Users','bool',45,0,'0','2017-09-29 07:31:15',0,0,0,0,1,'true',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES ('c51c21ec-e3af-fd01-ac73-59d34539da7d','test','','',0,1,0,'','1','1','1',0);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
INSERT INTO `folders_subscriptions` VALUES ('c51c276d-12a1-c781-26aa-59d345fcb829','c51c21ec-e3af-fd01-ac73-59d34539da7d','1'),('f302c1a4-f140-9bd5-6181-59d345c482e9','c51c21ec-e3af-fd01-ac73-59d34539da7d','1');
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
INSERT INTO `fp_events` VALUES ('81b32b09-df70-2050-0931-59cbbaabeb4f','Новое','2017-09-27 14:50:21','2017-09-27 14:50:21','1','1',NULL,0,'1',0,NULL,'2017-09-27 09:45:00','2017-09-27 10:45:00',NULL,NULL,NULL,'',NULL,'');
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
INSERT INTO `fp_events_leads_1_c` VALUES ('89ce5c2e-f1a7-5520-42eb-59cbba0bd971','2017-09-27 14:50:21',0,'81b32b09-df70-2050-0931-59cbbaabeb4f','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Not Invited','No Response',0);
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
INSERT INTO `inbound_email` VALUES ('d5395caa-5dc9-4cd0-c5b0-59d34509d5a0',0,'2017-10-03 07:59:36','2017-10-03 07:59:36','1','1','test','Active','smtp.gmail.com','admin','foN4bR2k6hA=',143,'::::::imap::::','INBOX',0,'pick','','YToxMjp7czo5OiJmcm9tX25hbWUiO3M6MTM6IkFkbWluaXN0cmF0b3IiO3M6OToiZnJvbV9hZGRyIjtzOjEzOiJuZXdAYWRtaW4uY29tIjtzOjEzOiJyZXBseV90b19uYW1lIjtzOjA6IiI7czoxMzoicmVwbHlfdG9fYWRkciI7czowOiIiO3M6MTA6Im9ubHlfc2luY2UiO2I6MDtzOjEzOiJmaWx0ZXJfZG9tYWluIjtzOjA6IiI7czozMDoiZW1haWxfbnVtX2F1dG9yZXBsaWVzXzI0X2hvdXJzIjtzOjI6IjEwIjtzOjI2OiJhbGxvd19vdXRib3VuZF9ncm91cF91c2FnZSI7YjowO3M6MTE6InRyYXNoRm9sZGVyIjtzOjE0OiJyZW1vdmVkIEZPbGRlciI7czoxMDoic2VudEZvbGRlciI7czowOiIiO3M6MTI6ImlzQXV0b0ltcG9ydCI7YjoxO3M6MjU6ImxlYXZlTWVzc2FnZXNPbk1haWxTZXJ2ZXIiO2k6MTt9','c51c2309-af48-a342-d5aa-59d345a67028',0,'c51c21ec-e3af-fd01-ac73-59d34539da7d');
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `contact_person_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES ('10c2e549-c39f-7ef0-f7da-59b11183c89e','2017-09-07 09:28:59','2017-10-05 06:08:07','1','1',NULL,0,'1',NULL,'Андрей',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'1312313231',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,0,'',NULL,NULL,NULL),('15b2317d-5f17-b967-0f5d-59c3c87bbba0','2017-09-21 14:09:43','2017-09-21 14:09:43','1','1',NULL,0,'1',NULL,'','Мама','',NULL,'',0,NULL,'','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'','',NULL,'New',NULL,NULL,'',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,'',NULL,'^^','^^',NULL,'^^',NULL,NULL,'^^','^^',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),('1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 09:19:04','2017-10-05 06:19:20','1','1',NULL,0,'1',NULL,'Иван','Иванов',NULL,'images.jpg',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'4648686464',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,'Иванович',2,'',NULL,NULL,NULL),('5a7265ea-aa41-cc92-4445-59b8ce6cc94a','2017-09-13 06:23:00','2017-10-05 06:05:15','1','1',NULL,0,'1',NULL,'Николай','Васильев',NULL,NULL,NULL,0,NULL,NULL,'+38(097) 677-67-67',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'1231231231',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,NULL,'ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^^|^13^,^0^,^0^,^viber^,^13',NULL,NULL,NULL),('6acfcff6-723f-f3e3-3c1b-59c377a909f2','2017-09-21 08:23:44','2017-10-05 06:16:52','1','1',NULL,0,'1',NULL,'Сергей',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'1_________',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,NULL,'325235^,^1^,^0^,^whatsapp^,^325235^|^235523^,^0^,^0^,^viber^,^235523^|^532325^,^0^,^0^,^facebook^,^532325',NULL,NULL,NULL),('70007648-47bc-d3b4-9904-59b6a1659460','2017-09-11 14:46:53','2017-10-05 06:13:51','1','1',NULL,0,'1',NULL,'Алексей',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'6465465465',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,'АБ \"КЛІРИНГОВИЙ ДІМ\"','300647','АТ \"Ощадбанк\"','300465',NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,0,'',NULL,NULL,NULL),('8d61d039-9372-369c-f48f-59c38ae4f7fb','2017-09-21 09:47:52','2017-10-05 06:13:30','1','1',NULL,0,'1',NULL,'Иван',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'4_________',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,0,'',NULL,NULL,NULL),('98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','2017-09-26 15:04:25','2017-10-04 12:04:30','1','1','tsggd',0,'1',NULL,'Валера',NULL,NULL,NULL,NULL,0,NULL,'+38(097) 880-84-50','+38(70) 10_-__-__',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Cold Call','jgjhl','In Process',NULL,'','dgx',NULL,'','','',NULL,'55454','',NULL,NULL,NULL,'http://','lead','man',0,'444_______','2017-09-02','^official^','^^',NULL,'^judded^','jggjg','unmarried','^^','^^',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+38(068) 668-66-86','+38(066) 868-68-68','+38(086) 868-68-66',NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,'Jfjf','Hhfhf',NULL,NULL,0,'fhjgj^,^1^,^0^,^facebook^,^^|^jkgkgk^,^0^,^0^,^skype^,^^|^kggjgkjkghkh^,^0^,^0^,^whatsapp^,^',NULL,NULL,NULL),('9ce12f06-52ad-9bbe-3467-59c36fa66eef','2017-09-21 07:50:10','2017-10-05 06:08:17','1','1',NULL,0,'1',NULL,'Виталий','Dsddsd',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'3333333333',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,0,'',NULL,NULL,NULL),('a909e9a5-90ce-7a2f-fd1a-59c38846be76','2017-09-21 09:39:16','2017-10-05 06:15:48','1','1',NULL,0,'1',NULL,'Евгений',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://',NULL,'man',0,'23________',NULL,'^^','^^',NULL,'^^',NULL,'unmarried','^^','^^','once',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'^^',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://','http://','http://',NULL,'http://','http://','http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0,NULL,NULL,NULL,NULL,0,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_aos_contracts_1_c`
--

DROP TABLE IF EXISTS `leads_aos_contracts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_aos_contracts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_aos_contracts_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_aos_contracts_1aos_contracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_aos_contracts_1_ida1` (`leads_aos_contracts_1leads_ida`),
  KEY `leads_aos_contracts_1_alt` (`leads_aos_contracts_1aos_contracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_aos_contracts_1_c`
--

LOCK TABLES `leads_aos_contracts_1_c` WRITE;
/*!40000 ALTER TABLE `leads_aos_contracts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_aos_contracts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
INSERT INTO `leads_audit` VALUES ('18519e26-7f46-6e15-8841-59c21c8e8383','5a7265ea-aa41-cc92-4445-59b8ce6cc94a','2017-09-20 07:43:37','1','phone_work','phone','','+38(097) 677-67-67',NULL,NULL),('198a36d7-d0eb-cfbe-3767-59aced56d740','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-04 06:07:12','1','phone_work','phone','+38063789456','+38(063) 123-45-67',NULL,NULL),('20c24308-0e75-ad33-3203-59a4106b81a2','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-28 12:47:33','1','phone_work','phone','102','+38063789456',NULL,NULL),('219df5fd-c829-2b4c-cff9-59d1d768793b','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','2017-10-02 06:04:49','1','phone_work','phone','7010','+38(70) 10_-__-__',NULL,NULL),('24f541a9-06b9-d053-0083-599be9d7b575','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:19:25','1','volume_trans1','varchar',NULL,'2 литра',NULL,NULL),('25896ab8-0e07-48d8-12ef-59b122adfde8','1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 10:41:26','1','yearissuetrans1','enum',NULL,'1970',NULL,NULL),('25b0d33e-a0b5-f2c9-3643-599be911b516','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:19:25','1','volume_trans2','varchar',NULL,'3,5 литра',NULL,NULL),('45391111-1419-e591-3fb0-599be7f697ad','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:11:19','1','yearissuetrans2','varchar','1980','2014',NULL,NULL),('45b6284f-d313-46a7-e3a2-599be7be2307','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:11:19','1','model_trans2','varchar',NULL,'TT',NULL,NULL),('4e23c647-1e08-e26d-14ec-59ad4bf33c7f','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-04 12:47:29','1','assigned_user_id','relate','eff07114-603c-c0d2-0e5e-599bcd264773','1',NULL,NULL),('552eb0d2-8acf-eb2f-1056-59a94304c40e','484a8025-f2a1-f64a-e028-59a67cff19a5','2017-09-01 11:25:08','1','assigned_user_id','relate','1','eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL),('57965704-d6de-5bb7-8d13-59a9470d04a6','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-01 11:41:11','1','assigned_user_id','relate','1','eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL),('58555ce1-ecea-317a-0185-59a959522716','838d76b5-f039-452c-f060-59a95005195b','2017-09-01 13:00:08','1','assigned_user_id','relate','1','eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL),('720cffe3-bad6-aff8-5092-599be1609d88','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 07:47:34','1','model_trans1','varchar',NULL,'Carina - E',NULL,NULL),('76b8813f-f34c-826c-99a3-599bf0d07f98','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:49:11','1','yearissuetrans3','varchar',NULL,'1995',NULL,NULL),('7754cd2a-00b4-d2e1-d5fe-599bf04f5456','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:49:11','1','yearissuetrans4','varchar',NULL,'1970',NULL,NULL),('8bcacf1d-19dc-f6b0-acf7-599be5133168','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 08:05:32','1','yearissuetrans2','varchar',NULL,'1980',NULL,NULL),('8caabb34-e361-5f6a-11eb-59ca5047fcc4','6acfcff6-723f-f3e3-3c1b-59c377a909f2','2017-09-26 13:03:56','1','communicator','MultiTextField','','325235^,^1^,^0^,^whatsapp^,^325235^|^235523^,^0^,^0^,^viber^,^235523^|^532325^,^0^,^0^,^facebook^,^532325',NULL,NULL),('91210b28-30ec-3629-44fc-599bd89b1808','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 07:08:38','1','yearissuetrans1','varchar',NULL,'1986',NULL,NULL),('973935a4-d43f-84bb-0020-59b105c40230','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-07 08:39:15','1','yearissuetrans1','enum','1970','2015',NULL,NULL),('97f4be78-7dad-9435-85c8-59b1054a595e','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-07 08:39:15','1','yearissuetrans2','enum','2014','2016',NULL,NULL),('98eeb2a5-fdcd-23e6-c1ae-59b105cad618','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-07 08:39:15','1','yearissuetrans3','enum','1995','2017',NULL,NULL),('99aa3c05-11b4-5806-b203-59b105afce23','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-07 08:39:15','1','yearissuetrans4','enum','1970','2018',NULL,NULL),('a01936af-e622-006c-d601-599bf71e1283','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 09:22:02','1','volume_trans3','varchar',NULL,'1,5 литра',NULL,NULL),('a04c8708-1beb-d053-3dcd-59b103e7f706','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-07 08:30:15','1','yearissuetrans1','enum','1986','1970',NULL,NULL),('a113384a-8cae-c519-09ee-599bf773c088','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 09:22:02','1','volume_trans4','varchar',NULL,'10 литров',NULL,NULL),('aa89a0dd-bd83-660b-b5d1-59ad4a1eaca6','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-04 12:42:23','1','assigned_user_id','relate','1','eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL),('abe68b8a-4548-b0a7-aef3-59acedca9615','4a2d9def-1fda-713f-409f-599a892565f9','2017-09-04 06:07:56','1','assigned_user_id','relate','eff07114-603c-c0d2-0e5e-599bcd264773','1',NULL,NULL),('b56335e1-1c63-6683-c2c8-599bf57f8889','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 09:11:59','1','model_trans3','varchar',NULL,'VRX',NULL,NULL),('b63e04da-4186-b39b-e0f8-599bf5ad0df4','4a2d9def-1fda-713f-409f-599a892565f9','2017-08-22 09:11:59','1','model_trans4','varchar',NULL,'Z 350',NULL,NULL),('bb5ab211-dcb6-20f3-162a-59a9686113fc','838d76b5-f039-452c-f060-59a95005195b','2017-09-01 14:00:34','1','assigned_user_id','relate','eff07114-603c-c0d2-0e5e-599bcd264773','1',NULL,NULL),('d1cef6a8-5550-5bf1-c885-59ca6105bbd2','5a7265ea-aa41-cc92-4445-59b8ce6cc94a','2017-09-26 14:18:47','1','communicator','MultiTextField','ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^','ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^^|^13^,^0^,^0^,^viber^,^13',NULL,NULL),('d96ab0f8-560b-d736-b0c8-59a96d058b2e','838d76b5-f039-452c-f060-59a95005195b','2017-09-01 14:22:43','1','assigned_user_id','relate','1','eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL),('e0bac5ef-9656-7f1b-4bdc-59b1167fe228','1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 09:52:07','1','volume_trans1','decimal','0.0','2.5',NULL,NULL),('e1c84315-7339-8092-324d-59ca198cf2d9','5a7265ea-aa41-cc92-4445-59b8ce6cc94a','2017-09-26 09:11:08','1','communicator','MultiTextField','','ьфьыф^,^1^,^0^,^viber^,^^|^пывпвы^,^0^,^0^,^viber^,^^|^пыввпы^,^0^,^0^,^viber^,^',NULL,NULL),('e73425cc-e934-43cf-3d13-59b129f47c3a','1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 11:12:23','1','yearissuetrans2','enum',NULL,'1971',NULL,NULL),('e7efa56e-6d64-020c-1c08-59b1293a2a78','1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 11:12:23','1','yearissuetrans3','enum',NULL,'1972',NULL,NULL),('e8e9af67-9ca5-d096-3d7d-59b129784f3b','1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 11:12:23','1','yearissuetrans4','enum',NULL,'1973',NULL,NULL),('ed770f3e-f9ca-da09-728b-59cde5008fd4','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','2017-09-29 06:16:02','1','phone_work','phone','+38(098) 777-77-77','+38(093) 779-56-18',NULL,NULL),('ef9f7dc3-f671-889e-5a1d-59b116679a84','1a850344-233e-e32f-fe21-59b10fc56fe1','2017-09-07 09:52:07','1','volume_trans2','decimal','0.0','3.2',NULL,NULL);
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_autotransport_1_c`
--

DROP TABLE IF EXISTS `leads_bh_autotransport_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_autotransport_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_autotransport_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_autotransport_1bh_autotransport_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_autotransport_1_ida1` (`leads_bh_autotransport_1leads_ida`),
  KEY `leads_bh_autotransport_1_alt` (`leads_bh_autotransport_1bh_autotransport_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_autotransport_1_c`
--

LOCK TABLES `leads_bh_autotransport_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_autotransport_1_c` DISABLE KEYS */;
INSERT INTO `leads_bh_autotransport_1_c` VALUES ('4524383f-5bed-a19e-7ecc-59c21d305ca1','2017-09-20 07:48:55',0,'5a7265ea-aa41-cc92-4445-59b8ce6cc94a','35a4e2aa-5dc6-d455-e9e9-59c21d48be24'),('5a5c5dc6-8dab-ddd5-1648-59cc9c2dc71e','2017-09-28 06:52:14',0,'98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','4ead9f49-d87b-7fe5-c730-59cc9c77c36a'),('a2d70787-8d8e-ac70-2736-59cc9c759b5f','2017-09-28 06:53:32',0,'98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','9baff353-0cb6-4435-6a1f-59cc9c9d4fcc');
/*!40000 ALTER TABLE `leads_bh_autotransport_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_lead_adress_1_c`
--

DROP TABLE IF EXISTS `leads_bh_lead_adress_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_lead_adress_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_lead_adress_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_lead_adress_1bh_lead_adress_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_lead_adress_1_ida1` (`leads_bh_lead_adress_1leads_ida`),
  KEY `leads_bh_lead_adress_1_alt` (`leads_bh_lead_adress_1bh_lead_adress_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_lead_adress_1_c`
--

LOCK TABLES `leads_bh_lead_adress_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_lead_adress_1_c` DISABLE KEYS */;
INSERT INTO `leads_bh_lead_adress_1_c` VALUES ('1cd949f6-ce79-b174-2394-59c2583894d1','2017-09-20 12:00:28',0,'5a7265ea-aa41-cc92-4445-59b8ce6cc94a','cdfe0480-e6e6-db79-ad5f-59c258a02b61'),('89914f51-b039-deb5-94c0-59c4caf3bd5d','2017-09-22 08:33:02',0,'5a7265ea-aa41-cc92-4445-59b8ce6cc94a','71b9c3fb-17fe-fb62-95b1-59c4ca9a4524'),('df65f8b3-af4e-18f9-0dbf-59c4ca36dc0c','2017-09-22 08:31:42',0,'5a7265ea-aa41-cc92-4445-59b8ce6cc94a','a4083cbf-858f-e628-b24b-59c4cafc804b');
/*!40000 ALTER TABLE `leads_bh_lead_adress_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_marketing_response_1_c`
--

DROP TABLE IF EXISTS `leads_bh_marketing_response_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_marketing_response_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_marketing_response_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_marketing_response_1bh_marketing_response_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_marketing_response_1_ida1` (`leads_bh_marketing_response_1leads_ida`),
  KEY `leads_bh_marketing_response_1_alt` (`leads_bh_marketing_response_1bh_marketing_response_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_marketing_response_1_c`
--

LOCK TABLES `leads_bh_marketing_response_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_marketing_response_1_c` DISABLE KEYS */;
INSERT INTO `leads_bh_marketing_response_1_c` VALUES ('beb491ad-8e7f-fd26-bc4e-59d49d84a6f2','2017-10-04 08:38:19',0,'98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','7769832a-236d-bfbd-fcb6-59d49d972ed1'),('d1c5a836-73b8-7861-1e08-59d4b7d4e328','2017-10-04 10:26:27',0,'1a850344-233e-e32f-fe21-59b10fc56fe1','39d947d8-fec3-148a-3c9a-59d34f872059');
/*!40000 ALTER TABLE `leads_bh_marketing_response_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_packet_activation_1_c`
--

DROP TABLE IF EXISTS `leads_bh_packet_activation_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_packet_activation_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_packet_activation_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_packet_activation_1bh_packet_activation_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_packet_activation_1_ida1` (`leads_bh_packet_activation_1leads_ida`),
  KEY `leads_bh_packet_activation_1_alt` (`leads_bh_packet_activation_1bh_packet_activation_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_packet_activation_1_c`
--

LOCK TABLES `leads_bh_packet_activation_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_packet_activation_1_c` DISABLE KEYS */;
INSERT INTO `leads_bh_packet_activation_1_c` VALUES ('8f3609d9-b6d0-0126-faf0-59bbbc78846b','2017-09-15 11:40:01',0,'1a850344-233e-e32f-fe21-59b10fc56fe1','2905487e-f13a-594a-6d2f-59bb73118e66');
/*!40000 ALTER TABLE `leads_bh_packet_activation_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_passports_1_c`
--

DROP TABLE IF EXISTS `leads_bh_passports_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_passports_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_passports_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_passports_1bh_passports_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_passports_1_ida1` (`leads_bh_passports_1leads_ida`),
  KEY `leads_bh_passports_1_alt` (`leads_bh_passports_1bh_passports_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_passports_1_c`
--

LOCK TABLES `leads_bh_passports_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_passports_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_bh_passports_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_phones_1_c`
--

DROP TABLE IF EXISTS `leads_bh_phones_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_phones_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_phones_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_phones_1bh_phones_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_phones_1_ida1` (`leads_bh_phones_1leads_ida`),
  KEY `leads_bh_phones_1_alt` (`leads_bh_phones_1bh_phones_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_phones_1_c`
--

LOCK TABLES `leads_bh_phones_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_phones_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_bh_phones_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_place_of_work_1_c`
--

DROP TABLE IF EXISTS `leads_bh_place_of_work_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_place_of_work_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_place_of_work_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_place_of_work_1bh_place_of_work_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_place_of_work_1_ida1` (`leads_bh_place_of_work_1leads_ida`),
  KEY `leads_bh_place_of_work_1_alt` (`leads_bh_place_of_work_1bh_place_of_work_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_place_of_work_1_c`
--

LOCK TABLES `leads_bh_place_of_work_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_place_of_work_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_bh_place_of_work_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_bh_realty_1_c`
--

DROP TABLE IF EXISTS `leads_bh_realty_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_bh_realty_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_bh_realty_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_bh_realty_1bh_realty_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_bh_realty_1_ida1` (`leads_bh_realty_1leads_ida`),
  KEY `leads_bh_realty_1_alt` (`leads_bh_realty_1bh_realty_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_bh_realty_1_c`
--

LOCK TABLES `leads_bh_realty_1_c` WRITE;
/*!40000 ALTER TABLE `leads_bh_realty_1_c` DISABLE KEYS */;
INSERT INTO `leads_bh_realty_1_c` VALUES ('4db2eed4-17e5-cca1-898a-59d4ce4e8195','2017-10-04 12:04:30',0,'98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','900c0ca4-717c-71a5-03f9-59b7d157cf73');
/*!40000 ALTER TABLE `leads_bh_realty_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cases_1_c`
--

DROP TABLE IF EXISTS `leads_cases_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cases_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_cases_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_cases_1cases_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_cases_1_ida1` (`leads_cases_1leads_ida`),
  KEY `leads_cases_1_alt` (`leads_cases_1cases_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cases_1_c`
--

LOCK TABLES `leads_cases_1_c` WRITE;
/*!40000 ALTER TABLE `leads_cases_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cases_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
INSERT INTO `leads_cstm` VALUES ('10c2e549-c39f-7ef0-f7da-59b11183c89e',0.00000000,0.00000000,'',''),('15b2317d-5f17-b967-0f5d-59c3c87bbba0',0.00000000,0.00000000,NULL,NULL),('1a850344-233e-e32f-fe21-59b10fc56fe1',0.00000000,0.00000000,'',''),('3e372765-5b6e-54bd-3f65-59aea194b1e0',0.00000000,0.00000000,'',''),('42592f10-786a-0ed0-3aa8-59b0e0dcb109',0.00000000,0.00000000,NULL,NULL),('484a8025-f2a1-f64a-e028-59a67cff19a5',0.00000000,0.00000000,'',''),('4a2d9def-1fda-713f-409f-599a892565f9',0.00000000,0.00000000,'',''),('559fa3be-40ba-9fe7-c560-599bcbc2bded',0.00000000,0.00000000,NULL,NULL),('5a7265ea-aa41-cc92-4445-59b8ce6cc94a',0.00000000,0.00000000,'',''),('6acfcff6-723f-f3e3-3c1b-59c377a909f2',0.00000000,0.00000000,'',''),('70007648-47bc-d3b4-9904-59b6a1659460',0.00000000,0.00000000,'',''),('711acfc9-ba15-32d6-171e-59affbea8e58',0.00000000,0.00000000,NULL,NULL),('832522a5-c2bf-1b3f-6541-59a50fc69935',0.00000000,0.00000000,'',''),('838d76b5-f039-452c-f060-59a95005195b',0.00000000,0.00000000,'',''),('86bdbdc5-2a0a-fde9-d210-59a512d4d699',0.00000000,0.00000000,NULL,NULL),('8d61d039-9372-369c-f48f-59c38ae4f7fb',0.00000000,0.00000000,'',''),('98d382fa-5d6c-7a6e-c895-59ca6cc9dc07',0.00000000,0.00000000,'',''),('9ce12f06-52ad-9bbe-3467-59c36fa66eef',0.00000000,0.00000000,'',''),('a909e9a5-90ce-7a2f-fd1a-59c38846be76',0.00000000,0.00000000,'',''),('b55d023e-ae8f-cead-e37a-59afef888ffe',0.00000000,0.00000000,NULL,NULL),('e32272a9-d480-2e6c-abc4-59b0e087ec6f',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_documents_1_c`
--

DROP TABLE IF EXISTS `leads_documents_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_documents_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_documents_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_documents_1documents_idb` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_documents_1_ida1` (`leads_documents_1leads_ida`),
  KEY `leads_documents_1_alt` (`leads_documents_1documents_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_documents_1_c`
--

LOCK TABLES `leads_documents_1_c` WRITE;
/*!40000 ALTER TABLE `leads_documents_1_c` DISABLE KEYS */;
INSERT INTO `leads_documents_1_c` VALUES ('b154b383-d7a3-bfed-edac-59ba79e2c6be','2017-09-14 12:45:48',0,'1a850344-233e-e32f-fe21-59b10fc56fe1','9193a8b7-a12e-afbf-3979-59ba79cb5d22',NULL);
/*!40000 ALTER TABLE `leads_documents_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_leads_2_c`
--

DROP TABLE IF EXISTS `leads_leads_2_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_leads_2_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_leads_2leads_ida` varchar(36) DEFAULT NULL,
  `leads_leads_2leads_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_leads_2_ida1` (`leads_leads_2leads_ida`),
  KEY `leads_leads_2_alt` (`leads_leads_2leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_leads_2_c`
--

LOCK TABLES `leads_leads_2_c` WRITE;
/*!40000 ALTER TABLE `leads_leads_2_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_leads_2_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('63265c44-f3fe-8e42-1f78-599a76c05b05','system','system','1','SMTP','other','smtp.gmail.com',25,'admin','kUR3hxAdhzU=',1,'0',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
INSERT INTO `prospect_list_campaigns` VALUES ('1cb08f13-cb7c-162f-d58a-59d22bfbb74e','ef76f4c9-a638-bab4-f91a-59d1e4089280','1bf2e844-8764-d8e2-b3cd-59d228b2fa80','2017-10-02 12:03:29',0),('3799d0ba-f4ba-6fc5-3f1a-59d81f15c238','ef76f4c9-a638-bab4-f91a-59d1e4089280','3c20d2e6-6876-1220-6f13-59d81f430ac9','2017-10-07 00:28:57',0),('39cc6032-ed3e-b012-cc95-59d81f737b13','525749a1-daad-f8b3-a8d8-59d34a835152','3c20d2e6-6876-1220-6f13-59d81f430ac9','2017-10-07 00:28:57',0),('3b9b4103-321b-2b5b-dd6a-59d1f3d4b3bd','ef76f4c9-a638-bab4-f91a-59d1e4089280','51b98206-9490-5a8a-b032-59d1e7fc5b7a','2017-10-02 08:05:02',0),('575ddcea-fc4d-13bf-a0d3-59d85b194235','ef76f4c9-a638-bab4-f91a-59d1e4089280','e0c503b8-9bf3-b52e-c7e2-59d85b50f1cf','2017-10-07 04:43:57',0),('5777d2b3-4782-4c51-1eef-59d34ac4e63f','525749a1-daad-f8b3-a8d8-59d34a835152','3f0232ce-059c-a184-3838-59d34aed4ef4','2017-10-03 08:31:34',0),('5af06258-27f2-00e3-e353-59d238ba3c36','ef76f4c9-a638-bab4-f91a-59d1e4089280','47c9c4b7-4e4b-6596-2ad9-59d238ebe0bd','2017-10-02 13:02:43',0),('5f7699b0-ce1b-efcd-866f-59d334981b63','ef76f4c9-a638-bab4-f91a-59d1e4089280','b5183c65-1b93-5e6e-b364-59d24333e4a8','2017-10-03 06:55:13',0),('761db42a-7646-6dfe-acf7-59d86b155cfc','421c6424-108b-ba6d-020a-59d86b65147a','13483d16-d582-2980-91c6-59d86beadf2c','2017-10-07 05:52:13',0),('76d9335d-6257-bce5-098b-59d86b014a60','5cf7d53c-4e31-4e83-9047-59d86bce1257','13483d16-d582-2980-91c6-59d86beadf2c','2017-10-07 05:52:13',0),('77563957-c670-dceb-fe73-59d86b52d646','69aa090d-c7d6-ba12-c001-59d86b8add5f','13483d16-d582-2980-91c6-59d86beadf2c','2017-10-07 05:52:13',0),('7962b3b0-3aed-5bf9-23ce-59d81e1dee98','ef76f4c9-a638-bab4-f91a-59d1e4089280','e90fc83b-0140-277b-b90b-59d81e5ba6f0','2017-10-07 00:23:15',0),('8de9f995-12cb-9571-4672-59d860c0a7f8','ef76f4c9-a638-bab4-f91a-59d1e4089280','2c47497a-1306-e912-7193-59d85e6f9444','2017-10-07 05:05:37',0),('9426c916-a482-bf07-003a-59d8203aeae3','ef76f4c9-a638-bab4-f91a-59d1e4089280','7317bdde-3abf-ac36-15a0-59d8204f5ee6','2017-10-07 00:31:16',0),('94bd6aa8-9d22-35d7-5986-59d21ba3db75','ef76f4c9-a638-bab4-f91a-59d1e4089280','896e8aca-8bfc-63a3-edb4-59d21bdbab08','2017-10-02 10:56:41',0),('9fa2e4ff-15c8-c085-a0d2-59d81fc2e70f','ef76f4c9-a638-bab4-f91a-59d1e4089280','a79fa8ab-b4ba-a73e-3f50-59d81f60ea86','2017-10-07 00:26:05',0),('bfd77612-ae22-1388-24ac-59d20881718d','ef76f4c9-a638-bab4-f91a-59d1e4089280','1ed19be7-94c2-25d0-0b3a-59d1fe8df63f','2017-10-02 09:34:40',0),('c345323d-a30c-22b9-13ad-59d855a43fe0','ef76f4c9-a638-bab4-f91a-59d1e4089280','34a46f11-41e6-1f18-9e37-59d8553534e7','2017-10-07 04:19:11',0),('c5be47e1-39ab-a6ff-000e-59d8588c809d','ef76f4c9-a638-bab4-f91a-59d1e4089280','2f429838-4e86-a488-3403-59d858bde0b1','2017-10-07 04:32:20',0),('e0abcb8b-f233-5a48-585a-59d82f6fb99b','ef76f4c9-a638-bab4-f91a-59d1e4089280','63da2d6f-52fd-5eee-b509-59d82fe92ba2','2017-10-07 01:35:15',0);
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
INSERT INTO `prospect_lists` VALUES ('1','421c6424-108b-ba6d-020a-59d86b65147a','asdasd Список подписок','default','2017-10-07 05:52:13','2017-10-07 05:52:13','1','1',0,NULL,NULL),('1','525749a1-daad-f8b3-a8d8-59d34a835152','список 1','default','2017-10-03 08:31:34','2017-10-03 08:31:34','1','1',0,'',''),('1','5cf7d53c-4e31-4e83-9047-59d86bce1257','asdasd Список отписок','exempt','2017-10-07 05:52:13','2017-10-07 05:52:13','1','1',0,NULL,NULL),('1','69aa090d-c7d6-ba12-c001-59d86b8add5f','asdasd Тестовый список','test','2017-10-07 05:52:13','2017-10-07 05:52:13','1','1',0,NULL,NULL),('1','ef76f4c9-a638-bab4-f91a-59d1e4089280','мой','default','2017-10-02 07:00:26','2017-10-02 13:13:37','1','1',0,NULL,NULL);
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
INSERT INTO `prospect_lists_prospects` VALUES ('ae6a36a7-01b2-e682-dd75-59d1e45e93f0','ef76f4c9-a638-bab4-f91a-59d1e4089280','6acfcff6-723f-f3e3-3c1b-59c377a909f2','Leads','2017-10-02 10:44:58',0),('b38adef7-e4f0-cd5f-f7a7-59d1e442ebe8','ef76f4c9-a638-bab4-f91a-59d1e4089280','5a7265ea-aa41-cc92-4445-59b8ce6cc94a','Leads','2017-10-02 10:44:58',0),('b5fbd677-4914-797f-0490-59d1e482e4cb','ef76f4c9-a638-bab4-f91a-59d1e4089280','a909e9a5-90ce-7a2f-fd1a-59c38846be76','Leads','2017-10-02 10:44:58',0),('b7efe86e-b0fd-1e80-3219-59d1e4ee1752','ef76f4c9-a638-bab4-f91a-59d1e4089280','8d61d039-9372-369c-f48f-59c38ae4f7fb','Leads','2017-10-02 10:44:58',0),('ba226bff-4332-d68e-edea-59d1e442f3a0','ef76f4c9-a638-bab4-f91a-59d1e4089280','9ce12f06-52ad-9bbe-3467-59c36fa66eef','Leads','2017-10-02 10:44:58',0),('bc167c09-fbe6-4f87-f26e-59d1e455e09f','ef76f4c9-a638-bab4-f91a-59d1e4089280','10c2e549-c39f-7ef0-f7da-59b11183c89e','Leads','2017-10-02 10:44:58',0),('c7131baf-e668-6ee6-dd05-59d1e44c8bcc','ef76f4c9-a638-bab4-f91a-59d1e4089280','1a850344-233e-e32f-fe21-59b10fc56fe1','Leads','2017-10-02 10:44:58',0),('c945a579-35ed-aaf4-bfb7-59d1e45c9a14','ef76f4c9-a638-bab4-f91a-59d1e4089280','70007648-47bc-d3b4-9904-59b6a1659460','Leads','2017-10-02 10:44:58',0),('cb782cce-8356-3f54-58c8-59d1e4fcbb93','ef76f4c9-a638-bab4-f91a-59d1e4089280','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Leads','2017-10-02 10:44:58',0),('cdaab157-8a7e-3f05-0d32-59d1e4f1e1a4','ef76f4c9-a638-bab4-f91a-59d1e4089280','15b2317d-5f17-b967-0f5d-59c3c87bbba0','Leads','2017-10-02 10:44:58',0);
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('10190f96-ef68-5031-6464-59d898c50f07','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('106cf079-f45b-27d1-e243-59d898760141','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('10960efa-11d9-50f8-bb75-59d8981d4cb9','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('10ed096f-c491-5f1b-f77d-59d8982c64cd','bh_autotransport_modified_user','Users','users','id','bh_Autotransport','bh_autotransport','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11130f28-0911-36cf-cef2-59d898a34c3b','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('11287a4a-67df-0308-2ea6-59d898d05751','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('115f0107-4d22-f9f6-da78-59d8982dac34','bh_phones_modified_user','Users','users','id','bh_phones','bh_phones','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('116e2814-76c9-6ba0-1f7d-59d898aecf86','bh_faq_history_modified_user','Users','users','id','bh_faq_history','bh_faq_history','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11a911f3-9bd4-ed37-acbf-59d898402d32','bh_banks_modified_user','Users','users','id','bh_banks','bh_banks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11ce832e-0fbf-2f59-c755-59d898649895','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11e79106-3116-e8b7-4bf4-59d8987d1c1f','bh_banks_created_by','Users','users','id','bh_banks','bh_banks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1217c7bd-589d-d747-fbf3-59d898c4f2c7','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('124b8b08-6c2a-4ad6-5969-59d898dd00a9','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12649571-ab83-af84-4b12-59d898fa1e93','bh_banks_assigned_user','Users','users','id','bh_banks','bh_banks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12682a14-a32f-07a5-ac05-59d89871e1b9','bh_faq_history_created_by','Users','users','id','bh_faq_history','bh_faq_history','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12d3465f-09f0-a2b5-c0aa-59d898925292','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13071003-6804-2521-7b47-59d898b6d3bd','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13201a68-d3b8-4ad5-5776-59d898f68fb3','securitygroups_bh_banks','SecurityGroups','securitygroups','id','bh_banks','bh_banks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_banks',0,0),('1323ab1a-d87a-6a16-e9e4-59d898f29325','bh_faq_history_assigned_user','Users','users','id','bh_faq_history','bh_faq_history','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1350412f-c2bc-946c-95a5-59d898269826','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('138415db-7262-0bc7-c8e7-59d8986d0828','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13df2ebd-b232-0621-145c-59d8988706d8','securitygroups_bh_faq_history','SecurityGroups','securitygroups','id','bh_faq_history','bh_faq_history','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_faq_history',0,0),('17313ff4-fdee-9562-091c-59d898d4a346','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17ae3734-e7cb-47f3-423d-59d898fb853e','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('182b3e45-96fd-3caf-134e-59d898de0643','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1847da96-6df1-abd9-0044-59d89859b4ca','bh_place_of_work_modified_user','Users','users','id','bh_place_of_work','bh_place_of_work','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18865ea1-d955-3f5f-25a1-59d898ae774e','bh_place_of_work_created_by','Users','users','id','bh_place_of_work','bh_place_of_work','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18bd00e6-2439-d2a3-9d08-59d898cc2f89','bh_autotransport_created_by','Users','users','id','bh_Autotransport','bh_autotransport','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18e6b0eb-ec5d-0144-9ecf-59d898dfa35b','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('190353f1-c842-6534-4025-59d898918d52','bh_place_of_work_assigned_user','Users','users','id','bh_place_of_work','bh_place_of_work','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('19805669-159b-8a8b-8ccb-59d89821da7e','securitygroups_bh_place_of_work','SecurityGroups','securitygroups','id','bh_place_of_work','bh_place_of_work','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_place_of_work',0,0),('19e0ba40-426a-11c9-15a3-59d8984754bc','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('1a9c41aa-4758-58bd-a261-59d898ae94ff','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('1b57c530-29b3-b9d9-234c-59d898f72f5f','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c134a7a-406b-c45e-77d6-59d898f0d268','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c904308-c81a-03a9-4aa2-59d8981dda2c','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1ccecd41-0be9-f8e6-7631-59d89844eed3','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1d1461e4-167d-5cbb-5673-59d898246e95','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d170306-b3ef-4756-3c48-59d898ff9c1f','bh_phones_created_by','Users','users','id','bh_phones','bh_phones','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d8a494a-f157-fd4e-ff6d-59d898cb4e5d','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1dcff4fc-9444-a827-7f57-59d8980b7be6','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e074425-90fb-ebb7-bc79-59d898128bf8','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1e4cfc80-b7e4-0b9f-8dc4-59d8981c6051','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e5419bc-6d06-4ede-ba0a-59d898690974','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ec2c311-b938-fa90-10ea-59d898b78bcb','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1ed11f55-1be2-d02a-7a54-59d898d39e3a','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f3fdba9-951c-888e-c609-59d8981debd2','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f4e1a39-c61b-0e65-828e-59d89822b364','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f7e5658-a03f-54de-83e2-59d898584030','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('1fcb25c8-0e73-03ef-d41e-59d89835d17c','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('1ffb509f-2206-8a4e-d40a-59d89818ae4d','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20785b5d-e105-d672-c405-59d8982d30e1','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('208d05ff-42d6-3cd9-a0f3-59d898f3b547','bh_autotransport_assigned_user','Users','users','id','bh_Autotransport','bh_autotransport','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20f55de3-c6fe-138b-6107-59d8983ed3be','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22c05ea4-c554-518a-f55a-59d898438ecc','bh_campaine_products_modified_user','Users','users','id','bh_campaine_products','bh_campaine_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22fed26d-d564-3cfa-3ccd-59d898fc9adc','bh_campaine_products_created_by','Users','users','id','bh_campaine_products','bh_campaine_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2339c8cb-303d-617a-a9ba-59d89810a593','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('233d5e35-8863-7a87-d3c9-59d898256ab0','bh_campaine_products_assigned_user','Users','users','id','bh_campaine_products','bh_campaine_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('23b6cb54-73b5-df3d-fa5e-59d89857d585','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('23ba5779-ab0b-7f89-7171-59d898209747','securitygroups_bh_campaine_products','SecurityGroups','securitygroups','id','bh_campaine_products','bh_campaine_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_campaine_products',0,0),('270c5433-1056-1e6a-65c5-59d898b103d3','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('27895d7e-6a15-dc58-67aa-59d89851b18a','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('2844ec07-55ae-816a-6655-59d898a2ec5d','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('285d003e-d26b-9129-89a0-59d898990f6e','securitygroups_bh_autotransport','SecurityGroups','securitygroups','id','bh_Autotransport','bh_autotransport','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_Autotransport',0,0),('28a38300-0294-2f91-e454-59d898d96089','bh_position_at_work_modified_user','Users','users','id','bh_position_at_work','bh_position_at_work','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28c1e864-d56d-8be0-ec66-59d8982b64f1','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('28cf0fed-abd3-091f-26a1-59d898b43124','bh_phones_assigned_user','Users','users','id','bh_phones','bh_phones','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('293eecac-2966-1d7f-ee7e-59d898c0fdbf','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('295f16df-405b-1c10-4656-59d898c951a8','bh_position_at_work_created_by','Users','users','id','bh_position_at_work','bh_position_at_work','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29bbe57c-7e9a-d560-c5a1-59d898cc0d97','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('29dc105e-86f6-e5f7-e51e-59d898d0bbf4','bh_position_at_work_assigned_user','Users','users','id','bh_position_at_work','bh_position_at_work','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29fa685d-f047-ae53-4fcc-59d898398bd5','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a591e36-18ab-a740-9844-59d898dbafe5','securitygroups_bh_position_at_work','SecurityGroups','securitygroups','id','bh_position_at_work','bh_position_at_work','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_position_at_work',0,0),('2b32e7b7-46af-01df-424f-59d8986f93b9','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b8e07f8-5e7a-4fe5-7c21-59d898c366da','bh_lead_adress_modified_user','Users','users','id','bh_lead_adress','bh_lead_adress','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bafe7a6-7295-2573-135b-59d8989bf7ad','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bb71d77-67ac-66c7-1370-59d8988756b5','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c341e7a-e11d-aa17-8b89-59d898e3f37b','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c498d80-9cb4-4f8f-5ee3-59d8980cabfe','bh_lead_adress_created_by','Users','users','id','bh_lead_adress','bh_lead_adress','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cb1119f-da6f-d4ba-709f-59d898bbe7c1','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cef9460-9261-fc65-4620-59d89889546e','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('2d050303-ca7d-1f2a-a0ce-59d89855e646','bh_lead_adress_assigned_user','Users','users','id','bh_lead_adress','bh_lead_adress','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d6c9c3d-b32b-51c7-91e6-59d898482ee9','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d82065f-f504-0fe7-4dd5-59d898eee201','securitygroups_bh_lead_adress','SecurityGroups','securitygroups','id','bh_lead_adress','bh_lead_adress','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_lead_adress',0,0),('30a008c2-ea5d-dce1-1cb7-59d89801cbe8','securitygroups_bh_phones','SecurityGroups','securitygroups','id','bh_phones','bh_phones','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_phones',0,0),('31a50e28-4d75-dfcb-0a91-59d8985c91ee','bh_card_ident_modified_user','Users','users','id','bh_Card_ident','bh_card_ident','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3222017f-69d8-7109-6f74-59d898a554c4','bh_card_ident_created_by','Users','users','id','bh_Card_ident','bh_card_ident','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('326085d1-56ba-43e4-bd6b-59d89894b386','bh_card_ident_assigned_user','Users','users','id','bh_Card_ident','bh_card_ident','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3297e875-401c-e9cd-49b3-59d898b19163','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('329f0c9b-8b7e-20e9-23c0-59d898232f7e','securitygroups_bh_card_ident','SecurityGroups','securitygroups','id','bh_Card_ident','bh_card_ident','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_Card_ident',0,0),('3314e733-dae3-40d0-06f8-59d898bc73c2','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('33d06181-f6c9-f3b8-b2fc-59d89812a852','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('344d6fb1-3da8-11d8-ae0a-59d898f72816','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('34c34964-8099-850a-5b6a-59d89893cc47','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3508eada-5ec6-502a-f753-59d898b5c584','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('357b3221-4475-636c-c9fd-59d898c318d3','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35b6259e-ff16-1ea4-c31a-59d89842e11d','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35bd4367-2a64-9a03-5086-59d898f38e0d','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3671a908-3763-b550-c3af-59d8985d66aa','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36eea133-aa0b-8d47-b914-59d898432468','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('376ba82e-4e57-1109-27e6-59d8981b6104','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('37e8a45c-fc78-bd8e-702a-59d898e3b25a','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('3865a326-56b6-035e-fa6d-59d898d8dd4c','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('38e2b822-35dc-dce8-eec6-59d898bc547e','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('395fbe59-4b74-df78-fabc-59d8986c13b1','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('39bac87f-94c1-7ed9-8c76-59d898fc8e25','bh_formed_packets_modified_user','Users','users','id','bh_formed_packets','bh_formed_packets','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a1b3e0e-b2e4-d214-459a-59d8982c8d67','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('3a37c3b9-1a68-c38d-2fdf-59d898adfd4b','bh_formed_packets_created_by','Users','users','id','bh_formed_packets','bh_formed_packets','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a765a03-ddb0-6a20-c3da-59d898feca00','bh_formed_packets_assigned_user','Users','users','id','bh_formed_packets','bh_formed_packets','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a983900-c994-fc43-be13-59d89822bac8','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3af35b09-e8d2-c683-f120-59d898822cff','securitygroups_bh_formed_packets','SecurityGroups','securitygroups','id','bh_formed_packets','bh_formed_packets','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_formed_packets',0,0),('3b153007-bc5d-dff5-5620-59d8981bf0b4','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b53bca0-ab60-385e-6856-59d898d563ee','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c0f3e06-85c0-ebaa-2c07-59d898c550ef','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c166783-b79c-68ba-8a4d-59d898abe882','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c8c3459-90cc-cf8e-702f-59d898de5d03','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('408d58fb-6393-71df-73a5-59d8986a4b01','bh_locality_modified_user','Users','users','id','bh_locality','bh_locality','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('410a5ef1-35cd-6d25-3a45-59d898278239','bh_locality_created_by','Users','users','id','bh_locality','bh_locality','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4148d639-ab7b-9d23-6f0a-59d898f36782','bh_locality_assigned_user','Users','users','id','bh_locality','bh_locality','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('41c5dfef-4477-328c-40a0-59d898b642e1','securitygroups_bh_locality','SecurityGroups','securitygroups','id','bh_locality','bh_locality','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_locality',0,0),('43f13cf8-cfca-02c7-fdaa-59d898dd4938','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4428988f-9e35-cfe5-28c5-59d8982a1aad','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('442fb02c-1ddb-b3bd-d8a2-59d898fcead2','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('44acbef5-6f93-e4c2-8486-59d8989a87db','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('44e416de-8452-1c15-9792-59d8988c9647','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('44eb3996-98db-16f9-4a0c-59d898bbb3e8','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('45611412-36c3-96fd-4728-59d898dfdaa8','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45684d05-bb3c-5d29-0037-59d898344d8e','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('456bd216-3b42-a66b-2c21-59d898932161','bh_cases_log_modified_user','Users','users','id','bh_cases_log','bh_cases_log','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45e8de65-c2a0-87d2-93b8-59d89855bdce','bh_cases_log_created_by','Users','users','id','bh_cases_log','bh_cases_log','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4623c9ae-e6fe-7aaa-8f00-59d89895a22f','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('46a0ca45-bf8d-b209-9513-59d898e7ac2e','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('471dcc24-438f-8ee4-55b7-59d8982e24dc','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('47d94016-4880-307e-8aff-59d898d88ae0','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('4814387f-e4fc-27ef-b550-59d898f7c8dd','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48564474-45b1-06ed-a9a6-59d898063165','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('489136e4-56ff-529d-2ccb-59d89842c279','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48d341bd-4297-5e6d-26e5-59d8982d1b9e','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('490e3c0c-4b00-1e17-3f4a-59d898d89869','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49504083-eaf9-af59-cd8b-59d8985a9189','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('498b3c38-aada-48c6-6e30-59d898c9b805','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('4a46b470-99db-b1d4-57f9-59d898ba5a13','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4bcc153b-2a37-6c37-6bdb-59d8980f3fdb','bh_packet_activation_modified_user','Users','users','id','bh_packet_activation','bh_packet_activation','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c0a988e-c557-b63f-444c-59d898386329','bh_packet_activation_created_by','Users','users','id','bh_packet_activation','bh_packet_activation','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c806ce6-cd5f-c44e-6864-59d89886d646','bh_cases_log_assigned_user','Users','users','id','bh_cases_log','bh_cases_log','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c879f81-1ca6-2e91-1d85-59d898eb402e','bh_packet_activation_assigned_user','Users','users','id','bh_packet_activation','bh_packet_activation','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cc61e92-04e7-456b-0b26-59d898542a42','securitygroups_bh_packet_activation','SecurityGroups','securitygroups','id','bh_packet_activation','bh_packet_activation','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_packet_activation',0,0),('4d22ec7a-5ee4-bc2c-d6ee-59d89844ad2e','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4db8f07e-1881-61d5-a50f-59d8980be62c','securitygroups_bh_cases_log','SecurityGroups','securitygroups','id','bh_cases_log','bh_cases_log','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_cases_log',0,0),('4dde6864-cfb4-8212-1327-59d8983b715c','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e5b6381-9590-de6b-138c-59d898c9070e','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f16f5fb-91e4-b5ea-30c5-59d8989ab6a3','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('4fd27652-5c07-461c-5ef1-59d898abeb26','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('504f7d43-969a-4d62-29cd-59d898a01320','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50d39aee-d290-1da0-6cf2-59d898a1ef5d','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('510af48a-b015-fcff-3de2-59d898496b20','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5150a887-1f88-3f4d-d888-59d898d7c26a','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5187f10e-2b5a-d005-67d1-59d898cefde2','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52437312-af8c-2071-e7e4-59d898526744','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52c070d9-50d8-42c0-148e-59d89852d4f3','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5309bbfd-544a-b055-c9d8-59d8981a195c','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('537c0e2c-cf76-6707-f53e-59d898a81415','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5386b8d8-69f0-0484-7a03-59d898c73f6d','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53f900b7-ad18-5aae-51a9-59d89849eaee','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54423090-718c-dced-33ae-59d898c84cf3','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('545410db-2b02-edae-3506-59d89845b0a9','bh_marketing_company_modified_user','Users','users','id','bh_marketing_company','bh_marketing_company','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54b48679-e043-2bf8-cd56-59d898d2e96f','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54bf45c9-a808-7b3b-d62f-59d8985942cb','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('54d125a2-601a-5d44-94b9-59d89850c3e6','bh_marketing_company_created_by','Users','users','id','bh_marketing_company','bh_marketing_company','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55318ce6-f8c5-2872-5b27-59d89840619c','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('554e2a7a-a813-eed5-fe47-59d89869ca16','bh_marketing_company_assigned_user','Users','users','id','bh_marketing_company','bh_marketing_company','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('558ca482-81e2-81a2-9624-59d8987c8b06','securitygroups_bh_marketing_company','SecurityGroups','securitygroups','id','bh_marketing_company','bh_marketing_company','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_marketing_company',0,0),('57a6216e-7d20-fb1c-388c-59d898fb3564','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('58232f6d-f37d-bcdd-f5d2-59d898e3ceb9','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bd76edc-d9cb-9f7c-6547-59d898df9b8d','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c15ea54-9503-e8ce-3a16-59d898ddb194','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c92f707-ce47-c834-e934-59d898bd84c6','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d4e783c-55a1-3c7d-0e94-59d89833ccdb','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ddd55cd-59dd-64e0-7834-59d8988ca2ad','bh_providers_modified_user','Users','users','id','bh_providers','bh_providers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e4154da-2a8e-f8a1-7509-59d898fe5fa1','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e5a5a02-ead8-ad12-27b5-59d898d4ecba','bh_providers_created_by','Users','users','id','bh_providers','bh_providers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f15db38-b215-278c-cdb4-59d89874f799','bh_providers_assigned_user','Users','users','id','bh_providers','bh_providers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f92d2b8-367e-8cf3-f914-59d898ab0c7e','securitygroups_bh_providers','SecurityGroups','securitygroups','id','bh_providers','bh_providers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_providers',0,0),('62fa5632-f090-7ad1-6b5a-59d898193211','bh_marketing_company_history_modified_user','Users','users','id','bh_marketing_company_history','bh_marketing_company_history','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('637757e6-a333-e11b-67ab-59d898bb0c86','bh_marketing_company_history_created_by','Users','users','id','bh_marketing_company_history','bh_marketing_company_history','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('63b5d0bd-3d97-a784-f7d4-59d898d2c029','bh_marketing_company_history_assigned_user','Users','users','id','bh_marketing_company_history','bh_marketing_company_history','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('63f450ac-20ad-ddd4-2624-59d898a23164','securitygroups_bh_marketing_company_history','SecurityGroups','securitygroups','id','bh_marketing_company_history','bh_marketing_company_history','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_marketing_company_history',0,0),('646a372e-a1de-7c6a-35ab-59d898330f97','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('646dc978-ee9e-ac39-ccaf-59d8982d2a5b','bh_case_compound_modified_user','Users','users','id','bh_case_compound','bh_case_compound','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64e731d1-6e82-09ee-abaa-59d898ca493e','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64eac512-6bf7-ae49-e061-59d8988d140d','bh_case_compound_created_by','Users','users','id','bh_case_compound','bh_case_compound','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6560a33a-973b-3c20-098c-59d898b1ca8b','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('656437b9-c516-7fab-322f-59d898ee4526','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6567cc33-4df5-460c-6ab2-59d89819710d','bh_case_compound_assigned_user','Users','users','id','bh_case_compound','bh_case_compound','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65dda9fe-5c70-5261-3e38-59d898c9bf83','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65e4c510-5645-734d-ff19-59d8986a73cc','securitygroups_bh_case_compound','SecurityGroups','securitygroups','id','bh_case_compound','bh_case_compound','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_case_compound',0,0),('661fb171-ec5f-9bc1-23cc-59d898e1b3b9','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('66992570-2e9e-9d43-aa0d-59d8986d43f6','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67162d30-773a-3e0f-e2ef-59d8986787b0','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('695a9012-d565-418e-a095-59d8989186c6','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('6a3461fb-0b37-a7ac-d3b4-59d8988a9d9f','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a931441-adc3-3572-84d8-59d898ca42dd','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('6ab16d8a-f4fc-f56f-d1af-59d8981e398d','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('6b2ad6ed-0e8e-a0cc-d0eb-59d89830674d','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b4e925e-483e-eabc-d10f-59d898dcd4ee','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('6b6ce214-252f-6672-cfd1-59d898408ccd','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ba7d11e-5013-2254-7be5-59d898bc5753','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('6be9f339-3faa-d892-86fd-59d898697911','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c0a1d34-8b67-c7f0-4e11-59d8987d7d6b','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('6d0424dc-4cd5-977f-600e-59d8986807dc','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('6d2d2216-c85f-8c70-299e-59d8989523aa','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d6ba673-37d4-825b-fadd-59d898741e4d','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6dbfabf1-968b-f680-16ee-59d89863c7a6','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('6de8b547-a4e4-43cb-8e00-59d898e30163','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e65b251-06ca-b828-afee-59d898e5ae96','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e7b248f-6e52-1c03-2eb5-59d898e08bb4','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('6ee2b0ce-9f2a-8d80-c213-59d898b7b53e','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('6f36ac33-0a43-32cc-f3c4-59d8983880b7','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('6ff22686-5ce9-4706-6d95-59d898111bde','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('70adaaa5-81ce-532f-1433-59d898329f24','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('71620a93-317e-9083-0dfd-59d898f420de','bh_marketing_directorate_modified_user','Users','users','id','bh_marketing_directorate','bh_marketing_directorate','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71df04fb-ead1-18a1-5f5a-59d89805e59d','bh_marketing_directorate_created_by','Users','users','id','bh_marketing_directorate','bh_marketing_directorate','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71e63b5e-4071-5ae7-7b39-59d898eb5ea7','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('721d8dc7-8fd6-904e-0032-59d898d809c1','bh_marketing_directorate_assigned_user','Users','users','id','bh_marketing_directorate','bh_marketing_directorate','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72633a4b-ae08-1432-a542-59d89801bf46','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('729a8682-95ff-b1cc-445f-59d8982c9d38','securitygroups_bh_marketing_directorate','SecurityGroups','securitygroups','id','bh_marketing_directorate','bh_marketing_directorate','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_marketing_directorate',0,0),('739bb01d-fa45-09ee-6736-59d898bedf35','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('7418bd6e-1c06-5cc9-abad-59d8982d6cfb','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('74d4358a-3723-4505-226b-59d89873e0f7','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('750f208a-4442-2c4c-a39f-59d898dca953','bh_realty_modified_user','Users','users','id','bh_Realty','bh_realty','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('758c2efb-52f4-c3cd-8a8a-59d8981fd539','bh_realty_created_by','Users','users','id','bh_Realty','bh_realty','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75ce4c81-df8f-9953-6ead-59d89845c052','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('76092c0b-0a06-6837-df02-59d8988c9696','bh_realty_assigned_user','Users','users','id','bh_Realty','bh_realty','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7647b303-b7eb-b01e-9523-59d898fac0cb','securitygroups_bh_realty','SecurityGroups','securitygroups','id','bh_Realty','bh_realty','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_Realty',0,0),('764b4a01-0925-5443-26b8-59d89812e264','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('76edcf63-baf4-f44c-ef5f-59d898f7ed50','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76fc0859-c00c-db6a-6017-59d898a3703b','bh_case_status_modified_user','Users','users','id','bh_case_status','bh_case_status','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7706cdd2-d175-5e15-0ccf-59d8984e966d','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('77790379-1356-0cc7-336b-59d898c749d7','bh_case_status_created_by','Users','users','id','bh_case_status','bh_case_status','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77b78326-4308-0001-1123-59d89871a425','bh_case_status_assigned_user','Users','users','id','bh_case_status','bh_case_status','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77c2419b-e7d4-c011-7956-59d8987febe3','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('77e7ceda-af2c-26de-52b6-59d898584f2f','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78349b98-83f8-6d1a-22a6-59d8987714b0','securitygroups_bh_case_status','SecurityGroups','securitygroups','id','bh_case_status','bh_case_status','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_case_status',0,0),('787dc8a0-3610-0010-c409-59d898dc1d93','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('78facb97-e921-11a8-799d-59d898233405','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('795ec6de-ee21-02fc-5fc5-59d8982d9dd6','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79b65705-d045-e212-308e-59d898e336bc','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('7a71db3d-f208-1772-6f05-59d89892e2ce','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('7b2d583a-2353-ded1-dece-59d898d62a49','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('7baa561f-c712-78bb-cc65-59d8989de259','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('7c275195-1690-5653-2b0d-59d89809f64d','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('7c494507-2c34-a8b7-4e16-59d8984fe988','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ca45832-1936-1d73-79e3-59d898c21fe1','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('7cc6410d-318e-4b03-3359-59d89878e654','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d215e45-7246-24d0-e95f-59d898fb7d6b','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('7d81c39f-03f9-f021-eb4c-59d898eb0a35','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ddce8f5-c579-c682-5070-59d898e6ef14','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('7e3d40ae-e755-e1bf-2849-59d8981d108d','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('7e59ec20-3c55-a73e-6bf7-59d898ab9949','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('7e8a1f67-6b55-1bc7-12d0-59d898ce08eb','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e98683c-6578-cd07-b637-59d89882636b','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('7f07133e-93e3-33a2-f491-59d898e530cf','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f53e206-82e5-1e24-27b3-59d8988c3c05','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('7f841e58-b1a8-3ec0-e0ad-59d8987512b8','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('800f60c1-66f3-d4d6-72c9-59d898f9916e','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('803f9a8e-0328-4742-8505-59d898b42fc0','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('8046c95f-6b09-6d2d-eb2d-59d898db64e4','bh_marketing_response_modified_user','Users','users','id','bh_marketing_response','bh_marketing_response','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('808c6f2d-db48-39ee-0d0a-59d8989ab8c1','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('80c3cef1-7897-5646-a60a-59d898624eb3','bh_marketing_response_created_by','Users','users','id','bh_marketing_response','bh_marketing_response','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80caedc6-fb8e-6843-aa8c-59d8982cf8be','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('81024548-f2ba-a7da-3101-59d8984821ac','bh_marketing_response_assigned_user','Users','users','id','bh_marketing_response','bh_marketing_response','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8140c5d2-96f0-8c67-b636-59d898ed6d40','securitygroups_bh_marketing_response','SecurityGroups','securitygroups','id','bh_marketing_response','bh_marketing_response','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_marketing_response',0,0),('8147e09a-bac7-b1f8-f06b-59d898b6647b','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('8241f331-65a7-ea37-5212-59d898647846','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('82dd4557-4fb6-943f-48dd-59d898c555d3','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82eb92cc-0999-58c9-2b70-59d89895b642','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82fd74ea-c1af-c415-c511-59d898c9256f','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('835a4488-7160-2991-ad34-59d89802d195','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83689006-af4c-5b9d-ff0b-59d898e00b28','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83a389e9-825c-b37c-99fe-59d898cf2823','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83b8f88a-9f1b-8d5c-ae43-59d89897873c','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('83d74ea7-19ea-8fe6-864d-59d898c7cf1d','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83e5941c-abca-1724-d89a-59d898469531','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('842083f5-b1ed-3efb-40fa-59d898324291','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8450bdba-f637-ea02-c9fb-59d898c2b6af','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84747d20-b20d-e56c-44a1-59d898e6c7af','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('848f367d-08b8-b0eb-858d-59d898257e52','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8492c73a-5557-67ce-d54f-59d8981c25ec','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('849d83b0-b820-b997-e709-59d898b5f572','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84a11f68-548c-8e9d-154c-59d898fe33ba','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('850c340e-82e6-6c40-1d44-59d8989715eb','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('850fc832-5537-6a62-1ee4-59d898d7a9ec','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('851a8e81-6eff-a83d-33a1-59d898ef3594','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('852ff1fa-f41b-c026-4481-59d8988feb07','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('858cd65d-f2cf-19cc-d258-59d898035ef6','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85acf9fb-d2e5-eecc-9892-59d898f40237','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('85c7b7e4-ff0d-2bd3-2e08-59d898418d66','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('85d6025f-d7b3-83d7-1bcf-59d8982c2a4c','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8644cb08-daba-9bdf-1e53-59d898f23f30','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('865303a6-e772-395a-f09f-59d8989fc126','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('86688c0b-96b9-835a-e172-59d898e88cb0','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('87004233-1568-1c74-4ce4-59d89865ab38','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('870e8e2c-ce9c-e21e-5c5a-59d8984282e6','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87628b9c-72da-f9b5-c790-59d898aa95f1','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('877d4adf-69e4-3fd0-befc-59d898739c1a','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('87964900-1684-0b10-f3af-59d8989acdf8','bh_category_at_work_modified_user','Users','users','id','bh_category_at_work','bh_category_at_work','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87fa4a73-9b65-a563-b883-59d8989c580f','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('88134893-8c21-8342-7156-59d898a04a01','bh_category_at_work_created_by','Users','users','id','bh_category_at_work','bh_category_at_work','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8851c31b-20aa-c623-ea64-59d898b0572d','bh_category_at_work_assigned_user','Users','users','id','bh_category_at_work','bh_category_at_work','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8858f593-4940-8fb5-cac6-59d8986a15e1','bh_scripts_modified_user','Users','users','id','bh_scripts','bh_scripts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('885c8a83-6ed1-b109-39e6-59d89829c480','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('88b5cdf3-6f31-2f87-610e-59d898e12c41','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('88cecc1c-694c-615d-05b7-59d898d5ad03','securitygroups_bh_category_at_work','SecurityGroups','securitygroups','id','bh_category_at_work','bh_category_at_work','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_category_at_work',0,0),('88d5f6cd-c260-2572-344f-59d89808ad5c','bh_scripts_created_by','Users','users','id','bh_scripts','bh_scripts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89147e96-ce3e-3fb6-87a0-59d898fb6e4f','bh_scripts_assigned_user','Users','users','id','bh_scripts','bh_scripts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89180905-6b1e-6a35-23cc-59d898be64d0','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('8932cf7b-89b1-9518-4cf2-59d8985307f1','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('899179d2-bc40-c65c-eb12-59d898171345','securitygroups_bh_scripts','SecurityGroups','securitygroups','id','bh_scripts','bh_scripts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_scripts',0,0),('89d38588-614b-f4d4-6154-59d89880e37c','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('89ee4576-a44f-c6cc-4727-59d898e03e92','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('8a6b48d1-d658-bc35-13f1-59d898c6196c','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('8a8f009b-995c-39f0-27d5-59d8987289f7','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('8bc7961a-e3f5-11f5-9136-59d898473435','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('8c061c74-943f-17b5-3098-59d8984dd2b0','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('8cc198e7-893a-1ca5-8a2a-59d8985cd58b','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('8ce71239-8392-014e-40c7-59d8989a516a','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d3e9149-4550-40ea-23c7-59d8980a5f1e','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('8da29e47-d63a-0ca7-e8a5-59d898d5c6b7','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8dbb9a8c-d869-04d9-47b4-59d898aa313f','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('8e771e75-fea7-94f9-a3d1-59d8980f1768','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('8f32a0b9-ea5f-be2e-ea3b-59d89887295a','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('8f7120a1-5e18-6011-ae56-59d898d1292f','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('8f969259-947b-3498-d32e-59d898d1205f','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8fee2e09-26d8-c6fc-31a4-59d89899727b','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('906b2419-b10a-9d6a-8dda-59d898a49525','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('90a9abbd-ad73-3cfa-78ca-59d898727243','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('9126add0-8409-766b-37b2-59d898b6ad57','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('91a3a9e8-698f-bc41-c0b4-59d898e22465','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('9220ad4a-2447-4ec9-e8b4-59d898151061','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('929dae87-6d19-6c0f-f310-59d898ec9094','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('92b86b2d-a31d-1e6b-58a5-59d89875c8b1','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94d0327c-4783-96ce-22d2-59d8989244ed','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('95309176-3d96-95dc-40e9-59d898b137c6','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('954d3e11-3064-f6a6-40f9-59d898a2e790','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('95aa0f01-01fb-ac7b-1166-59d898e929d8','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('95ada01a-5682-cfb3-cf77-59d898576c1f','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9608bbd2-a159-cd96-822e-59d898ac3e67','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('96270300-19de-fc18-1ae1-59d898d78ba5','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9665959a-6523-829d-c039-59d8988f6149','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9685bfcb-eeb1-9881-77e8-59d898bca79f','aos_products_bh_case_compound_1','AOS_Products','aos_products','id','bh_case_compound','bh_case_compound','id','aos_products_bh_case_compound_1_c','aos_products_bh_case_compound_1aos_products_ida','aos_products_bh_case_compound_1bh_case_compound_idb','many-to-many',NULL,NULL,0,0),('96e295b3-7a30-fcf9-4aaa-59d898fdea95','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9702bd27-916f-fc41-b211-59d898983982','bh_campaine_products_aos_products_1','bh_campaine_products','bh_campaine_products','id','AOS_Products','aos_products','id','bh_campaine_products_aos_products_1_c','bh_campaine_products_aos_products_1bh_campaine_products_ida','bh_campaine_products_aos_products_1aos_products_idb','many-to-many',NULL,NULL,0,0),('977fc6cc-fbbb-31a6-6359-59d898acd2fa','bh_card_ident_leads','bh_Card_ident','bh_card_ident','id','Leads','leads','id','bh_card_ident_leads_c','bh_card_ident_leadsbh_card_ident_ida','bh_card_ident_leadsleads_idb','many-to-many',NULL,NULL,0,0),('979e182d-d3a6-ccaf-9aa1-59d898cea821','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('981b1c9d-8a66-8518-7946-59d898f55e4a','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('983b4ecf-a9aa-546c-eaf4-59d898816b1d','bh_category_at_work_bh_place_of_work_1','bh_category_at_work','bh_category_at_work','id','bh_place_of_work','bh_place_of_work','id','bh_category_at_work_bh_place_of_work_1_c','bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida','bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb','many-to-many',NULL,NULL,0,0),('986f0d71-09f7-4dd6-e0ef-59d898ffb9b8','bh_channels_impact_modified_user','Users','users','id','bh_channels_impact','bh_channels_impact','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98ad85da-9324-c58a-b6aa-59d8983b6c8c','bh_channels_impact_created_by','Users','users','id','bh_channels_impact','bh_channels_impact','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98b845a0-12fb-4d48-661d-59d89884914d','bh_country_bh_region_1','bh_country','bh_country','id','bh_region','bh_region','id','bh_country_bh_region_1_c','bh_country_bh_region_1bh_country_ida','bh_country_bh_region_1bh_region_idb','many-to-many',NULL,NULL,0,0),('98d69a18-e366-fd5f-cd34-59d898235410','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('992a8506-399b-1274-8524-59d898a17ae7','bh_channels_impact_assigned_user','Users','users','id','bh_channels_impact','bh_channels_impact','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99539a06-4c93-a4e3-9cc0-59d898cda75a','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('995e5dd5-81c8-a0a0-307a-59d898163a4b','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99690567-e34f-071f-5ee1-59d89843686f','securitygroups_bh_channels_impact','SecurityGroups','securitygroups','id','bh_channels_impact','bh_channels_impact','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_channels_impact',0,0),('9973c088-60c2-9bae-320a-59d89813adc5','bh_faq_history_bh_faq','bh_faq','bh_faq','id','bh_faq_history','bh_faq_history','id','bh_faq_history_bh_faq_c','bh_faq_history_bh_faqbh_faq_ida','bh_faq_history_bh_faqbh_faq_history_idb','many-to-many',NULL,NULL,0,0),('999cd549-3678-410c-e9c9-59d898fbd572','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99b24199-7fa0-cc1b-ded3-59d898e3cf12','bh_formed_packets_aos_products_1','bh_formed_packets','bh_formed_packets','id','AOS_Products','aos_products','id','bh_formed_packets_aos_products_1_c','bh_formed_packets_aos_products_1bh_formed_packets_ida','bh_formed_packets_aos_products_1aos_products_idb','many-to-many',NULL,NULL,0,0),('99d09621-1da8-3da4-2bf1-59d898d35061','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('9a4d99f9-60c8-6047-b0b4-59d898556aba','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a6dc6b5-c3d7-7697-6502-59d898ab2773','bh_formed_packets_bh_packet_activation_1','bh_formed_packets','bh_formed_packets','id','bh_packet_activation','bh_packet_activation','id','bh_formed_packets_bh_packet_activation_1_c','bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida','bh_formed_packets_bh_packet_activation_1bh_packet_activation_idb','many-to-many',NULL,NULL,0,0),('9a888e5d-ed51-b005-f4c0-59d89832e3aa','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9aeaca8c-26c8-472c-f0ea-59d898c31ecd','bh_lead_adress_bh_country_1','bh_lead_adress','bh_lead_adress','id','bh_country','bh_country','id','bh_lead_adress_bh_country_1_c','bh_lead_adress_bh_country_1bh_lead_adress_ida','bh_lead_adress_bh_country_1bh_country_idb','many-to-many',NULL,NULL,0,0),('9b2225b5-8e14-f214-d232-59d8987070e9','bh_org_trade_points_modified_user','Users','users','id','bh_org_trade_points','bh_org_trade_points','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b60a56e-e868-f085-c9ce-59d898a01eee','bh_org_trade_points_created_by','Users','users','id','bh_org_trade_points','bh_org_trade_points','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b67c27f-bd47-26d0-d1f8-59d898febda1','bh_lead_adress_bh_locality_1','bh_lead_adress','bh_lead_adress','id','bh_locality','bh_locality','id','bh_lead_adress_bh_locality_1_c','bh_lead_adress_bh_locality_1bh_lead_adress_ida','bh_lead_adress_bh_locality_1bh_locality_idb','many-to-many',NULL,NULL,0,0),('9bddae81-075e-7be9-63b6-59d8982bb5ae','bh_org_trade_points_assigned_user','Users','users','id','bh_org_trade_points','bh_org_trade_points','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9be4de24-1aae-1231-6948-59d898d7e84a','bh_lead_adress_bh_region_1','bh_lead_adress','bh_lead_adress','id','bh_region','bh_region','id','bh_lead_adress_bh_region_1_c','bh_lead_adress_bh_region_1bh_lead_adress_ida','bh_lead_adress_bh_region_1bh_region_idb','many-to-many',NULL,NULL,0,0),('9c5aa307-08ae-3291-1891-59d89847704d','securitygroups_bh_org_trade_points','SecurityGroups','securitygroups','id','bh_org_trade_points','bh_org_trade_points','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_org_trade_points',0,0),('9c61dc4d-7300-3fd8-8ab8-59d8981cbb21','bh_lead_adress_bh_region_area_1','bh_lead_adress','bh_lead_adress','id','bh_region_area','bh_region_area','id','bh_lead_adress_bh_region_area_1_c','bh_lead_adress_bh_region_area_1bh_lead_adress_ida','bh_lead_adress_bh_region_area_1bh_region_area_idb','many-to-many',NULL,NULL,0,0),('9c9ccf0b-3532-00ec-7bcc-59d898fc222a','bh_scripts_employee_comment_modified_user','Users','users','id','bh_Scripts_employee_comment','bh_scripts_employee_comment','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ca057f5-18f2-b004-ed91-59d89892368e','bh_marketing_company_bh_campaine_products_1','bh_marketing_company','bh_marketing_company','id','bh_campaine_products','bh_campaine_products','id','bh_marketing_company_bh_campaine_products_1_c','bh_marketi9abccompany_ida','bh_marketi9283roducts_idb','many-to-many',NULL,NULL,0,0),('9d1d5098-a22c-b369-7b4d-59d8986d43d0','bh_marketing_company_bh_channels_impact_1','bh_marketing_company','bh_marketing_company','id','bh_channels_impact','bh_channels_impact','id','bh_marketing_company_bh_channels_impact_1_c','bh_marketid0c7company_ida','bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb','many-to-many',NULL,NULL,0,0),('9d348550-3536-049a-7c3b-59d8988ba97d','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d5840c5-0c34-10a3-7187-59d898c91921','bh_scripts_employee_comment_created_by','Users','users','id','bh_Scripts_employee_comment','bh_scripts_employee_comment','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9db1846f-b12f-269a-fc48-59d898205036','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9dd8d343-dbf0-d305-ab4a-59d89849b3ac','bh_marketing_company_bh_marketing_company_history_1','bh_marketing_company','bh_marketing_company','id','bh_marketing_company_history','bh_marketing_company_history','id','bh_marketing_company_bh_marketing_company_history_1_c','bh_marketi1e9fcompany_ida','bh_marketid398history_idb','many-to-many',NULL,NULL,0,0),('9e478872-60da-c8de-8f15-59d898ab6dca','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e52437b-51ea-fadf-81c8-59d898b8e68d','bh_scripts_employee_comment_assigned_user','Users','users','id','bh_Scripts_employee_comment','bh_scripts_employee_comment','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e55db2d-c3c3-84d8-ab50-59d8983370ce','bh_marketing_company_bh_marketing_directorate_1','bh_marketing_company','bh_marketing_company','id','bh_marketing_directorate','bh_marketing_directorate','id','bh_marketing_company_bh_marketing_directorate_1_c','bh_marketia9b6company_ida','bh_marketi618ectorate_idb','many-to-many',NULL,NULL,0,0),('9e6d0304-b60e-06eb-34e4-59d89826beb8','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ec48aba-c730-afad-b535-59d898654c72','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ed2d602-e19b-efa0-4b92-59d898a8a264','bh_marketing_company_bh_marketing_response_1','bh_marketing_company','bh_marketing_company','id','bh_marketing_response','bh_marketing_response','id','bh_marketing_company_bh_marketing_response_1_c','bh_marketi8c3ecompany_ida','bh_marketi8b4desponse_idb','many-to-many',NULL,NULL,0,0),('9eea0235-2740-db87-6bd8-59d8985c83c0','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('9f0dc784-cbf4-e8c1-2fa4-59d89823734c','securitygroups_bh_scripts_employee_comment','SecurityGroups','securitygroups','id','bh_Scripts_employee_comment','bh_scripts_employee_comment','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_Scripts_employee_comment',0,0),('9f419265-c5a1-36fe-86c5-59d8989bf38d','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f4fdfc4-5360-3b77-c106-59d898b7bfab','bh_marketing_company_bh_scripts_1','bh_marketing_company','bh_marketing_company','id','bh_scripts','bh_scripts','id','bh_marketing_company_bh_scripts_1_c','bh_marketing_company_bh_scripts_1bh_marketing_company_ida','bh_marketing_company_bh_scripts_1bh_scripts_idb','many-to-many',NULL,NULL,0,0),('9f670339-18e2-c72f-73f5-59d8985b5287','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('9fccdb33-9785-098a-ddc5-59d89846207a','bh_marketing_directorate_leads_1','bh_marketing_directorate','bh_marketing_directorate','id','Leads','leads','id','bh_marketing_directorate_leads_1_c','bh_marketing_directorate_leads_1bh_marketing_directorate_ida','bh_marketing_directorate_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('a02282ee-4c68-c7a5-460c-59d898fa3d73','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('a049e7d8-190c-5c33-791a-59d89856c951','bh_org_bh_place_of_work_1','bh_org','bh_org','id','bh_place_of_work','bh_place_of_work','id','bh_org_bh_place_of_work_1_c','bh_org_bh_place_of_work_1bh_org_ida','bh_org_bh_place_of_work_1bh_place_of_work_idb','many-to-many',NULL,NULL,0,0),('a0886d86-a766-892b-af09-59d8987b9c55','bh_passports_bh_country_1','bh_passports','bh_passports','id','bh_country','bh_country','id','bh_passports_bh_country_1_c','bh_passports_bh_country_1bh_passports_ida','bh_passports_bh_country_1bh_country_idb','many-to-many',NULL,NULL,0,0),('a09f98e6-231e-fb00-7aba-59d89817f8fc','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1056d72-29ed-0c08-6628-59d898a5ce96','bh_position_at_work_bh_place_of_work_1','bh_position_at_work','bh_position_at_work','id','bh_place_of_work','bh_place_of_work','id','bh_position_at_work_bh_place_of_work_1_c','bh_position_at_work_bh_place_of_work_1bh_position_at_work_ida','bh_position_at_work_bh_place_of_work_1bh_place_of_work_idb','many-to-many',NULL,NULL,0,0),('a11c974d-7fa9-50ff-ca52-59d8984fd7d3','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a18264db-3923-3067-50cb-59d898175711','bh_providers_aos_contracts_1','bh_providers','bh_providers','id','AOS_Contracts','aos_contracts','id','bh_providers_aos_contracts_1_c','bh_providers_aos_contracts_1bh_providers_ida','bh_providers_aos_contracts_1aos_contracts_idb','many-to-many',NULL,NULL,0,0),('a19999aa-dfda-57a3-8939-59d898ac88cf','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a1c0e4bf-f8d1-bff7-b463-59d8988ed5e0','bh_providers_aos_contracts_2','bh_providers','bh_providers','id','AOS_Contracts','aos_contracts','id','bh_providers_aos_contracts_2_c','bh_providers_aos_contracts_2bh_providers_ida','bh_providers_aos_contracts_2aos_contracts_idb','many-to-many',NULL,NULL,0,0),('a2169c1d-c812-39d8-fe35-59d898c3faaa','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a23decb6-5501-dfd2-146f-59d898a632fe','bh_providers_bh_org_trade_points_1','bh_providers','bh_providers','id','bh_org_trade_points','bh_org_trade_points','id','bh_providers_bh_org_trade_points_1_c','bh_providers_bh_org_trade_points_1bh_providers_ida','bh_providers_bh_org_trade_points_1bh_org_trade_points_idb','many-to-many',NULL,NULL,0,0),('a2939759-ab39-6020-e76c-59d898ce2fd7','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a2bae614-d196-e379-98f1-59d898c27557','bh_region_area_bh_locality_1','bh_region_area','bh_region_area','id','bh_locality','bh_locality','id','bh_region_area_bh_locality_1_c','bh_region_area_bh_locality_1bh_region_area_ida','bh_region_area_bh_locality_1bh_locality_idb','many-to-many',NULL,NULL,0,0),('a2d21876-0be4-71d2-27f5-59d898a470be','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a2f96c9c-ce20-b5ca-a9cd-59d898d4adc0','bh_region_bh_region_area_1','bh_region','bh_region','id','bh_region_area','bh_region_area','id','bh_region_bh_region_area_1_c','bh_region_bh_region_area_1bh_region_ida','bh_region_bh_region_area_1bh_region_area_idb','many-to-many',NULL,NULL,0,0),('a34f1a02-d58f-31ff-e33d-59d898c3cfad','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('a37669b0-7c60-7adc-f336-59d898da786e','bh_scripts_bh_scripts_employee_comment_1','bh_scripts','bh_scripts','id','bh_Scripts_employee_comment','bh_scripts_employee_comment','id','bh_scripts_bh_scripts_employee_comment_1_c','bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida','bh_scripts22dfcomment_idb','many-to-many',NULL,NULL,0,0),('a3f36d73-5467-ced1-443b-59d898f9ac5e','bh_scripts_bh_scripts_leadership_recommend_1','bh_scripts','bh_scripts','id','bh_Scripts_leadership_recommend','bh_scripts_leadership_recommend','id','bh_scripts_bh_scripts_leadership_recommend_1_c','bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida','bh_scriptsb2a1commend_idb','many-to-many',NULL,NULL,0,0),('a431f339-b6cf-a04e-36c7-59d898f6d6d8','bh_scripts_bh_script_param_response_1','bh_scripts','bh_scripts','id','bh_script_param_response','bh_script_param_response','id','bh_scripts_bh_script_param_response_1_c','bh_scripts_bh_script_param_response_1bh_scripts_ida','bh_scripts6c20esponse_idb','many-to-many',NULL,NULL,0,0),('a4aef9a7-cb7d-5a81-25fe-59d898312ff4','cases_bh_cases_log_1','Cases','cases','id','bh_cases_log','bh_cases_log','id','cases_bh_cases_log_1_c','cases_bh_cases_log_1cases_ida','cases_bh_cases_log_1bh_cases_log_idb','many-to-many',NULL,NULL,0,0),('a56a726c-5546-9061-031c-59d8987be674','cases_bh_case_compound_1','Cases','cases','id','bh_case_compound','bh_case_compound','id','cases_bh_case_compound_1_c','cases_bh_case_compound_1cases_ida','cases_bh_case_compound_1bh_case_compound_idb','many-to-many',NULL,NULL,0,0),('a61414a5-9662-51c1-c589-59d89876863d','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a625fa9a-7b5a-6416-f2db-59d898d4cc90','cases_bh_marketing_company_1','Cases','cases','id','bh_marketing_company','bh_marketing_company','id','cases_bh_marketing_company_1_c','cases_bh_marketing_company_1cases_ida','cases_bh_marketing_company_1bh_marketing_company_idb','many-to-many',NULL,NULL,0,0),('a6e17f14-00e6-e474-0a91-59d89823065d','leads_aos_contracts_1','Leads','leads','id','AOS_Contracts','aos_contracts','id','leads_aos_contracts_1_c','leads_aos_contracts_1leads_ida','leads_aos_contracts_1aos_contracts_idb','many-to-many',NULL,NULL,0,0),('a70e1f20-d84b-5827-c55d-59d89878bd50','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a71ffdd7-194a-1aa6-5186-59d898547117','leads_bh_autotransport_1','Leads','leads','id','bh_Autotransport','bh_autotransport','id','leads_bh_autotransport_1_c','leads_bh_autotransport_1leads_ida','leads_bh_autotransport_1bh_autotransport_idb','many-to-many',NULL,NULL,0,0),('a79cf217-723b-8e7e-bee1-59d898fe1303','leads_bh_lead_adress_1','Leads','leads','id','bh_lead_adress','bh_lead_adress','id','leads_bh_lead_adress_1_c','leads_bh_lead_adress_1leads_ida','leads_bh_lead_adress_1bh_lead_adress_idb','many-to-many',NULL,NULL,0,0),('a819f7a7-8356-76f6-8dd2-59d89827b1f7','leads_bh_marketing_response_1','Leads','leads','id','bh_marketing_response','bh_marketing_response','id','leads_bh_marketing_response_1_c','leads_bh_marketing_response_1leads_ida','leads_bh_marketing_response_1bh_marketing_response_idb','many-to-many',NULL,NULL,0,0),('a8469779-ac2d-bb00-c6ab-59d898d21595','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a858755b-167d-6168-4f0f-59d898755c4d','leads_bh_packet_activation_1','Leads','leads','id','bh_packet_activation','bh_packet_activation','id','leads_bh_packet_activation_1_c','leads_bh_packet_activation_1leads_ida','leads_bh_packet_activation_1bh_packet_activation_idb','many-to-many',NULL,NULL,0,0),('a8d58b18-b8b9-a72a-dc43-59d898979203','leads_bh_passports_1','Leads','leads','id','bh_passports','bh_passports','id','leads_bh_passports_1_c','leads_bh_passports_1leads_ida','leads_bh_passports_1bh_passports_idb','many-to-many',NULL,NULL,0,0),('a8fe8b97-d29f-19a9-3d62-59d89846bc02','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a99103ce-5925-9fdf-7c02-59d89891eab4','leads_bh_phones_1','Leads','leads','id','bh_phones','bh_phones','id','leads_bh_phones_1_c','leads_bh_phones_1leads_ida','leads_bh_phones_1bh_phones_idb','many-to-many',NULL,NULL,0,0),('a9ba1047-9acf-fc99-c762-59d89820fd37','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9bda149-5834-4c59-a730-59d898c510aa','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('a9f16bfc-a2b0-2b56-f544-59d898604b60','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa034825-99ef-802e-df82-59d8986b68b8','bh_communicators_modified_user','Users','users','id','bh_communicators','bh_communicators','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa0e0c09-e140-c3c9-7ce3-59d898bddc6d','leads_bh_place_of_work_1','Leads','leads','id','bh_place_of_work','bh_place_of_work','id','leads_bh_place_of_work_1_c','leads_bh_place_of_work_1leads_ida','leads_bh_place_of_work_1bh_place_of_work_idb','many-to-many',NULL,NULL,0,0),('aa37130f-abae-66ae-298c-59d8980e5432','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa41c115-a610-a08e-1343-59d8984c8849','bh_communicators_created_by','Users','users','id','bh_communicators','bh_communicators','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa6e6217-5ba5-f48a-0d55-59d898c1b140','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa8b0a81-963c-39f9-9a6b-59d8987de602','leads_bh_realty_1','Leads','leads','id','bh_Realty','bh_realty','id','leads_bh_realty_1_c','leads_bh_realty_1leads_ida','leads_bh_realty_1bh_realty_idb','many-to-many',NULL,NULL,0,0),('aabec949-bfa3-6771-1937-59d89813f747','bh_communicators_assigned_user','Users','users','id','bh_communicators','bh_communicators','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aaeb7414-ae2a-8e27-77b9-59d89807f120','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab0809b8-9a66-4c22-86bb-59d898c1c9eb','leads_cases_1','Leads','leads','id','Cases','cases','id','leads_cases_1_c','leads_cases_1leads_ida','leads_cases_1cases_idb','many-to-many',NULL,NULL,0,0),('ab3bd4a9-a426-2266-0934-59d898880764','securitygroups_bh_communicators','SecurityGroups','securitygroups','id','bh_communicators','bh_communicators','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_communicators',0,0),('ab850cc4-770f-6b9f-9e2b-59d8984246fb','leads_documents_1','Leads','leads','id','Documents','documents','id','leads_documents_1_c','leads_documents_1leads_ida','leads_documents_1documents_idb','many-to-many',NULL,NULL,0,0),('ac020512-c06a-f3ef-758d-59d8983fbca6','leads_leads_2','Leads','leads','id','Leads','leads','id','leads_leads_2_c','leads_leads_2leads_ida','leads_leads_2leads_idb','many-to-many',NULL,NULL,0,0),('acabb3a9-6615-c2be-1bc0-59d898f9e956','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad336453-bf32-3525-e37d-59d89859cb2f','bh_org_modified_user','Users','users','id','bh_org','bh_org','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adb062a4-86ab-0209-670b-59d898acd93b','bh_org_created_by','Users','users','id','bh_org','bh_org','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ade4373d-2afa-04f9-6a83-59d8985b0574','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae2d6e6c-224f-419d-f186-59d898e283c5','bh_org_assigned_user','Users','users','id','bh_org','bh_org','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aea34ee9-1a05-713f-9e86-59d8987c6b71','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aeaa78f6-d7d8-1959-49ba-59d898a3e244','securitygroups_bh_org','SecurityGroups','securitygroups','id','bh_org','bh_org','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_org',0,0),('af5ec30d-f3a8-6209-ae71-59d898e1f867','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b01a591b-394a-3892-c3dd-59d898ba186f','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2bf2365-8991-726d-9648-59d89802d99e','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b334f3aa-3759-bac7-fe95-59d898ee095f','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b37aae06-be06-fb8a-56e7-59d898ce8cf3','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b390166b-e06c-e0f7-576a-59d898aad6c1','bh_scripts_leadership_recommend_modified_user','Users','users','id','bh_Scripts_leadership_recommend','bh_scripts_leadership_recommend','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b42ef472-6e5f-e269-84c5-59d898f1db17','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b44b976f-9960-ee71-2df7-59d8988e4351','bh_scripts_leadership_recommend_created_by','Users','users','id','bh_Scripts_leadership_recommend','bh_scripts_leadership_recommend','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4ac0395-b0c0-5672-8ac1-59d8986b0ce5','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4f1a1fa-ae23-2f9a-b298-59d8985a1e18','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b5071bc4-0182-32a5-4213-59d898167dc6','bh_scripts_leadership_recommend_assigned_user','Users','users','id','bh_Scripts_leadership_recommend','bh_scripts_leadership_recommend','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b567874d-03e1-b40f-71bd-59d89828ef34','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('b58412ff-61d2-330d-da37-59d898920a1c','securitygroups_bh_scripts_leadership_recommend','SecurityGroups','securitygroups','id','bh_Scripts_leadership_recommend','bh_scripts_leadership_recommend','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_Scripts_leadership_recommend',0,0),('b5e481ee-60e5-a244-d8e5-59d898e391f0','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('b85cb222-7453-809a-6187-59d898003452','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('bb4e5a08-a7bc-d792-6f7e-59d898d6dbdd','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb97842e-0168-2927-284a-59d8983d64d0','bh_country_modified_user','Users','users','id','bh_country','bh_country','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc09d070-806b-7dfd-fcfa-59d898442089','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc149965-db76-aa31-5a66-59d898f679ae','bh_country_created_by','Users','users','id','bh_country','bh_country','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc9190ca-889c-df6a-8b21-59d898defa29','bh_country_assigned_user','Users','users','id','bh_country','bh_country','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd0e92fd-ffdc-badd-d9d1-59d8985ac7bd','securitygroups_bh_country','SecurityGroups','securitygroups','id','bh_country','bh_country','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_country',0,0),('bd6efb73-69a6-5643-c59d-59d8989fed4c','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be2a78df-89a8-2bb3-d3b2-59d898ec67c5','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bee60ed0-f986-8881-6c79-59d898697c42','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf83333e-f7f2-ceac-fc28-59d898c1f6f6','bh_passports_modified_user','Users','users','id','bh_passports','bh_passports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bfa18402-4f1a-cf92-f9ed-59d898f5ce0f','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('c00031d2-7f88-32a2-ccca-59d898dab06e','bh_passports_created_by','Users','users','id','bh_passports','bh_passports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c05d00e7-b1ef-e22d-336c-59d8981c4775','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('c067c7d1-40c4-b297-bbd1-59d898660029','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0a64830-703a-e44f-4b7f-59d898862986','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0bbb1c9-6cce-305d-e46b-59d898d98a39','bh_passports_assigned_user','Users','users','id','bh_passports','bh_passports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0da0a65-ad2e-939a-783a-59d8987a634d','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('c1234ae9-b39d-8a46-e841-59d898e17d19','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c138bcf9-a3e6-008b-2e0b-59d8980e68bc','securitygroups_bh_passports','SecurityGroups','securitygroups','id','bh_passports','bh_passports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_passports',0,0),('c1570029-2bb2-7d93-fb5b-59d898972164','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('c1d402c1-64f0-06d1-757b-59d898f639d9','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('c28f8fce-a24f-e38d-edf6-59d89845b723','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('c30c925b-59fa-f0e2-8f03-59d898c986a7','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c41c0afe-03a5-99c5-2f5c-59d8985e41f9','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4d7855d-7fe0-30af-5983-59d898c6a969','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c613a9d4-4adb-8bcc-e866-59d898cec845','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c67b3da0-601e-adc2-d81f-59d8988078d5','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('c690ac67-cf7d-9804-a0e5-59d8985d401f','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c736bd08-03e4-1288-b9e1-59d8980511db','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c74c2e74-d9d4-43b9-3656-59d8989d0a9a','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7b3b6df-f03c-b71d-f4b0-59d898354ed5','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c92ab75a-069f-7b52-dac7-59d89805985b','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ca66d1a8-14b2-0f00-ca9c-59d898be4421','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cae3df2d-6cf1-bbed-93f1-59d89885300e','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb006a35-3010-a6ad-f6fc-59d898856217','bh_script_param_response_modified_user','Users','users','id','bh_script_param_response','bh_script_param_response','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb22575c-69bc-0047-e29c-59d89806d1fe','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb60da51-14c3-407b-fae0-59d898b8383b','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('cbbbf9e2-589d-9bc6-d393-59d898950f7e','bh_script_param_response_created_by','Users','users','id','bh_script_param_response','bh_script_param_response','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cbdddd0a-36e8-b49a-527f-59d898c3c8b7','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc777098-1757-e8fb-ab42-59d898f5696b','bh_script_param_response_assigned_user','Users','users','id','bh_script_param_response','bh_script_param_response','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ccf473aa-b152-72f5-fd96-59d8988cb909','securitygroups_bh_script_param_response','SecurityGroups','securitygroups','id','bh_script_param_response','bh_script_param_response','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_script_param_response',0,0),('cd2bd51c-f15b-f0ff-3b56-59d898d8913c','bh_region_modified_user','Users','users','id','bh_region','bh_region','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cda8d38c-dd04-9288-086c-59d898a97f04','bh_region_created_by','Users','users','id','bh_region','bh_region','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cde754ff-5131-35bc-9639-59d898bcb5a4','bh_region_assigned_user','Users','users','id','bh_region','bh_region','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce6458e3-56d5-633f-4f46-59d898131f09','securitygroups_bh_region','SecurityGroups','securitygroups','id','bh_region','bh_region','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_region',0,0),('cf118fe6-6acb-eae9-e823-59d898bec67a','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cf921eaa-f3bd-d986-88c0-59d8983cbd09','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cfc97dc0-27ba-1abc-8703-59d8983cd07c','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cfcd0801-c76c-b84d-2bb1-59d8980f04c0','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d04a02c6-e85a-4b29-122d-59d898c247b2','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d04daaf2-d2bc-d67c-8aa4-59d8986c11b3','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d084fcec-36b9-68cc-ebb0-59d898616248','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d101f36c-a4c9-fbd7-4791-59d898430428','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d10590e4-a4f3-6418-05c5-59d898d61fad','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('d1829eb7-f6e8-f8d5-899a-59d89816d582','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('d1cbcb62-0b70-8d4c-f6a8-59d8981e8971','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d23e1815-4ca3-ff0e-905f-59d8984f60a3','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('d248d095-b44c-f7fc-61f9-59d89887b67a','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3045ef3-9f80-87e0-d4ed-59d8988f1a15','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3cd0e98-0a36-bde9-1a7a-59d89815db1a','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7cd5a62-f68f-f809-b095-59d898d65776','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d80bd046-a1bc-8c9a-70f6-59d898adb734','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d888e415-60c0-b04c-0312-59d89831b374','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d905ea3e-3299-dee3-19e8-59d898564405','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('d944697b-2062-d247-4800-59d898285df2','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('d9ffe9fc-4176-62eb-5104-59d8981e7c44','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('da7cee74-5209-a6b4-fdb5-59d898f27d45','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('daf9e9ff-cd4f-02c9-01d2-59d898f2ddf1','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('db386472-2931-470f-116e-59d89876c8a4','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('db9d0285-980b-62db-bc54-59d89843944e','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbb56b80-cef0-c52f-eed5-59d898611777','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc3264fb-a266-a735-3592-59d8988a6be2','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc7ba859-11b5-4d0b-9f5d-59d89823aadd','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcf8a3ea-961b-6952-b150-59d898b41507','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd4c9bb4-f2d0-232f-f09f-59d898211d42','bh_contact_person_modified_user','Users','users','id','bh_contact_person','bh_contact_person','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd5030e0-19fc-769c-f803-59d898837ae8','bh_scr_status_history_modified_user','Users','users','id','bh_scr_status_history','bh_scr_status_history','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ddc9aba6-7eff-2611-6607-59d898c5db93','bh_contact_person_created_by','Users','users','id','bh_contact_person','bh_contact_person','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ddcd3347-9c7b-add6-be79-59d898627576','bh_scr_status_history_created_by','Users','users','id','bh_scr_status_history','bh_scr_status_history','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dde7fcd4-339f-053a-3a09-59d89867043e','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de85279e-014a-b6fb-9869-59d898977600','bh_contact_person_assigned_user','Users','users','id','bh_contact_person','bh_contact_person','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dec0174d-d513-590c-dc26-59d89857dff3','bh_region_area_modified_user','Users','users','id','bh_region_area','bh_region_area','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dee1f564-3f8e-e862-1e9f-59d898258969','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('df022b53-f51a-6601-7125-59d898bb75eb','securitygroups_bh_contact_person','SecurityGroups','securitygroups','id','bh_contact_person','bh_contact_person','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_contact_person',0,0),('df05ba46-75fa-479a-5ff0-59d8982ac931','bh_scr_status_history_assigned_user','Users','users','id','bh_scr_status_history','bh_scr_status_history','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df3d1c68-8281-f304-77b8-59d898e29d50','bh_region_area_created_by','Users','users','id','bh_region_area','bh_region_area','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df850f1c-5d94-e42c-bbb3-59d8983c44ae','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df9d7a4d-2648-d41d-297a-59d898182ba1','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('dfba138f-b082-09ae-57f8-59d89800d72a','bh_region_area_assigned_user','Users','users','id','bh_region_area','bh_region_area','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfc13acb-71f0-aecd-d7bd-59d89831292d','securitygroups_bh_scr_status_history','SecurityGroups','securitygroups','id','bh_scr_status_history','bh_scr_status_history','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_scr_status_history',0,0),('e0759e09-d280-3f8d-7130-59d89804deaf','securitygroups_bh_region_area','SecurityGroups','securitygroups','id','bh_region_area','bh_region_area','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_region_area',0,0),('e3601284-7792-991e-6cfd-59d898bc7392','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e36d0f61-3a7c-3b28-a3f9-59d898641b39','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('e3dd1590-60ab-1692-23b1-59d8982ea845','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e5bba551-48ec-d34a-cbbc-59d898430766','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e6370152-8d9b-68c2-3226-59d8987db792','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('e638a60c-1844-6300-b290-59d89807bdf1','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e677271a-bf7e-9c6f-78cc-59d898e66716','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e6f42130-ee3f-ebf1-87d4-59d898384c2b','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('e7027973-fb6f-912f-faba-59d8980fc4d0','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e76d9d86-1232-5900-9e3e-59d89875b76f','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e77127e7-d105-e8c3-eb59-59d898feb1ad','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('e77f7fef-2e53-a5e2-b47e-59d8987276a4','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7bdf1e5-fc41-2068-41e1-59d8982f14bf','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7ea96cc-d043-0cf2-3802-59d898df99a4','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7ee2af2-769d-3b3a-c358-59d898219906','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('e8797fb9-bbf3-875a-203b-59d898087ad5','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('e8a61cd7-3aad-0e6b-c8e6-59d898e3b441','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e8a9bd19-e28a-f31d-3be1-59d8983663e8','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e8f67a05-8126-c0f8-8337-59d898822831','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('e9231b4c-3f73-fcd6-0d29-59d898882af9','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e926b53b-816c-8cdb-b1b3-59d8982c7b29','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e934f94e-1b9c-4afd-d42f-59d898c34f0c','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('e9a02d51-ab88-1fe2-39fc-59d8986a2c0c','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9a3b3a5-06a1-a229-001f-59d898c3f99b','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9b20dc4-d51d-7967-9426-59d898f23d2f','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('e9f0827a-d462-44a2-d8ac-59d898518f17','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('ea5f3f53-e065-37b9-b4b2-59d898180120','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea6d89ca-0bab-3b96-96ae-59d89870be95','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eadc3b2c-0cd9-945a-2571-59d8986fad78','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('eaea874e-0874-8356-4d36-59d89823fe2d','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eb1ab413-5ca6-00e1-13c9-59d898150590','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('eb3d0c58-2ca9-729f-af77-59d898099f92','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eb97b65e-f353-152f-ecb4-59d898e00da4','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('ebd63db8-5ba9-694b-cef4-59d89895a107','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec5339ce-855b-f81b-e958-59d8982cbd0b','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ecd045cf-9d6a-a53d-80dd-59d898a704ad','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ecdaf48e-6d49-9f5b-2dca-59d89831b46c','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ed4d47ff-c7ed-f581-6194-59d89822616f','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('edd4fd55-7820-beaa-90fa-59d898fceca6','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ee080f58-29b9-d6b8-a83c-59d8981543b3','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('ee51fcd0-e417-0db3-78e5-59d898e5630d','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ee7a0e64-a4c4-0cab-4460-59d8983b1c69','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef2607bd-757c-294a-84c6-59d898dc2991','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef91a3c1-beaa-6502-34d2-59d8980381a3','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f00ea11f-e560-26f6-9f14-59d8988f450d','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f015d437-ea1c-8ce9-d2c2-59d89851113f','bh_faq_modified_user','Users','users','id','bh_faq','bh_faq','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f092d256-8a2a-5b88-6b89-59d89823beb3','bh_faq_created_by','Users','users','id','bh_faq','bh_faq','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0ca26e7-1659-c336-8dfa-59d898d92019','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0fdf0c6-2708-fedd-d9d2-59d898608991','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f14e56ee-6345-5833-62f5-59d89811b456','bh_faq_assigned_user','Users','users','id','bh_faq','bh_faq','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f185b36d-4d35-f074-d4d5-59d8987ae6e7','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('f1b97a83-e6ad-90ff-8e8e-59d898cd9fe3','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f1cb5bf2-b5d0-88f4-a5b8-59d898e84237','securitygroups_bh_faq','SecurityGroups','securitygroups','id','bh_faq','bh_faq','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','bh_faq',0,0),('f202b149-28fe-d179-91c4-59d8989f2ebe','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f274fdda-1b3d-3ad5-283e-59d898892097','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f2be3ab7-dea5-5a36-8c61-59d8983fc95d','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f33b3b08-c0f1-5415-b82c-59d898777c85','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f649005d-af7e-88f7-ede2-59d89840a3e9','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f9c00908-5a49-52e6-877b-59d8987efb49','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('fe1a0368-62f2-d97e-d9f3-59d89819ac26','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `related_event_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('95050bc1-5edf-8c45-896d-599a76d1e980',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 16:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('992b9df2-1569-8319-6e34-599a76de1ef3',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 14:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('9c58252b-3ca9-e925-aa41-599a765653c0',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 17:00:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('9f84a355-b93f-9718-48ba-599a7661f51d',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 14:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('a2b13c5c-e4ce-97b8-3d69-599a760d703f',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 13:00:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('a5ddc8ce-942c-fc61-97d2-599a76d638f5',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 11:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('a948dec9-3c7c-3ef9-c360-599a7644bd07',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 16:45:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('ac36db67-d9d7-169d-e175-599a764eca47',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 19:00:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0),('af636980-2316-c922-592d-599a76c49abd',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 11:00:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('b28ff6e7-07b0-d6ed-7d5b-599a76282dde',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 06:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('b57dfa9b-76ab-cf91-66fd-599a763feb6b',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 15:00:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('b8aa8be6-2132-0c82-429a-599a769e7026',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 09:30:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('bb989960-f2dd-0744-86f8-599a76f05fd0',0,'2017-08-21 05:56:19','2017-08-21 05:56:19','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 12:30:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
INSERT INTO `securitygroups` VALUES ('5fceea0f-484d-978c-0c13-599ae1171c0d','Тестовая группа','2017-08-21 13:34:26','2017-08-21 13:42:34','1','1',NULL,0,'1',0);
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
INSERT INTO `securitygroups_records` VALUES ('2ec6d05b-8c91-11e7-98ee-7446a08797ed','5fceea0f-484d-978c-0c13-599ae1171c0d','17f34406-be07-b7c2-d4be-59a520054121','Documents','2017-08-29 00:00:00',NULL,NULL,0),('b7b971ed-cfe8-2df4-8d56-599bcb75e4bc','5fceea0f-484d-978c-0c13-599ae1171c0d','559fa3be-40ba-9fe7-c560-599bcbc2bded','Leads','2017-08-29 07:32:43','','',1),('c1ace007-8c91-11e7-98ee-7446a08797ed','5fceea0f-484d-978c-0c13-599ae1171c0d','8420ca84-e12c-46af-d9b1-59a521ab1f0e','Documents','2017-08-29 00:00:00',NULL,NULL,0),('cbfd4cab-8c7a-ca5f-a3a6-599bcbd15205','5fceea0f-484d-978c-0c13-599ae1171c0d','4a2d9def-1fda-713f-409f-599a892565f9','Leads','2017-08-30 14:07:36','','',0),('f354fe6b-8c8e-11e7-98ee-7446a08797ed','5fceea0f-484d-978c-0c13-599ae1171c0d','8fda4bce-7a45-4cea-a6a2-59a51d956d10','Documents','2017-08-29 00:00:00',NULL,NULL,0);
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('1efe0ba8-9e7a-7e31-e3b8-59afefed53f3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:b55d023e-ae8f-cead-e37a-59afef888ffe:Qweqeqw]','2017-09-06 12:50:43','2017-09-06 12:50:43','1','1',NULL,0,'1','Leads','b55d023e-ae8f-cead-e37a-59afef888ffe',NULL,NULL),('2d4ca70e-2ef7-ec61-79ab-59c3c868d66f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:15b2317d-5f17-b967-0f5d-59c3c87bbba0:Мама]','2017-09-21 14:09:43','2017-09-21 14:09:43','1','1',NULL,0,'1','Leads','15b2317d-5f17-b967-0f5d-59c3c87bbba0',NULL,NULL),('32198f3b-7e9a-fdb9-725f-59a50f6064ad','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:832522a5-c2bf-1b3f-6541-59a50fc69935:qwerty]','2017-08-29 06:53:44','2017-09-04 13:02:54','1','1',NULL,1,'1','Leads','832522a5-c2bf-1b3f-6541-59a50fc69935',NULL,NULL),('4d9a0cce-8ffe-2cb5-bc2f-59a9504a96ed','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:838d76b5-f039-452c-f060-59a95005195b:цуцуцуц]','2017-09-01 12:20:52','2017-09-04 13:02:31','1','1',NULL,1,'1','Leads','838d76b5-f039-452c-f060-59a95005195b',NULL,NULL),('5231df79-2462-dc87-4baa-59b111bfe249','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:10c2e549-c39f-7ef0-f7da-59b11183c89e:Qwd]','2017-09-07 09:28:59','2017-09-07 09:28:59','1','1',NULL,0,'1','Leads','10c2e549-c39f-7ef0-f7da-59b11183c89e',NULL,NULL),('791dd9ac-597b-447f-96ed-59c3776a0e1d','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:6acfcff6-723f-f3e3-3c1b-59c377a909f2:1]','2017-09-21 08:23:44','2017-09-21 08:23:44','1','1',NULL,0,'1','Leads','6acfcff6-723f-f3e3-3c1b-59c377a909f2',NULL,NULL),('79cc9d90-7ba2-ca9a-d484-59b0e0051fe0','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:42592f10-786a-0ed0-3aa8-59b0e0dcb109:Bjbjbjb Erwe]','2017-09-07 06:00:05','2017-09-07 06:00:05','1','1',NULL,0,'1','Leads','42592f10-786a-0ed0-3aa8-59b0e0dcb109',NULL,NULL),('88ae8821-d295-9e17-1940-599a89ff01fd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:4a2d9def-1fda-713f-409f-599a892565f9:test]','2017-08-21 07:21:18','2017-09-04 13:02:50','1','1',NULL,1,'1','Leads','4a2d9def-1fda-713f-409f-599a892565f9',NULL,NULL),('8a5115db-cfa3-0b07-f8ef-59ba212e89b5','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:9e430572-0c88-020a-a77c-59ba2115b313:adasdadsdad] {SugarFeed.FOR} [Accounts:d45b7965-8105-7147-d758-59ba21cbfdef:Рога и копыта]: ','2017-09-14 06:29:12','2017-09-14 06:29:12','1','1',NULL,0,'1','Cases','9e430572-0c88-020a-a77c-59ba2115b313',NULL,NULL),('91e94bf9-b442-877b-d911-59b10ffbe9b5','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:1a850344-233e-e32f-fe21-59b10fc56fe1:TEST]','2017-09-07 09:19:04','2017-09-07 09:19:04','1','1',NULL,0,'1','Leads','1a850344-233e-e32f-fe21-59b10fc56fe1',NULL,NULL),('97284423-5214-cdd7-8b10-59c38a14fb27','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:8d61d039-9372-369c-f48f-59c38ae4f7fb:4]','2017-09-21 09:47:52','2017-09-21 09:47:52','1','1',NULL,0,'1','Leads','8d61d039-9372-369c-f48f-59c38ae4f7fb',NULL,NULL),('a6c76f28-8379-1ba3-9018-59a67c448f0f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:484a8025-f2a1-f64a-e028-59a67cff19a5:Пустая запись]','2017-08-30 08:51:24','2017-09-04 13:02:32','1','1',NULL,1,'1','Leads','484a8025-f2a1-f64a-e028-59a67cff19a5',NULL,NULL),('af1eb4c5-fd96-6068-4675-59affbb34790','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:711acfc9-ba15-32d6-171e-59affbea8e58:Sdfsdfdsf]','2017-09-06 13:43:34','2017-09-06 13:43:34','1','1',NULL,0,'','Leads','711acfc9-ba15-32d6-171e-59affbea8e58',NULL,NULL),('b30d656e-07e7-9c39-1fbb-59c38802ed58','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:a909e9a5-90ce-7a2f-fd1a-59c38846be76:23]','2017-09-21 09:39:16','2017-09-21 09:39:16','1','1',NULL,0,'1','Leads','a909e9a5-90ce-7a2f-fd1a-59c38846be76',NULL,NULL),('b92dcb90-57b3-2ae3-10fb-59b8cebfa5c9','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:5a7265ea-aa41-cc92-4445-59b8ce6cc94a:12313123]','2017-09-13 06:23:00','2017-09-13 06:23:00','1','1',NULL,0,'1','Leads','5a7265ea-aa41-cc92-4445-59b8ce6cc94a',NULL,NULL),('bea70737-23da-fc54-77c6-59a512b29f5c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:86bdbdc5-2a0a-fde9-d210-59a512d4d699:фамилия]','2017-08-29 07:06:46','2017-09-04 13:02:36','1','1',NULL,1,'1','Leads','86bdbdc5-2a0a-fde9-d210-59a512d4d699',NULL,NULL),('c306c626-4b77-0911-5f61-59ca6c62233f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:98d382fa-5d6c-7a6e-c895-59ca6cc9dc07:Валера]','2017-09-26 15:04:25','2017-09-26 15:04:25','1','1',NULL,0,'1','Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07',NULL,NULL),('c4344832-ac48-de8a-8703-59b0e07abc46','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:e32272a9-d480-2e6c-abc4-59b0e087ec6f:Bjbjbjb Erwe]','2017-09-07 06:00:56','2017-09-07 06:00:56','1','1',NULL,0,'1','Leads','e32272a9-d480-2e6c-abc4-59b0e087ec6f',NULL,NULL),('cfb362b9-db7e-583c-441a-599bcb55db2b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:559fa3be-40ba-9fe7-c560-599bcbc2bded:аа]','2017-08-22 06:14:11','2017-09-04 13:02:54','1','1',NULL,1,'1','Leads','559fa3be-40ba-9fe7-c560-599bcbc2bded',NULL,NULL),('d023bffd-fbc4-285c-e53e-59c36fe27c65','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:9ce12f06-52ad-9bbe-3467-59c36fa66eef:Dsddsd]','2017-09-21 07:50:10','2017-09-21 07:50:10','1','1',NULL,0,'1','Leads','9ce12f06-52ad-9bbe-3467-59c36fa66eef',NULL,NULL),('ead524fb-07ae-7eb1-c901-59aea13893a3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:3e372765-5b6e-54bd-3f65-59aea194b1e0:Цуйуц]','2017-09-05 13:05:30','2017-09-05 13:05:30','1','1',NULL,0,'1','Leads','3e372765-5b6e-54bd-3f65-59aea194b1e0',NULL,NULL),('edb30fd0-0178-a3ce-c9dd-59b6a125a6ff','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:70007648-47bc-d3b4-9904-59b6a1659460:Вавяфывваы]','2017-09-11 14:46:53','2017-09-11 14:46:53','1','1',NULL,0,'1','Leads','70007648-47bc-d3b4-9904-59b6a1659460',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('16e36973-7b85-cc98-f04e-59ccb6b74043','Ремонт ходовой','2017-09-28 08:46:20','2017-09-28 08:46:20','1','1','',0,'1','Completed',1,NULL,1,NULL,'Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','','High'),('39ef8cad-5ffc-bf53-114a-59ccab2040bb','Эвакуатор','2017-09-28 07:59:27','2017-09-28 07:59:27','1','1','',0,'1','Not Started',1,NULL,1,NULL,'Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','','High'),('a66a8b08-3a52-1a1a-f647-59ccb3ff5d77','Покупка талонов','2017-09-28 08:30:48','2017-09-28 08:30:48','1','1','',0,'1','Not Started',1,NULL,1,NULL,'Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','','High'),('a7d8084e-9e88-9154-f30a-59ccb7b9e9b7','Ремонт колеса','2017-09-28 08:48:29','2017-09-28 08:48:29','1','1','',0,'1','Completed',1,NULL,1,NULL,'Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','','High'),('ec45de78-a05a-8054-eb21-59ccb7ec063c','Замена двигателя','2017-09-28 08:49:24','2017-09-28 08:49:24','1','1','',0,'1','In Progress',1,NULL,1,NULL,'Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','','High');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
INSERT INTO `templatesectionline` VALUES ('6d970a65-c062-b5db-5cf5-59d1e6c4bdb5','Headline','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<p></p><h1>Add your headline here..</h1>',0,'include/javascript/mozaik/tpls/default/thumbs/headline.png',NULL,1),('7c7bb2fd-25d5-1e7c-3849-59d1e612bb12','Content','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>',0,'include/javascript/mozaik/tpls/default/thumbs/content1.png',NULL,2),('9c77b7b5-4ced-4a5e-3d76-59d1e630bada','Content with two columns','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/content2.png',NULL,3),('a2d0cfba-f391-ceef-cdf2-59d1e6cc4b3d','Content with three columns','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/content3.png',NULL,4),('a7f15c44-678f-3657-0c0e-59d1e6c023ef','Content with left image','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image1left.png',NULL,5),('ad11fade-1860-6044-0116-59d1e6f73e4b','Content with right image','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image1right.png',NULL,6),('b2af8cb2-af79-5602-3dbc-59d1e6b18b33','Content with two image','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image2.png',NULL,7),('b80e9094-e6b9-21b4-d4a6-59d1e63ffd03','Content with three image','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://stwork.int/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image3.png',NULL,8),('bcf0adeb-7c0e-bc5e-c427-59d1e65f4eba','Footer','2017-10-02 07:11:05','2017-10-02 07:11:05','1','1','<p class=\"footer\">Take your footer contents and information here..</p>',0,'include/javascript/mozaik/tpls/default/thumbs/footer.png',NULL,9);
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=1872 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (109,'97330f8b-4418-f38a-08ff-599ae3a25b85','1','SecurityGroups','5fceea0f-484d-978c-0c13-599ae1171c0d','Тестовая группа','2017-08-21 13:42:37','detailview','fv2eaeegi81oiuqm2h2bllubn1',1,0),(136,'f0a8a917-f08b-e826-6024-599bce2004b7','1','ACLRoles','d191d6fe-6762-5011-a734-599bca2b2a07','Роль1','2017-08-22 06:25:17','detailview','fk5f5nrd4clm4qum7rasugk8b1',1,0),(385,'8fc50a54-f854-3e85-b619-59a511bb6ee4','1','Leads','832522a5-c2bf-1b3f-6541-59a50fc69935','qwerty123','2017-08-29 07:04:24','detailview','fk5f5nrd4clm4qum7rasugk8b1',0,0),(386,'58a67775-4160-197d-c924-59a51247d448','1','Documents','b55c0f3e-abbf-da4c-0805-59a50fca9fe1',NULL,'2017-08-29 07:05:05','editview','fk5f5nrd4clm4qum7rasugk8b1',0,0),(391,'8091e095-0fe9-e3e9-6e90-59a517394074','1','Leads','86bdbdc5-2a0a-fde9-d210-59a512d4d699','фамилия','2017-08-29 07:27:40','detailview','fk5f5nrd4clm4qum7rasugk8b1',0,0),(392,'d65f86ce-93d4-ff33-e56f-59a5171a2bd0','1','Leads','559fa3be-40ba-9fe7-c560-599bcbc2bded','аа','2017-08-29 07:28:05','detailview','fk5f5nrd4clm4qum7rasugk8b1',0,0),(412,'3cee409f-3e20-6106-4f27-59a527af053c','1','AOW_WorkFlow','5f2441bd-29f9-1463-bdf0-59a50f636276','Расчет возраста','2017-08-29 08:36:43','detailview','fk5f5nrd4clm4qum7rasugk8b1',0,0),(597,'6039c6c5-bda6-2ee1-2628-59a941dc0b3f','1','Users','eff07114-603c-c0d2-0e5e-599bcd264773','test','2017-09-01 11:17:26','detailview','han2pctuq3mjr1m149lfh1vth1',1,0),(599,'132c0d7e-3583-9480-d9ad-59a9429d6b7f','eff07114-603c-c0d2-0e5e-599bcd264773','Users','eff07114-603c-c0d2-0e5e-599bcd264773','test','2017-09-01 11:19:17','detailview','ke6jrjtssg2nv82ehecihhqrm3',1,0),(656,'61384db2-6905-387d-2ab5-59a9744936ca','eff07114-603c-c0d2-0e5e-599bcd264773','Leads','838d76b5-f039-452c-f060-59a95005195b','wqwqwqw цуцуцуц','2017-09-01 14:54:15','detailview','vp60q2ruk480hd2u8tet5preq0',1,0),(665,'6cefeeb9-a71f-ffa3-9fed-59acf0a61198','1','Leads','838d76b5-f039-452c-f060-59a95005195b','wqwqwqw цуцуцуц','2017-09-04 06:17:44','detailview','bokhsomk3noe0ouv6nlb0vf424',1,0),(685,'718e552e-36ba-6f37-b666-59ad174811f6','1','Leads','484a8025-f2a1-f64a-e028-59a67cff19a5','Пустая запись','2017-09-04 09:06:43','editview','83as18aqn1l1bq8kra3769auj1',1,0),(759,'da8572f0-e276-d134-cba8-59aeb78b02b5','1','Leads','3e372765-5b6e-54bd-3f65-59aea194b1e0','Цуйуц','2017-09-05 14:40:34','detailview','4ov9u0kgo81jedpcdctebg5ji5',0,0),(783,'4d730886-ad8c-ab3d-5440-59affb74a2fd','1','Leads','711acfc9-ba15-32d6-171e-59affbea8e58','Sdfsdfdsf','2017-09-06 13:44:54','detailview','h7r55u6ffeqgvpn8bech9qpo50',1,0),(785,'58620367-43c0-64d8-998d-59b008523404','1','Leads','b55d023e-ae8f-cead-e37a-59afef888ffe','Qweqeqw','2017-09-06 14:37:35','editview','cj74p074cki1gqrti4613dfcu3',1,0),(786,'59b24296-f3bf-e8c6-7adb-59b0e0c42bb8','1','Leads','42592f10-786a-0ed0-3aa8-59b0e0dcb109','Bjbjbjb Erwe','2017-09-07 06:00:16','detailview','cj74p074cki1gqrti4613dfcu3',1,0),(791,'c122245f-3bbc-bfe5-a7aa-59b0e2fd38fc','1','Leads','e32272a9-d480-2e6c-abc4-59b0e087ec6f','Bjbjbjb Qqqqqqqqqqqqq','2017-09-07 06:08:03','detailview','cj74p074cki1gqrti4613dfcu3',1,0),(802,'68d778c8-b8e4-a4e0-1a70-59b105e95e72','1','Leads','4a2d9def-1fda-713f-409f-599a892565f9','Тест Тестовый','2017-09-07 08:40:15','editview','jpj4j0dgbgt4dm7e18mcod1395',1,0),(805,'e0507bc2-dbf5-89c2-c9e5-59b1116415f5','1','Leads','10c2e549-c39f-7ef0-f7da-59b11183c89e','Qwd','2017-09-07 09:29:54','editview','nli5pj2i7jdgscs01kdno7nhh2',1,0),(842,'865105c6-0ea2-aaf9-7dc6-59b69968547f','1','bh_Card_ident','3bd563c6-65dc-e97a-3cfc-59b64503040f','242344кцукукуцкц','2017-09-11 14:10:18','detailview','9n5iofduj8o6i1202nhpajqhm1',1,0),(905,'d9373d9e-f849-402e-bcba-59b8ec8e5684','1','bh_org_trade_points','b28f695c-119e-2025-b215-59b8db435115','ТОчка 1','2017-09-13 08:31:35','editview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(924,'91ba0b1b-f194-8536-4132-59b90196e2ec','1','bh_organizations','a458164c-0e99-6007-b8f6-59b90109ab8a','цуйуйцуй','2017-09-13 09:59:21','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(928,'c4300a81-0acb-c276-e490-59b90fee2bfc','1','bh_organizations','810e0a4a-2d62-5d82-4d3f-59b8ff128fea','Организация 1','2017-09-13 10:58:07','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(932,'cb22846e-0ec8-5edd-ca8a-59b91d98445c','1','bh_org_trade_points','18bd9629-d148-fc4f-0bde-59b91d30ba8d','Точка1','2017-09-13 11:59:09','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(948,'2c4a8fc5-8ffb-d026-7f94-59b92fc3b955','1','bh_Realty','900c0ca4-717c-71a5-03f9-59b7d157cf73','Квартира 1','2017-09-13 13:13:51','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(951,'a0ff2905-c80f-b088-a85d-59b9390ad05a','1','bh_faq','afeac37e-153a-349b-061e-59b78ce04a05','Как правильно заинтересовать клиента','2017-09-13 13:57:52','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(952,'4b7ae7b6-f945-d195-458b-59b93916728f','1','bh_faq_history','7a4f1e1a-79b3-d870-ac7c-59b78ca84ed6','Правильно заинтересовывать так','2017-09-13 13:58:04','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(954,'a152ff8b-d867-4e36-80ce-59b9436af6e8','1','bh_Scripts_employee_comment','1a01a3bd-a719-a223-3eb5-59b943ad5116','Комментарий','2017-09-13 14:41:23','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(955,'48ebea9e-aba1-78d2-1b96-59ba1e26a3cf','1','bh_script_param_response','17ae3e18-60df-2d00-3d76-59b940929860','test','2017-09-14 06:15:33','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1004,'6d5c5f88-4e6e-89e0-b34d-59bb8884f0d7','1','Leads','70007648-47bc-d3b4-9904-59b6a1659460','Вавяфывваы','2017-09-15 08:00:34','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1037,'905fa946-2181-d33c-e0ed-59bba3244f25','1','bh_Scripts_leadership_recommend','863d0ced-1265-5628-ec69-59bb70c7b1ee','Скрипт очень крутой','2017-09-15 09:56:58','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1046,'e3b5b089-fd48-386c-f40b-59bbbc86e4a1','1','Leads','1a850344-233e-e32f-fe21-59b10fc56fe1','TEST','2017-09-15 11:40:13','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1073,'30cf0ce6-4136-a180-8882-59bbd0bcce0a','1','bh_cases_log','35e9cdfc-a364-d2d0-5521-59ba8e52b293','Обращение 1','2017-09-15 13:06:15','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1089,'8bb69f76-8fc5-9c4b-7458-59bfb71583d9','1','bh_marketing_company_history','61c060b8-0391-3e3c-a034-59bfa8231477','Пам','2017-09-18 12:10:18','detailview','704t98d0ffv90o8dgcak81l3o0',1,0),(1090,'4b942301-60d4-4926-ce40-59bfba1e44c0','1','bh_marketing_response','aaf23322-06e2-0bb4-6a12-59bfbaae9ba1','Test','2017-09-18 12:24:10','detailview','704t98d0ffv90o8dgcak81l3o0',0,0),(1097,'2d0fad0e-1cc9-015e-ba54-59c209444947','1','bh_scripts','e1b4e2b2-c827-1cbc-f4bd-59bb8fc5f4e6','ВОт такой скрип','2017-09-20 06:22:36','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1101,'46555b96-86e5-ec41-e6b2-59c20d7d55d3','1','bh_marketing_directorate','ac2361ec-f3ca-1138-8d47-59c20de54bc1','12','2017-09-20 06:41:32','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1106,'ce3b6556-904e-7bd7-7b86-59c20f3f4732','1','bh_marketing_company','d431499d-a668-1db4-8b3d-59bf89d1ebb8','Парам пам пам','2017-09-20 06:48:37','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1108,'aba906b0-a061-387b-c625-59c2119628aa','1','bh_Autotransport','4fc0c7e0-08e2-cc2b-20b7-59b900899d00','Авто1','2017-09-20 06:56:46','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1127,'c9f0c264-9b30-3b8d-4622-59c223d49acb','1','bh_case_compound','a79292fc-f0e5-d67a-46f2-59bbc2dbe213','название','2017-09-20 08:14:20','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1134,'5defdafb-9971-0c37-3c3a-59c22c532a29','1','Cases','9e430572-0c88-020a-a77c-59ba2115b313','adasdadsdad','2017-09-20 08:54:59','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1136,'dc4c7bf2-d579-6f6f-5382-59c22dc5591a','1','bh_Autotransport','35a4e2aa-5dc6-d455-e9e9-59c21d48be24','Авто','2017-09-20 08:59:27','editview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1140,'20e6d416-8d28-21e4-2eb1-59c2396b8ef3','1','bh_providers','e8780716-2587-fba6-b6bd-59b7eb19fc44','Рога и КОпыта','2017-09-20 09:49:38','detailview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1142,'50d2e713-4038-ede5-d9eb-59c24d1067d6','1','bh_org','2553f09e-02ea-9028-fb5e-59b920e28d1c','Организация 1','2017-09-20 11:13:29','editview','7ipelfc6tefdvdmo9fmos4qkn5',1,0),(1155,'7a1202ab-fdf9-fd3c-7d81-59c36fccd433','1','Leads','9ce12f06-52ad-9bbe-3467-59c36fa66eef','Dsddsd','2017-09-21 07:50:18','detailview','9jka2v7o5r4lehs4tp86b2n5b4',1,0),(1157,'6dac2bf5-4ad8-c812-b89b-59c3884d372c','1','Leads','a909e9a5-90ce-7a2f-fd1a-59c38846be76','23','2017-09-21 09:39:24','detailview','9jka2v7o5r4lehs4tp86b2n5b4',1,0),(1159,'8a486b5b-cbee-7b30-ba2a-59c3ac1410b4','1','Leads','8d61d039-9372-369c-f48f-59c38ae4f7fb','4','2017-09-21 12:13:20','detailview','9jka2v7o5r4lehs4tp86b2n5b4',1,0),(1177,'e9a6710f-b971-c93f-f291-59c4b90ffd4c','1','bh_lead_adress','cdfe0480-e6e6-db79-ad5f-59c258a02b61','Адр','2017-09-22 07:18:19','editview','oadlbhfjhsdcdlhg3q2t866vs7',1,0),(1186,'81b30eda-9070-59e8-0864-59c4c6e88289','1','bh_region','125bb334-314b-ef8b-a4a1-59c4bce5e0a3','Одесская область','2017-09-22 08:16:24','detailview','oadlbhfjhsdcdlhg3q2t866vs7',1,0),(1189,'a88fd552-43c2-fe85-daa0-59c4cb471645','1','bh_country','7cb164fe-204f-dfc2-8436-59c4b39d584e','Украина','2017-09-22 08:34:34','detailview','oadlbhfjhsdcdlhg3q2t866vs7',1,0),(1190,'acda7430-30c6-e547-5ff3-59c4dcd5f309','1','bh_passports','81b30487-f8a6-ee09-ef84-59c4dc8ed1eb',NULL,'2017-09-22 09:46:48','detailview','oadlbhfjhsdcdlhg3q2t866vs7',1,0),(1207,'cc16157e-8309-d3ba-8ffc-59ca095477de','1','Accounts','d45b7965-8105-7147-d758-59ba21cbfdef','Рога и копыта','2017-09-26 08:01:07','detailview','rgrn2c2g8as4ge1b160r59v1k0',1,0),(1294,'be42020a-56a5-be55-ac0f-59ca52fe69a9','1','Leads','6acfcff6-723f-f3e3-3c1b-59c377a909f2','1','2017-09-26 13:12:35','editview','rgrn2c2g8as4ge1b160r59v1k0',1,0),(1340,'bdc7f9f7-bf89-f723-0a61-59ca5fe54946','1','bh_communicators','60cc4274-135d-7edf-ffeb-59ca0b4eeb6a','12','2017-09-26 14:07:38','editview','rgrn2c2g8as4ge1b160r59v1k0',1,0),(1423,'a1e2d8bd-76a1-b853-2bff-59ccbe787df5','1','Tasks','ec45de78-a05a-8054-eb21-59ccb7ec063c','Замена двигателя','2017-09-28 09:20:07','detailview','1ekhcn3ae6c0ap75ja1svvcq50',1,0),(1469,'76bb84b8-d3f8-0ede-386a-59ccfea85399','1','bh_phones','2b7f4cf2-c725-3f4c-de28-59c91319bb23',NULL,'2017-09-28 13:53:52','detailview','1ekhcn3ae6c0ap75ja1svvcq50',1,0),(1528,'9abbdaa5-1a03-fede-f5c6-59ce2ddf5c12','1','Leads','15b2317d-5f17-b967-0f5d-59c3c87bbba0','Мама','2017-09-29 11:26:21','detailview','gkmh8nc6oh1q2l2i5jidn6qij2',1,0),(1540,'123e3662-9fdc-951a-94e0-59d1e572cd19','1','Campaigns','9acf08d5-024e-412b-be11-59d1e04134b9','sssss','2017-10-02 07:04:46','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1541,'81800dcf-0729-b866-b71c-59d1e55912a4','1','Campaigns','f05d0f96-3e1c-6f00-8c2d-59d1e5c25ef9','моя','2017-10-02 07:07:47','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1543,'efea125d-680a-93b5-af73-59d1e7598775','1','Campaigns','c1455a14-42a3-3790-84ca-59d1e676ad27','ййй','2017-10-02 07:13:30','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1550,'9ee4f463-fccb-cd91-407e-59d1fdd8394c','1','Campaigns','51b98206-9490-5a8a-b032-59d1e7fc5b7a','test','2017-10-02 08:50:14','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1552,'c2023ae2-5513-4fb7-d61b-59d1ffe6646f','1','Campaigns','1ed19be7-94c2-25d0-0b3a-59d1fe8df63f','моя тестовая 1','2017-10-02 08:56:18','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1554,'6f4ade99-8b5b-5f49-c3fa-59d214b45ff2','1','Campaigns','5727958b-2c4b-87e4-d763-59d20c9f7ca6','тест юра','2017-10-02 10:28:44','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1556,'2011390d-faf6-acde-f1d1-59d2189bfa41','1','Campaigns','17d20276-8067-1b81-97d9-59d218370d5b','test1','2017-10-02 10:45:46','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1557,'640b4612-e309-e180-0ddf-59d21a9c4082','1','Campaigns','2529fb54-1576-0088-a446-59d21afde5c1','11111','2017-10-02 10:51:09','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1558,'7c2e5dcd-85ae-8f36-0deb-59d21ac4c72d','1','Campaigns','98a40280-effe-124e-331c-59d21ae4750e','222222','2017-10-02 10:51:59','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1559,'9532946b-466c-631f-1b57-59d21a1bd01e','1','Campaigns','f34f0858-460c-1912-b873-59d21a2b3174','qqqqqqq','2017-10-02 10:53:17','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1560,'33222dcd-bd59-45bd-4239-59d21b60df69','1','Campaigns','896e8aca-8bfc-63a3-edb4-59d21bdbab08','новая','2017-10-02 10:56:17','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1561,'f135eb2b-7fd2-b8fe-f790-59d21ddc6417','1','Campaigns','34910e79-5d01-b742-5a9f-59d21dfe16cf','камп 1','2017-10-02 11:04:19','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1562,'832c92e0-039c-f4e8-ee34-59d227d8b886','1','Campaigns','783704f3-0d96-ea61-b319-59d227b3908b','тест юра','2017-10-02 11:49:17','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1563,'3346a766-0885-80a7-1d7a-59d228320462','1','Campaigns','1bf2e844-8764-d8e2-b3cd-59d228b2fa80','ццццц','2017-10-02 11:52:59','save','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1564,'430241a9-915e-1bf4-cc39-59d233286d60','1','Campaigns','cd986260-4c2a-1f3a-58fe-59d232973e79','компания 111','2017-10-02 12:40:19','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1566,'40675bf4-0ba7-06ee-dd38-59d2385a17df','1','Campaigns','47c9c4b7-4e4b-6596-2ad9-59d238ebe0bd','тест 2222','2017-10-02 13:02:51','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1571,'24928351-b826-1692-0f7f-59d24a1bb073','1','ProspectLists','ef76f4c9-a638-bab4-f91a-59d1e4089280','мой','2017-10-02 14:16:17','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1575,'e9cd8220-8a6f-00a5-bab0-59d345abf359','1','InboundEmail','d5395caa-5dc9-4cd0-c5b0-59d34509d5a0','test','2017-10-03 08:08:05','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1576,'20f663e4-098a-1183-309d-59d34717ae35','1','Campaigns','b5183c65-1b93-5e6e-b364-59d24333e4a8','new 1','2017-10-03 08:18:23','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1597,'68d3bdda-aaf7-b1da-75bd-59d35208c06a','1','bh_marketing_company_history','61c060b8-0391-3e3c-a034-59bfa8231477','Пам','2017-10-03 09:01:55','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1669,'acb007c9-5e1c-01e8-be57-59d3934a2d42','1','Cases','9e430572-0c88-020a-a77c-59ba2115b313','adasdadsdad','2017-10-03 13:40:53','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1672,'18d027d1-5a2f-0e00-bcc4-59d3984e9ed6','1','Documents','9193a8b7-a12e-afbf-3979-59ba79cb5d22','Документ 1','2017-10-03 14:00:57','editview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1675,'116878fb-68eb-a312-68e3-59d39da8afa8','1','AOS_PDF_Templates','29661054-86f4-9bea-a18f-59d3976e2037','мой шаблон','2017-10-03 14:23:00','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1677,'a6a29b02-8ea7-3734-3464-59d3a3131fc4','1','bh_marketing_response','aaf23322-06e2-0bb4-6a12-59bfbaae9ba1','Test','2017-10-03 14:49:18','detailview','ee4m7lf1qdvbqra4lgg4sadn04',0,0),(1681,'7aff4a3f-88c3-b973-2aa4-59d4780b737d','1','bh_channels_impact','6f216cb1-9775-2242-895d-59d363d9bfa1','Канал 1','2017-10-04 05:58:15','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1689,'3ed60094-46f4-f77d-65db-59d480b0a7d9','1','AOS_Products','dd77710e-fd7e-fed7-124f-59d4802bb968','Товар топливо','2017-10-04 06:31:55','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1720,'d32d02a6-5470-f37d-fd19-59d49500c8c2','1','AOS_Products','ece2079a-b00c-3d10-7add-59d484650d4a','Услуга эвакуатора','2017-10-04 08:03:37','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1722,'2c1ad3fc-7ab1-4c85-1a1a-59d496640db8','1','bh_formed_packets','f3d20d02-cabe-a079-6b45-59d496d392f4','Пакет 3','2017-10-04 08:07:52','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1724,'beca28cd-02e6-dc10-2cda-59d497b61e20','1','bh_marketing_response','f34f076b-3745-ce6a-978c-59d359b4b094','отклик от клиента Администратор','2017-10-04 08:12:29','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1728,'c9095254-34a2-cf59-6ab8-59d4a0beb19d','1','bh_marketing_response','7769832a-236d-bfbd-fcb6-59d49d972ed1','Отклик от клиента Валера','2017-10-04 08:47:09','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1731,'bea1346e-bf26-650f-c36c-59d4a44998be','1','AOS_Products','94f6d3be-aa40-c800-02c7-59d373af2ff6','test','2017-10-04 09:06:12','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1744,'a36a4689-da5f-5250-380b-59d4babe1095','1','AOS_Products','379778c7-a5c6-67e5-ebc4-59d4a63f0710','Бензин канистра','2017-10-04 10:41:06','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1749,'ba9cf3d4-c91d-0d11-7b61-59d4c45f5a0a','1','AOS_Products','952151a3-60a8-2c53-3404-59d48521121c','Талон на бензин AИ 92','2017-10-04 11:20:50','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1754,'44bc4765-d473-8226-a7b6-59d4c6587722','1','AOS_Products','22328d1a-9962-3f5e-3618-59d485e104eb','Талон на бензин AИ 95','2017-10-04 11:29:37','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1755,'df960827-897f-8b2c-1270-59d4c67c7851','1','bh_campaine_products','370e7ee5-9fc1-cd14-8b2d-59d36f14c292','Продукт 1','2017-10-04 11:30:52','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1757,'1319449f-d7ac-033b-f7d6-59d4c7b8db12','1','bh_marketing_directorate','ac2361ec-f3ca-1138-8d47-59c20de54bc1','Список клиентов Компания 1','2017-10-04 11:33:54','detailview','ee4m7lf1qdvbqra4lgg4sadn04',1,0),(1762,'c18a8910-5ac9-1a7e-4d15-59d4cca5e8f3','1','bh_Autotransport','4fc0c7e0-08e2-cc2b-20b7-59b900899d00','Авто1','2017-10-04 11:57:22','detailview','7kcqatoejjk06gjqoqr9u9tvb7',1,0),(1763,'60d08a23-1d15-15e3-82e4-59d4cc55dc9c','1','bh_Autotransport','35a4e2aa-5dc6-d455-e9e9-59c21d48be24','Авто','2017-10-04 11:57:53','detailview','7kcqatoejjk06gjqoqr9u9tvb7',1,0),(1766,'e451885e-22bf-e7bd-d80c-59d4cd969d53','1','bh_Autotransport','4ead9f49-d87b-7fe5-c730-59cc9c77c36a','Клиент Валера BMW 720i','2017-10-04 12:00:42','detailview','7kcqatoejjk06gjqoqr9u9tvb7',1,0),(1767,'3f035daf-ae44-1fa1-5581-59d4cd85f155','1','Leads','98d382fa-5d6c-7a6e-c895-59ca6cc9dc07','Валера','2017-10-04 12:02:25','detailview','7kcqatoejjk06gjqoqr9u9tvb7',1,0),(1771,'a9ff2103-1036-6d95-5928-59d4da711bf2','1','bh_packet_activation','2905487e-f13a-594a-6d2f-59bb73118e66','Пакет 1 активация','2017-10-04 12:57:51','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1773,'7a806513-8e62-16f0-ce8f-59d4dbbcf24a','1','bh_formed_packets','2f4db81b-4e87-d6e9-6df6-59bbb89f3be2','Пакет 1','2017-10-04 13:02:39','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1776,'f2a322bd-d711-7986-747e-59d5cb53559d','1','Leads','5a7265ea-aa41-cc92-4445-59b8ce6cc94a','Николай Васильев','2017-10-05 06:05:24','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1781,'3ee9f15f-28a4-7a3c-e24f-59d5ccf315be','1','Leads','10c2e549-c39f-7ef0-f7da-59b11183c89e','Андрей','2017-10-05 06:08:16','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1782,'e643c24b-2a7b-b77e-0754-59d5cc8a2b6f','1','Leads','9ce12f06-52ad-9bbe-3467-59c36fa66eef','Виталий Dsddsd','2017-10-05 06:08:42','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1789,'8f205a32-f5dd-8f0f-5ef4-59d5cd8634da','1','Leads','8d61d039-9372-369c-f48f-59c38ae4f7fb','Иван','2017-10-05 06:13:41','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1790,'5a471661-17da-c22c-171a-59d5cd923485','1','Leads','70007648-47bc-d3b4-9904-59b6a1659460','Алексей','2017-10-05 06:14:07','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1792,'403d0d22-19c2-c712-59b9-59d5ce3f4658','1','Leads','a909e9a5-90ce-7a2f-fd1a-59c38846be76','Евгений','2017-10-05 06:15:58','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1794,'536e01d7-d347-a66e-16d6-59d5ce422515','1','Leads','6acfcff6-723f-f3e3-3c1b-59c377a909f2','Сергей','2017-10-05 06:17:01','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1797,'8cace646-208b-46c9-dbb9-59d5cee2636b','1','Leads','1a850344-233e-e32f-fe21-59b10fc56fe1','Иван Иванов','2017-10-05 06:19:30','detailview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1803,'c0f8d169-5ff2-8bc3-2012-59d5d0e3f73e','1','Users','1','Administrator','2017-10-05 06:26:33','editview','r4iu2b8fegqhrc52kcqqtvi3c7',1,0),(1809,'6e7f9038-1048-063d-5cb8-59d5d952b571','1','bh_Card_ident','3bd563c6-65dc-e97a-3cfc-59b64503040f','23434423422323','2017-10-05 07:04:11','detailview','b73sge5bqq0bq8mjrrqlli9ii1',1,0),(1810,'c8c12f8c-fc9c-b5e9-4b92-59d5daea97c8','1','bh_marketing_response','39d947d8-fec3-148a-3c9a-59d34f872059','отклик от клиента Test','2017-10-05 07:07:36','detailview','b73sge5bqq0bq8mjrrqlli9ii1',1,0),(1811,'362493fb-f0f6-b5a3-36d2-59d7f007f1c1','1','bh_marketing_company','d431499d-a668-1db4-8b3d-59bf89d1ebb8','Маркетинговая Компания 1','2017-10-06 21:05:33','detailview','f2el0o5uph7a5f6ik5boi925k7',1,0),(1814,'d7b1b74f-b4f5-654a-c1d2-59d7f1fc2189','1','Campaigns','3f0232ce-059c-a184-3838-59d34aed4ef4','Непочтовая компапния','2017-10-06 21:11:19','detailview','f2el0o5uph7a5f6ik5boi925k7',1,0),(1815,'65413143-7679-1ff3-904b-59d7fb984846','1','Campaigns','3d59bee5-7158-9086-a252-59d7fa97c42b','sds','2017-10-06 21:54:48','detailview','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1816,'b43fb8b5-436a-b81a-7f4e-59d7fd3b0463','1','Campaigns','2e8e6a90-5137-4f07-e806-59d7fd5ea30b','sddz','2017-10-06 22:03:08','detailview','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1817,'8a840a63-a9bb-381a-6752-59d800dbdfb5','1','Campaigns','736ec010-f320-301b-4bcf-59d800c18066','sdfsf','2017-10-06 22:16:16','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1818,'6b5b115e-69d6-dfbf-d619-59d8013e2e02','1','Campaigns','eca3ae3f-cf33-d149-98e5-59d8010d9822','sadsdsa','2017-10-06 22:17:50','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1819,'eb580503-5b4a-618c-519b-59d801a82266','1','Campaigns','69b63e8e-2979-2be5-42bb-59d801a95b93','dfdsf','2017-10-06 22:20:31','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1820,'36dbf221-88db-d844-c3f7-59d802360381','1','Campaigns','baf2693f-335d-a7e1-1ba3-59d802ab791f','adaqddad','2017-10-06 22:22:12','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1821,'e8b0005d-567b-b65f-dae7-59d804035ffa','1','Campaigns','5ccd15a9-c590-38c6-c75e-59d804d32a65','фыывф','2017-10-06 22:31:20','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1822,'6f3bb82c-89cc-df54-4f10-59d804e0fecc','1','Campaigns','ea0b02d1-1bb0-b8a7-0c4b-59d804b49e51','ваваыа','2017-10-06 22:34:07','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1823,'1015d344-7873-ed72-fe53-59d80564e8da','1','Campaigns','913e3fad-2720-1caa-8fca-59d8055ac261','вфывф','2017-10-06 22:37:06','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1824,'960ce83d-1bb3-cf32-d49e-59d805d97f67','1','Campaigns','f0c0012e-244e-4cbe-f101-59d80588af60','фывфыв','2017-10-06 22:38:29','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1825,'aeea4b09-1b68-ad59-1b96-59d806946920','1','Campaigns','2ebf70b4-8e3f-9dd9-dd50-59d8064b0f01','asdas','2017-10-06 22:41:56','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1826,'ada5807a-4c0e-9b88-136a-59d807aae063','1','Campaigns','3fca7b19-8b43-caf0-0322-59d807acb864','asda','2017-10-06 22:43:20','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1827,'1050c579-1b95-8c19-82fb-59d807482c0a','1','Campaigns','85ff80f0-d2ac-faa7-7cdd-59d80701d91d','cxxv','2017-10-06 22:46:07','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1828,'8681fe8e-29d7-8946-466a-59d8090032db','1','Campaigns','f22e06b5-709a-23fb-3c8b-59d80901661e','sdfsf','2017-10-06 22:55:28','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1829,'317eacf9-37b1-603a-f8ef-59d80c5b5906','1','Campaigns','b68f1212-af9b-8860-8e2c-59d80cb299a9','dfsdfgd','2017-10-06 23:06:29','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1830,'c8860b7b-7802-87ff-b0a4-59d80d705c6d','1','Campaigns','83ae2454-b1c0-b8b6-6120-59d80d50c4ff','sdfsf','2017-10-06 23:10:27','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1831,'9b484b74-eadb-0b05-4f1f-59d80e541f2d','1','Campaigns','19a67de3-9624-564a-1476-59d80e3d9833','asdads','2017-10-06 23:13:52','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1832,'3fbb0631-4dc8-bcf0-6c84-59d81009512f','1','Campaigns','7489d1ec-9a19-6fa2-4fdc-59d8100b6f37','еееееееееееееее','2017-10-06 23:22:41','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1833,'e1d00fb0-41d0-8bac-06f7-59d810a9658e','1','Campaigns','bf9d28fb-0c92-e0f1-c9b7-59d810005daa','ывы','2017-10-06 23:24:17','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1834,'2131d885-da8d-af92-6000-59d8135a0c37','1','Campaigns','c8324229-ac30-079a-273d-59d8138b6db3','фвывыв','2017-10-06 23:36:00','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1835,'222fcc52-9fc3-9567-c12d-59d815fe109e','1','Campaigns','9b881b25-e8b8-a129-2359-59d8157a3e14','ыфуауыа','2017-10-06 23:46:48','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1836,'e60e3a35-fd4b-6b86-2ed1-59d816f88eb2','1','Campaigns','6a4876b7-3f6f-2979-7915-59d8169b0a11','212121','2017-10-06 23:48:02','save','9qnvp8824d7qb8lpn12ng5v2i6',1,0),(1838,'69eb2d49-b958-d9c0-36ca-59d81b2f2753','1','Campaigns','ed1ac9ae-88e6-5374-9b34-59d81715a8b0','фывв','2017-10-07 00:12:23','detailview','n0dktifedpds3celjdk8h8epn1',1,0),(1839,'970f41dd-d73f-0c17-9913-59d81cfff7cb','1','Campaigns','20e725a4-c2e6-8661-ea8f-59d81c6fc773','sewt','2017-10-07 00:12:56','save','n0dktifedpds3celjdk8h8epn1',1,0),(1840,'8116cc3e-b5f4-8d4b-4f47-59d81c00e301','1','Campaigns','f3d77a69-a7fd-1b77-6981-59d81c022803','fdfdf','2017-10-07 00:17:01','save','n0dktifedpds3celjdk8h8epn1',1,0),(1841,'1164c476-092e-55bf-4949-59d81d927911','1','Campaigns','7bd84e34-95ed-9f45-bcc7-59d81d3e4dc7','dsd','2017-10-07 00:19:30','save','n0dktifedpds3celjdk8h8epn1',1,0),(1842,'71ab8d50-3bf1-f7f0-5d66-59d81e369ab8','1','Campaigns','e90fc83b-0140-277b-b90b-59d81e5ba6f0','3333','2017-10-07 00:22:48','save','n0dktifedpds3celjdk8h8epn1',1,0),(1843,'b86f498e-11ed-4cbc-c8c6-59d81ef6e1de','1','Campaigns','397d003c-91ea-10c5-d83c-59d81e61dc50','44444444','2017-10-07 00:25:05','save','n0dktifedpds3celjdk8h8epn1',1,0),(1844,'34a0772f-487a-af19-1cfa-59d81fc10986','1','Campaigns','a79fa8ab-b4ba-a73e-3f50-59d81f60ea86','sdasd','2017-10-07 00:25:59','save','n0dktifedpds3celjdk8h8epn1',1,0),(1845,'a884db3e-cc46-5c7e-6222-59d81f9284a9','1','Campaigns','3c20d2e6-6876-1220-6f13-59d81f430ac9','вфвваыпаыв','2017-10-07 00:28:49','save','n0dktifedpds3celjdk8h8epn1',1,0),(1846,'4faa0baf-6bfa-b7d3-358a-59d8202069c5','1','Campaigns','7317bdde-3abf-ac36-15a0-59d8204f5ee6','dfsd','2017-10-07 00:31:11','save','n0dktifedpds3celjdk8h8epn1',1,0),(1847,'5c338a6a-6083-d41a-f875-59d827691119','1','Campaigns','12f80a2d-8d55-c333-a8aa-59d827a734fb','awdwa','2017-10-07 01:01:52','save','n0dktifedpds3celjdk8h8epn1',1,0),(1848,'43cf014f-97f0-56ad-1eec-59d828ee68a0','1','Campaigns','98af29bb-2378-9999-5049-59d828aad048','zdczdc','2017-10-07 01:04:41','save','n0dktifedpds3celjdk8h8epn1',1,0),(1849,'930e9a80-cc8f-8962-3ffc-59d82844212f','1','Campaigns','23bc82e2-6707-04cd-3388-59d828d60379','wdsd','2017-10-07 01:07:36','save','n0dktifedpds3celjdk8h8epn1',1,0),(1850,'df2db309-29ed-0a26-d04d-59d82d1cb7f5','1','EmailMarketing','6a3e050e-577b-21b2-e650-59d82d28b3be',NULL,'2017-10-07 01:26:47','save','n0dktifedpds3celjdk8h8epn1',1,0),(1852,'83f569a4-907e-abd1-8b3e-59d8306f20fa','1','Campaigns','63da2d6f-52fd-5eee-b509-59d82fe92ba2','333','2017-10-07 01:39:42','detailview','n0dktifedpds3celjdk8h8epn1',1,0),(1853,'b8436d2a-3e03-3c48-47d1-59d83490523b','1','Campaigns','3a89ade1-2370-5f81-2955-59d8343a2edd','awdw','2017-10-07 01:57:15','save','n0dktifedpds3celjdk8h8epn1',1,0),(1854,'4d14d71f-5c72-c315-71a2-59d835299486','1','Campaigns','cc87b167-5377-ed71-39d1-59d835e4ed2c','awd','2017-10-07 01:59:35','save','n0dktifedpds3celjdk8h8epn1',1,0),(1855,'72f3c543-3aae-2dab-f33c-59d854d3b38a','1','Campaigns','5f6f14db-e88f-109e-a2e6-59d854297110','11111','2017-10-07 04:12:47','save','n0dktifedpds3celjdk8h8epn1',1,0),(1856,'7ca607ab-00ad-4b13-7253-59d854ec9196','1','EmailMarketing','b4dc6fc9-68c8-0cdc-cd82-59d8547fb889','dwdsds','2017-10-07 04:14:16','save','n0dktifedpds3celjdk8h8epn1',1,0),(1857,'c1816101-05d0-8924-cf58-59d855095e94','1','Campaigns','34a46f11-41e6-1f18-9e37-59d8553534e7','55555','2017-10-07 04:19:07','save','n0dktifedpds3celjdk8h8epn1',1,0),(1858,'c00753be-a9e1-74fc-7b4c-59d856a68e98','1','Campaigns','2f80dfb2-5323-9dea-976d-59d8567fa75d','323','2017-10-07 04:22:01','save','n0dktifedpds3celjdk8h8epn1',1,0),(1859,'aa8b5057-44bc-5fb5-638e-59d8587c1de7','1','Campaigns','2f429838-4e86-a488-3403-59d858bde0b1','reeer','2017-10-07 04:32:13','save','n0dktifedpds3celjdk8h8epn1',1,0),(1860,'6113bc04-109c-9b46-69a4-59d85b278712','1','Campaigns','e0c503b8-9bf3-b52e-c7e2-59d85b50f1cf','eeerter','2017-10-07 04:43:54','save','n0dktifedpds3celjdk8h8epn1',1,0),(1861,'10b33c8e-0094-61c2-358c-59d85d0afd8f','1','Campaigns','85e4f084-a61e-426e-99c3-59d85d54ee1f','dfsf','2017-10-07 04:51:24','save','n0dktifedpds3celjdk8h8epn1',1,0),(1862,'ab399c68-4187-9252-2fdf-59d85edee3d9','1','Campaigns','2c47497a-1306-e912-7193-59d85e6f9444','dfsf','2017-10-07 04:54:53','save','n0dktifedpds3celjdk8h8epn1',1,0),(1863,'9288864c-999e-79ba-6c41-59d86ad39933','1','Campaigns','344dbf3e-955d-2a40-0799-59d86ad4dfdb','fsfsf','2017-10-07 05:49:26','save','n0dktifedpds3celjdk8h8epn1',1,0),(1864,'9eae246d-3c8f-525f-7763-59d86b127a45','1','Campaigns','13483d16-d582-2980-91c6-59d86beadf2c','asdasd','2017-10-07 05:51:59','save','n0dktifedpds3celjdk8h8epn1',1,0),(1865,'efabebbb-0018-cb3e-1bba-59d87c173ea2','1','bh_banks','5f5cbcda-ca07-76e2-5142-59d87cb2c05d','ыфвыв','2017-10-07 07:04:45','detailview','n0dktifedpds3celjdk8h8epn1',1,0),(1867,'edfa4c2d-d5b4-063f-ce53-59d89317f9b8','1','bh_banks','a8e88885-b1a5-0633-cb7e-59d893172d00','цукццк','2017-10-07 08:43:33','detailview','n0dktifedpds3celjdk8h8epn1',0,0),(1868,'86919d89-66ae-0843-609f-59d89abe9de1','1','bh_banks','bba5e15c-ab2a-11e7-9df9-208984589f5e','АБ \"УКРГАЗБАНК\"','2017-10-07 09:11:22','detailview','n0dktifedpds3celjdk8h8epn1',1,0),(1869,'15d1da9f-9450-fe58-b50a-59d89ab3905f','1','Leads','70007648-47bc-d3b4-9904-59b6a1659460','Алексей','2017-10-07 09:13:24','detailview','n0dktifedpds3celjdk8h8epn1',1,0),(1871,'92b9e86e-e421-0c91-75be-59d89bf9ac01','1','Users','1','Administrator','2017-10-07 09:18:08','editview','n0dktifedpds3celjdk8h8epn1',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('12102f99-a4b6-e4d0-56b2-59a3c4d39e77','FP_Event_Locations2_FP_EVENT_LOCATIONS',0,'2017-08-28 07:23:30','2017-08-28 07:23:30','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('143e42ef-ff91-ec88-f846-59b6879fdd87','bh_scripts2_BH_SCRIPTS',0,'2017-09-11 12:54:03','2017-09-11 12:54:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('14be1c2f-3a86-47f3-553d-59ca68cc1a50','Home2_CASE',0,'2017-09-26 14:45:37','2017-09-26 14:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('15a32647-45a7-2db9-14c7-599a905d3445','Employees2_EMPLOYEE',0,'2017-08-21 07:50:29','2017-08-21 07:50:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1851948a-f0ac-d967-f59e-59c24b462d38','Prospects2_PROSPECT',0,'2017-09-20 11:06:51','2017-09-20 11:06:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1a96b380-49a9-0583-f436-59b7cb12f497','bh_Scripts_employee_comment2_BH_SCRIPTS_EMPLOYEE_C',0,'2017-09-12 11:57:42','2017-09-12 11:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1d629894-5fd1-19aa-aebf-59b00907fd0d','Calls2_CALL',0,'2017-09-06 14:42:04','2017-09-06 14:42:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1e7c9dac-0fe1-f1c5-ab34-59b25199c2cf','Cases2_CASE',0,'2017-09-08 08:15:24','2017-09-08 08:15:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1ec182c9-33e2-793b-f47d-59ca68a2a270','Home2_CONTACT',0,'2017-09-26 14:45:37','2017-09-26 14:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2123e57a-72f9-35e4-a584-59bfada4b5e7','bh_marketing_response2_BH_MARKETING_RESPONSE',0,'2017-09-18 11:27:18','2017-09-18 11:27:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2255043e-cc46-fd36-4b47-59c9f8559574','bh_communicators2_BH_COMMUNICATORS',0,'2017-09-26 06:50:47','2017-09-26 06:50:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('24f47178-83a4-b67f-91e6-59ca6886aee1','Home2_DOCUMENT',0,'2017-09-26 14:45:37','2017-09-26 14:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('274215ac-b479-3697-947d-599bcd97aace','global',0,'2017-08-22 06:20:35','2017-09-01 13:49:44','eff07114-603c-c0d2-0e5e-599bcd264773','YTo0MTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjQ6IjM2MDAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjI1OGM5MTRkLTU3MTUtMjFiOC1kOTE0LTU5OWJjZDA0MDg2NiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi0JLRgdC1IjtzOjY6IkxlYWRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6Ik1lZXRpbmdzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),('2aad47b7-d3ba-e710-83ad-59c24d0fa37b','bh_lead_adress2_BH_LEAD_ADRESS',0,'2017-09-20 11:12:24','2017-09-20 11:12:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2aea5c5b-1c34-6bdd-187c-59ca68fca858','Home2_NOTE',0,'2017-09-26 14:45:37','2017-09-26 14:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2eb19d23-8a8f-fc39-4999-59d1e3530f5f','ProspectLists2_PROSPECTLIST',0,'2017-10-02 06:59:56','2017-10-02 06:59:56','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('32f577d3-0658-e850-8f13-59b253b52d38','Opportunities2_OPPORTUNITY',0,'2017-09-08 08:21:47','2017-09-08 08:21:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('33c6d392-9c63-2ab0-8680-59bb7331c4d6','bh_packet_activation2_BH_PACKET_ACTIVATION',0,'2017-09-15 06:29:48','2017-09-15 06:29:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('399c2e36-7736-b1de-def0-599bcdbf7855','Home',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImYyMjliYjA0LWJlYmQtMmRiYy0xMmRmLTU5OWJjZDc5MDkxNCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImYzZGYzNWVmLTA2NzItYjMwYy0zZjYyLTU5OWJjZDIxOWU5NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE3MGMwZTM3LWNjNGYtNzA5MC00MDIwLTU5OWJjZDRiMDVkMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJhOTQwOGM5LTVkMzUtMzMxZi1kNTJhLTU5OWJjZDRlNzQyMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNDlkNDBjMTQtZmFmNC05MmM5LTFmMjctNTk5YmNkNzdkNzM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmNmZDA1MmItNTJhNi0wMGVjLTM2NTUtNTk5YmNkYjcxNmE4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJmM2RmMzVlZi0wNjcyLWIzMGMtM2Y2Mi01OTliY2QyMTllOTciO2k6MTtzOjM2OiIxNzBjMGUzNy1jYzRmLTcwOTAtNDAyMC01OTliY2Q0YjA1ZDEiO2k6MjtzOjM2OiIyYTk0MDhjOS01ZDM1LTMzMWYtZDUyYS01OTliY2Q0ZTc0MjAiO2k6MztzOjM2OiI0OWQ0MGMxNC1mYWY0LTkyYzktMWYyNy01OTliY2Q3N2Q3MzkiO2k6NDtzOjM2OiI2Y2ZkMDUyYi01MmE2LTAwZWMtMzY1NS01OTliY2RiNzE2YTgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImYyMjliYjA0LWJlYmQtMmRiYy0xMmRmLTU5OWJjZDc5MDkxNCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('3b20885d-4663-84e4-cbe0-59b93ffe65a9','bh_Scripts_employee_comment2_BH_SCRIPTS_EMPLOYEE_C',0,'2017-09-13 14:22:24','2017-09-13 14:22:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4250a6bc-f383-79ab-299c-59bbc129c8a5','bh_case_compound2_BH_CASE_COMPOUND',0,'2017-09-15 12:04:38','2017-09-15 12:04:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4bca7d68-abe4-1a2c-e9f5-599a7623e0a7','Home',0,'2017-08-21 05:58:05','2017-09-12 12:49:16','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjYzMzc0MTI5LTlmN2YtYzhjNS1mYzc0LTU5OWE3Njg4NzM1OCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjY0MzE0ODM5LTExNGEtNzI1NC0zZDAxLTU5OWE3NmZmMDYyOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY1NjljODgzLTU2NzMtODkzOS05MjFhLTU5OWE3NjU4ZmUyZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY2MjU0YmQ5LTg3OTQtNWFhYi04NGM4LTU5OWE3Njg4ZjZhMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjc1ZGRmY2YtMTgzYy04ODg2LTQzNzktNTk5YTc2OWMyOTEwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjg1N2RkMjktOWQ5NC1mMjVlLWUxOTktNTk5YTc2NDEyZmNhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI2NDMxNDgzOS0xMTRhLTcyNTQtM2QwMS01OTlhNzZmZjA2MjkiO2k6MTtzOjM2OiI2NTY5Yzg4My01NjczLTg5MzktOTIxYS01OTlhNzY1OGZlMmQiO2k6MjtzOjM2OiI2NjI1NGJkOS04Nzk0LTVhYWItODRjOC01OTlhNzY4OGY2YTIiO2k6MztzOjM2OiI2NzVkZGZjZi0xODNjLTg4ODYtNDM3OS01OTlhNzY5YzI5MTAiO2k6NDtzOjM2OiI2ODU3ZGQyOS05ZDk0LWYyNWUtZTE5OS01OTlhNzY0MTJmY2EiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjYzMzc0MTI5LTlmN2YtYzhjNS1mYzc0LTU5OWE3Njg4NzM1OCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('4c0e3cb3-192c-1b2d-0688-59c4b9ce421d','bh_region2_BH_REGION',0,'2017-09-22 07:17:19','2017-09-22 07:17:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('51369be7-1b64-2804-26d9-59b6362ee50f','bh_Card_ident2_BH_CARD_IDENT',0,'2017-09-11 07:06:54','2017-09-11 07:06:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('52621554-6b57-5f75-f8c6-599a76bbb811','Home2_CALL',0,'2017-08-21 05:58:05','2017-08-21 05:58:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('53b80617-9c84-8f5a-e800-59b7a3e43fcc','bh_Realty2_BH_REALTY',0,'2017-09-12 09:06:46','2017-09-12 09:06:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('53ffa086-2683-c777-9e8f-59bbc141b977','bh_case_status2_BH_CASE_STATUS',0,'2017-09-15 12:04:22','2017-09-15 12:04:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('54b60449-ae7a-0239-d6d0-599bcdd98d52','Home2_CALL',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5566f6bb-697b-5ec4-88cc-59a54cbcd604','Accounts2_ACCOUNT',0,'2017-08-29 11:15:42','2017-08-29 11:15:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('566b00bf-5a6c-8fec-a372-599a769e86e9','Home2_LEAD_6857dd29-9d94-f25e-e199-599a76412fca',0,'2017-08-21 05:58:15','2017-08-21 05:58:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('57b9df6f-5001-8548-e2db-59b785c0d686','bh_faq_history2_BH_FAQ_HISTORY',0,'2017-09-12 06:57:47','2017-09-12 06:57:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('587ca3ee-6256-9407-92e8-599a76aa1313','Home2_MEETING',0,'2017-08-21 05:58:05','2017-08-21 05:58:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5e9747d5-422e-eac2-0f01-599a76fb08fb','Home2_OPPORTUNITY',0,'2017-08-21 05:58:05','2017-08-21 05:58:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5ee3fbe1-7178-abe7-ebe6-59c4b1ae6098','bh_country2_BH_COUNTRY',0,'2017-09-22 06:46:00','2017-09-22 06:46:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('64f05e4a-0021-eaac-a641-599a7674ae0d','Home2_ACCOUNT',0,'2017-08-21 05:58:05','2017-08-21 05:58:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('67445580-7004-100d-6b58-599bcd9b59b6','Home2_MEETING',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('677bd1f7-ab5a-f991-7f79-59bb6f3e7c04','bh_Scripts_leadership_recommend2_BH_SCRIPTS_LEADER',0,'2017-09-15 06:14:35','2017-09-15 06:14:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6b497872-51bc-fe5e-7f85-599a769e3089','Home2_LEAD',0,'2017-08-21 05:58:05','2017-08-21 05:58:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6f9ca6df-2b04-8fd8-d1ff-59ba1f7d5c0f','AOS_PDF_Templates2_AOS_PDF_TEMPLATES',0,'2017-09-14 06:18:29','2017-09-14 06:18:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('716405a0-91c3-85ef-5d1c-599a76e785ba','Home2_SUGARFEED',0,'2017-08-21 05:58:05','2017-08-21 05:58:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('71bea1f5-d874-26b5-7427-59ba8e1b70f2','bh_cases_log2_BH_CASES_LOG',0,'2017-09-14 14:13:30','2017-09-14 14:13:30','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7642d31f-7430-b922-981d-59a920183c1d','AOS_Contracts2_AOS_CONTRACTS',0,'2017-09-01 08:54:20','2017-09-01 08:54:20','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('77de9298-1495-2aa4-d2b4-599bcdc6fa70','Home2_OPPORTUNITY',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('77f59a85-9eb6-3754-2df6-599a76f20cc4','ETag',0,'2017-08-21 05:56:19','2017-10-07 06:52:11','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MzM7fQ=='),('79335e62-ef56-af6c-d47b-59d36f3c2ef4','bh_campaine_products2_BH_CAMPAINE_PRODUCTS',0,'2017-10-03 11:07:04','2017-10-03 11:07:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7eb498f3-56e4-07f5-c062-599bcd1ec47a','Home2_ACCOUNT',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('812ffdb4-e959-2e32-8dfa-59b8d6b4b4fb','bh_org_trade_points2_BH_ORG_TRADE_POINTS',0,'2017-09-13 06:53:56','2017-09-13 06:53:56','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('87a34272-d196-109f-d44e-59b7e5e87298','bh_providers2_BH_PROVIDERS',0,'2017-09-12 13:46:52','2017-09-12 13:46:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('88a22ad3-f8ac-6757-ced2-59d492260361','AOS_Products',0,'2017-10-04 07:51:08','2017-10-04 07:51:08','1','YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToyOntpOjA7czozMjoiYmhfZm9ybWVkX3BhY2tldHNfYW9zX3Byb2R1Y3RzXzEiO2k6MTtzOjIyOiJhb3NfcHJvZHVjdHNfcHVyY2hhc2VzIjt9fQ=='),('8a10b393-2fb1-83fd-8241-599bcd31547f','ETag',0,'2017-08-22 06:21:35','2017-09-01 11:19:13','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),('8a6cd013-327b-0d24-141e-599bcd091b58','Home2_LEAD',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8d9ee9a9-a04c-40a1-4d31-59bfc29dfd6e','bh_marketing_directorate2_BH_MARKETING_DIRECTORATE',0,'2017-09-18 12:55:21','2017-09-18 12:55:21','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8e04a0eb-bb99-79d8-9067-599bc9db9527','ACLRoles2_ACLROLE',0,'2017-08-22 06:06:26','2017-08-22 06:06:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8f677909-a6e0-a85b-ae75-599a76b6a8e1','global',0,'2017-08-21 05:56:19','2017-10-07 07:00:28','1','YTo4OTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjhlZWE2NmQ1LTI2ZjItYWZkNS0wZTZhLTU5OWE3Njk3YmU5YSI7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL01vc2NvdyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjoidXQiO3M6MToiMSI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo2OiLQktGB0LUiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiTWVldGluZ3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6NDp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxOToiRlBfRXZlbnRfTG9jYXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjEzOiJBT1dfV29ya0Zsb3dRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkRvY3VtZW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJDb250YWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiQU9TX0NvbnRyYWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czo2OiJDYWxsc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjIzOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE0OiJiaF9DYXJkX2lkZW50USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJiaF9zY3JpcHRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjc6ImJoX2ZhcVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNToiYmhfZmFxX2hpc3RvcnlRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6ImJoX1JlYWx0eVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoyMjoiYmhfc2NyX3N0YXR1c19oaXN0b3J5USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjI1OiJiaF9zY3JpcHRfcGFyYW1fcmVzcG9uc2VRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6Mjg6ImJoX1NjcmlwdHNfZW1wbG95ZWVfY29tbWVudFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiYmhfcHJvdmlkZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjIwOiJiaF9vcmdfdHJhZGVfcG9pbnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE3OiJiaF9BdXRvdHJhbnNwb3J0USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE3OiJiaF9vcmdhbml6YXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjc6ImJoX29yZ1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxODoiQU9TX1BERl9UZW1wbGF0ZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVGFza3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6ImJoX2Nhc2VzX2xvZ1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czozMjoiYmhfU2NyaXB0c19sZWFkZXJzaGlwX3JlY29tbWVuZFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoyMToiYmhfcGFja2V0X2FjdGl2YXRpb25RIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTg6ImJoX2Zvcm1lZF9wYWNrZXRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJiaF9jYXNlX3N0YXR1c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNzoiYmhfY2FzZV9jb21wb3VuZFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiQ2FtcGFpZ25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIxOiJiaF9tYXJrZXRpbmdfY29tcGFueVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiUHJvc3BlY3RMaXN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMjoidXNlclByaXZHdWlkIjtzOjM2OiJmM2NkODQ3YS0zOWQyLWNkY2UtOGFkNi01OWQxZmY3ZmIyNjEiO3M6MzQ6IkluYm91bmRFbWFpbF9JbmJvdW5kRW1haWxfT1JERVJfQlkiO3M6MTI6ImRhdGVfZW50ZXJlZCI7czoyMjoiT3V0Ym91bmRFbWFpbEFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjI1OiJiaF9tYXJrZXRpbmdfZGlyZWN0b3JhdGVRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6Mjk6ImJoX21hcmtldGluZ19jb21wYW55X2hpc3RvcnlRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MjI6ImJoX21hcmtldGluZ19yZXNwb25zZVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxOToiYmhfY2hhbm5lbHNfaW1wYWN0USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIxOiJiaF9jYW1wYWluZV9wcm9kdWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJiaF9iYW5rc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9fQ=='),('90a60257-117a-3f9d-42f2-59b782381033','bh_faq2_BH_FAQ',0,'2017-09-12 06:43:05','2017-09-12 06:43:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('91046455-4674-7236-9993-599bcdc33c37','Home2_SUGARFEED',0,'2017-08-22 06:21:41','2017-08-22 06:21:41','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('928cfd60-57a1-05fd-5a68-59d341ab1b7c','OutboundEmailAccounts2_OUTBOUNDEMAILACCOUNTS',0,'2017-10-03 07:52:22','2017-10-03 07:52:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('98960b24-77c2-dd7e-35c3-59c4db33a12a','bh_passports2_BH_PASSPORTS',0,'2017-09-22 09:45:14','2017-09-22 09:45:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9eb56d46-cdad-0bc0-3ecf-59bb7743b890','bh_formed_packets2_BH_FORMED_PACKETS',0,'2017-09-15 06:46:06','2017-09-15 06:46:06','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a81c942b-6db7-210b-4a04-59b2555f988a','AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES',0,'2017-09-08 08:31:25','2017-09-08 08:31:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ad6acce3-06f6-093d-8bc3-599bcd5120ba','Home2_LEAD_6cfd052b-52a6-00ec-3655-599bcdb716a8',0,'2017-08-22 06:21:49','2017-08-22 06:21:49','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b3877a97-eb47-c174-4d79-59c8f9d08671','bh_phones2_BH_PHONES',0,'2017-09-25 12:40:35','2017-09-25 12:40:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b71b0c3b-6157-f821-7689-59ca681bbd91','search',0,'2017-09-26 14:45:37','2017-09-28 09:48:52','1','YToyOntzOjEyOiJnbG9iYWxTZWFyY2giO2E6MTp7czo1OiJMZWFkcyI7czo0OiJMZWFkIjt9czo5OiJzaG93R1NEaXYiO3M6Mjoibm8iO30='),('b9c00a1a-ecf4-8506-22f3-59a6790a74c4','Leads',0,'2017-08-30 08:38:46','2017-08-30 08:38:46','1','YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),('b9f50e83-147a-a4c0-3e22-59ba96af03e5','Cases',0,'2017-09-14 14:45:14','2017-09-14 14:45:14','1','YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YTo4OntpOjA7czoyMDoiY2FzZXNfYmhfY2FzZXNfbG9nXzEiO2k6MTtzOjEwOiJhY3Rpdml0aWVzIjtpOjI7czo3OiJoaXN0b3J5IjtpOjM7czo5OiJkb2N1bWVudHMiO2k6NDtzOjg6ImNvbnRhY3RzIjtpOjU7czo0OiJidWdzIjtpOjY7czo3OiJwcm9qZWN0IjtpOjc7czoxNDoic2VjdXJpdHlncm91cHMiO319'),('bc96c828-64c6-aaab-9ce9-59bf70d08486','Campaigns2_CAMPAIGN',0,'2017-09-18 07:04:50','2017-09-18 07:04:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c092025f-e214-8d6e-bcff-59b2533b8bed','AOS_Products2_AOS_PRODUCTS',0,'2017-09-08 08:24:11','2017-09-08 08:24:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c91ece35-e604-6164-afa9-599ae16f2f93','SecurityGroups2_SECURITYGROUP',0,'2017-08-21 13:33:58','2017-08-21 13:33:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cc5b3bbb-03f4-b913-b1fb-599a888eed95','Users2_USER',0,'2017-08-21 07:16:43','2017-08-21 07:16:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cc5b6d23-75ee-dfcc-073c-59a50d549a62','AOW_WorkFlow2_AOW_WORKFLOW',0,'2017-08-29 06:45:03','2017-08-29 06:45:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d6f23750-baf6-0d42-e513-599a795b7eee','Leads2_LEAD',0,'2017-08-21 06:09:57','2017-08-30 08:38:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),('d87be567-df20-292f-19b5-59bf9fa4fc91','bh_marketing_company_history2_BH_MARKETING_COMPANY',0,'2017-09-18 10:26:47','2017-09-18 10:26:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dc0f7246-0448-b2f1-b4d1-59c4b893d02a','bh_region_area2_BH_REGION_AREA',0,'2017-09-22 07:17:06','2017-09-22 07:17:06','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e0e0c295-1309-7603-9604-59d363b97a97','bh_channels_impact2_BH_CHANNELS_IMPACT',0,'2017-10-03 10:17:06','2017-10-03 10:17:06','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e11c0767-a7a7-31b2-abd0-59d87bb9f0c1','bh_banks2_BH_BANKS',0,'2017-10-07 07:00:28','2017-10-07 07:00:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e1eb8043-7dea-ad5a-91ae-59a50fdee4fa','Documents2_DOCUMENT',0,'2017-08-29 06:54:56','2017-08-29 06:54:56','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e21a3e52-e2a0-0508-93da-59d35046b224','bh_marketing_company_history2_BH_MARKETING_COMPANY',0,'2017-10-03 08:53:14','2017-10-03 08:53:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e325547d-46f5-c535-3675-59b8f41efea6','bh_organizations2_BH_ORGANIZATIONS',0,'2017-09-13 09:02:34','2017-09-13 09:02:34','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e375a2c2-117c-b4a4-2503-59b7bf1f252e','bh_scr_status_history2_BH_SCR_STATUS_HISTORY',0,'2017-09-12 11:06:19','2017-09-12 11:06:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e44fec8b-1a32-bcd4-ecd8-59b9201e4f13','bh_org2_BH_ORG',0,'2017-09-13 12:09:51','2017-09-13 12:09:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('eb4e0cde-d43b-6b8c-58ee-59a7bd1125b2','Contacts2_CONTACT',0,'2017-08-31 07:40:47','2017-08-31 07:40:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('eee537f2-d9c4-a176-e436-59bf88614d80','bh_marketing_company2_BH_MARKETING_COMPANY',0,'2017-09-18 08:49:26','2017-09-18 08:49:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef8723a6-e2ee-88f2-8cd2-59b8f2f58139','bh_Autotransport2_BH_AUTOTRANSPORT',0,'2017-09-13 08:53:25','2017-09-13 08:53:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f39ca709-0804-d8ef-9c08-59b7c44b144c','bh_script_param_response2_BH_SCRIPT_PARAM_RESPONSE',0,'2017-09-12 11:28:13','2017-09-12 11:28:13','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f41f35d2-195a-ebad-6f67-599bcd9674ea','Leads2_LEAD',0,'2017-08-22 06:21:57','2017-08-22 06:21:57','eff07114-603c-c0d2-0e5e-599bcd264773','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$AB5.Jy4.$8YFSVKwAOkp9s3KqH8rAI.',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2017-08-21 05:56:19','2017-09-29 11:27:16','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),('eff07114-603c-c0d2-0e5e-599bcd264773','test','$1$PT5.s75.$eYixAm5NMYlJSRLR41SCc.',0,'2017-08-22 06:20:00',NULL,1,NULL,'test',0,0,1,NULL,'2017-08-22 06:20:35','2017-09-01 11:19:13','eff07114-603c-c0d2-0e5e-599bcd264773','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_outbound_c` tinyint(1) DEFAULT '0',
  `asterisk_inbound_c` tinyint(1) DEFAULT '0',
  `asterisk_ext_c` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_cstm`
--

LOCK TABLES `users_cstm` WRITE;
/*!40000 ALTER TABLE `users_cstm` DISABLE KEYS */;
INSERT INTO `users_cstm` VALUES ('1',1,1,'7008'),('eff07114-603c-c0d2-0e5e-599bcd264773',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES ('9357b8ab-0066-7d89-c2c3-59cd0d7eccde',0,'2017-09-28 14:57:14','2017-09-29 09:52:35','1','vfb','sugar','BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Administrator:VFREEBUSY\r\nDTSTART:2017-09-28 00:00:00\r\nDTEND:2017-11-28 00:00:00\r\nFREEBUSY:20170929T094900Z/20170929T094900Z\r\nX-FREEBUSY-ID:1f3b8873-7596-7b37-21f9-59ce17272da3\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T095000Z/20170929T095000Z\r\nX-FREEBUSY-ID:2aea5731-6378-7b1a-e6a8-59ce176f5afb\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T095200Z/20170929T095200Z\r\nX-FREEBUSY-ID:564eb885-659c-5155-d16a-59ce1784e11c\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170928T145700Z/20170928T145700Z\r\nX-FREEBUSY-ID:564eb49f-24c7-1e2c-75d5-59cd0dca7699\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T095200Z/20170929T095200Z\r\nX-FREEBUSY-ID:5c81afb3-471c-665c-3793-59ce17c956d5\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170928T150300Z/20170928T150300Z\r\nX-FREEBUSY-ID:6277809a-8dc1-7a35-b33f-59cd0f0d6664\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170929T063800Z/20170929T063800Z\r\nX-FREEBUSY-ID:8bb694d0-8f0e-c822-3843-59cdead820d8\r\nX-FREEBUSY-TYPE:Call\r\nFREEBUSY:20170928T150500Z/20170928T150500Z\r\nX-FREEBUSY-ID:a79bbed5-0d30-451c-8a03-59cd0f873a4e\r\nX-FREEBUSY-TYPE:Call\r\nDTSTAMP:2017-09-29 09:52:35\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-07 12:34:12