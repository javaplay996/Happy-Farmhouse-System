/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kaixinnongjiale
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kaixinnongjiale` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kaixinnongjiale`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/kaixinnongjiale/upload/1618020957519.jpg'),(2,'picture2','http://localhost:8080/kaixinnongjiale/upload/1618020964873.jpg'),(3,'picture3','http://localhost:8080/kaixinnongjiale/upload/1618020977717.jpg'),(6,'homepage','http://localhost:8080/kaixinnongjiale/upload/1618021000020.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-10 10:08:30'),(2,'sex_types','性别',2,'女',NULL,'2021-04-10 10:08:30'),(3,'leixing_types','类型',1,'平价',NULL,'2021-04-10 10:08:30'),(4,'leixing_types','类型',2,'特价',NULL,'2021-04-10 10:08:30'),(5,'kouwei_types','菜品口味名称',1,'口味1',NULL,'2021-04-10 10:08:30'),(6,'kouwei_types','菜品口味名称',2,'口味2',NULL,'2021-04-10 10:08:30'),(7,'kouwei_types','菜品口味名称',3,'口味3',NULL,'2021-04-10 10:08:30'),(8,'zhufang_types','住房类型名称',1,'住房类型1',NULL,'2021-04-10 10:08:30'),(9,'zhufang_types','住房类型名称',2,'住房类型2',NULL,'2021-04-10 10:08:30'),(10,'zhufang_types','住房类型名称',3,'住房类型3',NULL,'2021-04-10 10:08:30'),(11,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-10 10:08:30'),(12,'news_types','公告类型名称',2,'娱乐公告',NULL,'2021-04-10 10:08:30');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告',1,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021434047.jpg','2021-04-10 10:24:00','公告详情\r\n','2021-04-10 10:24:00'),(2,'公告2',1,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021448267.jpg','2021-04-10 10:24:10','公告详情公告详情\r\n','2021-04-10 10:24:10'),(3,'公告3',1,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021458250.jpg','2021-04-10 10:24:21','公告详情公告详情公告详情\r\n','2021-04-10 10:24:21');

/*Table structure for table `nongzhuang` */

DROP TABLE IF EXISTS `nongzhuang`;

CREATE TABLE `nongzhuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongzhuang_name` varchar(200) DEFAULT NULL COMMENT '农庄名称 Search111',
  `nongzhuang_mianji` varchar(200) DEFAULT NULL COMMENT '农庄面积',
  `nongzhuang_photo` varchar(200) DEFAULT NULL COMMENT '农庄图片',
  `nongzhuang_chanzuo` int(11) DEFAULT NULL COMMENT '餐桌数量',
  `nongzhuang_zhufang` int(11) DEFAULT NULL COMMENT '住房数量',
  `nongzhuang_xiangmu` varchar(200) DEFAULT NULL COMMENT '住房数量',
  `nongzhuang_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `nongzhuang_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='农庄';

/*Data for the table `nongzhuang` */

insert  into `nongzhuang`(`id`,`nongzhuang_name`,`nongzhuang_mianji`,`nongzhuang_photo`,`nongzhuang_chanzuo`,`nongzhuang_zhufang`,`nongzhuang_xiangmu`,`nongzhuang_phone`,`nongzhuang_content`,`create_time`) values (22,'农庄1','1000','http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021128861.jpeg',100,100,'100','17785577577','详情信息111111111\r\n','2021-04-10 10:19:05'),(23,'农庄2','2000','http://localhost:8080/kaixinnongjiale/file/download?fileName=1618032768834.jpeg',200,200,'200','17786644584','详情信息详情信息详情信息详情信息\r\n','2021-04-10 13:33:07');

/*Table structure for table `tesecai` */

DROP TABLE IF EXISTS `tesecai`;

CREATE TABLE `tesecai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tesecai_name` varchar(200) DEFAULT NULL COMMENT '菜品名称 Search111',
  `tesecai_money` int(11) DEFAULT NULL COMMENT '菜品价格',
  `kouwei_types` int(11) DEFAULT NULL COMMENT '菜品口味 Search111',
  `leixing_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `tesecai_photo` varchar(200) DEFAULT NULL COMMENT '菜品图片',
  `tesecai_content` text COMMENT '菜品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='特色菜';

/*Data for the table `tesecai` */

insert  into `tesecai`(`id`,`tesecai_name`,`tesecai_money`,`kouwei_types`,`leixing_types`,`tesecai_photo`,`tesecai_content`,`create_time`) values (22,'菜品1',100,2,2,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021166915.jpg','菜品详情菜品详情菜品详情菜品详情\r\n','2021-04-10 10:19:30'),(23,'菜品2',200,2,2,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021183753.jpg','菜品详情菜品详情菜品详情菜品详情菜品详情菜品详情\r\n','2021-04-10 10:19:46'),(24,'菜品3',300,3,2,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021196897.jpg','菜品详情菜品详情菜品详情菜品详情菜品详情\r\n','2021-04-10 10:20:02'),(25,'菜品4',400,3,1,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021216616.jpg','菜品详情菜品详情菜品详情菜品详情菜品详情菜品详情菜品详情\r\n','2021-04-10 10:20:21');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ifjdkb46pyrslc38h9qw0dljarh9qnmp','2021-04-10 10:14:45','2021-04-10 14:29:50'),(2,1,'111','yonghu','用户','loac8kjwwjnaypsl6m3l84elq64p28ie','2021-04-10 10:26:36','2021-04-10 14:34:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `kouwei_types` int(11) DEFAULT NULL COMMENT '口味',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`kouwei_types`,`create_time`) values (1,'111','123456','张晋',2,'410882200011034455','17785444544','http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021057485.jpg',3,'2021-04-10 10:17:38'),(2,'222','123456','王洽',2,'410882200012034455','17785444534','http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021087879.jpg',2,'2021-04-10 10:18:09');

/*Table structure for table `youwanxiangmu` */

DROP TABLE IF EXISTS `youwanxiangmu`;

CREATE TABLE `youwanxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youwanxiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称 Search111',
  `youwanxiangmu_money` int(11) DEFAULT NULL COMMENT '项目价格',
  `leixing_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `youwanxiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目图片',
  `youwanxiangmu_content` text COMMENT '项目详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='游玩项目';

/*Data for the table `youwanxiangmu` */

insert  into `youwanxiangmu`(`id`,`youwanxiangmu_name`,`youwanxiangmu_money`,`leixing_types`,`youwanxiangmu_photo`,`youwanxiangmu_content`,`create_time`) values (22,'项目1',100,2,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021281761.jpg','项目详情项目详情项目详情项目详情\r\n','2021-04-10 10:21:31'),(23,'项目2',200,1,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021310383.jpg','项目详情项目详情项目详情项目详情项目详情\r\n','2021-04-10 10:21:58');

/*Table structure for table `youwanxiangmu_liuyan` */

DROP TABLE IF EXISTS `youwanxiangmu_liuyan`;

CREATE TABLE `youwanxiangmu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youwanxiangmu_id` int(11) DEFAULT NULL COMMENT '游玩项目id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `youwanxiangmu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游玩项目留言';

/*Data for the table `youwanxiangmu_liuyan` */

/*Table structure for table `youwanxiangmu_order` */

DROP TABLE IF EXISTS `youwanxiangmu_order`;

CREATE TABLE `youwanxiangmu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预约用户',
  `youwanxiangmu_id` int(11) DEFAULT NULL COMMENT '预约游玩项目',
  `yuyue_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='游玩项目';

/*Data for the table `youwanxiangmu_order` */

insert  into `youwanxiangmu_order`(`id`,`yonghu_id`,`youwanxiangmu_id`,`yuyue_order_time`,`create_time`) values (26,1,23,'2021-04-17 00:00:00','2021-04-10 13:37:14');

/*Table structure for table `zhufang` */

DROP TABLE IF EXISTS `zhufang`;

CREATE TABLE `zhufang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhufang_name` varchar(200) DEFAULT NULL COMMENT '住房编号 Search111',
  `zhufang_money` int(11) DEFAULT NULL COMMENT '住房价格（天）',
  `zhufang_types` int(11) DEFAULT NULL COMMENT '住房类型 Search111',
  `leixing_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `zhufang_photo` varchar(200) DEFAULT NULL COMMENT '住房图片',
  `zhufang_content` text COMMENT '住房详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='住房';

/*Data for the table `zhufang` */

insert  into `zhufang`(`id`,`zhufang_name`,`zhufang_money`,`zhufang_types`,`leixing_types`,`zhufang_photo`,`zhufang_content`,`create_time`) values (22,'001',100,1,2,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021347728.webp','住房详情住房详情住房详情住房详情\r\n','2021-04-10 10:22:30'),(23,'002',200,2,1,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021364050.webp','住房详情住房详情住房详情\r\n','2021-04-10 10:22:47'),(24,'003',300,3,2,'http://localhost:8080/kaixinnongjiale/file/download?fileName=1618021379975.webp','住房详情住房详情住房详情住房详情\r\n','2021-04-10 10:23:06');

/*Table structure for table `zhufang_liuyan` */

DROP TABLE IF EXISTS `zhufang_liuyan`;

CREATE TABLE `zhufang_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhufang_id` int(11) DEFAULT NULL COMMENT '住房id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `zhufang_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='住房留言';

/*Data for the table `zhufang_liuyan` */

insert  into `zhufang_liuyan`(`id`,`zhufang_id`,`yonghu_id`,`zhufang_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,23,1,'1323123123\r\n','qweewqqweqwe\r\n','2021-04-10 11:25:45','2021-04-10 11:25:45');

/*Table structure for table `zhufang_order` */

DROP TABLE IF EXISTS `zhufang_order`;

CREATE TABLE `zhufang_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预约用户',
  `zhufang_id` int(11) DEFAULT NULL COMMENT '预约住房',
  `yuyue_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='住房预约';

/*Data for the table `zhufang_order` */

insert  into `zhufang_order`(`id`,`yonghu_id`,`zhufang_id`,`yuyue_order_time`,`create_time`) values (22,1,22,'2021-04-17 00:00:00','2021-04-10 10:50:21'),(23,1,22,'2021-04-17 00:00:00','2021-04-10 13:37:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
