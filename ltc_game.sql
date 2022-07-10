-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-07-10 17:28:47
-- 服务器版本： 8.0.24
-- PHP 版本： 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `ltc_game`
--

-- --------------------------------------------------------

--
-- 表的结构 `game_admin`
--

CREATE TABLE `game_admin` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `loginfailure` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` bigint DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

--
-- 转存表中的数据 `game_admin`
--

INSERT INTO `game_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `mobile`, `loginfailure`, `logintime`, `loginip`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', '168d9c3c9a7024d124020192fe869e6e', 'fea84a', '/uploads/20220707/2e16216f1b1d5fed00287951a2a2dd59.png', 'admin@admin.com', '', 0, 1657378069, '117.136.34.38', 1491635035, 1657378069, 'a425f458-def5-49c5-b4cc-4c27b939cf2d', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `game_admin_log`
--

CREATE TABLE `game_admin_log` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` bigint DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';

--
-- 转存表中的数据 `game_admin_log`
--

INSERT INTO `game_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"root\",\"password\":\"***\",\"captcha\":\"vrey\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1656400615),
(2, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"wlnv\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1656400627),
(3, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"root\",\"password\":\"***\",\"captcha\":\"bxje\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174762),
(4, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"nnuw\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174774),
(5, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"w6cb\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174783),
(6, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/addon/install', '插件管理', '{\"name\":\"command\",\"force\":\"0\",\"uid\":\"50952\",\"token\":\"***\",\"version\":\"1.0.6\",\"faversion\":\"1.3.4.20220530\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174808),
(7, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/addon/install', '插件管理', '{\"name\":\"command\",\"force\":\"0\",\"uid\":\"50952\",\"token\":\"***\",\"version\":\"1.0.6\",\"faversion\":\"1.3.4.20220530\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174812),
(8, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/addon/install', '插件管理', '{\"name\":\"command\",\"force\":\"0\",\"uid\":\"50952\",\"token\":\"***\",\"version\":\"1.0.6\",\"faversion\":\"1.3.4.20220530\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174857),
(9, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"command\",\"action\":\"enable\",\"force\":\"0\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174857),
(10, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174888),
(11, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174894),
(12, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"game_users\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174899),
(13, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"game_users\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174899),
(14, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/1', '在线命令管理 / 运行', '{\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174922),
(15, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174924),
(16, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174926),
(17, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174928),
(18, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174930),
(19, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Users.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174933),
(20, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Users.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657174934),
(21, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/2', '在线命令管理 / 运行', '{\"ids\":\"2\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175028),
(22, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175039),
(23, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175042),
(24, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_users\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175044),
(25, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_users\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175045),
(26, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175048),
(27, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175050),
(28, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175051),
(29, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Users.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175053),
(30, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Users.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657175054),
(31, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2Flogout', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"root\",\"password\":\"***\",\"captcha\":\"xulu\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181605),
(32, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2Flogout', '', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"xulu\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181611),
(33, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2Flogout', '', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"kjff\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181615),
(34, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2Flogout', '', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ggbh\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181621),
(35, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2Flogout', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"u4eh\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181626),
(36, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2Flogout', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"hydx\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181637),
(37, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/logout', '', '{\"__token__\":\"***\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181637),
(38, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Findex%2F', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/index\\/\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"tlip\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181661),
(39, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181679),
(40, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_firearm\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181700),
(41, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_firearm\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181723),
(42, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_firearm\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181724),
(43, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181728),
(44, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181730),
(45, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181730),
(46, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181733),
(47, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181741),
(48, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181741),
(49, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181741),
(50, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181741),
(51, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181748),
(52, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181748),
(53, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181798),
(54, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181799),
(55, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_melee_weapon\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181804),
(56, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_melee_weapon\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181811),
(57, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_melee_weapon\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181812),
(58, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181814),
(59, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181817),
(60, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181817),
(61, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool_detail\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181819),
(62, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181826),
(63, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181826),
(64, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181826),
(65, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181826),
(66, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181832),
(67, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181832),
(68, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"3\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181846),
(69, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"3\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181847),
(70, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"3\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181863),
(71, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"3\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181864),
(72, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prop\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181867),
(73, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prop\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181867),
(74, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prop\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181873),
(75, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prop\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181876),
(76, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prop\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181877),
(77, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_property\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181879),
(78, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181889),
(79, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181889),
(80, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181889),
(81, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181889),
(82, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181898),
(83, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181898),
(84, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_property\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"4\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181911),
(85, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_property\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"4\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181911),
(86, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_rank\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181918),
(87, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181921),
(88, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181921),
(89, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181921),
(90, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181921),
(91, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181924),
(92, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181924),
(93, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_rank\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"5\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181934),
(94, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_rank\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"5\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181935),
(95, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_relationship\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181941),
(96, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181942),
(97, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181942),
(98, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181942),
(99, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181942),
(100, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181948),
(101, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181948),
(102, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181958),
(103, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181958),
(104, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181958),
(105, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181958),
(106, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_relationship\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181998),
(107, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_relationship\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657181998),
(108, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_shop\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182003),
(109, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182006),
(110, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182006),
(111, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182006),
(112, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182006),
(113, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shop\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182011),
(114, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shop\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182012),
(115, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_shopping_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182014),
(116, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182015),
(117, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182015),
(118, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182015);
INSERT INTO `game_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(119, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182015),
(120, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182019),
(121, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182019),
(122, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"9\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182030),
(123, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"9\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182030),
(124, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_sms\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182033),
(125, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_store\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182036),
(126, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182036),
(127, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182036),
(128, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182036),
(129, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182036),
(130, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182040),
(131, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182040),
(132, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_store\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"10\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182047),
(133, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_store\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"10\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182048),
(134, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182060),
(135, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182068),
(136, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182072),
(137, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182074),
(138, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182076),
(139, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182080),
(140, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182080),
(141, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182082),
(142, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182083),
(143, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182083),
(144, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182084),
(145, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182090),
(146, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182091),
(147, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182091),
(148, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182092),
(149, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182094),
(150, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"honor\\/Log.php,shopping\\/Log.php,Store.php,prize\\/Pool.php,prize\\/pool\\/Detail.php,melee\\/Weapon.php,Firearm.php,Shop.php,Property.php,Prop.php,Rank.php,Relationship.php,Honor.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182096),
(151, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"honor\\/Log.php,shopping\\/Log.php,Store.php,prize\\/Pool.php,prize\\/pool\\/Detail.php,melee\\/Weapon.php,Firearm.php,Shop.php,Property.php,Prop.php,Rank.php,Relationship.php,Honor.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182097),
(152, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/119?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"prize\\/pool\",\"title\":\"Pool\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"119\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182152),
(153, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"131\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182365),
(154, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182390),
(155, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182396),
(156, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182404),
(157, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"game_honor_log\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182406),
(158, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"game_honor_log\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182406),
(159, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182416),
(160, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"game_honor\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182419),
(161, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"game_honor\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182419),
(162, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182439),
(163, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182439),
(164, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182459),
(165, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182459),
(166, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182462),
(167, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182463),
(168, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182465),
(169, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182467),
(170, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182470),
(171, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182473),
(172, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182475),
(173, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182477),
(174, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182478),
(175, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"99\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182539),
(176, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"106\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182554),
(177, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"125\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182557),
(178, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"118\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182602),
(179, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182620),
(180, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182622),
(181, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182626),
(182, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"honor\\/Log.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182632),
(183, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"honor\\/Log.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182634),
(184, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"179\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182669),
(185, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182676),
(186, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182685),
(187, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182698),
(188, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182698),
(189, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182698),
(190, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182698),
(191, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182705),
(192, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182705),
(193, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182711),
(194, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182711),
(195, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182711),
(196, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182711),
(197, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182713),
(198, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182713),
(199, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]},\"3\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182760),
(200, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]},\"3\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182770),
(201, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182774),
(202, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182778),
(203, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"honor\\/Log.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182790),
(204, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"honor\\/Log.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182801),
(205, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"0\",\"pid\":\"0\",\"name\":\"成就\",\"title\":\"成就\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182971),
(206, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"成就\",\"title\":\"成就\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657182978),
(207, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/185?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"191\",\"name\":\"honor\\/log\",\"title\":\"Log\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"185\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183006),
(208, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"191\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183065),
(209, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183076),
(210, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183083),
(211, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183094),
(212, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183094),
(213, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183094),
(214, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183094),
(215, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183097),
(216, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183097),
(217, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183103),
(218, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183103),
(219, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183103),
(220, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183103),
(221, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183113),
(222, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183113),
(223, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183121),
(224, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183121),
(225, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183121),
(226, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183121),
(227, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"honor_log\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]},\"3\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183123),
(228, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"honor_log\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]},\"3\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183124),
(229, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183127),
(230, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183129),
(231, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183129),
(232, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183131),
(233, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor_log.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183135),
(234, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor_log.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183135),
(235, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183147);
INSERT INTO `game_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(236, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183149),
(237, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor_log.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183152),
(238, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor_log.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183152),
(239, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor_log.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183168),
(240, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honor_log.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183170),
(241, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183187),
(242, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183191),
(243, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183201),
(244, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183201),
(245, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183201),
(246, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183201),
(247, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183204),
(248, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183204),
(249, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183207),
(250, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183207),
(251, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183207),
(252, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183207),
(253, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183217),
(254, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183217),
(255, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"honorlog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]},\"3\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183225),
(256, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"honorlog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]},\"3\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183227),
(257, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183229),
(258, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183230),
(259, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honorlog.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183233),
(260, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honorlog.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183234),
(261, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183281),
(262, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_melee_weapon\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183289),
(263, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_melee_weapon\",\"controller\":\"meleeweapon\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183303),
(264, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_melee_weapon\",\"controller\":\"meleeweapon\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183305),
(265, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183311),
(266, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183312),
(267, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Meleeweapon.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183314),
(268, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Meleeweapon.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183314),
(269, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183340),
(270, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_shopping_log\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183347),
(271, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183358),
(272, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183358),
(273, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183358),
(274, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183358),
(275, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183364),
(276, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183364),
(277, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"shoppinglog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183372),
(278, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"shoppinglog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183372),
(279, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183374),
(280, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183378),
(281, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183381),
(282, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183382),
(283, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183383),
(284, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183384),
(285, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Shoppinglog.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183385),
(286, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Shoppinglog.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183385),
(287, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool_detail\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183420),
(288, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183432),
(289, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183432),
(290, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183432),
(291, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183432),
(292, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183441),
(293, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183441),
(294, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"prizepooldetail\",\"model\":\"\",\"relation\":{\"3\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183449),
(295, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"prizepooldetail\",\"model\":\"\",\"relation\":{\"3\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183452),
(296, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183455),
(297, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183457),
(298, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183459),
(299, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183460),
(300, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183461),
(301, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Prizepooldetail.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183463),
(302, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Prizepooldetail.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183466),
(303, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183532),
(304, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool\",\"controller\":\"prizepool\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183538),
(305, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool\",\"controller\":\"prizepool\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183539),
(306, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183541),
(307, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183543),
(308, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183545),
(309, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183547),
(310, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183549),
(311, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Prizepool.php\",\"action\":\"command\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183550),
(312, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Prizepool.php\",\"action\":\"execute\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183550),
(313, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"119\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183563),
(314, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183588),
(315, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=0\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183605),
(316, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"105\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657183634),
(317, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"66\",\"params\":\"ismenu=0\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184038),
(318, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/92?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"users\",\"title\":\"玩家管理\",\"url\":\"\",\"icon\":\"fa fa-users\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"92\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184065),
(319, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/98?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"honor\",\"title\":\"成就库\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"98\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184076),
(320, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/112?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"store\",\"title\":\"玩家仓库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"112\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184091),
(321, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/138?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"firearm\",\"title\":\"枪械库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"138\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184105),
(322, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/144?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"shop\",\"title\":\"商店\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"144\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184116),
(323, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/150?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"property\",\"title\":\"玩家财产\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"150\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184125),
(324, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/156?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"prop\",\"title\":\"道具库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"156\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184132),
(325, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/162?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"rank\",\"title\":\"天梯积分\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"162\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184140),
(326, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/168?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"relationship\",\"title\":\"玩家好友关系\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"168\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184148),
(327, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/192?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"honorlog\",\"title\":\"成就记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"192\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184157),
(328, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/198?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"meleeweapon\",\"title\":\"近战武器库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"198\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184167),
(329, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/204?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"shoppinglog\",\"title\":\"购物记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"204\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184173),
(330, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/210?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"prizepooldetail\",\"title\":\"奖池详情\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"210\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184181),
(331, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/216?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"prizepool\",\"title\":\"奖池\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"216\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184187),
(332, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=1\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184292),
(333, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184301),
(334, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"min\",\"module\":\"frontend\",\"resource\":\"all\",\"optimize\":\"\",\"action\":\"command\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657184310),
(335, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/logout', '', '{\"__token__\":\"***\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657185520),
(336, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"5b7x\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657185528),
(337, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"qheh\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657185535),
(338, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"c6va\"}', '223.104.212.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.24(0x1800182b) NetType/4G Language/zh_CN', 1657185555),
(339, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=0\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657185559),
(340, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"lafz\"}', '223.104.212.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.24(0x1800182b) NetType/4G Language/zh_CN', 1657185567),
(341, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ymdk\"}', '223.104.71.26', 'Mozilla/5.0 (Linux; Android 12; LSA-AN00 Build/HONORLSA-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/86.0.4240.99 XWEB/4263 MMWEBSDK/20220604 Mobile Safari/537.36 MMWEBID/1988 MicroMessenger/8.0.24.2180(0x2800183B) WeChat/arm64 Weix', 1657185580),
(342, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"pbdr\",\"keeplogin\":\"1\"}', '223.104.212.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.24(0x1800182b) NetType/4G Language/zh_CN', 1657185611),
(343, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/92?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"users\",\"title\":\"玩家管理\",\"url\":\"\",\"icon\":\"fa fa-users\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"100\",\"status\":\"normal\"},\"ids\":\"92\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657186310),
(344, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/92?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"users\",\"title\":\"玩家管理\",\"url\":\"\",\"icon\":\"fa fa-users\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"90\",\"status\":\"normal\"},\"ids\":\"92\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657186332),
(345, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"5aer\",\"keeplogin\":\"1\"}', '223.73.233.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', 1657186542),
(346, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"成就系统\",\"title\":\"成就系统\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657186908),
(347, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/98?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"222\",\"name\":\"honor\",\"title\":\"成就库\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"98\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657186918),
(348, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/192?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"222\",\"name\":\"honorlog\",\"title\":\"成就记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"192\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657186926),
(349, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"xrfb\"}', '113.15.12.161', 'Mozilla/5.0 (Linux; Android 10; VCE-AL00 Build/HUAWEIVCE-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/86.0.4240.99 XWEB/4263 MMWEBSDK/20220604 Mobile Safari/537.36 MMWEBID/1609 MicroMessenger/8.0.24.2180(0x2800183B) WeChat/arm64 Wei', 1657188182);
INSERT INTO `game_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(350, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"jckg\"}', '223.104.71.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', 1657195214),
(351, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ubcx\"}', '223.104.71.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', 1657195225),
(352, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"抽奖系统\",\"title\":\"抽奖系统\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197487),
(353, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/216?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"223\",\"name\":\"prizepool\",\"title\":\"奖池\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"216\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197498),
(354, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/210?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"223\",\"name\":\"prizepooldetail\",\"title\":\"奖池详情\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"210\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197506),
(355, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"商城系统\",\"title\":\"商城系统\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197523),
(356, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/144?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"224\",\"name\":\"shop\",\"title\":\"商城\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"144\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197540),
(357, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/204?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"224\",\"name\":\"shoppinglog\",\"title\":\"玩家购买记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"204\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197564),
(358, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"玩家数据\",\"title\":\"玩家数据\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197587),
(359, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/225?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"玩家数据\",\"title\":\"玩家数据系统\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"225\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197604),
(360, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/150?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"225\",\"name\":\"property\",\"title\":\"玩家财产\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"150\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197613),
(361, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/162?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"225\",\"name\":\"rank\",\"title\":\"天梯积分\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"162\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197621),
(362, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/168?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"225\",\"name\":\"relationship\",\"title\":\"玩家好友关系\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"168\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197627),
(363, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/112?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"225\",\"name\":\"store\",\"title\":\"玩家仓库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"112\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197634),
(364, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/92?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"225\",\"name\":\"users\",\"title\":\"玩家管理\",\"url\":\"\",\"icon\":\"fa fa-users\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"90\",\"status\":\"normal\"},\"ids\":\"92\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197652),
(365, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"武器及道具信息资料管理系统\",\"title\":\"武器及道具信息资料管理系统\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197767),
(366, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/138?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"226\",\"name\":\"firearm\",\"title\":\"枪械库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"138\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197775),
(367, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/156?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"226\",\"name\":\"prop\",\"title\":\"道具库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"156\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197782),
(368, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/198?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"226\",\"name\":\"meleeweapon\",\"title\":\"近战武器库\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"198\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197793),
(369, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/edit/ids/225?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"玩家数据\",\"title\":\"玩家数据系统\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"90\",\"status\":\"normal\"},\"ids\":\"225\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197816),
(370, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/ajax/upload', '', '{\"category\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197842),
(371, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/general.profile/update', '常规管理 / 个人资料 / 更新个人信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"\\/uploads\\/20220707\\/6c701b641c3685e02b257e4ad1863d41.jpeg\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"***\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197846),
(372, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/ajax/upload', '', '{\"category\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197886),
(373, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Fgeneral%2Fprofile%3Fref%3Daddtabs', '', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/general\\/profile?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"tqpv\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197897),
(374, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Fgeneral%2Fprofile%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/general\\/profile?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"gem3\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197900),
(375, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Fgeneral%2Fprofile%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/general\\/profile?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"v4bm\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197909),
(376, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/ajax/upload', '', '{\"category\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197928),
(377, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/general.profile/update', '常规管理 / 个人资料 / 更新个人信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"\\/uploads\\/20220707\\/2e16216f1b1d5fed00287951a2a2dd59.png\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"***\"}}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657197932),
(378, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"abgn\",\"keeplogin\":\"1\"}', '120.229.69.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', 1657201288),
(379, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=1\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204359),
(380, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204365),
(381, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204368),
(382, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_users\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204373),
(383, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_users\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204374),
(384, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204376),
(385, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204380),
(386, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204381),
(387, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204382),
(388, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204383),
(389, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Users.php\",\"action\":\"command\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204384),
(390, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Users.php\",\"action\":\"execute\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204385),
(391, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204432),
(392, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/43', '在线命令管理 / 运行', '{\"ids\":\"43\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204436),
(393, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/44', '在线命令管理 / 运行', '{\"ids\":\"44\"}', '183.233.227.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657204439),
(394, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"mpxs\"}', '117.181.8.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 1657274488),
(395, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ltm4\"}', '223.104.71.77', 'Mozilla/5.0 (Linux; Android 12; LSA-AN00 Build/HONORLSA-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/86.0.4240.99 XWEB/4263 MMWEBSDK/20220604 Mobile Safari/537.36 MMWEBID/1988 MicroMessenger/8.0.24.2180(0x280018C5) WeChat/arm64 Weix', 1657276646),
(397, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/auth/adminlog/del', '权限管理 / 管理员日志 / 删除', '{\"action\":\"del\",\"ids\":\"396\",\"params\":\"\"}', '117.181.8.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 1657291169),
(398, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"rnkm\"}', '223.73.233.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 1657353738),
(399, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"eicv\",\"keeplogin\":\"1\"}', '223.73.233.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 1657353744),
(400, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"zenb\"}', '120.229.69.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 1657354115),
(401, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/users/del', '玩家管理 / 删除', '{\"action\":\"del\",\"ids\":\"19\",\"params\":\"\"}', '120.229.69.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 1657359469),
(402, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"qjdt\",\"keeplogin\":\"1\"}', '183.233.227.49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.24(0x1800182c) NetType/WIFI Language/en', 1657364740),
(403, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Fauth%2Frule%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/auth\\/rule?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"mjqc\",\"keeplogin\":\"1\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378058),
(404, 0, 'Unknown', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Fauth%2Frule%3Fref%3Daddtabs', '', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/auth\\/rule?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"mjqc\",\"keeplogin\":\"1\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378065),
(405, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/index/login?url=%2Fgamemanage%2Fpublic%2FtRNwKVcaOQ.php%2Fauth%2Frule%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/gamemanage\\/public\\/tRNwKVcaOQ.php\\/auth\\/rule?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"dcch\",\"keeplogin\":\"1\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378069),
(406, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378105),
(407, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_property\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378112),
(408, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378117),
(409, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378117),
(410, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378117),
(411, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378117),
(412, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378122),
(413, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378122),
(414, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_property\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378131),
(415, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_property\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"user_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378131),
(416, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378134),
(417, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378136),
(418, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Property.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378139),
(419, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Property.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378139),
(420, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/47', '在线命令管理 / 运行', '{\"ids\":\"47\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378463),
(421, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378468),
(422, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_property\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378474),
(423, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378477),
(424, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378477),
(425, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378477),
(426, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378477),
(427, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378479),
(428, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378479),
(429, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_property\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378487),
(430, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_property\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378488),
(431, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378535),
(432, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378537),
(433, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378539),
(434, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378540),
(435, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378543),
(436, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378544),
(437, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378546),
(438, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Property.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378549),
(439, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Property.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378549),
(440, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378863),
(441, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_relationship\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378872),
(442, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378888),
(443, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378888),
(444, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378888),
(445, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378888),
(446, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378890),
(447, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378890),
(448, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_relationship\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"no\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378924),
(449, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_relationship\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"no\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378924),
(450, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378927),
(451, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378929),
(452, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378930),
(453, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378932),
(454, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Relationship.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378935),
(455, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Relationship.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378936),
(456, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378976),
(457, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_store\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378985),
(458, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378991),
(459, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378991),
(460, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378991),
(461, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378991),
(462, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378995),
(463, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657378995),
(464, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379028),
(465, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379030),
(466, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_store\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379033),
(467, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379038),
(468, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379038),
(469, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379038),
(470, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379038),
(471, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379040);
INSERT INTO `game_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(472, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379040),
(473, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_store\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"no\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379053),
(474, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_store\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"no\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379054),
(475, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379091),
(476, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_shopping_log\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379096),
(477, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379100),
(478, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379100),
(479, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379100),
(480, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379101),
(481, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379102),
(482, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379103),
(483, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379112),
(484, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379113),
(485, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379117),
(486, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379119),
(487, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379140),
(488, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379140),
(489, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379142),
(490, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379144),
(491, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"shoppinglog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379149),
(492, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"shoppinglog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379150),
(493, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379152),
(494, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379154),
(495, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Shoppinglog.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379157),
(496, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Shoppinglog.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379157),
(497, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379191),
(498, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_shopping_log\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379203),
(499, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379206),
(500, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379206),
(501, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379206),
(502, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379206),
(503, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379209),
(504, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379209),
(505, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"shoppinglog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"users_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379229),
(506, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_shopping_log\",\"controller\":\"shoppinglog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"users_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379233),
(507, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379237),
(508, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379240),
(509, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379242),
(510, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379243),
(511, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Shoppinglog.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379246),
(512, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Shoppinglog.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379247),
(513, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379439),
(514, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool_detail\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379445),
(515, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379487),
(516, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379487),
(517, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379487),
(518, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379487),
(519, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379501),
(520, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_prize_pool\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379501),
(521, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"prizepooldetail\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"pool_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379523),
(522, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_prize_pool_detail\",\"controller\":\"prizepooldetail\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_prize_pool\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"prize_pool_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"pool_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379524),
(523, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379527),
(524, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379529),
(525, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379531),
(526, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379533),
(527, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379535),
(528, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379536),
(529, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Prizepooldetail.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379538),
(530, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Prizepooldetail.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379539),
(531, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379583),
(532, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor_log\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379589),
(533, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379597),
(534, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379597),
(535, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379597),
(536, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379598),
(537, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379600),
(538, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379600),
(539, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379605),
(540, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379605),
(541, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379605),
(542, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379605),
(543, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379617),
(544, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_honor\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379618),
(545, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"honorlog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]},\"3\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379631),
(546, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_honor_log\",\"controller\":\"honorlog\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]},\"3\":{\"relation\":\"game_honor\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"honor_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379632),
(547, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379634),
(548, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379637),
(549, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379640),
(550, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379641),
(551, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"4\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379642),
(552, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379644),
(553, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379645),
(554, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379647),
(555, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379648),
(556, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honorlog.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379649),
(557, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Honorlog.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379651),
(558, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379740),
(559, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_rank\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379745),
(560, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379748),
(561, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379748),
(562, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379748),
(563, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379748),
(564, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379754),
(565, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379754),
(566, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_rank\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"users_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379773),
(567, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_rank\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"users_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379774),
(568, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379776),
(569, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379779),
(570, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379780),
(571, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379782),
(572, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Rank.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379784),
(573, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Rank.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379787),
(574, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Rank.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379787),
(575, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379803),
(576, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_rank\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379806),
(577, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379810),
(578, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379810),
(579, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379810),
(580, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_admin\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379810),
(581, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379823),
(582, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_field_list', '在线命令管理', '{\"table\":\"game_users\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379823),
(583, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_rank\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"users_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379838),
(584, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"game_rank\",\"controller\":\"\",\"model\":\"\",\"relation\":{\"2\":{\"relation\":\"game_users\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"users_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"nickname\",\"account\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"users_id\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379839);
INSERT INTO `game_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(585, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379842),
(586, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379845),
(587, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379846),
(588, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"3\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379848),
(589, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Rank.php\",\"action\":\"command\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379850),
(590, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Rank.php\",\"action\":\"execute\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379850),
(591, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/66', '在线命令管理 / 运行', '{\"ids\":\"66\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379944),
(592, 1, 'admin', '/gamemanage/public/tRNwKVcaOQ.php/command/execute/ids/67', '在线命令管理 / 运行', '{\"ids\":\"67\"}', '117.136.34.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 1657379946);

-- --------------------------------------------------------

--
-- 表的结构 `game_area`
--

CREATE TABLE `game_area` (
  `id` int NOT NULL COMMENT 'ID',
  `pid` int DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简称',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全称',
  `level` tinyint DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地区表';

-- --------------------------------------------------------

--
-- 表的结构 `game_attachment`
--

CREATE TABLE `game_attachment` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `admin_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` bigint DEFAULT NULL COMMENT '创建日期',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `uploadtime` bigint DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `game_attachment`
--

INSERT INTO `game_attachment` (`id`, `category`, `admin_id`, `user_id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filename`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, '', 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6'),
(2, '', 1, 0, '/uploads/20220707/6c701b641c3685e02b257e4ad1863d41.jpeg', '1333', '1333', 'jpeg', 0, '23954219-CB2D-4354-9E49-B4E366FCDA4E.jpeg', 533670, 'image/jpeg', '', 1657197842, 1657197842, 1657197842, 'local', 'a1234953df7b10239c7faf27166c7d8e2ff560c5'),
(3, '', 1, 0, '/uploads/20220707/2e16216f1b1d5fed00287951a2a2dd59.png', '200', '200', 'png', 0, '人物，男士，头像.png', 10100, 'image/png', '', 1657197928, 1657197928, 1657197928, 'local', '1c242635678589a732a735eba1ec3a3edae20c94');

-- --------------------------------------------------------

--
-- 表的结构 `game_auth_group`
--

CREATE TABLE `game_auth_group` (
  `id` int UNSIGNED NOT NULL,
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';

--
-- 转存表中的数据 `game_auth_group`
--

INSERT INTO `game_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal'),
(2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1491635035, 1491635035, 'normal'),
(3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1491635035, 1491635035, 'normal'),
(4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1491635035, 1491635035, 'normal'),
(5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `game_auth_group_access`
--

CREATE TABLE `game_auth_group_access` (
  `uid` int UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int UNSIGNED NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';

--
-- 转存表中的数据 `game_auth_group_access`
--

INSERT INTO `game_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `game_auth_rule`
--

CREATE TABLE `game_auth_rule` (
  `id` int UNSIGNED NOT NULL,
  `type` enum('menu','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

--
-- 转存表中的数据 `game_auth_rule`
--

INSERT INTO `game_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `url`, `condition`, `remark`, `ismenu`, `menutype`, `extend`, `py`, `pinyin`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 'kzt', 'kongzhitai', 1491635035, 1491635035, 143, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', '', 1, NULL, '', 'cggl', 'changguiguanli', 1491635035, 1491635035, 137, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 0, NULL, '', 'flgl', 'fenleiguanli', 1491635035, 1491635035, 119, 'normal'),
(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 0, NULL, '', 'cjgl', 'chajianguanli', 1491635035, 1657183588, 0, 'normal'),
(5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', '', 1, NULL, '', 'qxgl', 'quanxianguanli', 1491635035, 1491635035, 99, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', '', 'Config tips', 1, NULL, '', 'xtpz', 'xitongpeizhi', 1491635035, 1491635035, 60, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 'fjgl', 'fujianguanli', 1491635035, 1491635035, 53, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 'grzl', 'gerenziliao', 1491635035, 1491635035, 34, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 'glygl', 'guanliyuanguanli', 1491635035, 1491635035, 118, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 'glyrz', 'guanliyuanrizhi', 1491635035, 1491635035, 113, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 'jsz', 'juesezu', 1491635035, 1491635035, 109, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 'cdgz', 'caidanguize', 1491635035, 1491635035, 104, 'normal'),
(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 136, 'normal'),
(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 135, 'normal'),
(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 133, 'normal'),
(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 134, 'normal'),
(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 132, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 52, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 51, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 50, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 49, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 48, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', '', '', 1491635035, 1491635035, 59, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 58, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 57, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 56, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 55, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 54, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 33, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 32, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 31, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 30, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 29, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 28, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', '', '', 1491635035, 1491635035, 142, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 141, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 140, 'normal'),
(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 139, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 138, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', '', '', 1491635035, 1491635035, 117, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 116, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 115, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 114, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', '', '', 1491635035, 1491635035, 112, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 111, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 110, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', '', '', 1491635035, 1491635035, 108, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 107, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 106, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 105, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', '', '', 1491635035, 1491635035, 103, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 102, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 101, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 100, 'normal'),
(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(66, 'file', 0, 'user', 'User', 'fa fa-user-circle', '', '', '', 0, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1657184038, 0, 'normal'),
(67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal'),
(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 1, NULL, '', 'hyfz', 'huiyuanfenzu', 1491635035, 1491635035, 0, 'normal'),
(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'hygz', 'huiyuanguize', 1491635035, 1491635035, 0, 'normal'),
(80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(85, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', '', 1, NULL, '', 'zxmlgl', 'zaixianminglingguanli', 1657174857, 1657204359, 0, 'normal'),
(86, 'file', 85, 'command/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657174857, 1657174857, 0, 'normal'),
(87, 'file', 85, 'command/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657174857, 1657174857, 0, 'normal'),
(88, 'file', 85, 'command/detail', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1657174857, 1657174857, 0, 'normal'),
(89, 'file', 85, 'command/execute', '运行', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'yx', 'yunxing', 1657174857, 1657174857, 0, 'normal'),
(90, 'file', 85, 'command/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657174857, 1657174857, 0, 'normal'),
(91, 'file', 85, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657174857, 1657174857, 0, 'normal'),
(92, 'file', 225, 'users', '玩家管理', 'fa fa-users', '', '', '', 1, 'addtabs', '', 'wjgl', 'wanjiaguanli', 1657174934, 1657197652, 90, 'normal'),
(93, 'file', 92, 'users/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657174934, 1657204439, 0, 'normal'),
(94, 'file', 92, 'users/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657174934, 1657204439, 0, 'normal'),
(95, 'file', 92, 'users/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657174934, 1657204439, 0, 'normal'),
(96, 'file', 92, 'users/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657174934, 1657204439, 0, 'normal'),
(97, 'file', 92, 'users/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657174934, 1657204439, 0, 'normal'),
(98, 'file', 222, 'honor', '成就库', 'fa fa-list', '', '', '', 1, 'addtabs', '', 'cjk', 'chengjiuku', 1657182097, 1657186918, 0, 'normal'),
(112, 'file', 225, 'store', '玩家仓库', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'wjck', 'wanjiacangku', 1657182097, 1657197634, 0, 'normal'),
(113, 'file', 112, 'store/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657182097, 0, 'normal'),
(114, 'file', 112, 'store/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657182097, 0, 'normal'),
(115, 'file', 112, 'store/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657182097, 0, 'normal'),
(116, 'file', 112, 'store/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657182097, 0, 'normal'),
(117, 'file', 112, 'store/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657182097, 0, 'normal'),
(138, 'file', 226, 'firearm', '枪械库', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'qxk', 'qiangxieku', 1657182097, 1657197775, 0, 'normal'),
(139, 'file', 138, 'firearm/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657182097, 0, 'normal'),
(140, 'file', 138, 'firearm/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657182097, 0, 'normal'),
(141, 'file', 138, 'firearm/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657182097, 0, 'normal'),
(142, 'file', 138, 'firearm/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657182097, 0, 'normal'),
(143, 'file', 138, 'firearm/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657182097, 0, 'normal'),
(144, 'file', 224, 'shop', '商城', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'sc', 'shangcheng', 1657182097, 1657197540, 0, 'normal'),
(145, 'file', 144, 'shop/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657182097, 0, 'normal'),
(146, 'file', 144, 'shop/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657182097, 0, 'normal'),
(147, 'file', 144, 'shop/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657182097, 0, 'normal'),
(148, 'file', 144, 'shop/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657182097, 0, 'normal'),
(149, 'file', 144, 'shop/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657182097, 0, 'normal'),
(150, 'file', 225, 'property', '玩家财产', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'wjcc', 'wanjiacaichan', 1657182097, 1657197613, 0, 'normal'),
(151, 'file', 150, 'property/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657378549, 0, 'normal'),
(152, 'file', 150, 'property/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657378549, 0, 'normal'),
(153, 'file', 150, 'property/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657378549, 0, 'normal'),
(154, 'file', 150, 'property/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657378549, 0, 'normal'),
(155, 'file', 150, 'property/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657378549, 0, 'normal'),
(156, 'file', 226, 'prop', '道具库', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'djk', 'daojuku', 1657182097, 1657197782, 0, 'normal'),
(157, 'file', 156, 'prop/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657182097, 0, 'normal'),
(158, 'file', 156, 'prop/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657182097, 0, 'normal'),
(159, 'file', 156, 'prop/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657182097, 0, 'normal'),
(160, 'file', 156, 'prop/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657182097, 0, 'normal'),
(161, 'file', 156, 'prop/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657182097, 0, 'normal'),
(162, 'file', 225, 'rank', '天梯积分', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'ttjf', 'tiantijifen', 1657182097, 1657197621, 0, 'normal'),
(163, 'file', 162, 'rank/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657379946, 0, 'normal'),
(164, 'file', 162, 'rank/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657379946, 0, 'normal'),
(165, 'file', 162, 'rank/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657379946, 0, 'normal'),
(166, 'file', 162, 'rank/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657379946, 0, 'normal'),
(167, 'file', 162, 'rank/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657379946, 0, 'normal'),
(168, 'file', 225, 'relationship', '玩家好友关系', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'wjhygx', 'wanjiahaoyouguanxi', 1657182097, 1657197627, 0, 'normal'),
(169, 'file', 168, 'relationship/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657378936, 0, 'normal'),
(170, 'file', 168, 'relationship/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657378936, 0, 'normal'),
(171, 'file', 168, 'relationship/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657378936, 0, 'normal'),
(172, 'file', 168, 'relationship/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657378936, 0, 'normal'),
(173, 'file', 168, 'relationship/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657378936, 0, 'normal'),
(174, 'file', 98, 'honor/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657182097, 1657182478, 0, 'normal'),
(175, 'file', 98, 'honor/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657182097, 1657182478, 0, 'normal'),
(176, 'file', 98, 'honor/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657182097, 1657182478, 0, 'normal'),
(177, 'file', 98, 'honor/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657182097, 1657182478, 0, 'normal'),
(178, 'file', 98, 'honor/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657182097, 1657182478, 0, 'normal'),
(192, 'file', 222, 'honorlog', '成就记录', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'cjjl', 'chengjiujilu', 1657183234, 1657186926, 0, 'normal'),
(193, 'file', 192, 'honorlog/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657183234, 1657379651, 0, 'normal'),
(194, 'file', 192, 'honorlog/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657183234, 1657379651, 0, 'normal'),
(195, 'file', 192, 'honorlog/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657183234, 1657379651, 0, 'normal'),
(196, 'file', 192, 'honorlog/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657183234, 1657379651, 0, 'normal'),
(197, 'file', 192, 'honorlog/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657183234, 1657379651, 0, 'normal'),
(198, 'file', 226, 'meleeweapon', '近战武器库', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'jzwqk', 'jinzhanwuqiku', 1657183314, 1657197793, 0, 'normal'),
(199, 'file', 198, 'meleeweapon/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657183314, 1657183314, 0, 'normal'),
(200, 'file', 198, 'meleeweapon/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657183314, 1657183314, 0, 'normal'),
(201, 'file', 198, 'meleeweapon/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657183314, 1657183314, 0, 'normal'),
(202, 'file', 198, 'meleeweapon/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657183314, 1657183314, 0, 'normal'),
(203, 'file', 198, 'meleeweapon/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657183314, 1657183314, 0, 'normal'),
(204, 'file', 224, 'shoppinglog', '玩家购买记录', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'wjgmjl', 'wanjiagoumaijilu', 1657183385, 1657197564, 0, 'normal'),
(205, 'file', 204, 'shoppinglog/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657183385, 1657379247, 0, 'normal'),
(206, 'file', 204, 'shoppinglog/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657183385, 1657379247, 0, 'normal'),
(207, 'file', 204, 'shoppinglog/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657183385, 1657379247, 0, 'normal'),
(208, 'file', 204, 'shoppinglog/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657183385, 1657379247, 0, 'normal'),
(209, 'file', 204, 'shoppinglog/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657183385, 1657379247, 0, 'normal'),
(210, 'file', 223, 'prizepooldetail', '奖池详情', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'jcxq', 'jiangchixiangqing', 1657183466, 1657197506, 0, 'normal'),
(211, 'file', 210, 'prizepooldetail/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657183466, 1657379539, 0, 'normal'),
(212, 'file', 210, 'prizepooldetail/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657183466, 1657379539, 0, 'normal'),
(213, 'file', 210, 'prizepooldetail/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657183466, 1657379539, 0, 'normal'),
(214, 'file', 210, 'prizepooldetail/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657183466, 1657379539, 0, 'normal'),
(215, 'file', 210, 'prizepooldetail/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657183466, 1657379539, 0, 'normal'),
(216, 'file', 223, 'prizepool', '奖池', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'jc', 'jiangchi', 1657183550, 1657197498, 0, 'normal'),
(217, 'file', 216, 'prizepool/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1657183550, 1657183550, 0, 'normal'),
(218, 'file', 216, 'prizepool/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1657183550, 1657183550, 0, 'normal'),
(219, 'file', 216, 'prizepool/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1657183550, 1657183550, 0, 'normal'),
(220, 'file', 216, 'prizepool/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1657183550, 1657183550, 0, 'normal'),
(221, 'file', 216, 'prizepool/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1657183550, 1657183550, 0, 'normal'),
(222, 'file', 0, '成就系统', '成就系统', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'cjxt', 'chengjiuxitong', 1657186908, 1657186908, 0, 'normal'),
(223, 'file', 0, '抽奖系统', '抽奖系统', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'cjxt', 'choujiangxitong', 1657197487, 1657197487, 0, 'normal'),
(224, 'file', 0, '商城系统', '商城系统', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'scxt', 'shangchengxitong', 1657197523, 1657197523, 0, 'normal'),
(225, 'file', 0, '玩家数据', '玩家数据系统', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'wjsjxt', 'wanjiashujuxitong', 1657197587, 1657197816, 90, 'normal'),
(226, 'file', 0, '武器及道具信息资料管理系统', '武器及道具信息资料管理系统', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'wqjdjxxzlglxt', 'wuqijidaojuxinxiziliaoguanlixitong', 1657197767, 1657197767, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `game_category`
--

CREATE TABLE `game_category` (
  `id` int UNSIGNED NOT NULL,
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

--
-- 转存表中的数据 `game_category`
--

INSERT INTO `game_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal'),
(12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal'),
(13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `game_command`
--

CREATE TABLE `game_command` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` int UNSIGNED DEFAULT NULL COMMENT '执行时间',
  `createtime` int UNSIGNED DEFAULT NULL COMMENT '创建时间',
  `updatetime` int UNSIGNED DEFAULT NULL COMMENT '更新时间',
  `status` enum('successed','failured') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'failured' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='在线命令表';

--
-- 转存表中的数据 `game_command`
--

INSERT INTO `game_command` (`id`, `type`, `params`, `command`, `content`, `executetime`, `createtime`, `updatetime`, `status`) VALUES
(1, 'crud', '[\"--table=game_users\"]', 'php think crud --table=game_users', 'Primary key not found!', 1657174899, 1657174899, 1657174899, 'failured'),
(2, 'crud', '[\"--table=game_users\"]', 'php think crud --table=game_users', 'Build Successed', 1657174922, 1657174922, 1657174922, 'successed'),
(3, 'menu', '[\"--controller=Users\"]', 'php think menu --controller=Users', 'Build Successed!', 1657174934, 1657174934, 1657174934, 'successed'),
(4, 'crud', '[\"--table=game_users\"]', 'php think crud --table=game_users', 'controller already exists!\nIf you need to rebuild again, use the parameter --force=true', 1657175028, 1657175028, 1657175028, 'failured'),
(5, 'crud', '[\"--force=1\",\"--table=game_users\"]', 'php think crud --force=1 --table=game_users', 'Build Successed', 1657175045, 1657175045, 1657175045, 'successed'),
(6, 'menu', '[\"--controller=Users\"]', 'php think menu --controller=Users', 'Build Successed!', 1657175054, 1657175054, 1657175054, 'successed'),
(7, 'crud', '[\"--force=1\",\"--table=game_firearm\"]', 'php think crud --force=1 --table=game_firearm', 'Build Successed', 1657181724, 1657181724, 1657181724, 'successed'),
(8, 'crud', '[\"--force=1\",\"--table=game_honor\"]', 'php think crud --force=1 --table=game_honor', 'Build Successed', 1657181730, 1657181730, 1657181730, 'successed'),
(9, 'crud', '[\"--force=1\",\"--table=game_honor_log\",\"--relation=game_honor\",\"--relationmode=belongsto\",\"--relationforeignkey=honor_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_honor_log --relation=game_honor --relationmode=belongsto --relationforeignkey=honor_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657181799, 1657181799, 1657181799, 'successed'),
(10, 'crud', '[\"--force=1\",\"--table=game_melee_weapon\"]', 'php think crud --force=1 --table=game_melee_weapon', 'Build Successed', 1657181812, 1657181812, 1657181812, 'successed'),
(11, 'crud', '[\"--force=1\",\"--table=game_prize_pool\"]', 'php think crud --force=1 --table=game_prize_pool', 'Build Successed', 1657181817, 1657181817, 1657181817, 'successed'),
(12, 'crud', '[\"--force=1\",\"--table=game_prize_pool_detail\",\"--relation=game_prize_pool\",\"--relationmode=belongsto\",\"--relationforeignkey=prize_pool_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_prize_pool_detail --relation=game_prize_pool --relationmode=belongsto --relationforeignkey=prize_pool_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657181847, 1657181847, 1657181847, 'successed'),
(13, 'crud', '[\"--force=1\",\"--table=game_prize_pool_detail\",\"--relation=game_prize_pool\",\"--relationmode=belongsto\",\"--relationforeignkey=prize_pool_id\",\"--relationprimarykey=id\",\"--relationfields=id,name\"]', 'php think crud --force=1 --table=game_prize_pool_detail --relation=game_prize_pool --relationmode=belongsto --relationforeignkey=prize_pool_id --relationprimarykey=id --relationfields=id,name', 'Build Successed', 1657181864, 1657181864, 1657181864, 'successed'),
(14, 'crud', '[\"--force=1\",\"--table=game_prop\"]', 'php think crud --force=1 --table=game_prop', 'Build Successed', 1657181876, 1657181876, 1657181876, 'successed'),
(15, 'crud', '[\"--force=1\",\"--table=game_property\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=id,nickname,account\"]', 'php think crud --force=1 --table=game_property --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=id,nickname,account', 'Build Successed', 1657181911, 1657181911, 1657181911, 'successed'),
(16, 'crud', '[\"--force=1\",\"--table=game_rank\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=id,nickname,account\"]', 'php think crud --force=1 --table=game_rank --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=id,nickname,account', 'Build Successed', 1657181935, 1657181935, 1657181935, 'successed'),
(17, 'crud', '[\"--force=1\",\"--table=game_relationship\"]', 'php think crud --force=1 --table=game_relationship', 'Build Successed', 1657181998, 1657181998, 1657181998, 'successed'),
(18, 'crud', '[\"--force=1\",\"--table=game_shop\"]', 'php think crud --force=1 --table=game_shop', 'Build Successed', 1657182012, 1657182012, 1657182012, 'successed'),
(19, 'crud', '[\"--force=1\",\"--table=game_shopping_log\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=id,nickname,account\"]', 'php think crud --force=1 --table=game_shopping_log --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=id,nickname,account', 'Build Successed', 1657182030, 1657182030, 1657182030, 'successed'),
(20, 'crud', '[\"--force=1\",\"--table=game_store\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=id,nickname,account\"]', 'php think crud --force=1 --table=game_store --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=id,nickname,account', 'Build Successed', 1657182048, 1657182048, 1657182048, 'successed'),
(21, 'menu', '[\"--controller=honor\\/Log\",\"--controller=shopping\\/Log\",\"--controller=Store\",\"--controller=prize\\/Pool\",\"--controller=prize\\/pool\\/Detail\",\"--controller=melee\\/Weapon\",\"--controller=Firearm\",\"--controller=Shop\",\"--controller=Property\",\"--controller=Prop\",\"--controller=Rank\",\"--controller=Relationship\",\"--controller=Honor\"]', 'php think menu --controller=honor/Log --controller=shopping/Log --controller=Store --controller=prize/Pool --controller=prize/pool/Detail --controller=melee/Weapon --controller=Firearm --controller=Shop --controller=Property --controller=Prop --controller=Rank --controller=Relationship --controller=Honor', 'Build Successed!', 1657182097, 1657182097, 1657182097, 'successed'),
(22, 'crud', '[\"--table=game_honor_log\"]', 'php think crud --table=game_honor_log', 'controller already exists!\nIf you need to rebuild again, use the parameter --force=true', 1657182406, 1657182406, 1657182406, 'failured'),
(23, 'crud', '[\"--table=game_honor\"]', 'php think crud --table=game_honor', 'controller already exists!\nIf you need to rebuild again, use the parameter --force=true', 1657182419, 1657182419, 1657182419, 'failured'),
(24, 'crud', '[\"--force=1\",\"--table=game_honor\"]', 'php think crud --force=1 --table=game_honor', 'Build Successed', 1657182439, 1657182439, 1657182439, 'successed'),
(25, 'menu', '[\"--controller=Honor\"]', 'php think menu --controller=Honor', 'Build Successed!', 1657182478, 1657182478, 1657182478, 'successed'),
(26, 'menu', '[\"--controller=honor\\/Log\"]', 'php think menu --controller=honor/Log', 'Build Successed!', 1657182634, 1657182634, 1657182634, 'successed'),
(27, 'crud', '[\"--force=1\",\"--table=game_honor_log\",\"--relation=game_honor\",\"--relationmode=belongsto\",\"--relationforeignkey=honor_id\",\"--relationprimarykey=id\",\"--relationfields=name\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_honor_log --relation=game_honor --relationmode=belongsto --relationforeignkey=honor_id --relationprimarykey=id --relationfields=name --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657182770, 1657182770, 1657182770, 'successed'),
(28, 'menu', '[\"--controller=honor\\/Log\"]', 'php think menu --controller=honor/Log', 'Build Successed!', 1657182801, 1657182801, 1657182801, 'successed'),
(29, 'crud', '[\"--force=1\",\"--table=game_honor_log\",\"--controller=honor_log\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\",\"--relation=game_honor\",\"--relationmode=belongsto\",\"--relationforeignkey=honor_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_honor_log --controller=honor_log --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=nickname,account --relation=game_honor --relationmode=belongsto --relationforeignkey=honor_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657183124, 1657183124, 1657183124, 'successed'),
(30, 'menu', '[\"--controller=Honor_log\"]', 'php think menu --controller=Honor_log', 'controller not found', 1657183135, 1657183135, 1657183135, 'successed'),
(31, 'menu', '[\"--controller=Honor_log\"]', 'php think menu --controller=Honor_log', 'controller not found', 1657183152, 1657183152, 1657183152, 'successed'),
(32, 'menu', '[\"--controller=Honor_log\"]', 'php think menu --controller=Honor_log', 'controller not found', 1657183170, 1657183170, 1657183170, 'successed'),
(33, 'crud', '[\"--force=1\",\"--table=game_honor_log\",\"--controller=honorlog\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\",\"--relation=game_honor\",\"--relationmode=belongsto\",\"--relationforeignkey=honor_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_honor_log --controller=honorlog --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=nickname,account --relation=game_honor --relationmode=belongsto --relationforeignkey=honor_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657183226, 1657183226, 1657183227, 'successed'),
(34, 'menu', '[\"--controller=Honorlog\"]', 'php think menu --controller=Honorlog', 'Build Successed!', 1657183234, 1657183234, 1657183234, 'successed'),
(35, 'crud', '[\"--force=1\",\"--table=game_melee_weapon\",\"--controller=meleeweapon\"]', 'php think crud --force=1 --table=game_melee_weapon --controller=meleeweapon', 'Build Successed', 1657183305, 1657183305, 1657183305, 'successed'),
(36, 'menu', '[\"--controller=Meleeweapon\"]', 'php think menu --controller=Meleeweapon', 'Build Successed!', 1657183314, 1657183314, 1657183314, 'successed'),
(37, 'crud', '[\"--force=1\",\"--table=game_shopping_log\",\"--controller=shoppinglog\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_shopping_log --controller=shoppinglog --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657183372, 1657183372, 1657183372, 'successed'),
(38, 'menu', '[\"--controller=Shoppinglog\"]', 'php think menu --controller=Shoppinglog', 'Build Successed!', 1657183385, 1657183385, 1657183385, 'successed'),
(39, 'crud', '[\"--force=1\",\"--table=game_prize_pool_detail\",\"--controller=prizepooldetail\",\"--relation=game_prize_pool\",\"--relationmode=belongsto\",\"--relationforeignkey=prize_pool_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_prize_pool_detail --controller=prizepooldetail --relation=game_prize_pool --relationmode=belongsto --relationforeignkey=prize_pool_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657183452, 1657183452, 1657183452, 'successed'),
(40, 'menu', '[\"--controller=Prizepooldetail\"]', 'php think menu --controller=Prizepooldetail', 'Build Successed!', 1657183466, 1657183466, 1657183466, 'successed'),
(41, 'crud', '[\"--force=1\",\"--table=game_prize_pool\",\"--controller=prizepool\"]', 'php think crud --force=1 --table=game_prize_pool --controller=prizepool', 'Build Successed', 1657183539, 1657183539, 1657183539, 'successed'),
(42, 'menu', '[\"--controller=Prizepool\"]', 'php think menu --controller=Prizepool', 'Build Successed!', 1657183550, 1657183550, 1657183550, 'successed'),
(43, 'crud', '[\"--force=1\",\"--table=game_users\"]', 'php think crud --force=1 --table=game_users', 'Build Successed', 1657204374, 1657204374, 1657204374, 'successed'),
(44, 'menu', '[\"--controller=Users\"]', 'php think menu --controller=Users', 'Build Successed!', 1657204385, 1657204385, 1657204385, 'successed'),
(45, 'crud', '[\"--force=1\",\"--table=game_users\"]', 'php think crud --force=1 --table=game_users', 'Build Successed', 1657204436, 1657204436, 1657204436, 'successed'),
(46, 'menu', '[\"--controller=Users\"]', 'php think menu --controller=Users', 'Build Successed!', 1657204439, 1657204439, 1657204439, 'successed'),
(47, 'crud', '[\"--force=1\",\"--table=game_property\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_property --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657378131, 1657378131, 1657378131, 'successed'),
(48, 'menu', '[\"--controller=Property\"]', 'php think menu --controller=Property', 'Build Successed!', 1657378139, 1657378139, 1657378139, 'successed'),
(49, 'crud', '[\"--force=1\",\"--table=game_property\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=user_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_property --relation=game_users --relationmode=belongsto --relationforeignkey=user_id --relationprimarykey=id --relationfields=nickname,account', 'table [game_property] must be contain field [user_id]', 1657378463, 1657378463, 1657378463, 'failured'),
(50, 'crud', '[\"--force=1\",\"--table=game_property\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_property --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657378487, 1657378487, 1657378488, 'successed'),
(51, 'menu', '[\"--controller=Property\"]', 'php think menu --controller=Property', 'Build Successed!', 1657378549, 1657378549, 1657378549, 'successed'),
(52, 'crud', '[\"--force=1\",\"--table=game_relationship\",\"--selectpagesuffix=no\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_relationship --selectpagesuffix=no --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657378924, 1657378924, 1657378924, 'successed'),
(53, 'menu', '[\"--controller=Relationship\"]', 'php think menu --controller=Relationship', 'Build Successed!', 1657378936, 1657378936, 1657378936, 'successed'),
(54, 'crud', '[\"--force=1\",\"--table=game_store\",\"--selectpagesuffix=no\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_store --selectpagesuffix=no --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379054, 1657379054, 1657379054, 'successed'),
(55, 'crud', '[\"--force=1\",\"--table=game_shopping_log\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_shopping_log --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379113, 1657379113, 1657379113, 'successed'),
(56, 'crud', '[\"--force=1\",\"--table=game_shopping_log\",\"--controller=shoppinglog\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_shopping_log --controller=shoppinglog --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379150, 1657379150, 1657379150, 'successed'),
(57, 'menu', '[\"--controller=Shoppinglog\"]', 'php think menu --controller=Shoppinglog', 'Build Successed!', 1657379157, 1657379157, 1657379157, 'successed'),
(58, 'crud', '[\"--force=1\",\"--table=game_shopping_log\",\"--controller=shoppinglog\",\"--selectpagesuffix=users_id\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_shopping_log --controller=shoppinglog --selectpagesuffix=users_id --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379233, 1657379233, 1657379233, 'successed'),
(59, 'menu', '[\"--controller=Shoppinglog\"]', 'php think menu --controller=Shoppinglog', 'Build Successed!', 1657379247, 1657379247, 1657379247, 'successed'),
(60, 'crud', '[\"--force=1\",\"--table=game_prize_pool_detail\",\"--controller=prizepooldetail\",\"--selectpagesuffix=pool_id\",\"--relation=game_prize_pool\",\"--relationmode=belongsto\",\"--relationforeignkey=prize_pool_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_prize_pool_detail --controller=prizepooldetail --selectpagesuffix=pool_id --relation=game_prize_pool --relationmode=belongsto --relationforeignkey=prize_pool_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657379524, 1657379524, 1657379524, 'successed'),
(61, 'menu', '[\"--controller=Prizepooldetail\"]', 'php think menu --controller=Prizepooldetail', 'Build Successed!', 1657379538, 1657379539, 1657379539, 'successed'),
(62, 'crud', '[\"--force=1\",\"--table=game_honor_log\",\"--controller=honorlog\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\",\"--relation=game_honor\",\"--relationmode=belongsto\",\"--relationforeignkey=honor_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=game_honor_log --controller=honorlog --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account --relation=game_honor --relationmode=belongsto --relationforeignkey=honor_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1657379631, 1657379631, 1657379632, 'successed'),
(63, 'menu', '[\"--controller=Honorlog\"]', 'php think menu --controller=Honorlog', 'Build Successed!', 1657379651, 1657379651, 1657379651, 'successed'),
(64, 'crud', '[\"--force=1\",\"--table=game_rank\",\"--selectpagesuffix=users_id\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_rank --selectpagesuffix=users_id --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379773, 1657379773, 1657379773, 'successed'),
(65, 'menu', '[\"--controller=Rank\"]', 'php think menu --controller=Rank', 'Build Successed!', 1657379787, 1657379787, 1657379787, 'successed'),
(66, 'crud', '[\"--force=1\",\"--table=game_rank\",\"--selectpagesuffix=users_id\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_rank --selectpagesuffix=users_id --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379839, 1657379839, 1657379839, 'successed'),
(67, 'menu', '[\"--controller=Rank\"]', 'php think menu --controller=Rank', 'Build Successed!', 1657379850, 1657379850, 1657379850, 'successed'),
(68, 'crud', '[\"--force=1\",\"--table=game_rank\",\"--selectpagesuffix=users_id\",\"--relation=game_users\",\"--relationmode=belongsto\",\"--relationforeignkey=users_id\",\"--relationprimarykey=id\",\"--relationfields=nickname,account\"]', 'php think crud --force=1 --table=game_rank --selectpagesuffix=users_id --relation=game_users --relationmode=belongsto --relationforeignkey=users_id --relationprimarykey=id --relationfields=nickname,account', 'Build Successed', 1657379944, 1657379944, 1657379944, 'successed'),
(69, 'menu', '[\"--controller=Rank\"]', 'php think menu --controller=Rank', 'Build Successed!', 1657379946, 1657379946, 1657379946, 'successed');

-- --------------------------------------------------------

--
-- 表的结构 `game_config`
--

CREATE TABLE `game_config` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '可见条件',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';

--
-- 转存表中的数据 `game_config`
--

INSERT INTO `game_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `visible`, `value`, `content`, `rule`, `extend`, `setting`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '', 'LTC_game', '', 'required', '', ''),
(2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '', '', ''),
(3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '', '1.0.4', '', 'required', '', ''),
(5, 'timezone', 'basic', 'Timezone', '', 'string', '', 'Asia/Shanghai', '', 'required', '', ''),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', '', ''),
(7, 'languages', 'basic', 'Languages', '', 'array', '', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '', ''),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', '', 'dashboard', '', 'required', '', ''),
(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '', ''),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '', ''),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '', '1', '[\"请选择\",\"SMTP\"]', '', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', '', 'smtp.qq.com', '', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '', '465', '', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '', '10000', '', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', '', 'password', '', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '', '10000@qq.com', '', '', '', ''),
(18, 'attachmentcategory', 'dictionary', 'Attachment category', '', 'array', '', '{\"category1\":\"Category1\",\"category2\":\"Category2\",\"custom\":\"Custom\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `game_ems`
--

CREATE TABLE `game_ems` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `game_firearm`
--

CREATE TABLE `game_firearm` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL COMMENT '枪械名字',
  `damage` int NOT NULL COMMENT '单次伤害',
  `distance` int NOT NULL COMMENT '攻击距离',
  `magnification` int NOT NULL COMMENT '开镜倍数',
  `durability` int NOT NULL COMMENT '耐久度',
  `introduction` varchar(512) NOT NULL COMMENT '介绍说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_honor`
--

CREATE TABLE `game_honor` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL COMMENT '名字',
  `introduction` varchar(512) NOT NULL COMMENT '介绍说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_honor_log`
--

CREATE TABLE `game_honor_log` (
  `id` int NOT NULL,
  `users_id` int NOT NULL COMMENT '玩家id',
  `honor_id` int NOT NULL COMMENT '成就编号',
  `time` datetime NOT NULL COMMENT '获取日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_melee_weapon`
--

CREATE TABLE `game_melee_weapon` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '名字',
  `damage` int NOT NULL COMMENT '单次伤害',
  `damagepro` int NOT NULL COMMENT '单次重击伤害',
  `distance` int NOT NULL COMMENT '攻击距离',
  `durability` int NOT NULL COMMENT '耐久度',
  `introduction` varchar(512) NOT NULL COMMENT '介绍说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_prize_pool`
--

CREATE TABLE `game_prize_pool` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL COMMENT '奖池名称',
  `starttime` datetime NOT NULL COMMENT '开始日期',
  `endtime` datetime NOT NULL COMMENT '结束日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_prize_pool_detail`
--

CREATE TABLE `game_prize_pool_detail` (
  `id` int NOT NULL,
  `type` enum('firearm','melee_weapon','prop') NOT NULL COMMENT '物品类型',
  `stuff_id` int NOT NULL COMMENT '物品id',
  `weight` int NOT NULL COMMENT '权重（用于计算中奖率）',
  `prize_pool_id` int NOT NULL COMMENT '奖池id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_prop`
--

CREATE TABLE `game_prop` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL COMMENT '名字',
  `introduction` varchar(512) NOT NULL COMMENT '说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_property`
--

CREATE TABLE `game_property` (
  `id` int NOT NULL,
  `token` int NOT NULL COMMENT '游戏币',
  `ticket` int NOT NULL COMMENT '点券',
  `users_id` int NOT NULL COMMENT '玩家id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_rank`
--

CREATE TABLE `game_rank` (
  `id` int NOT NULL,
  `users_id` int NOT NULL COMMENT '玩家id',
  `rank_point` int NOT NULL COMMENT '天梯积分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_relationship`
--

CREATE TABLE `game_relationship` (
  `id` int NOT NULL,
  `users_id` int NOT NULL COMMENT '玩家id',
  `friend_users_id` int NOT NULL COMMENT '好友玩家id',
  `time` int NOT NULL COMMENT '添加日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_shop`
--

CREATE TABLE `game_shop` (
  `id` int NOT NULL,
  `type` enum('firearm','melee_weapon','prop') NOT NULL COMMENT '商品类型',
  `stuff_id` int NOT NULL COMMENT '商品id',
  `num` int NOT NULL COMMENT '商品数量',
  `token_price` int NOT NULL COMMENT '游戏币价格',
  `ticket_price` int NOT NULL COMMENT '点券价格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_shopping_log`
--

CREATE TABLE `game_shopping_log` (
  `id` int NOT NULL,
  `type` enum('firearm','melee_weapon','prop') NOT NULL COMMENT '商品类型',
  `stuff_id` int NOT NULL COMMENT '商品id',
  `token_price` int NOT NULL COMMENT '游戏币支出',
  `ticket_price` int NOT NULL COMMENT '点券支出',
  `time` datetime NOT NULL COMMENT '交易时间',
  `users_id` int NOT NULL COMMENT '玩家id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_sms`
--

CREATE TABLE `game_sms` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint UNSIGNED DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `game_store`
--

CREATE TABLE `game_store` (
  `id` int NOT NULL,
  `type` enum('firearm','melee_weapon','prop') NOT NULL COMMENT '物品类型',
  `stuff_id` int NOT NULL COMMENT '物品id',
  `users_id` int NOT NULL COMMENT '玩家编号',
  `createtime` datetime NOT NULL COMMENT '获取时间',
  `expiredtime` datetime NOT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_test`
--

CREATE TABLE `game_test` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int DEFAULT '0' COMMENT '会员ID',
  `admin_id` int DEFAULT '0' COMMENT '管理员ID',
  `category_id` int UNSIGNED DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '价格',
  `views` int UNSIGNED DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` bigint DEFAULT NULL COMMENT '刷新时间',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint DEFAULT NULL COMMENT '删除时间',
  `weigh` int DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';

--
-- 转存表中的数据 `game_test`
--

INSERT INTO `game_test` (`id`, `user_id`, `admin_id`, `category_id`, `category_ids`, `tags`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `json`, `multiplejson`, `price`, `views`, `workrange`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `deletetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 1, 1, 12, '12,13', '互联网,计算机', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '[{\"title\":\"标题一\",\"intro\":\"介绍一\",\"author\":\"小明\",\"age\":\"21\"}]', '0.00', 0, '2020-10-01 00:00:00 - 2021-10-31 23:59:59', '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `game_user`
--

CREATE TABLE `game_user` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `level` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` bigint DEFAULT NULL COMMENT '上次登录时间',
  `logintime` bigint DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` bigint DEFAULT NULL COMMENT '加入时间',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

--
-- 转存表中的数据 `game_user`
--

INSERT INTO `game_user` (`id`, `group_id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `money`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
(1, 1, 'admin', 'admin', 'c29ae2ed81942054ed4294767f9d5822', 'ab59ab', 'admin@163.com', '13888888888', 'http://localhost/assets/img/avatar.png', 0, 0, '2017-04-08', '', '0.00', 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1491635035, '', 'normal', '');

-- --------------------------------------------------------

--
-- 表的结构 `game_users`
--

CREATE TABLE `game_users` (
  `id` int NOT NULL,
  `nickname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '昵称',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `phone` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码（md5加密）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `game_user_group`
--

CREATE TABLE `game_user_group` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '权限节点',
  `createtime` bigint DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';

--
-- 转存表中的数据 `game_user_group`
--

INSERT INTO `game_user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `game_user_money_log`
--

CREATE TABLE `game_user_money_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';

-- --------------------------------------------------------

--
-- 表的结构 `game_user_rule`
--

CREATE TABLE `game_user_rule` (
  `id` int UNSIGNED NOT NULL,
  `pid` int DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `weigh` int DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';

--
-- 转存表中的数据 `game_user_rule`
--

INSERT INTO `game_user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'index', 'Frontend', '', 1, 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'api', 'API Interface', '', 1, 1491635035, 1491635035, 2, 'normal'),
(3, 1, 'user', 'User Module', '', 1, 1491635035, 1491635035, 12, 'normal'),
(4, 2, 'user', 'User Module', '', 1, 1491635035, 1491635035, 11, 'normal'),
(5, 3, 'index/user/login', 'Login', '', 0, 1491635035, 1491635035, 5, 'normal'),
(6, 3, 'index/user/register', 'Register', '', 0, 1491635035, 1491635035, 7, 'normal'),
(7, 3, 'index/user/index', 'User Center', '', 0, 1491635035, 1491635035, 9, 'normal'),
(8, 3, 'index/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 4, 'normal'),
(9, 4, 'api/user/login', 'Login', '', 0, 1491635035, 1491635035, 6, 'normal'),
(10, 4, 'api/user/register', 'Register', '', 0, 1491635035, 1491635035, 8, 'normal'),
(11, 4, 'api/user/index', 'User Center', '', 0, 1491635035, 1491635035, 10, 'normal'),
(12, 4, 'api/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 3, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `game_user_score_log`
--

CREATE TABLE `game_user_score_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `game_user_token`
--

CREATE TABLE `game_user_token` (
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `expiretime` bigint DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';

-- --------------------------------------------------------

--
-- 表的结构 `game_version`
--

CREATE TABLE `game_version` (
  `id` int NOT NULL COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` bigint DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint DEFAULT NULL COMMENT '更新时间',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本表';

--
-- 转储表的索引
--

--
-- 表的索引 `game_admin`
--
ALTER TABLE `game_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- 表的索引 `game_admin_log`
--
ALTER TABLE `game_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- 表的索引 `game_area`
--
ALTER TABLE `game_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `game_attachment`
--
ALTER TABLE `game_attachment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_auth_group`
--
ALTER TABLE `game_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_auth_group_access`
--
ALTER TABLE `game_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- 表的索引 `game_auth_rule`
--
ALTER TABLE `game_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- 表的索引 `game_category`
--
ALTER TABLE `game_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `game_command`
--
ALTER TABLE `game_command`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `game_config`
--
ALTER TABLE `game_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `game_ems`
--
ALTER TABLE `game_ems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `game_firearm`
--
ALTER TABLE `game_firearm`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_honor`
--
ALTER TABLE `game_honor`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_honor_log`
--
ALTER TABLE `game_honor_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_melee_weapon`
--
ALTER TABLE `game_melee_weapon`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_prize_pool`
--
ALTER TABLE `game_prize_pool`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_prize_pool_detail`
--
ALTER TABLE `game_prize_pool_detail`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_prop`
--
ALTER TABLE `game_prop`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_property`
--
ALTER TABLE `game_property`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_rank`
--
ALTER TABLE `game_rank`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_relationship`
--
ALTER TABLE `game_relationship`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_shop`
--
ALTER TABLE `game_shop`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_shopping_log`
--
ALTER TABLE `game_shopping_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_sms`
--
ALTER TABLE `game_sms`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_store`
--
ALTER TABLE `game_store`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_test`
--
ALTER TABLE `game_test`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_user`
--
ALTER TABLE `game_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- 表的索引 `game_users`
--
ALTER TABLE `game_users`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_user_group`
--
ALTER TABLE `game_user_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_user_money_log`
--
ALTER TABLE `game_user_money_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_user_rule`
--
ALTER TABLE `game_user_rule`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_user_score_log`
--
ALTER TABLE `game_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `game_user_token`
--
ALTER TABLE `game_user_token`
  ADD PRIMARY KEY (`token`);

--
-- 表的索引 `game_version`
--
ALTER TABLE `game_version`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `game_admin`
--
ALTER TABLE `game_admin`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `game_admin_log`
--
ALTER TABLE `game_admin_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=593;

--
-- 使用表AUTO_INCREMENT `game_area`
--
ALTER TABLE `game_area`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `game_attachment`
--
ALTER TABLE `game_attachment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `game_auth_group`
--
ALTER TABLE `game_auth_group`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `game_auth_rule`
--
ALTER TABLE `game_auth_rule`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- 使用表AUTO_INCREMENT `game_category`
--
ALTER TABLE `game_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `game_command`
--
ALTER TABLE `game_command`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=70;

--
-- 使用表AUTO_INCREMENT `game_config`
--
ALTER TABLE `game_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `game_ems`
--
ALTER TABLE `game_ems`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `game_firearm`
--
ALTER TABLE `game_firearm`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_honor`
--
ALTER TABLE `game_honor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_honor_log`
--
ALTER TABLE `game_honor_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_melee_weapon`
--
ALTER TABLE `game_melee_weapon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_prize_pool`
--
ALTER TABLE `game_prize_pool`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_prize_pool_detail`
--
ALTER TABLE `game_prize_pool_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_prop`
--
ALTER TABLE `game_prop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_property`
--
ALTER TABLE `game_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_rank`
--
ALTER TABLE `game_rank`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_relationship`
--
ALTER TABLE `game_relationship`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_shop`
--
ALTER TABLE `game_shop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_shopping_log`
--
ALTER TABLE `game_shopping_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_sms`
--
ALTER TABLE `game_sms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `game_store`
--
ALTER TABLE `game_store`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_test`
--
ALTER TABLE `game_test`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `game_user`
--
ALTER TABLE `game_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `game_users`
--
ALTER TABLE `game_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_user_group`
--
ALTER TABLE `game_user_group`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `game_user_money_log`
--
ALTER TABLE `game_user_money_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_user_rule`
--
ALTER TABLE `game_user_rule`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `game_user_score_log`
--
ALTER TABLE `game_user_score_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `game_version`
--
ALTER TABLE `game_version`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
