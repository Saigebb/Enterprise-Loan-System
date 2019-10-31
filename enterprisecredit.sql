-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2019-10-29 15:16:56
-- 服务器版本： 5.7.26
-- PHP 版本： 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `enterprisecredit`
--
CREATE DATABASE IF NOT EXISTS `enterprisecredit` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `enterprisecredit`;

-- --------------------------------------------------------

--
-- 表的结构 `accountant`
--

DROP TABLE IF EXISTS `accountant`;
CREATE TABLE IF NOT EXISTS `accountant` (
  `ano` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '会计员编号',
  `dno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '部门编号',
  `aname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '性别',
  PRIMARY KEY (`ano`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会计人员表';

-- --------------------------------------------------------

--
-- 表的结构 `amount`
--

DROP TABLE IF EXISTS `amount`;
CREATE TABLE IF NOT EXISTS `amount` (
  `ano` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '会计员编号',
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `ino` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '利息编号',
  `sum` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '金额总计',
  PRIMARY KEY (`ano`,`cno`),
  KEY `cno` (`cno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='金额统计表';

-- --------------------------------------------------------

--
-- 表的结构 `creditofficer`
--

DROP TABLE IF EXISTS `creditofficer`;
CREATE TABLE IF NOT EXISTS `creditofficer` (
  `cono` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '信贷员编号',
  `coname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '信贷员名字',
  `sex` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '性别',
  `dname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  `tel` int(11) NOT NULL COMMENT '电话',
  PRIMARY KEY (`cono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='信贷人员表';

-- --------------------------------------------------------

--
-- 表的结构 `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `cname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '客户姓名',
  `sex` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '客户性别',
  `c_addr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '客户住址',
  `money` bigint(20) DEFAULT NULL COMMENT '客户资产',
  `idcard` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '客户身份证号',
  `is_loan` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '客户是否贷款',
  `level` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '客户信用等级',
  `dno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '贷款部门编号',
  `lno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '贷款编号',
  `ino` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '利息编号',
  `cono` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '信贷员编号',
  `eap` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '审批编号',
  `loanmoney` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '贷款金额',
  PRIMARY KEY (`cno`,`dno`,`lno`,`ino`,`cono`,`eap`),
  KEY `dno` (`dno`),
  KEY `lno` (`lno`),
  KEY `ino` (`ino`),
  KEY `cono` (`cono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客户表';

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '部门编号',
  `dname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '部门电话',
  `d_addr` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '部门地址',
  `person_in_charge` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '部门负责人',
  `apno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '审批编号',
  `aptime` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '审批时间',
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `approver` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '审批人',
  PRIMARY KEY (`dno`,`apno`,`cno`),
  KEY `cno` (`cno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门表';

-- --------------------------------------------------------

--
-- 表的结构 `interest`
--

DROP TABLE IF EXISTS `interest`;
CREATE TABLE IF NOT EXISTS `interest` (
  `ino` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '利息编号',
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `rate` double NOT NULL COMMENT '利率',
  `is_deal` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '是否已经处理',
  PRIMARY KEY (`ino`,`cno`),
  KEY `cno` (`cno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='利息表';

-- --------------------------------------------------------

--
-- 表的结构 `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE IF NOT EXISTS `loan` (
  `lno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '贷款编号',
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `ino` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '利息编号',
  `kind` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '贷款种类',
  `money` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '贷款金额',
  `foreclosure` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '贷款抵押品',
  `limittime` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '贷款期限',
  `recycle` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '逾期回收',
  PRIMARY KEY (`lno`,`cno`,`ino`),
  KEY `cno` (`cno`),
  KEY `ino` (`ino`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='贷款表';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
