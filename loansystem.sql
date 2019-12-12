-- MySQL dump 10.13  Distrib 5.7.22, for osx10.13 (x86_64)
--
-- Host: localhost    Database: loansystem
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountant` (
  `ano` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '会计员编号',
  `dno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '部门编号',
  `aname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '性别',
  PRIMARY KEY (`ano`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='会计人员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant`
--

LOCK TABLES `accountant` WRITE;
/*!40000 ALTER TABLE `accountant` DISABLE KEYS */;
INSERT INTO `accountant` VALUES ('001','0001','zsr','女'),('002','0002','ccc','女'),('003','0003','wyt','女'),('004','0004','syn','女'),('005','0005','pyc','男');
/*!40000 ALTER TABLE `accountant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amount`
--

DROP TABLE IF EXISTS `amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amount` (
  `ano` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '会计员编号',
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `ino` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '利息编号',
  `sum` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '金额总计',
  PRIMARY KEY (`ano`,`cno`),
  KEY `cno` (`cno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='金额统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amount`
--

LOCK TABLES `amount` WRITE;
/*!40000 ALTER TABLE `amount` DISABLE KEYS */;
INSERT INTO `amount` VALUES ('001','0001','0001','10000'),('001','0002','0001','20000'),('002','0003','0002','30000'),('003','0004','0002','250000'),('004','0005','0001','88888');
/*!40000 ALTER TABLE `amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add accountant',7,'add_accountant'),(26,'Can change accountant',7,'change_accountant'),(27,'Can delete accountant',7,'delete_accountant'),(28,'Can view accountant',7,'view_accountant'),(29,'Can add amount',8,'add_amount'),(30,'Can change amount',8,'change_amount'),(31,'Can delete amount',8,'delete_amount'),(32,'Can view amount',8,'view_amount'),(33,'Can add creditofficer',9,'add_creditofficer'),(34,'Can change creditofficer',9,'change_creditofficer'),(35,'Can delete creditofficer',9,'delete_creditofficer'),(36,'Can view creditofficer',9,'view_creditofficer'),(37,'Can add customer',10,'add_customer'),(38,'Can change customer',10,'change_customer'),(39,'Can delete customer',10,'delete_customer'),(40,'Can view customer',10,'view_customer'),(41,'Can add department',11,'add_department'),(42,'Can change department',11,'change_department'),(43,'Can delete department',11,'delete_department'),(44,'Can view department',11,'view_department'),(45,'Can add interest',12,'add_interest'),(46,'Can change interest',12,'change_interest'),(47,'Can delete interest',12,'delete_interest'),(48,'Can view interest',12,'view_interest'),(49,'Can add loan',13,'add_loan'),(50,'Can change loan',13,'change_loan'),(51,'Can delete loan',13,'delete_loan'),(52,'Can view loan',13,'view_loan');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款名字',
  `info` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '详细信息',
  `amountMin` int(50) DEFAULT NULL COMMENT '贷款数额最低',
  `amountMax` int(11) DEFAULT NULL COMMENT '贷款数额最高',
  `monthMin` int(50) DEFAULT NULL COMMENT '贷款月份最短',
  `monthMax` int(11) DEFAULT NULL COMMENT '贷款月份最长',
  `monthIrMin` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '月利率最低',
  `monthIrMax` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '月利率最高',
  `way` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '还本付息方式',
  `else_field` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '其他费用说明',
  `advance` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '提前还款说明',
  `detail` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '详细描述',
  `condition` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '申请条件',
  `material` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '所需材料',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit`
--

LOCK TABLES `credit` WRITE;
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
INSERT INTO `credit` VALUES (1,'高庄效贷-易企贷','线上申请最快10分钟完成审批，1小时放款',5,100,12,36,'0.85%','1.12%','等本等息','放款金额1.5%服务费','剩余本金5%','<p>无抵押纯信用贷款，线上申请最快10分钟完成审批，1小时内放款，匹配稠州银行放款成功第二天代扣保费，保费金额为（本金+利息）x1.5%。</p>\r\n<p>目前支持以下城市：</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;江苏省：南京、苏州、无锡、常州、南通、连云港、扬州、镇江、泰州</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;浙江省：杭州、嘉兴、金华</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;广东省：广州、深圳、东莞、佛山、中山、珠海、肇庆、江门、惠州</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;其他：上海、重庆、成都、福州、南昌</p>\r\n<p>新增区域：北京、天津、石家庄、郑州、洛阳、济南、西安、武汉、长沙、合肥、宁波</p>\r\n<p>地区逐渐开放，敬请期待。</p>\n','<p>申请人：企业法人，具有完全民事行为能力的中国大陆公民；</p>\r\n<p>年龄要求：25周岁（含）-55周岁（含）；</p>\r\n<p>申请人征信当前无逾期；</p>\r\n<p>公司工商注册满2年；</p>\r\n<p>使用金蝶软件审批通过更高；</p>\r\n<p>在工商、税务、法院、质检等相关部门的记录中，该经营实体及法人无实质性不良信息记录。</p>','<p>申贷资料：借款人身份证、银行卡、企业营业执照。</p>'),(2,'高庄效贷-金数贷','线上申请最快10分钟完成审批，1小时放款',1,100,6,12,'0.65%','1.12%','等本等息','1.5%手续费','咨询客户经理','<p>1、审批通过金蝶效贷会收取您审批金额1.5%服务费。</p>\r\n<p>2、放款方为富民银行</p>','<p>1、实际控制人年龄 22-60岁；</p>\r\n<p>2、使用金蝶软件（如KIS或智慧记软件）6个月以上或使用开票软件6个月以上；</p>\r\n<p>3、信用记录良好；</p>\r\n<p>4、符合我司行业要求及其他准入条件。</p>','<p>借款人身份证明正反面；</p>\r\n<p>企业营业执照；</p>\r\n<p>准备好借款人银行卡，企业对公账号，进行在线征信授权，门头照。</p>'),(3,'高庄效贷-阳光贷','纯信用贷款，审批放款方便快捷！',1,100,6,12,'0.85%','1.17%','等本等息','1.5%手续费','提前结清需缴纳剩余本金3%的手续费','<p>纯信用贷款,无需抵押；</p>\r\n<p>纯线上申请、审批、放款，方便快捷；</p>\r\n<p>金蝶ERP软件企业客户专属的信用贷款。</p>','<p>公司注册满1年、公司经营无异常、近1年开票收入大于50万;</p>\r\n<p>ERP账套使用满1年;</p>\r\n<p>申请人征信当前无逾期。</p>','<p>申贷基本资料，包括：法人基本信息、法人身份证照片、公司基本信息、联系人信息等；</p>\r\n<p>数据授权：金蝶KIS数据、税采数据、简版人行征信报告；</p>\r\n<p>网银银行流水（选填）。</p>'),(4,'高庄效贷-商通贷','借款额度最高达100万；最快24小时放款！',1,100,3,24,'1.02%','1.59%','等本等息','1.5%服务费','提前还款有违约金','<p>最大限度分解您的还款压力！</p>\r\n<p>商通贷与金蝶公司合作，为全国企业法人或股东提供无抵押无担保的全线上信用贷款产品。该产品还款方式有等额本息；借款期限有3月、6月、12月、24月；借款额度最高达100万；最快24小时放款。为您提供灵活、快速的信贷服务。</p>\r\n<p>产品暂不开放区域：新疆维吾尔自治区、西藏自治区</p>\r\n<p>该产品风险定价，最终审批额度与利率请与具体签署合同为准，金蝶金融不承诺任何定价，审批通过后，金蝶金融会收取审批金额1.5%服务费。</p>','<p>1、申请人：为企业法定代表人或占股20%以上的股东；</p>\r\n<p>2、年龄要求：22周岁（含）-55周岁（含）；</p>\r\n<p>3、具有完全民事行为能力的中华人民共和国大陆公民；</p>\r\n<p>4、经营时间：公司工商注册满一年，使用KIS产品满6个月或开票一年以上即可</p>','\n<p>请提前准备好身份证、营业执照、银行卡、网上个人征信查询账号。</p>');
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditofficer`
--

DROP TABLE IF EXISTS `creditofficer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditofficer` (
  `cono` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '信贷员编号',
  `coname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '信贷员名字',
  `sex` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '性别',
  `dname` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  `tel` int(11) NOT NULL COMMENT '电话',
  PRIMARY KEY (`cono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='信贷人员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditofficer`
--

LOCK TABLES `creditofficer` WRITE;
/*!40000 ALTER TABLE `creditofficer` DISABLE KEYS */;
INSERT INTO `creditofficer` VALUES ('002','officer_ccc','女','业务部',222222),('004','officer_syn','女','管理部',444444),('005','officer_pyc','男','业务部',555555),('001','officer_zsr','女','业务部',111111),('003','officer_wyt','女','业务部',333333);
/*!40000 ALTER TABLE `creditofficer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cno` int(8) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `cname` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '客户姓名',
  `c_addr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '客户住址',
  `money` bigint(20) DEFAULT NULL COMMENT '客户资产',
  `idcard` varchar(18) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '客户身份证号',
  `is_loan` varchar(2) COLLATE utf8_bin DEFAULT '' COMMENT '客户是否贷款',
  `level` varchar(2) COLLATE utf8_bin DEFAULT '' COMMENT '客户信用等级',
  `dno` varchar(8) COLLATE utf8_bin DEFAULT '' COMMENT '贷款部门编号',
  `lno` varchar(8) COLLATE utf8_bin DEFAULT '' COMMENT '贷款编号',
  `ino` varchar(8) COLLATE utf8_bin DEFAULT '' COMMENT '利息编号',
  `cono` varchar(8) COLLATE utf8_bin DEFAULT '' COMMENT '信贷员编号',
  `eap` varchar(8) COLLATE utf8_bin DEFAULT '' COMMENT '审批编号',
  `loanmoney` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '贷款金额',
  `email` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` varchar(40) COLLATE utf8_bin DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`cno`),
  KEY `dno` (`dno`),
  KEY `lno` (`lno`),
  KEY `ino` (`ino`),
  KEY `cono` (`cono`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'customer_zsr','精思苑',2500000,'111111111111111111','是','80','0001','0001','0001','0001','0001','10000','464955350@qq.com',NULL),(2,'customer_ccc','勤园',2000000,'222222222222222222','是','85','0002','0002','0002','0002','0002','20000','1061767858@qq.com',NULL),(3,'customer_wyt','恕园',3000000,'333333333333333333','否','90','0003','0003','0003','0003','0003','300000','413469406@qq.com',NULL),(4,'customer_syn','慎园',4000000,'444444444444444444','是','95','0004','0004','0004','0004','0004','4000000','2597795315@qq.com',NULL),(5,'customer_pyc','图书馆',5000000,'555555555555555555','是','95','0005','0005','0005','0005','0005','5000000','555555555@qq.com',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('0001','业务部','111111','高庄银行','zsr','0001','上午','0001','ccc'),('0001','管理部','222222','高庄银行','wyt','0002','下午','0002','syn');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'loan','accountant'),(8,'loan','amount'),(9,'loan','creditofficer'),(10,'loan','customer'),(11,'loan','department'),(12,'loan','interest'),(13,'loan','loan');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-11-14 23:18:36.862408'),(2,'auth','0001_initial','2019-11-14 23:18:37.171644'),(3,'admin','0001_initial','2019-11-14 23:18:38.381494'),(4,'admin','0002_logentry_remove_auto_add','2019-11-14 23:18:38.639854'),(5,'admin','0003_logentry_add_action_flag_choices','2019-11-14 23:18:38.649827'),(6,'contenttypes','0002_remove_content_type_name','2019-11-14 23:18:38.790487'),(7,'auth','0002_alter_permission_name_max_length','2019-11-14 23:18:38.876275'),(8,'auth','0003_alter_user_email_max_length','2019-11-14 23:18:38.940075'),(9,'auth','0004_alter_user_username_opts','2019-11-14 23:18:38.951023'),(10,'auth','0005_alter_user_last_login_null','2019-11-14 23:18:39.024824'),(11,'auth','0006_require_contenttypes_0002','2019-11-14 23:18:39.029811'),(12,'auth','0007_alter_validators_add_error_messages','2019-11-14 23:18:39.042776'),(13,'auth','0008_alter_user_username_max_length','2019-11-14 23:18:39.112623'),(14,'auth','0009_alter_user_last_name_max_length','2019-11-14 23:18:39.186426'),(15,'auth','0010_alter_group_name_max_length','2019-11-14 23:18:39.276154'),(16,'auth','0011_update_proxy_permissions','2019-11-14 23:18:39.292110'),(17,'loan','0001_initial','2019-11-14 23:18:39.316046'),(18,'loan','0002_auto_20191114_2318','2019-11-14 23:18:39.329014'),(19,'sessions','0001_initial','2019-11-14 23:18:39.382867');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('pzojrtk31ckhfvapvnwlzo9f7jgl712c','Y2Y1OGNhMGEzM2JmOWUzMWQ2MzUxMjE4MGQxMzEwM2Y2MzMyYzk4ODp7ImNvZGUiOiIxMDgzMSJ9','2019-11-28 23:19:48.474293'),('6blai9909av1hh0k07vzo11b7zvrx3g6','MTZiYzc1NzkyNmM0MjA5OTdjZDRhOWE0NTFlOGI3NGU5YTFlNWE0Yzp7ImNvZGUiOiI5MTAyNiJ9','2019-12-12 11:03:14.287824');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `ino` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '利息编号',
  `cno` varchar(8) COLLATE utf8_bin NOT NULL COMMENT '客户编号',
  `rate` double NOT NULL COMMENT '利率',
  `is_deal` varchar(2) COLLATE utf8_bin NOT NULL COMMENT '是否已经处理',
  PRIMARY KEY (`ino`,`cno`),
  KEY `cno` (`cno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='利息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES ('0001','0001',0.04,'是'),('0002','0002',0.036,'否');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES ('0001','0001','0001','抵押贷款','10000','房产','1年','2年'),('0002','0002','0002','担保贷款','30000','商品','2年','3年');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mortgage`
--

DROP TABLE IF EXISTS `mortgage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mortgage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '抵押贷款',
  `info` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '信息',
  `amountMin` int(11) DEFAULT NULL COMMENT '贷款数额最低',
  `amountMax` int(11) DEFAULT NULL COMMENT '贷款数额最高',
  `monthMin` int(11) DEFAULT NULL COMMENT '月份最低',
  `monthMax` int(11) DEFAULT NULL COMMENT '月份最高',
  `monthIrMin` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '利率',
  `monthIrMax` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `way` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `else` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mortgage`
--

LOCK TABLES `mortgage` WRITE;
/*!40000 ALTER TABLE `mortgage` DISABLE KEYS */;
INSERT INTO `mortgage` VALUES (1,'高庄房抵贷','1对1金融VIP顾问',30,1000,1,12,'0.58%',NULL,NULL,NULL);
/*!40000 ALTER TABLE `mortgage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-28 13:30:40
