-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-03-22 14:51:06
-- 服务器版本： 5.7.41-log
-- PHP 版本： 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `atamm`
--

-- --------------------------------------------------------

--
-- 表的结构 `IMUser`
--

CREATE TABLE `IMUser` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1男2女0未知',
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '用户名',
  `domain` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '拼音',
  `nick` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '花名,绰号等',
  `password` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(4) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '混淆码',
  `phone` varchar(11) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'email',
  `avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '自定义用户头像',
  `departId` int(11) UNSIGNED NOT NULL COMMENT '所属部门Id',
  `status` tinyint(2) UNSIGNED DEFAULT '0' COMMENT '1. 试用期 2. 正式 3. 离职 4.实习',
  `created` int(11) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated` int(11) UNSIGNED NOT NULL COMMENT '更新时间',
  `push_shield_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0关闭勿扰 1开启勿扰',
  `sign_info` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '个性签名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `IMUser`
--

INSERT INTO `IMUser` (`id`, `sex`, `name`, `domain`, `nick`, `password`, `salt`, `phone`, `email`, `avatar`, `departId`, `status`, `created`, `updated`, `push_shield_status`, `sign_info`) VALUES
(1, 0, 'test', 'test', 'test', '41f61f6b38c7adbb266bd5f73c147d66', '7605', '18657139000', 'test@test.com', '', 1, 0, 1428416403, 1428416403, 0, '时间'),
(2, 0, 'testa', 'testa', 'testa', '41f61f6b38c7adbb266bd5f73c147d66', '7605', '18657139000', 'test@test.com', '', 1, 0, 1428416403, 1428416403, 0, '时间'),
(3, 0, 'testb', 'testb', 'testb', '41f61f6b38c7adbb266bd5f73c147d66', '7605', '18657139000', 'test@test.com', '', 1, 0, 1428416403, 1428416403, 0, '时间'),
(4, 0, 'testc', 'testc', 'testc', '41f61f6b38c7adbb266bd5f73c147d66', '7605', '18657139000', 'test@test.com', '', 1, 0, 1428416403, 1428416403, 0, '时间');

 INSERT INTO `IMUser` (`name` , `password` , `nick` , `domain` , `sex` , `phone` , `email` , `salt` , `departId` , `sign_info` , `push_shield_status` , `created` , `updated`)
 VALUES ('user233' , '123456' , 'user233' , '记得微笑' , 0 , 'user233' , 'user233@163.com' , '8469' , 1 , '我的个性名字user233' , 0 , 1679490605 , 1679490605)

--
-- 转储表的索引
--

--
-- 表的索引 `IMUser`
--
ALTER TABLE `IMUser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_domain` (`domain`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `IMUser`
--
ALTER TABLE `IMUser`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
