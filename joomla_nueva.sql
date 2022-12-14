-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2022 a las 01:57:50
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `joomla_nueva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_action_logs`
--

CREATE TABLE `i63fc_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_action_logs`
--

INSERT INTO `i63fc_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-11-23 17:20:36', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10003\",\"name\":\"plg_system_kunena\",\"extension_name\":\"plg_system_kunena\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:21:49', 'com_installer', 691, 10003, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10004\",\"name\":\"plg_quickicon_kunena\",\"extension_name\":\"plg_quickicon_kunena\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:21:49', 'com_installer', 691, 10004, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10005\",\"name\":\"Kunena Framework\",\"extension_name\":\"Kunena Framework\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:21:49', 'com_installer', 691, 10005, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FILE\",\"id\":\"10006\",\"name\":\"Kunena Media Files\",\"extension_name\":\"Kunena Media Files\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:21:49', 'com_installer', 691, 10006, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10007\",\"name\":\"com_kunena\",\"extension_name\":\"com_kunena\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:21:49', 'com_installer', 691, 10007, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:33:45', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:33:54', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:33:57', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:35:19', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:36:40', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:37:21', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":126,\"title\":\"Foro\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=126\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:37:21', 'com_menus.item', 691, 126, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":126,\"title\":\"FORO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=126\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:37:47', 'com_menus.item', 691, 126, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:37:47', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"INICIO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:38:17', 'com_menus.item', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:38:17', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Menu Principal\",\"extension_name\":\"Menu Principal\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:40:10', 'com_modules.module', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:40:10', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:40:58', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo-black_1.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:41:48', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":7,\"title\":\"protostar - Default\",\"extension_name\":\"protostar - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:41:59', 'com_templates.style', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":7,\"title\":\"protostar - Default\",\"extension_name\":\"protostar - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:42:23', 'com_templates.style', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:42:40', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Breadcrumbs\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:42:40', 'com_modules.module', 691, 17, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Inicio de sesi\\u00f3n\",\"extension_name\":\"Inicio de sesi\\u00f3n\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:43:18', 'com_modules.module', 691, 16, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:43:18', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:43:57', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:43:58', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:44:08', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 17:44:19', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":126,\"title\":\"FORO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=126\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:48:05', 'com_menus.item', 691, 126, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:48:05', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Foro\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:48:49', 'com_menus.item', 691, 116, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:48:49', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Foro\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:48:53', 'com_menus.item', 691, 116, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:49:07', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Buscar\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:49:07', 'com_menus.item', 691, 125, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:50:41', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"8\",\"title\":\"PAPERS\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:51:11', 'com_categories.category', 691, 8, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"PAPERS\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:51:13', 'com_categories.category', 691, 8, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__categories\"}', '2022-11-23 17:51:13', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"9\",\"title\":\"INFORMACI\\u00d3N ACAD\\u00c9MICA\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:51:37', 'com_categories.category', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:51:57', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Breadcrumbs\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:51:57', 'com_modules.module', 691, 17, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:52:03', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:52:47', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__kunena_categories\"}', '2022-11-23 17:52:55', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 17:53:34', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":126,\"title\":\"FORO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=126\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:53:56', 'com_menus.item', 691, 126, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:53:56', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10020\",\"name\":\"COM_JEVENTS\",\"extension_name\":\"COM_JEVENTS\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10020, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10021\",\"name\":\"MOD_JEV_CALENDAR_TITLE\",\"extension_name\":\"MOD_JEV_CALENDAR_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10021, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10022\",\"name\":\"MOD_JEV_LEGEND_TITLE\",\"extension_name\":\"MOD_JEV_LEGEND_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10022, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10023\",\"name\":\"MOD_JEV_LATEST_EVENTS_TITLE\",\"extension_name\":\"MOD_JEV_LATEST_EVENTS_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10023, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10024\",\"name\":\"MOD_JEV_FILTER_MODULE_TITLE\",\"extension_name\":\"MOD_JEV_FILTER_MODULE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10024, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10025\",\"name\":\"MOD_JEV_CUSTOM_MODULE_TITLE\",\"extension_name\":\"MOD_JEV_CUSTOM_MODULE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10025, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10026\",\"name\":\"MOD_JEV_SWITCH_VIEW_TITLE\",\"extension_name\":\"MOD_JEV_SWITCH_VIEW_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10026, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10027\",\"name\":\"MOD_JEV_DASHBOARD_MODULE_TITLE\",\"extension_name\":\"MOD_JEV_DASHBOARD_MODULE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10027, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10028\",\"name\":\"PLG_FINDER_JEVENTS\",\"extension_name\":\"PLG_FINDER_JEVENTS\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10028, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10029\",\"name\":\"PLG_JEV_SEARCH_TITLE\",\"extension_name\":\"PLG_JEV_SEARCH_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10029, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10030\",\"name\":\"plg_installer_jeventsinstaller\",\"extension_name\":\"plg_installer_jeventsinstaller\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10030, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10031\",\"name\":\"PLG_JEV_CORE_CONTENT_PLUGIN_TITLE\",\"extension_name\":\"PLG_JEV_CORE_CONTENT_PLUGIN_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10031, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10032\",\"name\":\"JEvents - Action Log\",\"extension_name\":\"JEvents - Action Log\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10032, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10033\",\"name\":\"PLG_SYSTEM_GWEJSON\",\"extension_name\":\"PLG_SYSTEM_GWEJSON\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10033, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10034\",\"name\":\"googl Shortener\",\"extension_name\":\"googl Shortener\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10034, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10035\",\"name\":\"JEvents - Bootstrap Modal Library\",\"extension_name\":\"JEvents - Bootstrap Modal Library\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10035, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10036\",\"name\":\"JEvents - Typeahead Library\",\"extension_name\":\"JEvents - Typeahead Library\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10036, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10037\",\"name\":\"JEV_PACKAGE_TITLE\",\"extension_name\":\"JEV_PACKAGE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:21', 'com_installer', 691, 10037, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:55:44', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":94,\"title\":\"JEvents - Custom Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=94\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:44', 'com_modules.module', 691, 94, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"JEvents - Calendar Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:51', 'com_modules.module', 691, 90, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":91,\"title\":\"JEvents - Legend Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=91\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:51', 'com_modules.module', 691, 91, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":92,\"title\":\"JEvents - Latest Events Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=92\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:51', 'com_modules.module', 691, 92, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":93,\"title\":\"JEvents - Filter Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=93\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:51', 'com_modules.module', 691, 93, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":95,\"title\":\"JEvents - Switch View Module\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=95\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:55:51', 'com_modules.module', 691, 95, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:56:44', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:56:49', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":124,\"title\":\"Ayuda\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=124\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:56:49', 'com_menus.item', 691, 124, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"139\",\"title\":\"EVENTOS FUTUROS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=139\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:58:05', 'com_menus.item', 691, 139, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 17:59:13', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":139,\"title\":\"EVENTOS FUTUROS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=139\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 17:59:49', 'com_menus.item', 691, 139, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 17:59:49', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:00:11', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"140\",\"title\":\"INFORMACI\\u00d3N ACAD\\u00c9MICA\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=140\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:10:08', 'com_menus.item', 691, 140, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:20:49', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:20:50', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"141\",\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=141\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:20:54', 'com_menus.item', 691, 141, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"404809497ce3dfa0d277f690f59d4d40d9b7.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:21:30', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"38727_0xh.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:21:38', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"800px-LogoUCSE.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:22:18', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo-fi-unju-folleteria-vertical-1071x696.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:22:18', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:22:42', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:22:42', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:23:05', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:23:05', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:24:12', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:24:12', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:24:42', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:24:42', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:24:51', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:24:51', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:25:41', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:25:41', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:25:57', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:25:57', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:26:27', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:26:27', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:26:52', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:26:52', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:27:10', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:27:10', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:27:41', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:27:41', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":141,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=141\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:27:54', 'com_menus.item', 691, 141, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:27:54', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":141,\"title\":\"UNJU\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=141\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:28:34', 'com_menus.item', 691, 141, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:28:34', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `i63fc_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(119, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:32:39', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:32:41', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"142\",\"title\":\"UCSE\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=142\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:32:43', 'com_menus.item', 691, 142, 'COM_ACTIONLOGS_DISABLED'),
(122, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":142,\"title\":\"UCSE\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=142\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:32:54', 'com_menus.item', 691, 142, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:32:54', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(124, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:34:16', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:34:16', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(126, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:34:31', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(127, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:34:31', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(128, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:34:52', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(129, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:34:52', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(130, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":22,\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=22\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:35:30', 'com_config.component', 691, 22, 'COM_ACTIONLOGS_DISABLED'),
(131, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:35:48', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(132, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:35:48', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(133, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:36:37', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(134, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:36:37', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(135, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:37:24', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(136, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:37:24', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(137, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:37:44', 'com_content.article', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(138, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:37:44', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(139, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:38:17', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(140, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:38:17', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(141, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:38:40', 'com_content.article', 691, 2, 'COM_ACTIONLOGS_DISABLED'),
(142, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:38:40', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(143, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"INICIO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:41:23', 'com_content.article', 691, 3, 'COM_ACTIONLOGS_DISABLED'),
(144, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:41:25', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(145, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"INICIO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:41:27', 'com_menus.item', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(146, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:41:27', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(147, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"FRAU: MUJERES EN CIENCIA Y TECNOLOG\\u00cdA\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:42:08', 'com_menus.item', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(148, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:42:08', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(149, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"INICIO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:42:42', 'com_menus.item', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(150, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:42:42', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(151, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"pexels-cowomen-2041398.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:43:14', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(152, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"pexels-mikhail-nilov-9241716.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:43:26', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(153, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"FRAU: MUJERES EN CIENCIA Y TECNOLOG\\u00cdA\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:44:15', 'com_content.article', 691, 3, 'COM_ACTIONLOGS_DISABLED'),
(154, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:44:15', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(155, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":22,\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=22\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:44:37', 'com_config.component', 691, 22, 'COM_ACTIONLOGS_DISABLED'),
(156, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"LA MUJER Y EL \\u00c1MBITO ACAD\\u00c9MICO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:46:44', 'com_content.article', 691, 4, 'COM_ACTIONLOGS_DISABLED'),
(157, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:46:47', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(158, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:46:57', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(159, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"5\",\"title\":\"ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:47:37', 'com_content.article', 691, 5, 'COM_ACTIONLOGS_DISABLED'),
(160, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:47:39', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(161, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Menu Principal\",\"extension_name\":\"Menu Principal\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:49:05', 'com_modules.module', 691, 1, 'COM_ACTIONLOGS_DISABLED'),
(162, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 18:49:05', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(163, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":25,\"title\":\"com_users\",\"extension_name\":\"com_users\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=25\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:50:13', 'com_config.component', 691, 25, 'COM_ACTIONLOGS_DISABLED'),
(164, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"LA MUJER Y EL \\u00c1MBITO ACAD\\u00c9MICO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:51:01', 'com_content.article', 691, 4, 'COM_ACTIONLOGS_DISABLED'),
(165, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:51:01', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(166, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:51:03', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(167, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"143\",\"title\":\"LA MUJER Y EL \\u00c1MBITO ACAD\\u00c9MICO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=143\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:51:05', 'com_menus.item', 691, 143, 'COM_ACTIONLOGS_DISABLED'),
(168, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:51:28', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(169, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"LA MUJER Y EL \\u00c1MBITO ACAD\\u00c9MICO\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:51:28', 'com_content.article', 691, 4, 'COM_ACTIONLOGS_DISABLED'),
(170, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 18:51:45', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(171, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":143,\"title\":\"LA MUJER Y EL \\u00c1MBITO ACAD\\u00c9MICO\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=143\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:51:51', 'com_menus.item', 691, 143, 'COM_ACTIONLOGS_DISABLED'),
(172, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 18:51:51', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(173, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"Grafica_1.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(174, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"Grafica_2.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(175, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"Tabla1.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(176, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"Tabla2.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(177, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"Tabla3.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(178, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"Tabla4.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(179, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"tabla3111.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(180, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"tabla4111.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 18:55:28', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(181, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:06:10', 'com_content.article', 691, 5, 'COM_ACTIONLOGS_DISABLED'),
(182, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 19:06:10', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(183, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:06:48', 'com_content.article', 691, 5, 'COM_ACTIONLOGS_DISABLED'),
(184, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 19:06:48', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(185, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-11-23 19:07:46', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(186, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-11-23 19:47:30', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(187, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 19:48:16', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(188, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 19:48:46', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(189, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 19:50:37', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(190, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10020,\"name\":\"COM_JEVENTS\",\"extension_name\":\"COM_JEVENTS\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10020, 'COM_ACTIONLOGS_DISABLED'),
(191, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10021,\"name\":\"MOD_JEV_CALENDAR_TITLE\",\"extension_name\":\"MOD_JEV_CALENDAR_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10021, 'COM_ACTIONLOGS_DISABLED'),
(192, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10022,\"name\":\"MOD_JEV_LEGEND_TITLE\",\"extension_name\":\"MOD_JEV_LEGEND_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10022, 'COM_ACTIONLOGS_DISABLED'),
(193, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10023,\"name\":\"MOD_JEV_LATEST_EVENTS_TITLE\",\"extension_name\":\"MOD_JEV_LATEST_EVENTS_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10023, 'COM_ACTIONLOGS_DISABLED'),
(194, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10024,\"name\":\"MOD_JEV_FILTER_MODULE_TITLE\",\"extension_name\":\"MOD_JEV_FILTER_MODULE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10024, 'COM_ACTIONLOGS_DISABLED'),
(195, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10025,\"name\":\"MOD_JEV_CUSTOM_MODULE_TITLE\",\"extension_name\":\"MOD_JEV_CUSTOM_MODULE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10025, 'COM_ACTIONLOGS_DISABLED'),
(196, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10026,\"name\":\"MOD_JEV_SWITCH_VIEW_TITLE\",\"extension_name\":\"MOD_JEV_SWITCH_VIEW_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10026, 'COM_ACTIONLOGS_DISABLED'),
(197, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10027,\"name\":\"MOD_JEV_DASHBOARD_MODULE_TITLE\",\"extension_name\":\"MOD_JEV_DASHBOARD_MODULE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10027, 'COM_ACTIONLOGS_DISABLED'),
(198, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10028,\"name\":\"PLG_FINDER_JEVENTS\",\"extension_name\":\"PLG_FINDER_JEVENTS\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10028, 'COM_ACTIONLOGS_DISABLED'),
(199, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10029,\"name\":\"PLG_JEV_SEARCH_TITLE\",\"extension_name\":\"PLG_JEV_SEARCH_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10029, 'COM_ACTIONLOGS_DISABLED'),
(200, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10030,\"name\":\"plg_installer_jeventsinstaller\",\"extension_name\":\"plg_installer_jeventsinstaller\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10030, 'COM_ACTIONLOGS_DISABLED'),
(201, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10031,\"name\":\"PLG_JEV_CORE_CONTENT_PLUGIN_TITLE\",\"extension_name\":\"PLG_JEV_CORE_CONTENT_PLUGIN_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10031, 'COM_ACTIONLOGS_DISABLED'),
(202, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10032,\"name\":\"JEvents - Action Log\",\"extension_name\":\"JEvents - Action Log\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10032, 'COM_ACTIONLOGS_DISABLED'),
(203, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10033,\"name\":\"PLG_SYSTEM_GWEJSON\",\"extension_name\":\"PLG_SYSTEM_GWEJSON\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10033, 'COM_ACTIONLOGS_DISABLED'),
(204, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10038\",\"name\":\"googl Shortener\",\"extension_name\":\"googl Shortener\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10038, 'COM_ACTIONLOGS_DISABLED'),
(205, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10039\",\"name\":\"JEvents - Bootstrap Modal Library\",\"extension_name\":\"JEvents - Bootstrap Modal Library\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10039, 'COM_ACTIONLOGS_DISABLED'),
(206, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10040\",\"name\":\"JEvents - Typeahead Library\",\"extension_name\":\"JEvents - Typeahead Library\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10040, 'COM_ACTIONLOGS_DISABLED'),
(207, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":10037,\"name\":\"JEV_PACKAGE_TITLE\",\"extension_name\":\"JEV_PACKAGE_TITLE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:56:30', 'com_installer', 691, 10037, 'COM_ACTIONLOGS_DISABLED'),
(208, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10042\",\"name\":\"mod_joomgithub\",\"extension_name\":\"mod_joomgithub\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:57:23', 'com_installer', 691, 10042, 'COM_ACTIONLOGS_DISABLED'),
(209, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10041\",\"name\":\"JoomGallery\",\"extension_name\":\"JoomGallery\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:57:23', 'com_installer', 691, 10041, 'COM_ACTIONLOGS_DISABLED'),
(210, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10044\",\"name\":\"mod_joomcat\",\"extension_name\":\"mod_joomcat\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 19:59:32', 'com_installer', 691, 10044, 'COM_ACTIONLOGS_DISABLED'),
(211, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":100,\"title\":\"JoomCategories\",\"extension_name\":\"JoomCategories\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=100\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:01:02', 'com_modules.module', 691, 100, 'COM_ACTIONLOGS_DISABLED'),
(212, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 20:01:02', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(213, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 20:01:07', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(214, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":100,\"title\":\"JoomCategories\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=100\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:01:07', 'com_modules.module', 691, 100, 'COM_ACTIONLOGS_DISABLED'),
(215, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"6\",\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:02:30', 'com_content.article', 691, 6, 'COM_ACTIONLOGS_DISABLED'),
(216, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:02:32', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(217, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"170\",\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=170\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:02:40', 'com_menus.item', 691, 170, 'COM_ACTIONLOGS_DISABLED'),
(218, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":170,\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=170\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:02:56', 'com_menus.item', 691, 170, 'COM_ACTIONLOGS_DISABLED'),
(219, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"171\",\"title\":\"NUEVO PAPER\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=171\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:06:15', 'com_menus.item', 691, 171, 'COM_ACTIONLOGS_DISABLED'),
(220, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":171,\"title\":\"NUEVO PAPER\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=171\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:06:40', 'com_menus.item', 691, 171, 'COM_ACTIONLOGS_DISABLED'),
(221, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 20:06:40', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(222, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":170,\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=170\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:07:14', 'com_menus.item', 691, 170, 'COM_ACTIONLOGS_DISABLED'),
(223, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 20:07:14', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(224, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":170,\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=170\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:12:04', 'com_menus.item', 691, 170, 'COM_ACTIONLOGS_DISABLED'),
(225, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 20:12:04', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(226, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10045\",\"name\":\"plg_content_joomlarrssb\",\"extension_name\":\"plg_content_joomlarrssb\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:12:35', 'com_installer', 691, 10045, 'COM_ACTIONLOGS_DISABLED'),
(227, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10046\",\"name\":\"MOD_DIGI_SHOWCASE\",\"extension_name\":\"MOD_DIGI_SHOWCASE\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:14:36', 'com_installer', 691, 10046, 'COM_ACTIONLOGS_DISABLED'),
(228, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 20:14:52', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(229, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":101,\"title\":\"Digi Showcase\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:14:52', 'com_modules.module', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(230, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 20:16:54', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(231, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":101,\"title\":\"Digi Showcase\",\"extension_name\":\"Digi Showcase\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:18:59', 'com_modules.module', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(232, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 20:18:59', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(233, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"papers.png\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:20:18', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(234, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":101,\"title\":\"Digi Showcase\",\"extension_name\":\"Digi Showcase\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=101\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:21:22', 'com_modules.module', 691, 101, 'COM_ACTIONLOGS_DISABLED'),
(235, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__modules\"}', '2022-11-23 20:21:22', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `i63fc_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(236, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":6,\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:21:51', 'com_content.article', 691, 6, 'COM_ACTIONLOGS_DISABLED'),
(237, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:21:51', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(238, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":6,\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:22:16', 'com_content.article', 691, 6, 'COM_ACTIONLOGS_DISABLED'),
(239, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:22:16', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(240, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"7\",\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:31:31', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(241, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10047\",\"name\":\"Content - Embed Google Docs Viewer\",\"extension_name\":\"Content - Embed Google Docs Viewer\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:31:47', 'com_installer', 691, 10047, 'COM_ACTIONLOGS_DISABLED'),
(242, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__extensions\"}', '2022-11-23 20:32:06', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(243, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10047,\"title\":\"Content - Embed Google Docs Viewer\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10047\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:32:06', 'com_plugins.plugin', 691, 10047, 'COM_ACTIONLOGS_DISABLED'),
(244, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10047,\"title\":\"Content - Embed Google Docs Viewer\",\"extension_name\":\"Content - Embed Google Docs Viewer\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10047\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:37:11', 'com_plugins.plugin', 691, 10047, 'COM_ACTIONLOGS_DISABLED'),
(245, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__extensions\"}', '2022-11-23 20:37:11', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(246, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10047,\"title\":\"Content - Embed Google Docs Viewer\",\"extension_name\":\"Content - Embed Google Docs Viewer\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10047\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:37:40', 'com_plugins.plugin', 691, 10047, 'COM_ACTIONLOGS_DISABLED'),
(247, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__extensions\"}', '2022-11-23 20:37:40', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(248, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__extensions\"}', '2022-11-23 20:37:42', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(249, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"STR_MARTE.pdf\",\"itemlink\":\"index.php?option=com_media&view=media&folder=pdfs\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:38:20', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(250, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:40:36', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(251, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:40:36', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(252, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:41:03', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(253, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:41:03', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(254, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:41:16', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(255, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":170,\"title\":\"GALERIA DE PAPERS\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=170\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:41:46', 'com_menus.item', 691, 170, 'COM_ACTIONLOGS_DISABLED'),
(256, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__menu\"}', '2022-11-23 20:41:46', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(257, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"45_sistema.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:45:19', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(258, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:45:56', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(259, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:45:56', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(260, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:46:04', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(261, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10047,\"title\":\"Content - Embed Google Docs Viewer\",\"extension_name\":\"Content - Embed Google Docs Viewer\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10047\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:46:21', 'com_plugins.plugin', 691, 10047, 'COM_ACTIONLOGS_DISABLED'),
(262, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__extensions\"}', '2022-11-23 20:46:21', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(263, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:48:37', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(264, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:48:37', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(265, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:49:36', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(266, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:49:36', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(267, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:49:59', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(268, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:49:59', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(269, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:51:34', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(270, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:51:34', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(271, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:51:50', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(272, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:51:50', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(273, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:52:07', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(274, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:52:07', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(275, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:53:30', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(276, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:53:30', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(277, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 20:55:02', 'com_content.article', 691, 7, 'COM_ACTIONLOGS_DISABLED'),
(278, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 20:55:02', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(279, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"8\",\"title\":\"Desgaste y fallas en aceros de colada de Pb \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=8\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:10:36', 'com_content.article', 691, 8, 'COM_ACTIONLOGS_DISABLED'),
(280, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"fatiga_1.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:11:38', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(281, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":8,\"title\":\"Desgaste y fallas en aceros de colada de Pb \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=8\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:11:42', 'com_content.article', 691, 8, 'COM_ACTIONLOGS_DISABLED'),
(282, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:11:42', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(283, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 21:12:39', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(284, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 21:12:44', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(285, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:13:29', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(286, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"9\",\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:17:50', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(287, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:18:15', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(288, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:18:15', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(289, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:20:15', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(290, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:20:15', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(291, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"1189141.jpeg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:20:23', 'com_media.file', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(292, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:20:32', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(293, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:20:32', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(294, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:20:47', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(295, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:20:47', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(296, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:21:16', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(297, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:21:16', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(298, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-23 21:21:32', 'com_content.article', 691, 9, 'COM_ACTIONLOGS_DISABLED'),
(299, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"kotarourinni\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"table\":\"#__content\"}', '2022-11-23 21:21:32', 'com_checkin', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(300, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 21:21:39', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(301, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 23:01:52', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(302, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-23 23:26:37', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(303, 'PLG_ACTIONLOG_JOOMLA_USER_REGISTERED', '{\"action\":\"register\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"692\",\"title\":\"Debora\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"userid\":\"692\",\"username\":\"dvian\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=692\"}', '2022-11-23 23:28:58', 'com_users', 692, 692, 'COM_ACTIONLOGS_DISABLED'),
(304, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-11-24 01:39:40', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(305, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":25,\"title\":\"com_users\",\"extension_name\":\"com_users\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=25\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 01:48:49', 'com_config.component', 691, 25, 'COM_ACTIONLOGS_DISABLED'),
(306, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 01:57:25', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(307, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":692,\"title\":\"Invitado\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 02:03:32', 'com_users', 691, 692, 'COM_ACTIONLOGS_DISABLED'),
(308, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":692,\"title\":\"Invitado\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 02:03:52', 'com_users', 691, 692, 'COM_ACTIONLOGS_DISABLED'),
(309, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:04:00', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(310, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":692,\"userid\":692,\"username\":\"dvian\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:04:09', 'com_users', 692, 692, 'COM_ACTIONLOGS_DISABLED'),
(311, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":692,\"userid\":692,\"username\":\"dvian\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:04:35', 'com_users', 692, 692, 'COM_ACTIONLOGS_DISABLED'),
(312, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":692,\"title\":\"Invitado\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 02:04:50', 'com_users', 691, 692, 'COM_ACTIONLOGS_DISABLED'),
(313, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":692,\"username\":\"dvian\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:05:01', 'com_users', 692, 0, 'COM_ACTIONLOGS_DISABLED'),
(314, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":692,\"userid\":692,\"username\":\"dvian\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=692\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:33:04', 'com_users', 692, 692, 'COM_ACTIONLOGS_DISABLED'),
(315, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:33:13', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(316, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:38:22', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(317, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-11-24 02:38:32', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(318, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"693\",\"title\":\"Debora\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=693\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 02:39:40', 'com_users', 691, 693, 'COM_ACTIONLOGS_DISABLED'),
(319, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":693,\"username\":\"debora97\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=693\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:40:01', 'com_users', 693, 0, 'COM_ACTIONLOGS_DISABLED'),
(320, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"694\",\"title\":\"Sandra\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=694\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 02:42:07', 'com_users', 691, 694, 'COM_ACTIONLOGS_DISABLED'),
(321, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":693,\"userid\":693,\"username\":\"debora97\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=693\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:42:14', 'com_users', 693, 693, 'COM_ACTIONLOGS_DISABLED'),
(322, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":694,\"username\":\"binchilin23\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=694\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:42:23', 'com_users', 694, 0, 'COM_ACTIONLOGS_DISABLED'),
(323, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":694,\"userid\":694,\"username\":\"binchilin23\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=694\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:43:33', 'com_users', 694, 694, 'COM_ACTIONLOGS_DISABLED'),
(324, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:44:00', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(325, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":691,\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:46:37', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED'),
(326, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":694,\"username\":\"binchilin23\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=694\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 02:46:43', 'com_users', 694, 0, 'COM_ACTIONLOGS_DISABLED'),
(327, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":694,\"userid\":694,\"username\":\"binchilin23\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=694\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 03:07:03', 'com_users', 694, 694, 'COM_ACTIONLOGS_DISABLED'),
(328, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-11-24 03:07:10', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(329, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"10\",\"title\":\"Un m\\u00e9todo para generar mezclas CO2 + etanol en estado supercr\\u00edtico\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=10\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 03:27:58', 'com_content.article', 691, 10, 'COM_ACTIONLOGS_DISABLED'),
(330, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-11-24 03:35:30', 'com_users', 691, 0, 'COM_ACTIONLOGS_DISABLED'),
(331, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":691,\"title\":\"Mara \",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=691\",\"userid\":691,\"username\":\"kotarourinni\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=691\"}', '2022-11-24 03:35:37', 'com_users', 691, 691, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_action_logs_extensions`
--

CREATE TABLE `i63fc_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_action_logs_extensions`
--

INSERT INTO `i63fc_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_action_logs_users`
--

CREATE TABLE `i63fc_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_action_logs_users`
--

INSERT INTO `i63fc_action_logs_users` (`user_id`, `notify`, `extensions`) VALUES
(691, 0, '[\"com_banners\",\"com_content\",\"com_cache\",\"com_newsfeeds\",\"com_categories\",\"com_config\",\"com_contact\",\"com_checkin\",\"com_tags\",\"com_installer\",\"com_messages\",\"com_menus\",\"com_modules\",\"com_media\",\"com_templates\",\"com_plugins\",\"com_redirect\",\"com_users\"]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_action_log_config`
--

CREATE TABLE `i63fc_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_action_log_config`
--

INSERT INTO `i63fc_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_assets`
--

CREATE TABLE `i63fc_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_assets`
--

INSERT INTO `i63fc_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 173, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 44, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 45, 46, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 47, 48, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 49, 52, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 53, 54, 1, 'com_login', 'com_login', '{}'),
(13, 1, 55, 56, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 57, 58, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 59, 60, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 61, 66, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 67, 68, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 69, 130, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 131, 134, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 135, 136, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 137, 138, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 139, 140, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 141, 142, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 143, 146, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 147, 148, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 29, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 132, 133, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 144, 145, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 149, 150, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 151, 152, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 153, 154, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 155, 156, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 157, 158, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 159, 160, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 70, 71, 2, 'com_modules.module.1', 'Menu Principal', '{}'),
(40, 18, 72, 73, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 74, 75, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 76, 77, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 78, 79, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 80, 81, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 82, 83, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 84, 85, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 86, 87, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 88, 89, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 90, 91, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 92, 93, 2, 'com_modules.module.16', 'Inicio de sesión', '{}'),
(51, 18, 94, 95, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 96, 97, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 98, 99, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 62, 63, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 100, 101, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 161, 162, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 163, 164, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 102, 103, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 104, 105, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 11, 50, 51, 2, 'com_languages.language.2', 'Spanish (español)', '{}'),
(61, 1, 165, 166, 1, 'com_kunena', 'com_kunena', '{}'),
(62, 16, 64, 65, 2, 'com_menus.menu.2', 'Menú Kunena', '{}'),
(63, 8, 30, 37, 2, 'com_content.category.8', 'PAPERS', '{}'),
(64, 8, 38, 43, 2, 'com_content.category.9', 'INFORMACIÓN ACADÉMICA', '{}'),
(65, 1, 167, 170, 1, 'com_jevents', 'COM_JEVENTS', '{}'),
(66, 18, 106, 107, 2, 'com_modules.module.90', 'JEvents - Calendar Module', '{}'),
(67, 18, 108, 109, 2, 'com_modules.module.91', 'JEvents - Legend Module', '{}'),
(68, 18, 110, 111, 2, 'com_modules.module.92', 'JEvents - Latest Events Module', '{}'),
(69, 18, 112, 113, 2, 'com_modules.module.93', 'JEvents - Filter Module', '{}'),
(70, 18, 114, 115, 2, 'com_modules.module.94', 'JEvents - Custom Module', '{}'),
(71, 18, 116, 117, 2, 'com_modules.module.95', 'JEvents - Switch View Module', '{}'),
(72, 18, 118, 119, 2, 'com_modules.module.96', 'JEvents - Dashboard Module', '{}'),
(73, 65, 168, 169, 2, 'com_jevents.category.10', 'DEFAULT', '{}'),
(74, 64, 39, 40, 3, 'com_content.article.1', 'UNIVERSIDAD NACIONAL DE JUJUY', '{}'),
(75, 64, 41, 42, 3, 'com_content.article.2', 'UNIVERSIDAD CATÓLICA DE SANTIAGO DEL ESTERO', '{}'),
(76, 27, 19, 20, 3, 'com_content.article.3', 'FRAU: MUJERES EN CIENCIA Y TECNOLOGÍA', '{}'),
(77, 27, 21, 22, 3, 'com_content.article.4', 'LA MUJER Y EL ÁMBITO ACADÉMICO', '{}'),
(78, 27, 23, 24, 3, 'com_content.article.5', 'ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY', '{}'),
(79, 18, 120, 121, 2, 'com_modules.module.97', 'JoomGallery - Github activity', '{}'),
(80, 18, 122, 123, 2, 'com_modules.module.98', 'JoomGallery News', '{}'),
(81, 18, 124, 125, 2, 'com_modules.module.99', 'JoomGallery Open Bounties', '{}'),
(82, 1, 171, 172, 1, 'com_joomgallery', 'JoomGallery', '{}'),
(83, 18, 126, 127, 2, 'com_modules.module.100', 'JoomCategories', '{}'),
(84, 27, 25, 26, 3, 'com_content.article.6', 'GALERIA DE PAPERS', '{}'),
(85, 18, 128, 129, 2, 'com_modules.module.101', 'Digi Showcase', '{}'),
(86, 63, 31, 32, 3, 'com_content.article.7', 'Modelado de Sistemas de Tiempo Real', '{}'),
(87, 63, 33, 34, 3, 'com_content.article.8', 'Desgaste y fallas en aceros de colada de Pb ', '{}'),
(88, 63, 35, 36, 3, 'com_content.article.9', 'Caracterización de piezas industriales de acero Hadfield sometidas a alto desgaste. ', '{}'),
(89, 27, 27, 28, 3, 'com_content.article.10', 'Un método para generar mezclas CO2 + etanol en estado supercrítico', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_associations`
--

CREATE TABLE `i63fc_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_banners`
--

CREATE TABLE `i63fc_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_banner_clients`
--

CREATE TABLE `i63fc_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_banner_tracks`
--

CREATE TABLE `i63fc_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_categories`
--

CREATE TABLE `i63fc_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_categories`
--

INSERT INTO `i63fc_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 691, '2022-11-23 17:17:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:17:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:17:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:17:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:17:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:17:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 63, 1, 11, 12, 1, 'papers', 'com_content', 'PAPERS', 'papers', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:51:11', 691, '2022-11-23 17:51:13', 0, '*', 1),
(9, 64, 1, 13, 14, 1, 'informacion-academica', 'com_content', 'INFORMACIÓN ACADÉMICA', 'informacion-academica', '', '', 1, 691, '2022-11-23 18:45:40', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 691, '2022-11-23 17:51:37', 0, '2022-11-23 17:51:37', 0, '*', 1),
(10, 73, 1, 15, 16, 1, '', 'com_jevents', 'DEFAULT', 'default', '', NULL, 1, 0, '0000-00-00 00:00:00', 1, '{\"catcolour\":\"#CCCCFF\",\"admin\":0,\"overlaps\":0,\"image\":\"\"}', '', '', '', 691, '2022-11-23 18:00:57', 0, '2022-11-23 18:00:57', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_contact_details`
--

CREATE TABLE `i63fc_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_content`
--

CREATE TABLE `i63fc_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_content`
--

INSERT INTO `i63fc_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 74, 'UNIVERSIDAD NACIONAL DE JUJUY', 'unju', '<table style=\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12.16px; border-color: #ffffff; width: 573px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 111px;\">\r\n<p><img src=\"images/logo-fi-unju-folleteria-vertical-1071x696.png\" width=\"100\" /> </p>\r\n</td>\r\n<td style=\"width: 446px;\">\r\n<p><strong> CONSULTAS:</strong></p>\r\n<ul>\r\n<li>\r\n<p>fi.unju.edu.ar/ingreso-facultad-ingenieria.html</p>\r\n</li>\r\n<li>\r\n<p><a href=\"mailto:alumnos@fi.unju.edu.ar\">alumnos@fi.unju.edu.ar</a></p>\r\n</li>\r\n<li>\r\n<p>tutorias@fi.unju.edu.ar</p>\r\n</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '<hr />\r\n<h2><strong>Sede \"San Salvador de Jujuy\"</strong></h2>\r\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576</p>\r\n<h3>Carreras de pregrado</h3>\r\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO</strong></p>\r\n<ul>\r\n<li>Título: Analista Programador/a Universitario/a</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n</ul>\r\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA</strong></p>\r\n<ul>\r\n<li>Titulo:  Técnico/a Universitario/a en Ciencias de la Tierra</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n</ul>\r\n<p><strong>TÉCNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES</strong></p>\r\n<ul>\r\n<li>Titulo:  Técnico Universitario en Procesamiento de Minerales</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n</ul>\r\n<p><strong>TÉCNICO UNIVERSITARIO EN EXPLOTACIÓN DE MINAS</strong></p>\r\n<ul>\r\n<li>Título: Técnico/a Universitario/a en Explotación de Minas</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n</ul>\r\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES</strong></p>\r\n<ul>\r\n<li>Título: Técnico/a Universitario/a en Perforaciones</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años             </li>\r\n</ul>\r\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETRÓLEO      </strong>  </p>\r\n<ul>\r\n<li>Título: Técnico/a Universitario/a en Cs. de la Tierra Orientada a Petróleo</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años             </li>\r\n</ul>\r\n<p><strong>TECNICATURA UNIVERSITARIA EN DISEÑO INTEGRAL DE VIDEOJUEGOS</strong></p>\r\n<ul>\r\n<li>Título: Técnico/a Universitario/a en Diseño Integral de Videojuegos</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años     </li>\r\n</ul>\r\n<h3>Carreras de grado</h3>\r\n<p><strong>INGENIERÍA QUÍMICA</strong></p>\r\n<ul>\r\n<li>Título: Ingeniero/a Químico/a</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años             </li>\r\n</ul>\r\n<p><strong>INGENIERÍA DE MINAS </strong></p>\r\n<ul>\r\n<li>Título: Ingeniero/a de Minas</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años                                            </li>\r\n</ul>\r\n<p><strong>INGENIERÍA INDUSTRIAL </strong>                           </p>\r\n<ul>\r\n<li>Título: Ingeniero/a Industrial</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años                            </li>\r\n</ul>\r\n<p><strong>INGENIERÍA INFORMÁTICA</strong></p>\r\n<ul>\r\n<li>Título: Ingeniero/a Informático/a</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años                                                            </li>\r\n</ul>\r\n<p><strong>LICENCIATURA EN SISTEMAS</strong></p>\r\n<ul>\r\n<li>Título: Licenciado/a en Sistemas</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años                                            </li>\r\n</ul>\r\n<p><strong>LICENCIATURA EN TECNOLOGÍA DE LOS ALIMENTOS</strong></p>\r\n<ul>\r\n<li>Título: Licenciado/a en Tecnología de los Alimentos</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 4 años             </li>\r\n</ul>\r\n<p><strong>LICENCIATURA EN CIENCIAS GEOLÓGICAS</strong></p>\r\n<ul>\r\n<li>Titulo: Licenciado/a en Ciencias Geológicas</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años</li>\r\n</ul>\r\n<hr />\r\n<h2><strong>Sede \"San Pedro\"</strong></h2>\r\n<p>San Pedro de Jujuy - José Ignacio Gorriti Nº 462</p>\r\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO</strong></p>\r\n<ul>\r\n<li>Título: Analista Programador/a Universitario/a</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n</ul>\r\n<hr />\r\n<h2><strong>Sede \"Quebrada y Puna\"</strong></h2>\r\n<p>La Quiaca - Av. Cabildo S/N</p>\r\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO</strong></p>\r\n<ul>\r\n<li>Título: Analista Programador/a Universitario/a</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n</ul>\r\n<hr />\r\n<h2><strong>Sede \"Libertador Gral. San Martín\"</strong></h2>\r\n<p>Libertador General San Martín - Escuela Técnica “Ing. Herminio Arrieta”. Mariano Moreno Nº 1368</p>\r\n<p><em>Cursado de Primer Año de las carreras de Ingeniería de Minas, Química, Informática e Industrial</em></p>\r\n<p> </p>', 1, 9, '2022-11-23 18:20:49', 691, '', '2022-11-23 18:37:44', 691, 0, '0000-00-00 00:00:00', '2022-11-23 18:20:49', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Universidad Nacional de Jujuy\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"1\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 15, 0, '', '', 1, 16, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(2, 75, 'UNIVERSIDAD CATÓLICA DE SANTIAGO DEL ESTERO', 'universidad-catolica-de-santiago-del-estero', '<table>\r\n<tbody>\r\n<tr>\r\n<td> <img src=\"images/800px-LogoUCSE.jpg\" width=\"100\" /></td>\r\n<td>\r\n<p><span style=\"font-family: tahoma, arial, helvetica, sans-serif; font-size: 10pt;\">CONSULTAS:</span></p>\r\n<ul>\r\n<li><span style=\"font-family: tahoma, arial, helvetica, sans-serif; font-size: 10pt;\">0388 423-6881</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '<hr />\r\n<h2><strong>Departamento Académico San Salvador</strong></h2>\r\n<h3><strong>Carreras de pregrado</strong></h3>\r\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORMÁTICA</strong></p>\r\n<ul>\r\n<li>Título: Técnico/a Universitario/a en Informática</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n<li>Mas información:<a href=\"http://www.ucse.edu.ar/tecnicatura-en-informatica/\"> Aquí</a></li>\r\n</ul>\r\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACIÓN Y ROBÓTICA</strong></p>\r\n<ul>\r\n<li>Título: Técnico/a Universitario/a en Automatización y Robótica</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 3 años</li>\r\n<li>Mas información: <a href=\"http://www.ucse.edu.ar/tecnicatura-universitaria-en-automatizacion-y-robotica/\">Aquí</a></li>\r\n</ul>\r\n<p><strong>ANALISTA DE SISTEMAS</strong></p>\r\n<ul>\r\n<li>Título: Analista de Sistemas</li>\r\n<li>Nivel Académico: Carrera de Pregrado</li>\r\n<li>Duración: 4 años</li>\r\n<li>Mas información: <a href=\"http://www.ucse.edu.ar/analista-en-sistemas/\">Aquí</a></li>\r\n</ul>\r\n<hr />\r\n<h3>Carreras de grado</h3>\r\n<p><strong>INGENIERÍA EN INFORMÁTICA</strong></p>\r\n<ul>\r\n<li>Título: Ingeniero/a en Informática</li>\r\n<li>Nivel Académico: Carrera de Grado</li>\r\n<li>Duración: 5 años</li>\r\n<li>Mas información: <a href=\"http://www.ucse.edu.ar/ingenieria-en-informatica/\">Aquí</a></li>\r\n</ul>', 1, 9, '2022-11-23 18:32:39', 691, '', '2022-11-23 18:38:40', 691, 0, '0000-00-00 00:00:00', '2022-11-23 18:32:39', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/38727_0xh.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Universidad Cat\\u00f3lica de Santiago del Estero\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/38727_0xh.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"1\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 0, '', '', 1, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(3, 76, 'FRAU: MUJERES EN CIENCIA Y TECNOLOGÍA', 'inicio', '<h1> <img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/pexels-mikhail-nilov-9241716.jpg\" alt=\"\" /></h1>\r\n<h1>¿Qué es FRAU?</h1>\r\n<p style=\"text-align: justify;\">Frau es una Red Colaborativa dirigida al público femenino perteneciente a la provincia de Jujuy que busca brindar un espacio para que las mujeres científicas puedan comunicar, compartir y visibilizar sus experiencias, conocimientos e investigaciones y así crear un entorno de cooperación y respeto que fomente y proyecte la participación de las mujeres dentro del ámbito científico.</p>\r\n<h1><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/pexels-cowomen-2041398.jpg\" width=\"640\" /></h1>\r\n<h1>Visión</h1>\r\n<ul>\r\n<li style=\"text-align: justify;\">Disminuir la brecha de género en las carreras científicas al fomentar la participación de las mujeres en carreras de ciencia y tecnología.</li>\r\n<li style=\"text-align: justify;\">Lograr un espacio donde los logros e investigaciones de las científicas sean visibilizados, dándoles así el crédito correspondiente por sus contribuciones.</li>\r\n<li style=\"text-align: justify;\">Incentivar a que las jóvenes despierten su curiosidad por la ciencia para que en un futuro opten por encaminarse a una carrera relacionada con las STEM.</li>\r\n</ul>', '', 1, 2, '2022-11-23 18:41:23', 691, '', '2022-11-23 18:44:15', 691, 0, '0000-00-00 00:00:00', '2022-11-23 18:41:23', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 3, '', '', 1, 22, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(4, 77, 'LA MUJER Y EL ÁMBITO ACADÉMICO', 'la-mujer-y-el-ambito-academico', '<p style=\"text-align: justify;\">En los últimos 10 años, las carreras relacionadas con la STEM fueron tomando gran importancia gracias al crecimiento exponencial de la tecnología. Aunque esto resulta una noticia alentadora, si hilamos fino podemos visibilizar que la cantidad de mujeres que forman parte de este ámbito no supera el 30% de inscriptas y el 40% si hablamos de egresadas. A este fenómeno lo podemos relacionar con varios aspectos relacionados con el machismo, que categoriza a la mujer dentro de tareas domésticas o relacionadas con la crianza. La existencia de este pensamiento dio lugar al famoso “efecto Matilda”, el cual consiste en el prejuicio que se produce en contra de los logros de las mujeres científicas cuyas aportaciones suelen atribuirse a los hombres.</p>', '', -2, 2, '2022-11-23 18:46:44', 691, '', '2022-11-23 18:51:01', 691, 0, '0000-00-00 00:00:00', '2022-11-23 18:46:44', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(5, 78, 'ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY', 'estadisticas-academicas-en-la-provincia-de-jujuy', '<h1><span style=\"font-weight: 400;\">Naturaleza de los datos</span></h1>\r\n<p><span style=\"font-weight: 400;\">Para realizar este estudio, se recolectó información proveniente de los Anuarios Estadísticos e Informes especiales realizados por la Secretaría de Políticas Universitarias. Adicionalmente se contó con la colaboración del Departamento de Información Universitaria.</span></p>\r\n<p><span style=\"font-weight: 400;\">Se consideraron las carreras de pregrado y grado provenientes de la Facultad de Ingeniería de la Universidad Nacional de Jujuy y del Área de Matemática Aplicada en la Universidad Católica de Santiago del Estero. Para realizar un análisis de los datos recolectados, se realizó una distinción entre estas universidades, separando los datos en instituciones públicas y privadas, esto debido a que la manipulación de la información con este formato facilita la realización de más análisis entre ambos ámbitos. El estudio se realizará dentro del periodo 2010 - 2017.</span></p>\r\n<h3 style=\"text-align: justify;\">La participación de la mujer en el ámbito académico.</h3>\r\n<p style=\"text-align: justify;\">En los últimos 10 años, las carreras relacionadas con la STEM fueron tomando gran importancia gracias al crecimiento exponencial de la tecnología. Aunque esto resulta una noticia alentadora, si hilamos fino podemos visibilizar que la cantidad de mujeres que forman parte de este ámbito no supera el 30% de inscriptas y el 40% si hablamos de egresadas.</p>\r\n<p style=\"text-align: justify;\">A este fenómeno lo podemos relacionar con varios aspectos relacionados con el machismo, que categoriza a la mujer dentro de tareas domésticas o relacionadas con la crianza. La existencia de este pensamiento dio lugar al famoso “efecto Matilda”, el cual consiste en el prejuicio que se produce en contra de los logros de las mujeres científicas cuyas aportaciones suelen atribuirse a los hombres.</p>\r\n<p style=\"text-align: justify;\">En el caso de la Facultad de Ingeniería (Tabla 1), se puede observar que del total de estudiantes, las mujeres no representan más del 30%, pero podemos ver que la cantidad de estas ha ido aumentando conforme pasaron los años. </p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Tabla1.png\" alt=\"\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/tabla3111.png\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">En cuanto a las egresadas, los años 2013, 2014, 2015 y 2016 fueron los que mayor porcentaje de egresadas tuvieron: superando el 30% y alcanzando un 45% en comparación con los varones. El año 2012 fue el año con la menor cantidad de egresadas: solo dos mujeres se graduaron este año.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Grafica_1.png\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">La siguiente tabla muestra la distribución de las egresadas según carreras dentro de la Facultad de Ingeniería. Entre las tres carreras con mayor cantidad de egresadas se encuentran: Analista Programador Universitario (70), Ingeniería en Informática (22) y Licenciatura en Sistemas  Dentro del periodo 2010-2017, hubo un total de 146 egresadas, conformando el 33,87% del total de egresados dentro del periodo antes mencionado.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Tabla3.png\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">Dentro del ámbito privado (Tabla 2), podemos observar que la participación femenina es aún menor, sin lograr superar el 18,18% en el año 2017. Si tomamos como guía el Gráfico 17, podemos distinguir que a diferencia del ámbito público, la cantidad de mujeres fue disminuyendo con el paso de los años: con un total de 39 estudiantes femeninas en el año 2010 y 22 estudiantes en el año 2017.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Tabla2.png\" alt=\"\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/tabla4111.png\" alt=\"\" /></p>\r\n<p>Al hablar de las egresadas , las cifras son aún más desalentadoras: en los años 2013 y 2014 no hubo ninguna egresada. En el año 2017 solo hubo una egresada de un total de 12 graduados. La cifra no supera el 20% aproximadamente.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Grafica_2.png\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">La siguiente tabla muestra la distribución de las egresadas según carreras dentro de la UCSE - DASS. La carrera con mayor cantidad de egresadas fue la de Ingeniería en Computación, que fue reemplazada posteriormente por la carrera de Ingeniería en Informática. Se puede observar que a lo largo del periodo 2010 - 2017, tan solo hubo 15 egresadas, lo cual conforma tan solo un 12,40% del total de egresados dentro del periodo antes mencionado.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/Tabla4.png\" alt=\"\" /></p>\r\n<p> </p>', '', 1, 2, '2022-11-23 18:47:37', 691, '', '2022-11-23 19:06:48', 691, 0, '0000-00-00 00:00:00', '2022-11-23 18:47:37', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 2, '', '', 1, 7, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(6, 84, 'GALERIA DE PAPERS', 'galeria-de-papers', '', '', 1, 2, '2022-11-23 20:02:30', 691, '', '2022-11-23 20:22:16', 691, 0, '0000-00-00 00:00:00', '2022-11-23 20:02:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(7, 86, 'Modelado de Sistemas de Tiempo Real', 'modelado-de-sistemas-de-tiempo-real', '<p> </p>\r\n', '\r\n<p style=\"text-align: justify;\">El presente trabajo expone conceptos elementales del perfil UML MARTE para el modelado y análisis de sistemas de tiempo real y embebidos, de su estructura y, fundamentalmente del paquete de análisis de modelos. Se describe un caso de estudio: sistema de garaje inteligente, y se presentan distintos diagramas UML con notaciones MARTE que los proveen con información cuantitativa para un posterior análisis de rendimiento del sistema.</p>\r\n<p style=\"text-align: justify;\">Autores: Patricio O. Condorí, Pablo A. Vilte &amp; <strong>María del P. Galvez</strong></p>\r\n<p>{google_docs}https://fcf.unse.edu.ar/archivos/publicaciones/codinoa-2013/trabajos/tecnologicas/50-condori.pdf|width:800|height:600{/google_docs}</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', 1, 8, '2022-11-23 20:31:31', 691, '', '2022-11-23 20:55:02', 691, 0, '0000-00-00 00:00:00', '2022-11-23 20:31:31', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/45_sistema.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Modelado de STR con perfil MARTE\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 12, 1, '', '', 1, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(8, 87, 'Desgaste y fallas en aceros de colada de Pb ', 'desgaste-y-fallas-en-aceros-de-colada-de-pb', '', '\r\n<p style=\"text-align: justify;\"><strong>RESUMEN:</strong> En procesos de alta temperatura de aleaciones Pb-Ag, se utilizan embudos de colada de aceros aleados. La integridad de estos componentes depende de la relación microestructura-propiedades del acero. En el presente trabajo se estudia el desgaste y fallas de tipo fisuras que se generan en aceros austeníticos y ferríticos (con diferentes propiedades físicas, químicas y microestructurales), en contacto con metal líquido (ML) constituido por Pb-Bi-Sb-Cu-Ag. Se tiene en cuenta la acción del calor y la fragilización por metal líquido. Se plantea mediante un modelo, el mecanismo de generación y propagación de fisuras. En base a la investigación desarrollada, se establecen las características del acero que permitiría lograr mayor durabilidad en servicio.</p>\r\n<p style=\"text-align: justify;\"><strong>Autores: </strong>Edmundo Tolabín, <strong>Teresa Antequera, Edith A. Gareca</strong>, Leonardo Maclis</p>\r\n<p style=\"text-align: justify;\">{google_docs}https://fcf.unse.edu.ar/archivos/publicaciones/codinoa-2013/trabajos/tecnologicas/15-tolabin.pdf|width:800|height:600{/google_docs}</p>', 1, 8, '2022-11-23 21:10:36', 691, '', '2022-11-23 21:11:42', 691, 0, '0000-00-00 00:00:00', '2022-11-23 21:10:36', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/fatiga_1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(9, 88, 'Caracterización de piezas industriales de acero Hadfield sometidas a alto desgaste. ', 'caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste', '', '\r\n<p style=\"text-align: justify;\">RESUMEN: Desde hace unos años se ha dado importancia al estudio de desgaste de piezas industriales, sobre todo debido a que por este fenómeno se generan numerosos inconvenientes y pérdidas económicas asociadas a las paradas de producción necesarias para la reparación o recambio de las piezas dañadas. Esto no solo dificulta la continuidad de la producción sino que conlleva, además, al aumento de los costos empresariales. Un material utilizado en las piezas sometidas a alto desgaste es el acero Hadfield, cuya característica principal es presentar una microestructura austenítica, que al estar expuesta a fuertes impactos durante el trabajo en servicio, se transforma a martensita, dando lugar a un favorable endurecimiento superficial. Siendo una necesidad imperante del sector productivo encarar el problema de la reposición de piezas desgastadas de equipos industriales y teniendo en cuenta la extensiva utilización del acero Hadfield para estos casos, se hace necesario encarar el estudio de las condiciones que mejorarían el tiempo de uso de las piezas fabricadas con este acero. Con miras a encontrar soluciones eficaces tanto técnicas como económicas, en el presente trabajo se estudian piezas de un componente industrial de acero Hadfield, caracterizando las mismas y correlacionando su rendimiento con las condiciones encontradas. </p>\r\n<p style=\"text-align: justify;\"><strong>Autores: </strong>Edmundo Tolabín, <strong>Edith A. Gareca, Teresa Antequera</strong>, Leonardo Maclis1 </p>\r\n<p>{google_docs}https://fcf.unse.edu.ar/archivos/publicaciones/codinoa-2013/trabajos/tecnologicas/20-tolabin.pdf|width:800|height:600{/google_docs}</p>', 1, 8, '2022-11-23 21:17:50', 691, '', '2022-11-23 21:21:32', 691, 0, '0000-00-00 00:00:00', '2022-11-23 21:17:50', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/1189141.jpeg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 0, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(10, 89, 'Un método para generar mezclas CO2 + etanol en estado supercrítico', 'un-metodo-para-generar-mezclas-co2-etanol-en-estado-supercritico', '<p style=\"text-align: justify;\">Se presenta un método para obtener mezclas de CO2 + Etanol en el estado supercrítico, con el propósito de generar mezclas modificadas que permitan la extracción de solutos polares naturales de interés. El método está basado en la solubilización de etanol en CO2 supercrítico por pasaje de éste ultimo a través de un lecho que contiene al primero. El procedimiento implica la determinación de las condiciones de temperatura, presión, flujo de mezcla y masa inicial de etanol en el lecho para lograr una mezcla supercrítica miscible en todo el rango de composición y constancia temporal de ésta durante la extracción. Los resultados indican que es posible obtener mezclas supercríticas CO2 + Etanol mediante este procedimiento, entendiéndose que éstas serán aptas para extracciones de solutos polares naturales.</p>\r\n<p style=\"text-align: justify;\"><strong>Autores:</strong> Noelia A. Palacios , Rodrigo R. Rodriguez &amp; José L. Zacur</p>\r\n<p style=\"text-align: justify;\">{google_docs}https://fcf.unse.edu.ar/archivos/publicaciones/codinoa-2013/trabajos/tecnologicas/75-palacios.pdf|width:800|height:600{/google_docs}</p>\r\n<p style=\"text-align: justify;\"> </p>', '', 1, 2, '2022-11-24 03:27:58', 691, '', '2022-11-24 03:27:58', 0, 0, '0000-00-00 00:00:00', '2022-11-24 03:27:58', '0000-00-00 00:00:00', '{}', '{}', '{}', 1, 0, '', '', 1, 0, '{}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_contentitem_tag_map`
--

CREATE TABLE `i63fc_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_content_frontpage`
--

CREATE TABLE `i63fc_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_content_rating`
--

CREATE TABLE `i63fc_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_content_types`
--

CREATE TABLE `i63fc_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_content_types`
--

INSERT INTO `i63fc_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_core_log_searches`
--

CREATE TABLE `i63fc_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_extensions`
--

CREATE TABLE `i63fc_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_extensions`
--

INSERT INTO `i63fc_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"es-ES\",\"site\":\"es-ES\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"1\",\"info_block_show_title\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"record_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"domains\":[],\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"6\",\"minimum_integers\":\"1\",\"minimum_symbols\":\"1\",\"minimum_uppercase\":\"1\",\"minimum_lowercase\":\"1\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"1\",\"debugGroups\":\"1\",\"sef_advanced\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.1\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"d8c9cdf64f17ecb1b4e76b729920d29e\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `i63fc_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.60.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1669245673}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":2,\"lastrun\":1669224093,\"unique_id\":\"688a7249df16060ad4425fae77b19ca5dab5329d\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1669224028}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `i63fc_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(496, 0, 'plg_quickicon_eos310', 'plugin', 'eos310', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_eos310\",\"type\":\"plugin\",\"creationDate\":\"June 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.0\",\"description\":\"PLG_QUICKICON_EOS310_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"eos310\"}', '{\"last_snoozed_id\":3}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"January 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.5\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"January 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"January 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"January 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'Spanish (español)', 'language', 'es-ES', '', 0, 1, 0, 0, '{\"name\":\"Spanish (espa\\u00f1ol)\",\"type\":\"language\",\"creationDate\":\"23\\/06\\/2022\",\"author\":\"Spanish Translation Team [es-ES]\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"\",\"version\":\"3.10.10.1\",\"description\":\"es-ES - Site language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'Spanish (español)', 'language', 'es-ES', '', 1, 1, 0, 0, '{\"name\":\"Spanish (espa\\u00f1ol)\",\"type\":\"language\",\"creationDate\":\"23\\/06\\/2022\",\"author\":\"Spanish Translation Team [es-ES]\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"\",\"version\":\"3.10.10.1\",\"description\":\"es-ES - Administration language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Spanish (es-ES) Language Pack', 'package', 'pkg_es-ES', '', 0, 1, 1, 0, '{\"name\":\"Spanish (es-ES) Language Pack\",\"type\":\"package\",\"creationDate\":\"23\\/06\\/2022\",\"author\":\"Spanish Translation Team [es-ES]\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"\",\"version\":\"3.10.10.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 3.10.10.1<\\/h2><p><\\/p><p>Please report any bugs or issues at the Spanish Translation Team using the mail: es.es.translation.team@gmail.com<\\/p><p><\\/p><p>Translated by: The Spanish Translation Team [es-ES]<\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 3.10.10.1 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestra direcci\\u00f3n de correo electr\\u00f3nico: es.es.translation.team@gmail.com<\\/p><p><\\/p><p>Traducci\\u00f3n: Spanish Translation Team [es-ES]<\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 10008, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_kunena\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_SYSTEM_KUNENA_DESC\",\"group\":\"\",\"filename\":\"kunena\"}', '{\"jcontentevents\":\"0\",\"jcontentevent_target\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 10008, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_kunena\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_QUICKICON_KUNENA_DESC\",\"group\":\"\",\"filename\":\"kunena\"}', '{\"context\":\"mod_quickicon\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 10008, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{\"name\":\"Kunena Framework\",\"type\":\"library\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2022 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"Kunena Framework.\",\"group\":\"\",\"filename\":\"kunena\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 10008, 'Kunena Media Files', 'file', 'kunena_media', '', 0, 1, 0, 0, '{\"name\":\"Kunena Media Files\",\"type\":\"file\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2022 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"Kunena media files.\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 10008, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{\"name\":\"com_kunena\",\"type\":\"component\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2022 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"COM_KUNENA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'Kunena Forum Package', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{\"name\":\"Kunena Forum Package\",\"type\":\"package\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2022 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"Kunena Forum Package.\",\"group\":\"\",\"filename\":\"pkg_kunena\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'plg_finder_kunena', 'plugin', 'kunena', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_kunena\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2022 Kunena Team. All rights reserved.\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_FINDER_KUNENA_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10010, 0, 'plg_kunena_altauserpoints', 'plugin', 'altauserpoints', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_altauserpoints\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_ALTAUSERPOINTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"altauserpoints\"}', '{\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"activity_points_limit\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10011, 0, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_community\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_COMMUNITY_DESCRIPTION\",\"group\":\"\",\"filename\":\"community\"}', '{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\",\"activity_points_limit\":\"0\",\"activity_stream_limit\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10012, 0, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_comprofiler\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_COMPROFILER_DESCRIPTION\",\"group\":\"\",\"filename\":\"comprofiler\"}', '{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10013, 0, 'PLG_KUNENA_EASYPROFILE', 'plugin', 'easyprofile', 'kunena', 0, 0, 1, 0, '{\"name\":\"PLG_KUNENA_EASYPROFILE\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Onlinecommunityhub\",\"copyright\":\"https:\\/\\/onlinecommunityhub.nl\",\"authorEmail\":\"info@onlinecommunityhub.nl\",\"authorUrl\":\"https:\\/\\/onlinecommunityhub.nl\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_EASYPROFILE_DESCRIPTION\",\"group\":\"\",\"filename\":\"easyprofile\"}', '{\"avatar\":\"1\",\"guestavatar\":\"easyprofile\",\"profile\":\"1\",\"userlist\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10014, 0, 'plg_kunena_easysocial', 'plugin', 'easysocial', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_easysocial\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"StackIdeas\",\"copyright\":\"http:\\/\\/stackideas.com\",\"authorEmail\":\"support@stackideas.com\",\"authorUrl\":\"http:\\/\\/stackideas.com\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_EASYSOCIAL_DESCRIPTION\",\"group\":\"\",\"filename\":\"easysocial\"}', '{\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\",\"activity_badge_limit\":\"0\",\"activity_points_limit\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10015, 0, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_gravatar\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_GRAVATAR_DESCRIPTION\",\"group\":\"\",\"filename\":\"gravatar\"}', '{\"avatar\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10016, 0, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_uddeim\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_UDDEIM_DESCRIPTION\",\"group\":\"\",\"filename\":\"uddeim\"}', '{\"private\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10017, 0, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{\"name\":\"plg_kunena_kunena\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_KUNENA_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}', '{\"avatar\":\"1\",\"profile\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(10018, 0, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{\"name\":\"plg_kunena_joomla\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"access\":\"1\",\"login\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10019, 0, 'plg_kunena_finder', 'plugin', 'finder', 'kunena', 0, 0, 1, 0, '{\"name\":\"plg_kunena_finder\",\"type\":\"plugin\",\"creationDate\":\"2022-11-21\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2022 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"https:\\/\\/www.kunena.org\",\"version\":\"5.2.12\",\"description\":\"PLG_KUNENA_FINDER_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10020, 10037, 'COM_JEVENTS', 'component', 'com_jevents', '', 1, 1, 0, 0, '{\"name\":\"COM_JEVENTS\",\"type\":\"component\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2022 GWESystems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"contact via website\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"COM_JEVENTS_DESC\",\"group\":\"\",\"filename\":\"manifest\"}', '{\"com_difficulty\":\"1\",\"framework\":\"native\",\"bootstrapcss\":\"1\",\"clubcode\":\"\",\"hideunusedmenuitems\":\"0\",\"shownews\":\"1\",\"landingpage\":\"cpanel.cpanel\",\"leftmenutrigger\":\"0\",\"j4sidebar\":\"0\",\"com_calViewName\":\"flat\",\"darktemplate\":\"0\",\"com_dateformat\":\"3\",\"com_calHeadline\":\"menu\",\"com_calUseIconic\":\"1\",\"iconstoshow\":[\"byyear\",\"bymonth\",\"byweek\",\"byday\",\"search\"],\"com_navbarcolor\":\"green\",\"com_earliestyear\":\"-2\",\"com_latestyear\":\"+5\",\"com_starday\":\"1\",\"com_byview\":\"1\",\"com_print_icon_view\":\"1\",\"com_email_icon_view\":\"1\",\"fixjquery\":\"1\",\"show_adminpanel\":\"1\",\"icaltimezonelive\":\"\",\"regexsearch\":\"1\",\"catseparator\":\",\",\"daylist_multifirst\":\"0\",\"enable_gsed\":\"0\",\"ldjson_striptags\":\"1\",\"sevd_imagename\":\"0\",\"sevd_imagesize\":\"1920x1920\",\"sevd_defaultimage\":\"\\/components\\/com_jevents\\/images\\/logo.png\",\"sevd_peopletype\":\"0\",\"sevd_organizertype\":\"0\",\"sevd_onlineeventfield\":\"0\",\"sevd_eventstatus\":\"0\",\"jevadmin\":\"0\",\"authorisedonly\":\"0\",\"jevpublishown\":\"0\",\"jevunpublishonedit\":\"1\",\"category_allow_deny\":\"1\",\"rules\":{\"core.manage\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.create\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.edit.own\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.edit\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.edit.state\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.edit.state.own\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.deleteall\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"},\"core.admin\":{\"1\":\"\",\"9\":\"\",\"6\":\"\",\"7\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"8\":\"\"}},\"newfrontendediting\":\"1\",\"enableshowon\":\"0\",\"titleplaceholder\":\"Start by typing event title ...\",\"com_calUseStdTime\":\"1\",\"com_editdateformat\":\"Y-m-d\",\"dayselect\":\"0\",\"disablerepeats\":\"0\",\"defaultcat\":\"0\",\"defaultcal\":\"0\",\"default_noendtime\":\"0\",\"default_alldayevent\":\"0\",\"forcepopupcalendar\":\"1\",\"com_calForceCatColorEventForm\":\"2\",\"editpopup\":\"0\",\"popupw\":\"800\",\"popuph\":\"500\",\"com_single_pane_edit\":\"0\",\"timebeforedescription\":\"0\",\"disablemultiday\":\"0\",\"multiday\":\"1\",\"ignorelayout\":\"0\",\"com_show_editor_buttons\":\"0\",\"com_editor_button_exceptions\":\"pagebreak,readmore\",\"com_notifyboth\":\"0\",\"com_notifyallevents\":\"0\",\"com_notifyauthor\":\"0\",\"showpriority\":\"0\",\"showPriorityACL\":\"0\",\"showtimezone\":\"0\",\"offeredtimezones\":[\"\"],\"checkconflicts\":\"0\",\"skipreferrer\":\"0\",\"defaultstarttime\":\"08:00\",\"defaultendtime\":\"17:00\",\"multicategory\":\"0\",\"blocktoplevelcategories\":\"0\",\"bootstrapchosen\":\"1\",\"allowraw\":\"0\",\"com_edit_toolbar\":\"0\",\"notifymessage\":\"<p>Title : {TITLE}<br \\/><br \\/> {DESCRIPTION}<br \\/><br \\/> Event submitted from [ {LIVESITE} ] by [ {AUTHOR} ]<br \\/> View this event : {VIEWLINK}<br \\/> Edit this event : {EDITLINK}<br \\/> Manage your events : <a href=\\\"{MANAGEEVENTS}\\\">Manage Events<\\/a><\\/p>\",\"editreturnto\":\"day.listevents\",\"sender_config\":\"0\",\"sender_name\":\"\",\"sender_email\":\"\",\"email_replyto\":\"1\",\"com_mailview\":\"1\",\"com_hitsview\":\"1\",\"autoprint\":\"0\",\"com_repeatview\":\"1\",\"contact_display_name\":\"0\",\"redirect_detail\":\"0\",\"shownavbar_detail\":\"1\",\"permatarget\":\"\",\"com_calCutTitle\":\"15\",\"com_calMaxDisplay\":\"15\",\"com_calDisplayStarttime\":\"1\",\"com_calShowLegend\":\"1\",\"com_enableToolTip\":\"1\",\"tooltiptype\":\"bootstrap\",\"com_calTTBackground\":\"1\",\"com_calEventListRowsPpg\":\"10\",\"showyearpast\":\"1\",\"com_showrepeats\":\"0\",\"showyeardate\":\"1\",\"year_show_noev_found\":\"0\",\"icaltimezone\":\"\",\"icalkey\":\"SECRET_PHRASE\",\"showicalicon\":\"0\",\"disableicalexport\":\"0\",\"icalmultiday\":\"0\",\"icalmultiday24h\":\"0\",\"feimport\":\"0\",\"allowedit\":\"0\",\"icalformatted\":\"0\",\"source_url\":\"0\",\"default_itemid\":\"\",\"converturlstolinksonimport\":\"1\",\"com_rss_cache\":\"1\",\"com_rss_cache_time\":\"3600\",\"com_rss_count\":\"5\",\"com_rss_live_bookmarks\":\"1\",\"com_rss_modid\":\"0\",\"com_rss_title\":\"JEvents RSS Feed for Joomla\",\"com_rss_description\":\"Powered by JEvents!\",\"com_rss_limit_text\":\"0\",\"com_rss_text_length\":\"20\",\"com_rss_logo\":\"\",\"com_cache\":\"0\",\"newsef\":\"1\",\"nocatindetaillink\":\"0\",\"noeventdetailinurl\":\"0\",\"com_blockRobots\":\"0\",\"robotprior\":\"-1 month\",\"robotpost\":\"+1 month\",\"redirectrobots\":\"0\",\"robotmenuitem\":\"\",\"blockall\":\"0\",\"largeDataSetLimit\":\"100000\",\"subquery\":\"0\",\"module_config_from_component\":\"0\",\"modcal_DispLastMonth\":\"NO\",\"modcal_DispLastMonthDays\":\"0\",\"modcal_DispNextMonth\":\"NO\",\"modcal_DispNextMonthDays\":\"0\",\"modcal_LinkCloaking\":\"0\",\"modlatest_MaxEvents\":\"10\",\"modlatest_Mode\":\"0\",\"modlatest_Days\":\"5\",\"startnow\":\"1\",\"modlatest_NoRepeat\":\"0\",\"modlatest_DispYear\":\"0\",\"modlatest_multiday\":\"0\",\"modlatest_DispLinks\":\"1\",\"modlatest_DisDateStyle\":\"0\",\"modlatest_DisTitleStyle\":\"0\",\"modlatest_LinkToCal\":\"0\",\"modlatest_SortReverse\":\"0\",\"modlatest_LinkCloaking\":\"0\",\"modlatest_CustFmtStr\":\"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br\\/>${title}\",\"modlatest_RSS\":\"0\",\"modlatest_contentplugins\":\"0\",\"disablesmartphone\":1}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 10037, 'MOD_JEV_CALENDAR_TITLE', 'module', 'mod_jevents_cal', '', 0, 1, 0, 0, '{\"name\":\"MOD_JEV_CALENDAR_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2022 GWESystems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_CALENDAR_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_cal\"}', '{\"@spacer\":\"JEV_LATEST_EXTRAS_TAB_LABEL\",\"target_itemid\":\"\",\"catidnew\":\"\",\"include_subcats\":\"1\",\"modcal_useLocalParam\":\"0\",\"showtooltips\":\"0\",\"noeventcheck\":\"0\",\"ignorecatfilter\":\"0\",\"ignorefiltermodule\":\"1\",\"minical_showlink\":\"1\",\"minical_prevyear\":\"1\",\"minical_prevmonth\":\"1\",\"minical_actmonth\":\"1\",\"minical_actyear\":\"1\",\"minical_nextmonth\":\"1\",\"minical_nextyear\":\"1\",\"minical_usedate\":\"1\",\"modcal_DispLastMonth\":\"NO\",\"modcal_DispLastMonthDays\":\"0\",\"modcal_DispNextMonth\":\"NO\",\"modcal_DispNextMonthDays\":\"0\",\"emptydaylinks\":\"1\",\"extras0\":\"\",\"extras1\":\"\",\"extras2\":\"\",\"extras3\":\"\",\"extras4\":\"\",\"extras5\":\"\",\"extras6\":\"\",\"extras7\":\"\",\"extras8\":\"\",\"extras9\":\"\",\"extras10\":\"\",\"extras11\":\"\",\"extras12\":\"\",\"extras13\":\"\",\"com_calViewName\":\"\",\"moduleclass_sfx\":\"\",\"inc_ec_css\":\"1\",\"mod_cal_width\":\"\",\"mod_cal_height\":\"\",\"mod_cal_rowheight\":\"\",\"cache\":\"1\",\"modcal_LinkCloaking\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 10037, 'MOD_JEV_LEGEND_TITLE', 'module', 'mod_jevents_legend', '', 0, 1, 0, 0, '{\"name\":\"MOD_JEV_LEGEND_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2022 GWESystems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_LEGEND_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_legend\"}', '{\"com_calViewName\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"show_admin\":\"0\",\"modlegend_inccss\":\"1\",\"nonjeventsdisable\":\"1\",\"target_itemid\":\"\",\"catidnew\":\"\",\"include_subcats\":\"1\",\"hideinactivekids\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 10037, 'MOD_JEV_LATEST_EVENTS_TITLE', 'module', 'mod_jevents_latest', '', 0, 1, 0, 0, '{\"name\":\"MOD_JEV_LATEST_EVENTS_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2022 GWESystems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_LATEST_EVENTS_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_latest\"}', '{\"@spacer\":\"ADDITIONAL_CONSTRAINTS\",\"com_calViewName\":\"\",\"cache\":\"0\",\"contentplugins\":\"0\",\"moduleclass_sfx\":\"\",\"catidnew\":\"\",\"include_subcats\":\"1\",\"categoryAllOrAny\":\"0\",\"ignorecatfilter\":\"0\",\"ignorefiltermodule\":\"0\",\"target_itemid\":\"\",\"modlatest_inccss\":\"1\",\"layout\":\"\",\"modlatest_useLocalParam\":\"1\",\"showNavigation\":\"0\",\"uselayouteditor\":\"0\",\"layouteditorlink\":\"\",\"CustomFromTemplate\":\"1\",\"modlatest_CustFmtStr\":\"<span class=\\\"icon-calendar\\\"><\\/span>${startDate(%d %b %Y)};<br \\/><span class=\\\"icon-time\\\"><\\/span>${startDate(%I:%M%p)}[!a: - ${endDate(%I:%M%p)}]<br \\/><span class=\\\"icon-hand-right\\\"><\\/span>${title}\",\"modlatest_ignorebr\":\"0\",\"modlatest_customcss\":\"\",\"modlatest_MaxEvents\":\"10\",\"modlatest_Mode\":\"3\",\"modlatest_Days\":\"30\",\"startnow\":\"0\",\"pastonly\":\"0\",\"modlatest_NoRepeat\":\"0\",\"modlatest_multiday\":\"0\",\"modlatest_SortReverse\":\"0\",\"modlatest_DispLinks\":\"1\",\"modlatest_DispYear\":\"0\",\"modlatest_NoEvents\":\"1\",\"modlatest_DisDateStyle\":\"0\",\"modlatest_DisTitleStyle\":\"0\",\"modlatest_LinkToCal\":\"0\",\"modlatest_LinkCloaking\":\"0\",\"modlatest_RSS\":\"0\",\"modlatest_rss_title\":\"\",\"modlatest_rss_description\":\"\",\"modlatest_templatetop\":\"\",\"modlatest_templaterow\":\"\",\"modlatest_templatebottom\":\"\",\"bootstrapcss\":\"1\",\"extras0\":\"\",\"extras1\":\"\",\"extras2\":\"\",\"extras3\":\"\",\"extras4\":\"\",\"extras5\":\"\",\"extras6\":\"\",\"extras7\":\"\",\"extras8\":\"\",\"extras9\":\"\",\"extras10\":\"\",\"extras11\":\"\",\"extras12\":\"\",\"extras13\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 10037, 'MOD_JEV_FILTER_MODULE_TITLE', 'module', 'mod_jevents_filter', '', 0, 1, 0, 0, '{\"name\":\"MOD_JEV_FILTER_MODULE_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2022 GWESystems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_FILTER_MODULE_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_filter\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 10037, 'MOD_JEV_CUSTOM_MODULE_TITLE', 'module', 'mod_jevents_custom', '', 0, 1, 0, 0, '{\"name\":\"MOD_JEV_CUSTOM_MODULE_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2013-2022 GWESystems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_CUSTOM_MODULE_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_custom\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 10037, 'MOD_JEV_SWITCH_VIEW_TITLE', 'module', 'mod_jevents_switchview', '', 0, 1, 0, 0, '{\"name\":\"MOD_JEV_SWITCH_VIEW_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2009-2022 GWESystems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_SWITCH_VIEW_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_switchview\"}', '{\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"show_preview\":\"0\",\"target_itemid\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 10037, 'MOD_JEV_DASHBOARD_MODULE_TITLE', 'module', 'mod_jevents_dashboard', '', 1, 1, 2, 0, '{\"name\":\"MOD_JEV_DASHBOARD_MODULE_TITLE\",\"type\":\"module\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2021-2022 GWE Systems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"MOD_JEV_DASHBOARD_MODULE_DESC\",\"group\":\"\",\"filename\":\"mod_jevents_dashboard\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 10037, 'PLG_FINDER_JEVENTS', 'plugin', 'jevents', 'finder', 0, 0, 1, 0, '{\"name\":\"PLG_FINDER_JEVENTS\",\"type\":\"plugin\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2010-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"PLG_FINDER_JEVENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jevents\"}', '{\"target_itemid\":\"\",\"past\":\"-1\",\"future\":\"-1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 10037, 'PLG_JEV_SEARCH_TITLE', 'plugin', 'eventsearch', 'search', 0, 1, 1, 0, '{\"name\":\"PLG_JEV_SEARCH_TITLE\",\"type\":\"plugin\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2008-2022 GWESystems Ltd, 2006-2008 JEvents Project Group\",\"authorEmail\":\"\",\"authorUrl\":\"www.jevents.net\",\"version\":\"3.6.43\",\"description\":\"PLG_JEV_SEARCH_DESC\",\"group\":\"\",\"filename\":\"eventsearch\"}', '{\"search_limit\":\"50\",\"date_format\":\"%Y-%m-%d\",\"target_itemid\":\"\",\"all_language_search\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 10037, 'plg_installer_jeventsinstaller', 'plugin', 'jeventsinstaller', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_jeventsinstaller\",\"type\":\"plugin\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2016-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"via website\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"PLG_INSTALLER_JEVENTSINSTALLER\",\"group\":\"\",\"filename\":\"jeventsinstaller\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 10037, 'PLG_JEV_CORE_CONTENT_PLUGIN_TITLE', 'plugin', 'jevents', 'content', 0, 1, 1, 0, '{\"name\":\"PLG_JEV_CORE_CONTENT_PLUGIN_TITLE\",\"type\":\"plugin\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2012-2022 GWESystems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"PLG_JEV_CORE_CONTENT_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"jevents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 10037, 'JEvents - Action Log', 'plugin', 'jevents', 'actionlog', 0, 0, 1, 0, '{\"name\":\"JEvents - Action Log\",\"type\":\"plugin\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2010-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"tony@jevents.net\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"Action Log Plugin for JEvents Core - Club Addons, need their own action log plugin.\",\"group\":\"\",\"filename\":\"jevents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 10037, 'PLG_SYSTEM_GWEJSON', 'plugin', 'gwejson', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_GWEJSON\",\"type\":\"plugin\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2015-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"via website\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"PLG_SYSTEM_JSON_EXECUTION_WRAPPER\",\"group\":\"\",\"filename\":\"gwejson\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 0, 'JEV_PACKAGE_TITLE', 'package', 'pkg_jevents', '', 0, 1, 1, 0, '{\"name\":\"JEV_PACKAGE_TITLE\",\"type\":\"package\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2012-JEVENTS_COPYRIGHT GWE Systems Ltd\",\"authorEmail\":\"\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"JEV_PACKAGE_DESC\",\"group\":\"\",\"filename\":\"pkg_jevents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 10037, 'googl Shortener', 'library', 'googl', '', 0, 1, 1, 0, '{\"name\":\"googl Shortener\",\"type\":\"library\",\"creationDate\":\"October 2022\",\"author\":\"Sebastian Wyder package by Carlos Camara\",\"copyright\":\"(C) 2010-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"carcam@jevents.net\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"Googl Shortener library created by Sebastian Wyder (https:\\/\\/github.com\\/sebi\\/googl-php) and package by\\n\\t\\tCarlos C\\u00e1mara (http:\\/\\/www.jevents.net)\\n\\t\",\"group\":\"\",\"filename\":\"googl\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 10037, 'JEvents - Bootstrap Modal Library', 'library', 'jevents/jevmodal', '', 0, 1, 1, 0, '{\"name\":\"JEvents - Bootstrap Modal Library\",\"type\":\"library\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2015-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"via website\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"Bootstrap Modal Library for JEvents\",\"group\":\"\",\"filename\":\"jevmodal\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 10037, 'JEvents - Typeahead Library', 'library', 'jevents/jevtypeahead', '', 0, 1, 1, 0, '{\"name\":\"JEvents - Typeahead Library\",\"type\":\"library\",\"creationDate\":\"October 2022\",\"author\":\"GWE Systems Ltd\",\"copyright\":\"(C) 2015-2022 GWESystems Ltd. All rights reserved.\",\"authorEmail\":\"carcam@jevents.net\",\"authorUrl\":\"www.gwesystems.com\",\"version\":\"3.6.43\",\"description\":\"Typeahead Library for JEvents\",\"group\":\"\",\"filename\":\"jevtypeahead\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 0, 'JoomGallery', 'component', 'com_joomgallery', '', 1, 1, 0, 0, '{\"name\":\"JoomGallery\",\"type\":\"component\",\"creationDate\":\"2022\\/08\\/15\",\"author\":\"JoomGallery::ProjectTeam\",\"copyright\":\"This component is released under the GNU\\/GPL License\",\"authorEmail\":\"team@joomgalleryfriends.net\",\"authorUrl\":\"https:\\/\\/www.joomgalleryfriends.net\",\"version\":\"3.6.0\",\"description\":\"JoomGallery 3 is a native Joomla! 3.x gallery component\",\"group\":\"\",\"filename\":\"joomgallery\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 0, 'mod_joomgithub', 'module', 'mod_joomgithub', '', 1, 1, 2, 0, '{\"name\":\"mod_joomgithub\",\"type\":\"module\",\"creationDate\":\"February 2021\",\"author\":\"Manuel H\\u00e4usler\",\"copyright\":\"2020 Manuel H\\u00e4usler\",\"authorEmail\":\"tech.spuur@quickline.com\",\"authorUrl\":\"https:\\/\\/tech.spuur.ch\",\"version\":\"1.0.0\",\"description\":\"MOD_GITHUB_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_joomgithub\"}', '{\"layout\":\"default\",\"Owner\":\"BenTasker\",\"repo\":\"PHPCredLocker\",\"CommitImg\":\"0\",\"DispCommitter\":\"1\",\"DispRecords\":\"5\",\"Branch\":\"master\",\"IssueLabels\":\"\",\"IssueStatus\":\"0\",\"IssueSort\":\"updated\",\"IssueOrder\":\"desc\",\"JoinedDate\":\"d M Y\",\"UserListRepos\":\"0\",\"UserRepoFilter\":\"\",\"RepoDate\":\"d M Y\",\"ClssSuffix\":\"\",\"DivSize\":\"0\",\"DateFormat\":\"d M H:i\",\"CachingEnabled\":\"1\",\"shortcache\":\"30\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 0, 'JoomGallery es-ES', 'file', 'install', '', 0, 1, 0, 0, '{\"name\":\"JoomGallery es-ES\",\"type\":\"file\",\"creationDate\":\"2020-01-20\",\"author\":\"JoomGallery::ProjectTeam\",\"copyright\":\"Copyright (C) 2008 - 2020 JoomGallery::ProjectTeam. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.joomgalleryfriends.net\\/\",\"version\":\"3.1.1\",\"description\":\"\\n    <div align=\\\"center\\\">\\n      <table border=\\\"0\\\" width=\\\"100%\\\">\\n        <tr>\\n          <td width=\\\"100%\\\" colspan=\\\"2\\\">\\n            <div align=\\\"center\\\">\\n              <h3>Spanish Translation for JoomGallery 3.x<\\/h3>\\n              <br \\/><strong>by: JoomGallery::TranslationTeam::Spanish<\\/strong>\\n              <br \\/>(based on a translation by: Ernesto de la Fuente)\\n            <\\/div>\\n            <hr \\/>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td width=\\\"25%\\\"><u><strong>Translated areas:<\\/strong><\\/u><\\/td>\\n          <td width=\\\"75%\\\">Administrator (Backend) and Website (Frontend) excl. EXIF-Tags incl. IPTC-Tags<\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td width=\\\"25%\\\"><u><strong>Translation version:<\\/strong><\\/u><\\/td>\\n          <td width=\\\"75%\\\">3.1.1<\\/td>\\n        <\\/tr>\\n        <td width=\\\"100%\\\" colspan=\\\"2\\\"><hr \\/><\\/td>\\n        <tr>\\n          <td width=\\\"25%\\\"><u><strong>JoomGallery-Website:<\\/strong><\\/u><\\/td>\\n          <td width=\\\"75%\\\"><a href=\\\"https:\\/\\/www.en.joomgalleryfriends.net\\\" target=\\\"_blank\\\">https:\\/\\/www.en.joomgalleryfriends.net<\\/a><\\/td>\\n        <\\/tr>\\n        <\\/tr>\\n        <td width=\\\"100%\\\" colspan=\\\"2\\\"><hr \\/><\\/td>\\n        <tr>\\n      <\\/table>\\n    <\\/div>\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 0, 'mod_joomcat', 'module', 'mod_joomcat', '', 0, 1, 0, 0, '{\"name\":\"mod_joomcat\",\"type\":\"module\",\"creationDate\":\"2020\\/08\\/17\",\"author\":\"JoomGallery::Project Team\",\"copyright\":\"(C) 2009 - 2020 JoomGallery::Project Team\",\"authorEmail\":\"team@joomgalleryfriends.net\",\"authorUrl\":\"www.joomgalleryfriends.net\",\"version\":\"3.0.4\",\"description\":\"MOD_JOOMCAT_DESC\",\"group\":\"\",\"filename\":\"mod_joomcat\"}', '{\"moduleclass_sfx\":\"\",\"layout\":\"default\",\"cfg_itemid\":\"\",\"cfg_catmode\":\"0\",\"cfg_count\":\"4\",\"cfg_rootcat\":\"1\",\"cfg_blacklist_cats\":\"\",\"cfg_showhidden\":\"0\",\"cfg_showthumb\":\"0\",\"cfg_showimglink\":\"default\",\"cfg_showimgcat\":\"1\",\"cfg_showimgcatlink\":\"1\",\"cfg_showcatrate\":\"0\",\"cfg_showcathits\":\"0\",\"cfg_showcatdescr\":\"0\",\"cfg_showcatadditionalfields\":\"0\",\"cfg_showimgdescr\":\"0\",\"cfg_columns\":\"1\",\"cfg_thumbnailimgtype\":\"thumb\",\"cfg_cropimg\":\"0\",\"cfg_cropimgwidth\":\"50\",\"cfg_cropimgheight\":\"50\",\"cfg_thumbnaildim\":\"0\",\"cfg_thumbnaildimvalue\":\"150\",\"cfg_imgposition\":\"1\",\"cfg_horalign\":\"center\",\"cfg_imgshowborder\":\"1\",\"cfg_imgborderwidth\":\"1px\",\"cfg_imgborderstyle\":\"solid\",\"cfg_imgbordercolor\":\"#C3C3C3\",\"cfg_imgpadding\":\"3px\",\"cfg_imgbgcolor\":\"#FFFFFF\",\"cfg_showshorttext\":\"0\",\"cfg_showhorruler\":\"1\",\"cfg_txtresetliststyle\":\"0\",\"cfg_showvml\":\"0\",\"cfg_vmlalign\":\"right\",\"cfg_vmltext\":\"View more ...\",\"cfg_sldimgsort\":\"0\",\"cfg_sldmaximg\":\"0\",\"cfg_sldjgsettings\":\"1\",\"cfg_sldtimer\":\"6000\",\"cfg_sldtransition\":\"0\",\"cfg_sldtranstime\":\"2000\",\"cfg_sldmaxdimauto\":\"0\",\"cfg_sldwidth\":\"640\",\"cfg_sldheight\":\"480\",\"cfg_sldinfopane\":\"0\",\"cfg_sldcarousel\":\"0\",\"cfg_sldarrows\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 0, 'plg_content_joomlarrssb', 'plugin', 'joomlarrssb', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_joomlarrssb\",\"type\":\"plugin\",\"creationDate\":\"01.09.2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"3.0.6\",\"description\":\"PLG_CONTENT_JOOMLARRSSB_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlarrssb\"}', '{\"displayEmail\":\"1\",\"displayFacebook\":\"1\",\"displayLinkedin\":\"1\",\"displayPinterest\":\"1\",\"displayTwitter\":\"1\",\"displayPosition\":\"bottom\",\"viewArchive\":\"1\",\"viewArticle\":\"1\",\"viewCategory\":\"1\",\"viewFeatured\":\"1\",\"useYOURLS\":\"1\",\"YOURLSUrl\":\"https:\\/\\/joom.la\",\"YOURLSAPIKey\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 0, 'MOD_DIGI_SHOWCASE', 'module', 'mod_digi_showcase', '', 0, 1, 0, 0, '{\"name\":\"MOD_DIGI_SHOWCASE\",\"type\":\"module\",\"creationDate\":\"Oct 2021\",\"author\":\"Digigreg\",\"copyright\":\"Copyright Digigreg 2014-2021\",\"authorEmail\":\"info@digigreg.com\",\"authorUrl\":\"https:\\/\\/www.digigreg.com\",\"version\":\"2.1.1\",\"description\":\"MOD_DIGI_SHOWCASE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_digi_showcase\"}', '{\"order_password\":\"318_p_1K938p9T\",\"module_version\":\"2.1.1\",\"show-wizard\":\"1\",\"data-source\":\"0\",\"show-featured-items\":\"1\",\"show-expired-articles\":\"0\",\"articles-time-correction\":\"+0\",\"order-by\":\"0\",\"order-type\":\"1\",\"include-title-inside\":\"0\",\"module-title-tag\":\"p\",\"mode\":\"0\",\"bootstrap-version\":\"0\",\"rows\":\"2\",\"columns\":\"2\",\"carousel-version\":\"1\",\"carousel-mode\":\"0\",\"carousel-autoanimation\":\"0\",\"carousel-autoanimation-interval\":\"5000\",\"carousel-items-quantity\":\"6\",\"carousel-columns-quantity\":\"3\",\"carousel-scroll-quantity\":\"1\",\"carousel-arrows\":\"1\",\"carousel-dots\":\"0\",\"carousel-loop\":\"1\",\"carousel-center-element\":\"0\",\"timeline-items-quantity\":\"6\",\"timeline-animation\":\"1\",\"timeline-image-inside\":\"0\",\"timeline-primary-color\":\"#fff\",\"timeline-secondary-color\":\"#f5f5f5\",\"timeline-border-radius\":\"3\",\"timeline-max-width\":\"1200\",\"timeline-switch-width\":\"768\",\"sphere-items-quantity\":\"18\",\"sphere-width\":\"400\",\"sphere-height\":\"400\",\"sphere-radius\":\"150\",\"masonry-items-quantity\":\"20\",\"masonry-columns\":\"4\",\"masonry-mode\":\"1\",\"masonry-blocks-size\":\"1\",\"masonry-pattern\":\"\",\"masonry-border-radius\":\"5\",\"masonry-tablet-switch\":\"960\",\"masonry-smartphone-switch\":\"640\",\"filter-switch\":\"1\",\"filter-group\":\"0\",\"filter-alignment\":\"1\",\"filter-background-color\":\"#f5f5f5\",\"filter-color\":\"#333333\",\"filter-background-hover-color\":\"#005e8d\",\"filter-hover-color\":\"#ffffff\",\"items-padding\":\"0 10 0 10\",\"module-padding\":\"0 0 0 0\",\"show-image\":\"1\",\"image-type\":\"3\",\"show-placeholder-image\":\"1\",\"generate-thumbnail\":\"1\",\"image-width\":\"100\",\"image-height\":\"100\",\"show-title\":\"1\",\"title-characters\":\"50\",\"title-position\":\"1\",\"title-alignment\":\"1\",\"title-tag\":\"h3\",\"show-description\":\"1\",\"description-characters\":\"100\",\"text-position\":\"1\",\"text-alignment\":\"1\",\"text-tag\":\"p\",\"strip-html-text\":\"1\",\"readmore\":\"0\",\"readmore-text\":\"Read more...\",\"readmore-style\":\"1\",\"show-category\":\"0\",\"category-position\":\"1\",\"category-alignment\":\"1\",\"category-tag\":\"h4\",\"show-extra-info\":\"1\",\"extra-info-position\":\"1\",\"extra-info-alignment\":\"1\",\"extra-info-tag\":\"p\",\"link-switch\":\"1\",\"link-alias\":\"1\",\"link-category\":\"1\",\"link-item\":\"1\",\"forced-link-item-switch\":\"0\",\"forced-link-item\":\"\",\"items-background-switch\":\"0\",\"items-background-type\":\"0\",\"items-background-image-type\":\"0\",\"items-background-custom-color\":\"\",\"items-background-overlay\":\"0\",\"items-background-overlay-color\":\"#000000\",\"items-background-overlay-text-color\":\"#ffffff\",\"items-background-overlay-opacity\":\"0.7\",\"items-background-overlay-content-opacity\":\"0.4\",\"items-background-overlay-transition\":\"0.3\",\"jquery-no-conflict-switch\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 0, 'Content - Embed Google Docs Viewer', 'plugin', 'embed_google_docs_viewer', 'content', 0, 1, 1, 0, '{\"name\":\"Content - Embed Google Docs Viewer\",\"type\":\"plugin\",\"creationDate\":\"18 Aug 2019\",\"author\":\"Petteri Kivim\\u00e4ki\",\"copyright\":\"(C)2012-2019 Petteri Kivim\\u00e4ki\",\"authorEmail\":\"petteri.kivimaki@helsinki.fi\",\"authorUrl\":\"\",\"version\":\"1.5.0\",\"description\":\"PLG_EMBED_GOOGLE_DOCS_VIEWER_DESC\",\"group\":\"\",\"filename\":\"embed_google_docs_viewer\"}', '{\"base_url\":\"www.mywebsite.com\\/images\\/pdfs\\/\",\"add_link\":\"1\",\"link_position\":\"bottom\",\"link_label\":\"View in full screen\",\"google_docs_mode\":\"0\",\"height\":\"400\",\"width\":\"300\",\"border\":\"0\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"https\":\"1\",\"language\":\"-\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_fields`
--

CREATE TABLE `i63fc_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_fields_categories`
--

CREATE TABLE `i63fc_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_fields_groups`
--

CREATE TABLE `i63fc_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_fields_values`
--

CREATE TABLE `i63fc_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_filters`
--

CREATE TABLE `i63fc_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links`
--

CREATE TABLE `i63fc_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) DEFAULT 1,
  `access` int(11) DEFAULT 0,
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms0`
--

CREATE TABLE `i63fc_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms1`
--

CREATE TABLE `i63fc_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms2`
--

CREATE TABLE `i63fc_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms3`
--

CREATE TABLE `i63fc_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms4`
--

CREATE TABLE `i63fc_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms5`
--

CREATE TABLE `i63fc_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms6`
--

CREATE TABLE `i63fc_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms7`
--

CREATE TABLE `i63fc_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms8`
--

CREATE TABLE `i63fc_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_terms9`
--

CREATE TABLE `i63fc_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_termsa`
--

CREATE TABLE `i63fc_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_termsb`
--

CREATE TABLE `i63fc_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_termsc`
--

CREATE TABLE `i63fc_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_termsd`
--

CREATE TABLE `i63fc_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_termse`
--

CREATE TABLE `i63fc_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_links_termsf`
--

CREATE TABLE `i63fc_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_taxonomy`
--

CREATE TABLE `i63fc_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_finder_taxonomy`
--

INSERT INTO `i63fc_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_taxonomy_map`
--

CREATE TABLE `i63fc_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_terms`
--

CREATE TABLE `i63fc_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) NOT NULL,
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_terms_common`
--

CREATE TABLE `i63fc_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_finder_terms_common`
--

INSERT INTO `i63fc_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_tokens`
--

CREATE TABLE `i63fc_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_tokens_aggregate`
--

CREATE TABLE `i63fc_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_finder_types`
--

CREATE TABLE `i63fc_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_finder_types`
--

INSERT INTO `i63fc_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_catmap`
--

CREATE TABLE `i63fc_jevents_catmap` (
  `evid` int(12) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 1,
  `ordering` int(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_jevents_catmap`
--

INSERT INTO `i63fc_jevents_catmap` (`evid`, `catid`, `ordering`) VALUES
(2, 10, 0),
(3, 10, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_exception`
--

CREATE TABLE `i63fc_jevents_exception` (
  `ex_id` int(12) NOT NULL,
  `rp_id` int(12) NOT NULL DEFAULT 0,
  `eventid` int(12) NOT NULL DEFAULT 1,
  `eventdetail_id` int(12) NOT NULL DEFAULT 0,
  `exception_type` int(2) NOT NULL DEFAULT 0,
  `startrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `oldstartrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempfield` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_filtermap`
--

CREATE TABLE `i63fc_jevents_filtermap` (
  `fid` int(12) NOT NULL,
  `userid` int(12) NOT NULL DEFAULT 0,
  `modid` int(12) NOT NULL DEFAULT 0,
  `andor` tinyint(3) NOT NULL DEFAULT 0,
  `filters` text NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `md5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_icsfile`
--

CREATE TABLE `i63fc_jevents_icsfile` (
  `ics_id` int(12) NOT NULL,
  `srcURL` varchar(500) NOT NULL DEFAULT '',
  `label` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(120) NOT NULL DEFAULT '',
  `icaltype` tinyint(3) NOT NULL DEFAULT 0,
  `isdefault` tinyint(3) NOT NULL DEFAULT 0,
  `ignoreembedcat` tinyint(3) NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 1,
  `access` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `refreshed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autorefresh` tinyint(3) NOT NULL DEFAULT 0,
  `overlaps` tinyint(3) NOT NULL DEFAULT 0,
  `createnewcategories` tinyint(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_jevents_icsfile`
--

INSERT INTO `i63fc_jevents_icsfile` (`ics_id`, `srcURL`, `label`, `filename`, `icaltype`, `isdefault`, `ignoreembedcat`, `state`, `access`, `catid`, `created`, `created_by`, `created_by_alias`, `modified_by`, `refreshed`, `autorefresh`, `overlaps`, `createnewcategories`) VALUES
(1, '', 'Default', 'Initial ICS File', 2, 1, 0, 1, 1, 10, '0000-00-00 00:00:00', 0, '', 0, '0000-00-00 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_repetition`
--

CREATE TABLE `i63fc_jevents_repetition` (
  `rp_id` int(12) NOT NULL,
  `eventid` int(12) NOT NULL DEFAULT 1,
  `eventdetail_id` int(12) NOT NULL DEFAULT 0,
  `duplicatecheck` varchar(32) NOT NULL DEFAULT '',
  `startrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_jevents_repetition`
--

INSERT INTO `i63fc_jevents_repetition` (`rp_id`, `eventid`, `eventdetail_id`, `duplicatecheck`, `startrepeat`, `endrepeat`) VALUES
(2, 2, 2, 'b5f7c73ac4060e57b92d3cc1b71c17ab', '2023-02-10 10:00:00', '2023-02-10 11:00:00'),
(3, 3, 3, '5fbf51a302a4edf5a8d4e832c34698b6', '2022-12-22 00:00:00', '2022-12-24 23:59:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_rrule`
--

CREATE TABLE `i63fc_jevents_rrule` (
  `rr_id` int(12) NOT NULL,
  `eventid` int(12) NOT NULL DEFAULT 1,
  `freq` varchar(30) NOT NULL DEFAULT '',
  `until` int(12) NOT NULL DEFAULT 1,
  `untilraw` varchar(30) NOT NULL DEFAULT '',
  `count` int(6) NOT NULL DEFAULT 1,
  `rinterval` int(6) NOT NULL DEFAULT 1,
  `bysecond` varchar(50) NOT NULL DEFAULT '',
  `byminute` varchar(50) NOT NULL DEFAULT '',
  `byhour` varchar(50) NOT NULL DEFAULT '',
  `byday` varchar(50) NOT NULL DEFAULT '',
  `bymonthday` varchar(50) NOT NULL DEFAULT '',
  `byyearday` varchar(100) NOT NULL DEFAULT '',
  `byweekno` varchar(50) NOT NULL DEFAULT '',
  `bymonth` varchar(50) NOT NULL DEFAULT '',
  `bysetpos` varchar(50) NOT NULL DEFAULT '',
  `wkst` varchar(50) NOT NULL DEFAULT '',
  `irregulardates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_jevents_rrule`
--

INSERT INTO `i63fc_jevents_rrule` (`rr_id`, `eventid`, `freq`, `until`, `untilraw`, `count`, `rinterval`, `bysecond`, `byminute`, `byhour`, `byday`, `bymonthday`, `byyearday`, `byweekno`, `bymonth`, `bysetpos`, `wkst`, `irregulardates`) VALUES
(1, 2, 'none', 0, '', 1, 1, '', '', '', '+2FR', '', '', '', '', '', '', '[]'),
(2, 3, 'none', 0, '', 1, 1, '', '', '', '+4TH', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_translation`
--

CREATE TABLE `i63fc_jevents_translation` (
  `translation_id` int(12) NOT NULL,
  `evdet_id` int(12) NOT NULL DEFAULT 0,
  `description` longtext NOT NULL,
  `location` varchar(120) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `contact` varchar(120) NOT NULL DEFAULT '',
  `extra_info` text NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT '*'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_vevdetail`
--

CREATE TABLE `i63fc_jevents_vevdetail` (
  `evdet_id` int(12) NOT NULL,
  `rawdata` longtext NOT NULL,
  `dtstart` int(11) NOT NULL DEFAULT 0,
  `dtstartraw` varchar(30) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT 0,
  `durationraw` varchar(30) NOT NULL DEFAULT '',
  `dtend` int(11) NOT NULL DEFAULT 0,
  `dtendraw` varchar(30) NOT NULL DEFAULT '',
  `dtstamp` varchar(30) NOT NULL DEFAULT '',
  `class` varchar(10) NOT NULL DEFAULT '',
  `categories` varchar(120) NOT NULL DEFAULT '',
  `color` varchar(20) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `geolon` float NOT NULL DEFAULT 0,
  `geolat` float NOT NULL DEFAULT 0,
  `location` varchar(120) NOT NULL DEFAULT '',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `contact` varchar(120) NOT NULL DEFAULT '',
  `organizer` varchar(120) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `extra_info` text NOT NULL,
  `created` varchar(30) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT 1,
  `state` tinyint(3) NOT NULL DEFAULT 1,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `multiday` tinyint(3) NOT NULL DEFAULT 1,
  `hits` int(11) NOT NULL DEFAULT 0,
  `noendtime` tinyint(3) NOT NULL DEFAULT 0,
  `loc_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_jevents_vevdetail`
--

INSERT INTO `i63fc_jevents_vevdetail` (`evdet_id`, `rawdata`, `dtstart`, `dtstartraw`, `duration`, `durationraw`, `dtend`, `dtendraw`, `dtstamp`, `class`, `categories`, `color`, `description`, `geolon`, `geolat`, `location`, `priority`, `status`, `summary`, `contact`, `organizer`, `url`, `extra_info`, `created`, `sequence`, `state`, `modified`, `multiday`, `hits`, `noendtime`, `loc_id`) VALUES
(2, '', 1676019600, '', 0, '', 1676023200, '', '', '', '', '', '<p style=\"text-align: justify;\">La Agencia de Ciencia, Tecnología e Innovación de la provincia de Jujuy, en el marco del Programa Ciencia, Tecnología, Innovación y Género, da inicio al “Ciclo Mujeres en CTI”, con una propuesta especial en conmemoración del “Día internacional de la Mujer y la Niña en la Ciencia”, organizando el Primer Conversatorio con Mujeres de Ciencia.</p>\r\n<p style=\"text-align: justify;\">Del conversatorio participarán mujeres investigadoras y científicas referentes de nuestra provincia, quienes a diario contribuyen a través de su trabajo y dedicación en las áreas STEAM.</p>\r\n<p style=\"text-align: justify;\"><strong>Organiza:</strong></p>\r\n<p style=\"text-align: justify;\">Agencia de Ciencia, Tecnología e Innovación de la Provincia de Jujuy</p>\r\n<p style=\"text-align: justify;\"><strong>Coordina / Modera:</strong></p>\r\n<p style=\"text-align: justify;\">Ing. Miriam Serrano – Secretaria ejecutiva de la Agencia de Ciencia, Tecnología e Innovación de la Provincia de Jujuy</p>\r\n<p style=\"text-align: justify;\"><strong>Destinatarios:</strong></p>\r\n<p style=\"text-align: justify;\">Estudiantes y docentes de los distintos niveles educativos.<br />Representantes de instituciones de Ciencia y Tecnología, Universidades y sector público y privado.<br />Público interesado en la temática.</p>\r\n<p style=\"text-align: justify;\">Actividad con cupo limitado:</p>\r\n<p style=\"text-align: justify;\">Participación hasta 30 personas</p>\r\n<p style=\"text-align: justify;\"><strong>Lugar:</strong></p>\r\n<p style=\"text-align: justify;\">Centro Cultural y Museo Casa Macedonio Graz – Lamadrid esq. Güemes</p>', 0, 0, '', 0, '', 'Conversatorio con Mujeres de Ciencia “Día Internacional de la Mujer y la Niña en la Ciencia”', '', '', '', '', '', 0, 1, '2022-11-23 19:03:40', 1, 0, 0, 0),
(3, '', 1671663600, '', 0, '', 1671922799, '', '', '', '', '', '<p>El evento será el<strong> 15 de junio de manera presencial (Plazas limitadas) y Online</strong>. Immune Technology Institute Dialogue será una charla de mujeres que, <strong>de 18h a 20h</strong> hablarán sobre <strong>adaptar los negocios a los nuevos clientes</strong>, el<strong> rol de las nuevas tecnologías como Cloud y datos</strong> y ejemplos de <strong>nuevos productos/servicios y modelos de negocio basados en el uso de datos y otras tecnologías</strong>.</p>\r\n<p> </p>\r\n<p> </p>', 0, 0, '', 0, '', '#WOMANINTECH', '', '', '', '', '', 0, 1, '2022-11-23 19:07:21', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jevents_vevent`
--

CREATE TABLE `i63fc_jevents_vevent` (
  `ev_id` int(12) NOT NULL,
  `icsid` int(12) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 1,
  `uid` varchar(255) NOT NULL DEFAULT '',
  `refreshed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rawdata` longtext NOT NULL,
  `recurrence_id` varchar(30) NOT NULL DEFAULT '',
  `detail_id` int(12) NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 1,
  `lockevent` tinyint(3) NOT NULL DEFAULT 0,
  `author_notified` tinyint(3) NOT NULL DEFAULT 0,
  `access` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tzid` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_jevents_vevent`
--

INSERT INTO `i63fc_jevents_vevent` (`ev_id`, `icsid`, `catid`, `uid`, `refreshed`, `created`, `created_by`, `created_by_alias`, `modified_by`, `rawdata`, `recurrence_id`, `detail_id`, `state`, `lockevent`, `author_notified`, `access`, `tzid`) VALUES
(2, 1, 10, 'b6e3eaeb49e45bdedc137cf697b2cf07', '0000-00-00 00:00:00', '2022-11-23 19:03:40', 691, '', 691, 'a:24:{s:3:\"UID\";s:32:\"b6e3eaeb49e45bdedc137cf697b2cf07\";s:11:\"X-EXTRAINFO\";s:0:\"\";s:8:\"LOCATION\";s:0:\"\";s:6:\"GEOLON\";d:0;s:6:\"GEOLAT\";d:0;s:11:\"allDayEvent\";s:3:\"off\";s:7:\"CONTACT\";s:0:\"\";s:11:\"DESCRIPTION\";s:1643:\"<p style=\"text-align: justify;\">La Agencia de Ciencia, Tecnología e Innovación de la provincia de Jujuy, en el marco del Programa Ciencia, Tecnología, Innovación y Género, da inicio al “Ciclo Mujeres en CTI”, con una propuesta especial en conmemoración del “Día internacional de la Mujer y la Niña en la Ciencia”, organizando el Primer Conversatorio con Mujeres de Ciencia.</p>\r\n<p style=\"text-align: justify;\">Del conversatorio participarán mujeres investigadoras y científicas referentes de nuestra provincia, quienes a diario contribuyen a través de su trabajo y dedicación en las áreas STEAM.</p>\r\n<p style=\"text-align: justify;\"><strong>Organiza:</strong></p>\r\n<p style=\"text-align: justify;\">Agencia de Ciencia, Tecnología e Innovación de la Provincia de Jujuy</p>\r\n<p style=\"text-align: justify;\"><strong>Coordina / Modera:</strong></p>\r\n<p style=\"text-align: justify;\">Ing. Miriam Serrano – Secretaria ejecutiva de la Agencia de Ciencia, Tecnología e Innovación de la Provincia de Jujuy</p>\r\n<p style=\"text-align: justify;\"><strong>Destinatarios:</strong></p>\r\n<p style=\"text-align: justify;\">Estudiantes y docentes de los distintos niveles educativos.<br />Representantes de instituciones de Ciencia y Tecnología, Universidades y sector público y privado.<br />Público interesado en la temática.</p>\r\n<p style=\"text-align: justify;\">Actividad con cupo limitado:</p>\r\n<p style=\"text-align: justify;\">Participación hasta 30 personas</p>\r\n<p style=\"text-align: justify;\"><strong>Lugar:</strong></p>\r\n<p style=\"text-align: justify;\">Centro Cultural y Museo Casa Macedonio Graz – Lamadrid esq. Güemes</p>\";s:12:\"publish_down\";s:9:\"2023-2-10\";s:10:\"publish_up\";s:9:\"2023-2-10\";s:13:\"publish_down2\";s:9:\"2023-2-10\";s:11:\"publish_up2\";s:9:\"2023-2-10\";s:7:\"SUMMARY\";s:98:\"Conversatorio con Mujeres de Ciencia “Día Internacional de la Mujer y la Niña en la Ciencia”\";s:3:\"URL\";s:0:\"\";s:11:\"X-CREATEDBY\";i:691;s:7:\"DTSTART\";i:1676019600;s:14:\"X-PUBLISHSTART\";s:18:\"2023-2-10 10:00:00\";s:5:\"DTEND\";i:1676023200;s:12:\"X-PUBLISHEND\";s:18:\"2023-2-10 11:00:00\";s:5:\"RRULE\";a:5:{s:4:\"FREQ\";s:4:\"none\";s:5:\"COUNT\";i:1;s:8:\"INTERVAL\";s:1:\"1\";s:14:\"IRREGULARDATES\";a:0:{}s:5:\"BYDAY\";s:4:\"+2FR\";}s:8:\"MULTIDAY\";s:1:\"1\";s:9:\"NOENDTIME\";s:1:\"0\";s:7:\"X-COLOR\";s:0:\"\";s:9:\"LOCKEVENT\";s:1:\"0\";}', '', 2, 1, 0, 0, 1, ''),
(3, 1, 10, '025625bea2a0cf4fbc095be8392b3332', '0000-00-00 00:00:00', '2022-11-23 19:07:21', 691, '', 691, 'a:24:{s:3:\"UID\";s:32:\"025625bea2a0cf4fbc095be8392b3332\";s:11:\"X-EXTRAINFO\";s:0:\"\";s:8:\"LOCATION\";s:0:\"\";s:6:\"GEOLON\";d:0;s:6:\"GEOLAT\";d:0;s:11:\"allDayEvent\";s:2:\"on\";s:7:\"CONTACT\";s:0:\"\";s:11:\"DESCRIPTION\";s:508:\"<p>El evento será el<strong> 15 de junio de manera presencial (Plazas limitadas) y Online</strong>. Immune Technology Institute Dialogue será una charla de mujeres que, <strong>de 18h a 20h</strong> hablarán sobre <strong>adaptar los negocios a los nuevos clientes</strong>, el<strong> rol de las nuevas tecnologías como Cloud y datos</strong> y ejemplos de <strong>nuevos productos/servicios y modelos de negocio basados en el uso de datos y otras tecnologías</strong>.</p>\r\n<p> </p>\r\n<p> </p>\";s:12:\"publish_down\";s:10:\"2022-12-24\";s:10:\"publish_up\";s:10:\"2022-12-22\";s:13:\"publish_down2\";s:10:\"2022-12-24\";s:11:\"publish_up2\";s:10:\"2022-12-22\";s:7:\"SUMMARY\";s:12:\"#WOMANINTECH\";s:3:\"URL\";s:0:\"\";s:11:\"X-CREATEDBY\";i:691;s:7:\"DTSTART\";i:1671663600;s:14:\"X-PUBLISHSTART\";s:19:\"2022-12-22 00:00:00\";s:5:\"DTEND\";i:1671922799;s:12:\"X-PUBLISHEND\";s:19:\"2022-12-24 23:59:59\";s:5:\"RRULE\";a:5:{s:4:\"FREQ\";s:4:\"none\";s:5:\"COUNT\";i:1;s:8:\"INTERVAL\";s:1:\"1\";s:14:\"IRREGULARDATES\";a:0:{}s:5:\"BYDAY\";s:4:\"+4TH\";}s:8:\"MULTIDAY\";s:1:\"1\";s:9:\"NOENDTIME\";s:1:\"0\";s:7:\"X-COLOR\";s:0:\"\";s:9:\"LOCKEVENT\";s:1:\"0\";}', '', 3, 1, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jev_defaults`
--

CREATE TABLE `i63fc_jev_defaults` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `subject` text NOT NULL,
  `value` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT '*',
  `catid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_jev_users`
--

CREATE TABLE `i63fc_jev_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(2) NOT NULL DEFAULT 0,
  `canuploadimages` tinyint(2) NOT NULL DEFAULT 0,
  `canuploadmovies` tinyint(2) NOT NULL DEFAULT 0,
  `cancreate` tinyint(2) NOT NULL DEFAULT 0,
  `canedit` tinyint(2) NOT NULL DEFAULT 0,
  `canpublishown` tinyint(2) NOT NULL DEFAULT 0,
  `candeleteown` tinyint(2) NOT NULL DEFAULT 0,
  `canpublishall` tinyint(2) NOT NULL DEFAULT 0,
  `candeleteall` tinyint(2) NOT NULL DEFAULT 0,
  `cancreateown` tinyint(2) NOT NULL DEFAULT 0,
  `cancreateglobal` tinyint(2) NOT NULL DEFAULT 0,
  `eventslimit` int(11) NOT NULL DEFAULT 0,
  `extraslimit` int(11) NOT NULL DEFAULT 0,
  `categories` varchar(255) NOT NULL DEFAULT '',
  `calendars` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery`
--

CREATE TABLE `i63fc_joomgallery` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `imgtitle` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imgauthor` varchar(50) DEFAULT NULL,
  `imgtext` text NOT NULL,
  `imgdate` datetime NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `imgvotes` int(11) NOT NULL DEFAULT 0,
  `imgvotesum` int(11) NOT NULL DEFAULT 0,
  `access` tinyint(3) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `imgfilename` varchar(255) NOT NULL DEFAULT '',
  `imgthumbname` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `useruploaded` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_category_details`
--

CREATE TABLE `i63fc_joomgallery_category_details` (
  `id` int(11) NOT NULL,
  `details_key` varchar(255) NOT NULL,
  `details_value` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_catg`
--

CREATE TABLE `i63fc_joomgallery_catg` (
  `cid` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(2048) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `in_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL DEFAULT '',
  `owner` int(11) DEFAULT 0,
  `thumbnail` int(11) DEFAULT NULL,
  `img_position` int(10) DEFAULT 0,
  `catpath` varchar(2048) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `exclude_toplists` int(1) NOT NULL,
  `exclude_search` int(1) NOT NULL,
  `allow_download` int(1) NOT NULL DEFAULT -1,
  `allow_comment` int(1) NOT NULL DEFAULT -1,
  `allow_rating` int(1) NOT NULL DEFAULT -1,
  `allow_watermark` int(1) NOT NULL DEFAULT -1,
  `allow_watermark_download` int(1) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_joomgallery_catg`
--

INSERT INTO `i63fc_joomgallery_catg` (`cid`, `asset_id`, `name`, `alias`, `parent_id`, `lft`, `rgt`, `level`, `description`, `access`, `published`, `hidden`, `in_hidden`, `password`, `owner`, `thumbnail`, `img_position`, `catpath`, `params`, `metakey`, `metadesc`, `exclude_toplists`, `exclude_search`, `allow_download`, `allow_comment`, `allow_rating`, `allow_watermark`, `allow_watermark_download`) VALUES
(1, 0, 'ROOT', 'root', 0, 0, 0, 0, NULL, 1, 1, 0, 0, '', 0, NULL, 0, '', '', '', '', 0, 0, -1, -1, -1, -1, -1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_comments`
--

CREATE TABLE `i63fc_joomgallery_comments` (
  `cmtid` int(11) NOT NULL,
  `cmtpic` int(11) NOT NULL DEFAULT 0,
  `cmtip` varchar(45) NOT NULL DEFAULT '',
  `userid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmtname` varchar(50) NOT NULL DEFAULT '',
  `cmttext` text NOT NULL,
  `cmtdate` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_config`
--

CREATE TABLE `i63fc_joomgallery_config` (
  `id` int(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `jg_pathimages` varchar(100) NOT NULL,
  `jg_pathoriginalimages` varchar(100) NOT NULL,
  `jg_paththumbs` varchar(100) NOT NULL,
  `jg_pathftpupload` varchar(100) NOT NULL,
  `jg_pathtemp` varchar(100) NOT NULL,
  `jg_wmpath` varchar(100) NOT NULL,
  `jg_wmfile` varchar(50) NOT NULL,
  `jg_use_real_paths` int(1) NOT NULL,
  `jg_checkupdate` int(1) NOT NULL,
  `jg_filenamewithjs` int(1) NOT NULL,
  `jg_filenamereplace` text NOT NULL,
  `jg_replaceimgtitle` int(5) NOT NULL,
  `jg_replaceimgtext` int(5) NOT NULL,
  `jg_replaceimgauthor` int(5) NOT NULL,
  `jg_replaceimgdate` int(5) NOT NULL,
  `jg_replacemetakey` int(5) NOT NULL,
  `jg_replacemetadesc` int(5) NOT NULL,
  `jg_replaceshowwarning` int(1) NOT NULL,
  `jg_thumbcreation` varchar(5) NOT NULL,
  `jg_fastgd2thumbcreation` int(1) NOT NULL,
  `jg_impath` varchar(50) NOT NULL,
  `jg_delete_original` int(1) NOT NULL,
  `jg_origautorot` int(1) NOT NULL,
  `jg_originalquality` int(3) NOT NULL,
  `jg_resizetomaxwidth` int(1) NOT NULL,
  `jg_maxwidth` int(5) NOT NULL,
  `jg_maxheight` int(5) NOT NULL,
  `jg_detailautorot` int(1) NOT NULL,
  `jg_picturequality` int(3) NOT NULL,
  `jg_useforresizedirection` int(1) NOT NULL,
  `jg_cropposition` int(1) NOT NULL,
  `jg_thumbwidth` int(5) NOT NULL,
  `jg_thumbheight` int(5) NOT NULL,
  `jg_thumbautorot` int(1) NOT NULL,
  `jg_thumbquality` int(3) NOT NULL,
  `jg_uploadorder` int(1) NOT NULL,
  `jg_useorigfilename` int(1) NOT NULL,
  `jg_filenamenumber` int(1) NOT NULL,
  `jg_msg_upload_type` int(1) NOT NULL,
  `jg_msg_upload_recipients` text NOT NULL,
  `jg_msg_download_type` int(1) NOT NULL,
  `jg_msg_download_recipients` text NOT NULL,
  `jg_msg_zipdownload` int(1) NOT NULL,
  `jg_msg_comment_type` int(1) NOT NULL,
  `jg_msg_comment_recipients` text NOT NULL,
  `jg_msg_comment_toowner` int(1) NOT NULL,
  `jg_msg_nametag_type` int(1) NOT NULL,
  `jg_msg_nametag_recipients` text NOT NULL,
  `jg_msg_nametag_totaggeduser` int(1) NOT NULL,
  `jg_msg_nametag_toowner` int(1) NOT NULL,
  `jg_msg_report_type` int(1) NOT NULL,
  `jg_msg_report_recipients` text NOT NULL,
  `jg_msg_report_toowner` int(1) NOT NULL,
  `jg_msg_rejectimg_type` int(1) NOT NULL,
  `jg_msg_global_from` int(1) NOT NULL,
  `jg_realname` int(1) NOT NULL,
  `jg_contentpluginsenabled` int(1) NOT NULL,
  `jg_itemid` varchar(10) NOT NULL,
  `jg_ajaxcategoryselection` int(1) NOT NULL,
  `jg_disableunrequiredchecks` int(1) NOT NULL,
  `jg_use_listbox_max_user_count` int(1) NOT NULL,
  `jg_adminsorting` int(1) NOT NULL,
  `jg_userspace` int(1) NOT NULL,
  `jg_useruploaddefaultcat` int(1) NOT NULL,
  `jg_approve` int(1) NOT NULL,
  `jg_unregistered_permissions` int(1) NOT NULL,
  `jg_maxusercat` int(5) NOT NULL,
  `jg_maxuserimage` int(9) NOT NULL,
  `jg_maxuserimage_timespan` int(9) NOT NULL,
  `jg_maxfilesize` int(9) NOT NULL,
  `jg_usercatacc` int(1) NOT NULL,
  `jg_usercatthumbalign` int(1) NOT NULL,
  `jg_useruploadsingle` int(1) NOT NULL,
  `jg_maxuploadfields` int(3) NOT NULL,
  `jg_useruploadajax` int(1) NOT NULL,
  `jg_useruploadbatch` int(1) NOT NULL,
  `jg_useruploadjava` int(1) NOT NULL,
  `jg_useruseorigfilename` int(1) NOT NULL,
  `jg_useruploadnumber` int(1) NOT NULL,
  `jg_special_gif_upload` int(1) NOT NULL,
  `jg_delete_original_user` int(1) NOT NULL,
  `jg_newpiccopyright` int(1) NOT NULL,
  `jg_newpicnote` int(1) NOT NULL,
  `jg_redirect_after_upload` int(1) NOT NULL,
  `jg_edit_metadata` int(1) NOT NULL,
  `jg_download` int(1) NOT NULL,
  `jg_download_unreg` int(1) NOT NULL,
  `jg_download_hint` int(1) NOT NULL,
  `jg_downloadfile` int(1) NOT NULL,
  `jg_downloadwithwatermark` int(1) NOT NULL,
  `jg_showrating` int(1) NOT NULL,
  `jg_maxvoting` int(1) NOT NULL,
  `jg_ratingcalctype` int(1) NOT NULL,
  `jg_ratingdisplaytype` int(1) NOT NULL,
  `jg_ajaxrating` int(1) NOT NULL,
  `jg_votingonlyonce` int(1) NOT NULL,
  `jg_votingonlyreg` int(1) NOT NULL,
  `jg_showcomment` int(1) NOT NULL,
  `jg_anoncomment` int(1) NOT NULL,
  `jg_namedanoncomment` int(1) NOT NULL,
  `jg_anonapprovecom` int(1) NOT NULL,
  `jg_approvecom` int(1) NOT NULL,
  `jg_storecommentip` int(1) NOT NULL,
  `jg_bbcodesupport` int(1) NOT NULL,
  `jg_smiliesupport` int(1) NOT NULL,
  `jg_anismilie` int(1) NOT NULL,
  `jg_smiliescolor` varchar(10) NOT NULL,
  `jg_report_images` int(1) NOT NULL,
  `jg_report_unreg` int(1) NOT NULL,
  `jg_report_hint` int(1) NOT NULL,
  `jg_alternative_layout` varchar(255) NOT NULL,
  `jg_anchors` int(1) NOT NULL,
  `jg_tooltips` int(1) NOT NULL,
  `jg_dyncrop` int(1) NOT NULL,
  `jg_dyncropposition` int(1) NOT NULL,
  `jg_dyncropwidth` int(5) NOT NULL,
  `jg_dyncropheight` int(5) NOT NULL,
  `jg_hideemptycats` int(1) NOT NULL,
  `jg_skipcatview` int(1) NOT NULL,
  `jg_imgalign` int(3) NOT NULL,
  `jg_showrestrictedcats` int(1) NOT NULL,
  `jg_showrestrictedhint` int(1) NOT NULL,
  `jg_firstorder` varchar(20) NOT NULL,
  `jg_secondorder` varchar(20) NOT NULL,
  `jg_thirdorder` varchar(20) NOT NULL,
  `jg_pagetitle_cat` text NOT NULL,
  `jg_pagetitle_detail` text NOT NULL,
  `jg_showgalleryhead` int(1) NOT NULL,
  `jg_showpathway` int(1) NOT NULL,
  `jg_completebreadcrumbs` int(1) NOT NULL,
  `jg_search` int(1) NOT NULL,
  `jg_searchengine` varchar(20) NOT NULL DEFAULT 'joomgallery',
  `jg_searchcols` int(1) NOT NULL,
  `jg_searchthumbalign` int(1) NOT NULL,
  `jg_searchtextalign` int(1) NOT NULL,
  `jg_showsearchdownload` int(1) NOT NULL,
  `jg_showsearchfavourite` int(1) NOT NULL,
  `jg_search_report_images` int(1) NOT NULL,
  `jg_showsearcheditorlinks` int(1) NOT NULL,
  `jg_showallpics` int(1) NOT NULL,
  `jg_showallhits` int(1) NOT NULL,
  `jg_showbacklink` int(1) NOT NULL,
  `jg_suppresscredits` int(1) NOT NULL,
  `jg_showuserpanel` int(1) NOT NULL,
  `jg_showuserpanel_hint` int(1) NOT NULL,
  `jg_showuserpanel_unreg` int(1) NOT NULL,
  `jg_showallpicstoadmin` int(1) NOT NULL,
  `jg_showminithumbs` int(1) NOT NULL,
  `jg_openjs_padding` int(3) NOT NULL,
  `jg_openjs_background` varchar(12) NOT NULL,
  `jg_dhtml_border` varchar(12) NOT NULL,
  `jg_show_title_in_popup` int(1) NOT NULL,
  `jg_show_description_in_popup` int(1) NOT NULL,
  `jg_lightbox_speed` int(3) NOT NULL,
  `jg_lightbox_slide_all` int(1) NOT NULL,
  `jg_resize_js_image` int(1) NOT NULL,
  `jg_disable_rightclick_original` int(1) NOT NULL,
  `jg_showgallerysubhead` int(1) NOT NULL,
  `jg_showallcathead` int(1) NOT NULL,
  `jg_colcat` int(1) NOT NULL,
  `jg_catperpage` int(1) NOT NULL,
  `jg_ordercatbyalpha` int(1) NOT NULL,
  `jg_showgallerypagenav` int(1) NOT NULL,
  `jg_showcatcount` int(1) NOT NULL,
  `jg_showcatthumb` int(1) NOT NULL,
  `jg_showrandomcatthumb` int(1) NOT NULL,
  `jg_ctalign` int(1) NOT NULL,
  `jg_showtotalcatimages` int(1) NOT NULL,
  `jg_showtotalcathits` int(1) NOT NULL,
  `jg_showcatasnew` int(1) NOT NULL,
  `jg_catdaysnew` int(3) NOT NULL,
  `jg_showdescriptioningalleryview` int(1) NOT NULL,
  `jg_uploadicongallery` int(1) NOT NULL,
  `jg_showsubsingalleryview` int(1) NOT NULL,
  `jg_category_rss` int(9) NOT NULL,
  `jg_category_rss_icon` varchar(10) NOT NULL,
  `jg_uploadiconcategory` int(1) NOT NULL,
  `jg_showcathead` int(1) NOT NULL,
  `jg_usercatorder` int(1) NOT NULL,
  `jg_usercatorderlist` varchar(50) NOT NULL,
  `jg_showcatdescriptionincat` int(1) NOT NULL,
  `jg_showpagenav` int(1) NOT NULL,
  `jg_showpiccount` int(1) NOT NULL,
  `jg_perpage` int(3) NOT NULL,
  `jg_catthumbalign` int(1) NOT NULL,
  `jg_colnumb` int(3) NOT NULL,
  `jg_detailpic_open` varchar(50) NOT NULL,
  `jg_lightboxbigpic` int(1) NOT NULL,
  `jg_showtitle` int(1) NOT NULL,
  `jg_showpicasnew` int(1) NOT NULL,
  `jg_daysnew` int(3) NOT NULL,
  `jg_showhits` int(1) NOT NULL,
  `jg_showdownloads` int(1) NOT NULL,
  `jg_showauthor` int(1) NOT NULL,
  `jg_showowner` int(1) NOT NULL,
  `jg_showcatcom` int(1) NOT NULL,
  `jg_showcatrate` int(1) NOT NULL,
  `jg_showcatdescription` int(1) NOT NULL,
  `jg_showcategorydownload` int(1) NOT NULL,
  `jg_showcategoryfavourite` int(1) NOT NULL,
  `jg_category_report_images` int(1) NOT NULL,
  `jg_showcategoryeditorlinks` int(1) NOT NULL,
  `jg_showsubcathead` int(1) NOT NULL,
  `jg_showsubcatcount` int(1) NOT NULL,
  `jg_colsubcat` int(3) NOT NULL,
  `jg_subperpage` int(3) NOT NULL,
  `jg_showpagenavsubs` int(1) NOT NULL,
  `jg_subcatthumbalign` int(1) NOT NULL,
  `jg_showsubthumbs` int(1) NOT NULL,
  `jg_showrandomsubthumb` int(1) NOT NULL,
  `jg_showdescriptionincategoryview` int(1) NOT NULL,
  `jg_ordersubcatbyalpha` int(1) NOT NULL,
  `jg_showtotalsubcatimages` int(1) NOT NULL,
  `jg_showtotalsubcathits` int(1) NOT NULL,
  `jg_uploadiconsubcat` int(1) NOT NULL,
  `jg_showdetailpage` int(1) NOT NULL,
  `jg_disabledetailpage` int(1) NOT NULL,
  `jg_showdetailnumberofpics` int(1) NOT NULL,
  `jg_cursor_navigation` int(1) NOT NULL,
  `jg_disable_rightclick_detail` int(1) NOT NULL,
  `jg_detail_report_images` int(1) NOT NULL,
  `jg_showdetaileditorlinks` int(1) NOT NULL,
  `jg_showdetailtitle` int(1) NOT NULL,
  `jg_showdetail` int(1) NOT NULL,
  `jg_showdetailaccordion` int(1) NOT NULL,
  `jg_accordionduration` int(3) NOT NULL,
  `jg_accordiondisplay` int(3) NOT NULL,
  `jg_accordionopacity` int(1) NOT NULL,
  `jg_accordionalwayshide` int(1) NOT NULL,
  `jg_accordioninitialeffect` int(1) NOT NULL,
  `jg_showdetaildescription` int(1) NOT NULL,
  `jg_showdetaildatum` int(1) NOT NULL,
  `jg_showdetailhits` int(1) NOT NULL,
  `jg_showdetaildownloads` int(1) NOT NULL,
  `jg_showdetailrating` int(1) NOT NULL,
  `jg_showdetailfilesize` int(1) NOT NULL,
  `jg_showdetailauthor` int(1) NOT NULL,
  `jg_showoriginalfilesize` int(1) NOT NULL,
  `jg_showdetaildownload` int(1) NOT NULL,
  `jg_watermark` int(1) NOT NULL,
  `jg_watermarkpos` int(1) NOT NULL,
  `jg_watermarkzoom` int(1) NOT NULL,
  `jg_watermarksize` int(1) NOT NULL,
  `jg_bigpic` int(1) NOT NULL,
  `jg_bigpic_unreg` int(1) NOT NULL,
  `jg_bigpic_open` varchar(50) NOT NULL,
  `jg_bbcodelink` int(1) NOT NULL,
  `jg_showcommentsunreg` int(1) NOT NULL,
  `jg_showcommentsarea` int(1) NOT NULL,
  `jg_send2friend` int(1) NOT NULL,
  `jg_minis` int(1) NOT NULL,
  `jg_motionminis` int(1) NOT NULL,
  `jg_motionminiWidth` int(3) NOT NULL,
  `jg_motionminiHeight` int(3) NOT NULL,
  `jg_motionminiLimit` int(2) NOT NULL,
  `jg_miniWidth` int(3) NOT NULL,
  `jg_miniHeight` int(3) NOT NULL,
  `jg_minisprop` int(1) NOT NULL,
  `jg_nameshields` int(1) NOT NULL,
  `jg_nameshields_others` int(1) NOT NULL,
  `jg_nameshields_unreg` int(1) NOT NULL,
  `jg_show_nameshields_unreg` int(1) NOT NULL,
  `jg_storenametagip` int(1) NOT NULL,
  `jg_nameshields_height` int(3) NOT NULL,
  `jg_nameshields_width` int(3) NOT NULL,
  `jg_slideshow` int(1) NOT NULL,
  `jg_slideshow_timer` int(3) NOT NULL,
  `jg_slideshow_transition` int(1) NOT NULL,
  `jg_slideshow_transtime` int(3) NOT NULL,
  `jg_slideshow_maxdimauto` int(1) NOT NULL,
  `jg_slideshow_width` int(3) NOT NULL,
  `jg_slideshow_heigth` int(3) NOT NULL,
  `jg_slideshow_infopane` int(1) NOT NULL,
  `jg_slideshow_carousel` int(1) NOT NULL,
  `jg_slideshow_arrows` int(1) NOT NULL,
  `jg_slideshow_repeat` int(1) NOT NULL,
  `jg_showexifdata` int(1) NOT NULL,
  `jg_showgeotagging` int(1) NOT NULL,
  `jg_geotaggingkey` text NOT NULL,
  `jg_subifdtags` text NOT NULL,
  `jg_ifdotags` text NOT NULL,
  `jg_gpstags` text NOT NULL,
  `jg_showiptcdata` int(1) NOT NULL,
  `jg_iptctags` text NOT NULL,
  `jg_showtoplist` int(1) NOT NULL,
  `jg_toplist` int(3) NOT NULL,
  `jg_topthumbalign` int(1) NOT NULL,
  `jg_toptextalign` int(1) NOT NULL,
  `jg_toplistcols` int(3) NOT NULL,
  `jg_whereshowtoplist` int(1) NOT NULL,
  `jg_showrate` int(1) NOT NULL,
  `jg_showlatest` int(1) NOT NULL,
  `jg_showcom` int(1) NOT NULL,
  `jg_showthiscomment` int(1) NOT NULL,
  `jg_showmostviewed` int(1) NOT NULL,
  `jg_showtoplistdownload` int(1) NOT NULL,
  `jg_showtoplistfavourite` int(1) NOT NULL,
  `jg_toplist_report_images` int(1) NOT NULL,
  `jg_showtoplisteditorlinks` int(1) NOT NULL,
  `jg_favourites` int(1) NOT NULL,
  `jg_favouritesshownotauth` int(1) NOT NULL,
  `jg_maxfavourites` int(5) NOT NULL,
  `jg_zipdownload` int(1) NOT NULL,
  `jg_usefavouritesforpubliczip` int(1) NOT NULL,
  `jg_usefavouritesforzip` int(1) NOT NULL,
  `jg_allimagesofcategory` int(1) NOT NULL,
  `jg_showfavouritesdownload` int(1) NOT NULL,
  `jg_showfavouriteseditorlinks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i63fc_joomgallery_config`
--

INSERT INTO `i63fc_joomgallery_config` (`id`, `group_id`, `ordering`, `jg_pathimages`, `jg_pathoriginalimages`, `jg_paththumbs`, `jg_pathftpupload`, `jg_pathtemp`, `jg_wmpath`, `jg_wmfile`, `jg_use_real_paths`, `jg_checkupdate`, `jg_filenamewithjs`, `jg_filenamereplace`, `jg_replaceimgtitle`, `jg_replaceimgtext`, `jg_replaceimgauthor`, `jg_replaceimgdate`, `jg_replacemetakey`, `jg_replacemetadesc`, `jg_replaceshowwarning`, `jg_thumbcreation`, `jg_fastgd2thumbcreation`, `jg_impath`, `jg_delete_original`, `jg_origautorot`, `jg_originalquality`, `jg_resizetomaxwidth`, `jg_maxwidth`, `jg_maxheight`, `jg_detailautorot`, `jg_picturequality`, `jg_useforresizedirection`, `jg_cropposition`, `jg_thumbwidth`, `jg_thumbheight`, `jg_thumbautorot`, `jg_thumbquality`, `jg_uploadorder`, `jg_useorigfilename`, `jg_filenamenumber`, `jg_msg_upload_type`, `jg_msg_upload_recipients`, `jg_msg_download_type`, `jg_msg_download_recipients`, `jg_msg_zipdownload`, `jg_msg_comment_type`, `jg_msg_comment_recipients`, `jg_msg_comment_toowner`, `jg_msg_nametag_type`, `jg_msg_nametag_recipients`, `jg_msg_nametag_totaggeduser`, `jg_msg_nametag_toowner`, `jg_msg_report_type`, `jg_msg_report_recipients`, `jg_msg_report_toowner`, `jg_msg_rejectimg_type`, `jg_msg_global_from`, `jg_realname`, `jg_contentpluginsenabled`, `jg_itemid`, `jg_ajaxcategoryselection`, `jg_disableunrequiredchecks`, `jg_use_listbox_max_user_count`, `jg_adminsorting`, `jg_userspace`, `jg_useruploaddefaultcat`, `jg_approve`, `jg_unregistered_permissions`, `jg_maxusercat`, `jg_maxuserimage`, `jg_maxuserimage_timespan`, `jg_maxfilesize`, `jg_usercatacc`, `jg_usercatthumbalign`, `jg_useruploadsingle`, `jg_maxuploadfields`, `jg_useruploadajax`, `jg_useruploadbatch`, `jg_useruploadjava`, `jg_useruseorigfilename`, `jg_useruploadnumber`, `jg_special_gif_upload`, `jg_delete_original_user`, `jg_newpiccopyright`, `jg_newpicnote`, `jg_redirect_after_upload`, `jg_edit_metadata`, `jg_download`, `jg_download_unreg`, `jg_download_hint`, `jg_downloadfile`, `jg_downloadwithwatermark`, `jg_showrating`, `jg_maxvoting`, `jg_ratingcalctype`, `jg_ratingdisplaytype`, `jg_ajaxrating`, `jg_votingonlyonce`, `jg_votingonlyreg`, `jg_showcomment`, `jg_anoncomment`, `jg_namedanoncomment`, `jg_anonapprovecom`, `jg_approvecom`, `jg_storecommentip`, `jg_bbcodesupport`, `jg_smiliesupport`, `jg_anismilie`, `jg_smiliescolor`, `jg_report_images`, `jg_report_unreg`, `jg_report_hint`, `jg_alternative_layout`, `jg_anchors`, `jg_tooltips`, `jg_dyncrop`, `jg_dyncropposition`, `jg_dyncropwidth`, `jg_dyncropheight`, `jg_hideemptycats`, `jg_skipcatview`, `jg_imgalign`, `jg_showrestrictedcats`, `jg_showrestrictedhint`, `jg_firstorder`, `jg_secondorder`, `jg_thirdorder`, `jg_pagetitle_cat`, `jg_pagetitle_detail`, `jg_showgalleryhead`, `jg_showpathway`, `jg_completebreadcrumbs`, `jg_search`, `jg_searchengine`, `jg_searchcols`, `jg_searchthumbalign`, `jg_searchtextalign`, `jg_showsearchdownload`, `jg_showsearchfavourite`, `jg_search_report_images`, `jg_showsearcheditorlinks`, `jg_showallpics`, `jg_showallhits`, `jg_showbacklink`, `jg_suppresscredits`, `jg_showuserpanel`, `jg_showuserpanel_hint`, `jg_showuserpanel_unreg`, `jg_showallpicstoadmin`, `jg_showminithumbs`, `jg_openjs_padding`, `jg_openjs_background`, `jg_dhtml_border`, `jg_show_title_in_popup`, `jg_show_description_in_popup`, `jg_lightbox_speed`, `jg_lightbox_slide_all`, `jg_resize_js_image`, `jg_disable_rightclick_original`, `jg_showgallerysubhead`, `jg_showallcathead`, `jg_colcat`, `jg_catperpage`, `jg_ordercatbyalpha`, `jg_showgallerypagenav`, `jg_showcatcount`, `jg_showcatthumb`, `jg_showrandomcatthumb`, `jg_ctalign`, `jg_showtotalcatimages`, `jg_showtotalcathits`, `jg_showcatasnew`, `jg_catdaysnew`, `jg_showdescriptioningalleryview`, `jg_uploadicongallery`, `jg_showsubsingalleryview`, `jg_category_rss`, `jg_category_rss_icon`, `jg_uploadiconcategory`, `jg_showcathead`, `jg_usercatorder`, `jg_usercatorderlist`, `jg_showcatdescriptionincat`, `jg_showpagenav`, `jg_showpiccount`, `jg_perpage`, `jg_catthumbalign`, `jg_colnumb`, `jg_detailpic_open`, `jg_lightboxbigpic`, `jg_showtitle`, `jg_showpicasnew`, `jg_daysnew`, `jg_showhits`, `jg_showdownloads`, `jg_showauthor`, `jg_showowner`, `jg_showcatcom`, `jg_showcatrate`, `jg_showcatdescription`, `jg_showcategorydownload`, `jg_showcategoryfavourite`, `jg_category_report_images`, `jg_showcategoryeditorlinks`, `jg_showsubcathead`, `jg_showsubcatcount`, `jg_colsubcat`, `jg_subperpage`, `jg_showpagenavsubs`, `jg_subcatthumbalign`, `jg_showsubthumbs`, `jg_showrandomsubthumb`, `jg_showdescriptionincategoryview`, `jg_ordersubcatbyalpha`, `jg_showtotalsubcatimages`, `jg_showtotalsubcathits`, `jg_uploadiconsubcat`, `jg_showdetailpage`, `jg_disabledetailpage`, `jg_showdetailnumberofpics`, `jg_cursor_navigation`, `jg_disable_rightclick_detail`, `jg_detail_report_images`, `jg_showdetaileditorlinks`, `jg_showdetailtitle`, `jg_showdetail`, `jg_showdetailaccordion`, `jg_accordionduration`, `jg_accordiondisplay`, `jg_accordionopacity`, `jg_accordionalwayshide`, `jg_accordioninitialeffect`, `jg_showdetaildescription`, `jg_showdetaildatum`, `jg_showdetailhits`, `jg_showdetaildownloads`, `jg_showdetailrating`, `jg_showdetailfilesize`, `jg_showdetailauthor`, `jg_showoriginalfilesize`, `jg_showdetaildownload`, `jg_watermark`, `jg_watermarkpos`, `jg_watermarkzoom`, `jg_watermarksize`, `jg_bigpic`, `jg_bigpic_unreg`, `jg_bigpic_open`, `jg_bbcodelink`, `jg_showcommentsunreg`, `jg_showcommentsarea`, `jg_send2friend`, `jg_minis`, `jg_motionminis`, `jg_motionminiWidth`, `jg_motionminiHeight`, `jg_motionminiLimit`, `jg_miniWidth`, `jg_miniHeight`, `jg_minisprop`, `jg_nameshields`, `jg_nameshields_others`, `jg_nameshields_unreg`, `jg_show_nameshields_unreg`, `jg_storenametagip`, `jg_nameshields_height`, `jg_nameshields_width`, `jg_slideshow`, `jg_slideshow_timer`, `jg_slideshow_transition`, `jg_slideshow_transtime`, `jg_slideshow_maxdimauto`, `jg_slideshow_width`, `jg_slideshow_heigth`, `jg_slideshow_infopane`, `jg_slideshow_carousel`, `jg_slideshow_arrows`, `jg_slideshow_repeat`, `jg_showexifdata`, `jg_showgeotagging`, `jg_geotaggingkey`, `jg_subifdtags`, `jg_ifdotags`, `jg_gpstags`, `jg_showiptcdata`, `jg_iptctags`, `jg_showtoplist`, `jg_toplist`, `jg_topthumbalign`, `jg_toptextalign`, `jg_toplistcols`, `jg_whereshowtoplist`, `jg_showrate`, `jg_showlatest`, `jg_showcom`, `jg_showthiscomment`, `jg_showmostviewed`, `jg_showtoplistdownload`, `jg_showtoplistfavourite`, `jg_toplist_report_images`, `jg_showtoplisteditorlinks`, `jg_favourites`, `jg_favouritesshownotauth`, `jg_maxfavourites`, `jg_zipdownload`, `jg_usefavouritesforpubliczip`, `jg_usefavouritesforzip`, `jg_allimagesofcategory`, `jg_showfavouritesdownload`, `jg_showfavouriteseditorlinks`) VALUES
(1, 1, 1, 'images/joomgallery/details/', 'images/joomgallery/originals/', 'images/joomgallery/thumbnails/', 'administrator/components/com_joomgallery/temp/ftp_upload/', 'administrator/components/com_joomgallery/temp/', 'media/joomgallery/images/', 'watermark.png', 0, 1, 1, 'Š|S, Œ|O, Ž|Z, š|s, œ|oe, ž|z, Ÿ|Y, ¥|Y, µ|u, À|A, Á|A, Â|A, Ã|A, Ä|AE, Å|A, Æ|A, Ç|C, È|E, É|E, Ê|E, Ë|E, Ì|I, Í|I, Î|I, Ï|I, Ð|D, Ñ|N, Ò|O, Ó|O, Ô|O, Õ|O, Ö|OE, Ø|O, Ù|U, Ú|U, Û|U, Ü|UE, Ý|Y, à|a, á|a, â|a, ã|a, ä|ae, å|a, æ|a, ç|c, è|e, é|e, ê|e, ë|e, ì|i, í|i, î|i, ï|i, ð|o, ñ|n, ò|o, ó|o, ô|o, õ|o, ö|oe, ø|o, ù|u, ú|u, û|u, ü|ue, ý|y, ÿ|y, ß|ss, ă|a, ş|s, ţ|t, ț|t, Ț|T, Ș|S, ș|s, Ş|S', 0, 0, 0, 0, 0, 0, 0, 'gd2', 1, '', 0, 0, 100, 4, 400, 400, 0, 100, 1, 2, 133, 100, 0, 100, 2, 0, 1, 2, '-1', 2, '-1', 0, 2, '-1', 0, 2, '-1', 1, 0, 2, '-1', 0, 1, 0, 0, 1, '', 0, 0, 25, 0, 1, 0, 0, 0, 10, 500, 0, 2000000, 1, 1, 1, 3, 1, 1, 1, 0, 1, 1, 2, 1, 1, 1, 0, 1, 1, 1, 2, 1, 1, 5, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 'grey', 1, 1, 1, '', 1, 1, 0, 2, 100, 100, 0, 0, 0, 1, 1, 'ordering ASC', 'imgdate DESC', 'imgtitle DESC', '#page_title - [! COM_JOOMGALLERY_COMMON_CATEGORY!]: #cat', '#page_title - [! COM_JOOMGALLERY_COMMON_CATEGORY!]: #cat - [! COM_JOOMGALLERY_COMMON_IMAGE!]:  #img', 1, 1, 1, 1, 'joomgallery', 1, 1, 1, 0, 0, 0, 0, 3, 1, 3, 1, 1, 1, 0, 1, 1, 10, '#ffffff', '#808080', 1, 1, 5, 1, 1, 1, 1, 1, 3, 9, 0, 1, 1, 1, 3, 1, 1, 1, 1, 7, 1, 0, 0, 10, 'rss', 0, 1, 1, 'date,title', 1, 2, 1, 8, 1, 2, '0', 1, 1, 1, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 2, 8, 1, 3, 2, 3, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 300, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 9, 0, 15, 1, 1, '6', 3, 1, 2, 1, 1, 2, 400, 50, 0, 28, 28, 2, 0, 1, 1, 0, 0, 10, 6, 1, 6000, 0, 2000, 0, 640, 480, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, '', 2, 12, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_countstop`
--

CREATE TABLE `i63fc_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL DEFAULT 0,
  `csip` varchar(45) NOT NULL DEFAULT '',
  `cssessionid` varchar(200) DEFAULT NULL,
  `cstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_image_details`
--

CREATE TABLE `i63fc_joomgallery_image_details` (
  `id` int(11) NOT NULL,
  `details_key` varchar(255) NOT NULL,
  `details_value` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_maintenance`
--

CREATE TABLE `i63fc_joomgallery_maintenance` (
  `id` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `title` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `orig` varchar(255) NOT NULL,
  `thumborphan` int(11) NOT NULL,
  `imgorphan` int(11) NOT NULL,
  `origorphan` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_nameshields`
--

CREATE TABLE `i63fc_joomgallery_nameshields` (
  `nid` int(11) NOT NULL,
  `npicid` int(11) NOT NULL DEFAULT 0,
  `nuserid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nxvalue` int(11) NOT NULL DEFAULT 0,
  `nyvalue` int(11) NOT NULL DEFAULT 0,
  `by` int(11) NOT NULL DEFAULT 0,
  `nuserip` varchar(45) NOT NULL DEFAULT '0',
  `ndate` datetime NOT NULL,
  `nzindex` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_orphans`
--

CREATE TABLE `i63fc_joomgallery_orphans` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(255) NOT NULL,
  `type` varchar(7) NOT NULL,
  `refid` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_users`
--

CREATE TABLE `i63fc_joomgallery_users` (
  `uid` int(11) NOT NULL,
  `uuserid` int(11) NOT NULL DEFAULT 0,
  `piclist` text DEFAULT NULL,
  `layout` int(1) NOT NULL,
  `time` datetime NOT NULL,
  `zipname` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_joomgallery_votes`
--

CREATE TABLE `i63fc_joomgallery_votes` (
  `voteid` int(11) NOT NULL,
  `picid` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userip` varchar(45) NOT NULL DEFAULT '',
  `datevoted` datetime NOT NULL,
  `vote` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_aliases`
--

CREATE TABLE `i63fc_kunena_aliases` (
  `alias` varchar(190) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_aliases`
--

INSERT INTO `i63fc_kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('bienvenido-mat', 'catid', '2', 1),
('buzon-de-sugerencias', 'catid', '3', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('debate', 'catid', '5', 0),
('default', 'layout', 'category.default', 0),
('edit', 'layout', 'category.edit', 0),
('foro-principal', 'catid', '1', 1),
('home', 'view', 'home', 1),
('inspiracional', 'catid', '6', 0),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('mujeres-y-ciencia', 'catid', '4', 0),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_announcement`
--

CREATE TABLE `i63fc_kunena_announcement` (
  `id` int(3) NOT NULL,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `publish_up` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ordering` tinyint(4) NOT NULL DEFAULT 0,
  `showdate` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_attachments`
--

CREATE TABLE `i63fc_kunena_attachments` (
  `id` int(11) NOT NULL,
  `mesid` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filename_real` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `inline` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_categories`
--

CREATE TABLE `i63fc_kunena_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `name` tinytext DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `icon` varchar(60) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT 0,
  `pub_access` int(11) NOT NULL DEFAULT 1,
  `pub_recurse` tinyint(4) DEFAULT 1,
  `admin_access` int(11) NOT NULL DEFAULT 0,
  `admin_recurse` tinyint(4) DEFAULT 1,
  `ordering` smallint(6) NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `channels` text DEFAULT NULL,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT 0,
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `post_anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `hits` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `topictemplate` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT 0,
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(255) NOT NULL DEFAULT 'default',
  `numTopics` mediumint(8) NOT NULL DEFAULT 0,
  `numPosts` mediumint(8) NOT NULL DEFAULT 0,
  `last_topic_id` int(11) NOT NULL DEFAULT 0,
  `last_post_id` int(11) NOT NULL DEFAULT 0,
  `last_post_time` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `allow_ratings` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_categories`
--

INSERT INTO `i63fc_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `topictemplate`, `class_sfx`, `allow_polls`, `topic_ordering`, `iconset`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`, `allow_ratings`) VALUES
(1, 0, 'Foro Principal', 'foro-principal', ' ', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 0, 'THIS', 0, '1000-01-01 00:00:00', 0, 0, 0, 0, 'Este es el foro principal de la categoría. Es creada el nivel de una categoría que sirve como un contenedor para cada tema o foros. También se le conoce como una categoría de nivel 1 y es la que debe tener cualquier Foro Kunena en su configuración.', 'A fin de proporcionar información adicional para todos los invitados y los miembros, La cabecera del foro se puede aprovechar para mostrar texto en la parte superior de una categoría.', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, '{}', 0),
(2, 1, 'Bienvenido Mat', 'bienvenido-mat', ' ', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 0, 'THIS', 0, '1000-01-01 00:00:00', 0, 0, 0, 0, 'Alentamos a los nuevos miembros a enviar una breve introducción de sí mismos en esta categoría del foro. Para así llegar a conocerse y compartir los intereses que posean en común.', '[b]Bienvenido al foro Kunena![/B] \n\n Cuéntanos a todos acerca de quién eres, qué te gusta y por qué te has convertido en miembro de este sitio. \n Damos la bienvenida a todos los nuevos miembros y esperamos verlos siempre por aquí!', '', '', 0, 'lastpost', 'default', 1, 1, 1, 1, 1669224148, '{}', 0),
(3, 1, 'Buzón de Sugerencias', 'buzon-de-sugerencias', ' ', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 0, 'THIS', 0, '1000-01-01 00:00:00', 0, 0, 0, 0, 'Tienes algún comentario o aporte para compartir? \n No sea tímido y envíenos una nota. Queremos saber de ti y tratar de hacer de nuestro sitio el mejor y más fácil de usar para nuestros miembros e invitados en general.', 'Este es el encabezado opcional del foro para el buzón de sugerencias.', '', '', 1, 'lastpost', 'default', 0, 0, 0, 0, 0, '{}', 0),
(4, 0, 'Mujeres y Ciencia', 'mujeres-y-ciencia', 'icon-user', 0, 0, 'joomla.group', 1, 2, 1, 8, 1, 2, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Una categoría dirigida al publico femenino. Los foros correspondientes a la misma se visualizan debajo.', 'Mujeres y Ciencia', '', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, '{\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}', 0),
(5, 4, 'Debate', 'debate', '', 0, 0, 'joomla.group', 1, 2, 1, 8, 1, 1, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Categoría dedicada a las discusiones sobre temas particulares. Cada usuaria tiene la posibilidad de iniciar un nuevo foro donde comparta sus inquietudes sobre un tema. Moderar el lenguaje.', 'Debate', '', '', 0, 'lastpost', 'default', 1, 4, 2, 5, 1669261142, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}', 0),
(6, 4, 'Inspiracional', 'inspiracional', '', 0, 0, 'joomla.group', 1, 2, 1, 8, 1, 2, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Categoría dedicada a vivencias personales. Cada usuaria tiene la posibilidad de compartir una vivencia propia o de alguna conocida. Además, las usuarias tienen la capacidad de dejar algún mensaje o cita inspiracional. Moderar el lenguaje.', 'Inspiracional', '', '', 0, 'lastpost', 'default', 1, 1, 3, 6, 1669261307, '{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"],\"display\":{\"index\":{\"parent\":\"3\",\"children\":\"3\"}}}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_configuration`
--

CREATE TABLE `i63fc_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_configuration`
--

INSERT INTO `i63fc_kunena_configuration` (`id`, `params`) VALUES
(1, '{\"board_title\":\"Frau: Foro\",\"email\":\"\",\"board_offline\":\"0\",\"offline_message\":\"The Forum is currently offline for maintenance.\\r\\nCheck back soon!\",\"enablerss\":\"1\",\"threads_per_page\":\"20\",\"messages_per_page\":\"6\",\"messages_per_page_search\":\"15\",\"showhistory\":\"1\",\"historylimit\":\"6\",\"shownew\":\"1\",\"disemoticons\":0,\"template\":\"crypsis\",\"showannouncement\":\"1\",\"avataroncat\":\"0\",\"catimagepath\":\"category_images\",\"showchildcaticon\":\"1\",\"rtewidth\":450,\"rteheight\":300,\"enableforumjump\":\"1\",\"reportmsg\":\"1\",\"username\":\"1\",\"askemail\":\"1\",\"showemail\":\"0\",\"showuserstats\":\"1\",\"showkarma\":\"1\",\"useredit\":\"1\",\"useredittime\":\"0\",\"useredittimegrace\":\"600\",\"editmarkup\":\"1\",\"allowsubscriptions\":\"1\",\"subscriptionschecked\":\"1\",\"allowfavorites\":\"1\",\"maxsubject\":50,\"maxsig\":\"300\",\"regonly\":\"0\",\"pubwrite\":\"0\",\"floodprotection\":\"0\",\"mailmod\":\"0\",\"mailadmin\":\"0\",\"captcha\":\"0\",\"mailfull\":\"1\",\"allowavatarupload\":\"1\",\"allowavatargallery\":\"1\",\"avatarquality\":\"75\",\"avatarsize\":\"2048\",\"imageheight\":\"800\",\"imagewidth\":\"800\",\"imagesize\":\"150\",\"filetypes\":\"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2\",\"filesize\":\"120\",\"showranking\":\"1\",\"rankimages\":\"1\",\"userlist_rows\":\"30\",\"userlist_online\":\"1\",\"userlist_avatar\":\"1\",\"userlist_posts\":\"1\",\"userlist_karma\":\"1\",\"userlist_email\":\"0\",\"userlist_joindate\":\"1\",\"userlist_lastvisitdate\":\"1\",\"userlist_userhits\":\"1\",\"latestcategory\":\"0\",\"showstats\":\"1\",\"showwhoisonline\":\"1\",\"showgenstats\":\"1\",\"showpopuserstats\":\"1\",\"popusercount\":\"5\",\"showpopsubjectstats\":\"1\",\"popsubjectcount\":\"5\",\"showspoilertag\":1,\"showvideotag\":1,\"showebaytag\":1,\"trimlongurls\":\"1\",\"trimlongurlsfront\":\"40\",\"trimlongurlsback\":\"20\",\"autoembedyoutube\":\"1\",\"autoembedebay\":\"1\",\"ebaylanguagecode\":\"en-us\",\"sessiontimeout\":\"1800\",\"highlightcode\":\"0\",\"rss_type\":\"topic\",\"rss_timelimit\":\"month\",\"rss_limit\":\"100\",\"rss_included_categories\":\"\",\"rss_excluded_categories\":\"\",\"rss_specification\":\"rss2.0\",\"rss_allow_html\":\"1\",\"rss_author_format\":\"name\",\"rss_author_in_title\":\"1\",\"rss_word_count\":\"0\",\"rss_old_titles\":\"1\",\"rss_cache\":\"900\",\"defaultpage\":\"recent\",\"default_sort\":\"asc\",\"sef\":\"1\",\"showimgforguest\":\"1\",\"showfileforguest\":\"1\",\"pollnboptions\":\"4\",\"pollallowvoteone\":\"1\",\"pollenabled\":\"1\",\"poppollscount\":\"5\",\"showpoppollstats\":\"1\",\"polltimebtvotes\":\"00:15:00\",\"pollnbvotesbyuser\":\"100\",\"pollresultsuserslist\":\"1\",\"allow_user_edit_poll\":0,\"maxpersotext\":50,\"ordering_system\":\"mesid\",\"post_dateformat\":\"ago\",\"post_dateformat_hover\":\"datetime\",\"hide_ip\":\"1\",\"imagetypes\":\"jpg,jpeg,gif,png\",\"checkmimetypes\":\"1\",\"imagemimetypes\":\"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png\",\"imagequality\":\"50\",\"thumbheight\":\"32\",\"thumbwidth\":\"32\",\"hideuserprofileinfo\":\"put_empty\",\"boxghostmessage\":\"0\",\"userdeletetmessage\":\"0\",\"latestcategory_in\":\"1\",\"topicicons\":\"1\",\"debug\":\"0\",\"catsautosubscribed\":0,\"showbannedreason\":\"0\",\"showthankyou\":\"1\",\"showpopthankyoustats\":\"1\",\"popthankscount\":\"5\",\"mod_see_deleted\":\"0\",\"bbcode_img_secure\":\"text\",\"listcat_show_moderators\":\"1\",\"lightbox\":\"1\",\"show_list_time\":\"720\",\"show_session_type\":\"2\",\"show_session_starttime\":\"1800\",\"userlist_allowed\":\"1\",\"userlist_count_users\":\"1\",\"enable_threaded_layouts\":0,\"category_subscriptions\":\"post\",\"topic_subscriptions\":\"every\",\"pubprofile\":\"1\",\"thankyou_max\":\"10\",\"email_recipient_count\":\"0\",\"email_recipient_privacy\":\"bcc\",\"email_visible_address\":\"\",\"captcha_post_limit\":\"0\",\"image_upload\":\"registered\",\"file_upload\":\"registered\",\"topic_layout\":\"flat\",\"time_to_create_page\":\"1\",\"show_imgfiles_manage_profile\":\"1\",\"hold_newusers_posts\":\"0\",\"hold_guest_posts\":\"0\",\"attachment_limit\":\"8\",\"pickup_category\":\"0\",\"article_display\":\"intro\",\"send_emails\":\"1\",\"fallback_english\":\"1\",\"cache\":\"1\",\"cache_time\":\"60\",\"ebay_affiliate_id\":\"5337089937\",\"iptracking\":\"1\",\"rss_feedburner_url\":\"\",\"autolink\":\"1\",\"access_component\":\"1\",\"statslink_allowed\":\"1\",\"superadmin_userlist\":\"0\",\"legacy_urls\":\"0\",\"attachment_protection\":\"0\",\"categoryicons\":1,\"avatarresizemethod\":\"1\",\"avatarcrop\":\"0\",\"user_report\":\"1\",\"searchtime\":\"365\",\"teaser\":\"0\",\"ebay_language\":\"0\",\"ebay_api_key\":\"\",\"ebay_cert_id\":\"\",\"twitter_consumer_key\":\"\",\"twitter_consumer_secret\":\"\",\"allow_change_subject\":\"1\",\"max_links\":\"6\",\"read_only\":\"0\",\"ratingenabled\":\"0\",\"url_subject_topic\":\"0\",\"log_moderation\":\"0\",\"attach_start\":\"0\",\"attach_end\":\"14\",\"google_map_api_key\":\"\",\"attachment_utf8\":\"1\",\"autoembedsoundcloud\":\"1\",\"emailheader\":\"media\\/kunena\\/email\\/hero-wide.png\",\"user_status\":\"1\",\"signature\":\"1\",\"personal\":\"1\",\"social\":\"1\",\"plain_email\":\"0\",\"moderator_permdelete\":\"0\",\"avatartypes\":\"gif, jpeg, jpg, png\",\"smartlinking\":\"0\",\"defaultavatar\":\"nophoto.png\",\"defaultavatarsmall\":\"s_nophoto.png\",\"stopforumspam_key\":\"\",\"quickreply\":\"1\",\"avataredit\":\"0\",\"activemenuitem\":\"\",\"mainmenu_id\":\"\",\"home_id\":\"\",\"index_id\":\"\",\"moderators_id\":\"\",\"topiclist_id\":\"\",\"misc_id\":\"\",\"profile_id\":\"\",\"search_id\":\"\",\"avatar_type\":\"1\",\"sef_redirect\":\"1\",\"allow_edit_poll\":\"1\",\"use_system_emails\":\"0\",\"autoembedinstagram\":\"1\",\"disable_re\":\"0\",\"email_sender_name\":\"\",\"display_filename_attachment\":\"0\",\"new_users_prevent_post_url_images\":\"0\",\"minimal_user_posts_add_url_image\":\"10\",\"plugins\":{\"plg_system_kunena\":{\"jcontentevents\":\"0\",\"jcontentevent_target\":\"\"}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_logs`
--

CREATE TABLE `i63fc_kunena_logs` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `target_user` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `operation` varchar(40) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_messages`
--

CREATE TABLE `i63fc_kunena_messages` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT 0,
  `thread` int(11) DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `name` tinytext DEFAULT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `email` tinytext DEFAULT NULL,
  `subject` tinytext DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `hold` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `moved` tinyint(4) DEFAULT 0,
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_messages`
--

INSERT INTO `i63fc_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(1, 0, 1, 2, 'Kunena', 691, NULL, 'Bienvenido a Kunena!', 1669224148, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(2, 0, 2, 5, 'dvian', 692, '', '¿Cual es su investigadora o cientifica favorita?', 1669256960, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(3, 2, 2, 5, 'debora97', 693, '', '¿Cual es su investigadora o cientifica favorita?', 1669257645, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(4, 2, 2, 5, 'binchilin23', 694, '', '¿Cual es su investigadora o cientifica favorita?', 1669257765, '::1', 0, 0, 0, 0, 0, 0, 694, 1669257795, ''),
(5, 2, 2, 5, 'kotarourinni', 691, '', '¿Cual es su investigadora o cientifica favorita?', 1669261142, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(6, 0, 3, 6, 'kotarourinni', 691, '', 'Comentarios que les hicieron por estudiar una carrera cientifica', 1669261307, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_messages_text`
--

CREATE TABLE `i63fc_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT 0,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_messages_text`
--

INSERT INTO `i63fc_kunena_messages_text` (`mesid`, `message`) VALUES
(1, '[size=4][b]Bienvenido a Kunena![/b][/size] \n\n Gracias por elegir Kunena para tus necesidades de un foro en Joomla. \n\n Kunena, que traducido del suajili significa “tHablar”, es desarrollado por un equipo de profesionales de código abierto con la meta de proporcionar una solución de foro de alta calidad y estrechamente unificada para Joomla. \n\n\n [size=4][b]Recursos adicionales de Kunena[/b][/size] \n\n [b]Documentación de Kunena:[/b] [url]https://docs.kunena.org[/url] \n\n [b]Foro de soporte de Kunena:[/b] [url]https://www.kunena.org/forum[/url] \n\n [b]Descargas de Kunena:[/b] [url]https://www.kunena.org/download[/url] \n\n [b]Blog de Kunena:[/b] [url]https://www.kunena.org/blog[/url] \n\n [b]Seguir a Kunena en Twitter:[/b] [url]https://www.kunena.org/twitter[/url]'),
(2, 'Vengo a realizarles una pregunta un poco personal. En mi caso, es [b]Marie Curie[/b]! \r\n\r\nEspero sus comentarios [img]/frau/media/kunena/emoticons/cheerful.png[/img]'),
(3, 'Karen Hallberg sin duda es mi ejemplo a seguir!'),
(4, 'Hedy Lamarr'),
(5, 'Definitivamente es una pregunta dificil, pero creo que mi favorita entre todas en Karen Hallberg'),
(6, '¿Algun comentario que les hayan hecho por estudiar una carrera relacionada con la ciencia y tecnologia?\r\n\r\nA una amiga le dijeron una vez que no deberia estar estudiando una carrera de hombres y que mejor deberia prepararse para ser madre. [img]/frau/media/kunena/emoticons/silly.png[/img]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_polls`
--

CREATE TABLE `i63fc_kunena_polls` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_polls_options`
--

CREATE TABLE `i63fc_kunena_polls_options` (
  `id` int(11) NOT NULL,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_polls_users`
--

CREATE TABLE `i63fc_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `lastvote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_ranks`
--

CREATE TABLE `i63fc_kunena_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rank_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_ranks`
--

INSERT INTO `i63fc_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'COM_KUNENA_SAMPLEDATA_RANK1', 0, 0, 'rank1.gif'),
(2, 'COM_KUNENA_SAMPLEDATA_RANK2', 20, 0, 'rank2.gif'),
(3, 'COM_KUNENA_SAMPLEDATA_RANK3', 40, 0, 'rank3.gif'),
(4, 'COM_KUNENA_SAMPLEDATA_RANK4', 80, 0, 'rank4.gif'),
(5, 'COM_KUNENA_SAMPLEDATA_RANK5', 160, 0, 'rank5.gif'),
(6, 'COM_KUNENA_SAMPLEDATA_RANK6', 320, 0, 'rank6.gif'),
(7, 'COM_KUNENA_SAMPLEDATA_RANK_ADMIN', 0, 1, 'rankadmin.gif'),
(8, 'COM_KUNENA_SAMPLEDATA_RANK_MODERATOR', 0, 1, 'rankmod.gif'),
(9, 'COM_KUNENA_SAMPLEDATA_RANK_SPAMMER', 0, 1, 'rankspammer.gif'),
(10, 'COM_KUNENA_SAMPLEDATA_RANK_BANNED', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_rate`
--

CREATE TABLE `i63fc_kunena_rate` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `rate` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_sessions`
--

CREATE TABLE `i63fc_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `allowed` text DEFAULT NULL,
  `lasttime` int(11) NOT NULL DEFAULT 0,
  `readtopics` text DEFAULT NULL,
  `currvisit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_sessions`
--

INSERT INTO `i63fc_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(691, 'na', 1669257975, '0', 1669261309),
(692, 'na', 1668045909, '0', 1669256975),
(693, 'na', 1668048001, '0', 1669257652),
(694, 'na', 1668048144, '0', 1669259018);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_smileys`
--

CREATE TABLE `i63fc_kunena_smileys` (
  `id` int(4) NOT NULL,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_smileys`
--

INSERT INTO `i63fc_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_thankyou`
--

CREATE TABLE `i63fc_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_thankyou`
--

INSERT INTO `i63fc_kunena_thankyou` (`postid`, `userid`, `targetuserid`, `time`) VALUES
(3, 694, 693, '2022-11-24 02:57:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_topics`
--

CREATE TABLE `i63fc_kunena_topics` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `subject` tinytext DEFAULT NULL,
  `icon_id` int(11) NOT NULL DEFAULT 0,
  `label_id` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `hold` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `posts` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) NOT NULL DEFAULT 0,
  `attachments` int(11) NOT NULL DEFAULT 0,
  `poll_id` int(11) NOT NULL DEFAULT 0,
  `moved_id` int(11) NOT NULL DEFAULT 0,
  `first_post_id` int(11) NOT NULL DEFAULT 0,
  `first_post_time` int(11) NOT NULL DEFAULT 0,
  `first_post_userid` int(11) NOT NULL DEFAULT 0,
  `first_post_message` text DEFAULT NULL,
  `first_post_guest_name` tinytext DEFAULT NULL,
  `last_post_id` int(11) NOT NULL DEFAULT 0,
  `last_post_time` int(11) NOT NULL DEFAULT 0,
  `last_post_userid` int(11) NOT NULL DEFAULT 0,
  `last_post_message` text DEFAULT NULL,
  `last_post_guest_name` tinytext DEFAULT NULL,
  `rating` tinyint(4) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_topics`
--

INSERT INTO `i63fc_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `label_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `rating`, `params`) VALUES
(1, 2, 'Bienvenido a Kunena!', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1669224148, 691, '[size=4][b]Bienvenido a Kunena![/b][/size] \n\n Gracias por elegir Kunena para tus necesidades de un foro en Joomla. \n\n Kunena, que traducido del suajili significa “tHablar”, es desarrollado por un equipo de profesionales de código abierto con la meta de proporcionar una solución de foro de alta calidad y estrechamente unificada para Joomla. \n\n\n [size=4][b]Recursos adicionales de Kunena[/b][/size] \n\n [b]Documentación de Kunena:[/b] [url]https://docs.kunena.org[/url] \n\n [b]Foro de soporte de Kunena:[/b] [url]https://www.kunena.org/forum[/url] \n\n [b]Descargas de Kunena:[/b] [url]https://www.kunena.org/download[/url] \n\n [b]Blog de Kunena:[/b] [url]https://www.kunena.org/blog[/url] \n\n [b]Seguir a Kunena en Twitter:[/b] [url]https://www.kunena.org/twitter[/url]', 'Kunena', 1, 1669224148, 691, '[size=4][b]Bienvenido a Kunena![/b][/size] \n\n Gracias por elegir Kunena para tus necesidades de un foro en Joomla. \n\n Kunena, que traducido del suajili significa “tHablar”, es desarrollado por un equipo de profesionales de código abierto con la meta de proporcionar una solución de foro de alta calidad y estrechamente unificada para Joomla. \n\n\n [size=4][b]Recursos adicionales de Kunena[/b][/size] \n\n [b]Documentación de Kunena:[/b] [url]https://docs.kunena.org[/url] \n\n [b]Foro de soporte de Kunena:[/b] [url]https://www.kunena.org/forum[/url] \n\n [b]Descargas de Kunena:[/b] [url]https://www.kunena.org/download[/url] \n\n [b]Blog de Kunena:[/b] [url]https://www.kunena.org/blog[/url] \n\n [b]Seguir a Kunena en Twitter:[/b] [url]https://www.kunena.org/twitter[/url]', 'Kunena', 1, ''),
(2, 5, '¿Cual es su investigadora o cientifica favorita?', 4, 0, 0, 0, 0, 4, 7, 0, 0, 0, 2, 1669256960, 692, 'Vengo a realizarles una pregunta un poco personal. En mi caso, es [b]Marie Curie[/b]! \r\n\r\nEspero sus comentarios [img]/frau/media/kunena/emoticons/cheerful.png[/img]', 'dvian', 5, 1669261142, 691, 'Definitivamente es una pregunta dificil, pero creo que mi favorita entre todas en Karen Hallberg', 'kotarourinni', 0, ''),
(3, 6, 'Comentarios que les hicieron por estudiar una carrera cientifica', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 6, 1669261307, 691, '¿Algun comentario que les hayan hecho por estudiar una carrera relacionada con la ciencia y tecnologia?\r\n\r\nA una amiga le dijeron una vez que no deberia estar estudiando una carrera de hombres y que mejor deberia prepararse para ser madre. [img]/frau/media/kunena/emoticons/silly.png[/img]', 'kotarourinni', 6, 1669261307, 691, '¿Algun comentario que les hayan hecho por estudiar una carrera relacionada con la ciencia y tecnologia?\r\n\r\nA una amiga le dijeron una vez que no deberia estar estudiando una carrera de hombres y que mejor deberia prepararse para ser madre. [img]/frau/media/kunena/emoticons/silly.png[/img]', 'kotarourinni', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_users`
--

CREATE TABLE `i63fc_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `status_text` varchar(255) NOT NULL DEFAULT '0',
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text DEFAULT NULL,
  `moderator` int(11) DEFAULT 0,
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `posts` int(11) DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `karma` int(11) DEFAULT 0,
  `karma_time` int(11) DEFAULT 0,
  `group_id` int(4) DEFAULT 1,
  `uhits` int(11) DEFAULT 0,
  `personalText` tinytext DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `telegram` varchar(50) DEFAULT NULL,
  `vk` varchar(50) DEFAULT NULL,
  `microsoft` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `google` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `linkedin_company` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `qqsocial` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `apple` varchar(50) DEFAULT NULL,
  `qzone` varchar(50) DEFAULT NULL,
  `weibo` varchar(50) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `youtube` varchar(50) DEFAULT NULL,
  `ok` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `hideEmail` tinyint(1) NOT NULL DEFAULT 1,
  `showOnline` tinyint(1) NOT NULL DEFAULT 1,
  `canSubscribe` tinyint(1) NOT NULL DEFAULT -1,
  `userListtime` int(11) DEFAULT -2,
  `thankyou` int(11) DEFAULT 0,
  `ip` varchar(128) NOT NULL DEFAULT '',
  `socialshare` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_users`
--

INSERT INTO `i63fc_kunena_users` (`userid`, `status`, `status_text`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `timestamp`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `friendfeed`, `bebo`, `digg`, `icq`, `telegram`, `vk`, `microsoft`, `skype`, `twitter`, `facebook`, `google`, `myspace`, `linkedin`, `linkedin_company`, `delicious`, `instagram`, `qqsocial`, `blogspot`, `flickr`, `apple`, `qzone`, `weibo`, `wechat`, `yim`, `whatsapp`, `youtube`, `ok`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `canSubscribe`, `userListtime`, `thankyou`, `ip`, `socialshare`) VALUES
(691, 0, '0', '', '', 0, NULL, 0, 3, 'users/avatar691.jpg', 1669225784, 0, 0, 1, 0, '', 0, '0001-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, -1, -2, 0, '::1', 0),
(692, 0, '0', '', NULL, 0, NULL, 0, 1, NULL, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '::1', 1),
(693, 0, '0', '', NULL, 0, NULL, 0, 1, NULL, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 1, '::1', 1),
(694, 0, '0', '', NULL, 0, NULL, 0, 1, NULL, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '::1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_users_banned`
--

CREATE TABLE `i63fc_kunena_users_banned` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT 0,
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text DEFAULT NULL,
  `reason_public` text DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_user_categories`
--

CREATE TABLE `i63fc_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `allreadtime` int(11) NOT NULL DEFAULT 0,
  `subscribed` tinyint(4) NOT NULL DEFAULT 0,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_user_categories`
--

INSERT INTO `i63fc_kunena_user_categories` (`user_id`, `category_id`, `role`, `allreadtime`, `subscribed`, `params`) VALUES
(691, 0, 0, 1668015859, 0, ''),
(692, 0, 0, 1668045909, 0, ''),
(693, 0, 0, 1668048001, 0, ''),
(694, 0, 0, 1668048144, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_user_read`
--

CREATE TABLE `i63fc_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_user_read`
--

INSERT INTO `i63fc_kunena_user_read` (`user_id`, `topic_id`, `category_id`, `message_id`, `time`) VALUES
(691, 2, 5, 5, 1669261151),
(691, 3, 6, 6, 1669261308),
(692, 2, 5, 2, 1669256961),
(693, 2, 5, 3, 1669257651),
(694, 2, 5, 4, 1669258991);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_user_topics`
--

CREATE TABLE `i63fc_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT 0,
  `last_post_id` int(11) NOT NULL DEFAULT 0,
  `owner` tinyint(4) NOT NULL DEFAULT 0,
  `favorite` tinyint(4) NOT NULL DEFAULT 0,
  `subscribed` tinyint(4) NOT NULL DEFAULT 0,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_user_topics`
--

INSERT INTO `i63fc_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(691, 1, 2, 1, 1, 1, 0, 0, ''),
(691, 2, 5, 1, 5, 0, 0, 1, ''),
(691, 3, 6, 1, 6, 1, 0, 0, ''),
(692, 2, 5, 1, 2, 1, 0, 1, ''),
(693, 2, 5, 1, 3, 0, 0, 1, ''),
(694, 2, 5, 1, 4, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_kunena_version`
--

CREATE TABLE `i63fc_kunena_version` (
  `id` int(11) NOT NULL,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL DEFAULT '0',
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `i63fc_kunena_version`
--

INSERT INTO `i63fc_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '5.2.12', '2022-11-21', '2022-11-23', '5.2.12', 'Pessegueiro', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_languages`
--

CREATE TABLE `i63fc_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_languages`
--

INSERT INTO `i63fc_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 60, 'es-ES', 'Spanish (español)', 'Español (España)', 'es', 'es_es', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_menu`
--

CREATE TABLE `i63fc_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_menu`
--

INSERT INTO `i63fc_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 159, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 25, 30, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 26, 27, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 28, 29, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 31, 34, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 32, 33, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 53, 54, 0, '*', 1),
(101, 'mainmenu', 'INICIO', 'home', '', 'home', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 11, 12, 1, '*', 0),
(102, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena&view=cpanel', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '{}', 55, 82, 0, '', 1),
(103, 'main', 'COM_KUNENA_DASHBOARD', 'com-kunena-dashboard', '', 'com-kunena/com-kunena-dashboard', 'index.php?option=com_kunena&view=cpanel', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1),
(104, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1),
(105, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1),
(106, 'main', 'COM_KUNENA_FILE_MANAGER', 'com-kunena-file-manager', '', 'com-kunena/com-kunena-file-manager', 'index.php?option=com_kunena&view=attachments', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 62, 63, 0, '', 1),
(107, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 64, 65, 0, '', 1),
(108, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 66, 67, 0, '', 1),
(109, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 68, 69, 0, '', 1),
(110, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 70, 71, 0, '', 1),
(111, 'main', 'COM_KUNENA_PLUGIN_MANAGER', 'com-kunena-plugin-manager', '', 'com-kunena/com-kunena-plugin-manager', 'index.php?option=com_kunena&view=plugins', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(112, 'main', 'COM_KUNENA_LOG_MANAGER', 'com-kunena-log-manager', '', 'com-kunena/com-kunena-log-manager', 'index.php?option=com_kunena&view=logs', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(113, 'main', 'COM_KUNENA_MENU_STATISTICS', 'com-kunena-menu-statistics', '', 'com-kunena/com-kunena-menu-statistics', 'index.php?option=com_kunena&view=statistics', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(114, 'main', 'COM_KUNENA_FORUM_TOOLS', 'com-kunena-forum-tools', '', 'com-kunena/com-kunena-forum-tools', 'index.php?option=com_kunena&view=tools', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1),
(115, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 1, 102, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(116, 'kunenamenu', 'Foro', 'foro', '', 'foro', 'index.php?option=com_kunena&view=home&defaultmenu=117', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 83, 102, 0, '*', 0),
(117, 'kunenamenu', 'Categorías', 'categorias', '', 'foro/categorias', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 84, 85, 0, '*', 0),
(118, 'kunenamenu', 'Mensajes Recientes', 'recientes', '', 'foro/recientes', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":\"\"}', 86, 87, 0, '*', 0),
(119, 'kunenamenu', 'Sin Leer', 'no-leido', '', 'foro/no-leido', 'index.php?option=com_kunena&view=topics&layout=unread', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 88, 89, 0, '*', 0),
(120, 'kunenamenu', 'Nuevo Tema', 'nuevo-tema', '', 'foro/nuevo-tema', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 90, 91, 0, '*', 0),
(121, 'kunenamenu', 'Sin Respuesta', 'sin-respuestas', '', 'foro/sin-respuestas', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":\"\"}', 92, 93, 0, '*', 0),
(122, 'kunenamenu', 'Mis Temas', 'mis-temas', '', 'foro/mis-temas', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"2\",\"topics_categories\":\"0\",\"topics_time\":\"\"}', 94, 95, 0, '*', 0),
(123, 'kunenamenu', 'Perfil', 'perfil', '', 'foro/perfil', 'index.php?option=com_kunena&view=user', 'component', 1, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"integration\":1}', 96, 97, 0, '*', 0),
(124, 'kunenamenu', 'Ayuda', 'ayuda', '', 'foro/ayuda', 'index.php?option=com_kunena&view=misc', 'component', 0, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"body\":\"Esta p\\u00e1gina de ayuda es un elemento de men\\u00fa dentro del [b]Men\\u00fa Kunena[\\/b], que permite una f\\u00e1cil navegaci\\u00f3n en su foro.\\n\\nUsted puede utilizar el Gestor de Men\\u00fas de Joomla para editar los elementos en este men\\u00fa. Por favor, vaya a [b]Administraci\\u00f3n[\\/b] >> [b]Men\\u00fas[\\/b] >> [b]Men\\u00fa Kunena[\\/b] >> [b]Ayuda[\\/b] para editar o eliminar este elemento del men\\u00fa.\\n\\n En este elemento de men\\u00fa puede utilizar texto sin formato, HTML o BBCode. Si desea enlazar un art\\u00edculo a esta p\\u00e1gina, usted puede usar el art\\u00edculo BBCode (con art\\u00edculo id): [code][article=full]123[\\/article][\\/code]\\n\\n Si desea crear su propio men\\u00fa para Kunena, por favor, empiece por crear el elemento [b]Inicio[\\/b] en primer lugar. En esa p\\u00e1gina se puede seleccionar un elemento de men\\u00fa predeterminado, que ser\\u00e1 mostrado al ingresar a Kunena.\",\"body_format\":\"bbcode\"}', 98, 99, 0, '*', 0),
(125, 'kunenamenu', 'Buscar', 'buscar', '', 'foro/buscar', 'index.php?option=com_kunena&view=search', 'component', 0, 116, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 100, 101, 0, '*', 0),
(126, 'mainmenu', 'FORO', 'kunena-2022-11-23', '', 'kunena-2022-11-23', 'index.php?Itemid=116', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"aliasoptions\":\"116\",\"alias_redirect\":0,\"menu-anchor_title\":\"FORO FRAU\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 23, 24, 0, '*', 0),
(139, 'mainmenu', 'EVENTOS FUTUROS', 'eventos-futuros', '', 'eventos-futuros', 'index.php?option=com_jevents&view=month&layout=calendar', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"com_calViewName\":\"global\",\"darktemplate\":\"0\",\"com_calUseIconic\":\"1\",\"iconstoshow\":[\"byyear\",\"bymonth\",\"byweek\",\"byday\",\"search\"],\"include_subcats\":\"1\",\"showyearpast\":\"1\",\"overridelayout\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"EVENTOS\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 13, 14, 0, '*', 0),
(140, 'mainmenu', 'INFORMACIÓN ACADÉMICA', 'informacion-academica', '', 'informacion-academica', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 17, 22, 0, '*', 0),
(141, 'mainmenu', 'UNJU', 'unju', '', 'informacion-academica/unju', 'index.php?option=com_content&view=article&id=1', 'component', 1, 140, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 18, 19, 0, '*', 0),
(142, 'mainmenu', 'UCSE', 'ucse', '', 'informacion-academica/ucse', 'index.php?option=com_content&view=article&id=2', 'component', 1, 140, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 20, 21, 0, '*', 0),
(143, 'mainmenu', 'LA MUJER Y EL ÁMBITO ACADÉMICO', 'la-mujer-y-el-ambito-academico', '', 'la-mujer-y-el-ambito-academico', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 15, 16, 0, '*', 0),
(144, 'main', 'COM_JEVENTS_MENU', 'com-jevents-menu', '', 'com-jevents-menu', 'index.php?option=com_jevents', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 103, 126, 0, '', 1),
(145, 'main', 'JEVENTS_DASHBOARD', 'jevents-dashboard', '', 'com-jevents-menu/jevents-dashboard', 'index.php?option=com_jevents&view=cpanel', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 104, 105, 0, '', 1),
(146, 'main', 'JEV_INSTAL_MANAGE', 'jev-instal-manage', '', 'com-jevents-menu/jev-instal-manage', 'index.php?option=com_jevents&task=icalevent.list', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 106, 107, 0, '', 1),
(147, 'main', 'JEV_ADD_EVENT', 'jev-add-event', '', 'com-jevents-menu/jev-add-event', 'index.php?option=com_jevents&task=icalevent.edit', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 108, 109, 0, '', 1),
(148, 'main', 'JEV_INSTAL_CATS', 'jev-instal-cats', '', 'com-jevents-menu/jev-instal-cats', 'index.php?option=com_jevents&task=redirect.com_categories', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 110, 111, 0, '', 1),
(149, 'main', 'JEV_ADMIN_ICAL_SUBSCRIPTIONS', 'jev-admin-ical-subscriptions', '', 'com-jevents-menu/jev-admin-ical-subscriptions', 'index.php?option=com_jevents&task=icals.list', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 112, 113, 0, '', 1),
(150, 'main', 'JEV_LAYOUT_DEFAULTS', 'jev-layout-defaults', '', 'com-jevents-menu/jev-layout-defaults', 'index.php?option=com_jevents&task=defaults.list', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 114, 115, 0, '', 1),
(151, 'main', 'COM_JEVENTS_CONFIGURATION', 'com-jevents-configuration', '', 'com-jevents-menu/com-jevents-configuration', 'index.php?option=com_jevents&task=params.edit', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 116, 117, 0, '', 1),
(152, 'main', 'COM_JEVENTS_LOCATIONS', 'com-jevents-locations', '', 'com-jevents-menu/com-jevents-locations', 'index.php?option=com_jevents&task=redirect.com_jevlocations', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 118, 119, 0, '', 1),
(153, 'main', 'COM_JEVENTS_PEOPLE', 'com-jevents-people', '', 'com-jevents-menu/com-jevents-people', 'index.php?option=com_jevents&task=redirect.com_jevpeople', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 120, 121, 0, '', 1),
(154, 'main', 'COM_JEVENTS_RSVPPRO', 'com-jevents-rsvppro', '', 'com-jevents-menu/com-jevents-rsvppro', 'index.php?option=com_jevents&task=redirect.com_rsvppro', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 122, 123, 0, '', 1),
(155, 'main', 'COM_JEVENTS_TAGS', 'com-jevents-tags', '', 'com-jevents-menu/com-jevents-tags', 'index.php?option=com_jevents&task=redirect.com_jeventstags', 'component', 1, 144, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 124, 125, 0, '', 1),
(156, 'main', 'COM_JOOMGALLERY', 'com-joomgallery', '', 'com-joomgallery', 'index.php?option=com_joomgallery', 'component', 1, 1, 1, 10041, 0, '0000-00-00 00:00:00', 0, 1, '../media/joomgallery/images/joom_main.png', 0, '{}', 127, 154, 0, '', 1),
(157, 'main', 'COM_JOOMGALLERY_CATEGORY_MANAGER', 'com-joomgallery-category-manager', '', 'com-joomgallery/com-joomgallery-category-manager', 'index.php?option=com_joomgallery&controller=categories', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_categories.png', 0, '{}', 128, 129, 0, '', 1),
(158, 'main', 'COM_JOOMGALLERY_IMAGE_MANAGER', 'com-joomgallery-image-manager', '', 'com-joomgallery/com-joomgallery-image-manager', 'index.php?option=com_joomgallery&controller=images', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_pictures.png', 0, '{}', 130, 131, 0, '', 1),
(159, 'main', 'COM_JOOMGALLERY_COMMENTS_MANAGER', 'com-joomgallery-comments-manager', '', 'com-joomgallery/com-joomgallery-comments-manager', 'index.php?option=com_joomgallery&controller=comments', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_comments.png', 0, '{}', 132, 133, 0, '', 1),
(160, 'main', 'COM_JOOMGALLERY_IMAGE_UPLOAD', 'com-joomgallery-image-upload', '', 'com-joomgallery/com-joomgallery-image-upload', 'index.php?option=com_joomgallery&controller=upload', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_pictureupload.png', 0, '{}', 134, 135, 0, '', 1),
(161, 'main', 'COM_JOOMGALLERY_AJAX_UPLOAD', 'com-joomgallery-ajax-upload', '', 'com-joomgallery/com-joomgallery-ajax-upload', 'index.php?option=com_joomgallery&controller=ajaxupload', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_ajaxupload.png', 0, '{}', 136, 137, 0, '', 1),
(162, 'main', 'COM_JOOMGALLERY_BATCH_UPLOAD', 'com-joomgallery-batch-upload', '', 'com-joomgallery/com-joomgallery-batch-upload', 'index.php?option=com_joomgallery&controller=batchupload', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_batchupload.png', 0, '{}', 138, 139, 0, '', 1),
(163, 'main', 'COM_JOOMGALLERY_FTP_UPLOAD', 'com-joomgallery-ftp-upload', '', 'com-joomgallery/com-joomgallery-ftp-upload', 'index.php?option=com_joomgallery&controller=ftpupload', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_ftpupload.png', 0, '{}', 140, 141, 0, '', 1),
(164, 'main', 'COM_JOOMGALLERY_JAVA_UPLOAD', 'com-joomgallery-java-upload', '', 'com-joomgallery/com-joomgallery-java-upload', 'index.php?option=com_joomgallery&controller=jupload', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_jupload.png', 0, '{}', 142, 143, 0, '', 1),
(165, 'main', 'COM_JOOMGALLERY_CONFIGURATION_MANAGER', 'com-joomgallery-configuration-manager', '', 'com-joomgallery/com-joomgallery-configuration-manager', 'index.php?option=com_joomgallery&controller=config', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_config.png', 0, '{}', 144, 145, 0, '', 1),
(166, 'main', 'COM_JOOMGALLERY_CUSTOMIZE_CSS', 'com-joomgallery-customize-css', '', 'com-joomgallery/com-joomgallery-customize-css', 'index.php?option=com_joomgallery&controller=cssedit', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_css.png', 0, '{}', 146, 147, 0, '', 1),
(167, 'main', 'COM_JOOMGALLERY_MIGRATION_MANAGER', 'com-joomgallery-migration-manager', '', 'com-joomgallery/com-joomgallery-migration-manager', 'index.php?option=com_joomgallery&controller=migration', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_migration.png', 0, '{}', 148, 149, 0, '', 1),
(168, 'main', 'COM_JOOMGALLERY_MAINTENANCE_MANAGER', 'com-joomgallery-maintenance-manager', '', 'com-joomgallery/com-joomgallery-maintenance-manager', 'index.php?option=com_joomgallery&controller=maintenance', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_maintenance.png', 0, '{}', 150, 151, 0, '', 1),
(169, 'main', 'COM_JOOMGALLERY_HELP', 'com-joomgallery-help', '', 'com-joomgallery/com-joomgallery-help', 'index.php?option=com_joomgallery&controller=help', 'component', 1, 156, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'media/joomgallery/images/joom_information.png', 0, '{}', 152, 153, 0, '', 1),
(170, 'mainmenu', 'GALERIA DE PAPERS', 'galeria-de-papers', '', 'galeria-de-papers', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"0\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 155, 158, 0, '*', 0),
(171, 'mainmenu', 'NUEVO PAPER', 'nuevo-paper', '', 'galeria-de-papers/nuevo-paper', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 170, 2, 22, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"enable_category\":\"0\",\"catid\":\"\",\"redirect_menuitem\":\"\",\"custom_cancel_redirect\":\"0\",\"cancel_redirect_menuitem\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 156, 157, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_menu_types`
--

CREATE TABLE `i63fc_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_menu_types`
--

INSERT INTO `i63fc_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 62, 'kunenamenu', 'Menú Kunena', 'Este es el menú predeterminado de Kunena. Es usado como el menú de navegación superior de Kunena. Se puede publicar en cualquier posición de módulo. Simplemente despublique los artículos que no sean necesarios.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_messages`
--

CREATE TABLE `i63fc_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_messages_cfg`
--

CREATE TABLE `i63fc_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_modules`
--

CREATE TABLE `i63fc_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_modules`
--

INSERT INTO `i63fc_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu Principal', '', '', 1, 'position-1', 691, '2022-11-23 21:14:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Inicio de sesión', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":1,\"name\":0,\"profilelink\":1,\"usesecure\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2022-11-23 17:51:57', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*'),
(90, 66, 'JEvents - Calendar Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2022-11-23 17:55:51', '0000-00-00 00:00:00', 1, 'mod_jevents_cal', 1, 1, '', 0, '*'),
(91, 67, 'JEvents - Legend Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2022-11-23 17:55:51', '0000-00-00 00:00:00', 1, 'mod_jevents_legend', 1, 1, '', 0, '*'),
(92, 68, 'JEvents - Latest Events Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2022-11-23 17:55:51', '0000-00-00 00:00:00', 1, 'mod_jevents_latest', 1, 1, '', 0, '*'),
(93, 69, 'JEvents - Filter Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2022-11-23 17:55:51', '0000-00-00 00:00:00', 1, 'mod_jevents_filter', 1, 1, '', 0, '*'),
(94, 70, 'JEvents - Custom Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2022-11-23 17:55:44', '0000-00-00 00:00:00', 1, 'mod_jevents_custom', 1, 1, '', 0, '*'),
(95, 71, 'JEvents - Switch View Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '2022-11-23 17:55:51', '0000-00-00 00:00:00', 1, 'mod_jevents_switchview', 1, 1, '', 0, '*'),
(96, 72, 'JEvents - Dashboard Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jevents_dashboard', 1, 1, '', 1, '*'),
(97, 79, 'JoomGallery - Github activity', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_joomgithub', 1, 1, '', 1, '*'),
(98, 80, 'JoomGallery News', '', NULL, 1, 'joom_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{\"cache\":1,\"cache_time\":15,\"moduleclass_sfx\":\"\",\"rssurl\":\"https:\\/\\/www.en.joomgalleryfriends.net\\/?format=feed&amp;type=rss\",\"rssrtl\":0,\"rsstitle\":1,\"rssdesc\":0,\"rssimage\":1,\"rssitems\":3,\"rssitemdesc\":1,\"word_count\":200}', 1, '*'),
(99, 81, 'JoomGallery Open Bounties', '', NULL, 2, 'joom_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_joomgithub', 1, 1, '{\"CachingEnabled\":1,\"shortcache\":15,\"moduleclass_sfx\":\"\",\"layout\":\"_:Issues\",\"Owner\":\"JoomGalleryfriends\",\"repo\":\"JoomGallery\",\"CommitImg\":0,\"DispCommitter\":0,\"DispRecords\":5,\"IssueLabels\":\"bounty\",\"IssueStatus\":\"open\",\"IssueSort\":\"updated\",\"IssueOrder\":\"desc\",\"DivSize\":\"0\",\"DateFormat\":\"d.F Y\"}', 1, '*'),
(100, 83, 'JoomCategories', '', '', 1, '', 0, '0000-00-00 00:00:00', '2022-11-23 20:01:07', '0000-00-00 00:00:00', 1, 'mod_joomcat', 1, 1, '{\"moduleclass_sfx\":\"\",\"layout\":\"_:default\",\"cfg_itemid\":\"\",\"cfg_catmode\":\"4\",\"cfg_count\":\"4\",\"cfg_rootcat\":\"1\",\"cfg_showhidden\":\"0\",\"cfg_showthumb\":\"0\",\"cfg_showimglink\":\"default\",\"cfg_showimgcat\":\"0\",\"cfg_showimgcatlink\":\"0\",\"cfg_showcatrate\":\"0\",\"cfg_showcathits\":\"0\",\"cfg_showcatdescr\":\"0\",\"cfg_showcatadditionalfields\":\"0\",\"cfg_showimgdescr\":\"1\",\"cfg_columns\":\"3\",\"cfg_thumbnailimgtype\":\"thumb\",\"cfg_cropimg\":\"0\",\"cfg_cropimgwidth\":\"50\",\"cfg_cropimgheight\":\"50\",\"cfg_thumbnaildim\":\"0\",\"cfg_thumbnaildimvalue\":\"150\",\"cfg_imgposition\":\"1\",\"cfg_horalign\":\"center\",\"cfg_imgshowborder\":\"1\",\"cfg_imgborderwidth\":\"1px\",\"cfg_imgborderstyle\":\"solid\",\"cfg_imgbordercolor\":\"#c3c3c3\",\"cfg_imgpadding\":\"3px\",\"cfg_imgbgcolor\":\"#ffffff\",\"cfg_showshorttext\":\"0\",\"cfg_showhorruler\":\"1\",\"cfg_txtresetliststyle\":\"0\",\"cfg_showvml\":\"0\",\"cfg_vmlalign\":\"right\",\"cfg_vmltext\":\"View more ...\",\"cfg_sldimgsort\":\"rand()\",\"cfg_sldmaximg\":\"0\",\"cfg_sldjgsettings\":\"1\",\"cfg_sldtimer\":\"6000\",\"cfg_sldtransition\":\"0\",\"cfg_sldtranstime\":\"2000\",\"cfg_sldmaxdimauto\":\"0\",\"cfg_sldwidth\":\"640\",\"cfg_sldheight\":\"480\",\"cfg_sldinfopane\":\"0\",\"cfg_sldcarousel\":\"0\",\"cfg_sldarrows\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(101, 85, 'Digi Showcase', '', '', 1, '', 0, '0000-00-00 00:00:00', '2022-11-23 20:14:52', '0000-00-00 00:00:00', 1, 'mod_digi_showcase', 1, 1, '{\"order_password\":\"318_p_1K938p9T\",\"module_version\":\"2.1.1\",\"show-wizard\":\"1\",\"data-source\":\"0\",\"joomla-categories\":[\"8\"],\"custom-csv\":\"\",\"expansion-pack\":\"\",\"show-featured-items\":\"1\",\"show-expired-articles\":\"0\",\"articles-time-correction\":\"+0\",\"order-by\":\"4\",\"order-type\":\"1\",\"include-title-inside\":\"0\",\"module-title-tag\":\"p\",\"intro-text\":\"\",\"mode\":\"0\",\"bootstrap-version\":\"0\",\"rows\":\"6\",\"columns\":\"4\",\"carousel-version\":\"1\",\"carousel-mode\":\"0\",\"carousel-autoanimation\":\"0\",\"carousel-autoanimation-interval\":\"5000\",\"carousel-items-quantity\":\"6\",\"carousel-columns-quantity\":\"3\",\"carousel-scroll-quantity\":\"1\",\"carousel-arrows\":\"1\",\"carousel-dots\":\"0\",\"carousel-loop\":\"1\",\"carousel-center-element\":\"0\",\"timeline-items-quantity\":\"6\",\"timeline-animation\":\"1\",\"timeline-image-inside\":\"0\",\"timeline-primary-color\":\"#ffffff\",\"timeline-secondary-color\":\"#f5f5f5\",\"timeline-border-radius\":\"3\",\"timeline-max-width\":\"1200\",\"timeline-switch-width\":\"768\",\"sphere-items-quantity\":\"18\",\"sphere-width\":\"400\",\"sphere-height\":\"400\",\"sphere-radius\":\"150\",\"masonry-items-quantity\":\"20\",\"masonry-columns\":\"4\",\"masonry-mode\":\"1\",\"masonry-blocks-size\":\"1\",\"masonry-pattern\":\"\",\"masonry-border-radius\":\"5\",\"masonry-tablet-switch\":\"960\",\"masonry-smartphone-switch\":\"640\",\"filter-switch\":\"0\",\"filter-group\":\"0\",\"filter-alignment\":\"1\",\"filter-background-color\":\"#f5f5f5\",\"filter-color\":\"#333333\",\"filter-background-hover-color\":\"#005e8d\",\"filter-hover-color\":\"#ffffff\",\"items-padding\":\"10 10 10 10\",\"module-padding\":\"0 0 0 0\",\"module-css\":\"\",\"items-css\":\"\",\"show-image\":\"1\",\"image-type\":\"3\",\"show-placeholder-image\":\"1\",\"placeholder-image\":\"\",\"generate-thumbnail\":\"1\",\"image-width\":\"100\",\"image-height\":\"100\",\"show-title\":\"1\",\"title-characters\":\"50\",\"title-position\":\"1\",\"title-alignment\":\"1\",\"title-tag\":\"h3\",\"show-description\":\"1\",\"description-characters\":\"100\",\"text-position\":\"1\",\"text-alignment\":\"1\",\"text-tag\":\"p\",\"strip-html-text\":\"1\",\"readmore\":\"0\",\"readmore-text\":\"Read more...\",\"readmore-style\":\"1\",\"readmore-class\":\"\",\"show-category\":\"0\",\"category-position\":\"1\",\"category-alignment\":\"1\",\"category-tag\":\"h4\",\"show-extra-info\":\"0\",\"extra-info-position\":\"1\",\"extra-info-alignment\":\"1\",\"extra-info-tag\":\"p\",\"link-switch\":\"1\",\"link-alias\":\"1\",\"link-category\":\"1\",\"link-item\":\"1\",\"forced-link-item-switch\":\"0\",\"forced-link-item\":\"101\",\"items-background-switch\":\"0\",\"items-background-type\":\"0\",\"items-background-image-type\":\"0\",\"items-background-image\":\"\",\"items-background-custom-color\":\"\",\"items-background-overlay\":\"0\",\"items-background-overlay-color\":\"#000000\",\"items-background-overlay-text-color\":\"#ffffff\",\"items-background-overlay-opacity\":\"0.7\",\"items-background-overlay-content-opacity\":\"0.4\",\"items-background-overlay-transition\":\"0.3\",\"jquery-no-conflict-switch\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_modules_menu`
--

CREATE TABLE `i63fc_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_modules_menu`
--

INSERT INTO `i63fc_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(98, 0),
(99, 0),
(101, 170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_newsfeeds`
--

CREATE TABLE `i63fc_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_overrider`
--

CREATE TABLE `i63fc_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_postinstall_messages`
--

CREATE TABLE `i63fc_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_postinstall_messages`
--

INSERT INTO `i63fc_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1),
(10, 700, 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_TITLE', 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_DESCRIPTION', '', 'com_admin', 1, 'message', '', '', '', '', '3.9.27', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_privacy_consents`
--

CREATE TABLE `i63fc_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_privacy_requests`
--

CREATE TABLE `i63fc_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_redirect_links`
--

CREATE TABLE `i63fc_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_schemas`
--

CREATE TABLE `i63fc_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_schemas`
--

INSERT INTO `i63fc_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.10.0-2021-05-28'),
(10041, '3.6.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_session`
--

CREATE TABLE `i63fc_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_session`
--

INSERT INTO `i63fc_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x63746e6f306e646a37723139726f6e3538686937687268316b73, 1, 0, 1669260938, 'joomla|s:988:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY2OTI2MDkyNDtzOjQ6Imxhc3QiO2k6MTY2OTI2MDkzNztzOjM6Im5vdyI7aToxNjY5MjYwOTM3O31zOjU6InRva2VuIjtzOjMyOiJVRmJzTWFxVGl0YUJHYU1GcEl1ZjF4VUd2Wnh6Y1NFcSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6InVzZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6NjkxO31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NjkxO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 691, 'kotarourinni'),
(0x7439306a63626c7073626e6532763974376b6637696a39307161, 0, 0, 1669263013, 'joomla|s:2116:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0MDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2NjkyNTkyMjM7czo0OiJsYXN0IjtpOjE2NjkyNjIxNzc7czozOiJub3ciO2k6MTY2OTI2MzAxMjt9czo1OiJ0b2tlbiI7czozMjoiNWpmaFd5U1NjTHVkQjZjWDdNREdvcHhJQVI4WTFXM2UiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjcwOiJodHRwOi8vbG9jYWxob3N0L2ZyYXUvaW5kZXgucGhwL2NvbXBvbmVudC91c2Vycy8/dmlldz1sb2dpbiZJdGVtaWQ9MTAxIjt9fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjE2OiJwdWJsaXNoZWRfZnZfc2VzIjtzOjE6IjAiO3M6MTU6Imp1c3RtaW5lX2Z2X3NlcyI7czoxOiIwIjtzOjEwOiJjb21fa3VuZW5hIjtPOjg6InN0ZENsYXNzIjozOntzOjEyOiJ1c2VyNjkxX3JlYWQiO2E6Njp7aToyO2k6MjtpOjU7aTo1O2k6MTtpOjE7aTozO2k6MztpOjY7aTo2O2k6NDtpOjQ7fXM6NToidG9waWMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoibGFzdGhpdCI7aTozO31zOjEwOiJwb3N0ZmllbGRzIjtOO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo2OTE7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czoxMDoiY29tX21haWx0byI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW5rcyI7YToyOntzOjQwOiJjNWUxNTNhNDUwYjhkYWU4MmZjMjE3ZmM2N2E3ODk1MTI2ZTQ2YzUxIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6NzE6Imh0dHA6Ly9sb2NhbGhvc3QvZnJhdS9pbmRleC5waHAvZXZlbnRvcy1mdXR1cm9zL21vbnRoY2FsZW5kYXIvMjAyMi8xMS8tIjtzOjY6ImV4cGlyeSI7aToxNjY5MjYxMDIzO31zOjQwOiIxNzMxZGMxYTJlZWNkYTNhMjhjODc2NjQ1NGRlNTYzZWY0YTAyOTIyIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6NzE6Imh0dHA6Ly9sb2NhbGhvc3QvZnJhdS9pbmRleC5waHAvZXZlbnRvcy1mdXR1cm9zL21vbnRoY2FsZW5kYXIvMjAyMi8xMi8tIjtzOjY6ImV4cGlyeSI7aToxNjY5MjYxMDI4O319fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 691, 'kotarourinni');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_tags`
--

CREATE TABLE `i63fc_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_tags`
--

INSERT INTO `i63fc_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 691, '2022-11-23 17:17:54', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_template_styles`
--

CREATE TABLE `i63fc_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_template_styles`
--

INSERT INTO `i63fc_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', 0, '', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', 0, '', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', 0, '', '{\"templateColor\":\"#b8097e\",\"templateBackgroundColor\":\"#fff2fb\",\"logoFile\":\"images\\/logo-black_1.png\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_ucm_base`
--

CREATE TABLE `i63fc_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_ucm_content`
--

CREATE TABLE `i63fc_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_ucm_history`
--

CREATE TABLE `i63fc_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_ucm_history`
--

INSERT INTO `i63fc_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2022-11-23 17:51:11', 691, 546, '00a407d09d2bf48ef9f0b7b5b8129c927d4b2b60', '{\"id\":\"8\",\"asset_id\":63,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"PAPERS\",\"alias\":\"papers\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":691,\"created_time\":\"2022-11-23 17:51:11\",\"modified_user_id\":null,\"modified_time\":\"2022-11-23 17:51:11\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(2, 9, 5, '', '2022-11-23 17:51:37', 691, 586, 'a8207071be030d53baa36391b23d595564886a88', '{\"id\":\"9\",\"asset_id\":64,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"INFORMACI\\u00d3N ACAD\\u00c9MICA\",\"alias\":\"informacion-academica\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":691,\"created_time\":\"2022-11-23 17:51:37\",\"modified_user_id\":null,\"modified_time\":\"2022-11-23 17:51:37\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(6, 1, 1, '', '2022-11-23 18:24:12', 691, 8936, '724f3b62c5c011117913cb988a57ae5cf726d716', '{\"id\":1,\"asset_id\":74,\"title\":\"UNJU\",\"alias\":\"unju\",\"introtext\":\"<h1><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\" width=\\\"500\\\" \\/><\\/h1>\\r\\n<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:24:12\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:23:05\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(7, 1, 1, '', '2022-11-23 18:24:42', 691, 8986, '4be6f2ea15edbf91fcb20a9b55985a171456fd46', '{\"id\":1,\"asset_id\":74,\"title\":\"UNJU\",\"alias\":\"unju\",\"introtext\":\"<h1><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\" width=\\\"500\\\" \\/><\\/h1>\\r\\n<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:24:42\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:24:12\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(8, 1, 1, '', '2022-11-23 18:24:51', 691, 8828, 'd55e6b21975e3394cdc23f4702fc5f3220a230fd', '{\"id\":1,\"asset_id\":74,\"title\":\"UNJU\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:24:51\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:24:42\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(9, 1, 1, '', '2022-11-23 18:25:41', 691, 8833, 'ff558a5104276fb62b816589452e893529a86de4', '{\"id\":1,\"asset_id\":74,\"title\":\"UNJU\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:25:41\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:24:51\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `i63fc_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 1, 1, '', '2022-11-23 18:25:57', 691, 8842, '3050a2d43484a191f9b4631b340dc591608b2d9c', '{\"id\":1,\"asset_id\":74,\"title\":\"UNJU\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:25:57\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:25:41\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(11, 1, 1, '', '2022-11-23 18:26:27', 691, 8842, '849eb8c29b206e0c5ed90b900e2f29680162be45', '{\"id\":1,\"asset_id\":74,\"title\":\"UNJU\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:26:27\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:25:57\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(12, 1, 1, '', '2022-11-23 18:26:52', 691, 8868, 'e792201aebe26689ad8d65acabd7819cd6cd386c', '{\"id\":1,\"asset_id\":74,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">UNIVERSIDAD NACIONAL DE JUJUY<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:26:52\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:26:27\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(13, 1, 1, '', '2022-11-23 18:27:10', 691, 8845, 'f5725b9a4f5c6f075321f00a9e911a8d7c3067c6', '{\"id\":1,\"asset_id\":74,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">\\u00a0<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td><strong>CONSULTAS:<\\/strong><br \\/>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<br \\/>alumnos@fi.unju.edu.ar<br \\/>tutorias@fi.unju.edu.ar<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:27:10\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:26:52\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":3,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(14, 2, 1, '', '2022-11-23 18:32:39', 691, 3665, 'be3b22a24c9a2e6a750632802a78f63e99c47dd8', '{\"id\":\"2\",\"asset_id\":75,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"alias\":\"universidad-catolica-de-santiago-del-estero\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\r\\n<p>CONSULTAS:<\\/p>\\r\\n<ul>\\r\\n<li>0388 423-6881<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2><strong>Departamento Acad\\u00e9mico San Salvador<\\/strong><\\/h2>\\r\\n<h3><strong>Carreras de pregrado<\\/strong><\\/h3>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n:<a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-en-informatica\\/\\\"> Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACI\\u00d3N Y ROB\\u00d3TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Automatizaci\\u00f3n y Rob\\u00f3tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-universitaria-en-automatizacion-y-robotica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>ANALISTA DE SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista de Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/analista-en-sistemas\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/ingenieria-en-informatica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:32:39\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:32:39\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 18:32:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `i63fc_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(15, 2, 1, '', '2022-11-23 18:34:16', 691, 3826, '63945aeaf98bca439727ba3ee4dce0204d7508f2', '{\"id\":2,\"asset_id\":75,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"alias\":\"universidad-catolica-de-santiago-del-estero\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/800px-LogoUCSE.jpg\\\" width=\\\"100\\\" \\/><\\/td>\\r\\n<td>\\r\\n<p>CONSULTAS:<\\/p>\\r\\n<ul>\\r\\n<li>0388 423-6881<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h2><strong>Departamento Acad\\u00e9mico San Salvador<\\/strong><\\/h2>\\r\\n<h3><strong>Carreras de pregrado<\\/strong><\\/h3>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n:<a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-en-informatica\\/\\\"> Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACI\\u00d3N Y ROB\\u00d3TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Automatizaci\\u00f3n y Rob\\u00f3tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-universitaria-en-automatizacion-y-robotica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>ANALISTA DE SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista de Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/analista-en-sistemas\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/ingenieria-en-informatica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:32:39\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:34:16\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:33:15\",\"publish_up\":\"2022-11-23 18:32:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Cat\\\\u00f3lica de Santiago del Estero\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(16, 2, 1, '', '2022-11-23 18:34:31', 691, 3837, 'af4ea768bd7d09b390a775e2c3b82bbdd3e58a70', '{\"id\":2,\"asset_id\":75,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"alias\":\"universidad-catolica-de-santiago-del-estero\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/800px-LogoUCSE.jpg\\\" width=\\\"100\\\" \\/><\\/td>\\r\\n<td>\\r\\n<p>CONSULTAS:<\\/p>\\r\\n<ul>\\r\\n<li>0388 423-6881<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Departamento Acad\\u00e9mico San Salvador<\\/strong><\\/h2>\\r\\n<h3><strong>Carreras de pregrado<\\/strong><\\/h3>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n:<a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-en-informatica\\/\\\"> Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACI\\u00d3N Y ROB\\u00d3TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Automatizaci\\u00f3n y Rob\\u00f3tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-universitaria-en-automatizacion-y-robotica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>ANALISTA DE SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista de Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/analista-en-sistemas\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/ingenieria-en-informatica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:32:39\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:34:31\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:34:16\",\"publish_up\":\"2022-11-23 18:32:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Cat\\\\u00f3lica de Santiago del Estero\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(17, 2, 1, '', '2022-11-23 18:34:52', 691, 3838, 'aa7793a2674bf4a2f76160c9d1bb685113d55480', '{\"id\":2,\"asset_id\":75,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"alias\":\"universidad-catolica-de-santiago-del-estero\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/800px-LogoUCSE.jpg\\\" width=\\\"100\\\" \\/><\\/td>\\r\\n<td>\\r\\n<p>CONSULTAS:<\\/p>\\r\\n<ul>\\r\\n<li>0388 423-6881<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Departamento Acad\\u00e9mico San Salvador<\\/strong><\\/h2>\\r\\n<h3><strong>Carreras de pregrado<\\/strong><\\/h3>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n:<a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-en-informatica\\/\\\"> Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACI\\u00d3N Y ROB\\u00d3TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Automatizaci\\u00f3n y Rob\\u00f3tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-universitaria-en-automatizacion-y-robotica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>ANALISTA DE SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista de Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/analista-en-sistemas\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/ingenieria-en-informatica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:32:39\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:34:52\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:34:40\",\"publish_up\":\"2022-11-23 18:32:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Cat\\\\u00f3lica de Santiago del Estero\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(18, 2, 1, '', '2022-11-23 18:35:48', 691, 3838, 'f0af2d358e449d87210ec1e2ca28c89ad20038dc', '{\"id\":2,\"asset_id\":75,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"alias\":\"universidad-catolica-de-santiago-del-estero\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/800px-LogoUCSE.jpg\\\" width=\\\"100\\\" \\/><\\/td>\\r\\n<td>\\r\\n<p>CONSULTAS:<\\/p>\\r\\n<ul>\\r\\n<li>0388 423-6881<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Departamento Acad\\u00e9mico San Salvador<\\/strong><\\/h2>\\r\\n<h3><strong>Carreras de pregrado<\\/strong><\\/h3>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n:<a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-en-informatica\\/\\\"> Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACI\\u00d3N Y ROB\\u00d3TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Automatizaci\\u00f3n y Rob\\u00f3tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-universitaria-en-automatizacion-y-robotica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>ANALISTA DE SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista de Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/analista-en-sistemas\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/ingenieria-en-informatica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:32:39\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:35:48\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:35:42\",\"publish_up\":\"2022-11-23 18:32:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Cat\\\\u00f3lica de Santiago del Estero\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(19, 1, 1, '', '2022-11-23 18:36:37', 691, 8963, 'fc696eb4c6a6fa1235a2a9923f519ded3ce3492c', '{\"id\":1,\"asset_id\":74,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"alias\":\"unju\",\"introtext\":\"<h1 style=\\\"text-align: center;\\\">\\u00a0<\\/h1>\\r\\n<table style=\\\"border-color: #ffffff; width: 467px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 111px;\\\"><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/td>\\r\\n<td style=\\\"width: 340px;\\\"><strong>\\u00a0CONSULTAS:<\\/strong><br \\/>\\r\\n<ul>\\r\\n<li>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<\\/li>\\r\\n<li>alumnos@fi.unju.edu.ar<\\/li>\\r\\n<li>tutorias@fi.unju.edu.ar<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:36:37\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:36:18\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":8,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(20, 1, 1, '', '2022-11-23 18:37:24', 691, 9116, '5ffd6e2ec5b04abfd6efc98e3ac852e953d3310e', '{\"id\":1,\"asset_id\":74,\"title\":\"UNIVERSIDAD NACIONAL DE JUJUY\",\"alias\":\"unju\",\"introtext\":\"<table style=\\\"color: #333333; font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 12.16px; border-color: #ffffff; width: 573px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 111px;\\\">\\r\\n<p><img src=\\\"images\\/logo-fi-unju-folleteria-vertical-1071x696.png\\\" width=\\\"100\\\" \\/>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"width: 446px;\\\">\\r\\n<p><strong>\\u00a0CONSULTAS:<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p>fi.unju.edu.ar\\/ingreso-facultad-ingenieria.html<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p><a href=\\\"mailto:alumnos@fi.unju.edu.ar\\\">alumnos@fi.unju.edu.ar<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>tutorias@fi.unju.edu.ar<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Sede \\\"San Salvador de Jujuy\\\"<\\/strong><\\/h2>\\r\\n<p>San Salvador de Jujuy - Av. Italia esq. Martiarena | 0388-4221576<\\/p>\\r\\n<h3>Carreras de pregrado<\\/h3>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico\\/a Universitario\\/a en Ciencias de la Tierra<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN PROCESAMIENTO DE MINERALES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: \\u00a0T\\u00e9cnico Universitario en Procesamiento de Minerales<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>T\\u00c9CNICO UNIVERSITARIO EN EXPLOTACI\\u00d3N DE MINAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Explotaci\\u00f3n de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN PERFORACIONES<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Perforaciones<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN CIENCIAS DE LA TIERRA ORIENTADA A PETR\\u00d3LEO\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/strong>\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Cs. de la Tierra Orientada a Petr\\u00f3leo<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN DISE\\u00d1O INTEGRAL DE VIDEOJUEGOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Dise\\u00f1o Integral de Videojuegos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA QU\\u00cdMICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Qu\\u00edmico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA DE MINAS\\u00a0<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a de Minas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INDUSTRIAL\\u00a0<\\/strong>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Industrial<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>INGENIER\\u00cdA INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a Inform\\u00e1tico\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN TECNOLOG\\u00cdA DE LOS ALIMENTOS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Licenciado\\/a en Tecnolog\\u00eda de los Alimentos<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>LICENCIATURA EN CIENCIAS GEOL\\u00d3GICAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>Titulo: Licenciado\\/a en Ciencias Geol\\u00f3gicas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"San Pedro\\\"<\\/strong><\\/h2>\\r\\n<p>San Pedro de Jujuy - Jos\\u00e9 Ignacio Gorriti N\\u00ba 462<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Quebrada y Puna\\\"<\\/strong><\\/h2>\\r\\n<p>La Quiaca - Av. Cabildo S\\/N<\\/p>\\r\\n<p><strong>ANALISTA PROGRAMADOR UNIVERSITARIO<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista Programador\\/a Universitario\\/a<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h2><strong>Sede \\\"Libertador Gral. San Mart\\u00edn\\\"<\\/strong><\\/h2>\\r\\n<p>Libertador General San Mart\\u00edn - Escuela T\\u00e9cnica \\u201cIng. Herminio Arrieta\\u201d. Mariano Moreno N\\u00ba 1368<\\/p>\\r\\n<p><em>Cursado de Primer A\\u00f1o de las carreras de Ingenier\\u00eda de Minas, Qu\\u00edmica, Inform\\u00e1tica e Industrial<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:20:49\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:37:24\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:36:37\",\"publish_up\":\"2022-11-23 18:20:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Nacional de Jujuy\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/404809497ce3dfa0d277f690f59d4d40d9b7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":9,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(21, 2, 1, '', '2022-11-23 18:38:17', 691, 4022, '34820afd6b7902d7770c0556a7982cb43036341a', '{\"id\":2,\"asset_id\":75,\"title\":\"UNIVERSIDAD CAT\\u00d3LICA DE SANTIAGO DEL ESTERO\",\"alias\":\"universidad-catolica-de-santiago-del-estero\",\"introtext\":\"<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<img src=\\\"images\\/800px-LogoUCSE.jpg\\\" width=\\\"100\\\" \\/><\\/td>\\r\\n<td>\\r\\n<p><span style=\\\"font-family: tahoma, arial, helvetica, sans-serif; font-size: 10pt;\\\">CONSULTAS:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li><span style=\\\"font-family: tahoma, arial, helvetica, sans-serif; font-size: 10pt;\\\">0388 423-6881<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n\",\"fulltext\":\"<hr \\/>\\r\\n<h2><strong>Departamento Acad\\u00e9mico San Salvador<\\/strong><\\/h2>\\r\\n<h3><strong>Carreras de pregrado<\\/strong><\\/h3>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n:<a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-en-informatica\\/\\\"> Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>TECNICATURA UNIVERSITARIA EN AUTOMATIZACI\\u00d3N Y ROB\\u00d3TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: T\\u00e9cnico\\/a Universitario\\/a en Automatizaci\\u00f3n y Rob\\u00f3tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 3 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/tecnicatura-universitaria-en-automatizacion-y-robotica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>ANALISTA DE SISTEMAS<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Analista de Sistemas<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Pregrado<\\/li>\\r\\n<li>Duraci\\u00f3n: 4 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/analista-en-sistemas\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<hr \\/>\\r\\n<h3>Carreras de grado<\\/h3>\\r\\n<p><strong>INGENIER\\u00cdA EN INFORM\\u00c1TICA<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>T\\u00edtulo: Ingeniero\\/a en Inform\\u00e1tica<\\/li>\\r\\n<li>Nivel Acad\\u00e9mico: Carrera de Grado<\\/li>\\r\\n<li>Duraci\\u00f3n: 5 a\\u00f1os<\\/li>\\r\\n<li>Mas informaci\\u00f3n: <a href=\\\"http:\\/\\/www.ucse.edu.ar\\/ingenieria-en-informatica\\/\\\">Aqu\\u00ed<\\/a><\\/li>\\r\\n<\\/ul>\",\"state\":1,\"catid\":\"9\",\"created\":\"2022-11-23 18:32:39\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:38:17\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:37:46\",\"publish_up\":\"2022-11-23 18:32:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Universidad Cat\\\\u00f3lica de Santiago del Estero\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/38727_0xh.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"1\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":3,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(22, 3, 1, '', '2022-11-23 18:41:23', 691, 2929, '1aeeebd0230ff7906e7f4d8ebbfd3c23be22a454', '{\"id\":\"3\",\"asset_id\":76,\"title\":\"INICIO\",\"alias\":\"inicio\",\"introtext\":\"<h1>\\u00a0<\\/h1>\\r\\n<h1>\\u00bfQu\\u00e9 es FRAU?<\\/h1>\\r\\n<p style=\\\"text-align: justify;\\\">Frau es una Red Colaborativa dirigida al p\\u00fablico femenino perteneciente a la provincia de Jujuy que busca brindar un espacio para que las mujeres cient\\u00edficas puedan comunicar, compartir y visibilizar sus experiencias, conocimientos e investigaciones y as\\u00ed crear un entorno de cooperaci\\u00f3n y respeto que fomente y proyecte la participaci\\u00f3n de las mujeres dentro del \\u00e1mbito cient\\u00edfico.<\\/p>\\r\\n<h1>Visi\\u00f3n<\\/h1>\\r\\n<ul>\\r\\n<li style=\\\"text-align: justify;\\\">Disminuir la brecha de g\\u00e9nero en las carreras cient\\u00edficas al fomentar la participaci\\u00f3n de las mujeres en carreras de ciencia y tecnolog\\u00eda.<\\/li>\\r\\n<li style=\\\"text-align: justify;\\\">Lograr un espacio donde los logros e investigaciones de las cient\\u00edficas sean visibilizados, d\\u00e1ndoles as\\u00ed el cr\\u00e9dito correspondiente por sus contribuciones.<\\/li>\\r\\n<li style=\\\"text-align: justify;\\\">Incentivar a que las j\\u00f3venes despierten su curiosidad por la ciencia para que en un futuro opten por encaminarse a una carrera relacionada con las STEM.<\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:41:23\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:41:23\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 18:41:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `i63fc_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(23, 3, 1, '', '2022-11-23 18:44:15', 691, 3249, '80d91ab1dcaff6a98e4b78289af89008e5c6dce4', '{\"id\":3,\"asset_id\":76,\"title\":\"FRAU: MUJERES EN CIENCIA Y TECNOLOG\\u00cdA\",\"alias\":\"inicio\",\"introtext\":\"<h1>\\u00a0<img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/pexels-mikhail-nilov-9241716.jpg\\\" alt=\\\"\\\" \\/><\\/h1>\\r\\n<h1>\\u00bfQu\\u00e9 es FRAU?<\\/h1>\\r\\n<p style=\\\"text-align: justify;\\\">Frau es una Red Colaborativa dirigida al p\\u00fablico femenino perteneciente a la provincia de Jujuy que busca brindar un espacio para que las mujeres cient\\u00edficas puedan comunicar, compartir y visibilizar sus experiencias, conocimientos e investigaciones y as\\u00ed crear un entorno de cooperaci\\u00f3n y respeto que fomente y proyecte la participaci\\u00f3n de las mujeres dentro del \\u00e1mbito cient\\u00edfico.<\\/p>\\r\\n<h1><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/pexels-cowomen-2041398.jpg\\\" width=\\\"640\\\" \\/><\\/h1>\\r\\n<h1>Visi\\u00f3n<\\/h1>\\r\\n<ul>\\r\\n<li style=\\\"text-align: justify;\\\">Disminuir la brecha de g\\u00e9nero en las carreras cient\\u00edficas al fomentar la participaci\\u00f3n de las mujeres en carreras de ciencia y tecnolog\\u00eda.<\\/li>\\r\\n<li style=\\\"text-align: justify;\\\">Lograr un espacio donde los logros e investigaciones de las cient\\u00edficas sean visibilizados, d\\u00e1ndoles as\\u00ed el cr\\u00e9dito correspondiente por sus contribuciones.<\\/li>\\r\\n<li style=\\\"text-align: justify;\\\">Incentivar a que las j\\u00f3venes despierten su curiosidad por la ciencia para que en un futuro opten por encaminarse a una carrera relacionada con las STEM.<\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:41:23\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:44:15\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:42:46\",\"publish_up\":\"2022-11-23 18:41:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(24, 4, 1, '', '2022-11-23 18:46:44', 691, 2637, '1a4fe02dcd945b5fccb4afbd00d15afc4cb1daf0', '{\"id\":\"4\",\"asset_id\":77,\"title\":\"LA MUJER Y EL \\u00c1MBITO ACAD\\u00c9MICO\",\"alias\":\"la-mujer-y-el-ambito-academico\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">En los \\u00faltimos 10 a\\u00f1os, las carreras relacionadas con la STEM fueron tomando gran importancia gracias al crecimiento exponencial de la tecnolog\\u00eda. Aunque esto resulta una noticia alentadora, si hilamos fino podemos visibilizar que la cantidad de mujeres que forman parte de este \\u00e1mbito no supera el 30% de inscriptas y el 40% si hablamos de egresadas. A este fen\\u00f3meno lo podemos relacionar con varios aspectos relacionados con el machismo, que categoriza a la mujer dentro de tareas dom\\u00e9sticas o relacionadas con la crianza. La existencia de este pensamiento dio lugar al famoso \\u201cefecto Matilda\\u201d, el cual consiste en el prejuicio que se produce en contra de los logros de las mujeres cient\\u00edficas cuyas aportaciones suelen atribuirse a los hombres.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:46:44\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:46:44\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 18:46:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(25, 5, 1, '', '2022-11-23 18:47:37', 691, 2663, 'a4f98c8d20db1c69af0ea9377850788741c3327a', '{\"id\":\"5\",\"asset_id\":78,\"title\":\"ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY\",\"alias\":\"estadisticas-academicas-en-la-provincia-de-jujuy\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">En los \\u00faltimos 10 a\\u00f1os, las carreras relacionadas con la STEM fueron tomando gran importancia gracias al crecimiento exponencial de la tecnolog\\u00eda. Aunque esto resulta una noticia alentadora, si hilamos fino podemos visibilizar que la cantidad de mujeres que forman parte de este \\u00e1mbito no supera el 30% de inscriptas y el 40% si hablamos de egresadas. A este fen\\u00f3meno lo podemos relacionar con varios aspectos relacionados con el machismo, que categoriza a la mujer dentro de tareas dom\\u00e9sticas o relacionadas con la crianza. La existencia de este pensamiento dio lugar al famoso \\u201cefecto Matilda\\u201d, el cual consiste en el prejuicio que se produce en contra de los logros de las mujeres cient\\u00edficas cuyas aportaciones suelen atribuirse a los hombres.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:47:37\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 18:47:37\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 18:47:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(26, 5, 1, '', '2022-11-23 19:06:10', 691, 7354, '44bd0410b2e9a286a18005d7d014a34bcda169ed', '{\"id\":5,\"asset_id\":78,\"title\":\"ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY\",\"alias\":\"estadisticas-academicas-en-la-provincia-de-jujuy\",\"introtext\":\"<h1><span style=\\\"font-weight: 400;\\\">Naturaleza de los datos<\\/span><\\/h1>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Para realizar este estudio, se recolect\\u00f3 informaci\\u00f3n proveniente de los Anuarios Estad\\u00edsticos e Informes especiales realizados por la Secretar\\u00eda de Pol\\u00edticas Universitarias. Adicionalmente se cont\\u00f3 con la colaboraci\\u00f3n del Departamento de Informaci\\u00f3n Universitaria.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Se consideraron las carreras de pregrado y grado provenientes de la Facultad de Ingenier\\u00eda de la Universidad Nacional de Jujuy y del \\u00c1rea de Matem\\u00e1tica Aplicada en la Universidad Cat\\u00f3lica de Santiago del Estero. Para realizar un an\\u00e1lisis de los datos recolectados, se realiz\\u00f3 una distinci\\u00f3n entre estas universidades, separando los datos en instituciones p\\u00fablicas y privadas, esto debido a que la manipulaci\\u00f3n de la informaci\\u00f3n con este formato facilita la realizaci\\u00f3n de m\\u00e1s an\\u00e1lisis entre ambos \\u00e1mbitos. El estudio se realizar\\u00e1 dentro del periodo 2010 - 2017.<\\/span><\\/p>\\r\\n<h2 style=\\\"text-align: justify;\\\">La participaci\\u00f3n de la mujer en el \\u00e1mbito acad\\u00e9mico.<\\/h2>\\r\\n<p style=\\\"text-align: justify;\\\">En los \\u00faltimos 10 a\\u00f1os, las carreras relacionadas con la STEM fueron tomando gran importancia gracias al crecimiento exponencial de la tecnolog\\u00eda. Aunque esto resulta una noticia alentadora, si hilamos fino podemos visibilizar que la cantidad de mujeres que forman parte de este \\u00e1mbito no supera el 30% de inscriptas y el 40% si hablamos de egresadas.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">A este fen\\u00f3meno lo podemos relacionar con varios aspectos relacionados con el machismo, que categoriza a la mujer dentro de tareas dom\\u00e9sticas o relacionadas con la crianza. La existencia de este pensamiento dio lugar al famoso \\u201cefecto Matilda\\u201d, el cual consiste en el prejuicio que se produce en contra de los logros de las mujeres cient\\u00edficas cuyas aportaciones suelen atribuirse a los hombres.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">En el caso de la Facultad de Ingenier\\u00eda (Tabla 1), se puede observar que del total de estudiantes, las mujeres no representan m\\u00e1s del 30%, pero podemos ver que la cantidad\\u00a0de estas ha ido aumentando conforme pasaron los a\\u00f1os.\\u00a0<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla1.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/tabla3111.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">En cuanto a las egresadas, los a\\u00f1os 2013, 2014, 2015 y 2016 fueron los que mayor porcentaje de egresadas tuvieron: superando el 30% y alcanzando un 45% en comparaci\\u00f3n con los varones. El a\\u00f1o 2012 fue el a\\u00f1o con la menor cantidad de egresadas: solo dos mujeres se graduaron este a\\u00f1o.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Grafica_1.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">La siguiente tabla muestra la distribuci\\u00f3n de las egresadas seg\\u00fan carreras dentro de la Facultad de Ingenier\\u00eda. Entre las tres carreras con mayor cantidad de egresadas se encuentran: Analista Programador Universitario (70), Ingenier\\u00eda en Inform\\u00e1tica (22) y Licenciatura en Sistemas\\u00a0 Dentro del periodo 2010-2017, hubo un total de 146 egresadas, conformando el 33,87% del total de egresados dentro del periodo antes mencionado.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla3.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Dentro del \\u00e1mbito privado (Tabla 2), podemos observar que la participaci\\u00f3n femenina es a\\u00fan menor, sin lograr superar el 18,18% en el a\\u00f1o 2017. Si tomamos como gu\\u00eda el Gr\\u00e1fico 17, podemos distinguir que a diferencia del \\u00e1mbito p\\u00fablico, la cantidad de mujeres fue disminuyendo con el paso de los a\\u00f1os: con un total de 39 estudiantes femeninas en el a\\u00f1o 2010 y 22 estudiantes en el a\\u00f1o 2017.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla2.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/tabla4111.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>Al hablar de las egresadas , las cifras son a\\u00fan m\\u00e1s desalentadoras: en los a\\u00f1os 2013 y 2014 no hubo ninguna egresada. En el a\\u00f1o 2017 solo hubo una egresada de un total de 12 graduados. La cifra no supera el 20% aproximadamente.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Grafica_2.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">La siguiente tabla muestra la distribuci\\u00f3n de las egresadas seg\\u00fan carreras dentro de la UCSE - DASS. La carrera con mayor cantidad de egresadas fue la de Ingenier\\u00eda en Computaci\\u00f3n, que fue reemplazada posteriormente por la carrera de Ingenier\\u00eda en Inform\\u00e1tica. Se puede observar que a lo largo del periodo 2010 - 2017, tan solo hubo 15 egresadas, lo cual conforma tan solo un 12,40% del total de egresados dentro del periodo antes mencionado.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla4.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:47:37\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 19:06:10\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 18:51:56\",\"publish_up\":\"2022-11-23 18:47:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(27, 5, 1, '', '2022-11-23 19:06:48', 691, 7354, '9118aa7ad69061891790a14486c027c8d10201dc', '{\"id\":5,\"asset_id\":78,\"title\":\"ESTADISTICAS ACADEMICAS EN LA PROVINCIA DE JUJUY\",\"alias\":\"estadisticas-academicas-en-la-provincia-de-jujuy\",\"introtext\":\"<h1><span style=\\\"font-weight: 400;\\\">Naturaleza de los datos<\\/span><\\/h1>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Para realizar este estudio, se recolect\\u00f3 informaci\\u00f3n proveniente de los Anuarios Estad\\u00edsticos e Informes especiales realizados por la Secretar\\u00eda de Pol\\u00edticas Universitarias. Adicionalmente se cont\\u00f3 con la colaboraci\\u00f3n del Departamento de Informaci\\u00f3n Universitaria.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Se consideraron las carreras de pregrado y grado provenientes de la Facultad de Ingenier\\u00eda de la Universidad Nacional de Jujuy y del \\u00c1rea de Matem\\u00e1tica Aplicada en la Universidad Cat\\u00f3lica de Santiago del Estero. Para realizar un an\\u00e1lisis de los datos recolectados, se realiz\\u00f3 una distinci\\u00f3n entre estas universidades, separando los datos en instituciones p\\u00fablicas y privadas, esto debido a que la manipulaci\\u00f3n de la informaci\\u00f3n con este formato facilita la realizaci\\u00f3n de m\\u00e1s an\\u00e1lisis entre ambos \\u00e1mbitos. El estudio se realizar\\u00e1 dentro del periodo 2010 - 2017.<\\/span><\\/p>\\r\\n<h3 style=\\\"text-align: justify;\\\">La participaci\\u00f3n de la mujer en el \\u00e1mbito acad\\u00e9mico.<\\/h3>\\r\\n<p style=\\\"text-align: justify;\\\">En los \\u00faltimos 10 a\\u00f1os, las carreras relacionadas con la STEM fueron tomando gran importancia gracias al crecimiento exponencial de la tecnolog\\u00eda. Aunque esto resulta una noticia alentadora, si hilamos fino podemos visibilizar que la cantidad de mujeres que forman parte de este \\u00e1mbito no supera el 30% de inscriptas y el 40% si hablamos de egresadas.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">A este fen\\u00f3meno lo podemos relacionar con varios aspectos relacionados con el machismo, que categoriza a la mujer dentro de tareas dom\\u00e9sticas o relacionadas con la crianza. La existencia de este pensamiento dio lugar al famoso \\u201cefecto Matilda\\u201d, el cual consiste en el prejuicio que se produce en contra de los logros de las mujeres cient\\u00edficas cuyas aportaciones suelen atribuirse a los hombres.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">En el caso de la Facultad de Ingenier\\u00eda (Tabla 1), se puede observar que del total de estudiantes, las mujeres no representan m\\u00e1s del 30%, pero podemos ver que la cantidad\\u00a0de estas ha ido aumentando conforme pasaron los a\\u00f1os.\\u00a0<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla1.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/tabla3111.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">En cuanto a las egresadas, los a\\u00f1os 2013, 2014, 2015 y 2016 fueron los que mayor porcentaje de egresadas tuvieron: superando el 30% y alcanzando un 45% en comparaci\\u00f3n con los varones. El a\\u00f1o 2012 fue el a\\u00f1o con la menor cantidad de egresadas: solo dos mujeres se graduaron este a\\u00f1o.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Grafica_1.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">La siguiente tabla muestra la distribuci\\u00f3n de las egresadas seg\\u00fan carreras dentro de la Facultad de Ingenier\\u00eda. Entre las tres carreras con mayor cantidad de egresadas se encuentran: Analista Programador Universitario (70), Ingenier\\u00eda en Inform\\u00e1tica (22) y Licenciatura en Sistemas\\u00a0 Dentro del periodo 2010-2017, hubo un total de 146 egresadas, conformando el 33,87% del total de egresados dentro del periodo antes mencionado.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla3.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Dentro del \\u00e1mbito privado (Tabla 2), podemos observar que la participaci\\u00f3n femenina es a\\u00fan menor, sin lograr superar el 18,18% en el a\\u00f1o 2017. Si tomamos como gu\\u00eda el Gr\\u00e1fico 17, podemos distinguir que a diferencia del \\u00e1mbito p\\u00fablico, la cantidad de mujeres fue disminuyendo con el paso de los a\\u00f1os: con un total de 39 estudiantes femeninas en el a\\u00f1o 2010 y 22 estudiantes en el a\\u00f1o 2017.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla2.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/tabla4111.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>Al hablar de las egresadas , las cifras son a\\u00fan m\\u00e1s desalentadoras: en los a\\u00f1os 2013 y 2014 no hubo ninguna egresada. En el a\\u00f1o 2017 solo hubo una egresada de un total de 12 graduados. La cifra no supera el 20% aproximadamente.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Grafica_2.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">La siguiente tabla muestra la distribuci\\u00f3n de las egresadas seg\\u00fan carreras dentro de la UCSE - DASS. La carrera con mayor cantidad de egresadas fue la de Ingenier\\u00eda en Computaci\\u00f3n, que fue reemplazada posteriormente por la carrera de Ingenier\\u00eda en Inform\\u00e1tica. Se puede observar que a lo largo del periodo 2010 - 2017, tan solo hubo 15 egresadas, lo cual conforma tan solo un 12,40% del total de egresados dentro del periodo antes mencionado.<\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/Tabla4.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 18:47:37\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 19:06:48\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 19:06:40\",\"publish_up\":\"2022-11-23 18:47:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":2,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(28, 6, 1, '', '2022-11-23 20:02:30', 691, 1796, '2773eb0d6b2750bd3522723dbcd26e1e4b547a68', '{\"id\":\"6\",\"asset_id\":84,\"title\":\"GALERIA DE PAPERS\",\"alias\":\"galeria-de-papers\",\"introtext\":\"<p>{loadmoduleid 100}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 20:02:30\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:02:30\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 20:02:30\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(29, 6, 1, '', '2022-11-23 20:21:51', 691, 1779, '112da2784342989f9373dcd52d5f5caf91f9d1cf', '{\"id\":6,\"asset_id\":84,\"title\":\"GALERIA DE PAPERS\",\"alias\":\"galeria-de-papers\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-11-23 20:02:30\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:21:51\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:21:36\",\"publish_up\":\"2022-11-23 20:02:30\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":2,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(30, 7, 1, '', '2022-11-23 20:31:31', 691, 1850, 'f39bb3ef824941f147205517439628f90bceceef', '{\"id\":\"7\",\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>Esta es una prueba<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:31:31\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(31, 7, 1, '', '2022-11-23 20:40:36', 691, 1912, 'e5b15775507ed1bd7756f392b05d5ffd40a211c3', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>Esta es una prueba<\\/p>\\r\\n<p>{google_docs}STR_MARTE.pdf{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:40:36\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:39:48\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(32, 7, 1, '', '2022-11-23 20:45:56', 691, 1930, '2d5985cbe793623839ab95fefa650e26b3fbcd3d', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n<p>Esta es una prueba<\\/p>\\r\\n<p>{google_docs}STR_MARTE.pdf{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:45:56\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:44:28\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(33, 7, 1, '', '2022-11-23 20:48:37', 691, 2049, '0c4ee6c7dd0e45a128d9a1360d6478136e263a3f', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdf{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:48:37\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:47:53\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(34, 7, 1, '', '2022-11-23 20:49:36', 691, 2071, '98ed2c2094a4a077844fb43f0a8beaeecf036887', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdfl|width:800|height:400{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:49:36\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:48:37\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(35, 7, 1, '', '2022-11-23 20:49:59', 691, 2070, '7248fe345888bc44acd2913a0dcb1b744a9926c4', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdf|width:800|height:400{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:49:59\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:49:36\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":3,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `i63fc_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(36, 7, 1, '', '2022-11-23 20:51:34', 691, 2694, '682e3ae7ce20aa583058a20b955ef01cf68d3baa', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\">El presente trabajo expone conceptos elementales del perfil UML MARTE para el modelado y an\\u00e1lisis de sistemas de tiempo real y embebidos, de su estructura y, fundamentalmente del paquete de an\\u00e1lisis de modelos. Se describe un caso de estudio: sistema de garaje inteligente, y se presentan distintos diagramas UML con notaciones MARTE que los proveen con informaci\\u00f3n cuantitativa para un posterior an\\u00e1lisis de rendimiento del sistema.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Autores:\\u00a0Patricio O. Condor\\u00ed, Pablo A. Vilte &amp; <strong>Mar\\u00eda del P. Galvez<\\/strong><\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdf|width:800|height:400{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:51:34\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:49:59\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":4,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(37, 7, 1, '', '2022-11-23 20:51:50', 691, 2695, 'a1f69f336fb1b8341d0c25a4e54bc3350a49d152', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\">El presente trabajo expone conceptos elementales del perfil UML MARTE para el modelado y an\\u00e1lisis de sistemas de tiempo real y embebidos, de su estructura y, fundamentalmente del paquete de an\\u00e1lisis de modelos. Se describe un caso de estudio: sistema de garaje inteligente, y se presentan distintos diagramas UML con notaciones MARTE que los proveen con informaci\\u00f3n cuantitativa para un posterior an\\u00e1lisis de rendimiento del sistema.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Autores:\\u00a0Patricio O. Condor\\u00ed, Pablo A. Vilte &amp; <strong>Mar\\u00eda del P. Galvez<\\/strong><\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdf|width:800|height:1000{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:51:50\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:51:34\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":4,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(38, 7, 1, '', '2022-11-23 20:52:07', 691, 2695, '99dc55434dad0c8bccc78aa01218ae5c4b9e192f', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\">El presente trabajo expone conceptos elementales del perfil UML MARTE para el modelado y an\\u00e1lisis de sistemas de tiempo real y embebidos, de su estructura y, fundamentalmente del paquete de an\\u00e1lisis de modelos. Se describe un caso de estudio: sistema de garaje inteligente, y se presentan distintos diagramas UML con notaciones MARTE que los proveen con informaci\\u00f3n cuantitativa para un posterior an\\u00e1lisis de rendimiento del sistema.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Autores:\\u00a0Patricio O. Condor\\u00ed, Pablo A. Vilte &amp; <strong>Mar\\u00eda del P. Galvez<\\/strong><\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdf|width:800|height:600{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:52:07\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:51:50\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":5,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(39, 7, 1, '', '2022-11-23 20:53:30', 691, 2751, 'd7e02c89ebeb66104cd9bbfa20da9d1b51e9f2a3', '{\"id\":7,\"asset_id\":86,\"title\":\"Modelado de Sistemas de Tiempo Real\",\"alias\":\"modelado-de-sistemas-de-tiempo-real\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\">El presente trabajo expone conceptos elementales del perfil UML MARTE para el modelado y an\\u00e1lisis de sistemas de tiempo real y embebidos, de su estructura y, fundamentalmente del paquete de an\\u00e1lisis de modelos. Se describe un caso de estudio: sistema de garaje inteligente, y se presentan distintos diagramas UML con notaciones MARTE que los proveen con informaci\\u00f3n cuantitativa para un posterior an\\u00e1lisis de rendimiento del sistema.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Autores:\\u00a0Patricio O. Condor\\u00ed, Pablo A. Vilte &amp; <strong>Mar\\u00eda del P. Galvez<\\/strong><\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/50-condori.pdf|width:800|height:600{\\/google_docs}<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 20:31:31\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 20:53:30\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 20:52:07\",\"publish_up\":\"2022-11-23 20:31:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/45_sistema.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Modelado de STR con perfil MARTE\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":7,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(40, 8, 1, '', '2022-11-23 21:10:36', 691, 3079, '587da31213538d3e3f532bce371394787009388e', '{\"id\":\"8\",\"asset_id\":87,\"title\":\"Desgaste y fallas en aceros de colada de Pb \",\"alias\":\"desgaste-y-fallas-en-aceros-de-colada-de-pb\",\"introtext\":\"\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\"><strong>RESUMEN:<\\/strong> En procesos de alta temperatura de aleaciones Pb-Ag, se utilizan embudos de colada de aceros aleados. La integridad de estos componentes depende de la relaci\\u00f3n microestructura-propiedades del acero. En el presente trabajo se estudia el desgaste y fallas de tipo fisuras que se generan en aceros austen\\u00edticos y ferr\\u00edticos (con diferentes propiedades f\\u00edsicas, qu\\u00edmicas y microestructurales), en contacto con metal l\\u00edquido (ML) constituido por Pb-Bi-Sb-Cu-Ag. Se tiene en cuenta la acci\\u00f3n del calor y la fragilizaci\\u00f3n por metal l\\u00edquido. Se plantea mediante un modelo, el mecanismo de generaci\\u00f3n y propagaci\\u00f3n de fisuras. En base a la investigaci\\u00f3n desarrollada, se establecen las caracter\\u00edsticas del acero que permitir\\u00eda lograr mayor durabilidad en servicio.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:\\u00a0<\\/strong>Edmundo Tolab\\u00edn, <strong>Teresa Antequera, Edith A. Gareca<\\/strong>, Leonardo Maclis<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/15-tolabin.pdf|width:800|height:600{\\/google_docs}<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:10:36\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:10:36\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 21:10:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(41, 8, 1, '', '2022-11-23 21:11:42', 691, 3110, '45885683cfae0eb3094e91f5ac1726913bb29d4e', '{\"id\":8,\"asset_id\":87,\"title\":\"Desgaste y fallas en aceros de colada de Pb \",\"alias\":\"desgaste-y-fallas-en-aceros-de-colada-de-pb\",\"introtext\":\"\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\"><strong>RESUMEN:<\\/strong> En procesos de alta temperatura de aleaciones Pb-Ag, se utilizan embudos de colada de aceros aleados. La integridad de estos componentes depende de la relaci\\u00f3n microestructura-propiedades del acero. En el presente trabajo se estudia el desgaste y fallas de tipo fisuras que se generan en aceros austen\\u00edticos y ferr\\u00edticos (con diferentes propiedades f\\u00edsicas, qu\\u00edmicas y microestructurales), en contacto con metal l\\u00edquido (ML) constituido por Pb-Bi-Sb-Cu-Ag. Se tiene en cuenta la acci\\u00f3n del calor y la fragilizaci\\u00f3n por metal l\\u00edquido. Se plantea mediante un modelo, el mecanismo de generaci\\u00f3n y propagaci\\u00f3n de fisuras. En base a la investigaci\\u00f3n desarrollada, se establecen las caracter\\u00edsticas del acero que permitir\\u00eda lograr mayor durabilidad en servicio.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:\\u00a0<\\/strong>Edmundo Tolab\\u00edn, <strong>Teresa Antequera, Edith A. Gareca<\\/strong>, Leonardo Maclis<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/15-tolabin.pdf|width:800|height:600{\\/google_docs}<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:10:36\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:11:42\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 21:10:49\",\"publish_up\":\"2022-11-23 21:10:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/fatiga_1.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(42, 9, 1, '', '2022-11-23 21:17:50', 691, 866, 'b524ef44bd2cfc2fc2250761f94dc850c4ab0fa1', '{\"id\":\"9\",\"asset_id\":88,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"alias\":\"caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/drive.google.com\\/file\\/d\\/1r8R5GseotwVBK5HreajbBnSkEYhMV9X8\\/view?usp=sharing|width:800|height:600{\\/google_docs}<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2022-11-23 21:17:50\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:17:50\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-23 21:17:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":null,\"note\":\"\"}', 0),
(43, 9, 1, '', '2022-11-23 21:18:15', 691, 2079, '2dba391238f843ae77ebfd5a10bf55cdaed0a5a4', '{\"id\":9,\"asset_id\":88,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"alias\":\"caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/drive.google.com\\/file\\/d\\/1r8R5GseotwVBK5HreajbBnSkEYhMV9X8\\/view?usp=sharing|width:800|height:600{\\/google_docs}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:17:50\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:18:15\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 21:18:10\",\"publish_up\":\"2022-11-23 21:17:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(44, 9, 1, '', '2022-11-23 21:20:15', 691, 3707, '7eb2e604f2a9534d4798288b9af7e90c7e6eed52', '{\"id\":9,\"asset_id\":88,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"alias\":\"caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">RESUMEN: Desde hace unos a\\u00f1os se ha dado importancia al estudio de desgaste de piezas industriales, sobre todo debido a que por este fen\\u00f3meno se generan numerosos inconvenientes y p\\u00e9rdidas econ\\u00f3micas asociadas a las paradas de producci\\u00f3n necesarias para la reparaci\\u00f3n o recambio de las piezas da\\u00f1adas. Esto no solo dificulta la continuidad de la producci\\u00f3n sino que conlleva, adem\\u00e1s, al aumento de los costos empresariales. Un material utilizado en las piezas sometidas a alto desgaste es el acero Hadfield, cuya caracter\\u00edstica principal es presentar una microestructura austen\\u00edtica, que al estar expuesta a fuertes impactos durante el trabajo en servicio, se transforma a martensita, dando lugar a un favorable endurecimiento superficial. Siendo una necesidad imperante del sector productivo encarar el problema de la reposici\\u00f3n de piezas desgastadas de equipos industriales y teniendo en cuenta la extensiva utilizaci\\u00f3n del acero Hadfield para estos casos, se hace necesario encarar el estudio de las condiciones que mejorar\\u00edan el tiempo de uso de las piezas fabricadas con este acero. Con miras a encontrar soluciones eficaces tanto t\\u00e9cnicas como econ\\u00f3micas, en el presente trabajo se estudian piezas de un componente industrial de acero Hadfield, caracterizando las mismas y correlacionando su rendimiento con las condiciones encontradas.\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:\\u00a0<\\/strong>Edmundo Tolab\\u00edn, Edith A. Gareca, Teresa Antequera,\\u00a0Leonardo Maclis1\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/20-tolabin.pdf|width:800|height:600{\\/google_docs}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:17:50\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:20:15\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 21:18:15\",\"publish_up\":\"2022-11-23 21:17:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(45, 9, 1, '', '2022-11-23 21:20:32', 691, 3729, '25d5e2e554a69f82d96bbc3bef3fbae29701a11a', '{\"id\":9,\"asset_id\":88,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"alias\":\"caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">RESUMEN: Desde hace unos a\\u00f1os se ha dado importancia al estudio de desgaste de piezas industriales, sobre todo debido a que por este fen\\u00f3meno se generan numerosos inconvenientes y p\\u00e9rdidas econ\\u00f3micas asociadas a las paradas de producci\\u00f3n necesarias para la reparaci\\u00f3n o recambio de las piezas da\\u00f1adas. Esto no solo dificulta la continuidad de la producci\\u00f3n sino que conlleva, adem\\u00e1s, al aumento de los costos empresariales. Un material utilizado en las piezas sometidas a alto desgaste es el acero Hadfield, cuya caracter\\u00edstica principal es presentar una microestructura austen\\u00edtica, que al estar expuesta a fuertes impactos durante el trabajo en servicio, se transforma a martensita, dando lugar a un favorable endurecimiento superficial. Siendo una necesidad imperante del sector productivo encarar el problema de la reposici\\u00f3n de piezas desgastadas de equipos industriales y teniendo en cuenta la extensiva utilizaci\\u00f3n del acero Hadfield para estos casos, se hace necesario encarar el estudio de las condiciones que mejorar\\u00edan el tiempo de uso de las piezas fabricadas con este acero. Con miras a encontrar soluciones eficaces tanto t\\u00e9cnicas como econ\\u00f3micas, en el presente trabajo se estudian piezas de un componente industrial de acero Hadfield, caracterizando las mismas y correlacionando su rendimiento con las condiciones encontradas.\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:\\u00a0<\\/strong>Edmundo Tolab\\u00edn, Edith A. Gareca, Teresa Antequera,\\u00a0Leonardo Maclis1\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/20-tolabin.pdf|width:800|height:600{\\/google_docs}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:17:50\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:20:32\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 21:20:15\",\"publish_up\":\"2022-11-23 21:17:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/1189141.jpeg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(46, 9, 1, '', '2022-11-23 21:20:47', 691, 3733, 'db81d67719d6f1e8c349c2a9790ecac47f7b32e8', '{\"id\":9,\"asset_id\":88,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"alias\":\"caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste\",\"introtext\":\"\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\">RESUMEN: Desde hace unos a\\u00f1os se ha dado importancia al estudio de desgaste de piezas industriales, sobre todo debido a que por este fen\\u00f3meno se generan numerosos inconvenientes y p\\u00e9rdidas econ\\u00f3micas asociadas a las paradas de producci\\u00f3n necesarias para la reparaci\\u00f3n o recambio de las piezas da\\u00f1adas. Esto no solo dificulta la continuidad de la producci\\u00f3n sino que conlleva, adem\\u00e1s, al aumento de los costos empresariales. Un material utilizado en las piezas sometidas a alto desgaste es el acero Hadfield, cuya caracter\\u00edstica principal es presentar una microestructura austen\\u00edtica, que al estar expuesta a fuertes impactos durante el trabajo en servicio, se transforma a martensita, dando lugar a un favorable endurecimiento superficial. Siendo una necesidad imperante del sector productivo encarar el problema de la reposici\\u00f3n de piezas desgastadas de equipos industriales y teniendo en cuenta la extensiva utilizaci\\u00f3n del acero Hadfield para estos casos, se hace necesario encarar el estudio de las condiciones que mejorar\\u00edan el tiempo de uso de las piezas fabricadas con este acero. Con miras a encontrar soluciones eficaces tanto t\\u00e9cnicas como econ\\u00f3micas, en el presente trabajo se estudian piezas de un componente industrial de acero Hadfield, caracterizando las mismas y correlacionando su rendimiento con las condiciones encontradas.\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:\\u00a0<\\/strong>Edmundo Tolab\\u00edn, Edith A. Gareca, Teresa Antequera,\\u00a0Leonardo Maclis1\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/20-tolabin.pdf|width:800|height:600{\\/google_docs}<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:17:50\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:20:47\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 21:20:40\",\"publish_up\":\"2022-11-23 21:17:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/1189141.jpeg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(47, 9, 1, '', '2022-11-23 21:21:16', 691, 3751, '50622b60a3ab892c1e77df98204627939f68ade6', '{\"id\":9,\"asset_id\":88,\"title\":\"Caracterizaci\\u00f3n de piezas industriales de acero Hadfield sometidas a alto desgaste. \",\"alias\":\"caracterizacion-de-piezas-industriales-de-acero-hadfield-sometidas-a-alto-desgaste\",\"introtext\":\"\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: justify;\\\">RESUMEN: Desde hace unos a\\u00f1os se ha dado importancia al estudio de desgaste de piezas industriales, sobre todo debido a que por este fen\\u00f3meno se generan numerosos inconvenientes y p\\u00e9rdidas econ\\u00f3micas asociadas a las paradas de producci\\u00f3n necesarias para la reparaci\\u00f3n o recambio de las piezas da\\u00f1adas. Esto no solo dificulta la continuidad de la producci\\u00f3n sino que conlleva, adem\\u00e1s, al aumento de los costos empresariales. Un material utilizado en las piezas sometidas a alto desgaste es el acero Hadfield, cuya caracter\\u00edstica principal es presentar una microestructura austen\\u00edtica, que al estar expuesta a fuertes impactos durante el trabajo en servicio, se transforma a martensita, dando lugar a un favorable endurecimiento superficial. Siendo una necesidad imperante del sector productivo encarar el problema de la reposici\\u00f3n de piezas desgastadas de equipos industriales y teniendo en cuenta la extensiva utilizaci\\u00f3n del acero Hadfield para estos casos, se hace necesario encarar el estudio de las condiciones que mejorar\\u00edan el tiempo de uso de las piezas fabricadas con este acero. Con miras a encontrar soluciones eficaces tanto t\\u00e9cnicas como econ\\u00f3micas, en el presente trabajo se estudian piezas de un componente industrial de acero Hadfield, caracterizando las mismas y correlacionando su rendimiento con las condiciones encontradas.\\u00a0<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:\\u00a0<\\/strong>Edmundo Tolab\\u00edn, <strong>Edith A. Gareca, Teresa Antequera<\\/strong>,\\u00a0Leonardo Maclis1\\u00a0<\\/p>\\r\\n<p>{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/20-tolabin.pdf|width:800|height:600{\\/google_docs}<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-11-23 21:17:50\",\"created_by\":\"691\",\"created_by_alias\":\"\",\"modified\":\"2022-11-23 21:21:16\",\"modified_by\":691,\"checked_out\":691,\"checked_out_time\":\"2022-11-23 21:20:47\",\"publish_up\":\"2022-11-23 21:17:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/1189141.jpeg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":1,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(48, 10, 1, '', '2022-11-24 03:27:58', 691, 2013, '8e2485cebc16d84f3157aa13dfd3b24915ea14f2', '{\"id\":\"10\",\"asset_id\":89,\"title\":\"Un m\\u00e9todo para generar mezclas CO2 + etanol en estado supercr\\u00edtico\",\"alias\":\"un-metodo-para-generar-mezclas-co2-etanol-en-estado-supercritico\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">Se presenta un m\\u00e9todo para obtener mezclas de CO2 + Etanol en el estado supercr\\u00edtico, con el prop\\u00f3sito de generar mezclas modificadas que permitan la extracci\\u00f3n de solutos polares naturales de inter\\u00e9s. El m\\u00e9todo est\\u00e1 basado en la solubilizaci\\u00f3n de etanol en CO2 supercr\\u00edtico por pasaje de \\u00e9ste ultimo a trav\\u00e9s de un lecho que contiene al primero. El procedimiento implica la determinaci\\u00f3n de las condiciones de temperatura, presi\\u00f3n, flujo de mezcla y masa inicial de etanol en el lecho para lograr una mezcla supercr\\u00edtica miscible en todo el rango de composici\\u00f3n y constancia temporal de \\u00e9sta durante la extracci\\u00f3n. Los resultados indican que es posible obtener mezclas supercr\\u00edticas CO2 + Etanol mediante este procedimiento, entendi\\u00e9ndose que \\u00e9stas ser\\u00e1n aptas para extracciones de solutos polares naturales.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><strong>Autores:<\\/strong>\\u00a0Noelia A. Palacios , Rodrigo R. Rodriguez &amp; Jos\\u00e9 L. Zacur<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">{google_docs}https:\\/\\/fcf.unse.edu.ar\\/archivos\\/publicaciones\\/codinoa-2013\\/trabajos\\/tecnologicas\\/75-palacios.pdf|width:800|height:600{\\/google_docs}<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2022-11-24 03:27:58\",\"created_by\":691,\"created_by_alias\":\"\",\"modified\":\"2022-11-24 03:27:58\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-11-24 03:27:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":null,\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_updates`
--

CREATE TABLE `i63fc_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Volcado de datos para la tabla `i63fc_updates`
--

INSERT INTO `i63fc_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(218, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(219, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(220, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.27.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(221, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(222, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(223, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(224, 2, 0, 'Bengali, Bangladesh', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(225, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(226, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(227, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(228, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.10.6.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(229, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(230, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(231, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(232, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.10.10.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(233, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(234, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(235, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(236, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(237, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(238, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(239, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(240, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(241, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(242, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(243, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(244, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(245, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(246, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(247, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(248, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(249, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(250, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(251, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(252, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(253, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(254, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(255, 2, 0, 'Hindi, India', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(256, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(257, 2, 0, 'Indonesian, Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(258, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(259, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(260, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(261, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', ''),
(262, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(263, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(264, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.9.25.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(265, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(266, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(267, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(268, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(269, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(270, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(271, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '3.10.11.2', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(272, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.10.10.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(273, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(274, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '3.9.29.2', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(275, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(276, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.10.9.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(277, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.10.2.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(278, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.10.2.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(279, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(280, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.10.5.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(281, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(282, 2, 0, 'Spanish, Colombia', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(283, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(284, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(285, 2, 0, 'Syriac, East', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(286, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(287, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(288, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(289, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(290, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.10.2.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(291, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(292, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(293, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(294, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.10.11', '', 'https://update.joomla.org/core/extension.xml', '', ''),
(295, 9, 0, 'JoomAutoCat', '', 'joomautocat', 'plugin', 'user', 0, '3.0.2', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomautocat.xml', '', ''),
(296, 9, 0, 'JoomPlu', '', 'joomplu', 'plugin', 'content', 0, '3.2.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomplu.xml', '', ''),
(297, 9, 0, 'JoomBu', '', 'joombu', 'plugin', 'editors-xtd', 0, '3.2.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joombu.xml', '', ''),
(298, 9, 0, 'JoomFancybox', '', 'joomfancybox', 'plugin', 'joomgallery', 0, '3.1.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomfancybox.xml', '', ''),
(299, 9, 0, 'JoomLightbox2', '', 'joomlightbox2', 'plugin', 'joomgallery', 0, '3.2.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomlightbox2.xml', '', ''),
(300, 9, 0, 'JoomImages', '', 'mod_joomimg', 'module', '', 0, '3.5.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomimages.xml', '', ''),
(301, 9, 0, 'JoomSearchModule', '', 'mod_joomsearch', 'module', '', 0, '3.0.2', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomsearchmodule.xml', '', ''),
(302, 9, 0, 'JoomStats', '', 'mod_joomstats', 'module', '', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomstats.xml', '', ''),
(303, 9, 0, 'JoomTreeview', '', 'mod_jgtreeview', 'module', '', 0, '3.1.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomtreeview.xml', '', ''),
(304, 9, 0, 'JoomSearchPlugin', '', 'joomgallery', 'plugin', 'search', 0, '3.1.2', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomsearchplugin.xml', '', ''),
(305, 9, 0, 'JoomLytebox', '', 'joomlytebox', 'plugin', 'joomgallery', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomlytebox.xml', '', ''),
(306, 9, 0, 'JoomColorbox', '', 'joomcolorbox', 'plugin', 'joomgallery', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomcolorbox.xml', '', ''),
(307, 9, 0, 'JoomQuickicon', '', 'joomgallery', 'plugin', 'quickicon', 0, '3.0.3', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomquickicon.xml', '', ''),
(308, 9, 0, 'XmapPlugin', '', 'com_joomgallery', 'plugin', 'xmap', 0, '3.0.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/xmapplugin.xml', '', ''),
(309, 9, 0, 'JoomAdditionalImageFields', '', 'joomadditionalimagefields', 'plugin', 'joomgallery', 0, '3.1.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomadditionalimagefields.xml', '', ''),
(310, 9, 0, 'JoomAdditionalCategoryFields', '', 'joomadditionalcategoryfields', 'plugin', 'joomgallery', 0, '3.1.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomadditionalcategoryfields.xml', '', ''),
(311, 9, 0, 'JoomreCaptcha', '', 'joomrecaptcha', 'plugin', 'joomgallery', 0, '3.1.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomrecaptcha.xml', '', ''),
(312, 9, 0, 'JoomShadowbox', '', 'joomshadowbox', 'plugin', 'joomgallery', 0, '3.1.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomshadowbox.xml', '', ''),
(313, 9, 0, 'JoomHighslide', '', 'joomhighslide', 'plugin', 'joomgallery', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomhighslide.xml', '', ''),
(314, 9, 0, 'JoomRokBox', '', 'joomrokbox', 'plugin', 'joomgallery', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomrokbox.xml', '', ''),
(315, 9, 0, 'JoomprettyPhoto', '', 'joomprettyphoto', 'plugin', 'joomgallery', 0, '3.1.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomprettyphoto.xml', '', ''),
(316, 9, 0, 'JoomPhotoswipev4', '', 'photoswipe', 'plugin', 'joomgallery', 0, '1.12', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomphotoswipev4.xml', '', ''),
(317, 9, 0, 'JoomMarketLink', '', 'joommarketlink', 'plugin', 'joomgallery', 0, '3.1.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joommarketlink.xml', '', ''),
(318, 9, 0, 'JoomDisplayCBname', '', 'joomdisplaycbname', 'plugin', 'joomgallery', 0, '3.1.2', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomdisplaycbname.xml', '', ''),
(319, 9, 0, 'JoomDisplayKunenaName', '', 'joomdisplaykunenaname', 'plugin', 'joomgallery', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomdisplaykunenaname.xml', '', ''),
(320, 9, 0, 'JoomAlphaUserPoints', '', 'joomalphauserpoints', 'plugin', 'joomgallery', 0, '3.0.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomalphauserpoints.xml', '', ''),
(321, 9, 0, 'JoomFacebookLikeButton', '', 'joomfacebooklikebutton', 'plugin', 'joomgallery', 0, '3.0.1', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomfacebooklikebutton.xml', '', ''),
(322, 9, 0, 'JoomTwitterShareButton', '', 'joomtwittersharebutton', 'plugin', 'joomgallery', 0, '3.0.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joomtwittersharebutton.xml', '', ''),
(323, 9, 0, 'JoomPinItButton', '', 'joompinitbutton', 'plugin', 'joomgallery', 0, '3.0.0', '', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/joomgallery3/joompinitbutton.xml', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_update_sites`
--

CREATE TABLE `i63fc_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `i63fc_update_sites`
--

INSERT INTO `i63fc_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1669253984, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1669253982, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1669253983, ''),
(6, 'JEvents Addon Updates', 'extension', 'https://www.jevents.net/newupdates/jevents_package.xml', 1, 1669232856, ''),
(8, 'JEvents Updates', 'extension', 'https://www.jevents.net/newupdates/package_jevents.xml', 1, 1669253984, ''),
(9, 'JoomGallery Update Service', 'collection', 'https://www.joomgalleryfriends.net/components/com_newversion/xml/extensions3.xml', 1, 1669253986, ''),
(10, 'Ridiculously Responsive Social Sharing Buttons for Joomla', 'extension', 'https://raw.githubusercontent.com/joomla-projects/plg_content_joomlarrssb/master/manifest.xml', 1, 1669253986, ''),
(11, 'Digi Showcase', 'extension', 'https://www.digigreg.com/xml/mod_digi_showcase.xml', 1, 1669253987, 'option=com_virtuemart&view=plugin&name=istraxx_download&dlkey=cF8xSzkzOHA5VA==&oid=318');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_update_sites_extensions`
--

CREATE TABLE `i63fc_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `i63fc_update_sites_extensions`
--

INSERT INTO `i63fc_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10002),
(3, 28),
(6, 10037),
(8, 10037),
(9, 10041),
(9, 10044),
(10, 10045),
(11, 10046);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_usergroups`
--

CREATE TABLE `i63fc_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_usergroups`
--

INSERT INTO `i63fc_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_users`
--

CREATE TABLE `i63fc_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_users`
--

INSERT INTO `i63fc_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(691, 'Mara ', 'kotarourinni', 'xmaralujanx@gmail.com', '$2y$10$qQRiA0aQe98y339RcA03WuTIeQR8NxcUgnD2ARSeuubChtyL7VudS', 0, 1, '2022-11-23 17:17:54', '2022-11-24 03:35:30', '0', '{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(692, 'Invitado', 'dvian', 'kixadok441@rubeshi.com', '$2y$10$RAs1WrW2oRQUnCMvHouAW.XNM6I31P3RaYZuq4IzGwq.HsEcpAEXe', 0, 0, '2022-11-23 23:28:58', '2022-11-24 02:33:04', '0a5534e1a7afa7f07fdec67270194150', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(693, 'Debora', 'debora97', 'lodinig851@probdd.com', '$2y$10$G8HJdhwpan4cbmgAspTHSOB7U925FSVEEa2qrycw/Z.SgBxiazZYy', 0, 0, '2022-11-24 02:39:40', '2022-11-24 02:42:14', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0),
(694, 'Sandra', 'binchilin23', 'dodetol184@rubeshi.com', '$2y$10$orPowJ3qlYAMof9BgHY8vOW79scQvSx1GcsrLskg95Qrc1.AIhXKK', 0, 0, '2022-11-24 02:42:07', '2022-11-24 03:07:03', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_user_keys`
--

CREATE TABLE `i63fc_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_user_notes`
--

CREATE TABLE `i63fc_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_user_profiles`
--

CREATE TABLE `i63fc_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_user_usergroup_map`
--

CREATE TABLE `i63fc_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_user_usergroup_map`
--

INSERT INTO `i63fc_user_usergroup_map` (`user_id`, `group_id`) VALUES
(691, 8),
(692, 2),
(693, 2),
(694, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_utf8_conversion`
--

CREATE TABLE `i63fc_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_utf8_conversion`
--

INSERT INTO `i63fc_utf8_conversion` (`converted`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i63fc_viewlevels`
--

CREATE TABLE `i63fc_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `i63fc_viewlevels`
--

INSERT INTO `i63fc_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `i63fc_action_logs`
--
ALTER TABLE `i63fc_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indices de la tabla `i63fc_action_logs_extensions`
--
ALTER TABLE `i63fc_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_action_logs_users`
--
ALTER TABLE `i63fc_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indices de la tabla `i63fc_action_log_config`
--
ALTER TABLE `i63fc_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_assets`
--
ALTER TABLE `i63fc_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `i63fc_associations`
--
ALTER TABLE `i63fc_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `i63fc_banners`
--
ALTER TABLE `i63fc_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_banner_clients`
--
ALTER TABLE `i63fc_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `i63fc_banner_tracks`
--
ALTER TABLE `i63fc_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `i63fc_categories`
--
ALTER TABLE `i63fc_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_contact_details`
--
ALTER TABLE `i63fc_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `i63fc_content`
--
ALTER TABLE `i63fc_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indices de la tabla `i63fc_contentitem_tag_map`
--
ALTER TABLE `i63fc_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `i63fc_content_frontpage`
--
ALTER TABLE `i63fc_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `i63fc_content_rating`
--
ALTER TABLE `i63fc_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `i63fc_content_types`
--
ALTER TABLE `i63fc_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `i63fc_extensions`
--
ALTER TABLE `i63fc_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `i63fc_fields`
--
ALTER TABLE `i63fc_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_fields_categories`
--
ALTER TABLE `i63fc_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indices de la tabla `i63fc_fields_groups`
--
ALTER TABLE `i63fc_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_fields_values`
--
ALTER TABLE `i63fc_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indices de la tabla `i63fc_finder_filters`
--
ALTER TABLE `i63fc_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `i63fc_finder_links`
--
ALTER TABLE `i63fc_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `i63fc_finder_links_terms0`
--
ALTER TABLE `i63fc_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms1`
--
ALTER TABLE `i63fc_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms2`
--
ALTER TABLE `i63fc_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms3`
--
ALTER TABLE `i63fc_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms4`
--
ALTER TABLE `i63fc_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms5`
--
ALTER TABLE `i63fc_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms6`
--
ALTER TABLE `i63fc_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms7`
--
ALTER TABLE `i63fc_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms8`
--
ALTER TABLE `i63fc_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_terms9`
--
ALTER TABLE `i63fc_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_termsa`
--
ALTER TABLE `i63fc_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_termsb`
--
ALTER TABLE `i63fc_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_termsc`
--
ALTER TABLE `i63fc_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_termsd`
--
ALTER TABLE `i63fc_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_termse`
--
ALTER TABLE `i63fc_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_links_termsf`
--
ALTER TABLE `i63fc_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `i63fc_finder_taxonomy`
--
ALTER TABLE `i63fc_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `i63fc_finder_taxonomy_map`
--
ALTER TABLE `i63fc_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `i63fc_finder_terms`
--
ALTER TABLE `i63fc_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indices de la tabla `i63fc_finder_terms_common`
--
ALTER TABLE `i63fc_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `i63fc_finder_tokens`
--
ALTER TABLE `i63fc_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indices de la tabla `i63fc_finder_tokens_aggregate`
--
ALTER TABLE `i63fc_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `i63fc_finder_types`
--
ALTER TABLE `i63fc_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `i63fc_jevents_catmap`
--
ALTER TABLE `i63fc_jevents_catmap`
  ADD UNIQUE KEY `key_event_category` (`evid`,`catid`),
  ADD KEY `key_evid` (`evid`);

--
-- Indices de la tabla `i63fc_jevents_exception`
--
ALTER TABLE `i63fc_jevents_exception`
  ADD PRIMARY KEY (`ex_id`),
  ADD KEY `eventid` (`eventid`),
  ADD KEY `rp_id` (`rp_id`);

--
-- Indices de la tabla `i63fc_jevents_filtermap`
--
ALTER TABLE `i63fc_jevents_filtermap`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `md5` (`md5`);

--
-- Indices de la tabla `i63fc_jevents_icsfile`
--
ALTER TABLE `i63fc_jevents_icsfile`
  ADD PRIMARY KEY (`ics_id`),
  ADD UNIQUE KEY `label` (`label`),
  ADD KEY `stateidx` (`state`);

--
-- Indices de la tabla `i63fc_jevents_repetition`
--
ALTER TABLE `i63fc_jevents_repetition`
  ADD PRIMARY KEY (`rp_id`),
  ADD UNIQUE KEY `duplicatecheck` (`duplicatecheck`),
  ADD KEY `eventid` (`eventid`),
  ADD KEY `eventstart` (`eventid`,`startrepeat`),
  ADD KEY `eventend` (`eventid`,`endrepeat`),
  ADD KEY `eventdetail` (`eventdetail_id`),
  ADD KEY `startrepeat` (`startrepeat`),
  ADD KEY `startend` (`startrepeat`,`endrepeat`),
  ADD KEY `endrepeat` (`endrepeat`);

--
-- Indices de la tabla `i63fc_jevents_rrule`
--
ALTER TABLE `i63fc_jevents_rrule`
  ADD PRIMARY KEY (`rr_id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indices de la tabla `i63fc_jevents_translation`
--
ALTER TABLE `i63fc_jevents_translation`
  ADD PRIMARY KEY (`translation_id`),
  ADD KEY `evdet_id` (`evdet_id`),
  ADD KEY `langdetail` (`evdet_id`,`language`);

--
-- Indices de la tabla `i63fc_jevents_vevdetail`
--
ALTER TABLE `i63fc_jevents_vevdetail`
  ADD PRIMARY KEY (`evdet_id`),
  ADD KEY `location` (`location`),
  ADD KEY `loc_id` (`loc_id`),
  ADD KEY `multiday` (`multiday`);

--
-- Indices de la tabla `i63fc_jevents_vevent`
--
ALTER TABLE `i63fc_jevents_vevent`
  ADD PRIMARY KEY (`ev_id`),
  ADD KEY `icsid` (`icsid`),
  ADD KEY `stateidx` (`state`),
  ADD KEY `evaccess` (`access`);

--
-- Indices de la tabla `i63fc_jev_defaults`
--
ALTER TABLE `i63fc_jev_defaults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `langcodename` (`language`,`catid`,`name`);

--
-- Indices de la tabla `i63fc_jev_users`
--
ALTER TABLE `i63fc_jev_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`);

--
-- Indices de la tabla `i63fc_joomgallery`
--
ALTER TABLE `i63fc_joomgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_owner` (`owner`);

--
-- Indices de la tabla `i63fc_joomgallery_category_details`
--
ALTER TABLE `i63fc_joomgallery_category_details`
  ADD PRIMARY KEY (`id`,`details_key`);

--
-- Indices de la tabla `i63fc_joomgallery_catg`
--
ALTER TABLE `i63fc_joomgallery_catg`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `i63fc_joomgallery_comments`
--
ALTER TABLE `i63fc_joomgallery_comments`
  ADD PRIMARY KEY (`cmtid`),
  ADD KEY `idx_cmtpic` (`cmtpic`);

--
-- Indices de la tabla `i63fc_joomgallery_config`
--
ALTER TABLE `i63fc_joomgallery_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_joomgallery_countstop`
--
ALTER TABLE `i63fc_joomgallery_countstop`
  ADD KEY `idx_cspicid` (`cspicid`);

--
-- Indices de la tabla `i63fc_joomgallery_image_details`
--
ALTER TABLE `i63fc_joomgallery_image_details`
  ADD PRIMARY KEY (`id`,`details_key`);

--
-- Indices de la tabla `i63fc_joomgallery_maintenance`
--
ALTER TABLE `i63fc_joomgallery_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_joomgallery_nameshields`
--
ALTER TABLE `i63fc_joomgallery_nameshields`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `idx_picid` (`npicid`);

--
-- Indices de la tabla `i63fc_joomgallery_orphans`
--
ALTER TABLE `i63fc_joomgallery_orphans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullpath` (`fullpath`);

--
-- Indices de la tabla `i63fc_joomgallery_users`
--
ALTER TABLE `i63fc_joomgallery_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `idx_uid` (`uuserid`);

--
-- Indices de la tabla `i63fc_joomgallery_votes`
--
ALTER TABLE `i63fc_joomgallery_votes`
  ADD PRIMARY KEY (`voteid`),
  ADD KEY `idx_picid` (`picid`);

--
-- Indices de la tabla `i63fc_kunena_aliases`
--
ALTER TABLE `i63fc_kunena_aliases`
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `state` (`state`),
  ADD KEY `item` (`item`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `i63fc_kunena_announcement`
--
ALTER TABLE `i63fc_kunena_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_kunena_attachments`
--
ALTER TABLE `i63fc_kunena_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesid` (`mesid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `hash` (`hash`),
  ADD KEY `filename` (`filename`),
  ADD KEY `filename_real` (`filename_real`);

--
-- Indices de la tabla `i63fc_kunena_categories`
--
ALTER TABLE `i63fc_kunena_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `category_access` (`accesstype`,`access`),
  ADD KEY `published_pubaccess_id` (`published`,`pub_access`,`id`);

--
-- Indices de la tabla `i63fc_kunena_configuration`
--
ALTER TABLE `i63fc_kunena_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_kunena_logs`
--
ALTER TABLE `i63fc_kunena_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `target_user` (`target_user`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `i63fc_kunena_messages`
--
ALTER TABLE `i63fc_kunena_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread` (`thread`),
  ADD KEY `ip` (`ip`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold_time` (`hold`,`time`),
  ADD KEY `parent_hits` (`parent`,`hits`),
  ADD KEY `catid_parent` (`catid`,`parent`);

--
-- Indices de la tabla `i63fc_kunena_messages_text`
--
ALTER TABLE `i63fc_kunena_messages_text`
  ADD PRIMARY KEY (`mesid`);

--
-- Indices de la tabla `i63fc_kunena_polls`
--
ALTER TABLE `i63fc_kunena_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threadid` (`threadid`);

--
-- Indices de la tabla `i63fc_kunena_polls_options`
--
ALTER TABLE `i63fc_kunena_polls_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`);

--
-- Indices de la tabla `i63fc_kunena_polls_users`
--
ALTER TABLE `i63fc_kunena_polls_users`
  ADD UNIQUE KEY `pollid` (`pollid`,`userid`);

--
-- Indices de la tabla `i63fc_kunena_ranks`
--
ALTER TABLE `i63fc_kunena_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indices de la tabla `i63fc_kunena_rate`
--
ALTER TABLE `i63fc_kunena_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_kunena_sessions`
--
ALTER TABLE `i63fc_kunena_sessions`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `currvisit` (`currvisit`);

--
-- Indices de la tabla `i63fc_kunena_smileys`
--
ALTER TABLE `i63fc_kunena_smileys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_kunena_thankyou`
--
ALTER TABLE `i63fc_kunena_thankyou`
  ADD UNIQUE KEY `postid` (`postid`,`userid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `targetuserid` (`targetuserid`);

--
-- Indices de la tabla `i63fc_kunena_topics`
--
ALTER TABLE `i63fc_kunena_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold` (`hold`),
  ADD KEY `posts` (`posts`),
  ADD KEY `hits` (`hits`),
  ADD KEY `first_post_userid` (`first_post_userid`),
  ADD KEY `last_post_userid` (`last_post_userid`),
  ADD KEY `first_post_time` (`first_post_time`),
  ADD KEY `last_post_time` (`last_post_time`),
  ADD KEY `last_post_id` (`last_post_id`);

--
-- Indices de la tabla `i63fc_kunena_users`
--
ALTER TABLE `i63fc_kunena_users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `uhits` (`uhits`),
  ADD KEY `banned` (`banned`),
  ADD KEY `moderator` (`moderator`);

--
-- Indices de la tabla `i63fc_kunena_users_banned`
--
ALTER TABLE `i63fc_kunena_users_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `created_time` (`created_time`);

--
-- Indices de la tabla `i63fc_kunena_user_categories`
--
ALTER TABLE `i63fc_kunena_user_categories`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `category_subscribed` (`category_id`,`subscribed`),
  ADD KEY `role` (`role`);

--
-- Indices de la tabla `i63fc_kunena_user_read`
--
ALTER TABLE `i63fc_kunena_user_read`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `category_user_id` (`category_id`,`user_id`),
  ADD KEY `time` (`time`);

--
-- Indices de la tabla `i63fc_kunena_user_topics`
--
ALTER TABLE `i63fc_kunena_user_topics`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `owner` (`owner`),
  ADD KEY `favorite` (`favorite`),
  ADD KEY `subscribed` (`subscribed`);

--
-- Indices de la tabla `i63fc_kunena_version`
--
ALTER TABLE `i63fc_kunena_version`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_languages`
--
ALTER TABLE `i63fc_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `i63fc_menu`
--
ALTER TABLE `i63fc_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_menu_types`
--
ALTER TABLE `i63fc_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `i63fc_messages`
--
ALTER TABLE `i63fc_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `i63fc_messages_cfg`
--
ALTER TABLE `i63fc_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `i63fc_modules`
--
ALTER TABLE `i63fc_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_modules_menu`
--
ALTER TABLE `i63fc_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `i63fc_newsfeeds`
--
ALTER TABLE `i63fc_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `i63fc_overrider`
--
ALTER TABLE `i63fc_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_postinstall_messages`
--
ALTER TABLE `i63fc_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `i63fc_privacy_consents`
--
ALTER TABLE `i63fc_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indices de la tabla `i63fc_privacy_requests`
--
ALTER TABLE `i63fc_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i63fc_redirect_links`
--
ALTER TABLE `i63fc_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indices de la tabla `i63fc_schemas`
--
ALTER TABLE `i63fc_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `i63fc_session`
--
ALTER TABLE `i63fc_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indices de la tabla `i63fc_tags`
--
ALTER TABLE `i63fc_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `i63fc_template_styles`
--
ALTER TABLE `i63fc_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indices de la tabla `i63fc_ucm_base`
--
ALTER TABLE `i63fc_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `i63fc_ucm_content`
--
ALTER TABLE `i63fc_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `i63fc_ucm_history`
--
ALTER TABLE `i63fc_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `i63fc_updates`
--
ALTER TABLE `i63fc_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `i63fc_update_sites`
--
ALTER TABLE `i63fc_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `i63fc_update_sites_extensions`
--
ALTER TABLE `i63fc_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `i63fc_usergroups`
--
ALTER TABLE `i63fc_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `i63fc_users`
--
ALTER TABLE `i63fc_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `i63fc_user_keys`
--
ALTER TABLE `i63fc_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `i63fc_user_notes`
--
ALTER TABLE `i63fc_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `i63fc_user_profiles`
--
ALTER TABLE `i63fc_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `i63fc_user_usergroup_map`
--
ALTER TABLE `i63fc_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `i63fc_viewlevels`
--
ALTER TABLE `i63fc_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `i63fc_action_logs`
--
ALTER TABLE `i63fc_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT de la tabla `i63fc_action_logs_extensions`
--
ALTER TABLE `i63fc_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `i63fc_action_log_config`
--
ALTER TABLE `i63fc_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `i63fc_assets`
--
ALTER TABLE `i63fc_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `i63fc_banners`
--
ALTER TABLE `i63fc_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_banner_clients`
--
ALTER TABLE `i63fc_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_categories`
--
ALTER TABLE `i63fc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `i63fc_contact_details`
--
ALTER TABLE `i63fc_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_content`
--
ALTER TABLE `i63fc_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `i63fc_content_types`
--
ALTER TABLE `i63fc_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `i63fc_extensions`
--
ALTER TABLE `i63fc_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10048;

--
-- AUTO_INCREMENT de la tabla `i63fc_fields`
--
ALTER TABLE `i63fc_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_fields_groups`
--
ALTER TABLE `i63fc_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_finder_filters`
--
ALTER TABLE `i63fc_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_finder_links`
--
ALTER TABLE `i63fc_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_finder_taxonomy`
--
ALTER TABLE `i63fc_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i63fc_finder_terms`
--
ALTER TABLE `i63fc_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_finder_types`
--
ALTER TABLE `i63fc_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_catmap`
--
ALTER TABLE `i63fc_jevents_catmap`
  MODIFY `evid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_exception`
--
ALTER TABLE `i63fc_jevents_exception`
  MODIFY `ex_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_filtermap`
--
ALTER TABLE `i63fc_jevents_filtermap`
  MODIFY `fid` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_icsfile`
--
ALTER TABLE `i63fc_jevents_icsfile`
  MODIFY `ics_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_repetition`
--
ALTER TABLE `i63fc_jevents_repetition`
  MODIFY `rp_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_rrule`
--
ALTER TABLE `i63fc_jevents_rrule`
  MODIFY `rr_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_translation`
--
ALTER TABLE `i63fc_jevents_translation`
  MODIFY `translation_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_vevdetail`
--
ALTER TABLE `i63fc_jevents_vevdetail`
  MODIFY `evdet_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `i63fc_jevents_vevent`
--
ALTER TABLE `i63fc_jevents_vevent`
  MODIFY `ev_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `i63fc_jev_defaults`
--
ALTER TABLE `i63fc_jev_defaults`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_jev_users`
--
ALTER TABLE `i63fc_jev_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery`
--
ALTER TABLE `i63fc_joomgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_catg`
--
ALTER TABLE `i63fc_joomgallery_catg`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_comments`
--
ALTER TABLE `i63fc_joomgallery_comments`
  MODIFY `cmtid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_config`
--
ALTER TABLE `i63fc_joomgallery_config`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_maintenance`
--
ALTER TABLE `i63fc_joomgallery_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_nameshields`
--
ALTER TABLE `i63fc_joomgallery_nameshields`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_orphans`
--
ALTER TABLE `i63fc_joomgallery_orphans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_users`
--
ALTER TABLE `i63fc_joomgallery_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_joomgallery_votes`
--
ALTER TABLE `i63fc_joomgallery_votes`
  MODIFY `voteid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_announcement`
--
ALTER TABLE `i63fc_kunena_announcement`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_attachments`
--
ALTER TABLE `i63fc_kunena_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_categories`
--
ALTER TABLE `i63fc_kunena_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_logs`
--
ALTER TABLE `i63fc_kunena_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_messages`
--
ALTER TABLE `i63fc_kunena_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_polls`
--
ALTER TABLE `i63fc_kunena_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_polls_options`
--
ALTER TABLE `i63fc_kunena_polls_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_ranks`
--
ALTER TABLE `i63fc_kunena_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_rate`
--
ALTER TABLE `i63fc_kunena_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_smileys`
--
ALTER TABLE `i63fc_kunena_smileys`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_topics`
--
ALTER TABLE `i63fc_kunena_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_users_banned`
--
ALTER TABLE `i63fc_kunena_users_banned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_kunena_version`
--
ALTER TABLE `i63fc_kunena_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i63fc_languages`
--
ALTER TABLE `i63fc_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `i63fc_menu`
--
ALTER TABLE `i63fc_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de la tabla `i63fc_menu_types`
--
ALTER TABLE `i63fc_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `i63fc_messages`
--
ALTER TABLE `i63fc_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_modules`
--
ALTER TABLE `i63fc_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `i63fc_newsfeeds`
--
ALTER TABLE `i63fc_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_overrider`
--
ALTER TABLE `i63fc_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `i63fc_postinstall_messages`
--
ALTER TABLE `i63fc_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `i63fc_privacy_consents`
--
ALTER TABLE `i63fc_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_privacy_requests`
--
ALTER TABLE `i63fc_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_redirect_links`
--
ALTER TABLE `i63fc_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_tags`
--
ALTER TABLE `i63fc_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `i63fc_template_styles`
--
ALTER TABLE `i63fc_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `i63fc_ucm_content`
--
ALTER TABLE `i63fc_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_ucm_history`
--
ALTER TABLE `i63fc_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `i63fc_updates`
--
ALTER TABLE `i63fc_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT de la tabla `i63fc_update_sites`
--
ALTER TABLE `i63fc_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `i63fc_usergroups`
--
ALTER TABLE `i63fc_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `i63fc_users`
--
ALTER TABLE `i63fc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT de la tabla `i63fc_user_keys`
--
ALTER TABLE `i63fc_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_user_notes`
--
ALTER TABLE `i63fc_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i63fc_viewlevels`
--
ALTER TABLE `i63fc_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
