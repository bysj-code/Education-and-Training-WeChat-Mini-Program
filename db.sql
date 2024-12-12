/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaoyupeixun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoyupeixun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoyupeixun`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课后习题测试';

/*Data for the table `chat` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jiaoyupeixun/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/jiaoyupeixun/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/jiaoyupeixun/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','网课类型',1,'网课类型1',NULL,NULL,'2022-04-15 20:02:16'),(2,'kecheng_types','网课类型',2,'网课类型2',NULL,NULL,'2022-04-15 20:02:16'),(3,'kecheng_types','网课类型',3,'网课类型3',NULL,NULL,'2022-04-15 20:02:16'),(4,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-15 20:02:17'),(5,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-15 20:02:17'),(6,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-15 20:02:17'),(7,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-04-15 20:02:17'),(8,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-04-15 20:02:17'),(9,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-04-15 20:02:17'),(10,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-04-15 20:02:17'),(11,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-15 20:02:17'),(12,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-15 20:02:17'),(13,'banji_types','班级',1,'班级1',NULL,NULL,'2022-04-15 20:02:17'),(14,'banji_types','班级',2,'班级2',NULL,NULL,'2022-04-15 20:02:17'),(15,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-15 20:02:17'),(16,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-15 20:02:17'),(17,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-15 20:02:18'),(18,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-15 20:02:18'),(19,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2022-04-15 20:02:18'),(20,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2022-04-15 20:02:18'),(21,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-04-15 20:02:18'),(22,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-04-15 20:02:18'),(23,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-04-15 20:02:18'),(24,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-04-15 20:02:18'),(25,'examredetails_types','审核结果',1,'正确',NULL,NULL,'2022-04-15 20:02:18'),(26,'examredetails_types','审核结果',2,'错误',NULL,NULL,'2022-04-15 20:02:18');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '测试时长(分钟)',
  `exampaper_myscore` int(11) NOT NULL COMMENT '试卷总分',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`jiaoshi_id`,`exampaper_types`,`create_time`) values (1,'试卷名称1',60,50,1,1,'2022-04-15 20:45:30');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,1,'试题名称1','[]',10,4,1,'2022-04-15 20:45:45'),(2,1,'试题名称2','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',10,3,2,'2022-04-15 20:45:55'),(3,1,'试题名称3','[{\"text\":\"A1\",\"code\":\"A\"},{\"text\":\"B2\",\"code\":\"B\"},{\"text\":\"C3\",\"code\":\"C\"},{\"text\":\"D4\",\"code\":\"D\"}]',10,2,3,'2022-04-15 20:46:24'),(4,1,'试题名称4','[{\"text\":\"A1\",\"code\":\"A\"},{\"text\":\"B2\",\"code\":\"B\"},{\"text\":\"C3\",\"code\":\"C\"},{\"text\":\"D4\",\"code\":\"D\"}]',20,1,4,'2022-04-15 20:46:57');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '测试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '测试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '测试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='测试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1650026837057',1,1,15,'2022-04-15 20:47:17','2022-04-15 20:47:17'),(2,'1650027781175',1,1,0,'2022-04-15 21:03:01','2022-04-15 21:03:01');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '学生答案',
  `examredetails_myscore` int(20) DEFAULT NULL COMMENT '试题得分',
  `examination_name` varchar(200) DEFAULT NULL COMMENT '审核教师',
  `examredetails_types` int(20) DEFAULT NULL COMMENT '审核结果',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`examination_name`,`examredetails_types`,`create_time`) values (1,'1650026837057',1,4,'A',0,'a1',2,'2022-04-15 20:47:19'),(2,'1650026837057',1,3,'C',0,'a1',2,'2022-04-15 20:47:21'),(3,'1650026837057',1,2,'B',5,'a1',2,'2022-04-15 20:47:24'),(4,'1650026837057',1,1,'321',10,'a1',1,'2022-04-15 20:47:27'),(5,'1650027781175',1,4,'B',NULL,NULL,NULL,'2022-04-15 21:03:04'),(6,'1650027781175',1,3,'B,C',NULL,NULL,NULL,'2022-04-15 21:03:06'),(7,'1650027781175',1,2,'B',NULL,NULL,NULL,'2022-04-15 21:03:09'),(8,'1650027781175',1,1,'123',NULL,NULL,NULL,'2022-04-15 21:03:13');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '学生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,1,2,'B','2022-04-15 20:55:29','2022-04-15 20:55:29'),(2,1,1,3,'C','2022-04-15 20:55:39','2022-04-15 20:55:39'),(3,1,1,4,'A','2022-04-15 20:55:43','2022-04-15 20:55:43');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',NULL,1,'2022-04-15 20:02:23','2022-04-15 20:02:23','2022-04-15 20:02:23'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',NULL,1,'2022-04-15 20:02:23','2022-04-15 20:02:23','2022-04-15 20:02:23'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',NULL,1,'2022-04-15 20:02:23','2022-04-15 20:02:23','2022-04-15 20:02:23'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',NULL,1,'2022-04-15 20:02:23','2022-04-15 20:02:23','2022-04-15 20:02:23'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',NULL,1,'2022-04-15 20:02:23','2022-04-15 20:02:23','2022-04-15 20:02:23'),(6,NULL,NULL,1,NULL,'教师评论112',5,2,'2022-04-15 20:47:50',NULL,'2022-04-15 20:47:50'),(8,NULL,1,NULL,NULL,'学生评论1111',5,2,'2022-04-15 21:04:03',NULL,'2022-04-15 21:04:03'),(9,NULL,1,NULL,NULL,'学生评论1121',5,2,'2022-04-15 21:04:11',NULL,'2022-04-15 21:04:11');

/*Table structure for table `guankanjilu` */

DROP TABLE IF EXISTS `guankanjilu`;

CREATE TABLE `guankanjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '网课',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '观看时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='观看进度';

/*Data for the table `guankanjilu` */

insert  into `guankanjilu`(`id`,`kecheng_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,2,'2022-04-15 20:02:23','2022-04-15 20:02:23'),(2,2,2,'2022-04-15 20:02:23','2022-04-15 20:02:23'),(3,3,3,'2022-04-15 20:02:23','2022-04-15 20:02:23'),(4,4,2,'2022-04-15 20:02:23','2022-04-15 20:02:23'),(5,5,1,'2022-04-15 20:02:23','2022-04-15 20:02:23'),(16,4,1,'2022-04-15 21:08:03','2022-04-15 21:08:03');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`jiaoshi_phone`,`jiaoshi_email`,`sex_types`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1','http://localhost:8080/jiaoyupeixun/upload/jiaoshi1.jpg','17703786901','1@qq.com',1,1,'2022-04-15 20:02:23'),(2,'a2','123456','教师姓名2','http://localhost:8080/jiaoyupeixun/upload/jiaoshi2.jpg','17703786902','2@qq.com',2,1,'2022-04-15 20:02:23'),(3,'a3','123456','教师姓名3','http://localhost:8080/jiaoyupeixun/upload/jiaoshi3.jpg','17703786903','3@qq.com',1,1,'2022-04-15 20:02:23');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '网课标题 Search111',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '网课类型 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '网课封面',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '网课视频',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '网课文件',
  `kecheng_content` text COMMENT '通知详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='网课信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_types`,`jiaoshi_id`,`kecheng_photo`,`kecheng_video`,`kecheng_file`,`kecheng_content`,`insert_time`,`create_time`) values (1,'网课标题1',3,1,'http://localhost:8080/jiaoyupeixun/upload/kecheng1.jpg','http://localhost:8080/jiaoyupeixun/upload/video.mp4','http://localhost:8080/jiaoyupeixun/upload/file.rar','通知详情1','2022-04-15 20:02:23','2022-04-15 20:02:23'),(2,'网课标题2',2,2,'http://localhost:8080/jiaoyupeixun/upload/kecheng2.jpg','http://localhost:8080/jiaoyupeixun/upload/video.mp4','http://localhost:8080/jiaoyupeixun/upload/file.rar','通知详情2','2022-04-15 20:02:23','2022-04-15 20:02:23'),(3,'网课标题3',1,3,'http://localhost:8080/jiaoyupeixun/upload/kecheng3.jpg','http://localhost:8080/jiaoyupeixun/upload/video.mp4','http://localhost:8080/jiaoyupeixun/upload/file.rar','通知详情3','2022-04-15 20:02:23','2022-04-15 20:02:23'),(4,'网课标题4',1,1,'http://localhost:8080/jiaoyupeixun/upload/kecheng4.jpg','http://localhost:8080/jiaoyupeixun/upload/video.mp4','http://localhost:8080/jiaoyupeixun/upload/file.rar','通知详情4','2022-04-15 20:02:23','2022-04-15 20:02:23'),(5,'网课标题5',3,2,'http://localhost:8080/jiaoyupeixun/upload/kecheng5.jpg','http://localhost:8080/jiaoyupeixun/upload/video.mp4','http://localhost:8080/jiaoyupeixun/upload/file.rar','通知详情5','2022-04-15 20:02:23','2022-04-15 20:02:23');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/jiaoyupeixun/upload/news1.jpg','2022-04-15 20:02:23','公告详情1','2022-04-15 20:02:23'),(2,'公告标题2',1,'http://localhost:8080/jiaoyupeixun/upload/news2.jpg','2022-04-15 20:02:23','公告详情2','2022-04-15 20:02:23'),(3,'公告标题3',1,'http://localhost:8080/jiaoyupeixun/upload/news3.jpg','2022-04-15 20:02:23','公告详情3','2022-04-15 20:02:23'),(4,'公告标题4',3,'http://localhost:8080/jiaoyupeixun/upload/news4.jpg','2022-04-15 20:02:23','公告详情4','2022-04-15 20:02:23'),(5,'公告标题5',2,'http://localhost:8080/jiaoyupeixun/upload/news5.jpg','2022-04-15 20:02:23','公告详情5','2022-04-15 20:02:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','jordtrag1ci3z0t2pm7zzpbblud4c4q7','2022-04-15 20:06:30','2022-04-15 21:56:09'),(2,1,'a1','yonghu','学生','vyqau7njs841x5matf5ninx9uolut0dg','2022-04-15 20:16:26','2022-04-15 22:04:43'),(3,1,'a1','jiaoshi','教师','sw4a5gvwo5bsokgkbn2y52ybxjgsj0dv','2022-04-15 20:44:48','2022-04-15 21:52:25');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`banji_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1','http://localhost:8080/jiaoyupeixun/upload/yonghu1.jpg','17703786901','1@qq.com',1,1,1,'2022-04-15 20:02:23'),(2,'a2','123456','学生姓名2','http://localhost:8080/jiaoyupeixun/upload/yonghu2.jpg','17703786902','2@qq.com',1,2,1,'2022-04-15 20:02:23'),(3,'a3','123456','学生姓名3','http://localhost:8080/jiaoyupeixun/upload/yonghu3.jpg','17703786903','3@qq.com',2,2,1,'2022-04-15 20:02:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
