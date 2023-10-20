-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-09-29 15:25:07','2023-09-29 15:25:07','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://iflab','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://iflab','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Iflab','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:33:\"duplicate-post/duplicate-post.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','iflab','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','iflab','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','55853','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','68','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1711553107','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','55853','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:9:{i:1697761508;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1697772308;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697772585;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697815508;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697815785;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697815788;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697816028;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1697901908;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'_transient_wp_core_block_css_files','a:496:{i:0;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/editor.css\";i:3;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/editor.min.css\";i:4;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/style-rtl.css\";i:5;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/style.css\";i:7;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/archives/style.min.css\";i:8;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/editor.css\";i:11;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/editor.min.css\";i:12;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/style-rtl.css\";i:13;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/style.css\";i:15;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/style.min.css\";i:16;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/theme.css\";i:19;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/audio/theme.min.css\";i:20;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/editor.css\";i:23;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/editor.min.css\";i:24;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/style.css\";i:27;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/avatar/style.min.css\";i:28;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/block/editor-rtl.css\";i:29;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/block/editor.css\";i:31;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/block/editor.min.css\";i:32;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/editor-rtl.css\";i:33;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/editor.css\";i:35;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/editor.min.css\";i:36;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/style-rtl.css\";i:37;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/style.css\";i:39;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/button/style.min.css\";i:40;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/editor.css\";i:43;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/editor.min.css\";i:44;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/style.css\";i:47;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/buttons/style.min.css\";i:48;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/calendar/style.css\";i:51;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/calendar/style.min.css\";i:52;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/editor.css\";i:55;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/editor.min.css\";i:56;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/style-rtl.css\";i:57;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/style.css\";i:59;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/categories/style.min.css\";i:60;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/editor-rtl.css\";i:61;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/editor.css\";i:63;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/editor.min.css\";i:64;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/style-rtl.css\";i:65;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:90:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/style.css\";i:67;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/style.min.css\";i:68;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/theme-rtl.css\";i:69;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:90:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/theme.css\";i:71;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/code/theme.min.css\";i:72;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/editor.css\";i:75;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/editor.min.css\";i:76;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/style-rtl.css\";i:77;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/style.css\";i:79;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/columns/style.min.css\";i:80;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-content/style.css\";i:83;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-content/style.min.css\";i:84;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-template/style.css\";i:87;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comment-template/style.min.css\";i:88;s:118:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:122:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:114:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:118:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:114:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:113:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/style.css\";i:99;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-title/editor.css\";i:103;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/editor.css\";i:107;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/editor.min.css\";i:108;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/style-rtl.css\";i:109;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/style.css\";i:111;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/comments/style.min.css\";i:112;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/editor.css\";i:115;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/editor.min.css\";i:116;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/style-rtl.css\";i:117;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/style.css\";i:119;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/cover/style.min.css\";i:120;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/editor-rtl.css\";i:121;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/editor.css\";i:123;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/editor.min.css\";i:124;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/style-rtl.css\";i:125;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/style.css\";i:127;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/details/style.min.css\";i:128;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/editor.css\";i:131;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/editor.min.css\";i:132;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/style-rtl.css\";i:133;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/style.css\";i:135;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/style.min.css\";i:136;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/theme.css\";i:139;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/embed/theme.min.css\";i:140;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/editor-rtl.css\";i:141;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/editor.css\";i:143;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/editor.min.css\";i:144;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/style-rtl.css\";i:145;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:90:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/style.css\";i:147;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/file/style.min.css\";i:148;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/footnotes/style.css\";i:151;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/footnotes/style.min.css\";i:152;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/freeform/editor.css\";i:155;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/freeform/editor.min.css\";i:156;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/editor.css\";i:159;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/editor.min.css\";i:160;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/style.css\";i:163;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/style.min.css\";i:164;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/theme.css\";i:167;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/gallery/theme.min.css\";i:168;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/editor-rtl.css\";i:169;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/editor.css\";i:171;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/editor.min.css\";i:172;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/style-rtl.css\";i:173;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/style.css\";i:175;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/style.min.css\";i:176;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/theme-rtl.css\";i:177;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/theme.css\";i:179;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/group/theme.min.css\";i:180;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/heading/style-rtl.css\";i:181;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/heading/style.css\";i:183;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/heading/style.min.css\";i:184;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/html/editor-rtl.css\";i:185;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/html/editor.css\";i:187;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/html/editor.min.css\";i:188;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/editor-rtl.css\";i:189;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/editor.css\";i:191;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/editor.min.css\";i:192;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/style-rtl.css\";i:193;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/style.css\";i:195;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/style.min.css\";i:196;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/theme-rtl.css\";i:197;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/theme.css\";i:199;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/image/theme.min.css\";i:200;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-comments/style.css\";i:203;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/editor.css\";i:207;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/style.css\";i:211;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/list/style-rtl.css\";i:213;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:90:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/list/style.css\";i:215;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/list/style.min.css\";i:216;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/editor.css\";i:219;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/editor.min.css\";i:220;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/style.css\";i:223;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/media-text/style.min.css\";i:224;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/more/editor-rtl.css\";i:225;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/more/editor.css\";i:227;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/more/editor.min.css\";i:228;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/editor.css\";i:231;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/style.css\";i:235;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:113:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/editor.css\";i:243;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/editor.min.css\";i:244;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/style.css\";i:247;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/navigation/style.min.css\";i:248;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/nextpage/editor.css\";i:251;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/editor.css\";i:255;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/editor.min.css\";i:256;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/style.css\";i:259;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/page-list/style.min.css\";i:260;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/editor.css\";i:263;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/style.css\";i:267;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/paragraph/style.min.css\";i:268;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-author/style.css\";i:271;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-author/style.min.css\";i:272;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:113:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:108:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:112:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/style.css\";i:279;s:108:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-date/style.css\";i:283;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-date/style.min.css\";i:284;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/style.css\";i:291;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:114:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:113:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/style.css\";i:299;s:109:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:114:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:108:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/editor.css\";i:307;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/editor.min.css\";i:308;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/style.css\";i:311;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-template/style.min.css\";i:312;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-terms/style.css\";i:315;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-terms/style.min.css\";i:316;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-title/style.css\";i:319;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/post-title/style.min.css\";i:320;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/preformatted/style.css\";i:323;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/preformatted/style.min.css\";i:324;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/editor.css\";i:327;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/style.css\";i:331;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/style.min.css\";i:332;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/theme.css\";i:335;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:115:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:119:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:111:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:115:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:111:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/editor.css\";i:343;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/style.css\";i:347;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-title/style.css\";i:351;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query-title/style.min.css\";i:352;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query/editor-rtl.css\";i:353;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query/editor.css\";i:355;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/query/editor.min.css\";i:356;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/style-rtl.css\";i:357;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/style.css\";i:359;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/style.min.css\";i:360;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/theme.css\";i:363;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/quote/theme.min.css\";i:364;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/read-more/style.css\";i:367;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/read-more/style.min.css\";i:368;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:90:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/editor.css\";i:371;s:94:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/editor.min.css\";i:372;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/style-rtl.css\";i:373;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:89:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/style.css\";i:375;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/rss/style.min.css\";i:376;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/editor-rtl.css\";i:377;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/editor.css\";i:379;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/editor.min.css\";i:380;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/style-rtl.css\";i:381;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/style.css\";i:383;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/style.min.css\";i:384;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/theme-rtl.css\";i:385;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/theme.css\";i:387;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/search/theme.min.css\";i:388;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/editor.css\";i:391;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/editor.min.css\";i:392;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/style-rtl.css\";i:393;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/style.css\";i:395;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/style.min.css\";i:396;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/theme.css\";i:399;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/separator/theme.min.css\";i:400;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/shortcode/editor.css\";i:403;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/editor.css\";i:407;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/style.css\";i:411;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-logo/style.min.css\";i:412;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-tagline/editor.css\";i:415;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:105:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/editor.css\";i:419;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/editor.min.css\";i:420;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/style.css\";i:423;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/site-title/style.min.css\";i:424;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-link/editor.css\";i:427;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-link/editor.min.css\";i:428;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/editor.css\";i:431;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/editor.min.css\";i:432;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/style.css\";i:435;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/social-links/style.min.css\";i:436;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:101:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:93:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/editor.css\";i:439;s:97:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/editor.min.css\";i:440;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/style.css\";i:443;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/spacer/style.min.css\";i:444;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/editor-rtl.css\";i:445;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/editor.css\";i:447;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/editor.min.css\";i:448;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/style-rtl.css\";i:449;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/style.css\";i:451;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/style.min.css\";i:452;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/theme-rtl.css\";i:453;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/theme.css\";i:455;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/table/theme.min.css\";i:456;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/tag-cloud/style.css\";i:459;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:108:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/editor.css\";i:463;s:104:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/editor.min.css\";i:464;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/theme.css\";i:467;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/template-part/theme.min.css\";i:468;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:110:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/term-description/style.css\";i:471;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/term-description/style.min.css\";i:472;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:107:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/editor.css\";i:475;s:103:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:106:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:98:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/style.css\";i:479;s:102:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/text-columns/style.min.css\";i:480;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/verse/style-rtl.css\";i:481;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/verse/style.css\";i:483;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/verse/style.min.css\";i:484;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/editor-rtl.css\";i:485;s:100:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:92:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/editor.css\";i:487;s:96:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/editor.min.css\";i:488;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/style-rtl.css\";i:489;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/style.css\";i:491;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/style.min.css\";i:492;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/theme-rtl.css\";i:493;s:99:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:91:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/theme.css\";i:495;s:95:\"/Users/soumame/Local Sites/52hztestenviroment/app/public/wp-includes/blocks/video/theme.min.css\";}','yes');
INSERT INTO `wp_options` VALUES (121,'nonce_key','(4_~2C}Oyn}Z,^iNd@7!Q<5n.qHYKG{<<HZ/6:^1|Py2QB^tNl#Y7yh7n+Lx:y;%','no');
INSERT INTO `wp_options` VALUES (122,'nonce_salt','*cxAoH}Z-<%-{4JDQ#4c/cO7SNp)Qc!;|UusPGj~x@Qx>1=]YLwSL]CxJ}tQCdmy','no');
INSERT INTO `wp_options` VALUES (124,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696753429;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:34:\"SSL 認証に失敗しました。\";}}','yes');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (153,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (157,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (158,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (165,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (184,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":2,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (199,'current_theme','Iflab','yes');
INSERT INTO `wp_options` VALUES (200,'theme_mods_iflab','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:3;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696906250;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (201,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (223,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (256,'theme_mods_twentytwentytwo','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:19:\"wp_classic_sidebars\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696906342;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (260,'theme_mods_twentytwentyone','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696911274;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (310,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1698021269','no');
INSERT INTO `wp_options` VALUES (311,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (314,'_site_transient_timeout_browser_84fb6a68ab92a6d30981c69a1117885c','1698021593','no');
INSERT INTO `wp_options` VALUES (315,'_site_transient_browser_84fb6a68ab92a6d30981c69a1117885c','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"117.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (374,'_site_transient_timeout_browser_ab3ba39e885abc5bdce1795b8a5e4a2a','1698120615','no');
INSERT INTO `wp_options` VALUES (375,'_site_transient_browser_ab3ba39e885abc5bdce1795b8a5e4a2a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"117.0.0.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}','no');
INSERT INTO `wp_options` VALUES (382,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (390,'duplicate_post_show_notice','1','yes');
INSERT INTO `wp_options` VALUES (391,'duplicate_post_copytitle','1','yes');
INSERT INTO `wp_options` VALUES (392,'duplicate_post_copydate','0','yes');
INSERT INTO `wp_options` VALUES (393,'duplicate_post_copystatus','0','yes');
INSERT INTO `wp_options` VALUES (394,'duplicate_post_copyslug','0','yes');
INSERT INTO `wp_options` VALUES (395,'duplicate_post_copyexcerpt','1','yes');
INSERT INTO `wp_options` VALUES (396,'duplicate_post_copycontent','1','yes');
INSERT INTO `wp_options` VALUES (397,'duplicate_post_copythumbnail','1','yes');
INSERT INTO `wp_options` VALUES (398,'duplicate_post_copytemplate','1','yes');
INSERT INTO `wp_options` VALUES (399,'duplicate_post_copyformat','1','yes');
INSERT INTO `wp_options` VALUES (400,'duplicate_post_copyauthor','0','yes');
INSERT INTO `wp_options` VALUES (401,'duplicate_post_copypassword','0','yes');
INSERT INTO `wp_options` VALUES (402,'duplicate_post_copyattachments','0','yes');
INSERT INTO `wp_options` VALUES (403,'duplicate_post_copychildren','0','yes');
INSERT INTO `wp_options` VALUES (404,'duplicate_post_copycomments','0','yes');
INSERT INTO `wp_options` VALUES (405,'duplicate_post_copymenuorder','1','yes');
INSERT INTO `wp_options` VALUES (406,'duplicate_post_taxonomies_blacklist','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (407,'duplicate_post_blacklist','','yes');
INSERT INTO `wp_options` VALUES (408,'duplicate_post_types_enabled','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (409,'duplicate_post_show_original_column','0','yes');
INSERT INTO `wp_options` VALUES (410,'duplicate_post_show_original_in_post_states','0','yes');
INSERT INTO `wp_options` VALUES (411,'duplicate_post_show_original_meta_box','0','yes');
INSERT INTO `wp_options` VALUES (412,'duplicate_post_show_link','a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (413,'duplicate_post_show_link_in','a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (414,'duplicate_post_version','4.5','yes');
INSERT INTO `wp_options` VALUES (437,'_site_transient_timeout_browser_6bf9f47fa7833780f7fb47814ffc5090','1698204409','no');
INSERT INTO `wp_options` VALUES (438,'_site_transient_browser_6bf9f47fa7833780f7fb47814ffc5090','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (460,'_site_transient_timeout_browser_7cad339fd4b53d23059d0efddc145297','1698230154','no');
INSERT INTO `wp_options` VALUES (461,'_site_transient_browser_7cad339fd4b53d23059d0efddc145297','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}','no');
INSERT INTO `wp_options` VALUES (511,'_site_transient_timeout_theme_roots','1697761333','no');
INSERT INTO `wp_options` VALUES (512,'_site_transient_theme_roots','a:5:{s:4:\"52hz\";s:7:\"/themes\";s:5:\"iflab\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (513,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.3.2.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.3.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.3.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:5:\"6.3.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.3.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-rollback-1.zip\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:5:\"6.3.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1697759536;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (514,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697759537;s:7:\"checked\";a:5:{s:4:\"52hz\";s:0:\"\";s:5:\"iflab\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (515,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697759538;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.5\";s:7:\"updated\";s:19:\"2022-02-25 13:18:39\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/4.5/ja.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}}s:7:\"checked\";a:1:{s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1697516634:1');
INSERT INTO `wp_postmeta` VALUES (6,10,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (7,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (8,10,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (9,10,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (10,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (11,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (12,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (13,10,'_menu_item_url','http://iflab/');
INSERT INTO `wp_postmeta` VALUES (14,10,'_menu_item_orphaned','1696814119');
INSERT INTO `wp_postmeta` VALUES (15,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (16,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,11,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (18,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (19,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (23,11,'_menu_item_orphaned','1696814119');
INSERT INTO `wp_postmeta` VALUES (24,2,'_edit_lock','1696813997:1');
INSERT INTO `wp_postmeta` VALUES (25,12,'_edit_lock','1696814022:1');
INSERT INTO `wp_postmeta` VALUES (26,14,'_edit_lock','1696814036:1');
INSERT INTO `wp_postmeta` VALUES (27,16,'_edit_lock','1696814078:1');
INSERT INTO `wp_postmeta` VALUES (28,18,'_edit_lock','1696814089:1');
INSERT INTO `wp_postmeta` VALUES (29,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (30,2,'_wp_trash_meta_time','1696814236');
INSERT INTO `wp_postmeta` VALUES (31,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (32,21,'_edit_lock','1697089307:1');
INSERT INTO `wp_postmeta` VALUES (33,23,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (34,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,23,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (36,23,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (37,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,23,'_menu_item_url','http://iflab/');
INSERT INTO `wp_postmeta` VALUES (42,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,24,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (45,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (51,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,25,'_menu_item_menu_item_parent','24');
INSERT INTO `wp_postmeta` VALUES (53,25,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (54,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (60,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,26,'_menu_item_menu_item_parent','24');
INSERT INTO `wp_postmeta` VALUES (62,26,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (63,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (69,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_menu_item_parent','24');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (72,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (78,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_menu_item_parent','24');
INSERT INTO `wp_postmeta` VALUES (80,28,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (81,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (87,29,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,29,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (90,29,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (91,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,29,'_menu_item_url','https://note.com');
INSERT INTO `wp_postmeta` VALUES (96,30,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (98,30,'_menu_item_object_id','1');
INSERT INTO `wp_postmeta` VALUES (99,30,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (100,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (101,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (102,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (103,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,23,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (106,24,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (107,25,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (108,26,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (109,27,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (110,28,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (111,29,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (112,30,'_wp_old_date','2023-10-09');
INSERT INTO `wp_postmeta` VALUES (113,21,'_wp_page_template','about.php');
INSERT INTO `wp_postmeta` VALUES (114,31,'_edit_lock','1697089882:1');
INSERT INTO `wp_postmeta` VALUES (115,33,'_edit_lock','1697601230:1');
INSERT INTO `wp_postmeta` VALUES (122,38,'_edit_lock','1697417522:1');
INSERT INTO `wp_postmeta` VALUES (123,38,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (124,38,'_wp_trash_meta_time','1697417542');
INSERT INTO `wp_postmeta` VALUES (129,6,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (130,23,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (131,24,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (132,25,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (133,26,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (134,27,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (135,28,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (136,29,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (137,30,'_wp_old_date','2023-10-10');
INSERT INTO `wp_postmeta` VALUES (138,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (139,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (140,40,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (141,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (142,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (143,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (144,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (145,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (147,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (148,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (149,41,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (150,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (151,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (152,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (153,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (154,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (156,1,'_edit_lock','1697515719:1');
INSERT INTO `wp_postmeta` VALUES (161,43,'_dp_original','1');
INSERT INTO `wp_postmeta` VALUES (162,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (163,43,'_edit_lock','1697516593:1');
INSERT INTO `wp_postmeta` VALUES (168,46,'_dp_original','43');
INSERT INTO `wp_postmeta` VALUES (169,46,'_edit_lock','1697516607:1');
INSERT INTO `wp_postmeta` VALUES (174,48,'_dp_original','46');
INSERT INTO `wp_postmeta` VALUES (175,48,'_edit_lock','1697516618:1');
INSERT INTO `wp_postmeta` VALUES (180,52,'_thumbnail_id','64');
INSERT INTO `wp_postmeta` VALUES (181,52,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (182,52,'_dp_original','6');
INSERT INTO `wp_postmeta` VALUES (183,52,'_edit_lock','1697683512:1');
INSERT INTO `wp_postmeta` VALUES (186,54,'_thumbnail_id','63');
INSERT INTO `wp_postmeta` VALUES (187,54,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (189,54,'_dp_original','52');
INSERT INTO `wp_postmeta` VALUES (190,54,'_edit_lock','1697683302:1');
INSERT INTO `wp_postmeta` VALUES (193,56,'_dp_original','54');
INSERT INTO `wp_postmeta` VALUES (195,56,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (196,56,'_dp_is_rewrite_republish_copy','1');
INSERT INTO `wp_postmeta` VALUES (197,54,'_dp_has_rewrite_republish_copy','56');
INSERT INTO `wp_postmeta` VALUES (198,56,'_dp_creation_date_gmt','2023-10-17 04:26:44');
INSERT INTO `wp_postmeta` VALUES (199,56,'_edit_lock','1697516670:1');
INSERT INTO `wp_postmeta` VALUES (200,56,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (201,56,'_wp_trash_meta_time','1697516819');
INSERT INTO `wp_postmeta` VALUES (202,56,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (203,58,'_edit_lock','1697599736:1');
INSERT INTO `wp_postmeta` VALUES (204,59,'_edit_lock','1697601203:1');
INSERT INTO `wp_postmeta` VALUES (205,33,'_wp_page_template','articles.php');
INSERT INTO `wp_postmeta` VALUES (206,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (213,63,'_wp_attached_file','2023/10/IMG_20231018_192907_159.webp');
INSERT INTO `wp_postmeta` VALUES (214,63,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1800;s:4:\"file\";s:36:\"2023/10/IMG_20231018_192907_159.webp\";s:8:\"filesize\";i:282940;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"IMG_20231018_192907_159-240x300.webp\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14304;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"IMG_20231018_192907_159-819x1024.webp\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:121350;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"IMG_20231018_192907_159-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6428;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"IMG_20231018_192907_159-768x960.webp\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108866;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:38:\"IMG_20231018_192907_159-1229x1536.webp\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:233184;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (217,64,'_wp_attached_file','2023/10/20231016_223730.jpg');
INSERT INTO `wp_postmeta` VALUES (218,64,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2023/10/20231016_223730.jpg\";s:8:\"filesize\";i:283584;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"20231016_223730-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6789;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"20231016_223730-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42394;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"20231016_223730-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2966;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"20231016_223730-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26607;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"20231016_223730-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85377;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (221,65,'_wp_attached_file','2023/10/cropped-IMG_20231018_192907_159.webp');
INSERT INTO `wp_postmeta` VALUES (222,65,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (223,65,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:44:\"2023/10/cropped-IMG_20231018_192907_159.webp\";s:8:\"filesize\";i:48294;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"cropped-IMG_20231018_192907_159-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17584;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"cropped-IMG_20231018_192907_159-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6148;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:44:\"cropped-IMG_20231018_192907_159-270x270.webp\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14720;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:44:\"cropped-IMG_20231018_192907_159-192x192.webp\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8606;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:44:\"cropped-IMG_20231018_192907_159-180x180.webp\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8114;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:42:\"cropped-IMG_20231018_192907_159-32x32.webp\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1090;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (224,66,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (225,66,'_wp_trash_meta_time','1697686069');
INSERT INTO `wp_postmeta` VALUES (226,67,'_wp_attached_file','2023/10/アセット-4.png');
INSERT INTO `wp_postmeta` VALUES (227,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:362;s:6:\"height\";i:367;s:4:\"file\";s:26:\"2023/10/アセット-4.png\";s:8:\"filesize\";i:24122;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"アセット-4-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34363;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"アセット-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16658;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (228,68,'_wp_attached_file','2023/10/cropped-アセット-4.png');
INSERT INTO `wp_postmeta` VALUES (229,68,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (230,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2023/10/cropped-アセット-4.png\";s:8:\"filesize\";i:71942;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"cropped-アセット-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41027;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"cropped-アセット-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17388;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:34:\"cropped-アセット-4-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36091;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:34:\"cropped-アセット-4-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23662;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:34:\"cropped-アセット-4-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21745;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:32:\"cropped-アセット-4-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2315;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (231,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (232,69,'_wp_trash_meta_time','1697686456');
INSERT INTO `wp_postmeta` VALUES (233,70,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (234,70,'_wp_trash_meta_time','1697686469');
INSERT INTO `wp_postmeta` VALUES (235,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (236,71,'_wp_trash_meta_time','1697688175');
INSERT INTO `wp_postmeta` VALUES (237,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (238,72,'_wp_trash_meta_time','1697688231');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-09-29 15:25:07','2023-09-29 15:25:07','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-10-17 04:11:01','2023-10-17 04:11:01','',0,'http://iflab/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-09-29 15:25:07','2023-09-29 15:25:07','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://iflab/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2023-10-09 01:17:16','2023-10-09 01:17:16','',0,'http://iflab/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-09-29 15:25:07','2023-09-29 15:25:07','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://iflab.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-09-29 15:25:07','2023-09-29 15:25:07','',0,'http://iflab/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-09-29 15:25:09','2023-09-29 15:25:09','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-09-29 15:25:09','2023-09-29 15:25:09','',0,'https://iflab/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-09-29 15:34:22','2023-09-29 15:34:22','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world!','','publish','open','open','','byebye-world','','','2023-10-17 04:26:18','2023-10-17 04:26:18','',0,'http://iflab/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-09-29 15:34:09','2023-09-29 15:34:09','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-09-29 15:34:09','2023-09-29 15:34:09','',0,'http://iflab/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-09-29 15:34:22','2023-09-29 15:34:22','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world!','','inherit','closed','closed','','6-revision-v1','','','2023-09-29 15:34:22','2023-09-29 15:34:22','',6,'http://iflab/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-10-09 01:15:19','0000-00-00 00:00:00','','ホーム','','draft','closed','closed','','','','','2023-10-09 01:15:19','0000-00-00 00:00:00','',0,'http://iflab/?p=10',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-10-09 01:15:19','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-10-09 01:15:19','0000-00-00 00:00:00','',0,'http://iflab/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-10-09 01:16:03','2023-10-09 01:16:03','','講演会','','publish','closed','closed','','%e8%ac%9b%e6%bc%94%e4%bc%9a','','','2023-10-09 01:16:03','2023-10-09 01:16:03','',0,'http://iflab/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-10-09 01:16:03','2023-10-09 01:16:03','','講演会','','inherit','closed','closed','','12-revision-v1','','','2023-10-09 01:16:03','2023-10-09 01:16:03','',12,'http://iflab/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-10-09 01:16:20','2023-10-09 01:16:20','','フリースクール','','publish','closed','closed','','%e3%83%95%e3%83%aa%e3%83%bc%e3%82%b9%e3%82%af%e3%83%bc%e3%83%ab','','','2023-10-09 01:16:20','2023-10-09 01:16:20','',0,'http://iflab/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-10-09 01:16:20','2023-10-09 01:16:20','','フリースクール','','inherit','closed','closed','','14-revision-v1','','','2023-10-09 01:16:20','2023-10-09 01:16:20','',14,'http://iflab/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-10-09 01:17:01','2023-10-09 01:17:01','','相談事業','','publish','closed','closed','','%e7%9b%b8%e8%ab%87%e4%ba%8b%e6%a5%ad','','','2023-10-09 01:17:01','2023-10-09 01:17:01','',0,'http://iflab/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-10-09 01:17:01','2023-10-09 01:17:01','','相談事業','','inherit','closed','closed','','16-revision-v1','','','2023-10-09 01:17:01','2023-10-09 01:17:01','',16,'http://iflab/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-10-09 01:17:12','2023-10-09 01:17:12','','ペアトレ講座','','publish','closed','closed','','%e3%83%9a%e3%82%a2%e3%83%88%e3%83%ac%e8%ac%9b%e5%ba%a7','','','2023-10-09 01:17:12','2023-10-09 01:17:12','',0,'http://iflab/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-10-09 01:17:12','2023-10-09 01:17:12','','ペアトレ講座','','inherit','closed','closed','','18-revision-v1','','','2023-10-09 01:17:12','2023-10-09 01:17:12','',18,'http://iflab/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-10-09 01:17:16','2023-10-09 01:17:16','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://iflab/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2023-10-09 01:17:16','2023-10-09 01:17:16','',2,'http://iflab/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-10-09 01:17:49','2023-10-09 01:17:49','','IFラボとは？','','publish','closed','closed','','if%e3%83%a9%e3%83%9c%e3%81%a8%e3%81%af%ef%bc%9f','','','2023-10-12 05:44:02','2023-10-12 05:44:02','',0,'http://iflab/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-10-09 01:17:49','2023-10-09 01:17:49','','IFラボとは？','','inherit','closed','closed','','21-revision-v1','','','2023-10-09 01:17:49','2023-10-09 01:17:49','',21,'http://iflab/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-10-17 02:48:10','2023-10-09 01:19:12','','ホーム','','publish','closed','closed','','%e3%83%9b%e3%83%bc%e3%83%a0','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-10-17 02:48:10','2023-10-09 01:19:12','','IFラボについて','','publish','closed','closed','','if%e3%83%a9%e3%83%9c%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=24',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-10-17 02:48:10','2023-10-09 01:19:12',' ','','','publish','closed','closed','','25','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=25',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-10-17 02:48:10','2023-10-09 01:19:12',' ','','','publish','closed','closed','','26','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=26',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-10-17 02:48:10','2023-10-09 01:19:12',' ','','','publish','closed','closed','','27','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=27',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-10-17 02:48:10','2023-10-09 01:19:12',' ','','','publish','closed','closed','','28','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=28',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-10-17 02:48:10','2023-10-09 03:37:40','','公式Note','','publish','closed','closed','','%e5%85%ac%e5%bc%8fnote','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=29',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-10-17 02:48:10','2023-10-09 03:37:40','','ブログ一覧','','publish','closed','closed','','%e3%83%96%e3%83%ad%e3%82%b0%e4%b8%80%e8%a6%a7','','','2023-10-17 02:48:10','2023-10-17 02:48:10','',0,'http://iflab/?p=30',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-10-12 05:53:45','2023-10-12 05:53:45','','スタッフ紹介','','publish','closed','closed','','%e3%82%b9%e3%82%bf%e3%83%83%e3%83%95%e7%b4%b9%e4%bb%8b','','','2023-10-12 05:53:45','2023-10-12 05:53:45','',0,'http://iflab/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-10-12 05:53:45','2023-10-12 05:53:45','','スタッフ紹介','','inherit','closed','closed','','31-revision-v1','','','2023-10-12 05:53:45','2023-10-12 05:53:45','',31,'http://iflab/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-10-12 05:54:39','2023-10-12 05:54:39','','ブログ','','publish','closed','closed','','articles','','','2023-10-18 03:56:14','2023-10-18 03:56:14','',0,'http://iflab/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-10-12 05:54:39','2023-10-12 05:54:39','','ブログ','','inherit','closed','closed','','33-revision-v1','','','2023-10-12 05:54:39','2023-10-12 05:54:39','',33,'http://iflab/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-10-16 00:39:53','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2023-10-16 00:39:53','0000-00-00 00:00:00','',0,'http://iflab/?p=35',0,'post','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-10-16 00:52:22','2023-10-16 00:52:22','{\n    \"site_icon\": {\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-16 00:52:02\"\n    }\n}','','','trash','closed','closed','','b7fc57cc-89c3-477c-9821-29c444bb87eb','','','2023-10-16 00:52:22','2023-10-16 00:52:22','',0,'http://iflab/?p=38',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-10-16 07:24:54','2023-10-16 07:24:54','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world!','','inherit','closed','closed','','6-autosave-v1','','','2023-10-16 07:24:54','2023-10-16 07:24:54','',6,'http://iflab/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-10-17 02:49:04','2023-10-17 02:48:53',' ','','','publish','closed','closed','','40','','','2023-10-17 02:49:04','2023-10-17 02:49:04','',0,'http://iflab/?p=40',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-10-17 02:49:04','2023-10-17 02:48:53',' ','','','publish','closed','closed','','41','','','2023-10-17 02:49:04','2023-10-17 02:49:04','',0,'http://iflab/?p=41',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-10-17 04:11:01','2023-10-17 04:11:01','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-10-17 04:11:01','2023-10-17 04:11:01','',1,'http://iflab/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-10-17 04:25:35','2023-10-17 04:25:35','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world2!','','publish','open','open','','hello-world2','','','2023-10-17 04:25:35','2023-10-17 04:25:35','',0,'http://iflab/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-10-17 04:25:26','2023-10-17 04:25:26','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','43-revision-v1','','','2023-10-17 04:25:26','2023-10-17 04:25:26','',43,'http://iflab/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-10-17 04:25:35','2023-10-17 04:25:35','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world2!','','inherit','closed','closed','','43-revision-v1','','','2023-10-17 04:25:35','2023-10-17 04:25:35','',43,'http://iflab/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-10-17 04:25:49','2023-10-17 04:25:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world3!','','publish','open','open','','hello-world3','','','2023-10-17 04:25:49','2023-10-17 04:25:49','',0,'http://iflab/?p=46',0,'post','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-10-17 04:25:49','2023-10-17 04:25:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world3!','','inherit','closed','closed','','46-revision-v1','','','2023-10-17 04:25:49','2023-10-17 04:25:49','',46,'http://iflab/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-10-17 04:26:00','2023-10-17 04:26:00','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world4!','','publish','open','open','','hello-world4','','','2023-10-17 04:26:00','2023-10-17 04:26:00','',0,'http://iflab/?p=48',0,'post','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2023-10-17 04:26:00','2023-10-17 04:26:00','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world4!','','inherit','closed','closed','','48-revision-v1','','','2023-10-17 04:26:00','2023-10-17 04:26:00','',48,'http://iflab/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-10-17 04:26:14','2023-10-17 04:26:14','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world2!','','inherit','closed','closed','','6-revision-v1','','','2023-10-17 04:26:14','2023-10-17 04:26:14','',6,'http://iflab/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-10-17 04:26:18','2023-10-17 04:26:18','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world!','','inherit','closed','closed','','6-revision-v1','','','2023-10-17 04:26:18','2023-10-17 04:26:18','',6,'http://iflab/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-10-17 04:26:27','2023-10-17 04:26:27','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world2!','','publish','open','open','','byebye-world2','','','2023-10-19 02:44:58','2023-10-19 02:44:58','',0,'http://iflab/?p=52',0,'post','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-10-17 04:26:27','2023-10-17 04:26:27','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world2!','','inherit','closed','closed','','52-revision-v1','','','2023-10-17 04:26:27','2023-10-17 04:26:27','',52,'http://iflab/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-10-17 04:26:37','2023-10-17 04:26:37','<!-- wp:paragraph -->\n<p>さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!','','publish','open','open','','byebye-world3','','','2023-10-19 02:43:44','2023-10-19 02:43:44','',0,'http://iflab/?p=54',0,'post','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-10-17 04:26:37','2023-10-17 04:26:37','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!','','inherit','closed','closed','','54-revision-v1','','','2023-10-17 04:26:37','2023-10-17 04:26:37','',54,'http://iflab/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-10-17 04:26:37','2023-10-17 04:26:37','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!','','trash','open','open','','__trashed','','','2023-10-17 04:26:59','2023-10-17 04:26:59','',0,'http://iflab/?p=56',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-10-17 04:26:59','2023-10-17 04:26:59','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!','','inherit','closed','closed','','56-revision-v1','','','2023-10-17 04:26:59','2023-10-17 04:26:59','',56,'http://iflab/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-10-18 03:26:55','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2023-10-18 03:26:55','0000-00-00 00:00:00','',0,'http://iflab/?page_id=58',0,'page','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-10-18 03:55:32','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2023-10-18 03:55:32','0000-00-00 00:00:00','',0,'http://iflab/?p=59',0,'post','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-10-18 10:36:11','2023-10-18 10:36:11','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!','','inherit','closed','closed','','54-revision-v1','','','2023-10-18 10:36:11','2023-10-18 10:36:11','',54,'http://iflab/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-10-18 10:36:45','2023-10-18 10:36:45','<!-- wp:paragraph -->\n<p>さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!','','inherit','closed','closed','','54-revision-v1','','','2023-10-18 10:36:45','2023-10-18 10:36:45','',54,'http://iflab/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-10-18 10:36:58','2023-10-18 10:36:58','<!-- wp:paragraph -->\n<p>さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。さようなら。世界。</p>\n<!-- /wp:paragraph -->','ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!ByeBye world3!','','inherit','closed','closed','','54-revision-v1','','','2023-10-18 10:36:58','2023-10-18 10:36:58','',54,'http://iflab/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-10-19 02:43:36','2023-10-19 02:43:36','','IMG_20231018_192907_159','','inherit','open','closed','','img_20231018_192907_159','','','2023-10-19 02:43:36','2023-10-19 02:43:36','',54,'http://iflab/wp-content/uploads/2023/10/IMG_20231018_192907_159.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-10-19 02:44:18','2023-10-19 02:44:18','','20231016_223730','','inherit','open','closed','','20231016_223730','','','2023-10-19 02:44:18','2023-10-19 02:44:18','',52,'http://iflab/wp-content/uploads/2023/10/20231016_223730.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-10-19 03:27:45','2023-10-19 03:27:45','http://iflab/wp-content/uploads/2023/10/cropped-IMG_20231018_192907_159.webp','cropped-IMG_20231018_192907_159.webp','','inherit','open','closed','','cropped-img_20231018_192907_159-webp','','','2023-10-19 03:27:45','2023-10-19 03:27:45','',0,'http://iflab/wp-content/uploads/2023/10/cropped-IMG_20231018_192907_159.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-10-19 03:27:49','2023-10-19 03:27:49','{\n    \"site_icon\": {\n        \"value\": 65,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-19 03:27:49\"\n    }\n}','','','trash','closed','closed','','b059cf2b-bd15-4e06-b7e2-36d853d5d472','','','2023-10-19 03:27:49','2023-10-19 03:27:49','',0,'http://iflab/b059cf2b-bd15-4e06-b7e2-36d853d5d472/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-10-19 03:34:06','2023-10-19 03:34:06','','アセット 4','','inherit','open','closed','','%e3%82%a2%e3%82%bb%e3%83%83%e3%83%88-4','','','2023-10-19 03:34:06','2023-10-19 03:34:06','',0,'http://iflab/wp-content/uploads/2023/10/アセット-4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-10-19 03:34:10','2023-10-19 03:34:10','http://iflab/wp-content/uploads/2023/10/cropped-アセット-4.png','cropped-アセット-4.png','','inherit','open','closed','','cropped-%e3%82%a2%e3%82%bb%e3%83%83%e3%83%88-4-png','','','2023-10-19 03:34:10','2023-10-19 03:34:10','',0,'http://iflab/wp-content/uploads/2023/10/cropped-アセット-4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-10-19 03:34:16','2023-10-19 03:34:16','{\n    \"site_icon\": {\n        \"value\": 68,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-19 03:34:16\"\n    }\n}','','','trash','closed','closed','','1045f4ad-9631-4c6f-8d38-b2cf72310c07','','','2023-10-19 03:34:16','2023-10-19 03:34:16','',0,'http://iflab/1045f4ad-9631-4c6f-8d38-b2cf72310c07/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-10-19 03:34:29','2023-10-19 03:34:29','{\n    \"blogname\": {\n        \"value\": \"Iflab\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-19 03:34:29\"\n    }\n}','','','trash','closed','closed','','a693c8c2-7716-4397-9c65-7e7e9a2d963d','','','2023-10-19 03:34:29','2023-10-19 03:34:29','',0,'http://iflab/a693c8c2-7716-4397-9c65-7e7e9a2d963d/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-10-19 04:02:55','2023-10-19 04:02:55','{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-19 04:02:55\"\n    }\n}','','','trash','closed','closed','','f2b49771-1459-41be-b112-45e9566e7c2a','','','2023-10-19 04:02:55','2023-10-19 04:02:55','',0,'http://iflab/f2b49771-1459-41be-b112-45e9566e7c2a/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-10-19 04:03:51','2023-10-19 04:03:51','{\n    \"site_icon\": {\n        \"value\": 68,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-19 04:03:51\"\n    }\n}','','','trash','closed','closed','','6b7b7063-fe1c-4dfa-83d5-c08f03a31ebb','','','2023-10-19 04:03:51','2023-10-19 04:03:51','',0,'http://iflab/6b7b7063-fe1c-4dfa-83d5-c08f03a31ebb/',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,3,0);
INSERT INTO `wp_term_relationships` VALUES (24,3,0);
INSERT INTO `wp_term_relationships` VALUES (25,3,0);
INSERT INTO `wp_term_relationships` VALUES (26,3,0);
INSERT INTO `wp_term_relationships` VALUES (27,3,0);
INSERT INTO `wp_term_relationships` VALUES (28,3,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (40,4,0);
INSERT INTO `wp_term_relationships` VALUES (41,4,0);
INSERT INTO `wp_term_relationships` VALUES (43,1,0);
INSERT INTO `wp_term_relationships` VALUES (46,1,0);
INSERT INTO `wp_term_relationships` VALUES (48,1,0);
INSERT INTO `wp_term_relationships` VALUES (52,1,0);
INSERT INTO `wp_term_relationships` VALUES (54,1,0);
INSERT INTO `wp_term_relationships` VALUES (56,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentythree','twentytwentythree',0);
INSERT INTO `wp_terms` VALUES (3,'navbar','navbar',0);
INSERT INTO `wp_terms` VALUES (4,'footer','footer',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','35');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";}s:10:\"editorMode\";s:6:\"visual\";}s:9:\"_modified\";s:24:\"2023-10-18T03:55:44.786Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1697417171');
INSERT INTO `wp_usermeta` VALUES (24,1,'session_tokens','a:3:{s:64:\"52204b56678a96f2a6ef9b2e664bf15670f5fa0321d6b0980590c71694226dcb\";a:4:{s:10:\"expiration\";i:1697688609;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1697515809;}s:64:\"23355ce0c174f42a2603f5d54d3ac7707691d9a787f7314441d977125b77c5ad\";a:4:{s:10:\"expiration\";i:1697688611;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1697515811;}s:64:\"dc8e876a2119cd5bb939044a43ba27e731571452f8bdf9189bec404d73071395\";a:4:{s:10:\"expiration\";i:1697772407;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36\";s:5:\"login\";i:1697599607;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BLjGZZWQ27ddD6Z/RIbuWFaeAouSKp1','admin','dev-email@wpengine.local','http://iflab','2023-09-29 15:25:07','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-20 11:03:01
