/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t122`;
CREATE DATABASE IF NOT EXISTS `t122` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t122`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbooth6iu7/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbooth6iu7/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbooth6iu7/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `fangwuleixing`;
CREATE TABLE IF NOT EXISTS `fangwuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='房屋类型';

DELETE FROM `fangwuleixing`;
INSERT INTO `fangwuleixing` (`id`, `addtime`, `fangwuleixing`) VALUES
	(21, '2021-05-12 01:44:56', '房屋类型1'),
	(22, '2021-05-12 01:44:56', '房屋类型2'),
	(23, '2021-05-12 01:44:56', '房屋类型3'),
	(24, '2021-05-12 01:44:56', '房屋类型4'),
	(25, '2021-05-12 01:44:56', '房屋类型5'),
	(26, '2021-05-12 01:44:56', '房屋类型6');

DROP TABLE IF EXISTS `fangyuanshenqing`;
CREATE TABLE IF NOT EXISTS `fangyuanshenqing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='房源申请';

DELETE FROM `fangyuanshenqing`;
INSERT INTO `fangyuanshenqing` (`id`, `addtime`, `bianhao`, `fangwumingcheng`, `fangwuleixing`, `fujian`, `shenqingneirong`, `shenqingshijian`, `yonghuming`, `xingming`, `nianling`, `shouji`, `hunyin`, `sfsh`, `shhf`) VALUES
	(41, '2021-05-12 01:44:56', '编号1', '房屋名称1', '房屋类型1', '', '申请内容1', '2021-05-12 09:44:56', '用户名1', '姓名1', '年龄1', '手机1', '婚姻1', '是', ''),
	(42, '2021-05-12 01:44:56', '编号2', '房屋名称2', '房屋类型2', '', '申请内容2', '2021-05-12 09:44:56', '用户名2', '姓名2', '年龄2', '手机2', '婚姻2', '是', ''),
	(43, '2021-05-12 01:44:56', '编号3', '房屋名称3', '房屋类型3', '', '申请内容3', '2021-05-12 09:44:56', '用户名3', '姓名3', '年龄3', '手机3', '婚姻3', '是', ''),
	(44, '2021-05-12 01:44:56', '编号4', '房屋名称4', '房屋类型4', '', '申请内容4', '2021-05-12 09:44:56', '用户名4', '姓名4', '年龄4', '手机4', '婚姻4', '是', ''),
	(45, '2021-05-12 01:44:56', '编号5', '房屋名称5', '房屋类型5', '', '申请内容5', '2021-05-12 09:44:56', '用户名5', '姓名5', '年龄5', '手机5', '婚姻5', '是', ''),
	(46, '2021-05-12 01:44:56', '编号6', '房屋名称6', '房屋类型6', '', '申请内容6', '2021-05-12 09:44:56', '用户名6', '姓名6', '年龄6', '手机6', '婚姻6', '是', '');

DROP TABLE IF EXISTS `fangyuanxinxi`;
CREATE TABLE IF NOT EXISTS `fangyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shenqingwenjian` varchar(200) DEFAULT NULL COMMENT '申请文件',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `shenqingyaoqiu` longtext COMMENT '申请要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='房源信息';

DELETE FROM `fangyuanxinxi`;
INSERT INTO `fangyuanxinxi` (`id`, `addtime`, `fangwumingcheng`, `fangwuleixing`, `tupian`, `shenqingwenjian`, `zixundianhua`, `dizhi`, `shenqingyaoqiu`) VALUES
	(31, '2021-05-12 01:44:56', '房屋名称1', '房屋类型1', 'http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian1.jpg', '', '020-89819991', '地址1', '申请要求1'),
	(32, '2021-05-12 01:44:56', '房屋名称2', '房屋类型2', 'http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian2.jpg', '', '020-89819992', '地址2', '申请要求2'),
	(33, '2021-05-12 01:44:56', '房屋名称3', '房屋类型3', 'http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian3.jpg', '', '020-89819993', '地址3', '申请要求3'),
	(34, '2021-05-12 01:44:56', '房屋名称4', '房屋类型4', 'http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian4.jpg', '', '020-89819994', '地址4', '申请要求4'),
	(35, '2021-05-12 01:44:56', '房屋名称5', '房屋类型5', 'http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian5.jpg', '', '020-89819995', '地址5', '申请要求5'),
	(36, '2021-05-12 01:44:56', '房屋名称6', '房屋类型6', 'http://localhost:8080/springbooth6iu7/upload/fangyuanxinxi_tupian6.jpg', '', '020-89819996', '地址6', '申请要求6');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712452425682 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(71, '2021-05-12 01:44:56', 1, '用户名1', '留言内容1', '回复内容1'),
	(72, '2021-05-12 01:44:56', 2, '用户名2', '留言内容2', '回复内容2'),
	(73, '2021-05-12 01:44:56', 3, '用户名3', '留言内容3', '回复内容3'),
	(74, '2021-05-12 01:44:56', 4, '用户名4', '留言内容4', '回复内容4'),
	(75, '2021-05-12 01:44:56', 5, '用户名5', '留言内容5', '回复内容5'),
	(76, '2021-05-12 01:44:56', 6, '用户名6', '留言内容6', '回复内容6'),
	(1712452425681, '2024-04-07 01:13:45', 11, '用户1', '666', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='公示信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(61, '2021-05-12 01:44:56', '标题1', '简介1', 'http://localhost:8080/springbooth6iu7/upload/news_picture1.jpg', '内容1'),
	(62, '2021-05-12 01:44:56', '标题2', '简介2', 'http://localhost:8080/springbooth6iu7/upload/news_picture2.jpg', '内容2'),
	(63, '2021-05-12 01:44:56', '标题3', '简介3', 'http://localhost:8080/springbooth6iu7/upload/news_picture3.jpg', '内容3'),
	(64, '2021-05-12 01:44:56', '标题4', '简介4', 'http://localhost:8080/springbooth6iu7/upload/news_picture4.jpg', '内容4'),
	(65, '2021-05-12 01:44:56', '标题5', '简介5', 'http://localhost:8080/springbooth6iu7/upload/news_picture5.jpg', '内容5'),
	(66, '2021-05-12 01:44:56', '标题6', '简介6', 'http://localhost:8080/springbooth6iu7/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(3, 1, 'admin', 'users', '管理员', 'g9hfq69xghy3slwycex9z4o5125txtc4', '2024-04-07 01:00:47', '2024-04-07 02:12:11'),
	(4, 11, '用户1', 'yonghu', '用户', 'p5r33743662b94le23pv08udqw8e7h0k', '2024-04-07 01:02:01', '2024-04-07 02:13:36');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-12 01:44:56');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `touxiang`, `nianling`, `hunyin`, `shenfenzheng`, `shouji`) VALUES
	(11, '2021-05-12 01:44:56', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang1.jpg', '年龄1', '已婚', '440300199101010001', '13823888881'),
	(12, '2021-05-12 01:44:56', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang2.jpg', '年龄2', '已婚', '440300199202020002', '13823888882'),
	(13, '2021-05-12 01:44:56', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang3.jpg', '年龄3', '已婚', '440300199303030003', '13823888883'),
	(14, '2021-05-12 01:44:56', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang4.jpg', '年龄4', '已婚', '440300199404040004', '13823888884'),
	(15, '2021-05-12 01:44:56', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang5.jpg', '年龄5', '已婚', '440300199505050005', '13823888885'),
	(16, '2021-05-12 01:44:56', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/springbooth6iu7/upload/yonghu_touxiang6.jpg', '年龄6', '已婚', '440300199606060006', '13823888886');

DROP TABLE IF EXISTS `zhufangfenpei`;
CREATE TABLE IF NOT EXISTS `zhufangfenpei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fenpeineirong` longtext COMMENT '分配内容',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='住房分配';

DELETE FROM `zhufangfenpei`;
INSERT INTO `zhufangfenpei` (`id`, `addtime`, `fangwumingcheng`, `fangwuleixing`, `yonghuming`, `xingming`, `shouji`, `fenpeineirong`, `fenpeishijian`) VALUES
	(51, '2021-05-12 01:44:56', '房屋名称1', '房屋类型1', '用户名1', '姓名1', '手机1', '分配内容1', '2021-05-12 09:44:56'),
	(52, '2021-05-12 01:44:56', '房屋名称2', '房屋类型2', '用户名2', '姓名2', '手机2', '分配内容2', '2021-05-12 09:44:56'),
	(53, '2021-05-12 01:44:56', '房屋名称3', '房屋类型3', '用户名3', '姓名3', '手机3', '分配内容3', '2021-05-12 09:44:56'),
	(54, '2021-05-12 01:44:56', '房屋名称4', '房屋类型4', '用户名4', '姓名4', '手机4', '分配内容4', '2021-05-12 09:44:56'),
	(55, '2021-05-12 01:44:56', '房屋名称5', '房屋类型5', '用户名5', '姓名5', '手机5', '分配内容5', '2021-05-12 09:44:56'),
	(56, '2021-05-12 01:44:56', '房屋名称6', '房屋类型6', '用户名6', '姓名6', '手机6', '分配内容6', '2021-05-12 09:44:56');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
