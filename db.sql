/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongdanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongdanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongdanguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-14 14:21:21'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-14 14:21:21'),(3,'gongdan_types','工单类型名称',1,'工单类型1',NULL,'2021-05-14 14:21:21'),(4,'gongdan_types','工单类型名称',2,'工单类型2',NULL,'2021-05-14 14:21:21'),(5,'gongdan_shenhe_types','工单状态',1,'已受理',NULL,'2021-05-14 14:21:21'),(6,'gongdan_shenhe_types','工单状态',2,'接收转接',NULL,'2021-05-14 14:21:21'),(7,'gongdan_shenhe_types','工单状态',3,'不通过',NULL,'2021-05-14 14:21:21'),(8,'gongdan_shenhe_types','工单状态',4,'通过',NULL,'2021-05-14 14:21:21'),(9,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-14 14:21:21'),(10,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-14 14:21:21'),(11,'redian_types','热点问题类型名称',1,'热点类型1',NULL,'2021-05-14 14:21:21'),(12,'redian_types','热点问题类型名称',2,'热点类型2',NULL,'2021-05-14 14:21:21'),(13,'redian_types','热点问题类型名称',3,'热点类型3',NULL,'2021-05-14 17:01:42'),(14,'gongdan_shenhe_types','工单状态',5,'挂起',NULL,'2021-05-14 14:21:21');

/*Table structure for table `gongdan` */

DROP TABLE IF EXISTS `gongdan`;

CREATE TABLE `gongdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请人',
  `gongdan_danhao_number` varchar(200) DEFAULT NULL COMMENT '工单编号 Search111 ',
  `gongdan_name` varchar(200) DEFAULT NULL COMMENT '工单名称 Search111 ',
  `gongdan_types` int(11) DEFAULT NULL COMMENT '工单类型 Search111 ',
  `gongdan_photo` varchar(200) DEFAULT NULL COMMENT '工单图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提交时间 Search111 ',
  `gongdan_content` text COMMENT '工单详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='工单';

/*Data for the table `gongdan` */

insert  into `gongdan`(`id`,`yonghu_id`,`gongdan_danhao_number`,`gongdan_name`,`gongdan_types`,`gongdan_photo`,`insert_time`,`gongdan_content`,`create_time`) values (3,1,'1620975071267','工单1',1,'http://localhost:8080/gongdanguanli/file/download?fileName=1620975079834.jpg','2021-05-14 14:51:24','工单的详情\r\n','2021-05-14 14:51:24'),(4,2,'1620982929861','工单2',2,'http://localhost:8080/gongdanguanli/file/download?fileName=1620982956054.jpg','2021-05-14 17:02:40','工单2的详情\r\n','2021-05-14 17:02:40');

/*Table structure for table `gongdan_goutong` */

DROP TABLE IF EXISTS `gongdan_goutong`;

CREATE TABLE `gongdan_goutong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongdan_id` int(11) DEFAULT NULL COMMENT '工单',
  `gongdan_goutong_content` text COMMENT '沟通内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发起时间',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '回复人',
  `gongdan_huifu_content` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='工单沟通';

/*Data for the table `gongdan_goutong` */

insert  into `gongdan_goutong`(`id`,`gongdan_id`,`gongdan_goutong_content`,`insert_time`,`yuangong_id`,`gongdan_huifu_content`,`update_time`,`create_time`) values (3,3,'沟通内容1\r\n','2021-05-14 15:15:25',NULL,'‍\r\n',NULL,'2021-05-14 15:15:25'),(4,4,'工单2的沟通内容\r\n','2021-05-14 17:16:20',3,'工单2的回复内容\r\n','2021-05-14 17:45:56','2021-05-14 17:16:20');

/*Table structure for table `gongdan_shouli` */

DROP TABLE IF EXISTS `gongdan_shouli`;

CREATE TABLE `gongdan_shouli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongdan_id` int(11) DEFAULT NULL COMMENT '工单',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '受理时间',
  `gongdan_shenhe_types` int(11) DEFAULT NULL COMMENT '工单状态 Search111 ',
  `gongdan_shouli_content` text COMMENT '工单审核详情',
  `gongdan_pingjia_content` text COMMENT '工单评价',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='工单受理';

/*Data for the table `gongdan_shouli` */

insert  into `gongdan_shouli`(`id`,`gongdan_id`,`yuangong_id`,`insert_time`,`gongdan_shenhe_types`,`gongdan_shouli_content`,`gongdan_pingjia_content`,`create_time`) values (3,3,1,'2021-05-14 16:15:49',4,'工单审核通过\r\n','‍\r\n','2021-05-14 16:15:49'),(4,4,3,'2021-05-14 17:04:02',4,'工单审核通过\r\n','评价:还可以\r\n','2021-05-14 17:04:02');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`gonggao_photo`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/gongdanguanli/file/download?fileName=1620982218270.jpg','2021-05-14 16:50:23','公告1的详情\r\n','2021-05-14 16:50:23'),(4,'公告2',2,'http://localhost:8080/gongdanguanli/file/download?fileName=1620982862797.jpg','2021-05-14 17:01:06','公告2的详情\r\n','2021-05-14 17:01:06');

/*Table structure for table `redian` */

DROP TABLE IF EXISTS `redian`;

CREATE TABLE `redian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `redian_name` varchar(200) DEFAULT NULL COMMENT '热点问题名称 Search111 ',
  `redian_types` int(11) DEFAULT NULL COMMENT '热点问题类型 Search111 ',
  `redian_content` text COMMENT '热点问题详情',
  `jiejue_content` text COMMENT '解决方法',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='热点问题';

/*Data for the table `redian` */

insert  into `redian`(`id`,`redian_name`,`redian_types`,`redian_content`,`jiejue_content`,`insert_time`,`create_time`) values (3,'热点问题1',1,'问题详情1\r\n','问题解决方法1\r\n','2021-05-14 16:48:47','2021-05-14 16:48:47'),(4,'热点问题2',2,'问题2\r\n','解答2\r\n','2021-05-14 17:00:46','2021-05-14 17:00:46');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','afe6azbarzljyf7da4wn89hfiop1l3k9','2021-05-14 14:48:22','2021-05-14 17:58:28'),(2,1,'a1','yonghu','用户','owdxjt4aivc5efe3d11kgqqdywyyq6su','2021-05-14 14:51:07','2021-05-14 18:59:09'),(3,1,'a11','yuangong','员工','hm0qdm7j6c3l8bl7ee0wb43520il6dhk','2021-05-14 15:47:16','2021-05-14 17:08:08'),(4,2,'a2','yonghu','用户','3yed6b394u68ix26sr7phdj7kpgpdlb2','2021-05-14 17:01:54','2021-05-14 18:59:21'),(5,2,'a22','yuangong','员工','9z7fwdrh5i5mxb6ag8prl5nxnjoy6k4f','2021-05-14 17:03:37','2021-05-14 18:16:39'),(6,3,'a33','yuangong','员工','xya038bs0kp6j8mb4i0v3qppv30wfq9g','2021-05-14 17:05:27','2021-05-14 18:44:25'),(7,4,'a4','yonghu','用户','pfxza5emymxxi9ob0wq4fa54veh8l0kn','2021-05-14 17:46:47','2021-05-14 18:59:35'),(8,3,'a3','yonghu','用户','jyu7x20fig6ao2e6bwkml589x0527cap','2021-05-14 17:59:28','2021-05-14 18:59:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/gongdanguanli/file/download?fileName=1620974918972.jpg',1,'2021-05-14 14:48:41'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/gongdanguanli/file/download?fileName=1620975022327.jpg',1,'2021-05-14 14:50:24'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/gongdanguanli/file/download?fileName=1620982728538.jpg',1,'2021-05-14 16:59:00'),(4,'a4','123456','张4','17703786904','410224199610232004','http://localhost:8080/gongdanguanli/file/download?fileName=1620985595076.jpg',2,'2021-05-14 17:46:41');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号 Search111 ',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`create_time`) values (1,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/gongdanguanli/file/download?fileName=1620974947440.jpg',1,'2021-05-14 14:49:10'),(2,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/gongdanguanli/file/download?fileName=1620975046725.jpg',2,'2021-05-14 14:50:47'),(3,'a33','123456','张33','17703786933','410224199610232033','http://localhost:8080/gongdanguanli/file/download?fileName=1620982767648.jpg',2,'2021-05-14 16:59:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
