-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para strapi-for-ionic
DROP DATABASE IF EXISTS `strapi-for-ionic`;
CREATE DATABASE IF NOT EXISTS `strapi-for-ionic` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `strapi-for-ionic`;

-- Volcando estructura para tabla strapi-for-ionic.abouts
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.abouts: ~0 rows (aproximadamente)
DELETE FROM `abouts`;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.abouts__allowed_roles
DROP TABLE IF EXISTS `abouts__allowed_roles`;
CREATE TABLE IF NOT EXISTS `abouts__allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.abouts__allowed_roles: ~0 rows (aproximadamente)
DELETE FROM `abouts__allowed_roles`;
/*!40000 ALTER TABLE `abouts__allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `abouts__allowed_roles` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.about_pages
DROP TABLE IF EXISTS `about_pages`;
CREATE TABLE IF NOT EXISTS `about_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.about_pages: ~0 rows (aproximadamente)
DELETE FROM `about_pages`;
/*!40000 ALTER TABLE `about_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `about_pages` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.about_pages__localizations
DROP TABLE IF EXISTS `about_pages__localizations`;
CREATE TABLE IF NOT EXISTS `about_pages__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about_page_id` int(11) DEFAULT NULL,
  `about-page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.about_pages__localizations: ~0 rows (aproximadamente)
DELETE FROM `about_pages__localizations`;
/*!40000 ALTER TABLE `about_pages__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `about_pages__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.accesses
DROP TABLE IF EXISTS `accesses`;
CREATE TABLE IF NOT EXISTS `accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.accesses: ~0 rows (aproximadamente)
DELETE FROM `accesses`;
/*!40000 ALTER TABLE `accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesses` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.areas
DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `page` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areas_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.areas: ~6 rows (aproximadamente)
DELETE FROM `areas`;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`id`, `name`, `title`, `position`, `page`, `slug`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
	(4, 'Header', '{%area_name%}', 'top', NULL, 'header', 1, '2021-09-04 21:44:39', 1, '2021-09-08 19:57:55'),
	(5, 'Footer', NULL, 'bottom', NULL, 'footer', 1, '2021-09-04 21:45:58', 1, '2021-09-08 19:57:41'),
	(6, 'Content', '{%content_title%}', 'top', NULL, 'content', 1, '2021-09-04 21:46:13', 1, '2021-09-08 19:58:01'),
	(7, 'SideNav', NULL, 'start', NULL, 'sidenav', 1, '2021-09-04 21:46:38', 1, '2021-09-08 19:57:47'),
	(8, 'Main menu', 'Main menu', 'top', NULL, 'main-menu', 1, '2021-09-07 19:46:21', 1, '2021-09-08 19:58:09'),
	(9, 'User menu', 'User menu', 'top', NULL, 'user-menu', 1, '2021-09-07 19:55:33', 1, '2021-09-08 19:58:16'),
	(10, 'Page', 'Page area', 'start', NULL, 'page', 1, '2021-09-10 19:45:24', 1, '2021-09-10 19:46:19');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.areas_components
DROP TABLE IF EXISTS `areas_components`;
CREATE TABLE IF NOT EXISTS `areas_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `area_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id_fk` (`area_id`),
  CONSTRAINT `area_id_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.areas_components: ~8 rows (aproximadamente)
DELETE FROM `areas_components`;
/*!40000 ALTER TABLE `areas_components` DISABLE KEYS */;
INSERT INTO `areas_components` (`id`, `field`, `order`, `component_type`, `component_id`, `area_id`) VALUES
	(1, 'children', 1, 'components_row_types_children', 1, 8),
	(2, 'children', 1, 'components_row_types_children', 2, 9),
	(3, 'children', 1, 'components_row_types_children', 3, 7),
	(4, 'children', 2, 'components_row_types_children', 4, 7),
	(5, 'children', 2, 'components_row_types_children', 5, 8),
	(6, 'children', 1, 'components_row_types_children', 6, 5),
	(7, 'children', 1, 'components_row_types_children', 7, 10),
	(8, 'children', 2, 'components_row_types_children', 8, 10),
	(9, 'children', 3, 'components_row_types_children', 9, 10),
	(10, 'children', 4, 'components_row_types_children', 10, 10);
/*!40000 ALTER TABLE `areas_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.areas__areas
DROP TABLE IF EXISTS `areas__areas`;
CREATE TABLE IF NOT EXISTS `areas__areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_id` int(11) DEFAULT NULL,
  `related_area_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.areas__areas: ~2 rows (aproximadamente)
DELETE FROM `areas__areas`;
/*!40000 ALTER TABLE `areas__areas` DISABLE KEYS */;
INSERT INTO `areas__areas` (`id`, `area_id`, `related_area_id`) VALUES
	(1, 7, 8),
	(2, 7, 9);
/*!40000 ALTER TABLE `areas__areas` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.audience
DROP TABLE IF EXISTS `audience`;
CREATE TABLE IF NOT EXISTS `audience` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.audience: ~0 rows (aproximadamente)
DELETE FROM `audience`;
/*!40000 ALTER TABLE `audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `audience` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.buttons
DROP TABLE IF EXISTS `buttons`;
CREATE TABLE IF NOT EXISTS `buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `routeLink` varchar(255) DEFAULT NULL,
  `routerLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `buttons_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.buttons: ~2 rows (aproximadamente)
DELETE FROM `buttons`;
/*!40000 ALTER TABLE `buttons` DISABLE KEYS */;
INSERT INTO `buttons` (`id`, `fieldName`, `slug`, `label`, `created_by`, `updated_by`, `created_at`, `updated_at`, `locale`, `name`, `routeLink`, `routerLink`) VALUES
	(1, 'Submit Login', 'login', 'Login', 1, 1, '2021-07-16 22:50:17', '2021-07-16 22:51:14', 'en', NULL, NULL, NULL),
	(2, 'Goto Sign Up', 'goto-signup', 'Sign Up!', 1, 1, '2021-07-16 22:50:45', '2021-09-05 00:11:16', 'en', NULL, NULL, '/form/signup');
/*!40000 ALTER TABLE `buttons` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.buttons__localizations
DROP TABLE IF EXISTS `buttons__localizations`;
CREATE TABLE IF NOT EXISTS `buttons__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `button_id` int(11) DEFAULT NULL,
  `related_button_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.buttons__localizations: ~0 rows (aproximadamente)
DELETE FROM `buttons__localizations`;
/*!40000 ALTER TABLE `buttons__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `buttons__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.comments
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `blockedThread` tinyint(1) DEFAULT NULL,
  `blockReason` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `authorUser` int(11) DEFAULT NULL,
  `authorType` varchar(255) DEFAULT NULL,
  `authorId` varchar(255) DEFAULT NULL,
  `authorName` varchar(255) DEFAULT NULL,
  `authorEmail` varchar(255) DEFAULT NULL,
  `authorAvatar` varchar(255) DEFAULT NULL,
  `removed` tinyint(1) DEFAULT NULL,
  `relatedSlug` varchar(255) DEFAULT NULL,
  `threadOf` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.comments: ~0 rows (aproximadamente)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.comments_morph
DROP TABLE IF EXISTS `comments_morph`;
CREATE TABLE IF NOT EXISTS `comments_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comments_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.comments_morph: ~0 rows (aproximadamente)
DELETE FROM `comments_morph`;
/*!40000 ALTER TABLE `comments_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_morph` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.comments_report
DROP TABLE IF EXISTS `comments_report`;
CREATE TABLE IF NOT EXISTS `comments_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `reason` varchar(255) NOT NULL,
  `resolved` tinyint(1) DEFAULT NULL,
  `related` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.comments_report: ~0 rows (aproximadamente)
DELETE FROM `comments_report`;
/*!40000 ALTER TABLE `comments_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_report` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components
DROP TABLE IF EXISTS `components`;
CREATE TABLE IF NOT EXISTS `components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components: ~8 rows (aproximadamente)
DELETE FROM `components`;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'SchedulePage', '2021-09-07 22:34:45', 1, 1, '2021-09-07 22:34:27', '2021-09-07 22:34:45'),
	(2, 'SpeakerList', '2021-09-07 22:34:48', 1, 1, '2021-09-07 22:34:33', '2021-09-07 22:34:48'),
	(3, 'SpeakerDetail', '2021-09-07 22:34:42', 1, 1, '2021-09-07 22:34:40', '2021-09-07 22:34:42'),
	(4, 'SessionDetail', '2021-09-07 22:35:18', 1, 1, '2021-09-07 22:34:55', '2021-09-07 22:35:18'),
	(5, 'MapView', '2021-09-07 22:35:07', 1, 1, '2021-09-07 22:35:02', '2021-09-07 22:35:07'),
	(6, 'About', '2021-09-07 22:35:15', 1, 1, '2021-09-07 22:35:12', '2021-09-07 22:35:15'),
	(7, 'Page', '2021-09-07 22:37:18', 1, 1, '2021-09-07 22:35:50', '2021-09-07 22:37:18'),
	(8, 'Account', '2021-09-07 22:53:10', 1, 1, '2021-09-07 22:53:08', '2021-09-07 22:53:10'),
	(9, 'FormPage', '2021-09-07 22:59:23', 1, 1, '2021-09-07 22:59:16', '2021-09-07 22:59:23');
/*!40000 ALTER TABLE `components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_app_images
DROP TABLE IF EXISTS `components_row_types_app_images`;
CREATE TABLE IF NOT EXISTS `components_row_types_app_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_app_images: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_app_images`;
/*!40000 ALTER TABLE `components_row_types_app_images` DISABLE KEYS */;
INSERT INTO `components_row_types_app_images` (`id`, `name`) VALUES
	(1, 'appicon.svg'),
	(2, 'appicon.png');
/*!40000 ALTER TABLE `components_row_types_app_images` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_buttons
DROP TABLE IF EXISTS `components_row_types_buttons`;
CREATE TABLE IF NOT EXISTS `components_row_types_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `button` int(11) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_buttons: ~2 rows (aproximadamente)
DELETE FROM `components_row_types_buttons`;
/*!40000 ALTER TABLE `components_row_types_buttons` DISABLE KEYS */;
INSERT INTO `components_row_types_buttons` (`id`, `button`, `enabled`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 2, 1);
/*!40000 ALTER TABLE `components_row_types_buttons` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_buttons_components
DROP TABLE IF EXISTS `components_row_types_buttons_components`;
CREATE TABLE IF NOT EXISTS `components_row_types_buttons_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_row_types_button_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_row_types_button_id_fk` (`components_row_types_button_id`),
  CONSTRAINT `components_row_types_button_id_fk` FOREIGN KEY (`components_row_types_button_id`) REFERENCES `components_row_types_buttons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_buttons_components: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_buttons_components`;
/*!40000 ALTER TABLE `components_row_types_buttons_components` DISABLE KEYS */;
INSERT INTO `components_row_types_buttons_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_row_types_button_id`) VALUES
	(2, 'rules', 1, 'components_row_types_rules', 9, 1),
	(3, 'rules', 1, 'components_row_types_rules', 13, 2);
/*!40000 ALTER TABLE `components_row_types_buttons_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_buttons__buttons
DROP TABLE IF EXISTS `components_row_types_buttons__buttons`;
CREATE TABLE IF NOT EXISTS `components_row_types_buttons__buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `components_row_types_button_id` int(11) DEFAULT NULL,
  `button_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_buttons__buttons: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_buttons__buttons`;
/*!40000 ALTER TABLE `components_row_types_buttons__buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_row_types_buttons__buttons` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_children
DROP TABLE IF EXISTS `components_row_types_children`;
CREATE TABLE IF NOT EXISTS `components_row_types_children` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_children: ~8 rows (aproximadamente)
DELETE FROM `components_row_types_children`;
/*!40000 ALTER TABLE `components_row_types_children` DISABLE KEYS */;
INSERT INTO `components_row_types_children` (`id`, `menu`, `area`, `page`) VALUES
	(1, 1, NULL, NULL),
	(2, 2, NULL, NULL),
	(3, NULL, 8, NULL),
	(4, NULL, 9, NULL),
	(5, 2, NULL, NULL),
	(6, 3, NULL, NULL),
	(7, NULL, 4, NULL),
	(8, NULL, 6, NULL),
	(9, NULL, 5, NULL),
	(10, NULL, 7, NULL);
/*!40000 ALTER TABLE `components_row_types_children` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_children__menus
DROP TABLE IF EXISTS `components_row_types_children__menus`;
CREATE TABLE IF NOT EXISTS `components_row_types_children__menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `components_row_types_child_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_children__menus: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_children__menus`;
/*!40000 ALTER TABLE `components_row_types_children__menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_row_types_children__menus` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_form_fields
DROP TABLE IF EXISTS `components_row_types_form_fields`;
CREATE TABLE IF NOT EXISTS `components_row_types_form_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_form_fields: ~9 rows (aproximadamente)
DELETE FROM `components_row_types_form_fields`;
/*!40000 ALTER TABLE `components_row_types_form_fields` DISABLE KEYS */;
INSERT INTO `components_row_types_form_fields` (`id`, `field`) VALUES
	(2, 2),
	(3, 5),
	(4, 4),
	(5, 4),
	(6, 4),
	(7, 2),
	(8, 3),
	(9, 5),
	(10, 6),
	(11, 7),
	(12, 8),
	(13, 6);
/*!40000 ALTER TABLE `components_row_types_form_fields` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_form_fields_components
DROP TABLE IF EXISTS `components_row_types_form_fields_components`;
CREATE TABLE IF NOT EXISTS `components_row_types_form_fields_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_row_types_form_field_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_row_types_form_field_id_fk` (`components_row_types_form_field_id`),
  CONSTRAINT `components_row_types_form_field_id_fk` FOREIGN KEY (`components_row_types_form_field_id`) REFERENCES `components_row_types_form_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_form_fields_components: ~8 rows (aproximadamente)
DELETE FROM `components_row_types_form_fields_components`;
/*!40000 ALTER TABLE `components_row_types_form_fields_components` DISABLE KEYS */;
INSERT INTO `components_row_types_form_fields_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_row_types_form_field_id`) VALUES
	(4, 'rules', 1, 'components_row_types_rules', 6, 3),
	(5, 'rules', 1, 'components_row_types_rules', 7, 2),
	(6, 'rules', 2, 'components_row_types_rules', 10, 2),
	(8, 'rules', 3, 'components_row_types_rules', 12, 2),
	(9, 'rules', 1, 'components_row_types_rules', 17, 11),
	(10, 'rules', 1, 'components_row_types_rules', 18, 10),
	(11, 'rules', 1, 'components_row_types_rules', 19, 12),
	(12, 'rules', 1, 'components_row_types_rules', 20, 13);
/*!40000 ALTER TABLE `components_row_types_form_fields_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_form_fields__fields
DROP TABLE IF EXISTS `components_row_types_form_fields__fields`;
CREATE TABLE IF NOT EXISTS `components_row_types_form_fields__fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `components_row_types_form_field_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_form_fields__fields: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_form_fields__fields`;
/*!40000 ALTER TABLE `components_row_types_form_fields__fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_row_types_form_fields__fields` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_html_elements
DROP TABLE IF EXISTS `components_row_types_html_elements`;
CREATE TABLE IF NOT EXISTS `components_row_types_html_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_html_elements: ~11 rows (aproximadamente)
DELETE FROM `components_row_types_html_elements`;
/*!40000 ALTER TABLE `components_row_types_html_elements` DISABLE KEYS */;
INSERT INTO `components_row_types_html_elements` (`id`, `identifier`, `name`) VALUES
	(1, 'schedule-tab', 'schedule-tab'),
	(2, 'schedule', 'schedule'),
	(3, 'speackers-tab', 'speackers-tab'),
	(4, 'map-tab', 'map-tab'),
	(5, 'map-tab', 'map-tab'),
	(6, 'speakers', 'speakers'),
	(7, 'about', 'about'),
	(8, 'support', 'support'),
	(9, 'logout', 'logout'),
	(10, 'account', 'account'),
	(11, 'login', 'login'),
	(12, 'signup', 'signup'),
	(13, 'about', 'about');
/*!40000 ALTER TABLE `components_row_types_html_elements` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_ion_elements
DROP TABLE IF EXISTS `components_row_types_ion_elements`;
CREATE TABLE IF NOT EXISTS `components_row_types_ion_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `component` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `exact` tinyint(1) DEFAULT NULL,
  `iconOut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_ion_elements: ~17 rows (aproximadamente)
DELETE FROM `components_row_types_ion_elements`;
/*!40000 ALTER TABLE `components_row_types_ion_elements` DISABLE KEYS */;
INSERT INTO `components_row_types_ion_elements` (`id`, `component`, `icon`, `main`, `exact`, `iconOut`) VALUES
	(1, NULL, 'calendar', NULL, NULL, NULL),
	(2, '1', 'calendar', 1, 1, 'calendarOutline'),
	(3, '1', 'calendar', 1, 1, 'calendarOutline'),
	(4, NULL, 'people', NULL, NULL, NULL),
	(5, NULL, NULL, NULL, NULL, NULL),
	(6, '3', 'people', 0, 1, 'people'),
	(7, '4', 'people', 0, 0, 'people'),
	(8, '2', 'people', 1, 1, 'people'),
	(9, '4', 'calendar', 0, 1, 'calendarOutline'),
	(10, '9', 'login', 0, 0, 'login'),
	(11, '8', 'person', 0, 0, 'person'),
	(12, '9', 'logIn', 0, 0, 'logIn'),
	(13, '9', 'personAdd', 0, 0, 'personAdd'),
	(14, '9', 'help', NULL, 0, 'help'),
	(15, '9', 'logOut', 0, 0, 'logOut'),
	(16, '6', 'informationCircle', 0, 0, 'informationCircleOutline'),
	(17, '5', 'mapOutline', 0, 0, 'mapOutline'),
	(18, '2', NULL, NULL, 0, NULL);
/*!40000 ALTER TABLE `components_row_types_ion_elements` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_items
DROP TABLE IF EXISTS `components_row_types_items`;
CREATE TABLE IF NOT EXISTS `components_row_types_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `submenu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_items: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_items`;
/*!40000 ALTER TABLE `components_row_types_items` DISABLE KEYS */;
INSERT INTO `components_row_types_items` (`id`, `submenu`) VALUES
	(1, NULL);
/*!40000 ALTER TABLE `components_row_types_items` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_items__submenus
DROP TABLE IF EXISTS `components_row_types_items__submenus`;
CREATE TABLE IF NOT EXISTS `components_row_types_items__submenus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `components_row_types_item_id` int(11) DEFAULT NULL,
  `menu-item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_items__submenus: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_items__submenus`;
/*!40000 ALTER TABLE `components_row_types_items__submenus` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_row_types_items__submenus` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_paths
DROP TABLE IF EXISTS `components_row_types_paths`;
CREATE TABLE IF NOT EXISTS `components_row_types_paths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` int(11) DEFAULT NULL,
  `exact` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_paths: ~12 rows (aproximadamente)
DELETE FROM `components_row_types_paths`;
/*!40000 ALTER TABLE `components_row_types_paths` DISABLE KEYS */;
INSERT INTO `components_row_types_paths` (`id`, `path`, `exact`) VALUES
	(1, 3, 0),
	(2, 1, 0),
	(3, 3, 1),
	(4, 2, NULL),
	(5, 4, NULL),
	(6, 5, NULL),
	(7, 6, NULL),
	(8, 7, NULL),
	(9, 8, NULL),
	(10, 9, NULL),
	(11, 1, NULL),
	(12, 2, NULL),
	(13, 4, NULL);
/*!40000 ALTER TABLE `components_row_types_paths` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_permissions
DROP TABLE IF EXISTS `components_row_types_permissions`;
CREATE TABLE IF NOT EXISTS `components_row_types_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_permissions_role` int(11) DEFAULT NULL,
  `allowed` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_permissions: ~59 rows (aproximadamente)
DELETE FROM `components_row_types_permissions`;
/*!40000 ALTER TABLE `components_row_types_permissions` DISABLE KEYS */;
INSERT INTO `components_row_types_permissions` (`id`, `users_permissions_role`, `allowed`, `role`) VALUES
	(1, NULL, 1, 2),
	(2, NULL, 1, 1),
	(3, NULL, 1, 1),
	(4, NULL, 0, 2),
	(5, NULL, 0, 1),
	(6, NULL, 1, 2),
	(7, NULL, 0, 1),
	(8, NULL, 1, 2),
	(9, NULL, 1, 1),
	(10, NULL, 1, 2),
	(11, NULL, 1, 1),
	(12, NULL, 0, 2),
	(13, NULL, 1, 1),
	(14, NULL, 1, 2),
	(15, NULL, 1, 1),
	(16, NULL, 1, 2),
	(17, NULL, 1, 1),
	(18, NULL, 1, 2),
	(19, NULL, 1, 1),
	(20, NULL, 1, 2),
	(21, NULL, 1, 1),
	(22, NULL, 1, 2),
	(23, NULL, 1, 1),
	(24, NULL, 1, 2),
	(25, NULL, 1, 1),
	(26, NULL, 1, 2),
	(27, NULL, 1, 1),
	(28, NULL, 1, 2),
	(29, NULL, 1, 1),
	(30, NULL, 1, 2),
	(31, NULL, 1, 1),
	(32, NULL, 1, 2),
	(33, NULL, 1, 1),
	(34, NULL, 1, 2),
	(35, NULL, 1, 1),
	(36, NULL, 1, 2),
	(37, NULL, 1, 1),
	(38, NULL, 1, 2),
	(39, NULL, 0, 1),
	(40, NULL, 1, 2),
	(41, NULL, 0, 1),
	(42, NULL, 0, 2),
	(43, NULL, 0, 1),
	(44, NULL, 1, 2),
	(45, NULL, 0, 1),
	(46, NULL, 1, 2),
	(47, NULL, 1, 1),
	(48, NULL, 1, 2),
	(49, NULL, 1, 1),
	(50, NULL, 0, 2),
	(51, NULL, 1, 1),
	(52, NULL, 1, 2),
	(53, NULL, 1, 1),
	(54, NULL, 1, 2),
	(55, NULL, 1, 1),
	(56, NULL, 1, 2),
	(57, NULL, 1, 1),
	(58, NULL, 1, 2),
	(59, NULL, 1, 1),
	(60, NULL, 1, 2),
	(61, NULL, 0, NULL),
	(62, NULL, 0, NULL);
/*!40000 ALTER TABLE `components_row_types_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_rules
DROP TABLE IF EXISTS `components_row_types_rules`;
CREATE TABLE IF NOT EXISTS `components_row_types_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `param` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `boolean` tinyint(1) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `text` longtext,
  `shorttext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_rules: ~12 rows (aproximadamente)
DELETE FROM `components_row_types_rules`;
/*!40000 ALTER TABLE `components_row_types_rules` DISABLE KEYS */;
INSERT INTO `components_row_types_rules` (`id`, `param`, `value`, `boolean`, `min`, `max`, `number`, `text`, `shorttext`) VALUES
	(1, 'required', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'required', '_true', NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(7, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(9, 'route', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'min', NULL, NULL, 8, 128, 8, NULL, NULL),
	(12, 'max', NULL, NULL, NULL, NULL, 128, NULL, NULL),
	(13, 'route', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(15, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(16, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(17, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(18, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(19, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(20, 'required', NULL, 1, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `components_row_types_rules` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_settings
DROP TABLE IF EXISTS `components_row_types_settings`;
CREATE TABLE IF NOT EXISTS `components_row_types_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_settings: ~0 rows (aproximadamente)
DELETE FROM `components_row_types_settings`;
/*!40000 ALTER TABLE `components_row_types_settings` DISABLE KEYS */;
INSERT INTO `components_row_types_settings` (`id`, `key`, `value`) VALUES
	(1, '--ion-font-family', 'Someone'),
	(2, 'environment', 'development');
/*!40000 ALTER TABLE `components_row_types_settings` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_statuses
DROP TABLE IF EXISTS `components_row_types_statuses`;
CREATE TABLE IF NOT EXISTS `components_row_types_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` tinyint(1) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `moreInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_statuses: ~4 rows (aproximadamente)
DELETE FROM `components_row_types_statuses`;
/*!40000 ALTER TABLE `components_row_types_statuses` DISABLE KEYS */;
INSERT INTO `components_row_types_statuses` (`id`, `key`, `value`, `enabled`, `moreInfo`) VALUES
	(1, 'Dark Mode - Default for entire app', 1, 1, NULL),
	(2, 'Translations - Automatic by device', 0, 0, NULL),
	(3, 'Translations - Manually selectable', 0, 0, NULL),
	(4, 'Dark Mode - Update user setting', 1, 1, NULL);
/*!40000 ALTER TABLE `components_row_types_statuses` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.connections
DROP TABLE IF EXISTS `connections`;
CREATE TABLE IF NOT EXISTS `connections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_permissions_user` int(11) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.connections: ~0 rows (aproximadamente)
DELETE FROM `connections`;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.core_store
DROP TABLE IF EXISTS `core_store`;
CREATE TABLE IF NOT EXISTS `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.core_store: ~102 rows (aproximadamente)
DELETE FROM `core_store`;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
	(1, 'model_def_strapi::core-store', '{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}', 'object', NULL, NULL),
	(2, 'model_def_strapi::webhooks', '{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}', 'object', NULL, NULL),
	(3, 'model_def_strapi::permission', '{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}', 'object', NULL, NULL),
	(4, 'model_def_strapi::role', '{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}', 'object', NULL, NULL),
	(5, 'model_def_strapi::user', '{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}', 'object', NULL, NULL),
	(6, 'model_def_plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(7, 'model_def_plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(8, 'model_def_plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"darkModeEnabled":{"type":"boolean","default":false},"userAvatar":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"slug":{"type":"uid","targetField":"username"},"terms":{"type":"boolean"},"privacy":{"type":"boolean"},"feedbacks":{"via":"user","collection":"feedback","isVirtual":true},"matches":{"via":"user","collection":"match","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(9, 'model_def_plugins::upload.file', '{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(10, 'model_def_plugins::i18n.locale', '{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(11, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"],"redirectUri":"http://localhost:1337/connect/discord/callback"},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/facebook/callback"},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/google/callback"},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"],"redirectUri":"http://localhost:1337/connect/github/callback"},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"],"redirectUri":"http://localhost:1337/connect/microsoft/callback"},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback","redirectUri":"http://localhost:1337/connect/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"],"redirectUri":"http://localhost:1337/connect/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/vk/callback"},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"],"redirectUri":"http://localhost:1337/connect/twitch/callback"},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"],"redirectUri":"http://localhost:1337/connect/linkedin/callback"},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"],"redirectUri":"http://localhost:1337/connect/cognito/callback"},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"],"redirectUri":"http://localhost:1337/connect/reddit/callback"},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"],"redirectUri":"http://localhost:1337/connect/auth0/callback"},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas","redirectUri":"http://localhost:1337/connect/cas/callback"}}', 'object', '', ''),
	(12, 'plugin_upload_settings', '{"sizeOptimization":false,"responsiveDimensions":true}', 'object', 'development', ''),
	(13, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true,"mainField":"path"},"list":{"label":"Path","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]],"editRelations":["permissions","users","path"]}}', 'object', '', ''),
	(14, 'plugin_content_manager_configuration_content_types::strapi::permission', '{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}', 'object', '', ''),
	(15, 'plugin_content_manager_configuration_content_types::strapi::role', '{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', '', ''),
	(16, 'plugin_content_manager_configuration_content_types::strapi::user', '{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}', 'object', '', ''),
	(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"Avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Avatar","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6},{"name":"avatar","size":6}]],"editRelations":["role"]}}', 'object', '', ''),
	(18, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"UserName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":false},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"darkModeEnabled":{"edit":{"label":"DarkModeEnabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DarkModeEnabled","searchable":true,"sortable":true}},"userAvatar":{"edit":{"label":"Avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"UserAvatar","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":false},"list":{"label":"Slug","searchable":true,"sortable":true}},"terms":{"edit":{"label":"Terms","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Terms","searchable":true,"sortable":true}},"privacy":{"edit":{"label":"Privacy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Privacy","searchable":true,"sortable":true}},"feedbacks":{"edit":{"label":"Feedbacks","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Feedbacks","searchable":false,"sortable":false}},"matches":{"edit":{"label":"Matches","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Matches","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","userAvatar","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"confirmed","size":4}],[{"name":"email","size":6},{"name":"password","size":6}],[{"name":"userAvatar","size":6},{"name":"blocked","size":4}],[{"name":"slug","size":6},{"name":"darkModeEnabled","size":4}],[{"name":"terms","size":4},{"name":"privacy","size":4}]],"editRelations":["role","feedbacks","matches"]}}', 'object', '', ''),
	(19, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', '', ''),
	(20, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', '', ''),
	(21, 'plugin_i18n_default_locale', '"en"', 'string', '', ''),
	(22, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', '', ''),
	(23, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":true,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', '', ''),
	(24, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', '', ''),
	(25, 'model_def_plugins::comments.comment', '{"uid":"plugins::comments.comment","collectionName":"comments","kind":"collectionType","info":{"name":"comment","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"isManaged":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"content":{"type":"text","configurable":false,"required":true},"blocked":{"type":"boolean","default":false,"configurable":false},"blockedThread":{"type":"boolean","default":false,"configurable":false},"blockReason":{"type":"string","configurable":false},"points":{"type":"integer","default":0,"configurable":false},"authorUser":{"model":"user","plugin":"users-permissions","configurable":false},"authorType":{"type":"string","configurable":false},"authorId":{"type":"string","configurable":false},"authorName":{"type":"string","configurable":false},"authorEmail":{"type":"email","configurable":false},"authorAvatar":{"type":"string","configurable":false},"removed":{"type":"boolean","configurable":false},"relatedSlug":{"type":"string","private":true,"configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"reports":{"collection":"report","plugin":"comments","via":"related","configurable":false,"isVirtual":true},"threadOf":{"columnName":"threadOf","model":"comment","plugin":"comments","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(26, 'model_def_plugins::comments.report', '{"uid":"plugins::comments.report","collectionName":"comments_report","kind":"collectionType","info":{"name":"report","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"isManaged":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"content":{"type":"text","configurable":false},"reason":{"type":"enumeration","enum":["BAD_LANGUAGE","DISCRIMINATION","OTHER"],"default":"OTHER","configurable":false,"required":true},"resolved":{"type":"boolean","default":false,"configurable":false},"related":{"fieldName":"related","model":"comment","plugin":"comments","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(27, 'model_def_plugins::navigation.audience', '{"uid":"plugins::navigation.audience","collectionName":"audience","kind":"collectionType","info":{"name":"audience","description":""},"options":{"increments":true,"comment":"Audience","timestamps":false},"attributes":{"name":{"type":"string","required":true},"key":{"type":"uid","targetField":"name"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(28, 'model_def_plugins::navigation.navigation', '{"uid":"plugins::navigation.navigation","collectionName":"navigations","kind":"collectionType","info":{"name":"navigation","description":"Navigation container"},"options":{"increments":true,"comment":"","timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"text","configurable":false,"required":true},"slug":{"type":"uid","target":"name","configurable":false,"required":true},"visible":{"type":"boolean","default":false,"configurable":false},"items":{"collection":"navigationitem","plugin":"navigation","via":"master","configurable":false,"isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(29, 'model_def_plugins::navigation.navigationitem', '{"uid":"plugins::navigation.navigationitem","collectionName":"navigations_items","kind":"collectionType","info":{"name":"navigationItem","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"comment":"Navigation Item"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"title":{"type":"text","configurable":false,"required":true},"type":{"type":"enumeration","enum":["INTERNAL","EXTERNAL"],"default":"INTERNAL","configurable":false},"path":{"type":"text","targetField":"title","configurable":false},"externalPath":{"type":"text","configurable":false},"uiRouterKey":{"type":"string","configurable":false},"menuAttached":{"type":"boolean","default":false,"configurable":false},"order":{"type":"integer","default":0,"configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"parent":{"columnName":"parent","model":"navigationItem","plugin":"navigation","configurable":false,"default":null},"master":{"columnName":"master","model":"navigation","plugin":"navigation","configurable":false},"audience":{"collection":"audience","plugin":"navigation","attribute":"audience","column":"id","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(30, 'plugin_content_manager_configuration_content_types::plugins::comments.comment', '{"uid":"plugins::comments.comment","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"blockReason","defaultSortBy":"blockReason","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"blockedThread":{"edit":{"label":"BlockedThread","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BlockedThread","searchable":true,"sortable":true}},"blockReason":{"edit":{"label":"BlockReason","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BlockReason","searchable":true,"sortable":true}},"points":{"edit":{"label":"Points","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Points","searchable":true,"sortable":true}},"authorUser":{"edit":{"label":"AuthorUser","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"AuthorUser","searchable":true,"sortable":true}},"authorType":{"edit":{"label":"AuthorType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorType","searchable":true,"sortable":true}},"authorId":{"edit":{"label":"AuthorId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorId","searchable":true,"sortable":true}},"authorName":{"edit":{"label":"AuthorName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorName","searchable":true,"sortable":true}},"authorEmail":{"edit":{"label":"AuthorEmail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorEmail","searchable":true,"sortable":true}},"authorAvatar":{"edit":{"label":"AuthorAvatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorAvatar","searchable":true,"sortable":true}},"removed":{"edit":{"label":"Removed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Removed","searchable":true,"sortable":true}},"relatedSlug":{"edit":{"label":"RelatedSlug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RelatedSlug","searchable":true,"sortable":true}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"reports":{"edit":{"label":"Reports","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Reports","searchable":false,"sortable":false}},"threadOf":{"edit":{"label":"ThreadOf","description":"","placeholder":"","visible":true,"editable":true,"mainField":"blockReason"},"list":{"label":"ThreadOf","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","content","blocked","blockedThread"],"editRelations":["authorUser","related","reports","threadOf"],"edit":[[{"name":"content","size":6},{"name":"blocked","size":4}],[{"name":"blockedThread","size":4},{"name":"blockReason","size":6}],[{"name":"points","size":4},{"name":"authorType","size":6}],[{"name":"authorId","size":6},{"name":"authorName","size":6}],[{"name":"authorEmail","size":6},{"name":"authorAvatar","size":6}],[{"name":"removed","size":4},{"name":"relatedSlug","size":6}]]}}', 'object', '', ''),
	(31, 'plugin_content_manager_configuration_content_types::plugins::comments.report', '{"uid":"plugins::comments.report","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"reason":{"edit":{"label":"Reason","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Reason","searchable":true,"sortable":true}},"resolved":{"edit":{"label":"Resolved","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Resolved","searchable":true,"sortable":true}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"blockReason"},"list":{"label":"Related","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"content","size":6},{"name":"reason","size":6}],[{"name":"resolved","size":4}]],"editRelations":["related"],"list":["id","content","reason","resolved"]}}', 'object', '', ''),
	(32, 'plugin_content_manager_configuration_content_types::plugins::navigation.audience', '{"uid":"plugins::navigation.audience","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","key"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"key","size":6}]]}}', 'object', '', ''),
	(33, 'plugin_content_manager_configuration_content_types::plugins::navigation.navigation', '{"uid":"plugins::navigation.navigation","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"visible":{"edit":{"label":"Visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Visible","searchable":true,"sortable":true}},"items":{"edit":{"label":"Items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"Items","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","slug","visible"],"editRelations":["items"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"visible","size":4}]]}}', 'object', '', ''),
	(34, 'plugin_content_manager_configuration_content_types::plugins::navigation.navigationitem', '{"uid":"plugins::navigation.navigationitem","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"uiRouterKey","defaultSortBy":"uiRouterKey","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":true,"sortable":true}},"externalPath":{"edit":{"label":"ExternalPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ExternalPath","searchable":true,"sortable":true}},"uiRouterKey":{"edit":{"label":"UiRouterKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"UiRouterKey","searchable":true,"sortable":true}},"menuAttached":{"edit":{"label":"MenuAttached","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MenuAttached","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"parent":{"edit":{"label":"Parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"Parent","searchable":true,"sortable":true}},"master":{"edit":{"label":"Master","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Master","searchable":true,"sortable":true}},"audience":{"edit":{"label":"Audience","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Audience","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","type","path"],"editRelations":["related","parent","master","audience"],"edit":[[{"name":"title","size":6},{"name":"type","size":6}],[{"name":"path","size":6},{"name":"externalPath","size":6}],[{"name":"uiRouterKey","size":6},{"name":"menuAttached","size":4}],[{"name":"order","size":4}]]}}', 'object', '', ''),
	(35, 'model_def_application::features.features', '{"uid":"application::features.features","collectionName":"features","kind":"collectionType","info":{"name":"features","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"content":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"enabled":{"pluginOptions":{"i18n":{"localized":false}},"type":"boolean","default":false},"stage":{"pluginOptions":{"i18n":{"localized":false}},"type":"enumeration","enum":["dev","stable","good","premium"],"default":"dev"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"features","populate":["_id","id","locale","published_at"],"attribute":"related_feature","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(36, 'plugin_content_manager_configuration_content_types::application::features.features', '{"uid":"application::features.features","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"stage":{"edit":{"label":"Stage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Stage","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"enabled","size":4}],[{"name":"content","size":12}],[{"name":"stage","size":6}]],"editRelations":[],"list":["title","created_at","updated_at","enabled"]}}', 'object', '', ''),
	(37, 'model_def_application::access.access', '{"uid":"application::access.access","collectionName":"accesses","kind":"collectionType","info":{"name":"Access","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"icon":{"type":"enumeration","enum":["calendarOutline","peopleOutline","mapOutline","informationCircleOutline","person","help","logOut","logIn","personAdd"],"required":true},"navigation":{"model":"navigationitem","plugin":"navigation","via":"related","configurable":false,"hidden":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(38, 'plugin_content_manager_configuration_content_types::application::access.access', '{"uid":"application::access.access","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}},"navigation":{"edit":{"label":"Navigation","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"Navigation","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon"],"edit":[[{"name":"icon","size":6}]],"editRelations":["navigation"]}}', 'object', '', ''),
	(39, 'model_def_row-types.setting', '{"uid":"row-types.setting","collectionName":"components_row_types_settings","info":{"name":"Setting","icon":"ad","description":"In this area you can perform a settings cosllection..."},"options":{"timestamps":false},"attributes":{"key":{"type":"string","required":true},"value":{"type":"string","required":true}}}', 'object', NULL, NULL),
	(40, 'model_def_application::settings.settings', '{"uid":"application::settings.settings","collectionName":"settings","kind":"singleType","info":{"name":"settings","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"setting":{"type":"component","repeatable":true,"component":"row-types.setting","min":1,"required":true},"status":{"type":"component","repeatable":true,"component":"row-types.status"},"appImages":{"type":"component","repeatable":true,"component":"row-types.app-images"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(41, 'plugin_content_manager_configuration_components::row-types.setting', '{"uid":"row-types.setting","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"key","defaultSortBy":"key","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}}},"layouts":{"list":["id","key","value"],"edit":[[{"name":"key","size":6},{"name":"value","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(42, 'plugin_content_manager_configuration_content_types::application::settings.settings', '{"uid":"application::settings.settings","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"setting":{"edit":{"label":"Setting","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Setting","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":false,"sortable":false}},"appImages":{"edit":{"label":"AppImages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AppImages","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"edit":[[{"name":"setting","size":12}],[{"name":"status","size":12}],[{"name":"appImages","size":12}]],"editRelations":[]}}', 'object', '', ''),
	(43, 'model_def_row-types.status', '{"uid":"row-types.status","collectionName":"components_row_types_statuses","info":{"name":"status","icon":"adjust","description":"This status are used in many places as row..."},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"boolean","default":false,"required":true},"enabled":{"type":"boolean","default":false,"required":true},"moreInfo":{"type":"string"}}}', 'object', NULL, NULL),
	(44, 'plugin_content_manager_configuration_components::row-types.status', '{"uid":"row-types.status","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"key","defaultSortBy":"key","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"moreInfo":{"edit":{"label":"MoreInfo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MoreInfo","searchable":true,"sortable":true}}},"layouts":{"list":["id","key","value","enabled"],"edit":[[{"name":"key","size":6},{"name":"value","size":4}],[{"name":"enabled","size":4},{"name":"moreInfo","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(45, 'plugin_documentation_config', '{"restrictedAccess":false}', 'object', '', ''),
	(46, 'model_def_application::translations.translations', '{"uid":"application::translations.translations","collectionName":"translations","kind":"collectionType","info":{"name":"translations","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"text":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"key":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"translations","populate":["_id","id","locale","published_at"],"attribute":"related_translation","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(47, 'plugin_content_manager_configuration_content_types::application::translations.translations', '{"uid":"application::translations.translations","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"key":{"edit":{"label":"Key","description":"Cannot change. Create a new value","placeholder":"Put a translation key","visible":true,"editable":false},"list":{"label":"Key","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"key","size":6},{"name":"text","size":6}]],"editRelations":[],"list":["key","text"]}}', 'object', '', ''),
	(48, 'model_def_row-types.app-images', '{"uid":"row-types.app-images","collectionName":"components_row_types_app_images","info":{"name":"app_images","icon":"apple-alt","description":"Select the images for your device..."},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}}}}', 'object', NULL, NULL),
	(49, 'plugin_content_manager_configuration_components::row-types.app-images', '{"uid":"row-types.app-images","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","image"],"edit":[[{"name":"name","size":6},{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(50, 'model_def_application::connections.connections', '{"uid":"application::connections.connections","collectionName":"connections","kind":"collectionType","info":{"name":"connections","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"user":{"plugin":"users-permissions","model":"user"},"origin":{"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(51, 'plugin_content_manager_configuration_content_types::application::connections.connections', '{"uid":"application::connections.connections","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"origin","defaultSortBy":"origin","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"user":{"edit":{"label":"User","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"User","searchable":true,"sortable":true}},"origin":{"edit":{"label":"Origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Origin","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","origin","created_at","user"],"edit":[[{"name":"origin","size":6}]],"editRelations":["user"]}}', 'object', '', ''),
	(52, 'model_def_application::support.support', '{"uid":"application::support.support","collectionName":"support","kind":"collectionType","info":{"name":"support","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"user":{"plugin":"users-permissions","model":"user"},"subject":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"explanation":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"support","populate":["_id","id","locale","published_at"],"attribute":"related_support","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(53, 'plugin_content_manager_configuration_content_types::application::support.support', '{"uid":"application::support.support","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"subject","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"user":{"edit":{"label":"User","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"User","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"explanation":{"edit":{"label":"Explanation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Explanation","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"edit":[[{"name":"subject","size":6}],[{"name":"explanation","size":12}]],"editRelations":["user"]}}', 'object', '', ''),
	(54, 'model_def_application::tutorial.tutorial', '{"uid":"application::tutorial.tutorial","collectionName":"tutorials","kind":"collectionType","info":{"name":"tutorial","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"order":{"type":"integer","unique":false,"min":1,"max":5,"required":true,"pluginOptions":{"i18n":{"localized":true}}},"content":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"name":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","unique":false,"required":true,"minLength":5,"maxLength":256,"private":true},"slug":{"pluginOptions":{"i18n":{"localized":true}},"type":"uid","targetField":"name","required":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"tutorial","populate":["_id","id","locale","published_at"],"attribute":"related_tutorial","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(55, 'plugin_content_manager_configuration_content_types::application::tutorial.tutorial', '{"uid":"application::tutorial.tutorial","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"order","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["name","order","updated_at","slug"],"edit":[[{"name":"name","size":6},{"name":"order","size":4}],[{"name":"content","size":12}],[{"name":"slug","size":6}]],"editRelations":[]}}', 'object', '', ''),
	(56, 'model_def_application::roadmap.roadmap', '{"uid":"application::roadmap.roadmap","collectionName":"roadmap","kind":"collectionType","info":{"name":"roadmap","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"stage":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"features":{"collection":"features","attribute":"feature","column":"id","isVirtual":true},"explanation":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"roadmap","populate":["_id","id","locale","published_at"],"attribute":"related_roadmap","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(57, 'plugin_content_manager_configuration_content_types::application::roadmap.roadmap', '{"uid":"application::roadmap.roadmap","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"stage","defaultSortBy":"stage","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"stage":{"edit":{"label":"Stage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Stage","searchable":true,"sortable":true}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Features","searchable":false,"sortable":false}},"explanation":{"edit":{"label":"Explanation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Explanation","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","stage","features","created_at"],"edit":[[{"name":"stage","size":6}],[{"name":"explanation","size":12}]],"editRelations":["features"]}}', 'object', '', ''),
	(58, 'model_def_application::products.products', '{"uid":"application::products.products","collectionName":"products","kind":"collectionType","info":{"name":"products","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"partnumber":{"pluginOptions":{"i18n":{"localized":false}},"type":"integer","min":1,"max":8,"required":true},"cover":{"collection":"file","via":"related","allowedTypes":["files","images","videos"],"plugin":"upload","required":false,"pluginOptions":{"i18n":{"localized":true}}},"label":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","minLength":1,"maxLength":255},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext","minLength":1,"required":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"products","populate":["_id","id","locale","published_at"],"attribute":"related_product","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(59, 'plugin_content_manager_configuration_content_types::application::products.products', '{"uid":"application::products.products","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"partnumber":{"edit":{"label":"Partnumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Partnumber","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","partnumber","cover","created_at"],"edit":[[{"name":"partnumber","size":4},{"name":"cover","size":6}],[{"name":"label","size":6}],[{"name":"description","size":12}]],"editRelations":[]}}', 'object', '', ''),
	(60, 'model_def_application::locations.locations', '{"uid":"application::locations.locations","collectionName":"locations","kind":"collectionType","info":{"name":"locations"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"lat":{"type":"float"},"lng":{"type":"float"},"zoom":{"type":"float"},"geoJson":{"type":"json"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(61, 'plugin_content_manager_configuration_content_types::application::locations.locations', '{"uid":"application::locations.locations","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"lat":{"edit":{"label":"Lat","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lat","searchable":true,"sortable":true}},"lng":{"edit":{"label":"Lng","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lng","searchable":true,"sortable":true}},"zoom":{"edit":{"label":"Zoom","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Zoom","searchable":true,"sortable":true}},"geoJson":{"edit":{"label":"GeoJson","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"GeoJson","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","lat","lng","zoom"],"editRelations":[],"edit":[[{"name":"lat","size":4},{"name":"lng","size":4},{"name":"zoom","size":4}],[{"name":"geoJson","size":12}]]}}', 'object', '', ''),
	(62, 'model_def_application::places.places', '{"uid":"application::places.places","collectionName":"places","kind":"collectionType","info":{"name":"places","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"placeName":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"location":{"model":"locations"},"media":{"collection":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":false,"pluginOptions":{"i18n":{"localized":true}}},"description":{"pluginOptions":{"i18n":{"localized":true}},"type":"richtext"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"places","populate":["_id","id","locale","published_at"],"attribute":"related_place","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(63, 'plugin_content_manager_configuration_content_types::application::places.places', '{"uid":"application::places.places","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":100,"mainField":"placeName","defaultSortBy":"placeName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"placeName":{"edit":{"label":"PlaceName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Place Name","searchable":true,"sortable":true}},"location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Location","searchable":true,"sortable":true}},"media":{"edit":{"label":"Media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Media","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated","searchable":true,"sortable":true}}},"layouts":{"list":["placeName","created_at","updated_at","media"],"edit":[[{"name":"placeName","size":6},{"name":"media","size":6}],[{"name":"description","size":12}]],"editRelations":["location"]}}', 'object', '', ''),
	(64, 'model_def_application::about-page.about-page', '{"uid":"application::about-page.about-page","collectionName":"about_pages","kind":"singleType","info":{"name":"About page"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"about-page","populate":["_id","id","locale","published_at"],"attribute":"about-page","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(65, 'model_def_application::forms.forms', '{"uid":"application::forms.forms","collectionName":"forms","kind":"collectionType","info":{"name":"forms","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","pluginOptions":{}},"fields":{"type":"component","repeatable":true,"pluginOptions":{},"component":"row-types.form-fields","min":1,"required":true},"slug":{"type":"uid","targetField":"name"},"enabled":{"type":"boolean"},"buttons":{"type":"component","repeatable":true,"component":"row-types.buttons"},"label":{"type":"string"},"instructions":{"type":"text"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(66, 'plugin_content_manager_configuration_content_types::application::forms.forms', '{"uid":"application::forms.forms","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":20,"mainField":"name","defaultSortBy":"slug","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"For internal purpose","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"instructions":{"edit":{"label":"Instructions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Instructions","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated at","searchable":true,"sortable":true}}},"layouts":{"list":["slug","name","created_at","updated_at"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"label","size":6},{"name":"enabled","size":4}],[{"name":"fields","size":12}],[{"name":"buttons","size":12}],[{"name":"instructions","size":6}]],"editRelations":[]}}', 'object', '', ''),
	(67, 'model_def_application::fields.fields', '{"uid":"application::fields.fields","collectionName":"fields","kind":"collectionType","info":{"name":"fields","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"fieldName":{"pluginOptions":{},"type":"string","required":true,"private":false},"fieldType":{"pluginOptions":{},"type":"enumeration","enum":["input","check","text"],"default":"input","required":true},"name":{"pluginOptions":{},"type":"string","required":true,"minLength":5,"unique":false},"label":{"pluginOptions":{},"type":"string"},"placeholder":{"pluginOptions":{},"type":"string","minLength":10},"type":{"pluginOptions":{},"type":"enumeration","enum":["text","password","number","email","check"]},"rules":{"type":"component","repeatable":true,"pluginOptions":{},"component":"row-types.rules"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(68, 'plugin_content_manager_configuration_content_types::application::fields.fields', '{"uid":"application::fields.fields","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"fieldName","defaultSortBy":"fieldName","defaultSortOrder":"ASC"},"metadatas":{"fieldName":{"edit":{"label":"FieldName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FieldName","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"placeholder":{"edit":{"label":"Placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Placeholder","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"fieldType":{"edit":{"label":"FieldType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FieldType","searchable":true,"sortable":true}},"rules":{"edit":{"label":"Rules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rules","searchable":false,"sortable":false}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"type","size":6}],[{"name":"fieldType","size":6},{"name":"fieldName","size":6}],[{"name":"label","size":6},{"name":"placeholder","size":6}],[{"name":"rules","size":12}]],"editRelations":[],"list":["name","label","fieldName","type","fieldType"]}}', 'object', '', ''),
	(69, 'model_def_row-types.form-fields', '{"uid":"row-types.form-fields","collectionName":"components_row_types_form_fields","info":{"name":"form_fields","icon":"align-justify","description":"The form fields are a way to link forms and inputs..."},"options":{"timestamps":false},"attributes":{"field":{"model":"fields"},"rules":{"type":"component","repeatable":true,"component":"row-types.rules"}}}', 'object', NULL, NULL),
	(70, 'plugin_content_manager_configuration_components::row-types.form-fields', '{"uid":"row-types.form-fields","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"field":{"edit":{"label":"Field","description":"","placeholder":"","visible":true,"editable":true,"mainField":"fieldName"},"list":{"label":"Field","searchable":true,"sortable":true}},"rules":{"edit":{"label":"Rules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rules","searchable":false,"sortable":false}}},"layouts":{"list":["id","field"],"edit":[[{"name":"field","size":6}],[{"name":"rules","size":12}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(71, 'model_def_row-types.rules', '{"uid":"row-types.rules","collectionName":"components_row_types_rules","info":{"name":"rules","icon":"address-card","description":"The way to customize the form input limits..."},"options":{"timestamps":false},"attributes":{"param":{"type":"enumeration","enum":["required","enabled","color","route","min","max"]},"value":{"type":"enumeration","enum":["_true","_false","param"]},"boolean":{"type":"boolean","required":false},"number":{"type":"integer"},"text":{"type":"richtext"},"shorttext":{"type":"string"}}}', 'object', NULL, NULL),
	(72, 'plugin_content_manager_configuration_components::row-types.rules', '{"uid":"row-types.rules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shorttext","defaultSortBy":"shorttext","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"param":{"edit":{"label":"Param","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Param","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"boolean":{"edit":{"label":"Boolean","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Boolean","searchable":true,"sortable":true}},"number":{"edit":{"label":"Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Number","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":false,"sortable":false}},"shorttext":{"edit":{"label":"Shorttext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Shorttext","searchable":true,"sortable":true}}},"layouts":{"list":["id","param","value","boolean"],"edit":[[{"name":"param","size":6}],[{"name":"value","size":6},{"name":"boolean","size":4}],[{"name":"shorttext","size":6},{"name":"number","size":4}],[{"name":"text","size":12}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(73, 'model_def_application::buttons.buttons', '{"uid":"application::buttons.buttons","collectionName":"buttons","kind":"collectionType","info":{"name":"buttons","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"fieldName":{"type":"string","pluginOptions":{"i18n":{"localized":false}}},"slug":{"type":"uid","targetField":"fieldName"},"label":{"type":"string","pluginOptions":{"i18n":{"localized":true}},"required":true,"minLength":2},"name":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"routerLink":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"buttons","populate":["_id","id","locale","published_at"],"attribute":"related_button","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(74, 'plugin_content_manager_configuration_content_types::application::buttons.buttons', '{"uid":"application::buttons.buttons","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"fieldName","defaultSortBy":"fieldName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"fieldName":{"edit":{"label":"FieldName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FieldName","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"routerLink":{"edit":{"label":"RouterLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RouterLink","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","fieldName","slug","label"],"edit":[[{"name":"fieldName","size":6}],[{"name":"label","size":6}],[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"routerLink","size":6}]],"editRelations":[]}}', 'object', '', ''),
	(75, 'model_def_row-types.buttons', '{"uid":"row-types.buttons","collectionName":"components_row_types_buttons","info":{"name":"buttons","icon":"align-left","description":""},"options":{"timestamps":false},"attributes":{"button":{"model":"buttons"},"rules":{"type":"component","repeatable":true,"component":"row-types.rules"},"enabled":{"type":"boolean","default":true,"required":true}}}', 'object', NULL, NULL),
	(76, 'plugin_content_manager_configuration_components::row-types.buttons', '{"uid":"row-types.buttons","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true,"mainField":"fieldName"},"list":{"label":"Button","searchable":true,"sortable":true}},"rules":{"edit":{"label":"Rules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rules","searchable":false,"sortable":false}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}}},"layouts":{"list":["id","button","enabled"],"edit":[[{"name":"button","size":6}],[{"name":"rules","size":12}],[{"name":"enabled","size":4}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(77, 'model_def_application::match.match', '{"uid":"application::match.match","collectionName":"matches","kind":"collectionType","info":{"name":"match","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"user":{"plugin":"users-permissions","model":"user","via":"matches"},"match":{"plugin":"users-permissions","model":"user"},"relation":{"type":"enumeration","enum":["inviting","friend","banned","blocked"]},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(78, 'plugin_content_manager_configuration_content_types::application::match.match', '{"uid":"application::match.match","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"user":{"edit":{"label":"User","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"User","searchable":true,"sortable":true}},"match":{"edit":{"label":"Match","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Match","searchable":true,"sortable":true}},"relation":{"edit":{"label":"Relation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Relation","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"From","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Last update","searchable":true,"sortable":true}}},"layouts":{"list":["user","match","created_at","updated_at"],"edit":[[{"name":"relation","size":6}]],"editRelations":["user","match"]}}', 'object', '', ''),
	(79, 'model_def_application::about.about', '{"uid":"application::about.about","collectionName":"abouts","kind":"singleType","info":{"name":"about","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"content":{"type":"richtext"},"allowed_roles":{"plugin":"users-permissions","collection":"role","attribute":"role","column":"id","isVirtual":true},"label":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(80, 'plugin_content_manager_configuration_content_types::application::about.about', '{"uid":"application::about.about","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"allowed_roles":{"edit":{"label":"Allowed_roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Allowed_roles","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"label","size":6}],[{"name":"content","size":12}]],"editRelations":["allowed_roles"],"list":["id","created_at","updated_at","allowed_roles"]}}', 'object', '', ''),
	(81, 'model_def_application::menu.menu', '{"uid":"application::menu.menu","collectionName":"menus","kind":"collectionType","info":{"name":"menu","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"private":true},"slot":{"type":"string"},"menu_items":{"collection":"menu-item","attribute":"menu-item","column":"id","isVirtual":true},"slug":{"type":"uid","targetField":"name"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(82, 'plugin_content_manager_configuration_content_types::application::menu.menu', '{"uid":"application::menu.menu","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":50,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slot":{"edit":{"label":"Slot","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slot","searchable":true,"sortable":true}},"menu_items":{"edit":{"label":"Items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"Menu_items","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["name","slot","menu_items","slug"],"edit":[[{"name":"name","size":6},{"name":"slot","size":6}],[{"name":"slug","size":6}]],"editRelations":["menu_items"]}}', 'object', '', ''),
	(83, 'model_def_application::areas.areas', '{"uid":"application::areas.areas","collectionName":"areas","kind":"collectionType","info":{"name":"areas","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"minLength":3,"maxLength":120},"position":{"type":"enumeration","enum":["start","end","top","bottom"],"required":true,"default":"start"},"title":{"type":"string"},"children":{"type":"component","repeatable":true,"component":"row-types.children"},"slug":{"type":"uid","targetField":"title"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(84, 'plugin_content_manager_configuration_content_types::application::areas.areas', '{"uid":"application::areas.areas","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":100,"mainField":"name","defaultSortBy":"position","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"Is an internal value","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"position":{"edit":{"label":"Position","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Position","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"children":{"edit":{"label":"Children","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Children","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"title","size":6},{"name":"position","size":6}],[{"name":"children","size":12}]],"editRelations":[],"list":["name","title","position","slug"]}}', 'object', '', ''),
	(85, 'model_def_application::page.page', '{"uid":"application::page.page","collectionName":"pages","kind":"collectionType","info":{"name":"page","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","private":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(86, 'plugin_content_manager_configuration_content_types::application::page.page', '{"uid":"application::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"edit":[[{"name":"name","size":6}]],"editRelations":[]}}', 'object', '', ''),
	(87, 'model_def_application::feedback.feedback', '{"uid":"application::feedback.feedback","collectionName":"feedbacks","kind":"collectionType","info":{"name":"feedback","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"user":{"plugin":"users-permissions","model":"user","via":"feedbacks"},"comment":{"type":"text"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(88, 'plugin_content_manager_configuration_content_types::application::feedback.feedback', '{"uid":"application::feedback.feedback","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"user":{"edit":{"label":"User","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"User","searchable":true,"sortable":true}},"comment":{"edit":{"label":"Comment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Comment","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","user","created_at","updated_at"],"edit":[[{"name":"comment","size":6}]],"editRelations":["user"]}}', 'object', '', ''),
	(89, 'model_def_application::publication.publication', '{"uid":"application::publication.publication","collectionName":"publications","kind":"collectionType","info":{"name":"Publication"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"media":{"collection":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(90, 'plugin_content_manager_configuration_content_types::application::publication.publication', '{"uid":"application::publication.publication","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"media":{"edit":{"label":"Media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Media","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","media","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"media","size":6}]]}}', 'object', '', ''),
	(91, 'model_def_application::menu-item.menu-item', '{"uid":"application::menu-item.menu-item","collectionName":"menu_items","kind":"collectionType","info":{"name":"menu item","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"label":{"type":"string"},"html_element":{"type":"component","repeatable":false,"component":"row-types.html-element","required":true},"children":{"type":"component","repeatable":true,"component":"row-types.items"},"path":{"type":"component","repeatable":false,"component":"row-types.path"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(92, 'plugin_content_manager_configuration_content_types::application::menu-item.menu-item', '{"uid":"application::menu-item.menu-item","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":50,"mainField":"label","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"html_element":{"edit":{"label":"Html Element","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Html_element","searchable":false,"sortable":false}},"children":{"edit":{"label":"Children","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Children","searchable":false,"sortable":false}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["label"],"edit":[[{"name":"label","size":6}],[{"name":"html_element","size":12}],[{"name":"path","size":12}],[{"name":"children","size":12}]],"editRelations":[]}}', 'object', '', ''),
	(93, 'model_def_row-types.permission', '{"uid":"row-types.permission","collectionName":"components_row_types_permissions","info":{"name":"permission","icon":"check-circle","description":""},"options":{"timestamps":false},"attributes":{"role":{"plugin":"users-permissions","model":"role"},"allowed":{"type":"boolean","default":false,"required":true}}}', 'object', NULL, NULL),
	(95, 'model_def_application::paths.paths', '{"uid":"application::paths.paths","collectionName":"paths","kind":"collectionType","info":{"name":"paths","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"path":{"type":"string","required":true,"unique":true},"description":{"type":"text"},"name":{"type":"string","required":true,"minLength":3,"maxLength":120},"enabled":{"type":"boolean","default":true,"required":true},"ion_element":{"type":"component","repeatable":false,"component":"row-types.ion-element","required":true,"max":1,"min":1},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(96, 'plugin_content_manager_configuration_content_types::application::paths.paths', '{"uid":"application::paths.paths","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"name","defaultSortBy":"path","defaultSortOrder":"ASC"},"metadatas":{"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":true,"sortable":true}},"ion_element":{"edit":{"label":"Ion Element","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ion_element","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"Internal purpose","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"enabled","size":4}],[{"name":"path","size":6}],[{"name":"description","size":6}],[{"name":"ion_element","size":12}]],"editRelations":["permissions"],"list":["name","path","description","enabled","permissions"]}}', 'object', '', ''),
	(97, 'model_def_row-types.html-element', '{"uid":"row-types.html-element","collectionName":"components_row_types_html_elements","info":{"name":"html_element","icon":"align-center"},"options":{"timestamps":false},"attributes":{"identifier":{"type":"string"},"name":{"type":"string"}}}', 'object', NULL, NULL),
	(98, 'plugin_content_manager_configuration_components::row-types.html-element', '{"uid":"row-types.html-element","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"identifier","defaultSortBy":"identifier","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"identifier":{"edit":{"label":"Identifier","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Identifier","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","identifier","name"],"edit":[[{"name":"identifier","size":6},{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(99, 'model_def_row-types.ion-element', '{"uid":"row-types.ion-element","collectionName":"components_row_types_ion_elements","info":{"name":"ion_element","icon":"allergies","description":""},"options":{"timestamps":false},"attributes":{"icon":{"type":"string"},"main":{"type":"boolean"},"component":{"model":"component"},"exact":{"type":"boolean","default":false,"required":true},"iconOut":{"type":"string"}}}', 'object', NULL, NULL),
	(100, 'plugin_content_manager_configuration_components::row-types.ion-element', '{"uid":"row-types.ion-element","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"component","defaultSortBy":"component","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}},"main":{"edit":{"label":"Main","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Main","searchable":true,"sortable":true}},"component":{"edit":{"label":"Component","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Component","searchable":true,"sortable":true}},"exact":{"edit":{"label":"Exact","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Exact","searchable":true,"sortable":true}},"iconOut":{"edit":{"label":"IconOut","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IconOut","searchable":true,"sortable":true}}},"layouts":{"list":["id","component","icon","main"],"edit":[[{"name":"component","size":6}],[{"name":"icon","size":6},{"name":"iconOut","size":6}],[{"name":"exact","size":4},{"name":"main","size":4}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(101, 'model_def_row-types.items', '{"uid":"row-types.items","collectionName":"components_row_types_items","info":{"name":"items","icon":"angle-double-right","description":""},"options":{"timestamps":false},"attributes":{"submenu":{"model":"menu-item"}}}', 'object', NULL, NULL),
	(102, 'plugin_content_manager_configuration_components::row-types.items', '{"uid":"row-types.items","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"submenu":{"edit":{"label":"Submenu","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"Submenu","searchable":true,"sortable":true}}},"layouts":{"list":["id","submenu"],"edit":[[{"name":"submenu","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(103, 'model_def_row-types.path', '{"uid":"row-types.path","collectionName":"components_row_types_paths","info":{"name":"path","icon":"anchor","description":""},"options":{"timestamps":false},"attributes":{"path":{"model":"paths"}}}', 'object', NULL, NULL),
	(104, 'plugin_content_manager_configuration_components::row-types.path', '{"uid":"row-types.path","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true,"mainField":"path"},"list":{"label":"Path","searchable":true,"sortable":true}}},"layouts":{"list":["id","path"],"edit":[[{"name":"path","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(105, 'model_def_application::component.component', '{"uid":"application::component.component","collectionName":"components","kind":"collectionType","info":{"name":"component"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(106, 'plugin_content_manager_configuration_content_types::application::component.component', '{"uid":"application::component.component","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Last update","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6}]],"editRelations":[],"list":["name","updated_at"]}}', 'object', '', ''),
	(107, 'model_def_row-types.children', '{"uid":"row-types.children","collectionName":"components_row_types_children","info":{"name":"children","icon":"arrow-alt-circle-right","description":""},"options":{"timestamps":false},"attributes":{"menu":{"model":"menu"},"area":{"model":"areas"},"page":{"model":"page"}}}', 'object', NULL, NULL),
	(108, 'plugin_content_manager_configuration_components::row-types.children', '{"uid":"row-types.children","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"menu":{"edit":{"label":"Menu","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Menu","searchable":true,"sortable":true}},"area":{"edit":{"label":"Area","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Area","searchable":true,"sortable":true}},"page":{"edit":{"label":"Page","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Page","searchable":true,"sortable":true}}},"layouts":{"list":["id","menu","area","page"],"edit":[[{"name":"menu","size":6},{"name":"area","size":6}],[{"name":"page","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(109, 'model_def_application::event.event', '{"uid":"application::event.event","collectionName":"events","kind":"collectionType","info":{"name":"event","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(110, 'plugin_content_manager_configuration_content_types::application::event.event', '{"uid":"application::event.event","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at","name"],"edit":[[{"name":"name","size":6}]],"editRelations":[]}}', 'object', '', ''),
	(111, 'model_def_row-types.permissions', '{"uid":"row-types.permissions","collectionName":"components_row_types_permissions","info":{"name":"permissions","icon":"angle-double-up"},"options":{"timestamps":false},"attributes":{}}', 'object', NULL, NULL);
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.events
DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.events: ~0 rows (aproximadamente)
DELETE FROM `events`;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.features
DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.features: ~8 rows (aproximadamente)
DELETE FROM `features`;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` (`id`, `title`, `locale`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `content`, `enabled`, `stage`) VALUES
	(1, 'Dark Mode', 'en', '2021-07-01 22:50:33', 1, 1, '2021-06-16 21:19:44', '2021-07-01 22:50:33', '- The User can choose their own mode between *Dark and Light * along Account and Custom places.\n- The Client can choose the platform default mode for the entire app from a simple and unified *App Settings* form.\n\nMore info:\n- Capacitor Storage\n- Reducer\n- By now, the customizations of this modes can only be available creating new code!', 1, NULL),
	(2, 'Dark Mode', 'es-ES', '2021-07-01 22:51:18', 1, 1, '2021-07-01 22:51:05', '2021-07-01 22:51:18', '- The User can choose their own mode between *Dark and Light * along Account and Custom places.\n- The Client can choose the platform default mode for the entire app from a simple and unified *App Settings* form.\n\nMore info:\n- Capacitor Storage\n- Reducer\n- By now, the customizations of this modes can only be available creating new code!', 1, NULL),
	(3, 'Internazionalization', 'en', NULL, 1, 1, '2021-07-01 22:59:33', '2021-07-01 23:25:11', '- The User will have the hability to select his favourite language for the main translations by a button\n- The App is enabled to select, via Capacitor, the same language of the user device. \n- Teh cms will provide the common app translation requirements with static keys and all the internationalization Strapi new skill.\n- The automatic preference between many must be seted with new code\n\nMore info: \n- i18next behind sceene', 0, 'dev'),
	(4, 'Internacionalización', 'es-ES', NULL, 1, 1, '2021-07-01 23:00:09', '2021-07-01 23:01:09', '- The User will have the hability to select his favourite language for the main translations by a button\n- The app is enabled to select, via Capacitor, the same language of the user device. \n- Teh cms will provide the common app translation requirements with static keys and all the internationalization Strapi new skill.\n- The asutomatic preference between many must be seted with new code\n\nMore info: \n- i18next behind sceene', 0, 'dev'),
	(5, 'Auth via Strapi', 'en', '2021-09-07 00:14:32', 1, 1, '2021-07-01 23:04:46', '2021-09-07 00:14:32', '- The app will connect to Strapi by auth!\n\nMore info:\n- Login \n- Register\n- Recover\n- Change password\n- Change email\n- { captcha }\n- { interconnection with other platforms, like facebook, trow the Strapi funnel}', 0, 'dev'),
	(6, 'Auth via Strapi', 'es-ES', NULL, 1, 1, '2021-07-01 23:05:08', '2021-07-01 23:07:42', '- The app will connect to Strapi by auth!\n\nMore info:\n- Login \n- Register\n- Recover\n- Change password\n- Change email\n- { captcha }\n- { interconnection with other platforms, like facebook, trow the Strapi funnel}- Login via Strapi', 0, 'dev'),
	(7, 'Tutorial', 'en', '2021-09-07 00:14:45', 1, 1, '2021-07-01 23:08:53', '2021-09-07 00:14:45', '- The app wil lbe able to have, at least, a Tutorial composed of three editable slides', 0, 'dev'),
	(8, 'Simple Chat', 'en', NULL, 1, 1, '2021-07-01 23:13:50', '2021-07-01 23:18:35', '- The app will have their own Simple Chat primary system\n \n- Not early jejeje!', 0, 'dev'),
	(9, 'Map locations', 'en', NULL, 1, 1, '2021-07-01 23:26:48', '2021-07-01 23:26:48', '- This feature will allow to someone to add mapped thinks.\n- I have some success developments using leaflet and also mapbox ^^.', 0, 'dev'),
	(10, 'OAuth2', 'en', NULL, 1, 1, '2021-07-16 19:37:00', '2021-07-16 19:37:00', 'Putting OAuth2 way for intercomunication between the nodes!', 0, 'dev'),
	(11, 'Woocomerce connection', 'en', NULL, 1, 1, '2021-07-16 20:01:58', '2021-07-16 20:01:58', 'The capability to get products from a Woocomerce platform', 0, 'dev');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.features__localizations
DROP TABLE IF EXISTS `features__localizations`;
CREATE TABLE IF NOT EXISTS `features__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) DEFAULT NULL,
  `related_feature_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.features__localizations: ~6 rows (aproximadamente)
DELETE FROM `features__localizations`;
/*!40000 ALTER TABLE `features__localizations` DISABLE KEYS */;
INSERT INTO `features__localizations` (`id`, `feature_id`, `related_feature_id`) VALUES
	(1, 2, 1),
	(2, 1, 2),
	(3, 4, 3),
	(4, 3, 4),
	(5, 6, 5),
	(6, 5, 6);
/*!40000 ALTER TABLE `features__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.feedbacks
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.feedbacks: ~1 rows (aproximadamente)
DELETE FROM `feedbacks`;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` (`id`, `user`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `comment`) VALUES
	(1, 7, NULL, 1, 1, '2021-09-05 01:17:48', '2021-09-07 19:28:54', NULL);
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.fields
DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fieldType` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) NOT NULL,
  `htmlName` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fieldName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.fields: ~7 rows (aproximadamente)
DELETE FROM `fields`;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`, `fieldType`, `field_name`, `htmlName`, `label`, `placeholder`, `type`, `fieldName`) VALUES
	(1, 'User Name', 1, 1, '2021-07-16 17:44:00', '2021-09-04 22:32:16', 'input', 'user_name', NULL, 'User Name', 'Your user name...', 'text', 'username'),
	(2, 'Login Password', 1, 1, '2021-07-16 17:45:52', '2021-09-03 20:27:08', 'input', 'user_password', NULL, 'User Password', 'Write here your password...', 'password', 'password'),
	(3, 'Repeat Password', 1, 1, '2021-07-16 17:46:04', '2021-09-04 23:34:49', 'input', 'user_repeat_password', NULL, 'Repeat Password', 'Write again your password...', 'password', 'repassword'),
	(4, 'User Email', 1, 1, '2021-07-16 21:17:07', '2021-09-03 20:26:44', 'input', 'user_email', NULL, 'User Email', 'Your user email...', 'email', 'email'),
	(5, 'Terms & Conditions', 1, 1, '2021-07-16 21:19:44', '2021-09-03 20:26:03', 'check', 'confirm_terms', NULL, 'I accept Terms & Conditions', 'Accept the terms and conditions...', 'check', 'terms'),
	(6, 'Confirm Policy', 1, 1, '2021-09-03 18:59:38', '2021-09-03 20:26:22', 'check', 'confirm_policy', NULL, 'Accept the Privacy Policy', 'I accept the Privacy Policy', 'check', 'policy'),
	(7, 'Nickname or email', 1, 1, '2021-09-03 19:26:23', '2021-09-04 22:33:11', 'input', 'identifier', NULL, 'Nickname or Email', 'Your user nickname', 'text', 'identifier'),
	(8, 'Nickname', 1, 1, '2021-09-05 01:33:59', '2021-09-04 23:34:19', 'input', 'nickname', NULL, 'Nickname', NULL, 'text', 'nickname');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.fields_components
DROP TABLE IF EXISTS `fields_components`;
CREATE TABLE IF NOT EXISTS `fields_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id_fk` (`field_id`),
  CONSTRAINT `field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.fields_components: ~4 rows (aproximadamente)
DELETE FROM `fields_components`;
/*!40000 ALTER TABLE `fields_components` DISABLE KEYS */;
INSERT INTO `fields_components` (`id`, `field`, `order`, `component_type`, `component_id`, `field_id`) VALUES
	(1, 'rules', 1, 'components_row_types_rules', 1, 3),
	(2, 'rules', 1, 'components_row_types_rules', 2, 4),
	(3, 'rules', 1, 'components_row_types_rules', 14, 6),
	(4, 'rules', 1, 'components_row_types_rules', 15, 5),
	(5, 'rules', 1, 'components_row_types_rules', 16, 7);
/*!40000 ALTER TABLE `fields_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.forms
DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `instructions` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forms_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.forms: ~4 rows (aproximadamente)
DELETE FROM `forms`;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `slug`, `enabled`, `label`, `instructions`) VALUES
	(1, 'Strapi Login', '2021-07-16 21:22:54', 1, 1, '2021-07-15 21:52:30', '2021-09-04 22:56:56', 'login', 1, 'Login to the app', NULL),
	(2, 'Strapi Register', '2021-09-04 23:01:08', 1, 1, '2021-07-15 21:52:42', '2021-09-04 23:35:11', 'signup', 1, 'Sign Up!', NULL),
	(3, 'Strapi Recover', '2021-09-04 23:02:05', 1, 1, '2021-07-15 21:52:49', '2021-09-04 23:02:15', 'recover', NULL, NULL, NULL),
	(4, 'Strapi Contact', '2021-09-04 23:02:02', 1, 1, '2021-07-15 21:53:01', '2021-09-04 23:02:02', 'support', NULL, NULL, NULL);
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.forms_components
DROP TABLE IF EXISTS `forms_components`;
CREATE TABLE IF NOT EXISTS `forms_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `form_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id_fk` (`form_id`),
  CONSTRAINT `form_id_fk` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.forms_components: ~15 rows (aproximadamente)
DELETE FROM `forms_components`;
/*!40000 ALTER TABLE `forms_components` DISABLE KEYS */;
INSERT INTO `forms_components` (`id`, `field`, `order`, `component_type`, `component_id`, `form_id`) VALUES
	(2, 'fields', 2, 'components_row_types_form_fields', 2, 1),
	(3, 'fields', 3, 'components_row_types_form_fields', 3, 1),
	(4, 'fields', 1, 'components_row_types_form_fields', 4, 4),
	(5, 'fields', 1, 'components_row_types_form_fields', 5, 3),
	(6, 'fields', 2, 'components_row_types_form_fields', 6, 2),
	(7, 'fields', 3, 'components_row_types_form_fields', 7, 2),
	(8, 'fields', 4, 'components_row_types_form_fields', 8, 2),
	(9, 'fields', 5, 'components_row_types_form_fields', 9, 2),
	(10, 'buttons', 1, 'components_row_types_buttons', 1, 1),
	(11, 'buttons', 2, 'components_row_types_buttons', 2, 1),
	(12, 'fields', 4, 'components_row_types_form_fields', 10, 1),
	(13, 'fields', 1, 'components_row_types_form_fields', 11, 1),
	(14, 'fields', 1, 'components_row_types_form_fields', 12, 2),
	(15, 'buttons', 1, 'components_row_types_buttons', 3, 2),
	(16, 'fields', 6, 'components_row_types_form_fields', 13, 2);
/*!40000 ALTER TABLE `forms_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.i18n_locales
DROP TABLE IF EXISTS `i18n_locales`;
CREATE TABLE IF NOT EXISTS `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.i18n_locales: ~2 rows (aproximadamente)
DELETE FROM `i18n_locales`;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'English (UK)', 'en', NULL, 1, '2021-06-16 20:12:17', '2021-06-16 23:23:54'),
	(2, 'Spanish (Spain)', 'es-ES', 1, 1, '2021-06-16 23:24:23', '2021-06-16 23:24:37');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.locations
DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `zoom` double DEFAULT NULL,
  `geoJson` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.locations: ~0 rows (aproximadamente)
DELETE FROM `locations`;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.matches
DROP TABLE IF EXISTS `matches`;
CREATE TABLE IF NOT EXISTS `matches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL,
  `match` int(11) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.matches: ~2 rows (aproximadamente)
DELETE FROM `matches`;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` (`id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `user`, `match`, `relation`) VALUES
	(2, 1, 1, '2021-09-07 19:31:36', '2021-09-07 19:31:36', 7, 1, NULL),
	(3, 1, 1, '2021-09-07 19:31:45', '2021-09-07 19:31:45', 2, 3, NULL);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.matches_users__users_matches
DROP TABLE IF EXISTS `matches_users__users_matches`;
CREATE TABLE IF NOT EXISTS `matches_users__users_matches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.matches_users__users_matches: ~0 rows (aproximadamente)
DELETE FROM `matches_users__users_matches`;
/*!40000 ALTER TABLE `matches_users__users_matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches_users__users_matches` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.matches__matches
DROP TABLE IF EXISTS `matches__matches`;
CREATE TABLE IF NOT EXISTS `matches__matches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.matches__matches: ~0 rows (aproximadamente)
DELETE FROM `matches__matches`;
/*!40000 ALTER TABLE `matches__matches` DISABLE KEYS */;
INSERT INTO `matches__matches` (`id`, `match_id`, `user_id`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `matches__matches` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.menus
DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `slot` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.menus: ~3 rows (aproximadamente)
DELETE FROM `menus`;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `slug`, `slot`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Main Sidenav', 'main-sidenav', 'start', 1, 1, '2021-09-04 21:37:53', '2021-09-07 23:45:25'),
	(2, 'User Menu', 'user-sidenav', 'start', 1, 1, '2021-09-07 21:15:44', '2021-09-07 21:28:45'),
	(3, 'Main footer', 'main-footer', 'bottom', 1, 1, '2021-09-07 21:40:05', '2021-09-07 23:44:51');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.menus__menu_items
DROP TABLE IF EXISTS `menus__menu_items`;
CREATE TABLE IF NOT EXISTS `menus__menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `menu-item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.menus__menu_items: ~9 rows (aproximadamente)
DELETE FROM `menus__menu_items`;
/*!40000 ALTER TABLE `menus__menu_items` DISABLE KEYS */;
INSERT INTO `menus__menu_items` (`id`, `menu_id`, `menu-item_id`) VALUES
	(1, 1, 2),
	(2, 1, 3),
	(3, 1, 4),
	(4, 1, 5),
	(5, 1, 6),
	(6, 2, 7),
	(7, 2, 8),
	(8, 2, 9),
	(9, 2, 10),
	(11, 3, 11),
	(12, 3, 12),
	(13, 3, 4),
	(14, 3, 14);
/*!40000 ALTER TABLE `menus__menu_items` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.menu_items
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.menu_items: ~13 rows (aproximadamente)
DELETE FROM `menu_items`;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `title`, `label`, `component`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(2, 'Schedule', 'Schedule', NULL, 1, 1, '2021-09-07 20:36:41', '2021-09-07 22:40:04'),
	(3, 'Speakers', 'Speakers', NULL, 1, 1, '2021-09-07 20:37:20', '2021-09-07 23:24:04'),
	(4, 'Map', 'Map Tab', NULL, 1, 1, '2021-09-07 20:38:27', '2021-09-07 23:19:04'),
	(5, 'About', 'About', NULL, 1, 1, '2021-09-07 20:43:18', '2021-09-07 23:24:28'),
	(6, 'Support', 'Support', NULL, 1, 1, '2021-09-07 20:45:54', '2021-09-07 23:24:43'),
	(7, NULL, 'Logout', NULL, 1, 1, '2021-09-07 21:26:13', '2021-09-07 23:25:19'),
	(8, NULL, 'Account', NULL, 1, 1, '2021-09-07 21:26:38', '2021-09-07 23:26:04'),
	(9, NULL, 'Login', NULL, 1, 1, '2021-09-07 21:27:06', '2021-09-07 23:26:22'),
	(10, NULL, 'Sign Up', NULL, 1, 1, '2021-09-07 21:28:13', '2021-09-07 23:26:37'),
	(11, NULL, 'Schedule Tab', NULL, 1, 1, '2021-09-07 21:51:48', '2021-09-07 23:26:46'),
	(12, NULL, 'Speakers Tab', NULL, 1, 1, '2021-09-07 22:03:51', '2021-09-07 23:26:53'),
	(13, NULL, 'Map Tab', NULL, 1, 1, '2021-09-07 22:09:47', '2021-09-07 23:27:08'),
	(14, NULL, 'About Tab', NULL, 1, 1, '2021-09-07 23:44:38', '2021-09-07 23:44:38');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.menu_items_components
DROP TABLE IF EXISTS `menu_items_components`;
CREATE TABLE IF NOT EXISTS `menu_items_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `menu_item_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_item_id_fk` (`menu_item_id`),
  CONSTRAINT `menu_item_id_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.menu_items_components: ~38 rows (aproximadamente)
DELETE FROM `menu_items_components`;
/*!40000 ALTER TABLE `menu_items_components` DISABLE KEYS */;
INSERT INTO `menu_items_components` (`id`, `field`, `order`, `component_type`, `component_id`, `menu_item_id`) VALUES
	(3, 'permission', 1, 'components_row_types_permissions', 21, 2),
	(4, 'permission', 2, 'components_row_types_permissions', 22, 2),
	(5, 'permission', 1, 'components_row_types_permissions', 23, 3),
	(6, 'permission', 2, 'components_row_types_permissions', 24, 3),
	(7, 'permission', 1, 'components_row_types_permissions', 25, 4),
	(8, 'permission', 2, 'components_row_types_permissions', 26, 4),
	(9, 'permission', 1, 'components_row_types_permissions', 27, 5),
	(10, 'permission', 2, 'components_row_types_permissions', 28, 5),
	(11, 'permission', 1, 'components_row_types_permissions', 29, 6),
	(12, 'permission', 2, 'components_row_types_permissions', 30, 6),
	(13, 'html_element', 1, 'components_row_types_html_elements', 1, 11),
	(14, 'ion_element', 1, 'components_row_types_ion_elements', 1, 11),
	(15, 'html_element', 1, 'components_row_types_html_elements', 2, 2),
	(16, 'ion_element', 1, 'components_row_types_ion_elements', 2, 2),
	(17, 'html_element', 1, 'components_row_types_html_elements', 3, 12),
	(18, 'ion_element', 1, 'components_row_types_ion_elements', 4, 12),
	(19, 'html_element', 1, 'components_row_types_html_elements', 4, 13),
	(20, 'ion_element', 1, 'components_row_types_ion_elements', 5, 13),
	(21, 'menu_items', 1, 'components_row_types_items', 1, 13),
	(22, 'path', 1, 'components_row_types_paths', 1, 13),
	(23, 'path', 1, 'components_row_types_paths', 2, 2),
	(24, 'html_element', 1, 'components_row_types_html_elements', 5, 4),
	(25, 'path', 1, 'components_row_types_paths', 3, 4),
	(26, 'html_element', 1, 'components_row_types_html_elements', 6, 3),
	(27, 'path', 1, 'components_row_types_paths', 4, 3),
	(28, 'html_element', 1, 'components_row_types_html_elements', 7, 5),
	(29, 'path', 1, 'components_row_types_paths', 5, 5),
	(30, 'html_element', 1, 'components_row_types_html_elements', 8, 6),
	(31, 'path', 1, 'components_row_types_paths', 6, 6),
	(32, 'html_element', 1, 'components_row_types_html_elements', 9, 7),
	(33, 'path', 1, 'components_row_types_paths', 7, 7),
	(34, 'html_element', 1, 'components_row_types_html_elements', 10, 8),
	(35, 'path', 1, 'components_row_types_paths', 8, 8),
	(36, 'html_element', 1, 'components_row_types_html_elements', 11, 9),
	(37, 'path', 1, 'components_row_types_paths', 9, 9),
	(38, 'html_element', 1, 'components_row_types_html_elements', 12, 10),
	(39, 'path', 1, 'components_row_types_paths', 10, 10),
	(40, 'path', 1, 'components_row_types_paths', 11, 11),
	(41, 'path', 1, 'components_row_types_paths', 12, 12),
	(42, 'html_element', 1, 'components_row_types_html_elements', 13, 14),
	(43, 'path', 1, 'components_row_types_paths', 13, 14);
/*!40000 ALTER TABLE `menu_items_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations
DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations: ~0 rows (aproximadamente)
DELETE FROM `navigations`;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
INSERT INTO `navigations` (`id`, `name`, `slug`, `visible`, `created_by`, `updated_by`) VALUES
	(1, 'Main navigation', 'main-navigation', 1, NULL, NULL);
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations_items
DROP TABLE IF EXISTS `navigations_items`;
CREATE TABLE IF NOT EXISTS `navigations_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` longtext,
  `externalPath` longtext,
  `uiRouterKey` varchar(255) DEFAULT NULL,
  `menuAttached` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `master` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations_items: ~0 rows (aproximadamente)
DELETE FROM `navigations_items`;
/*!40000 ALTER TABLE `navigations_items` DISABLE KEYS */;
INSERT INTO `navigations_items` (`id`, `title`, `type`, `path`, `externalPath`, `uiRouterKey`, `menuAttached`, `order`, `parent`, `master`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Index', 'EXTERNAL', NULL, 'http://app.index', 'index', 1, 1, NULL, 1, NULL, NULL, '2021-07-01 21:08:40', '2021-07-01 21:08:40');
/*!40000 ALTER TABLE `navigations_items` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations_items_morph
DROP TABLE IF EXISTS `navigations_items_morph`;
CREATE TABLE IF NOT EXISTS `navigations_items_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navigations_items_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations_items_morph: ~0 rows (aproximadamente)
DELETE FROM `navigations_items_morph`;
/*!40000 ALTER TABLE `navigations_items_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items_morph` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations_items__audience
DROP TABLE IF EXISTS `navigations_items__audience`;
CREATE TABLE IF NOT EXISTS `navigations_items__audience` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navigations_item_id` int(11) DEFAULT NULL,
  `audience_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations_items__audience: ~0 rows (aproximadamente)
DELETE FROM `navigations_items__audience`;
/*!40000 ALTER TABLE `navigations_items__audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items__audience` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.pages: ~0 rows (aproximadamente)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Login Page', '2021-09-04 22:03:39', 1, 1, '2021-09-04 21:54:31', '2021-09-04 22:03:39');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.paths
DROP TABLE IF EXISTS `paths`;
CREATE TABLE IF NOT EXISTS `paths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `path` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paths_path_unique` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.paths: ~14 rows (aproximadamente)
DELETE FROM `paths`;
/*!40000 ALTER TABLE `paths` DISABLE KEYS */;
INSERT INTO `paths` (`id`, `name`, `description`, `path`, `enabled`, `created_by`, `created_at`, `updated_by`, `updated_at`, `published_at`) VALUES
	(1, 'Schedule & Home', 'This is a test conference Shedule by the original conference for the project in react ;) Thanks a lot!!', '/tabs/schedule', 1, 1, '2021-09-07 20:08:48', 1, '2021-09-11 23:51:20', '2021-09-07 20:08:48'),
	(2, 'Speakers', NULL, '/tabs/speakers', 1, 1, '2021-09-07 20:15:47', 1, '2021-09-11 23:51:37', '2021-09-07 20:15:47'),
	(3, 'Map Sample', 'The map controller (WIP)', '/tabs/map', 1, 1, '2021-09-07 20:15:54', 1, '2021-09-11 23:51:11', NULL),
	(4, 'About', 'The about tab,,,', '/tabs/about', 1, 1, '2021-09-07 20:16:02', 1, '2021-09-11 23:51:03', NULL),
	(5, 'StrapIonic - Support Form', 'The support form for the app users!!', '/form/support', 1, 1, '2021-09-07 20:16:12', 1, '2021-09-11 23:50:47', '2021-09-07 20:16:12'),
	(6, 'Logout path', 'Logout path!', '/strapi/logout', 1, 1, '2021-09-07 20:16:30', 1, '2021-09-11 23:50:54', '2021-09-07 20:16:30'),
	(7, 'Account page', NULL, '/account', 1, 1, '2021-09-07 20:16:40', 1, '2021-09-11 23:48:43', '2021-09-11 23:48:38'),
	(8, 'StrapIonic login page', NULL, '/form/login', 1, 1, '2021-09-07 20:16:48', 1, '2021-09-11 23:50:02', '2021-09-07 20:16:48'),
	(9, 'Sign Up on StrapIonic', 'The register page!', '/form/signup', 1, 1, '2021-09-07 20:16:57', 1, '2021-09-11 23:50:38', '2021-09-07 20:16:57'),
	(10, 'Speakers by ID', NULL, '/tabs/speakers/:id', 1, 1, '2021-09-07 22:13:20', 1, '2021-09-11 23:52:53', '2021-09-07 22:13:20'),
	(11, 'Speakers by ID in Session', NULL, '/tabs/speakers/:session/:id', 1, 1, '2021-09-07 22:15:53', 1, '2021-09-11 23:51:55', '2021-09-07 22:15:53'),
	(13, 'Schedule - Detail', 'This is a test conference Shedule by the original conference for the project in react ;) Thanks a lot!!\n\n- Detail!', '/tabs/schedule/:id', 1, 1, '2021-09-07 22:50:06', 1, '2021-09-11 23:51:30', '2021-09-07 22:50:06'),
	(14, 'StrapIonic Recover Account', NULL, '/form/recover', 1, 1, '2021-09-07 22:51:39', 1, '2021-09-11 23:50:27', '2021-09-07 22:51:39'),
	(15, 'Home Or OverSlide (Tutorial)', NULL, '/', 1, 1, '2021-09-08 21:28:54', 1, '2021-09-11 23:49:06', NULL);
/*!40000 ALTER TABLE `paths` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.paths_components
DROP TABLE IF EXISTS `paths_components`;
CREATE TABLE IF NOT EXISTS `paths_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `path_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `path_id_fk` (`path_id`),
  CONSTRAINT `path_id_fk` FOREIGN KEY (`path_id`) REFERENCES `paths` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.paths_components: ~54 rows (aproximadamente)
DELETE FROM `paths_components`;
/*!40000 ALTER TABLE `paths_components` DISABLE KEYS */;
INSERT INTO `paths_components` (`id`, `field`, `order`, `component_type`, `component_id`, `path_id`) VALUES
	(1, 'permission', 1, 'components_row_types_permissions', 3, 7),
	(2, 'permission', 2, 'components_row_types_permissions', 4, 7),
	(3, 'permission', 1, 'components_row_types_permissions', 5, 8),
	(4, 'permission', 2, 'components_row_types_permissions', 6, 8),
	(5, 'permission', 1, 'components_row_types_permissions', 7, 9),
	(6, 'permission', 2, 'components_row_types_permissions', 8, 9),
	(7, 'permission', 1, 'components_row_types_permissions', 9, 5),
	(8, 'permission', 2, 'components_row_types_permissions', 10, 5),
	(9, 'permission', 1, 'components_row_types_permissions', 11, 6),
	(10, 'permission', 2, 'components_row_types_permissions', 12, 6),
	(11, 'permission', 1, 'components_row_types_permissions', 13, 4),
	(12, 'permission', 2, 'components_row_types_permissions', 14, 4),
	(13, 'permission', 1, 'components_row_types_permissions', 15, 3),
	(14, 'permission', 2, 'components_row_types_permissions', 16, 3),
	(15, 'permission', 1, 'components_row_types_permissions', 17, 1),
	(16, 'permission', 2, 'components_row_types_permissions', 18, 1),
	(17, 'permission', 1, 'components_row_types_permissions', 19, 2),
	(18, 'permission', 2, 'components_row_types_permissions', 20, 2),
	(19, 'ion_element', 1, 'components_row_types_ion_elements', 3, 1),
	(20, 'permission', 1, 'components_row_types_permissions', 31, 10),
	(21, 'permission', 2, 'components_row_types_permissions', 32, 10),
	(22, 'ion_element', 1, 'components_row_types_ion_elements', 6, 10),
	(23, 'permission', 1, 'components_row_types_permissions', 33, 11),
	(24, 'permission', 2, 'components_row_types_permissions', 34, 11),
	(25, 'ion_element', 1, 'components_row_types_ion_elements', 7, 11),
	(26, 'ion_element', 1, 'components_row_types_ion_elements', 8, 2),
	(27, 'permissions', 1, 'components_row_types_permissions', 35, 1),
	(28, 'permissions', 2, 'components_row_types_permissions', 36, 1),
	(29, 'permissions', 1, 'components_row_types_permissions', 37, 13),
	(30, 'permissions', 2, 'components_row_types_permissions', 38, 13),
	(31, 'ion_element', 1, 'components_row_types_ion_elements', 9, 13),
	(32, 'permissions', 1, 'components_row_types_permissions', 39, 14),
	(33, 'permissions', 2, 'components_row_types_permissions', 40, 14),
	(34, 'ion_element', 1, 'components_row_types_ion_elements', 10, 14),
	(35, 'permissions', 1, 'components_row_types_permissions', 41, 7),
	(36, 'permissions', 2, 'components_row_types_permissions', 42, 7),
	(37, 'ion_element', 1, 'components_row_types_ion_elements', 11, 7),
	(38, 'permissions', 1, 'components_row_types_permissions', 43, 8),
	(39, 'permissions', 2, 'components_row_types_permissions', 44, 8),
	(40, 'ion_element', 1, 'components_row_types_ion_elements', 12, 8),
	(41, 'permissions', 1, 'components_row_types_permissions', 45, 9),
	(42, 'permissions', 2, 'components_row_types_permissions', 46, 9),
	(43, 'ion_element', 1, 'components_row_types_ion_elements', 13, 9),
	(44, 'permissions', 1, 'components_row_types_permissions', 47, 5),
	(45, 'permissions', 2, 'components_row_types_permissions', 48, 5),
	(46, 'ion_element', 1, 'components_row_types_ion_elements', 14, 5),
	(47, 'permissions', 1, 'components_row_types_permissions', 49, 6),
	(48, 'permissions', 2, 'components_row_types_permissions', 50, 6),
	(49, 'ion_element', 1, 'components_row_types_ion_elements', 15, 6),
	(50, 'permissions', 1, 'components_row_types_permissions', 51, 4),
	(51, 'permissions', 2, 'components_row_types_permissions', 52, 4),
	(52, 'ion_element', 1, 'components_row_types_ion_elements', 16, 4),
	(53, 'permissions', 1, 'components_row_types_permissions', 53, 3),
	(54, 'permissions', 2, 'components_row_types_permissions', 54, 3),
	(55, 'ion_element', 1, 'components_row_types_ion_elements', 17, 3),
	(56, 'permissions', 1, 'components_row_types_permissions', 55, 2),
	(57, 'permissions', 2, 'components_row_types_permissions', 56, 2),
	(58, 'permissions', 1, 'components_row_types_permissions', 57, 10),
	(59, 'permissions', 2, 'components_row_types_permissions', 58, 10),
	(60, 'permissions', 1, 'components_row_types_permissions', 59, 11),
	(61, 'permissions', 2, 'components_row_types_permissions', 60, 11),
	(62, 'permissions', 1, 'components_row_types_permissions', 61, 15),
	(63, 'permissions', 2, 'components_row_types_permissions', 62, 15),
	(64, 'ion_element', 1, 'components_row_types_ion_elements', 18, 15);
/*!40000 ALTER TABLE `paths_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.paths__paths
DROP TABLE IF EXISTS `paths__paths`;
CREATE TABLE IF NOT EXISTS `paths__paths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path_id` int(11) DEFAULT NULL,
  `related_path_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.paths__paths: ~0 rows (aproximadamente)
DELETE FROM `paths__paths`;
/*!40000 ALTER TABLE `paths__paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `paths__paths` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.places
DROP TABLE IF EXISTS `places`;
CREATE TABLE IF NOT EXISTS `places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `placeName` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `location` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.places: ~0 rows (aproximadamente)
DELETE FROM `places`;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
/*!40000 ALTER TABLE `places` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.places__localizations
DROP TABLE IF EXISTS `places__localizations`;
CREATE TABLE IF NOT EXISTS `places__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(11) DEFAULT NULL,
  `related_place_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.places__localizations: ~0 rows (aproximadamente)
DELETE FROM `places__localizations`;
/*!40000 ALTER TABLE `places__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `places__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `partnumber` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `label` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.products: ~0 rows (aproximadamente)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.products__localizations
DROP TABLE IF EXISTS `products__localizations`;
CREATE TABLE IF NOT EXISTS `products__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `related_product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.products__localizations: ~0 rows (aproximadamente)
DELETE FROM `products__localizations`;
/*!40000 ALTER TABLE `products__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `products__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.publications
DROP TABLE IF EXISTS `publications`;
CREATE TABLE IF NOT EXISTS `publications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.publications: ~0 rows (aproximadamente)
DELETE FROM `publications`;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.roadmap
DROP TABLE IF EXISTS `roadmap`;
CREATE TABLE IF NOT EXISTS `roadmap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stage` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `explanation` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.roadmap: ~1 rows (aproximadamente)
DELETE FROM `roadmap`;
/*!40000 ALTER TABLE `roadmap` DISABLE KEYS */;
INSERT INTO `roadmap` (`id`, `stage`, `locale`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `explanation`) VALUES
	(1, 'Initial', 'en', '2021-07-01 23:23:36', 1, 1, '2021-07-01 23:22:01', '2021-07-01 23:23:36', 'This will be the initial stage, with the most required and common developments between the CMS and the app.'),
	(2, 'Partial', 'en', NULL, 1, 1, '2021-07-01 23:24:21', '2021-07-01 23:24:27', 'This will be the partial stage, in this stage I\'m prepared to recieve ');
/*!40000 ALTER TABLE `roadmap` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.roadmap__features
DROP TABLE IF EXISTS `roadmap__features`;
CREATE TABLE IF NOT EXISTS `roadmap__features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roadmap_id` int(11) DEFAULT NULL,
  `feature_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.roadmap__features: ~3 rows (aproximadamente)
DELETE FROM `roadmap__features`;
/*!40000 ALTER TABLE `roadmap__features` DISABLE KEYS */;
INSERT INTO `roadmap__features` (`id`, `roadmap_id`, `feature_id`) VALUES
	(1, 1, 1),
	(2, 1, 5),
	(3, 1, 7);
/*!40000 ALTER TABLE `roadmap__features` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.roadmap__localizations
DROP TABLE IF EXISTS `roadmap__localizations`;
CREATE TABLE IF NOT EXISTS `roadmap__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roadmap_id` int(11) DEFAULT NULL,
  `related_roadmap_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.roadmap__localizations: ~0 rows (aproximadamente)
DELETE FROM `roadmap__localizations`;
/*!40000 ALTER TABLE `roadmap__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `roadmap__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.settings: ~0 rows (aproximadamente)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-06-16 22:27:21', '2021-09-07 01:03:18');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.settings_components
DROP TABLE IF EXISTS `settings_components`;
CREATE TABLE IF NOT EXISTS `settings_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `setting_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_id_fk` (`setting_id`),
  CONSTRAINT `setting_id_fk` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.settings_components: ~6 rows (aproximadamente)
DELETE FROM `settings_components`;
/*!40000 ALTER TABLE `settings_components` DISABLE KEYS */;
INSERT INTO `settings_components` (`id`, `field`, `order`, `component_type`, `component_id`, `setting_id`) VALUES
	(1, 'Setting', 1, 'components_row_types_settings', 1, 1),
	(2, 'status', 1, 'components_row_types_statuses', 1, 1),
	(3, 'app_images', 1, 'components_row_types_app_images', 1, 1),
	(4, 'app_images', 2, 'components_row_types_app_images', 2, 1),
	(5, 'status', 2, 'components_row_types_statuses', 2, 1),
	(6, 'status', 3, 'components_row_types_statuses', 3, 1),
	(7, 'status', 4, 'components_row_types_statuses', 4, 1),
	(8, 'setting', 2, 'components_row_types_settings', 2, 1);
/*!40000 ALTER TABLE `settings_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_administrator
DROP TABLE IF EXISTS `strapi_administrator`;
CREATE TABLE IF NOT EXISTS `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_administrator: ~0 rows (aproximadamente)
DELETE FROM `strapi_administrator`;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
	(1, 'David', 'Rullán Díaz', 'Cabra Kein', 'drullan.dev@gmail.com', '$2a$10$Q/YbTxgUo4YN2ocGz84zD.1uTALnUU04xJP46IZFpf0f3xenvskIC', NULL, NULL, 1, NULL, 'en'),
	(2, 'Obscure', 'Doe', NULL, 'obscure@doe.com', '$2a$10$SvvmVogb/IEQeeVjRiDNHe8gTxGCCRphaTio0SJpEAK.hrcfmKAem', NULL, 'ef35db282e4661af2ba58871f09c7f5ee9896c1c', 1, NULL, NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_permission
DROP TABLE IF EXISTS `strapi_permission`;
CREATE TABLE IF NOT EXISTS `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7092 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_permission: ~205 rows (aproximadamente)
DELETE FROM `strapi_permission`;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
	(1, 'plugins::upload.read', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(2, 'plugins::upload.assets.update', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(3, 'plugins::upload.assets.create', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(4, 'plugins::upload.assets.download', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(5, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(6, 'plugins::upload.read', NULL, '{}', '["admin::is-creator"]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(7, 'plugins::upload.assets.create', NULL, '{}', '[]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(8, 'plugins::upload.assets.update', NULL, '{}', '["admin::is-creator"]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(9, 'plugins::upload.assets.download', NULL, '{}', '[]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(10, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(15, 'plugins::content-type-builder.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(16, 'plugins::upload.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(17, 'plugins::email.settings.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(18, 'plugins::upload.assets.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(19, 'plugins::upload.assets.download', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(20, 'plugins::upload.assets.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(21, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(22, 'plugins::upload.settings.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(23, 'plugins::content-manager.single-types.configure-view', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(24, 'plugins::content-manager.collection-types.configure-view', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(25, 'plugins::i18n.locale.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(26, 'plugins::content-manager.components.configure-layout', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(27, 'plugins::i18n.locale.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(28, 'plugins::i18n.locale.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(29, 'plugins::i18n.locale.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(30, 'plugins::users-permissions.roles.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(31, 'plugins::users-permissions.roles.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(32, 'plugins::users-permissions.roles.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(33, 'plugins::users-permissions.roles.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(34, 'plugins::users-permissions.providers.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(35, 'plugins::users-permissions.providers.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(36, 'plugins::users-permissions.email-templates.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(37, 'plugins::users-permissions.email-templates.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(38, 'plugins::users-permissions.advanced-settings.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(39, 'plugins::users-permissions.advanced-settings.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(40, 'admin::marketplace.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(42, 'admin::webhooks.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(43, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(44, 'admin::webhooks.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(45, 'admin::webhooks.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(46, 'admin::webhooks.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(47, 'admin::users.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(48, 'admin::users.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(49, 'admin::users.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(50, 'admin::users.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(51, 'admin::roles.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(52, 'admin::roles.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(53, 'admin::roles.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(54, 'admin::roles.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(56, 'plugins::content-manager.explorer.create', 'plugins::comments.comment', '{"fields":["content","blocked","blockedThread","blockReason","points","authorUser","authorType","authorId","authorName","authorEmail","authorAvatar","removed","relatedSlug","related","reports","threadOf"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(57, 'plugins::content-manager.explorer.create', 'plugins::comments.report', '{"fields":["content","reason","resolved","related"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(58, 'plugins::content-manager.explorer.create', 'plugins::navigation.audience', '{"fields":["name","key"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(59, 'plugins::content-manager.explorer.read', 'plugins::comments.comment', '{"fields":["content","blocked","blockedThread","blockReason","points","authorUser","authorType","authorId","authorName","authorEmail","authorAvatar","removed","relatedSlug","related","reports","threadOf"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(60, 'plugins::content-manager.explorer.read', 'plugins::comments.report', '{"fields":["content","reason","resolved","related"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(61, 'plugins::content-manager.explorer.read', 'plugins::navigation.audience', '{"fields":["name","key"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(62, 'plugins::content-manager.explorer.update', 'plugins::comments.comment', '{"fields":["content","blocked","blockedThread","blockReason","points","authorUser","authorType","authorId","authorName","authorEmail","authorAvatar","removed","relatedSlug","related","reports","threadOf"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(63, 'plugins::content-manager.explorer.update', 'plugins::comments.report', '{"fields":["content","reason","resolved","related"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(64, 'plugins::content-manager.explorer.update', 'plugins::navigation.audience', '{"fields":["name","key"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(69, 'plugins::comments.moderate.block.thread', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(70, 'plugins::comments.read', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(71, 'plugins::comments.moderate', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(72, 'plugins::comments.moderate.block.comment', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(73, 'plugins::comments.moderate.reports', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(74, 'plugins::navigation.read', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(75, 'plugins::navigation.update', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(111, 'plugins::content-manager.explorer.create', 'application::access.access', '{"fields":["icon","navigation"]}', '[]', 1, '2021-06-16 22:06:33', '2021-06-16 22:06:33'),
	(112, 'plugins::content-manager.explorer.read', 'application::access.access', '{"fields":["icon","navigation"]}', '[]', 1, '2021-06-16 22:06:33', '2021-06-16 22:06:33'),
	(113, 'plugins::content-manager.explorer.update', 'application::access.access', '{"fields":["icon","navigation"]}', '[]', 1, '2021-06-16 22:06:33', '2021-06-16 22:06:33'),
	(200, 'plugins::documentation.read', NULL, '{}', '[]', 1, '2021-06-16 23:28:15', '2021-06-16 23:28:15'),
	(201, 'plugins::documentation.settings.update', NULL, '{}', '[]', 1, '2021-06-16 23:28:15', '2021-06-16 23:28:15'),
	(202, 'plugins::documentation.settings.regenerate', NULL, '{}', '[]', 1, '2021-06-16 23:28:15', '2021-06-16 23:28:15'),
	(364, 'plugins::content-manager.explorer.create', 'application::translations.translations', '{"fields":["text","key"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(365, 'plugins::content-manager.explorer.read', 'application::translations.translations', '{"fields":["text","key"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(366, 'plugins::content-manager.explorer.update', 'application::translations.translations', '{"fields":["text","key"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(437, 'plugins::content-manager.explorer.create', 'application::connections.connections', '{"fields":["user","origin"]}', '[]', 1, '2021-06-30 20:55:40', '2021-06-30 20:55:40'),
	(438, 'plugins::content-manager.explorer.read', 'application::connections.connections', '{"fields":["user","origin"]}', '[]', 1, '2021-06-30 20:55:40', '2021-06-30 20:55:40'),
	(439, 'plugins::content-manager.explorer.update', 'application::connections.connections', '{"fields":["user","origin"]}', '[]', 1, '2021-06-30 20:55:40', '2021-06-30 20:55:40'),
	(583, 'plugins::content-manager.explorer.create', 'application::features.features', '{"fields":["title"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(584, 'plugins::content-manager.explorer.read', 'application::features.features', '{"fields":["title"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(585, 'plugins::content-manager.explorer.update', 'application::features.features', '{"fields":["title"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(586, 'plugins::content-manager.explorer.delete', 'application::features.features', '{"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(587, 'plugins::content-manager.explorer.publish', 'application::features.features', '{"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(588, 'plugins::content-manager.explorer.create', 'application::translations.translations', '{"fields":["key","text"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(589, 'plugins::content-manager.explorer.read', 'application::translations.translations', '{"fields":["key","text"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(590, 'plugins::content-manager.explorer.update', 'application::translations.translations', '{"fields":["key","text"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(591, 'plugins::content-manager.explorer.delete', 'application::translations.translations', '{"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(592, 'plugins::content-manager.explorer.create', 'application::tutorial.tutorial', '{"fields":["order","content","name","slug"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 23:44:03'),
	(593, 'plugins::content-manager.explorer.read', 'application::tutorial.tutorial', '{"fields":["order","content","name","slug"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 23:44:03'),
	(594, 'plugins::content-manager.explorer.update', 'application::tutorial.tutorial', '{"fields":["order","content","name","slug"],"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 23:44:03'),
	(595, 'plugins::content-manager.explorer.delete', 'application::tutorial.tutorial', '{"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(596, 'plugins::content-manager.explorer.publish', 'application::tutorial.tutorial', '{"locales":["en","es-ES"]}', '[]', 2, '2021-07-01 22:24:42', '2021-07-01 22:24:42'),
	(597, 'plugins::content-manager.explorer.create', 'application::features.features', '{"fields":["title","content","enabled","stage"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 22:44:22', '2021-07-01 22:44:22'),
	(598, 'plugins::content-manager.explorer.read', 'application::features.features', '{"fields":["title","content","enabled","stage"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 22:44:22', '2021-07-01 22:44:22'),
	(599, 'plugins::content-manager.explorer.update', 'application::features.features', '{"fields":["title","content","enabled","stage"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 22:44:22', '2021-07-01 22:44:22'),
	(650, 'plugins::content-manager.explorer.create', 'application::roadmap.roadmap', '{"fields":["stage","features","explanation"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 23:22:30', '2021-07-01 23:22:30'),
	(651, 'plugins::content-manager.explorer.read', 'application::roadmap.roadmap', '{"fields":["stage","features","explanation"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 23:22:30', '2021-07-01 23:22:30'),
	(652, 'plugins::content-manager.explorer.update', 'application::roadmap.roadmap', '{"fields":["stage","features","explanation"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 23:22:30', '2021-07-01 23:22:30'),
	(670, 'plugins::content-manager.explorer.create', 'application::settings.settings', '{"fields":["setting.key","setting.value","status.key","status.value","status.enabled","status.moreInfo","appImages.name","appImages.image"]}', '[]', 1, '2021-07-01 23:33:37', '2021-07-01 23:33:37'),
	(671, 'plugins::content-manager.explorer.read', 'application::settings.settings', '{"fields":["setting.key","setting.value","status.key","status.value","status.enabled","status.moreInfo","appImages.name","appImages.image"]}', '[]', 1, '2021-07-01 23:33:37', '2021-07-01 23:33:37'),
	(672, 'plugins::content-manager.explorer.update', 'application::settings.settings', '{"fields":["setting.key","setting.value","status.key","status.value","status.enabled","status.moreInfo","appImages.name","appImages.image"]}', '[]', 1, '2021-07-01 23:33:37', '2021-07-01 23:33:37'),
	(707, 'plugins::content-manager.explorer.create', 'application::tutorial.tutorial', '{"fields":["order","content","name","slug"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 23:44:03', '2021-07-01 23:44:03'),
	(708, 'plugins::content-manager.explorer.update', 'application::tutorial.tutorial', '{"fields":["order","content","name","slug"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 23:44:03', '2021-07-01 23:44:03'),
	(709, 'plugins::content-manager.explorer.read', 'application::tutorial.tutorial', '{"fields":["order","content","name","slug"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-01 23:44:03', '2021-07-01 23:44:03'),
	(790, 'plugins::content-manager.explorer.create', 'application::products.products', '{"fields":["partnumber","cover","label","description"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-02 02:00:45', '2021-07-02 02:00:45'),
	(791, 'plugins::content-manager.explorer.read', 'application::products.products', '{"fields":["partnumber","cover","label","description"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-02 02:00:45', '2021-07-02 02:00:45'),
	(792, 'plugins::content-manager.explorer.update', 'application::products.products', '{"fields":["partnumber","cover","label","description"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-02 02:00:45', '2021-07-02 02:00:45'),
	(831, 'plugins::content-manager.explorer.create', 'application::locations.locations', '{"fields":["lat","lng","zoom","geoJson"]}', '[]', 1, '2021-07-04 02:50:44', '2021-07-04 02:50:44'),
	(832, 'plugins::content-manager.explorer.read', 'application::locations.locations', '{"fields":["lat","lng","zoom","geoJson"]}', '[]', 1, '2021-07-04 02:50:44', '2021-07-04 02:50:44'),
	(833, 'plugins::content-manager.explorer.update', 'application::locations.locations', '{"fields":["lat","lng","zoom","geoJson"]}', '[]', 1, '2021-07-04 02:50:44', '2021-07-04 02:50:44'),
	(985, 'plugins::content-manager.explorer.create', 'application::places.places', '{"fields":["placeName","location","media","description"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-04 03:03:43', '2021-07-04 03:03:43'),
	(986, 'plugins::content-manager.explorer.read', 'application::places.places', '{"fields":["placeName","location","media","description"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-04 03:03:43', '2021-07-04 03:03:43'),
	(987, 'plugins::content-manager.explorer.update', 'application::places.places', '{"fields":["placeName","location","media","description"],"locales":["en","es-ES"]}', '[]', 1, '2021-07-04 03:03:43', '2021-07-04 03:03:43'),
	(2809, 'plugins::content-manager.explorer.create', 'application::support.support', '{"fields":["user","subject","explanation"],"locales":["en","es-ES"]}', '[]', 1, '2021-09-02 00:15:11', '2021-09-02 00:15:11'),
	(2810, 'plugins::content-manager.explorer.read', 'application::support.support', '{"fields":["user","subject","explanation"],"locales":["en","es-ES"]}', '[]', 1, '2021-09-02 00:15:11', '2021-09-02 00:15:11'),
	(2811, 'plugins::content-manager.explorer.update', 'application::support.support', '{"fields":["user","subject","explanation"],"locales":["en","es-ES"]}', '[]', 1, '2021-09-02 00:15:11', '2021-09-02 00:15:11'),
	(3029, 'plugins::content-manager.explorer.create', 'application::fields.fields', '{"fields":["fieldName","fieldType","name","label","placeholder","type","rules.param","rules.value","rules.boolean","rules.number","rules.text","rules.shorttext"]}', '[]', 1, '2021-09-03 20:22:16', '2021-09-03 20:22:16'),
	(3030, 'plugins::content-manager.explorer.read', 'application::fields.fields', '{"fields":["fieldName","fieldType","name","label","placeholder","type","rules.param","rules.value","rules.boolean","rules.number","rules.text","rules.shorttext"]}', '[]', 1, '2021-09-03 20:22:16', '2021-09-03 20:22:16'),
	(3031, 'plugins::content-manager.explorer.update', 'application::fields.fields', '{"fields":["fieldName","fieldType","name","label","placeholder","type","rules.param","rules.value","rules.boolean","rules.number","rules.text","rules.shorttext"]}', '[]', 1, '2021-09-03 20:22:16', '2021-09-03 20:22:16'),
	(3095, 'plugins::content-manager.explorer.create', 'application::about.about', '{"fields":["content","allowed_roles","label"]}', '[]', 1, '2021-09-04 00:31:24', '2021-09-04 00:31:24'),
	(3096, 'plugins::content-manager.explorer.read', 'application::about.about', '{"fields":["content","allowed_roles","label"]}', '[]', 1, '2021-09-04 00:31:24', '2021-09-04 00:31:24'),
	(3097, 'plugins::content-manager.explorer.update', 'application::about.about', '{"fields":["content","allowed_roles","label"]}', '[]', 1, '2021-09-04 00:31:24', '2021-09-04 00:31:24'),
	(3482, 'plugins::content-manager.explorer.create', 'application::forms.forms', '{"fields":["name","fields.field","fields.rules.param","fields.rules.value","fields.rules.boolean","fields.rules.number","fields.rules.text","fields.rules.shorttext","slug","enabled","buttons.button","buttons.rules.param","buttons.rules.value","buttons.rules.boolean","buttons.rules.number","buttons.rules.text","buttons.rules.shorttext","buttons.enabled","label","instructions"]}', '[]', 1, '2021-09-04 22:35:41', '2021-09-04 22:35:41'),
	(3483, 'plugins::content-manager.explorer.read', 'application::forms.forms', '{"fields":["name","fields.field","fields.rules.param","fields.rules.value","fields.rules.boolean","fields.rules.number","fields.rules.text","fields.rules.shorttext","slug","enabled","buttons.button","buttons.rules.param","buttons.rules.value","buttons.rules.boolean","buttons.rules.number","buttons.rules.text","buttons.rules.shorttext","buttons.enabled","label","instructions"]}', '[]', 1, '2021-09-04 22:35:41', '2021-09-04 22:35:41'),
	(3484, 'plugins::content-manager.explorer.update', 'application::forms.forms', '{"fields":["name","fields.field","fields.rules.param","fields.rules.value","fields.rules.boolean","fields.rules.number","fields.rules.text","fields.rules.shorttext","slug","enabled","buttons.button","buttons.rules.param","buttons.rules.value","buttons.rules.boolean","buttons.rules.number","buttons.rules.text","buttons.rules.shorttext","buttons.enabled","label","instructions"]}', '[]', 1, '2021-09-04 22:35:41', '2021-09-04 22:35:41'),
	(3558, 'plugins::content-manager.explorer.create', 'application::buttons.buttons', '{"fields":["fieldName","slug","label","name","routerLink"],"locales":["en","es-ES"]}', '[]', 1, '2021-09-04 23:40:10', '2021-09-04 23:40:10'),
	(3559, 'plugins::content-manager.explorer.read', 'application::buttons.buttons', '{"fields":["fieldName","slug","label","name","routerLink"],"locales":["en","es-ES"]}', '[]', 1, '2021-09-04 23:40:10', '2021-09-04 23:40:10'),
	(3560, 'plugins::content-manager.explorer.update', 'application::buttons.buttons', '{"fields":["fieldName","slug","label","name","routerLink"],"locales":["en","es-ES"]}', '[]', 1, '2021-09-04 23:40:10', '2021-09-04 23:40:10'),
	(3782, 'plugins::content-manager.explorer.create', 'application::feedback.feedback', '{"fields":["user","comment"]}', '[]', 1, '2021-09-05 01:18:56', '2021-09-05 01:18:56'),
	(3783, 'plugins::content-manager.explorer.read', 'application::feedback.feedback', '{"fields":["user","comment"]}', '[]', 1, '2021-09-05 01:18:56', '2021-09-05 01:18:56'),
	(3784, 'plugins::content-manager.explorer.update', 'application::feedback.feedback', '{"fields":["user","comment"]}', '[]', 1, '2021-09-05 01:18:56', '2021-09-05 01:18:56'),
	(3822, 'plugins::content-manager.explorer.create', 'application::publication.publication', '{"fields":["media"]}', '[]', 1, '2021-09-07 00:28:36', '2021-09-07 00:28:36'),
	(3823, 'plugins::content-manager.explorer.read', 'application::publication.publication', '{"fields":["media"]}', '[]', 1, '2021-09-07 00:28:36', '2021-09-07 00:28:36'),
	(3824, 'plugins::content-manager.explorer.update', 'application::publication.publication', '{"fields":["media"]}', '[]', 1, '2021-09-07 00:28:36', '2021-09-07 00:28:36'),
	(3993, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","darkModeEnabled","userAvatar","slug","terms","privacy","feedbacks","matches"]}', '[]', 1, '2021-09-07 19:20:27', '2021-09-07 19:20:27'),
	(3994, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","darkModeEnabled","userAvatar","slug","terms","privacy","feedbacks","matches"]}', '[]', 1, '2021-09-07 19:20:27', '2021-09-07 19:20:27'),
	(3995, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","darkModeEnabled","userAvatar","slug","terms","privacy","feedbacks","matches"]}', '[]', 1, '2021-09-07 19:20:27', '2021-09-07 19:20:27'),
	(4115, 'plugins::content-manager.explorer.create', 'application::match.match', '{"fields":["user","match","relation"]}', '[]', 1, '2021-09-07 19:34:08', '2021-09-07 19:34:08'),
	(4116, 'plugins::content-manager.explorer.read', 'application::match.match', '{"fields":["user","match","relation"]}', '[]', 1, '2021-09-07 19:34:08', '2021-09-07 19:34:08'),
	(4117, 'plugins::content-manager.explorer.update', 'application::match.match', '{"fields":["user","match","relation"]}', '[]', 1, '2021-09-07 19:34:08', '2021-09-07 19:34:08'),
	(5900, 'plugins::content-manager.explorer.create', 'application::component.component', '{"fields":["name"]}', '[]', 1, '2021-09-07 22:21:08', '2021-09-07 22:21:08'),
	(5901, 'plugins::content-manager.explorer.read', 'application::component.component', '{"fields":["name"]}', '[]', 1, '2021-09-07 22:21:08', '2021-09-07 22:21:08'),
	(5902, 'plugins::content-manager.explorer.update', 'application::component.component', '{"fields":["name"]}', '[]', 1, '2021-09-07 22:21:08', '2021-09-07 22:21:08'),
	(6211, 'plugins::content-manager.explorer.create', 'application::menu-item.menu-item', '{"fields":["label","html_element.identifier","html_element.name","children.submenu","path.path"]}', '[]', 1, '2021-09-07 23:19:20', '2021-09-07 23:19:20'),
	(6212, 'plugins::content-manager.explorer.read', 'application::menu-item.menu-item', '{"fields":["label","html_element.identifier","html_element.name","children.submenu","path.path"]}', '[]', 1, '2021-09-07 23:19:20', '2021-09-07 23:19:20'),
	(6213, 'plugins::content-manager.explorer.update', 'application::menu-item.menu-item', '{"fields":["label","html_element.identifier","html_element.name","children.submenu","path.path"]}', '[]', 1, '2021-09-07 23:19:20', '2021-09-07 23:19:20'),
	(6428, 'plugins::content-manager.explorer.create', 'application::menu.menu', '{"fields":["name","slot","menu_items","slug"]}', '[]', 1, '2021-09-07 23:43:07', '2021-09-07 23:43:07'),
	(6429, 'plugins::content-manager.explorer.read', 'application::menu.menu', '{"fields":["name","slot","menu_items","slug"]}', '[]', 1, '2021-09-07 23:43:07', '2021-09-07 23:43:07'),
	(6430, 'plugins::content-manager.explorer.update', 'application::menu.menu', '{"fields":["name","slot","menu_items","slug"]}', '[]', 1, '2021-09-07 23:43:07', '2021-09-07 23:43:07'),
	(6596, 'plugins::content-manager.explorer.create', 'application::page.page', '{"fields":["name"]}', '[]', 1, '2021-09-08 19:09:55', '2021-09-08 19:09:55'),
	(6598, 'plugins::content-manager.explorer.read', 'application::page.page', '{"fields":["name"]}', '[]', 1, '2021-09-08 19:09:55', '2021-09-08 19:09:55'),
	(6600, 'plugins::content-manager.explorer.update', 'application::page.page', '{"fields":["name"]}', '[]', 1, '2021-09-08 19:09:55', '2021-09-08 19:09:55'),
	(6686, 'plugins::content-manager.explorer.create', 'application::areas.areas', '{"fields":["name","position","title","children.menu","children.area","children.page","slug"]}', '[]', 1, '2021-09-08 19:12:06', '2021-09-08 19:12:06'),
	(6687, 'plugins::content-manager.explorer.read', 'application::areas.areas', '{"fields":["name","position","title","children.menu","children.area","children.page","slug"]}', '[]', 1, '2021-09-08 19:12:06', '2021-09-08 19:12:06'),
	(6688, 'plugins::content-manager.explorer.update', 'application::areas.areas', '{"fields":["name","position","title","children.menu","children.area","children.page","slug"]}', '[]', 1, '2021-09-08 19:12:06', '2021-09-08 19:12:06'),
	(6817, 'plugins::content-manager.explorer.create', 'application::event.event', '{"fields":["name"]}', '[]', 1, '2021-09-08 21:25:13', '2021-09-08 21:25:13'),
	(6818, 'plugins::content-manager.explorer.read', 'application::event.event', '{"fields":["name"]}', '[]', 1, '2021-09-08 21:25:13', '2021-09-08 21:25:13'),
	(6819, 'plugins::content-manager.explorer.update', 'application::event.event', '{"fields":["name"]}', '[]', 1, '2021-09-08 21:25:13', '2021-09-08 21:25:13'),
	(7045, 'plugins::content-manager.explorer.create', 'application::paths.paths', '{"fields":["path","description","name","enabled","ion_element.icon","ion_element.main","ion_element.component","ion_element.exact","ion_element.iconOut","permissions"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7046, 'plugins::content-manager.explorer.read', 'application::paths.paths', '{"fields":["path","description","name","enabled","ion_element.icon","ion_element.main","ion_element.component","ion_element.exact","ion_element.iconOut","permissions"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7047, 'plugins::content-manager.explorer.update', 'application::paths.paths', '{"fields":["path","description","name","enabled","ion_element.icon","ion_element.main","ion_element.component","ion_element.exact","ion_element.iconOut","permissions"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7048, 'plugins::content-manager.explorer.delete', 'application::about.about', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7049, 'plugins::content-manager.explorer.delete', 'application::access.access', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7050, 'plugins::content-manager.explorer.delete', 'application::areas.areas', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7051, 'plugins::content-manager.explorer.delete', 'application::buttons.buttons', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7052, 'plugins::content-manager.explorer.delete', 'application::component.component', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7053, 'plugins::content-manager.explorer.delete', 'application::connections.connections', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7054, 'plugins::content-manager.explorer.delete', 'application::event.event', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7055, 'plugins::content-manager.explorer.delete', 'application::features.features', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7056, 'plugins::content-manager.explorer.delete', 'application::feedback.feedback', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7057, 'plugins::content-manager.explorer.delete', 'application::forms.forms', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7058, 'plugins::content-manager.explorer.delete', 'application::locations.locations', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7059, 'plugins::content-manager.explorer.delete', 'application::menu-item.menu-item', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7060, 'plugins::content-manager.explorer.delete', 'application::fields.fields', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7061, 'plugins::content-manager.explorer.delete', 'application::match.match', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7062, 'plugins::content-manager.explorer.delete', 'application::menu.menu', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7063, 'plugins::content-manager.explorer.delete', 'application::page.page', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7064, 'plugins::content-manager.explorer.delete', 'application::paths.paths', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7065, 'plugins::content-manager.explorer.delete', 'application::publication.publication', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7066, 'plugins::content-manager.explorer.delete', 'application::settings.settings', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7067, 'plugins::content-manager.explorer.delete', 'application::translations.translations', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7068, 'plugins::content-manager.explorer.delete', 'application::tutorial.tutorial', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7069, 'plugins::content-manager.explorer.delete', 'application::places.places', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7070, 'plugins::content-manager.explorer.delete', 'application::products.products', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7071, 'plugins::content-manager.explorer.delete', 'application::roadmap.roadmap', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7072, 'plugins::content-manager.explorer.delete', 'application::support.support', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7073, 'plugins::content-manager.explorer.delete', 'plugins::comments.comment', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7074, 'plugins::content-manager.explorer.delete', 'plugins::comments.report', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:50'),
	(7075, 'plugins::content-manager.explorer.delete', 'plugins::navigation.audience', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7076, 'plugins::content-manager.explorer.publish', 'application::access.access', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7077, 'plugins::content-manager.explorer.publish', 'application::component.component', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7078, 'plugins::content-manager.explorer.publish', 'application::feedback.feedback', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7079, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7080, 'plugins::content-manager.explorer.publish', 'application::about.about', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7081, 'plugins::content-manager.explorer.publish', 'application::event.event', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7082, 'plugins::content-manager.explorer.publish', 'application::features.features', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7083, 'plugins::content-manager.explorer.publish', 'application::forms.forms', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7084, 'plugins::content-manager.explorer.publish', 'application::page.page', '{}', '[]', 1, '2021-09-11 23:46:50', '2021-09-11 23:46:51'),
	(7085, 'plugins::content-manager.explorer.publish', 'application::places.places', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51'),
	(7086, 'plugins::content-manager.explorer.publish', 'application::paths.paths', '{}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51'),
	(7087, 'plugins::content-manager.explorer.publish', 'application::products.products', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51'),
	(7088, 'plugins::content-manager.explorer.publish', 'application::publication.publication', '{}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51'),
	(7089, 'plugins::content-manager.explorer.publish', 'application::roadmap.roadmap', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51'),
	(7090, 'plugins::content-manager.explorer.publish', 'application::support.support', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51'),
	(7091, 'plugins::content-manager.explorer.publish', 'application::tutorial.tutorial', '{"locales":["en","es-ES"]}', '[]', 1, '2021-09-11 23:46:51', '2021-09-11 23:46:51');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_role
DROP TABLE IF EXISTS `strapi_role`;
CREATE TABLE IF NOT EXISTS `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_role: ~3 rows (aproximadamente)
DELETE FROM `strapi_role`;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(2, 'Manager', 'strapi-editor', 'Managers can ::\n- Publish and translate contents, tutorial.', '2021-06-16 20:12:19', '2021-07-01 23:36:21'),
	(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-06-16 20:12:19', '2021-06-16 20:12:19');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_users_roles
DROP TABLE IF EXISTS `strapi_users_roles`;
CREATE TABLE IF NOT EXISTS `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_users_roles: ~0 rows (aproximadamente)
DELETE FROM `strapi_users_roles`;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
	(1, 1, 1),
	(2, 2, 3);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_webhooks
DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_webhooks: ~0 rows (aproximadamente)
DELETE FROM `strapi_webhooks`;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.support
DROP TABLE IF EXISTS `support`;
CREATE TABLE IF NOT EXISTS `support` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `i18nLocale` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `explanation` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.support: ~0 rows (aproximadamente)
DELETE FROM `support`;
/*!40000 ALTER TABLE `support` DISABLE KEYS */;
/*!40000 ALTER TABLE `support` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.support__localizations
DROP TABLE IF EXISTS `support__localizations`;
CREATE TABLE IF NOT EXISTS `support__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `support_id` int(11) DEFAULT NULL,
  `related_support_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.support__localizations: ~0 rows (aproximadamente)
DELETE FROM `support__localizations`;
/*!40000 ALTER TABLE `support__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `support__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.translations
DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.translations: ~2 rows (aproximadamente)
DELETE FROM `translations`;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `text`, `locale`, `created_by`, `updated_by`, `created_at`, `updated_at`, `key`) VALUES
	(1, 'Hello world!', 'en', 1, 1, '2021-06-20 00:38:40', '2021-06-30 00:43:59', 'Hello world'),
	(2, 'Hola mundo!', 'es-ES', 1, 1, '2021-06-20 00:38:45', '2021-06-30 00:43:59', 'Hello world');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.translations__localizations
DROP TABLE IF EXISTS `translations__localizations`;
CREATE TABLE IF NOT EXISTS `translations__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `translation_id` int(11) DEFAULT NULL,
  `related_translation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.translations__localizations: ~2 rows (aproximadamente)
DELETE FROM `translations__localizations`;
/*!40000 ALTER TABLE `translations__localizations` DISABLE KEYS */;
INSERT INTO `translations__localizations` (`id`, `translation_id`, `related_translation_id`) VALUES
	(1, 2, 1),
	(2, 1, 2);
/*!40000 ALTER TABLE `translations__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.tutorials
DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tutorials_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.tutorials: ~6 rows (aproximadamente)
DELETE FROM `tutorials`;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
INSERT INTO `tutorials` (`id`, `order`, `locale`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `content`, `name`, `slug`) VALUES
	(1, 1, 'en', '2021-07-01 22:05:13', 1, 1, '2021-07-01 22:04:24', '2021-07-01 23:44:22', '<ion-slide class="md swiper-slide swiper-zoom-container hydrated swiper-slide-active" style="width: 400px;">![ica-slidebox-img-1.png](http://localhost:1337/uploads/ica_slidebox_img_1_dc88c52316.png)<h2 class="slide-title">Welcome to <b>ICA</b></h2><p>The <b>ionic conference app</b> is a practical preview of the ionic framework in action, and a demonstration of proper code use.</p></ion-slide>', 'Welcome', 'welcome'),
	(2, 2, 'en', '2021-07-01 22:14:50', 1, 1, '2021-07-01 22:05:28', '2021-07-01 23:44:27', '\n<ion-slide class="md swiper-slide swiper-zoom-container hydrated swiper-slide-active" style="width: 400px;">![ica-slidebox-img-2.png](http://localhost:1337/uploads/ica_slidebox_img_2_d9f71fb3e0.png)<h2 class="slide-title">What is <b>Ionic?</b></h2><p><b>Ionic Framework</b>is an open source SDK that enables developers to build high quality mobile apps with web technologies like HTML, CSS, and JavaScript.</p></ion-slide>\n\n', 'What is Ionic?', 'what-is-ionic'),
	(3, 3, 'en', '2021-07-01 22:14:53', 1, 1, '2021-07-01 22:05:36', '2021-07-01 23:44:31', '<ion-slide class="md swiper-slide swiper-zoom-container hydrated swiper-slide-active" style="width: 400px;">![ica-slidebox-img-3.png](http://localhost:1337/uploads/ica_slidebox_img_3_f35b6cc725.png)<h2 class="slide-title">What is Ionic Appflow?</h2><p><b>Ionic Appflow</b> is a powerful set of services and features built on top of Ionic Framework that brings a totally new level of app development agility to mobile dev teams.</p></ion-slide>\n\n', 'What is Ionic Appflow?', 'what-is-ionic-appflow'),
	(6, 1, 'es-ES', '2021-07-01 22:17:27', 1, 1, '2021-07-01 22:15:12', '2021-07-01 23:44:40', '<ion-slide class="md swiper-slide swiper-zoom-container hydrated swiper-slide-active" style="width: 400px;">![ica-slidebox-img-1.png](http://localhost:1337/uploads/ica_slidebox_img_1_dc88c52316.png)<h2 class="slide-title">Welcome to <b>ICA</b></h2><p>The <b>ionic conference app</b> is a practical preview of the ionic framework in action, and a demonstration of proper code use.</p></ion-slide>', 'Welcome', 'welcome-1'),
	(7, 2, 'es-ES', '2021-07-01 22:18:13', 1, 1, '2021-07-01 22:17:44', '2021-07-01 23:44:44', '![ica-slidebox-img-1.png](http://localhost:1337/uploads/ica_slidebox_img_1_dc88c52316.png)\n<ion-slide class="md swiper-slide swiper-zoom-container hydrated swiper-slide-active" style="width: 400px;"><img src="assets/img/ica-slidebox-img-1.png" alt="" class="slide-image"><h2 class="slide-title">Welcome to <b>ICA</b></h2><p>The <b>ionic conference app</b> is a practical preview of the ionic framework in action, and a demonstration of proper code use.</p></ion-slide>', 'What is Ionic?', 'what-is-ionic-1'),
	(8, 3, 'es-ES', '2021-07-01 22:18:15', 1, 1, '2021-07-01 22:17:54', '2021-07-01 23:44:56', '<ion-slide class="md swiper-slide swiper-zoom-container hydrated swiper-slide-active" style="width: 400px;">![ica-slidebox-img-3.png](http://localhost:1337/uploads/ica_slidebox_img_3_f35b6cc725.png)<h2 class="slide-title">What is Ionic Appflow?</h2><p><b>Ionic Appflow</b> is a powerful set of services and features built on top of Ionic Framework that brings a totally new level of app development agility to mobile dev teams.</p></ion-slide>\n\n\n', 'What is Ionic Appflow?', 'what-is-ionic-appflow-1');
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.tutorials__localizations
DROP TABLE IF EXISTS `tutorials__localizations`;
CREATE TABLE IF NOT EXISTS `tutorials__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tutorial_id` int(11) DEFAULT NULL,
  `related_tutorial_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.tutorials__localizations: ~6 rows (aproximadamente)
DELETE FROM `tutorials__localizations`;
/*!40000 ALTER TABLE `tutorials__localizations` DISABLE KEYS */;
INSERT INTO `tutorials__localizations` (`id`, `tutorial_id`, `related_tutorial_id`) VALUES
	(1, 6, 1),
	(2, 1, 6),
	(3, 7, 2),
	(4, 2, 7),
	(5, 8, 3),
	(6, 3, 8);
/*!40000 ALTER TABLE `tutorials__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.upload_file
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE IF NOT EXISTS `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.upload_file: ~14 rows (aproximadamente)
DELETE FROM `upload_file`;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(4, 'ionic-logo-white.svg', '', '', 512, 512, NULL, 'ionic_logo_white_77009e3471', '.svg', 'image/svg+xml', 0.64, '/uploads/ionic_logo_white_77009e3471.svg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:53:16'),
	(5, 'appicon.svg', '', '', 512, 512, NULL, 'appicon_21042e8ab7', '.svg', 'image/svg+xml', 0.66, '/uploads/appicon_21042e8ab7.svg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:53:16'),
	(6, 'ica-slidebox-img-1.png', '', '', 420, 420, '{"thumbnail":{"name":"thumbnail_ica-slidebox-img-1.png","hash":"thumbnail_ica_slidebox_img_1_dc88c52316","ext":".png","mime":"image/png","width":156,"height":156,"size":22.2,"path":null,"url":"/uploads/thumbnail_ica_slidebox_img_1_dc88c52316.png"}}', 'ica_slidebox_img_1_dc88c52316', '.png', 'image/png', 11.52, '/uploads/ica_slidebox_img_1_dc88c52316.png', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:53:16'),
	(7, 'ica-slidebox-img-3.png', '', '', 420, 420, '{"thumbnail":{"name":"thumbnail_ica-slidebox-img-3.png","hash":"thumbnail_ica_slidebox_img_3_f35b6cc725","ext":".png","mime":"image/png","width":156,"height":156,"size":14.59,"path":null,"url":"/uploads/thumbnail_ica_slidebox_img_3_f35b6cc725.png"}}', 'ica_slidebox_img_3_f35b6cc725', '.png', 'image/png', 9.09, '/uploads/ica_slidebox_img_3_f35b6cc725.png', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:53:16'),
	(8, 'ica-slidebox-img-2.png', '', '', 420, 420, '{"thumbnail":{"name":"thumbnail_ica-slidebox-img-2.png","hash":"thumbnail_ica_slidebox_img_2_d9f71fb3e0","ext":".png","mime":"image/png","width":156,"height":156,"size":12.16,"path":null,"url":"/uploads/thumbnail_ica_slidebox_img_2_d9f71fb3e0.png"}}', 'ica_slidebox_img_2_d9f71fb3e0', '.png', 'image/png', 8.15, '/uploads/ica_slidebox_img_2_d9f71fb3e0.png', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:53:16'),
	(9, 'appicon.png', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_appicon.png","hash":"thumbnail_appicon_a8c7c149ae","ext":".png","mime":"image/png","width":156,"height":156,"size":5.97,"path":null,"url":"/uploads/thumbnail_appicon_a8c7c149ae.png"},"small":{"name":"small_appicon.png","hash":"small_appicon_a8c7c149ae","ext":".png","mime":"image/png","width":500,"height":500,"size":30.9,"path":null,"url":"/uploads/small_appicon_a8c7c149ae.png"}}', 'appicon_a8c7c149ae', '.png', 'image/png', 12.77, '/uploads/appicon_a8c7c149ae.png', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:54:44'),
	(11, 'ica-slidebox-img-4.png', '', '', 420, 420, '{"thumbnail":{"name":"thumbnail_ica-slidebox-img-4.png","hash":"thumbnail_ica_slidebox_img_4_d0171b2cde","ext":".png","mime":"image/png","width":156,"height":156,"size":14,"path":null,"url":"/uploads/thumbnail_ica_slidebox_img_4_d0171b2cde.png"}}', 'ica_slidebox_img_4_d0171b2cde', '.png', 'image/png', 8.77, '/uploads/ica_slidebox_img_4_d0171b2cde.png', NULL, 'local', NULL, 1, 1, '2021-07-01 21:53:16', '2021-07-01 21:53:16'),
	(12, 'iguana.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_iguana.jpg","hash":"thumbnail_iguana_8a58e38459","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":7.09,"path":null,"url":"/uploads/thumbnail_iguana_8a58e38459.jpg"},"small":{"name":"small_iguana.jpg","hash":"small_iguana_8a58e38459","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":51.86,"path":null,"url":"/uploads/small_iguana_8a58e38459.jpg"}}', 'iguana_8a58e38459', '.jpg', 'image/jpeg', 48.99, '/uploads/iguana_8a58e38459.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23'),
	(13, 'giraffe.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_giraffe.jpg","hash":"thumbnail_giraffe_e362c1d2ae","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":9.04,"path":null,"url":"/uploads/thumbnail_giraffe_e362c1d2ae.jpg"},"small":{"name":"small_giraffe.jpg","hash":"small_giraffe_e362c1d2ae","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":57.56,"path":null,"url":"/uploads/small_giraffe_e362c1d2ae.jpg"}}', 'giraffe_e362c1d2ae', '.jpg', 'image/jpeg', 51.99, '/uploads/giraffe_e362c1d2ae.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23'),
	(14, 'puppy.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_puppy.jpg","hash":"thumbnail_puppy_ca0599f6d1","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":7.94,"path":null,"url":"/uploads/thumbnail_puppy_ca0599f6d1.jpg"},"small":{"name":"small_puppy.jpg","hash":"small_puppy_ca0599f6d1","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":48.12,"path":null,"url":"/uploads/small_puppy_ca0599f6d1.jpg"}}', 'puppy_ca0599f6d1', '.jpg', 'image/jpeg', 42.62, '/uploads/puppy_ca0599f6d1.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23'),
	(15, 'kitten.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_kitten.jpg","hash":"thumbnail_kitten_e430756c43","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":7.79,"path":null,"url":"/uploads/thumbnail_kitten_e430756c43.jpg"},"small":{"name":"small_kitten.jpg","hash":"small_kitten_e430756c43","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":60.93,"path":null,"url":"/uploads/small_kitten_e430756c43.jpg"}}', 'kitten_e430756c43', '.jpg', 'image/jpeg', 63.04, '/uploads/kitten_e430756c43.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23'),
	(16, 'mouse.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_mouse.jpg","hash":"thumbnail_mouse_98b3497f39","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":6.81,"path":null,"url":"/uploads/thumbnail_mouse_98b3497f39.jpg"},"small":{"name":"small_mouse.jpg","hash":"small_mouse_98b3497f39","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":49.7,"path":null,"url":"/uploads/small_mouse_98b3497f39.jpg"}}', 'mouse_98b3497f39', '.jpg', 'image/jpeg', 52.61, '/uploads/mouse_98b3497f39.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23'),
	(17, 'bear.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_bear.jpg","hash":"thumbnail_bear_5de75326ba","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":7.38,"path":null,"url":"/uploads/thumbnail_bear_5de75326ba.jpg"},"small":{"name":"small_bear.jpg","hash":"small_bear_5de75326ba","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":59.97,"path":null,"url":"/uploads/small_bear_5de75326ba.jpg"}}', 'bear_5de75326ba', '.jpg', 'image/jpeg', 63.60, '/uploads/bear_5de75326ba.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23'),
	(18, 'rabbit.jpg', '', '', 512, 512, '{"thumbnail":{"name":"thumbnail_rabbit.jpg","hash":"thumbnail_rabbit_77b4fd604b","ext":".jpg","mime":"image/jpeg","width":156,"height":156,"size":5.64,"path":null,"url":"/uploads/thumbnail_rabbit_77b4fd604b.jpg"},"small":{"name":"small_rabbit.jpg","hash":"small_rabbit_77b4fd604b","ext":".jpg","mime":"image/jpeg","width":500,"height":500,"size":45.29,"path":null,"url":"/uploads/small_rabbit_77b4fd604b.jpg"}}', 'rabbit_77b4fd604b', '.jpg', 'image/jpeg', 48.52, '/uploads/rabbit_77b4fd604b.jpg', NULL, 'local', NULL, 1, 1, '2021-07-01 21:56:23', '2021-07-01 21:56:23');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.upload_file_morph
DROP TABLE IF EXISTS `upload_file_morph`;
CREATE TABLE IF NOT EXISTS `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.upload_file_morph: ~9 rows (aproximadamente)
DELETE FROM `upload_file_morph`;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
	(26, 16, 5, 'users-permissions_user', 'userAvatar', 1),
	(32, 5, 1, 'components_row_types_app_images', 'image', 1),
	(33, 9, 2, 'components_row_types_app_images', 'image', 1),
	(35, 14, 3, 'users-permissions_user', 'userAvatar', 1),
	(36, 15, 1, 'users-permissions_user', 'userAvatar', 1),
	(37, 13, 4, 'users-permissions_user', 'userAvatar', 1),
	(38, 12, 2, 'users-permissions_user', 'userAvatar', 1),
	(39, 17, 6, 'users-permissions_user', 'userAvatar', 1),
	(41, 18, 7, 'users-permissions_user', 'userAvatar', 1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.users-permissions_permission
DROP TABLE IF EXISTS `users-permissions_permission`;
CREATE TABLE IF NOT EXISTS `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.users-permissions_permission: ~476 rows (aproximadamente)
DELETE FROM `users-permissions_permission`;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
	(1, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
	(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
	(3, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
	(4, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
	(5, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
	(6, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
	(7, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
	(8, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
	(9, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
	(10, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
	(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
	(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
	(13, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
	(14, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
	(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
	(16, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
	(17, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
	(18, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
	(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
	(20, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
	(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
	(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
	(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
	(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
	(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
	(26, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
	(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
	(28, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
	(29, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 1, NULL, NULL),
	(30, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 2, NULL, NULL),
	(31, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
	(32, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
	(33, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
	(34, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
	(35, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
	(36, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
	(37, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
	(38, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
	(39, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
	(40, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
	(41, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
	(42, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
	(43, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
	(44, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
	(45, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
	(46, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
	(47, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
	(48, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
	(49, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
	(50, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
	(51, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
	(52, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
	(53, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
	(54, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
	(55, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
	(56, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
	(57, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
	(58, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
	(59, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
	(60, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
	(61, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
	(62, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
	(63, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
	(64, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
	(65, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
	(66, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
	(67, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
	(68, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
	(69, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
	(70, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
	(71, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
	(72, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
	(73, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
	(74, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
	(75, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
	(76, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
	(77, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
	(78, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
	(79, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
	(80, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
	(81, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
	(82, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
	(83, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 1, NULL, NULL),
	(84, 'i18n', 'iso-locales', 'listisolocales', 0, '', 2, NULL, NULL),
	(85, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 2, NULL, NULL),
	(86, 'i18n', 'iso-locales', 'listisolocales', 0, '', 1, NULL, NULL),
	(87, 'i18n', 'locales', 'createlocale', 0, '', 1, NULL, NULL),
	(88, 'i18n', 'locales', 'createlocale', 0, '', 2, NULL, NULL),
	(89, 'i18n', 'locales', 'deletelocale', 0, '', 1, NULL, NULL),
	(90, 'i18n', 'locales', 'deletelocale', 0, '', 2, NULL, NULL),
	(91, 'i18n', 'locales', 'listlocales', 0, '', 1, NULL, NULL),
	(92, 'i18n', 'locales', 'listlocales', 0, '', 2, NULL, NULL),
	(93, 'i18n', 'locales', 'updatelocale', 0, '', 2, NULL, NULL),
	(94, 'i18n', 'locales', 'updatelocale', 0, '', 1, NULL, NULL),
	(95, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
	(96, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
	(97, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
	(98, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
	(99, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
	(100, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
	(101, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
	(102, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
	(103, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
	(104, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
	(105, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
	(106, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
	(107, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
	(108, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
	(109, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
	(110, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
	(111, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
	(112, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
	(113, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
	(114, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
	(115, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
	(116, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
	(117, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
	(118, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
	(119, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
	(120, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
	(121, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
	(122, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
	(123, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
	(124, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
	(125, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
	(126, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
	(127, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
	(128, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
	(129, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
	(130, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
	(131, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
	(132, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
	(133, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
	(134, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
	(135, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
	(136, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
	(137, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
	(138, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
	(139, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
	(140, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
	(141, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
	(142, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
	(143, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
	(144, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
	(145, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
	(146, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
	(147, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
	(148, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
	(149, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
	(150, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
	(151, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
	(152, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
	(153, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
	(154, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
	(155, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
	(156, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
	(157, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
	(158, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
	(159, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
	(160, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
	(161, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
	(162, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
	(163, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
	(164, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
	(165, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
	(166, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
	(167, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
	(168, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
	(169, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
	(170, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
	(171, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
	(172, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
	(173, 'comments', 'comments', 'blockcomment', 0, '', 1, NULL, NULL),
	(174, 'comments', 'comments', 'blockcomment', 0, '', 2, NULL, NULL),
	(175, 'comments', 'comments', 'blockcommentthread', 0, '', 1, NULL, NULL),
	(176, 'comments', 'comments', 'blockcommentthread', 0, '', 2, NULL, NULL),
	(177, 'comments', 'comments', 'config', 0, '', 1, NULL, NULL),
	(178, 'comments', 'comments', 'config', 0, '', 2, NULL, NULL),
	(179, 'comments', 'comments', 'findall', 0, '', 2, NULL, NULL),
	(180, 'comments', 'comments', 'contenttypename', 0, '', 1, NULL, NULL),
	(181, 'comments', 'comments', 'contenttypename', 0, '', 2, NULL, NULL),
	(182, 'comments', 'comments', 'findall', 0, '', 1, NULL, NULL),
	(183, 'comments', 'comments', 'findallinhierarchy', 0, '', 1, NULL, NULL),
	(184, 'comments', 'comments', 'findallflat', 0, '', 1, NULL, NULL),
	(185, 'comments', 'comments', 'findallflat', 0, '', 2, NULL, NULL),
	(186, 'comments', 'comments', 'findallinhierarchy', 0, '', 2, NULL, NULL),
	(187, 'comments', 'comments', 'findone', 0, '', 2, NULL, NULL),
	(188, 'comments', 'comments', 'getcontentstypes', 0, '', 1, NULL, NULL),
	(189, 'comments', 'comments', 'getcontentstypes', 0, '', 2, NULL, NULL),
	(190, 'comments', 'comments', 'getservice', 0, '', 1, NULL, NULL),
	(191, 'comments', 'comments', 'getservice', 0, '', 2, NULL, NULL),
	(192, 'comments', 'comments', 'findone', 0, '', 1, NULL, NULL),
	(193, 'comments', 'comments', 'pointsup', 0, '', 1, NULL, NULL),
	(194, 'comments', 'comments', 'pointsup', 0, '', 2, NULL, NULL),
	(195, 'comments', 'comments', 'post', 0, '', 1, NULL, NULL),
	(196, 'comments', 'comments', 'removecomment', 0, '', 1, NULL, NULL),
	(197, 'comments', 'comments', 'removecomment', 0, '', 2, NULL, NULL),
	(198, 'comments', 'comments', 'reportabuse', 0, '', 2, NULL, NULL),
	(199, 'comments', 'comments', 'post', 0, '', 2, NULL, NULL),
	(200, 'comments', 'comments', 'put', 0, '', 1, NULL, NULL),
	(201, 'comments', 'comments', 'put', 0, '', 2, NULL, NULL),
	(202, 'comments', 'comments', 'reportabuse', 0, '', 1, NULL, NULL),
	(203, 'comments', 'comments', 'resolveabusereport', 0, '', 1, NULL, NULL),
	(204, 'comments', 'comments', 'resolveabusereport', 0, '', 2, NULL, NULL),
	(205, 'navigation', 'navigation', 'config', 0, '', 1, NULL, NULL),
	(206, 'navigation', 'navigation', 'config', 0, '', 2, NULL, NULL),
	(207, 'navigation', 'navigation', 'get', 0, '', 1, NULL, NULL),
	(208, 'navigation', 'navigation', 'getbyid', 0, '', 1, NULL, NULL),
	(209, 'navigation', 'navigation', 'getbyid', 0, '', 2, NULL, NULL),
	(210, 'navigation', 'navigation', 'getservice', 0, '', 1, NULL, NULL),
	(211, 'navigation', 'navigation', 'get', 0, '', 2, NULL, NULL),
	(212, 'navigation', 'navigation', 'getservice', 0, '', 2, NULL, NULL),
	(213, 'navigation', 'navigation', 'post', 0, '', 2, NULL, NULL),
	(214, 'navigation', 'navigation', 'post', 0, '', 1, NULL, NULL),
	(215, 'navigation', 'navigation', 'put', 0, '', 1, NULL, NULL),
	(216, 'navigation', 'navigation', 'put', 0, '', 2, NULL, NULL),
	(217, 'navigation', 'navigation', 'render', 0, '', 2, NULL, NULL),
	(218, 'navigation', 'navigation', 'render', 0, '', 1, NULL, NULL),
	(219, 'application', 'features', 'count', 1, '', 1, NULL, NULL),
	(220, 'application', 'features', 'create', 1, '', 1, NULL, NULL),
	(221, 'application', 'features', 'create', 1, '', 2, NULL, NULL),
	(222, 'application', 'features', 'createlocalization', 1, '', 1, NULL, NULL),
	(223, 'application', 'features', 'createlocalization', 1, '', 2, NULL, NULL),
	(224, 'application', 'features', 'count', 1, '', 2, NULL, NULL),
	(225, 'application', 'features', 'delete', 1, '', 1, NULL, NULL),
	(226, 'application', 'features', 'delete', 1, '', 2, NULL, NULL),
	(227, 'application', 'features', 'find', 1, '', 1, NULL, NULL),
	(228, 'application', 'features', 'find', 1, '', 2, NULL, NULL),
	(229, 'application', 'features', 'findone', 1, '', 1, NULL, NULL),
	(230, 'application', 'features', 'findone', 1, '', 2, NULL, NULL),
	(231, 'application', 'features', 'update', 1, '', 1, NULL, NULL),
	(232, 'application', 'features', 'update', 1, '', 2, NULL, NULL),
	(233, 'application', 'access', 'count', 1, '', 1, NULL, NULL),
	(234, 'application', 'access', 'create', 1, '', 1, NULL, NULL),
	(235, 'application', 'access', 'create', 1, '', 2, NULL, NULL),
	(236, 'application', 'access', 'delete', 0, '', 1, NULL, NULL),
	(237, 'application', 'access', 'delete', 1, '', 2, NULL, NULL),
	(238, 'application', 'access', 'count', 1, '', 2, NULL, NULL),
	(239, 'application', 'access', 'find', 1, '', 1, NULL, NULL),
	(240, 'application', 'access', 'find', 1, '', 2, NULL, NULL),
	(241, 'application', 'access', 'findone', 1, '', 1, NULL, NULL),
	(242, 'application', 'access', 'findone', 1, '', 2, NULL, NULL),
	(243, 'application', 'access', 'update', 1, '', 2, NULL, NULL),
	(244, 'application', 'access', 'update', 1, '', 1, NULL, NULL),
	(245, 'application', 'settings', 'delete', 0, '', 1, NULL, NULL),
	(246, 'application', 'settings', 'delete', 0, '', 2, NULL, NULL),
	(247, 'application', 'settings', 'find', 1, '', 1, NULL, NULL),
	(248, 'application', 'settings', 'find', 1, '', 2, NULL, NULL),
	(249, 'application', 'settings', 'update', 0, '', 1, NULL, NULL),
	(250, 'application', 'settings', 'update', 0, '', 2, NULL, NULL),
	(251, 'documentation', 'documentation', 'deletedoc', 0, '', 1, NULL, NULL),
	(252, 'documentation', 'documentation', 'getinfos', 0, '', 1, NULL, NULL),
	(253, 'documentation', 'documentation', 'getinfos', 0, '', 2, NULL, NULL),
	(254, 'documentation', 'documentation', 'index', 0, '', 1, NULL, NULL),
	(255, 'documentation', 'documentation', 'index', 0, '', 2, NULL, NULL),
	(256, 'documentation', 'documentation', 'login', 0, '', 2, NULL, NULL),
	(257, 'documentation', 'documentation', 'deletedoc', 0, '', 2, NULL, NULL),
	(258, 'documentation', 'documentation', 'loginview', 0, '', 1, NULL, NULL),
	(259, 'documentation', 'documentation', 'loginview', 0, '', 2, NULL, NULL),
	(260, 'documentation', 'documentation', 'login', 0, '', 1, NULL, NULL),
	(261, 'documentation', 'documentation', 'regeneratedoc', 0, '', 2, NULL, NULL),
	(262, 'documentation', 'documentation', 'updatesettings', 0, '', 2, NULL, NULL),
	(263, 'documentation', 'documentation', 'regeneratedoc', 0, '', 1, NULL, NULL),
	(264, 'documentation', 'documentation', 'updatesettings', 0, '', 1, NULL, NULL),
	(265, 'application', 'translations', 'count', 1, '', 1, NULL, NULL),
	(266, 'application', 'translations', 'count', 1, '', 2, NULL, NULL),
	(267, 'application', 'translations', 'create', 0, '', 1, NULL, NULL),
	(268, 'application', 'translations', 'createlocalization', 1, '', 1, NULL, NULL),
	(269, 'application', 'translations', 'createlocalization', 1, '', 2, NULL, NULL),
	(270, 'application', 'translations', 'delete', 1, '', 1, NULL, NULL),
	(271, 'application', 'translations', 'delete', 0, '', 2, NULL, NULL),
	(272, 'application', 'translations', 'create', 0, '', 2, NULL, NULL),
	(273, 'application', 'translations', 'find', 1, '', 1, NULL, NULL),
	(274, 'application', 'translations', 'find', 1, '', 2, NULL, NULL),
	(275, 'application', 'translations', 'findone', 1, '', 1, NULL, NULL),
	(276, 'application', 'translations', 'findone', 1, '', 2, NULL, NULL),
	(277, 'application', 'translations', 'update', 0, '', 1, NULL, NULL),
	(278, 'application', 'translations', 'update', 0, '', 2, NULL, NULL),
	(279, 'application', 'account', 'updateuser', 1, '', 1, NULL, NULL),
	(280, 'application', 'account', 'updateuser', 1, '', 2, NULL, NULL),
	(281, 'application', 'connections', 'count', 1, '', 1, NULL, NULL),
	(282, 'application', 'connections', 'count', 1, '', 2, NULL, NULL),
	(283, 'application', 'connections', 'create', 1, '', 1, NULL, NULL),
	(284, 'application', 'connections', 'create', 1, '', 2, NULL, NULL),
	(285, 'application', 'connections', 'delete', 1, '', 1, NULL, NULL),
	(286, 'application', 'connections', 'delete', 1, '', 2, NULL, NULL),
	(287, 'application', 'connections', 'find', 1, '', 1, NULL, NULL),
	(288, 'application', 'connections', 'find', 1, '', 2, NULL, NULL),
	(289, 'application', 'connections', 'findone', 1, '', 1, NULL, NULL),
	(290, 'application', 'connections', 'findone', 1, '', 2, NULL, NULL),
	(291, 'application', 'connections', 'update', 1, '', 2, NULL, NULL),
	(292, 'application', 'connections', 'update', 1, '', 1, NULL, NULL),
	(293, 'application', 'support', 'createlocalization', 1, '', 1, NULL, NULL),
	(294, 'application', 'support', 'createlocalization', 1, '', 2, NULL, NULL),
	(295, 'application', 'support', 'delete', 1, '', 1, NULL, NULL),
	(296, 'application', 'support', 'delete', 1, '', 2, NULL, NULL),
	(297, 'application', 'support', 'find', 1, '', 1, NULL, NULL),
	(298, 'application', 'support', 'find', 1, '', 2, NULL, NULL),
	(299, 'application', 'support', 'update', 1, '', 1, NULL, NULL),
	(300, 'application', 'support', 'update', 1, '', 2, NULL, NULL),
	(301, 'application', 'tutorial', 'count', 1, '', 1, NULL, NULL),
	(302, 'application', 'tutorial', 'count', 1, '', 2, NULL, NULL),
	(303, 'application', 'tutorial', 'create', 0, '', 1, NULL, NULL),
	(304, 'application', 'tutorial', 'create', 1, '', 2, NULL, NULL),
	(305, 'application', 'tutorial', 'createlocalization', 1, '', 1, NULL, NULL),
	(306, 'application', 'tutorial', 'createlocalization', 1, '', 2, NULL, NULL),
	(307, 'application', 'tutorial', 'delete', 0, '', 1, NULL, NULL),
	(308, 'application', 'tutorial', 'delete', 0, '', 2, NULL, NULL),
	(309, 'application', 'tutorial', 'find', 1, '', 1, NULL, NULL),
	(310, 'application', 'tutorial', 'find', 1, '', 2, NULL, NULL),
	(311, 'application', 'tutorial', 'findone', 1, '', 1, NULL, NULL),
	(312, 'application', 'tutorial', 'findone', 1, '', 2, NULL, NULL),
	(313, 'application', 'tutorial', 'update', 0, '', 1, NULL, NULL),
	(314, 'application', 'tutorial', 'update', 0, '', 2, NULL, NULL),
	(315, 'application', 'roadmap', 'count', 0, '', 1, NULL, NULL),
	(316, 'application', 'roadmap', 'count', 1, '', 2, NULL, NULL),
	(317, 'application', 'roadmap', 'create', 0, '', 1, NULL, NULL),
	(318, 'application', 'roadmap', 'create', 1, '', 2, NULL, NULL),
	(319, 'application', 'roadmap', 'createlocalization', 0, '', 1, NULL, NULL),
	(320, 'application', 'roadmap', 'createlocalization', 1, '', 2, NULL, NULL),
	(321, 'application', 'roadmap', 'delete', 0, '', 1, NULL, NULL),
	(322, 'application', 'roadmap', 'delete', 1, '', 2, NULL, NULL),
	(323, 'application', 'roadmap', 'find', 0, '', 1, NULL, NULL),
	(324, 'application', 'roadmap', 'find', 1, '', 2, NULL, NULL),
	(325, 'application', 'roadmap', 'findone', 0, '', 1, NULL, NULL),
	(326, 'application', 'roadmap', 'update', 0, '', 1, NULL, NULL),
	(327, 'application', 'roadmap', 'findone', 1, '', 2, NULL, NULL),
	(328, 'application', 'roadmap', 'update', 1, '', 2, NULL, NULL),
	(329, 'application', 'products', 'count', 1, '', 1, NULL, NULL),
	(330, 'application', 'products', 'count', 1, '', 2, NULL, NULL),
	(331, 'application', 'products', 'create', 0, '', 1, NULL, NULL),
	(332, 'application', 'products', 'create', 1, '', 2, NULL, NULL),
	(333, 'application', 'products', 'createlocalization', 1, '', 2, NULL, NULL),
	(334, 'application', 'products', 'delete', 0, '', 1, NULL, NULL),
	(335, 'application', 'products', 'delete', 1, '', 2, NULL, NULL),
	(336, 'application', 'products', 'find', 1, '', 1, NULL, NULL),
	(337, 'application', 'products', 'createlocalization', 0, '', 1, NULL, NULL),
	(338, 'application', 'products', 'find', 1, '', 2, NULL, NULL),
	(339, 'application', 'products', 'findone', 1, '', 1, NULL, NULL),
	(340, 'application', 'products', 'findone', 1, '', 2, NULL, NULL),
	(341, 'application', 'products', 'update', 0, '', 1, NULL, NULL),
	(342, 'application', 'products', 'update', 1, '', 2, NULL, NULL),
	(343, 'application', 'locations', 'count', 0, '', 1, NULL, NULL),
	(344, 'application', 'locations', 'count', 1, '', 2, NULL, NULL),
	(345, 'application', 'locations', 'create', 1, '', 2, NULL, NULL),
	(346, 'application', 'locations', 'delete', 0, '', 1, NULL, NULL),
	(347, 'application', 'locations', 'delete', 0, '', 2, NULL, NULL),
	(348, 'application', 'locations', 'find', 0, '', 1, NULL, NULL),
	(349, 'application', 'locations', 'create', 1, '', 1, NULL, NULL),
	(350, 'application', 'locations', 'find', 1, '', 2, NULL, NULL),
	(351, 'application', 'locations', 'findone', 0, '', 1, NULL, NULL),
	(352, 'application', 'locations', 'findone', 1, '', 2, NULL, NULL),
	(353, 'application', 'locations', 'update', 1, '', 1, NULL, NULL),
	(354, 'application', 'locations', 'update', 1, '', 2, NULL, NULL),
	(355, 'application', 'places', 'count', 1, '', 1, NULL, NULL),
	(356, 'application', 'places', 'count', 1, '', 2, NULL, NULL),
	(357, 'application', 'places', 'create', 1, '', 1, NULL, NULL),
	(358, 'application', 'places', 'create', 1, '', 2, NULL, NULL),
	(359, 'application', 'places', 'delete', 1, '', 1, NULL, NULL),
	(360, 'application', 'places', 'delete', 1, '', 2, NULL, NULL),
	(361, 'application', 'places', 'find', 1, '', 1, NULL, NULL),
	(362, 'application', 'places', 'find', 1, '', 2, NULL, NULL),
	(363, 'application', 'places', 'findone', 1, '', 1, NULL, NULL),
	(364, 'application', 'places', 'findone', 1, '', 2, NULL, NULL),
	(365, 'application', 'places', 'update', 1, '', 1, NULL, NULL),
	(366, 'application', 'places', 'update', 1, '', 2, NULL, NULL),
	(375, 'application', 'places', 'createlocalization', 1, '', 1, NULL, NULL),
	(376, 'application', 'places', 'createlocalization', 1, '', 2, NULL, NULL),
	(377, 'application', 'forms', 'count', 1, '', 1, NULL, NULL),
	(378, 'application', 'forms', 'count', 1, '', 2, NULL, NULL),
	(379, 'application', 'forms', 'create', 0, '', 1, NULL, NULL),
	(380, 'application', 'forms', 'create', 0, '', 2, NULL, NULL),
	(381, 'application', 'forms', 'delete', 0, '', 1, NULL, NULL),
	(382, 'application', 'forms', 'find', 1, '', 1, NULL, NULL),
	(383, 'application', 'forms', 'find', 1, '', 2, NULL, NULL),
	(384, 'application', 'forms', 'findone', 1, '', 1, NULL, NULL),
	(385, 'application', 'forms', 'delete', 0, '', 2, NULL, NULL),
	(386, 'application', 'forms', 'findone', 1, '', 2, NULL, NULL),
	(387, 'application', 'forms', 'update', 0, '', 1, NULL, NULL),
	(388, 'application', 'forms', 'update', 0, '', 2, NULL, NULL),
	(389, 'application', 'fields', 'count', 1, '', 1, NULL, NULL),
	(390, 'application', 'fields', 'create', 0, '', 1, NULL, NULL),
	(391, 'application', 'fields', 'create', 1, '', 2, NULL, NULL),
	(394, 'application', 'fields', 'delete', 0, '', 1, NULL, NULL),
	(395, 'application', 'fields', 'count', 1, '', 2, NULL, NULL),
	(396, 'application', 'fields', 'delete', 0, '', 2, NULL, NULL),
	(397, 'application', 'fields', 'find', 1, '', 1, NULL, NULL),
	(398, 'application', 'fields', 'find', 1, '', 2, NULL, NULL),
	(399, 'application', 'fields', 'findone', 1, '', 1, NULL, NULL),
	(400, 'application', 'fields', 'findone', 1, '', 2, NULL, NULL),
	(401, 'application', 'fields', 'update', 0, '', 1, NULL, NULL),
	(402, 'application', 'fields', 'update', 0, '', 2, NULL, NULL),
	(405, 'application', 'buttons', 'count', 1, '', 1, NULL, NULL),
	(406, 'application', 'buttons', 'count', 1, '', 2, NULL, NULL),
	(407, 'application', 'buttons', 'create', 0, '', 1, NULL, NULL),
	(408, 'application', 'buttons', 'create', 0, '', 2, NULL, NULL),
	(409, 'application', 'buttons', 'delete', 0, '', 2, NULL, NULL),
	(410, 'application', 'buttons', 'find', 1, '', 1, NULL, NULL),
	(411, 'application', 'buttons', 'find', 1, '', 2, NULL, NULL),
	(412, 'application', 'buttons', 'delete', 0, '', 1, NULL, NULL),
	(413, 'application', 'buttons', 'findone', 1, '', 1, NULL, NULL),
	(414, 'application', 'buttons', 'findone', 1, '', 2, NULL, NULL),
	(415, 'application', 'buttons', 'update', 0, '', 1, NULL, NULL),
	(416, 'application', 'buttons', 'update', 0, '', 2, NULL, NULL),
	(417, 'application', 'buttons', 'createlocalization', 0, '', 1, NULL, NULL),
	(418, 'application', 'buttons', 'createlocalization', 0, '', 2, NULL, NULL),
	(419, 'application', 'support', 'count', 1, '', 2, NULL, NULL),
	(420, 'application', 'support', 'create', 1, '', 1, NULL, NULL),
	(421, 'application', 'support', 'create', 1, '', 2, NULL, NULL),
	(422, 'application', 'support', 'findone', 0, '', 1, NULL, NULL),
	(423, 'application', 'support', 'count', 0, '', 1, NULL, NULL),
	(424, 'application', 'support', 'findone', 0, '', 2, NULL, NULL),
	(425, 'application', 'match', 'count', 1, '', 1, NULL, NULL),
	(426, 'application', 'match', 'count', 1, '', 2, NULL, NULL),
	(427, 'application', 'match', 'create', 0, '', 1, NULL, NULL),
	(428, 'application', 'match', 'create', 1, '', 2, NULL, NULL),
	(429, 'application', 'match', 'delete', 0, '', 1, NULL, NULL),
	(430, 'application', 'match', 'delete', 0, '', 2, NULL, NULL),
	(431, 'application', 'match', 'find', 0, '', 1, NULL, NULL),
	(432, 'application', 'match', 'findone', 1, '', 1, NULL, NULL),
	(433, 'application', 'match', 'find', 1, '', 2, NULL, NULL),
	(434, 'application', 'match', 'findone', 1, '', 2, NULL, NULL),
	(435, 'application', 'match', 'update', 0, '', 1, NULL, NULL),
	(436, 'application', 'match', 'update', 1, '', 2, NULL, NULL),
	(437, 'application', 'about', 'delete', 0, '', 1, NULL, NULL),
	(438, 'application', 'about', 'delete', 0, '', 2, NULL, NULL),
	(439, 'application', 'about', 'find', 0, '', 1, NULL, NULL),
	(440, 'application', 'about', 'find', 1, '', 2, NULL, NULL),
	(441, 'application', 'about', 'update', 0, '', 1, NULL, NULL),
	(442, 'application', 'about', 'update', 0, '', 2, NULL, NULL),
	(443, 'application', 'menu', 'count', 1, '', 1, NULL, NULL),
	(444, 'application', 'menu', 'count', 1, '', 2, NULL, NULL),
	(445, 'application', 'menu', 'create', 0, '', 2, NULL, NULL),
	(446, 'application', 'menu', 'delete', 0, '', 1, NULL, NULL),
	(447, 'application', 'menu', 'delete', 0, '', 2, NULL, NULL),
	(448, 'application', 'menu', 'find', 1, '', 1, NULL, NULL),
	(449, 'application', 'menu', 'find', 1, '', 2, NULL, NULL),
	(450, 'application', 'menu', 'findone', 1, '', 1, NULL, NULL),
	(451, 'application', 'menu', 'create', 0, '', 1, NULL, NULL),
	(452, 'application', 'menu', 'findone', 1, '', 2, NULL, NULL),
	(453, 'application', 'menu', 'update', 0, '', 1, NULL, NULL),
	(454, 'application', 'menu', 'update', 0, '', 2, NULL, NULL),
	(455, 'application', 'areas', 'count', 1, '', 1, NULL, NULL),
	(456, 'application', 'areas', 'count', 1, '', 2, NULL, NULL),
	(457, 'application', 'areas', 'create', 0, '', 1, NULL, NULL),
	(458, 'application', 'areas', 'create', 0, '', 2, NULL, NULL),
	(459, 'application', 'areas', 'delete', 0, '', 1, NULL, NULL),
	(460, 'application', 'areas', 'delete', 0, '', 2, NULL, NULL),
	(461, 'application', 'areas', 'find', 1, '', 1, NULL, NULL),
	(462, 'application', 'areas', 'find', 1, '', 2, NULL, NULL),
	(463, 'application', 'areas', 'findone', 1, '', 1, NULL, NULL),
	(464, 'application', 'areas', 'findone', 1, '', 2, NULL, NULL),
	(465, 'application', 'areas', 'update', 0, '', 1, NULL, NULL),
	(466, 'application', 'areas', 'update', 0, '', 2, NULL, NULL),
	(467, 'application', 'page', 'count', 1, '', 1, NULL, NULL),
	(468, 'application', 'page', 'count', 1, '', 2, NULL, NULL),
	(469, 'application', 'page', 'create', 0, '', 1, NULL, NULL),
	(470, 'application', 'page', 'create', 0, '', 2, NULL, NULL),
	(471, 'application', 'page', 'delete', 0, '', 1, NULL, NULL),
	(472, 'application', 'page', 'delete', 0, '', 2, NULL, NULL),
	(473, 'application', 'page', 'find', 1, '', 1, NULL, NULL),
	(474, 'application', 'page', 'findone', 1, '', 1, NULL, NULL),
	(475, 'application', 'page', 'find', 1, '', 2, NULL, NULL),
	(476, 'application', 'page', 'findone', 1, '', 2, NULL, NULL),
	(477, 'application', 'page', 'update', 0, '', 1, NULL, NULL),
	(478, 'application', 'page', 'update', 0, '', 2, NULL, NULL),
	(479, 'application', 'feedback', 'count', 1, '', 1, NULL, NULL),
	(480, 'application', 'feedback', 'count', 1, '', 2, NULL, NULL),
	(481, 'application', 'feedback', 'create', 1, '', 1, NULL, NULL),
	(482, 'application', 'feedback', 'create', 1, '', 2, NULL, NULL),
	(483, 'application', 'feedback', 'delete', 0, '', 1, NULL, NULL),
	(484, 'application', 'feedback', 'delete', 0, '', 2, NULL, NULL),
	(485, 'application', 'feedback', 'find', 1, '', 1, NULL, NULL),
	(486, 'application', 'feedback', 'find', 1, '', 2, NULL, NULL),
	(487, 'application', 'feedback', 'findone', 1, '', 1, NULL, NULL),
	(488, 'application', 'feedback', 'findone', 1, '', 2, NULL, NULL),
	(489, 'application', 'feedback', 'update', 0, '', 1, NULL, NULL),
	(490, 'application', 'feedback', 'update', 1, '', 2, NULL, NULL),
	(491, 'application', 'publication', 'count', 1, '', 1, NULL, NULL),
	(492, 'application', 'publication', 'create', 0, '', 1, NULL, NULL),
	(493, 'application', 'publication', 'create', 0, '', 2, NULL, NULL),
	(494, 'application', 'publication', 'delete', 0, '', 1, NULL, NULL),
	(495, 'application', 'publication', 'delete', 0, '', 2, NULL, NULL),
	(496, 'application', 'publication', 'find', 1, '', 1, NULL, NULL),
	(497, 'application', 'publication', 'count', 1, '', 2, NULL, NULL),
	(498, 'application', 'publication', 'find', 1, '', 2, NULL, NULL),
	(499, 'application', 'publication', 'findone', 1, '', 1, NULL, NULL),
	(500, 'application', 'publication', 'findone', 1, '', 2, NULL, NULL),
	(501, 'application', 'publication', 'update', 0, '', 1, NULL, NULL),
	(502, 'application', 'publication', 'update', 0, '', 2, NULL, NULL),
	(503, 'application', 'menu-item', 'count', 1, '', 1, NULL, NULL),
	(504, 'application', 'menu-item', 'count', 1, '', 2, NULL, NULL),
	(505, 'application', 'menu-item', 'create', 0, '', 1, NULL, NULL),
	(506, 'application', 'menu-item', 'delete', 0, '', 1, NULL, NULL),
	(507, 'application', 'menu-item', 'delete', 0, '', 2, NULL, NULL),
	(508, 'application', 'menu-item', 'find', 1, '', 1, NULL, NULL),
	(509, 'application', 'menu-item', 'find', 1, '', 2, NULL, NULL),
	(510, 'application', 'menu-item', 'findone', 1, '', 1, NULL, NULL),
	(511, 'application', 'menu-item', 'create', 0, '', 2, NULL, NULL),
	(512, 'application', 'menu-item', 'findone', 1, '', 2, NULL, NULL),
	(513, 'application', 'menu-item', 'update', 0, '', 1, NULL, NULL),
	(514, 'application', 'menu-item', 'update', 0, '', 2, NULL, NULL),
	(515, 'application', 'paths', 'count', 1, '', 1, NULL, NULL),
	(516, 'application', 'paths', 'create', 0, '', 1, NULL, NULL),
	(517, 'application', 'paths', 'create', 0, '', 2, NULL, NULL),
	(518, 'application', 'paths', 'delete', 0, '', 1, NULL, NULL),
	(519, 'application', 'paths', 'delete', 0, '', 2, NULL, NULL),
	(520, 'application', 'paths', 'find', 1, '', 1, NULL, NULL),
	(521, 'application', 'paths', 'count', 1, '', 2, NULL, NULL),
	(522, 'application', 'paths', 'find', 1, '', 2, NULL, NULL),
	(523, 'application', 'paths', 'findone', 1, '', 1, NULL, NULL),
	(524, 'application', 'paths', 'findone', 1, '', 2, NULL, NULL),
	(525, 'application', 'paths', 'update', 0, '', 1, NULL, NULL),
	(526, 'application', 'paths', 'update', 0, '', 2, NULL, NULL),
	(527, 'application', 'component', 'count', 0, '', 2, NULL, NULL),
	(528, 'application', 'component', 'create', 0, '', 1, NULL, NULL),
	(529, 'application', 'component', 'create', 0, '', 2, NULL, NULL),
	(530, 'application', 'component', 'delete', 0, '', 1, NULL, NULL),
	(531, 'application', 'component', 'count', 0, '', 1, NULL, NULL),
	(532, 'application', 'component', 'delete', 0, '', 2, NULL, NULL),
	(533, 'application', 'component', 'find', 0, '', 1, NULL, NULL),
	(534, 'application', 'component', 'find', 0, '', 2, NULL, NULL),
	(535, 'application', 'component', 'findone', 0, '', 1, NULL, NULL),
	(536, 'application', 'component', 'findone', 0, '', 2, NULL, NULL),
	(537, 'application', 'component', 'update', 0, '', 2, NULL, NULL),
	(538, 'application', 'component', 'update', 0, '', 1, NULL, NULL),
	(539, 'application', 'event', 'count', 0, '', 2, NULL, NULL),
	(540, 'application', 'event', 'create', 0, '', 1, NULL, NULL),
	(541, 'application', 'event', 'create', 0, '', 2, NULL, NULL),
	(542, 'application', 'event', 'delete', 0, '', 1, NULL, NULL),
	(543, 'application', 'event', 'count', 0, '', 1, NULL, NULL),
	(544, 'application', 'event', 'delete', 0, '', 2, NULL, NULL),
	(545, 'application', 'event', 'find', 0, '', 1, NULL, NULL),
	(546, 'application', 'event', 'find', 0, '', 2, NULL, NULL),
	(547, 'application', 'event', 'findone', 0, '', 1, NULL, NULL),
	(548, 'application', 'event', 'findone', 0, '', 2, NULL, NULL),
	(549, 'application', 'event', 'update', 0, '', 1, NULL, NULL),
	(550, 'application', 'event', 'update', 0, '', 2, NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.users-permissions_role
DROP TABLE IF EXISTS `users-permissions_role`;
CREATE TABLE IF NOT EXISTS `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL,
  `menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.users-permissions_role: ~2 rows (aproximadamente)
DELETE FROM `users-permissions_role`;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`, `menu`, `menu_item`) VALUES
	(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL, NULL, NULL),
	(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.users-permissions_user
DROP TABLE IF EXISTS `users-permissions_user`;
CREATE TABLE IF NOT EXISTS `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `darkModeEnabled` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `terms` tinyint(1) DEFAULT NULL,
  `privacy` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`),
  UNIQUE KEY `users_permissions_user_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.users-permissions_user: ~7 rows (aproximadamente)
DELETE FROM `users-permissions_user`;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmationToken`, `confirmed`, `blocked`, `role`, `created_by`, `updated_by`, `created_at`, `updated_at`, `darkModeEnabled`, `slug`, `terms`, `privacy`) VALUES
	(1, 'Cat Honey', 'us@us.com', 'local', '$2a$10$jobzXQd5hjRvgvCA6xSp9eHUscFTRWFH58V2KeRVMioeYoWbZIM1O', NULL, NULL, 1, 0, 1, 1, 1, '2021-06-16 23:39:43', '2021-09-02 00:24:01', 0, 'cat-honey', NULL, NULL),
	(2, 'Lizarddddd', 'someone@gmail.com', 'local', '$2a$10$Xpo4CHFjETzHue7itRk3/uYWpbkkDUt4r5XOj5OsVm26n64EwnNsC', NULL, NULL, 1, 0, 1, 1, 1, '2021-06-21 01:08:57', '2021-09-02 00:24:14', 0, 'lizarddddd', NULL, NULL),
	(3, 'Doggy', 'sadf@asdfsd.com', 'local', '$2a$10$HO6qp/qgG2A5dyULfxL/b.MINeIQ0ufq.B8LY3928j0Ms/MKk.sTm', NULL, NULL, 1, 0, 1, 1, 1, '2021-06-21 01:11:04', '2021-09-02 00:23:30', 1, 'dogy-the-dog', NULL, NULL),
	(4, 'Girafo', 'circadian1.0v@gmail.com', 'local', '$2a$10$njIU81jUJYdR6suS/xFJW.pOyYJW4B5LJyGaOvM42ji7oE1tP0p8.', NULL, NULL, 1, 0, 1, 1, 1, '2021-06-21 01:25:50', '2021-09-02 00:24:09', 0, 'girafo', NULL, NULL),
	(5, 'Mousy', 'mousy@asdfsaa.com', 'local', '$2a$10$PjRQMlGLSD7i7auRtdTPW.0zjP6NU3gn7tK2IIwLaj6XCoeqtZrjm', NULL, NULL, 1, 0, 1, 1, 1, '2021-07-01 21:58:36', '2021-07-01 22:02:35', 1, 'mousy', NULL, NULL),
	(6, 'Osus Pardus', 'aursuly@loqui.com', 'local', '$2a$10$Vist6Ab2M4ZSzRCv8SetjOEDWIaAU7y1JQZevr3EaqITN9g2H9E.a', NULL, NULL, 1, 0, 1, 1, 1, '2021-07-01 21:59:09', '2021-09-02 00:24:19', 0, 'osus-pardus', NULL, NULL),
	(7, 'Bunny', 'bunny@bang.com', 'local', '$2a$10$FWCoJj30wmJtxHZfXrnzA.r4W0PEs7pkZSd2CZVmU4h34aTL6dL4C', NULL, NULL, 1, 0, 1, 1, 1, '2021-07-01 21:59:41', '2021-09-07 19:28:54', 1, 'bunny', NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
