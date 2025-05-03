/*
SQLyog Community v12.4.0 (64 bit)
MySQL - 5.6.12-log : Database - eschool
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eschool` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eschool`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can add permission',2,'add_permission'),
(5,'Can change permission',2,'change_permission'),
(6,'Can delete permission',2,'delete_permission'),
(7,'Can add group',3,'add_group'),
(8,'Can change group',3,'change_group'),
(9,'Can delete group',3,'delete_group'),
(10,'Can add content type',4,'add_contenttype'),
(11,'Can change content type',4,'change_contenttype'),
(12,'Can delete content type',4,'delete_contenttype'),
(13,'Can add session',5,'add_session'),
(14,'Can change session',5,'change_session'),
(15,'Can delete session',5,'delete_session'),
(16,'Can add user',6,'add_customuser'),
(17,'Can change user',6,'change_customuser'),
(18,'Can delete user',6,'delete_customuser'),
(19,'Can add subjects',7,'add_subjects'),
(20,'Can change subjects',7,'change_subjects'),
(21,'Can delete subjects',7,'delete_subjects'),
(22,'Can add classes',8,'add_classes'),
(23,'Can change classes',8,'change_classes'),
(24,'Can delete classes',8,'delete_classes'),
(25,'Can add contact',9,'add_contact'),
(26,'Can change contact',9,'change_contact'),
(27,'Can delete contact',9,'delete_contact'),
(28,'Can add career',10,'add_career'),
(29,'Can change career',10,'change_career'),
(30,'Can delete career',10,'delete_career'),
(31,'Can add staffapplication',11,'add_staffapplication'),
(32,'Can change staffapplication',11,'change_staffapplication'),
(33,'Can delete staffapplication',11,'delete_staffapplication'),
(34,'Can add staffregister',12,'add_staffregister'),
(35,'Can change staffregister',12,'change_staffregister'),
(36,'Can delete staffregister',12,'delete_staffregister'),
(37,'Can add studymaterials',13,'add_studymaterials'),
(38,'Can change studymaterials',13,'change_studymaterials'),
(39,'Can delete studymaterials',13,'delete_studymaterials'),
(40,'Can add upcomingevents',14,'add_upcomingevents'),
(41,'Can change upcomingevents',14,'change_upcomingevents'),
(42,'Can delete upcomingevents',14,'delete_upcomingevents'),
(43,'Can add studentregister',15,'add_studentregister'),
(44,'Can change studentregister',15,'change_studentregister'),
(45,'Can delete studentregister',15,'delete_studentregister'),
(46,'Can add booking',16,'add_booking'),
(47,'Can change booking',16,'change_booking'),
(48,'Can delete booking',16,'delete_booking');

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_school_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_school_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `school_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2025-04-26 10:22:52.829707','1','CLASS-5',1,'[{\"added\": {}}]',8,1),
(2,'2025-04-26 10:23:04.782705','2','CLASS-6',1,'[{\"added\": {}}]',8,1),
(3,'2025-04-26 10:23:21.965713','3','CLASS-7',1,'[{\"added\": {}}]',8,1),
(4,'2025-04-26 10:23:37.869823','4','CLASS-8',1,'[{\"added\": {}}]',8,1),
(5,'2025-04-26 10:23:55.639448','5','CLASS-9',1,'[{\"added\": {}}]',8,1),
(6,'2025-04-26 10:24:11.142557','6','CLASS-10',1,'[{\"added\": {}}]',8,1),
(7,'2025-04-26 10:24:26.134066','7','CLASS-11',1,'[{\"added\": {}}]',8,1),
(8,'2025-04-26 10:24:39.551847','8','CLASS-12',1,'[{\"added\": {}}]',8,1),
(9,'2025-04-26 10:48:11.258846','1','CLASS-5-Maths',1,'[{\"added\": {}}]',7,1),
(10,'2025-04-26 10:48:33.095692','2','CLASS-5-Science',1,'[{\"added\": {}}]',7,1),
(11,'2025-04-26 10:48:49.239428','3','CLASS-5-English',1,'[{\"added\": {}}]',7,1),
(12,'2025-04-26 10:49:03.035643','4','CLASS-5-Hindi',1,'[{\"added\": {}}]',7,1),
(13,'2025-04-26 10:52:17.126600','5','CLASS-6-Hindi',1,'[{\"added\": {}}]',7,1),
(14,'2025-04-26 10:52:35.494071','6','CLASS-6-English',1,'[{\"added\": {}}]',7,1),
(15,'2025-04-26 10:52:49.336171','7','CLASS-6-History',1,'[{\"added\": {}}]',7,1),
(16,'2025-04-26 10:53:09.143476','8','CLASS-6-Maths',1,'[{\"added\": {}}]',7,1),
(17,'2025-04-26 10:53:19.197764','9','CLASS-6-Science',1,'[{\"added\": {}}]',7,1),
(18,'2025-04-26 10:53:36.421256','7','CLASS-6-Social Science',2,'[{\"changed\": {\"fields\": [\"sub_name\"]}}]',7,1),
(19,'2025-04-26 10:55:50.139647','10','CLASS-7-English',1,'[{\"added\": {}}]',7,1),
(20,'2025-04-26 10:56:02.980203','11','CLASS-7-Social Science',1,'[{\"added\": {}}]',7,1),
(21,'2025-04-26 10:56:13.079715','12','CLASS-7-Maths',1,'[{\"added\": {}}]',7,1),
(22,'2025-04-26 10:56:23.838226','13','CLASS-7-Science',1,'[{\"added\": {}}]',7,1),
(23,'2025-04-26 11:06:37.435465','14','CLASS-8-Hindi',1,'[{\"added\": {}}]',7,1),
(24,'2025-04-26 11:06:58.315935','15','CLASS-8-IT',1,'[{\"added\": {}}]',7,1),
(25,'2025-04-26 11:07:19.272345','16','CLASS-8-English',1,'[{\"added\": {}}]',7,1),
(26,'2025-04-26 11:07:34.124917','17','CLASS-8-Social Science',1,'[{\"added\": {}}]',7,1),
(27,'2025-04-26 11:07:48.070746','18','CLASS-8-Science',1,'[{\"added\": {}}]',7,1),
(28,'2025-04-26 11:08:48.763533','19','CLASS-9-Maths',1,'[{\"added\": {}}]',7,1),
(29,'2025-04-26 11:09:01.076084','20','CLASS-9-Science',1,'[{\"added\": {}}]',7,1),
(30,'2025-04-26 11:09:47.749793','21','CLASS-9-IT',1,'[{\"added\": {}}]',7,1),
(31,'2025-04-26 11:10:06.676616','22','CLASS-9-Social Science',1,'[{\"added\": {}}]',7,1),
(32,'2025-04-26 11:10:24.994476','23','CLASS-9-English',1,'[{\"added\": {}}]',7,1),
(33,'2025-04-26 11:10:47.118662','24','CLASS-10-English',1,'[{\"added\": {}}]',7,1),
(34,'2025-04-26 11:11:10.799697','25','CLASS-10-Hindi',1,'[{\"added\": {}}]',7,1),
(35,'2025-04-26 11:11:28.133377','26','CLASS-10-IT',1,'[{\"added\": {}}]',7,1),
(36,'2025-04-26 11:12:13.963262','27','CLASS-10-Science',1,'[{\"added\": {}}]',7,1),
(37,'2025-04-26 11:12:30.489267','28','CLASS-10-Social Science',1,'[{\"added\": {}}]',7,1),
(38,'2025-04-26 11:12:47.023137','29','CLASS-11-IT',1,'[{\"added\": {}}]',7,1),
(39,'2025-04-26 11:13:00.065291','30','CLASS-11-English',1,'[{\"added\": {}}]',7,1),
(40,'2025-04-26 11:13:11.314566','31','CLASS-11-Hindi',1,'[{\"added\": {}}]',7,1),
(41,'2025-04-26 11:14:17.748833','32','CLASS-11-Biology',1,'[{\"added\": {}}]',7,1),
(42,'2025-04-26 11:14:43.192901','33','CLASS-11-Chemistry',1,'[{\"added\": {}}]',7,1),
(43,'2025-04-26 11:15:37.110376','34','CLASS-11-Maths',1,'[{\"added\": {}}]',7,1),
(44,'2025-04-26 11:16:27.328106','35','CLASS-11-Physics',1,'[{\"added\": {}}]',7,1),
(45,'2025-04-26 11:17:23.144187','36','CLASS-12-Biology',1,'[{\"added\": {}}]',7,1),
(46,'2025-04-26 11:17:34.037214','37','CLASS-12-Chemistry',1,'[{\"added\": {}}]',7,1),
(47,'2025-04-26 11:17:46.565543','38','CLASS-12-IT',1,'[{\"added\": {}}]',7,1),
(48,'2025-04-26 11:18:00.583259','39','CLASS-12-English',1,'[{\"added\": {}}]',7,1),
(49,'2025-04-26 11:18:11.154393','40','CLASS-12-Hindi',1,'[{\"added\": {}}]',7,1),
(50,'2025-04-26 11:18:20.550607','41','CLASS-12-Maths',1,'[{\"added\": {}}]',7,1),
(51,'2025-04-26 11:18:32.784145','42','CLASS-12-Physics',1,'[{\"added\": {}}]',7,1),
(52,'2025-04-29 04:14:46.039422','1','CLASS-5-English',1,'[{\"added\": {}}]',10,1),
(53,'2025-04-29 04:17:05.570311','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(54,'2025-04-29 04:24:04.254625','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(55,'2025-04-29 04:25:34.001445','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(56,'2025-04-29 04:25:44.086547','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(57,'2025-04-29 04:26:41.830224','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(58,'2025-04-29 04:30:42.614412','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(59,'2025-04-29 04:59:48.613220','1','CLASS-5-English',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),
(60,'2025-04-29 07:27:52.314579','1','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(61,'2025-04-29 07:36:38.420695','1','santeena-True',2,'[]',11,1),
(62,'2025-04-29 07:37:25.467639','1','santeena-False',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(63,'2025-04-29 07:37:30.022138','1','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(64,'2025-04-29 07:39:35.314652','2','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(65,'2025-04-29 07:58:11.248872','2','santeena.at@gmail.com',3,'',6,1),
(66,'2025-04-29 07:58:27.598966','3','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(67,'2025-04-29 08:14:37.238725','4','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(68,'2025-04-29 09:10:59.499038','6','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(69,'2025-04-29 09:10:59.516831','6','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(70,'2025-04-29 09:12:45.505025','7','teena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(71,'2025-04-29 09:20:38.145458','8','santeena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(72,'2025-04-29 09:22:25.669579','9','teena-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(73,'2025-04-29 09:26:08.075113','7','santeena.at@gmail.com',2,'[{\"changed\": {\"fields\": [\"staff\"]}}]',6,1),
(74,'2025-04-29 09:26:12.145290','8','santeenathomasarakkal@gmail.com',2,'[{\"changed\": {\"fields\": [\"staff\"]}}]',6,1),
(75,'2025-04-29 10:04:04.746442','9','teena-True',2,'[{\"changed\": {\"fields\": [\"photo\"]}}]',11,1),
(76,'2025-04-29 10:04:10.923092','8','santeena-True',2,'[{\"changed\": {\"fields\": [\"photo\"]}}]',11,1),
(77,'2025-04-29 10:12:52.230739','9','teena-True',2,'[{\"changed\": {\"fields\": [\"photo\"]}}]',11,1),
(78,'2025-04-29 10:12:58.602245','8','santeena-True',2,'[{\"changed\": {\"fields\": [\"photo\"]}}]',11,1),
(79,'2025-04-29 10:21:35.231649','9','teena-True',2,'[{\"changed\": {\"fields\": [\"std\"]}}]',11,1),
(80,'2025-04-29 10:21:52.926387','8','santeena-True',2,'[{\"changed\": {\"fields\": [\"std\"]}}]',11,1),
(81,'2025-04-29 10:22:03.621866','8','santeena-True',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',11,1),
(82,'2025-04-29 10:22:11.739105','9','teena-True',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',11,1),
(83,'2025-04-29 10:25:35.907969','8','santeena-True',2,'[{\"changed\": {\"fields\": [\"subject\"]}}]',11,1),
(84,'2025-04-29 10:27:43.292919','10','gouri-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(85,'2025-04-30 04:08:36.175856','10','gouri-True',2,'[{\"changed\": {\"fields\": [\"photo\"]}}]',11,1),
(86,'2025-04-30 09:49:11.958400','3','CLASS-5',1,'[{\"added\": {}}]',13,1),
(87,'2025-04-30 09:57:50.307233','3','CLASS-5',2,'[{\"changed\": {\"fields\": [\"free_or_not\"]}}]',13,1),
(88,'2025-04-30 09:58:17.290536','3','CLASS-5',2,'[{\"changed\": {\"fields\": [\"amount\"]}}]',13,1),
(89,'2025-04-30 09:58:36.106527','3','CLASS-5',2,'[{\"changed\": {\"fields\": [\"free_or_not\", \"amount\"]}}]',13,1),
(90,'2025-04-30 09:59:49.347278','3','CLASS-5',2,'[{\"changed\": {\"fields\": [\"free_or_not\", \"amount\"]}}]',13,1),
(91,'2025-04-30 11:08:34.484342','11','gourisaji3113@gmail.com',3,'',6,1),
(92,'2025-04-30 11:08:34.489328','10','gouriemaildemo@gmail.com',3,'',6,1),
(93,'2025-04-30 11:10:52.213489','4','CLASS-5',1,'[{\"added\": {}}]',13,1),
(94,'2025-04-30 11:11:18.213531','4','CLASS-5',2,'[{\"changed\": {\"fields\": [\"free_or_not\", \"amount\"]}}]',13,1),
(95,'2025-05-02 08:52:56.737542','4','CLASS-5',2,'[{\"changed\": {\"fields\": [\"free_or_not\", \"amount\"]}}]',13,1),
(96,'2025-05-02 09:10:21.058042','1','anu',3,'',16,1),
(97,'2025-05-02 09:13:48.202944','2','anu',3,'',16,1),
(98,'2025-05-02 09:17:28.550375','3','anu',3,'',16,1),
(99,'2025-05-02 11:01:21.553839','11','Jishna-True',2,'[{\"changed\": {\"fields\": [\"selected\"]}}]',11,1),
(100,'2025-05-03 04:22:47.584790','5','CLASS-5',1,'[{\"added\": {}}]',13,1),
(101,'2025-05-03 04:51:16.541221','6','CLASS-7',1,'[{\"added\": {}}]',13,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'contenttypes','contenttype'),
(16,'school','booking'),
(10,'school','career'),
(8,'school','classes'),
(9,'school','contact'),
(6,'school','customuser'),
(11,'school','staffapplication'),
(12,'school','staffregister'),
(15,'school','studentregister'),
(13,'school','studymaterials'),
(7,'school','subjects'),
(14,'school','upcomingevents'),
(5,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2025-04-26 09:20:25.933435'),
(2,'contenttypes','0002_remove_content_type_name','2025-04-26 09:20:26.089019'),
(3,'auth','0001_initial','2025-04-26 09:20:26.687418'),
(4,'auth','0002_alter_permission_name_max_length','2025-04-26 09:20:26.780169'),
(5,'auth','0003_alter_user_email_max_length','2025-04-26 09:20:26.790143'),
(6,'auth','0004_alter_user_username_opts','2025-04-26 09:20:26.799119'),
(7,'auth','0005_alter_user_last_login_null','2025-04-26 09:20:26.808095'),
(8,'auth','0006_require_contenttypes_0002','2025-04-26 09:20:26.813082'),
(9,'auth','0007_alter_validators_add_error_messages','2025-04-26 09:20:26.822060'),
(10,'auth','0008_alter_user_username_max_length','2025-04-26 09:20:26.833028'),
(11,'auth','0009_alter_user_last_name_max_length','2025-04-26 09:20:26.843001'),
(12,'school','0001_initial','2025-04-26 09:20:27.558276'),
(13,'admin','0001_initial','2025-04-26 09:20:27.823839'),
(14,'admin','0002_logentry_remove_auto_add','2025-04-26 09:20:27.839460'),
(15,'sessions','0001_initial','2025-04-26 09:20:27.933187'),
(16,'school','0002_auto_20250426_1453','2025-04-26 09:23:59.604919'),
(17,'school','0003_classes_subjects','2025-04-26 10:19:42.567318'),
(18,'school','0004_contact','2025-04-29 03:57:26.431351'),
(19,'school','0005_career','2025-04-29 04:10:50.116098'),
(20,'school','0006_staffapplication_staffregister','2025-04-29 05:56:43.349221'),
(21,'school','0007_studymaterials','2025-04-29 11:06:36.238033'),
(22,'school','0008_studymaterials_date','2025-04-29 11:22:37.581659'),
(23,'school','0009_auto_20250430_1451','2025-04-30 09:21:35.766599'),
(24,'school','0010_auto_20250430_1515','2025-04-30 09:46:01.192786'),
(25,'school','0011_auto_20250430_1518','2025-04-30 09:48:15.965395'),
(26,'school','0012_studentregister','2025-04-30 11:07:04.625477'),
(27,'school','0013_booking','2025-05-02 06:46:09.168109');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('67xy3lj32jf1tpn8bdcfx0yvs1axrne7','NWI4ZWE0YjY0OTdhZGJhMWZiZWUzNjU1YWNjNzhmNTQ1OGYxNjgyZTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ4OWYxYTc4OTg3ODEzMjhmNzRkOGJhYjFhZTU0ZmEwZGQzZmYzMSJ9','2025-05-16 06:16:32.810009'),
('6kny2xwa2ukxykjcamdwweocv24c9aya','NWI4ZWE0YjY0OTdhZGJhMWZiZWUzNjU1YWNjNzhmNTQ1OGYxNjgyZTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ4OWYxYTc4OTg3ODEzMjhmNzRkOGJhYjFhZTU0ZmEwZGQzZmYzMSJ9','2025-05-17 04:59:35.963324'),
('9aavohvh2k2fi7wljr6sywdc0ti1oqq7','ZTg4OGU3N2FlNGE2OTkwYzA1YWVkNGM0YzYwNmU0MTcyNzk1MWE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjdkNDE0OWY2MzE3NzAwNmU1ZDE1ZTVhZjYyOWNmM2FmOGU2OWQ5In0=','2025-05-10 09:25:32.745277'),
('a1giyfittu8ivn15gw7lolulfwfy3dbb','ZTg4OGU3N2FlNGE2OTkwYzA1YWVkNGM0YzYwNmU0MTcyNzk1MWE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjdkNDE0OWY2MzE3NzAwNmU1ZDE1ZTVhZjYyOWNmM2FmOGU2OWQ5In0=','2025-05-12 10:06:59.484482'),
('vpxgeplblzr8a8mm5r7d8esxs6y4snn6','NWI4ZWE0YjY0OTdhZGJhMWZiZWUzNjU1YWNjNzhmNTQ1OGYxNjgyZTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ4OWYxYTc4OTg3ODEzMjhmNzRkOGJhYjFhZTU0ZmEwZGQzZmYzMSJ9','2025-05-16 05:51:43.990352');

/*Table structure for table `school_booking` */

DROP TABLE IF EXISTS `school_booking`;

CREATE TABLE `school_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `material_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_booking_material_id_4c4588ab_fk_school_studymaterials_id` (`material_id`),
  KEY `school_booking_name_id_28ba7dce_fk_school_customuser_id` (`name_id`),
  CONSTRAINT `school_booking_name_id_28ba7dce_fk_school_customuser_id` FOREIGN KEY (`name_id`) REFERENCES `school_customuser` (`id`),
  CONSTRAINT `school_booking_material_id_4c4588ab_fk_school_studymaterials_id` FOREIGN KEY (`material_id`) REFERENCES `school_studymaterials` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `school_booking` */

insert  into `school_booking`(`id`,`amount`,`status`,`material_id`,`name_id`) values 
(4,150,'paid',3,12),
(5,150,'paid',3,14);

/*Table structure for table `school_career` */

DROP TABLE IF EXISTS `school_career`;

CREATE TABLE `school_career` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub` varchar(100) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `school_career` */

insert  into `school_career`(`id`,`sub`,`class_name`,`content`) values 
(1,'English','CLASS-5','<div class=\"career-vacancy\" id=\"vacancy-standard5-teacher\">\r\n  <h2> Standard 5 English Teacher</h2>\r\n  <p><strong>Position:</strong> English Teacher (Standard 5)</p>\r\n  <p><strong>Qualifications:</strong></p>\r\n  <ul>\r\n    <li>Bachelor\'s Degree in English or Education (B.Ed preferred)</li>\r\n    <li>Minimum 2 years of teaching experience for primary grades</li>\r\n    <li>Excellent communication and classroom management skills</li>\r\n    <li>Passionate about teaching and child development</li>\r\n  </ul>\r\n  <p><strong>Responsibilities:</strong></p>\r\n  <ul>\r\n    <li>Plan and deliver engaging English lessons for Standard 5 students</li>\r\n    <li>Assess and track student progress</li>\r\n    <li>Maintain a positive and inclusive classroom environment</li>\r\n    <li>Participate in school events and meetings</li>\r\n  </ul>\r\n\r\n\r\n</div>');

/*Table structure for table `school_classes` */

DROP TABLE IF EXISTS `school_classes`;

CREATE TABLE `school_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `school_classes` */

insert  into `school_classes`(`id`,`class_name`,`image`) values 
(1,'CLASS-5','classes/cat-1.jpg'),
(2,'CLASS-6','classes/cat-2.jpg'),
(3,'CLASS-7','classes/cat-3.jpg'),
(4,'CLASS-8','classes/cat-4.jpg'),
(5,'CLASS-9','classes/cat-5.jpg'),
(6,'CLASS-10','classes/cat-6.jpg'),
(7,'CLASS-11','classes/cat-7.jpg'),
(8,'CLASS-12','classes/cat-8.jpg');

/*Table structure for table `school_contact` */

DROP TABLE IF EXISTS `school_contact`;

CREATE TABLE `school_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `message` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `school_contact` */

insert  into `school_contact`(`id`,`name`,`mail`,`subject`,`message`) values 
(1,'santeena','santeena.focus@gmail.com','dgdgdg','sdadsadada');

/*Table structure for table `school_customuser` */

DROP TABLE IF EXISTS `school_customuser`;

CREATE TABLE `school_customuser` (
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
  `staff` tinyint(1) NOT NULL,
  `student` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `school_customuser` */

insert  into `school_customuser`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`,`staff`,`student`) values 
(1,'pbkdf2_sha256$100000$mlFKJVYtW4vl$UqILXrQvTNHaaIy93SNWw9pZryssU7z+qca5RVtjUMo=','2025-04-28 10:06:59.484482',1,'admin','','','',1,1,'2025-04-26 09:25:11.650896',0,0),
(7,'pbkdf2_sha256$100000$VAXjfdqXiNrQ$XxJbZwjDncSWB52izb2G3y+41uKtR1X6p7xHuCfjXwQ=','2025-05-03 04:52:20.577846',0,'santeena.at@gmail.com','santeena','','',0,1,'2025-04-29 09:20:38.000000',1,0),
(8,'pbkdf2_sha256$100000$yxdhyKVI3agP$BzL/R/xjPm0nRJd039HEr9f+2zTEPB3iaYgTG8n+GK8=','2025-05-02 05:42:09.952370',0,'santeenathomasarakkal@gmail.com','teena','','',0,1,'2025-04-29 09:22:25.000000',1,0),
(9,'pbkdf2_sha256$100000$ctGrCzBXloTt$Sc0CIVxiT+6QY4TcPP92Dfzr/NAtFmqPupzw+Zn8B8Y=','2025-04-29 10:29:01.526622',0,'focus.santeena@gmail.com','gouri','','',0,1,'2025-04-29 10:27:43.169952',1,0),
(12,'pbkdf2_sha256$100000$8kaNcEsCdgXk$Y2cyFVIS1h5lVmP4aDzWlRtvkbbRTskFvo5+Y7HYxgQ=','2025-05-03 04:59:35.963324',0,'gouriemaildemo@gmail.com','anu','','gouriemaildemo@gmail.com',0,1,'2025-04-30 11:08:48.392439',0,1),
(13,'pbkdf2_sha256$100000$keZHJwsMjmD9$rLdeR/nn0zptAaMIU1Hd/rxlk77+EOVubuUWhSXmOL4=','2025-05-02 10:52:15.952261',0,'gourisaji3113@gmail.com','qwerty','','gourisaji3113@gmail.com',0,1,'2025-05-02 09:55:00.697942',0,1),
(14,'pbkdf2_sha256$100000$wCnFWtBEP88X$piN1pHRbOnvQGltOD7nz/mk9YTIERfwD1ixJfkdWSnU=','2025-05-02 10:54:26.239118',0,'jishnakp14@gmail.com','jishna','','jishnakp14@gmail.com',0,1,'2025-05-02 10:54:03.936864',0,1),
(15,'pbkdf2_sha256$100000$5LVeyrT1XV8a$R9g5WiH2ys4AHEvWsu9o73vQlfgJmArmEKiI+jP3rt0=','2025-05-02 11:02:45.371083',0,'kpjishna68@gmail.com','Jishna','','',0,1,'2025-05-02 11:01:21.454967',1,0);

/*Table structure for table `school_customuser_groups` */

DROP TABLE IF EXISTS `school_customuser_groups`;

CREATE TABLE `school_customuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `school_customuser_groups_customuser_id_group_id_ab64b576_uniq` (`customuser_id`,`group_id`),
  KEY `school_customuser_groups_group_id_cc24b7d6_fk_auth_group_id` (`group_id`),
  CONSTRAINT `school_customuser_groups_group_id_cc24b7d6_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `school_customuser_gr_customuser_id_d4697628_fk_school_cu` FOREIGN KEY (`customuser_id`) REFERENCES `school_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `school_customuser_groups` */

/*Table structure for table `school_customuser_user_permissions` */

DROP TABLE IF EXISTS `school_customuser_user_permissions`;

CREATE TABLE `school_customuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `school_customuser_user_p_customuser_id_permission_41ebb870_uniq` (`customuser_id`,`permission_id`),
  KEY `school_customuser_us_permission_id_79525a32_fk_auth_perm` (`permission_id`),
  CONSTRAINT `school_customuser_us_customuser_id_08f54bb5_fk_school_cu` FOREIGN KEY (`customuser_id`) REFERENCES `school_customuser` (`id`),
  CONSTRAINT `school_customuser_us_permission_id_79525a32_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `school_customuser_user_permissions` */

/*Table structure for table `school_staffapplication` */

DROP TABLE IF EXISTS `school_staffapplication`;

CREATE TABLE `school_staffapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `std` varchar(100) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `selected` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `school_staffapplication` */

insert  into `school_staffapplication`(`id`,`name`,`age`,`qualification`,`subject`,`std`,`mail`,`resume`,`photo`,`selected`) values 
(8,'santeena','21','btech','English','class-7','santeena.at@gmail.com','resume/Version_Control_System_Using_Git_aGxnsZ6.pdf','profile/download_3.jpg',1),
(9,'teena','23','mba','Maths','class-5','santeenathomasarakkal@gmail.com','resume/booking_48.pdf','profile/download_2.jpg',1),
(10,'gouri','23','b.ed','maths','class-5','focus.santeena@gmail.com','resume/angular28-12-2024new.pdf','profile/download_1.jpg',1),
(11,'Jishna','31','Md,Phycisian','Physics','class-6','kpjishna68@gmail.com','resume/WhatsApp_Image_2025-04-08_at_14.24.59_a71cc0ce.jpg','profile/resized_whiterice.jpg',1);

/*Table structure for table `school_staffregister` */

DROP TABLE IF EXISTS `school_staffregister`;

CREATE TABLE `school_staffregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `staff_det_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_staffregister_staff_det_id_f1c0b47e_fk_school_st` (`staff_det_id`),
  CONSTRAINT `school_staffregister_staff_det_id_f1c0b47e_fk_school_st` FOREIGN KEY (`staff_det_id`) REFERENCES `school_staffapplication` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `school_staffregister` */

insert  into `school_staffregister`(`id`,`password`,`staff_det_id`) values 
(1,'EAucm2qA',8),
(2,'EIHp6Rd7',9),
(3,'sIAoRBTm',10),
(4,'Sn2aelKZ',11);

/*Table structure for table `school_studentregister` */

DROP TABLE IF EXISTS `school_studentregister`;

CREATE TABLE `school_studentregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` varchar(3) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `class_name_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_studentregist_class_name_id_42dbd6f3_fk_school_cl` (`class_name_id`),
  KEY `school_studentregister_name_id_5009e706_fk_school_customuser_id` (`name_id`),
  CONSTRAINT `school_studentregister_name_id_5009e706_fk_school_customuser_id` FOREIGN KEY (`name_id`) REFERENCES `school_customuser` (`id`),
  CONSTRAINT `school_studentregist_class_name_id_42dbd6f3_fk_school_cl` FOREIGN KEY (`class_name_id`) REFERENCES `school_classes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `school_studentregister` */

insert  into `school_studentregister`(`id`,`age`,`mail`,`password`,`class_name_id`,`name_id`) values 
(1,'21','gouriemaildemo@gmail.com','123',1,12),
(2,'31','gourisaji3113@gmail.com','123',1,13),
(3,'25','jishnakp14@gmail.com','123',6,14);

/*Table structure for table `school_studymaterials` */

DROP TABLE IF EXISTS `school_studymaterials`;

CREATE TABLE `school_studymaterials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pdf` varchar(100) DEFAULT NULL,
  `date` datetime(6),
  `std_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `free_or_not` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_studymaterials_std_id_f0a896c1` (`std_id`),
  KEY `school_studymaterials_subject_id_553b42d9` (`subject_id`),
  CONSTRAINT `school_studymaterials_std_id_f0a896c1_fk_school_classes_id` FOREIGN KEY (`std_id`) REFERENCES `school_classes` (`id`),
  CONSTRAINT `school_studymaterials_subject_id_553b42d9_fk_school_subjects_id` FOREIGN KEY (`subject_id`) REFERENCES `school_subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `school_studymaterials` */

insert  into `school_studymaterials`(`id`,`pdf`,`date`,`std_id`,`subject_id`,`amount`,`free_or_not`) values 
(3,'notes/angular28-12-2024new_m8XjM51.pdf','2025-04-30 09:48:26.000000',1,1,150,0),
(4,'notes/Modules_Exercises.pdf','2025-04-30 11:10:28.000000',1,1,NULL,1),
(5,'notes/PYTHON_-_22_Database.pdf','2025-05-03 04:22:32.000000',1,1,230,0),
(6,'notes/PYTHON_-_25_CSS.pdf','2025-05-03 04:51:00.000000',3,10,NULL,1);

/*Table structure for table `school_subjects` */

DROP TABLE IF EXISTS `school_subjects`;

CREATE TABLE `school_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(50) DEFAULT NULL,
  `syllabus` varchar(100) DEFAULT NULL,
  `class_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_subjects_class_name_id_c01eb287_fk_school_classes_id` (`class_name_id`),
  CONSTRAINT `school_subjects_class_name_id_c01eb287_fk_school_classes_id` FOREIGN KEY (`class_name_id`) REFERENCES `school_classes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `school_subjects` */

insert  into `school_subjects`(`id`,`sub_name`,`syllabus`,`class_name_id`) values 
(1,'Maths','syllabus/CBSE-Syllabus-for-Class-5-Maths-2023-24.pdf',1),
(2,'Science','syllabus/CBSE-Syllabus-for-Class-5-EVS-2023-24.pdf',1),
(3,'English','syllabus/CBSE-Syllabus-for-Class-5-English-2023-24.pdf',1),
(4,'Hindi','syllabus/CBSE-Syllabus-for-Class-5-Hindi-2023-24.pdf',1),
(5,'Hindi','syllabus/CBSE-Syllabus-for-Class-6-Hindi-2023-24.pdf',2),
(6,'English','syllabus/CBSE-Syllabus-for-Class-6-English-2023-24.pdf',2),
(7,'Social Science','syllabus/CBSE-Syllabus-for-Class-6-History-2023-24.pdf',2),
(8,'Maths','syllabus/CBSE-Syllabus-for-Class-6-Maths-2023-24.pdf',2),
(9,'Science','syllabus/CBSE-Syllabus-for-Class-6-Science-2023-24.pdf',2),
(10,'English','syllabus/CBSE-Syllabus-for-Class-7-English-2023-24.pdf',3),
(11,'Social Science','syllabus/CBSE-Syllabus-for-Class-7-History-2023-24.pdf',3),
(12,'Maths','syllabus/CBSE-Syllabus-for-Class-7-Maths-2023-24.pdf',3),
(13,'Science','syllabus/CBSE-Syllabus-for-Class-7-Science-2023-24.pdf',3),
(14,'Hindi','syllabus/CBSE-Syllabus-for-Class-8-Hindi-2023-24.pdf',4),
(15,'IT','syllabus/CBSE-Syllabus-for-Class-8-Artificial-Intelligence-2023-24.pdf',4),
(16,'English','syllabus/CBSE-Syllabus-for-Class-8-April-18-English-2023-24.pdf',4),
(17,'Social Science','syllabus/CBSE-Syllabus-for-Class-8-History-2023-24.pdf',4),
(18,'Science','syllabus/CBSE-Syllabus-for-Class-8-Science-2023-24.pdf',4),
(19,'Maths','syllabus/CBSE-Syllabus-for-Class-9-April-11-Maths-2023-24.pdf',5),
(20,'Science','syllabus/CBSE-Syllabus-for-Class-9-April-11-Science-2023-24.pdf',5),
(21,'IT','syllabus/CBSE-Syllabus-for-Class-9-Information-Technology-2023-24.pdf',5),
(22,'Social Science','syllabus/CBSE-Syllabus-for-Class-9-Social-Science-2023-24.pdf',5),
(23,'English','syllabus/CBSE-Class-9-Communicative-English-Syllabus-2023-24.pdf',5),
(24,'English','syllabus/CBSE-Class-10-English-Language-and-Literature-Syllabus-2023-24.pdf',6),
(25,'Hindi','syllabus/CBSE-Syllabus-for-Class-10-Hindi-A-2023-24.pdf',6),
(26,'IT','syllabus/CBSE-Syllabus-for-Class-10-Information-Technology-2023-24.pdf',6),
(27,'Science','syllabus/CBSE-Syllabus-for-Class-10-Science-2023-24.pdf',6),
(28,'Social Science','syllabus/CBSE-Syllabus-for-Class-10-Social-Science-2023-24.pdf',6),
(29,'IT','syllabus/CBSE-Class-11-Computer-Science-Syllabus-2023-24.pdf',7),
(30,'English','syllabus/CBSE-Class-11-English-Core-Syllabus-2023-24.pdf',7),
(31,'Hindi','syllabus/CBSE-Class-11-Hindi-Core-Syllabus-2023-24.pdf',7),
(32,'Biology','syllabus/CBSE-Syllabus-for-Class-11-Biology-2023-24.pdf',7),
(33,'Chemistry','syllabus/CBSE-Syllabus-for-Class-11-Chemistry-2023-24.pdf',7),
(34,'Maths','syllabus/CBSE-Syllabus-for-Class-11-Mathematics-2023-24.pdf',7),
(35,'Physics','syllabus/CBSE-Syllabus-for-Class-11-Physics-2023-24.pdf',7),
(36,'Biology','syllabus/CBSE-Class-12-Biology-Syllabus-2023-24.pdf',8),
(37,'Chemistry','syllabus/CBSE-Class-12-Chemistry-Syllabus-2023-24.pdf',8),
(38,'IT','syllabus/CBSE-Class-12-Computer-Science-Syllabus-2023-24.pdf',8),
(39,'English','syllabus/CBSE-Class-12-English-Core-Syllabus-2023-24.pdf',8),
(40,'Hindi','syllabus/CBSE-Class-12-Hindi-Elective-Syllabus-2023-24.pdf',8),
(41,'Maths','syllabus/CBSE-Class-12-Maths-Syllabus-2023-24.pdf',8),
(42,'Physics','syllabus/CBSE-Class-12-Physics-Syllabus-2023-24.pdf',8);

/*Table structure for table `school_upcomingevents` */

DROP TABLE IF EXISTS `school_upcomingevents`;

CREATE TABLE `school_upcomingevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std` varchar(100) DEFAULT NULL,
  `sub` varchar(100) DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `staff_det_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_upcomingevent_staff_det_id_298a2df7_fk_school_st` (`staff_det_id`),
  CONSTRAINT `school_upcomingevent_staff_det_id_298a2df7_fk_school_st` FOREIGN KEY (`staff_det_id`) REFERENCES `school_staffapplication` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `school_upcomingevents` */

insert  into `school_upcomingevents`(`id`,`std`,`sub`,`event`,`date`,`staff_det_id`) values 
(1,'class-5','Maths','webniar on vedic maths','2025-05-10 00:00:00.000000',9),
(2,'class-7','English','free webinar on Spoken English ','2025-05-03 00:00:00.000000',8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
