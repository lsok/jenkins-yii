-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-06 15:17:32
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2`
--

-- --------------------------------------------------------

--
-- 表的结构 `shop_admin`
--

CREATE TABLE `shop_admin` (
  `adminid` int(10) UNSIGNED NOT NULL COMMENT '主键ID',
  `adminuser` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员帐号',
  `adminpass` char(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `adminemail` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员邮箱',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` bigint(20) NOT NULL DEFAULT '0' COMMENT '登录IP',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_admin`
--

INSERT INTO `shop_admin` (`adminid`, `adminuser`, `adminpass`, `adminemail`, `logintime`, `loginip`, `createtime`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'lsokwebmail@163.com', 1522932780, 2130706433, 1521375283),
(3, 'admin123', 'e10adc3949ba59abbe56e057f20f883e', 'admin123@gmail.com', 0, 0, 0),
(8, 'admin456', '202cb962ac59075b964b07152d234b70', 'admin456@qq.com', 0, 0, 1522846444);

-- --------------------------------------------------------

--
-- 表的结构 `shop_profile`
--

CREATE TABLE `shop_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truename` varchar(32) NOT NULL DEFAULT '',
  `age` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sex` enum('0','1','2') NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '2016-01-01',
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `shop_user`
--

CREATE TABLE `shop_user` (
  `userid` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `userpass` char(32) NOT NULL DEFAULT '',
  `useremail` varchar(100) NOT NULL DEFAULT '',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_admin`
--
ALTER TABLE `shop_admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `shop_admin_adminuser_adminpass` (`adminuser`,`adminpass`),
  ADD UNIQUE KEY `shop_admin_adminuser_adminemail` (`adminuser`,`adminemail`);

--
-- Indexes for table `shop_profile`
--
ALTER TABLE `shop_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_profile_userid` (`userid`);

--
-- Indexes for table `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `shop_user_username_userpass` (`username`,`userpass`),
  ADD UNIQUE KEY `shop_user_useremail_userpass` (`useremail`,`userpass`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `shop_admin`
--
ALTER TABLE `shop_admin`
  MODIFY `adminid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `shop_profile`
--
ALTER TABLE `shop_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `userid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
