-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: to_do_list
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `comment_time` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (16,'Mn Æ¡i á»•n háº¿t chÆ°a? BÃ¡o cÃ¡o sáº¿p kÃ¬a','2021-04-03 23:16:06',12),(17,'Äá»ƒ kiá»ƒm tra láº§n cuá»‘i Ä‘Ã£','2021-04-03 23:16:42',10),(18,'CÃ³ ai cÃ³ Ã½ kiáº¿n gÃ¬ ko?','2021-04-03 23:21:19',10),(19,'Táº¡m thá»i thÃ¬ khÃ´ng','2021-04-03 23:21:42',13),(20,'Toang rá»“i. Deadline mÃ  láº¡i gáº·p bugs','2021-04-04 17:07:41',11);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` mediumblob NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` bigint(20) NOT NULL,
  `upload_time` datetime NOT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh5cchnpa6yekfuhqutgi5fsng` (`task_id`),
  CONSTRAINT `FKh5cchnpa6yekfuhqutgi5fsng` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (19,_binary 'PK\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0[Content_Types].xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0´”\Ëj\Ã0E÷…þƒÑ¶\ØJº(¥\ÄÉ¢ehúŠ4NDõB£¼þ¾\ã81¥$14\É\Æ \Ï\Ü{\Ï1ƒ\ÑÚšl	µw%\ë=–“^i7+\Ù\×\ä-d&\á”0\ÞA\É6€l4¼½L60#µÃ’\ÍS\nOœ£œƒXø\0Ž*•V$:\ÆB~‹ðû^\ïK\ï¸”§Úƒ\r/P‰…I\Ù\ëš~7$²\ì¹i¬³J&B0ZŠDu¾t\êOJ¾K(H¹\íÁ¹xG\rŒL¨+\Çvººš¨dcÓ»°\Ô\ÅW>*®¼\\XR§mpúª\ÒZ}\í¢—€HwnM\ÑV¬\Ðn\Ï”\Ã-\ì\")/\ÒZwB`\ÚÀ\Ë4¾\Ýñ	®°s\îDXÁôój¿\Ì;A*Êˆ©\Ëc´Ö‰\Ö\04\ßþ\Ù[›S‘\Ô9Ž> ­•ø±÷{£V\ç4p€˜ô\éW\×&’õ\ÙóA½’¨\Ù|»d‡?\0\0\0ÿÿ\0PK\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0_rels/.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬’Áj\Ã0@\ïƒýƒÑ½Q\ÚÁ£N/c\Ð\Û\Ù[IL\Û\Øj\×þý<\Ø\Ø]\éaG\Ë\ÒÓ“\ÐzsœFu\à”]ð\Z–U\rŠ½	\Öù^\Ã[û¼x\0•…¼¥1x\Öp\â›\æöfý\Ê#I)Êƒ‹YŠ\Ï\Z‘øˆ˜\ÍÀ\å*Dö\å§i\")\Ï\Ôc$³£žqU\×÷˜~3 ™1\Õ\ÖjH[{ª=E¾†º\Î~\nf?±—3-\ÂÞ²]\ÄTê“¸2j)õ,\Zl0/%œ‘b¬\n\Zð¼\Ñ\êz£¿§Å‰…,	¡	‰/û|f\\Zþ\çŠ\æ?6\ï!Y´_\áoœ]Aó\0\0ÿÿ\0PK\0\0\0\0\0!\0ˆu\Ñ\Ù^	\0\0GC\0\0\0\0\0word/document.xml\ì\\\Ío\ã\Æ¿\èÿ0\ÐiØµø-JˆH¢´0°ñn¢\è\Z\Ò\"k~…Ivn‹ ŠœŒŠŠ\Ú1Û¤Ydƒ¤(`!\èA®ÿþ\'}3$%\ê\Ã2­\Ý\r$\Ã>ˆ\âòqÞ¼\ßüÞ›7”?úø\ÈuP\ß#\Û÷¶KüWB¦‡}\ÃöºÛ¥\ÏÛ\ÕŠˆ\îº\ã{\æv\éØŒJ\ïüö7\rj†{®\é*¼¨6ðv\É\"$¨•\Ë¶LW¶\\‡~\ä-\ì»eÿ\àÀ\Æfy\à‡FY\àxŽ}B›Q\Ïk\ê^_J©:|TL›\ê¸™*”\Ê\Ø\ÒCbMtð·V\"—«eu^‘°‚\"°P\à\çU‰·V¥”i¯\æI+)‚^\Íi’WÓ´À8e5MÂ¼¦\Êjš\ÄyM\êjš\æ\à\ä\Î\ÜL\Zü\Ð\Õ	œ†Ý²«‡‡½\à1(tbwl\Ç&Ç “S25º\í®\Ð#¸k¬Á[k¨”]\ß0\ÑÈ´øÛ¥^\è\Õ\Òû\ï§]¯%÷§‡ìŽ°ˆý\É-ZJ\Ìòrh:0¾Yv0ž\á\îªÚ \ÑÊ”ô—\Ñw\ìºAÀœ.\×Ñ“–\åDa‘\î§\ã\ï:IÏ—k\ä¹¡*\Æw\é\Âô3³ž¸€\ÂÉƒW\Zš\Ü\àò	$S \Ì)P°Yð3jª£Œ\'3”\ê±NLO\âªÇž,_\Çf;“S™·S!gýˆŽÝœEA÷\Ý`û$ô{ÁD›ýn\Úv\'$4 \éÀ-t¥ð\ÏO\É\è\Ý:³o\ép“‹k»]\ÏõŽ=0#À#b Ÿ\àVz`_\Í#D‰ ´\éK\Ç7Ž\é1€©è¡¾\ÈQ*JK\æ\ÚZ‰Iü	•r\\Ckª¢\0\Ò\Z¤JÆ§T\ÄKb•¯ŽE{!rœ$ª\í±P3ôžC\æ[ö˜H\äõ\ëM°\ÒÃŸ0´÷ug»„\îÌ°T¦\Ò0iÛ¾G\"¸@°\rŽ|n»f„>1\èS\ß\Õ=ªÚª{\Ñ\âÍ‹™òNòÙŒ\Ø1ú<ë€ $\í\Ñ\çMúÌœ¬œö¨<\îv¸pÖ¸\ëƒ\Z\Ùy\î>r\ìˆP)I\Ú£\æaÁ5\Z²ViP\0\ä`¡4U­Y§`q+4T±\"\\ƒ€Ža\î\Ãû£<~[?‹‡#~öºˆ#·O<t4ú\æñðGº\ìŠxø-|\Ñ+8\Ì\Üò\Âˆ1ò.¿\0\ág½ø\â\ÜC\Î\èdèž…¢\Ñ¶\à²3œª\ï\ÛñðKŒ¬\Ñ)œx\Ý\Ñ\é1\ÂñðµŽ<kôÍ£\ï<ô€d {¸U\0vUiñ\\kv•ôo\nvI‘•fAØ¥o \ì\Ö\ra4–Õ¢@\Çz‚ÐŒÌ°o–vø-4\å\ÝM™/‹­IôWûZƒfð´V\Óß»C^È±H_ü\Â*!/2:µÑ¡\å3‚z\0y”\í<BE4]zx\å¶T­ó~°\ïøô\Ñ\Ì\äv›þj>½<a|\ìYñÅ›\àùõG§>‚ó%\"\rS]ty¿¸Á­ªÒ„P°1þ[l¼C™¬\éØ©L€\ÍRgt\ê\"úãœ€N\Óÿ\àTD ©x½ÄºØ‰@>,J%ñð_\É\ß\"\"ù\â¿^zª<\ÜBûz²\Ävõ£©,‰\\a¹‹3\áòdt³Àˆ/^õ2$\Ý„€q\ç0 E(À§EIÀPÀ¼\Â(a‚t–\Ü\Zj›S¥ú¦c€.<þB©0¾\Ñ72ñš]\"¥@Æ–O÷ð‡1FÀ€ŠŸ\n­†D‰“ªª\\šZ\rIMU¨´\Å\Æ	\ËWC\Ó-÷«¡÷\ëwa%«…ùHØ‡_»	\Z`\î³¹\í\Z®\ÞÂ—\Ñwñð\å£ø\â\Â\Â\Æ\ë^&;š ô\æüh|qF•X£3ý\áòD‡\ZmQ<£#ˆ¯\ìª\áŸ!©‚Kÿ¸li²$©If­\Æòx\ÚyF=z\Ç\Æ7¡\Ý×‰ùpÖ¬u³a1Åkh¤÷ºWo\ã\á\ß\í$O\ÂV:-Á‹\"\à\Î7À&‡£º,\\,O\rNT¤_Á“\ïm=\Ó}\Ö9	¾ñ\ÖÝ—;EhZ¬ª’\Ø\0L­\ZJ]\Ò\Ô	\'/¯•. \éÍ­•®\Åe\\¸®‹«-ôttS……3Wg°`ˆ‡_%ñ…X¦ŒÑ¿\íM%\Ä\å¼\ÆCr+ý\n™\Þ{\ãµ#\Ó-€²\Í6òšJ@¢\Ú9ž\Þ)\È%D\É\ÆÀ²\áá›Š()wrxXx¿ó\Ð\Ø\É46m¯#©À,\ÅÎ²\íI\æfqWou–\ç_4—¼hR·¬´y-\n\ä–\Ìi\ÊF¡\02˜-zÿ±‘Aw3£\étª€ÿGww\é†	-@\ÞTQ\×¡Z\ç6e/O`¦¾\ì±MlZKš3z\í æ€¯h\á`º@° nNm¨\Ö;feJ(_\ÔÃ°ž\ìÚºG‹\ÊI­I·A®»Tš2U~\ÕUh+^TMkpô}ŸÜª†\ç\Û<_ak‹O÷«š\Ë\Òú$‡—¢$ jM\ØøB2Ì”\ïÙ®\ËÅ«\ãµ\'€\ë²Å¹ùï²¹KKASö-bŠ¬¼thÝ”t®ipñ <ð€óz¹\Ú \ZJÊƒóûý\ëf\ÒN’ûu\è®+\ç¦T_„…\å\×T\å\Ê\Ì\0«ª\Õ\Ù\Æ@Ž…yYæ¤±(™\Ö3\Â<5Oµ$¯gNr²Œó>\ä0v’\Ï÷ù\"fj\Ô\Zwzü÷´úi¥¿V$WQ£›|S¤–\Ø\àyn–{;7V\é`û\ä\Ø1³~?µ#²}\è†zFe¯\ç&W\ÚN\ßÉ®Kù\ÚvL&¦&o¸\çpñ»\ä5\' \î^d\"¬\Ã%ý~B\î\ègºIp^\02\\U\Ð±Ný¯HW…:dcKY\ã2™\è\êŒ-¾ÎŠ\r$þX\0&Š*µ›-af\ãB\á´\n§U\ï™\å\î\Â;z	=²È‰\í:}ñ:Ÿ}Ô•J]‘g^@¸\È&ä¹•ú\Ê2t¢w ú@ˆ$+rµ%\ÎPˆ¬òj³\ÞP§’þøgB¦[\î²¾Òµut\Å\é¡\'/v\0D\æ¡\Îó”,ò©H½\ÍWZ\Zý\Õ\Ù ie(%ýŒ0‡š\é–kjKë¿€Y7G/^€\ïY,±p\ã\áK—½¦—þv¨vCY)\ç‘5^\í=|ñ\ì\éB8G&&{c«n\Â)ƒ^wŸ>°]\âAby”\ßeUJ\Ù(\è>Ó©F\â —’KB»k‘\Éi\Ç\'\Äw\'\çŽykµL\Ý0\á¹ø>Év{„¦Ã¾CmO}J¯ab\Ã\ÇOBú[Ñšc{\æžM0ôRTXk9³›}M~9ZžüŒÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0³¾‹\0\0¶\0\0\0word/_rels/document.xml.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬“\Íj\Ã0„ï…¾ƒ\Ø{-;mC	‘s)\\[÷d{ýCõc¤MZ¿}EJ‡ÓƒŽ3bg¾…\Õzó­; ó½5²$†¦²uoZ\Åö\á˜\'ij©¬A#z\Ø\ä÷w\ë7T’Â\ïúÁ³b¼€ŽhXq\î«µô‰Ð„—\Æ:-)H\×òAVŸ²E¾H\Ó%w\ÓÈ¯2Ù®\àvõ#°bð?Ù¶iú\n_mµ\×h\èF÷H6ó!SºIÀ\ÉIBð\Û‹¨4*œõ\\}³\Þ\ìu‰.l|!8[sË˜fñp”¿f6\Çð“¡±†\nYª	\ÇÙšƒxŠ	ñ…\åûŸ“œ˜\'~õ\Ûò\0\0\0ÿÿ\0PK\0\0\0\0\0!\0¶ôg˜\Ò\0\0\É \0\0\0\0\0word/theme/theme1.xml\ìYK‹G¾ò†¹\Ëz\Í\èa¬5\ÒHòk\×6Þµƒ½Rk¦­ži\Ñ\ÝÚµ0†`Ÿr	œC¹\åB1\Ä\ä’c°Iœ‘\êI3-õÄ]ƒ	»‚U?¾ªþºªºº4s\á\âý˜:G˜Â’Ž[=WqœŒØ˜$aÇ½}0,µ\\GH”Œe	\î¸,Ü‹;Ÿv—Ž±ò‰8:n$\å\ì|¹,F0Œ\Ä96\Ã	\ÌM‘„.\ËcŽŽAoLËµJ¥QŽI\\\'A1¨½1™v”Jwg¥|@\á_\"…\ZQ¾¯TcCBc\ÇÓªúP\î!\Úqa1;>À÷¥\ëP$$LtÜŠþs\Ë;\Êk!*dsrCý·”[\nŒ§5-\Ç\ÃÃµ \çù^£»Ö¯Tn\ã\ÍAc\ÐX\ë\Ó\04\ZÁNS.¦\Îf-ð–\Ø(mZt÷›ýz\ÕÀ\çô×·ð]_}¼¥Mo?™\rs ´\éo\áý^»\×7õkP\Úllá›•n\ßk\Zx\rŠ(I¦[\èŠß¨«Ý®!F/[\ám\ß6kKx†*\ç¢+•OdQ¬\Å\è\ãC\0h\ç\"IG.fx‚F€%‡œ8»$Œ ðf(a†+µÊ°R‡ÿ\ê\ã\é–ö(:QN:\Z‰­!\Å\Ç#Nf²\ã^­nò\êÅ‹—ž¿|ôû\ËÇ_>úu¹ö¶\Üe”„y¹7?}ó\Ï\Ó/¿ûñÍ“o\íx‘Ç¿þ\å«\×üù_\ê¥A\ë»g¯Ÿ?{õý\×ýü\Ä\ïrt˜‡\ç:>vn±6hY\0ò÷“8ˆ\ÉKt“P )z #}}(²\àzØ´\ã\é\Â¼4¿gÞø\\ðZÀ=\Æhqëž®©µòV˜\'¡}q>\Ï\ãn!td[;\Øðò`>ƒ¸\'6•A„\rš7)¸…8Á\ÒQslŠ±E\ì.!†]÷Èˆ3Á&Ò¹Kœ\"V“C#š2¡\Ë$¿,lÁß†mö\î8=Fm\êûø\ÈD\Â\Ù@Ô¦SÃŒ—\Ð\\¢\Ø\Ê\Å4\ÜE2²‘\Ü_ð‘ap!Á\Ó!¦\ÌŒ±6™|aÐ½i\Æ\îö=ºˆM$—djC\î\"\Æò\È>›ŠgV\Î$‰ò\Ø+b\n!Šœ›LZI0ó„¨>ø%…\î¾C°\áî·Ÿ\íÛ†\ì¢f\æ\Üv$03\Ï\ã‚N¶)\ïò\ØH±]N¬\ÑÑ›‡Fh\ïbL\Ñ1\Zc\ìÜ¾bÃ³™aóŒô\Õ²\Êel³\ÍUdÆª\ê\'X@­¤Š‹c‰0Bv‡¬€\Ï\Þb#ñ,P#^¤ùú\Ô™\\u±5^\éhj¤R\ÂÕ¡µ“¸!bc…ZoF\È+\Õöx]p\Ã\ïr\Æ@\æ\Þ\È\à÷–\ÄþÎ¶9@\ÔX ˜U†-Ý‚ˆ\áþLD\'-6·\ÊM\ÌC›¹¡¼Qô\Ä$yk´Qûø¯ö\n\ã\ÕO-\ØÓ©w\ìÀ“T:E\Éd³¾)\ÂmV5\ãcò\é5}4Onb¸G,Ð³šæ¬¦ù\ß\×4E\çù¬’9«d\Î*»\ÈG¨d²\âE?Z=\è\ÑZ\âÂ§>B\é¾\\P¼+t\Ù#\àì‡0¨;ZhýiAs¹œ9\Òm‡3ù‘\Ñ~„f°LU¯Š¥\êP83& p\Ò\ÃV\Ýj‚\Î\ã=6NG«\Õ\ÕsM@2‡\Âk5ešLG\Í\ì\ÞZ½\î…úAëŠ€’}¹\ÅLu‰\æjð-$ô\ÎN…E\ÛÂ¢¥\Ô²\Ð_K¯À\å\ä õH\Ü÷RFn\Òc\å§T~\å\ÝS÷t‘1\Ím\×,\Ûk+®§\ãiƒD.\ÜL¹0Œ\àò\Ø>e_·3—\Zô”)¶i4[\Ã\×*‰l\äš˜=\ç\Î\\\Ý5#4\ë¸ø\É\Íxú„\ÊTˆ†I\ÇÉ¥¡?$³Ì¸}$¢¦§\Òý\ÇDb\îPC¬\ç\Ý@“Œ[µ\ÖT{üDÉµ+Ÿž\åôW\Þ\Éx2Á#Y0’ua.Ub=!Xu\ØH\ïG\ãc\ç\Îù-†ò›UeÀ1rm\Í1\á¹\àÎ¬¸‘®–G\Ñxß’QDgZ\Þ(ùdž\Âu{M\'·\ÍtsWf¹™\ÃP9\éÄ·\îÛ…\ÔD.i\\ \êÖ´çw\É\çXey\ß`•¦\î\Í\\\×^åº¢[\â\äBŽZ¶˜AM1¶P\ËFMj§X\ä–[‡f\ÑqÚ·ÁfÔªbUW\ê\ÞÖ‹mvx\"¿\Õ\êœJ¡©Â¯Ž‚\Õ+\É4\è\ÑUv¹/9\'÷A\Å\ïzA\ÍJ•–?(yu¯Rjù\Ýz©\ëûõ\êÀ¯Vú½\ÚC0ŠŒâªŸ®=„ût±|o¯Ç·\Þ\ÝÇ«RûÜˆ\Åe¦\ë\à²\Ö\ïî«µ\âw÷\Ë<hÔ†\íz»\×(µ\ë\Ýa\É\ë÷Z¥v\Ð\è•ú \Ùö¿\Õ>t#\röºõÀkZ¥F5J^£¢\è·Ú¥¦W«u½f·5ðº—¶†¯¾W\æÕ¼vþ\0\0ÿÿ\0PK\0\0\0\0\0!\0\Ò4l¥~\0\0~\r\0\0\0\0\0word/settings.xml´W\ßo\â8~?\éþ\ÄóQ\çDKW@\ÈmW\åö´tu\ÏNbÀjG¶eO÷¿\ßÄ‰h£Ý»ö¡˜ùf¾\Ï\Ø\ã\á\Ã\Ç\'–DHÊ‹\ÙÐ¾±†R¤<£\Ån6üö&ÃT¸\Èp\Î2žˆ~¼ýõ—\ÇP¥@M€¢!KgÃ½Re8\ËtO–7¼$€[.VðU\ì\Æ‹Çª¥œ•XÑ„\æT\ÆÈ²üaK\Ãg\ÃJaK1b4\\ò­ªMB¾\ÝÒ”´\ÆB\\\ã·1‰xZ1R(\íq,H1ðB\îi)\rûY6\0÷†\äð£MXnôŽ¶u\Åv\\d\Ï×„W”‚§DJ(\ËM€´\è»¯ˆž}ß€\ïv‹š\n\ÌmK¯\Î#÷\ÞF€^ø)yzÇ¤\åƒ\å9\Í\Þ\Æ\ã?ó\Ð.±¶ÿsÁœHò6\n\Ï\Ä!O¬Û‘Ì¯©q\Ý\ÓD`\ÑÜ ¶À,\r\ïv8\É!(ô\0j5\Ð\Ñ\Õÿa\Ëõ‡^‚\Ï[¸\È\ß9gƒcX‘\Âi†.X\Ãq\rdd‹«\\=\àd£x	*±¨…\Ó=8UDlJœ\ÂA[òB	ž½ŒÿÁ\Õ.º€s\ØZ\èkß­6M‹3ˆö¢-¬ywüV‚^Ÿ\Ö\Ú@{·½s—/qhy‚f\ä¡\Î\ÒFrCðúÌ‹\ìs%F\ÝþC?\n€µ\ç/P×‡SIb‚Uiz\'gºqN\Ë5‚‹»\"ƒ:¿›3º\Ý(Vd\rÇ‡\n~\ÔyþDp/\Í;ù­$ù”\áZ9p,\\)\Î>\Ê=\äú¨\äøüø\Â{™I³øÊ¹2ªü¹\Î$n\"­Ñ«\Ç^\ÌW½H\ìLý ±-k\â.{dÏ½~›À³œ¨YúŽ\ë÷!\Èr|·76Áª\í—ˆš÷!.ò\æ\êC¼•gE½x±;·µ¿D\Ûó,·q}\Ï\ï\Í\Î$†¼õÆ¶˜8\ê\Ý\éù\Ó6”K$r½À]ô\"ž\ëNz\Ù\"M\ç½y[¡\0¡^?«©ã›¶üñ—®öøù\\²°žFþfU7·k,–˜%‚\âÁºžWÆµF\"´0xB\à™!\çÈ¦J8\Z5€d8\Ïc¸fÐ¡±0£²Œ\ÈV¯ó5»Ž·\Õ½Rxi>?sÕ¯¿^•\rz¸lš–Q±]·µ¤…º§\Ì\Èe•lŒU\ãTÙ—ƒ\Ðy\ê\Òs4\Ýü\ï±n&Z—£o›&\Ùi.6u£ k\\–M¿Ivöl˜\Ó\Ý^\Ùu‹Pð-ƒ±VIv¨Å\ÆPƒ\é/8­w\Ú\í¢“!#;\ÓsŒ\Ì\éd®‘¹\Ì32¯“ùF\æ×²=¼0\"§\Å#´>³¬\å[ž\çüH²OþJ\Ô$A\îqI¢f\Z€\ã\ÅA;\ÈÁ!$O07Œ*øµPÒŒa˜\ìl\é\ë\Üj\çø\Ä+u¡[cµryÉa…MÓ½0\ÖGüE,õ”’R8Ž›Kº\á\ã¦	<§Š\æÅ…Á~Ó˜\í†O\ï\êi\Èm\ä\Þr\ZE\ÓUsÿlO\Ï7J¿%P÷¯d»À’d-fL½\Æô\ï r‘P0r\ß¹(\nF\Ë[Œ\"\Ï^Yv¼@nÿ\Ó^Ró\Ã\éö_\0\0\0ÿÿ\0PK\0\0\0\0\0!\0›­ô t\0\0ð*\0\0\0\0\0word/numbering.xml\ìXÛŽ\ê6}¯\Ô@‘ú8“!É \Ã…Ú©Ú£ª‡ª\Ï&1`MlGv¸½žŸ\é\'ô³úµs#%fTQ)/8\Ø{/o¯½·³\à\Ó\ç=Žz[\È8¢d¤™†Öƒ$ !\"«‘ö\Ç|ö\ài=ž\0‚ˆ8\ÒkŸŸ¿ÿ\î\ÓnH6x™0\ì	Â‡»8i\ë$‰‡ºÎƒ5Ä€?b0\Ê\é2y(\Ö\ér‰¨\ï(u\Ë0ô)f4€œœ@¶€k9\\°o†2°\Î\ÐÖƒ5`	\Ü1\Ì\Ö ýI÷\ê@–8¡eÖ¡ú­¡]FU²•€DT5¤\ZÒ…\Ã9jHV\ÉUC\ê×‘<5¤Z9\áz\Ó±¸¤ƒD|e+ö¶‰p´@J\Óp\n€È›BDÂ«DÀý°5‚«c\ZÂ¨(t¤m\æþ¥¿}˜ù\çC\áÁšœ?s™\Ð`ƒ!IÒ“\ëF‚Jø\Z\Åe‡cU4±¸.@¶\ïb‹£\Ân›\r\Û\å\Úõ4É¨<6	?\çGY\ä\ï#šFƒŒHˆÒ£I§{‘`Q…Ç•¨©k6¼@\n\0«\à°\á…_`x9†;Tâ †­Q\àdY‘8\èH¬\Ùð;¦Àa;ˆA?\àÊ‰\â\Õmeû#£›øˆ†nC{=^B;©Z`\å\å_mI~[0_\× w†¯+BXD\"\"Q\Ì=Q½4òS¤U\é#\Ü÷\äE =ý<a H¾lp\ï\äÛ«( ¡ƒÈA!~˜œÌ¤Ž¿L 3Þ¤‰D!\\\Â· \Zi–\ëL\Ç\Zkº\\Á›(A¿À-Œ\æ‡6\ëÃ‚¡ðW¹Éµ\Ì6ÁqTX<\Í\ìÿiú’­D[¹€Ä5L\âH¼†ü©\åœqv¡\Äf8)ü›(‚I\é=‡ûré¡œý9(\æ\"¸Ì\ãß˜‘’\Ó#Íµ\Ò=×€¬RE\Øwi«—\Æ,f”$\\\Ò\È$JlŽ0\ä½/p\×ûb@$<ñ9s‘h‘&ŒD\Æ~ò}\éò\á¢[À/N¯\á…p	“yHi,zz¼s\æ\Ì#s†m<†\ÑOg\Ä+E¼—¶PZHŸ4\Û3fFKcvi[vM\ÛV£÷…n‚LRRa\ïlV2wnØŽ5«\Æ\Ú\à\ãYû\ç\Û_my³LG·?…µüi\Ã+¬Îµ#(+¢*AY¡}0A·&\Èó\ÔúzÀ\ZUØ©L´£Æ¾ËŽ<\Üu\Çeýug÷_\ÝqÎv\ÜÀP¼\Ê?®\ãÜ»ì¸«xWÿG\ç\Ýi\Ç9¶\â~{\Ç\é\'jX\îñ®T–\r\ØZ*fc\Ó\éOr‘«*•§®\ã®?-\É-\ÓZ‘\Ê3\Ûó&\ÆtZOc¿e\Z;ù\Ü\É\çN>wò¹“Ï|n\Å[\'Ÿ;ù¬\Öq|V\ë¸ÿ|–*¡µ|v}\Ût\\÷Fù\ì\Í|â’\Ü2­ùœ§u\Ö0!ùfgyüÁ|l›\Ç\Ö\nºS¶²\í”\íU‚:e{™˜NÙªu\\§l;e«\Öq²Uë¸»R¶$U´¤ø#XN\È\Û\âDE„ä‚›u\Ý-¥óŠ[ÿº›Uu\Ë\ÆLT?ÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0öü¾«´\0\0ur\0\0\0\0\0word/styles.xml¼Ks\Û8\Ç\ï[µß¥\Ó\ì!‘Ÿr’\Zg\Êv\âµk\ã\Ä9›3DB\Ö ¡\å#¶÷\Ó/\0R\ä&(6\Ø\ãbIdÿðhühˆ¤~ÿ\ã)•\Ñ/žBe§£ý·{£ˆg±JDv:úqwù\æ\Ý(*J–%LªŒŸŽžy1ú\ã\ã\ßÿöûã‡¢|–¼ˆ4 +>¤ñ\éhQ–\Ë\ãq/xÊŠ·j\É3}p®ò”•úm~?NYþP-\ß\Ä*]²RÌ„\åóø`oo2j0yŠš\ÏE\Ì?©¸JyVZûqÎ¥&ª¬Xˆe±¢=ö¡=ª<Y\æ*\æE¡Êš—2‘­1ûG\0”Š8W…š—oucš\ZY”6\ßß³¯R¹\ã\0\00‰ùŽñ®aŒµ¥\Ë	Ž3YsD\âp\Â*\ã\0\nŽC¯\êQ<§¦Eiü\áú>S9›IM\Ò>Št7Glþ×µ5\ìK}úG=`\âsVÉ²0oóÛ¼yÛ¼³.UV\Ñ\ãV\ÄB\Ü\ézix*t9WgY!FúgEyV\Özpa^´‰‹\Òùø\\$b46%ÿ\Ó1y::8X}raj°õ™d\Ùý\ê3ž½ù1uk\â|4\Ó\Ü\Ó\Ë\ßLÏŒ\á¸iXý\×i\îò\å;[ð’\ÅÂ–\Ã\æ%\×ZÜŸ\ì¨Fú\Ç\ïWo¾W¦\ÏYUª¦¨ÿ®±c\Ð\ãZ¢Z°\Ó:n\è£|þE\Å<™–úÀ\éÈ–¥?üq}›•\ë\Øp:zo\Ë\ÔNy*®D’ð\Ì91[ˆ„ÿ\\ð\ìGÁ“\Í\ç^Z}7Äª\Êô\ëÃ“‰²H>?\Å|i¢…>š1ã“¯\Æ@š³+±)Üšÿw\Ûo<\Ñf¿\àÌ„\Ìhÿ%\ÂV…80…\Ó\Úvfõ¢\íö,TA‡¯U\Ð\ÑktüZM^« “\×*\è\Ýkd1eA\"KøS-DX \î\âxÔˆ\æxÄ†\æx´„\æx¤‚\æx”€\æx:š\ã\ÇhŽg˜\"8¥Š}£\Ðì‡ž\Ñ\Þ\Í\Ý=G„qwO	a\Ü\Ý3@wwÀ\ã\îŽ\ïa\Ü\Ý\á<Œ»;z‡qwk<·^jE\×ZfY9Xes¥\ÊL•<*ù\Óp\Z\Ë4\Ë\æ‘4<3\éñœ¤‘˜:²5ñ`Z\Ì\ìû\Ý#ÄŠ4|>/M‚©y4÷UÎ‹Á\ç\Ù/.Õ’G,I4˜ó²\Ê==2¦s>\ç9\ÏbN9°\é &Œ²*Œ\Í%»\'cñ,!\î¾‘$(¬´ÎŸF$‚`P§,\Î\Õðª)F¾ˆbx_Ht^IÉ‰X_i†˜e\r\Ï\r,fxj`1\Ã3‹ž8>£ê¢†F\ÔS\r¨\Ã\Z\ZQ¿\Õã“ª\ß\Z\ZQ¿54¢~kh\Ãû\íN”Ò†xwÕ±\ß\ï\îB*³ó?¸SqŸ1½\0>\Ý4{¦\Ñ-\Ë\Ù}Î–‹\È\ìJ·c\Ý6c\Ë9W\ÉstG1§­IT\ëz;D.t«EV\r\ï\Ð-\Z•¸\Ö<\"y­yD[ó†K\ìF/“\Í\íŠ&Ÿ™V³²U´–\ÔK´S&«zA;\\m¬>\Â6¸yA&ƒv,Áþj–³Æ‘oS\Ë\áÛ°†\Ë\êeT\"­^ƒ$¨¥TñM¾z^ò\\§eƒI—JJõ\È:\â´\ÌU=\Ö\\\ÉX—ô’ü\çt¹`…°¹\Ò¢ÿT¿ºf ºa\ËÁ\rº•Ld4~ûü&eBFt+ˆ«»›/ÑZš4\Ót\rð\\•¥JÉ˜\ÍN\ào?ù\ì4<\ÓIpöL\Ô\Ú3¢\í!»“LMR	I/3E&H\æP\Ëûž)–\'4´Ûœ×—é”œˆ8e\é²^thK\Ç\ÅGVC–÷o–³/4˜\æ\ìô\Õ\ì?<¾ªˆd3\ç[U\Ú-C»:µ\Öt¸\á3ûnø¬~gwù¦\Â9‚\Æn\á†7vG\Õ\ØÉŠBx¿õ\æQ5wÅ£n\ïð|­\á)©òy%\é:p$\ëÁ¬•¬Ò¬ l±\å6\Øò¨\ÛK8d,`\Íòþ™‹„\ÌF\å	£rƒ…QùÀ\ÂH0ü¢\Z6ü\Ê\Z6üòš\ZF´p`T\ãŒtú\'úbÆQ3£\ZgF5\Î,Œjœ~Šø|®ÁtSŒƒ¤\Zs’n¢\ÉJž.U\Îòg\"\äg\É\ïÁžfM»\Í\Õ\Ü\Ür¡²úºk¤\ÙV–t«\ãŸ|F0hÎ™”J\ím\"±µÜ¾k—™½+apn%‹ùBÉ„\çž6ùmu\"9­o1xY}[^[x_\Äý¢Œ¦‹õÎµ‹™\ì\í´\\e²[f»l\ëó\É\êÞŒ6³žˆ*]U\Þ09\ìolGô–ñ\Ñn\ã\Í»ey\Ü\Ó–9\Ùm¹Y>nYžô´„e¾\ëii\Ã\æ–e—>±ü¡u œtŸuò\ã|\']£hm\ÜZl\×@Z[¶\rÁ“®Q´%•\è,Ž\Í\Î7ôN?\Íø\íû‰\ÇoQ‘Ÿ‚‘“Ÿ\Ò[W~D—À¾ó_\ÂLy˜ i\Ë[_	\0\â¾]]öŠœVªÞƒ\Þúò¤ÿ\rJ\×zE‘<j\åöÿf+\Êøû±w¸ñ#z\Ç?¢w\0ò#zE\"¯9*$ù)½c“\Ñ;Hù\èhg\\´‚ö¸h\íC¢¤„D««\0?¢÷rÀ@\"\ÐB°Rð#PB\æAB…´P!-Tˆ@.ÀpB…ö8¡Bû¡BJˆP!-Tˆ@\"\ÐB…´P!-\ÔÀµ½\×<H¨‚*D …\nh¡\Úõ\â\0¡B{œP¡}ˆP!%D¨‚*D …\nh¡BZ¨*D „\nÌƒ„\n)h¡BZ¨j}\Û\\¸P¡=N¨\Ð>D¨\"THA\"\ÐB…´P!-Tˆ@\"PB\æAB…´P!-Tˆ@\Õ~‹6@¨\Ð\'Th\"TH	*¤ …\nh¡BZ¨*D …\n(¡ó ¡B\nZ¨*Dt\Ï\æ«@\ß%\ãûø]O\ï\Õ\çý¿ºj*õÝ½-\ÙEöG­j\ågõ¿®þ\\©‡¨õ&ºC›oôƒˆ™\ÊnQ{¾ov¹öZ\ÔŸ\ß.º\ïVq\é \Ô\\\×o¿3ð£¾–`O\å¨kÈ»– \É;\ê\Z\é®%XuuE_\×LƒG]A\×\êruµ†žŽ€qW˜qŒ÷=\æ]\Ñ\Ú1‡]\Ü£C\Ø\Ã]‘\Ù1„\Ü\Ã\ã\È\ç—\Ö\Ç=ûi²¾ðº†£C8ñº†%ô\Õ*CaôušŸ\Ð\×{~B_7ú	(z1x\ÇúQhûQa®†2Ãº:\\¨~\ÖÕ\äj€	w5D»\Z¢\Â\\\r#\ÖÕ€uuxpö‚\\\r0á®†¨`WCT˜«\áT†u5$`]\r	XWœ½˜pWCT°«!*\Ì\Õpq‡u5$`]\r	XWCB«&\Ü\Õ\ìjˆ\ns5È’Ñ®†¬«!\ëjHr5À„»\Z¢‚]\rQ]®¶»([®Fy\Ø1\Ç-\ÂCÜ„\ìâ‚³c-9ÖÙ’CÌ– ¯V>\ÇeK®\Óü„¾\Þóúº\ÑO@ùÓ‹Á;ÖB{Ø\ns5.[jsu¸Pý¬«qÙ’\×Õ¸l©\ÓÕ¸l©\ÓÕ¸l\É\ïj\\¶\Ô\æj\\¶\Ô\æ\êð\à\ì\'¹\Z—-uº\Z—-uº\Z—-ù]Ë–\Ú\\Ë–\Ú\\Ë–\Ú\\=pBöb\Â]Ë–:]Ë–ü®\ÆeKm®\ÆeKm®\ÆeKm®\ÆeK^Wã²¥NWã²¥NW\ã²%¿«q\ÙR›«q\ÙR›«q\ÙR›«qÙ’\×Õ¸l©\ÓÕ¸l©\ÓÕ¸l\éF›‚\ÇMS–—Ý³Ï®X±(\Ùð\íý\Èr^(ù‹\'mS¿ Z9~\Üú)\'Ã¶?§\Ï/uŸ™§y;·+%õ\ÓL =ñ:Yÿ\ä’165‰š·j>¶n¾®­K´†°¨x¡ËŠ›\ç0yŠjž§º¾‰\Ê>MõeÁž‡®ÚŠl\à\ê\ì¦K7ýUŸ·\Õ[õ.Í€ï¨³DgÕšñUð}v\ÕP\×g&\ëŸÿ\Ò/®³D›Ÿ¾ªkš<±\Z¥_p)oX}¶ZúO•|^\ÖG÷÷\ì½ü/Ž\Ï\ê\'\Éy\ís¦½€ñve\ê·\ÍOyú»~¶|sý€wHšX\Ô\Ò\Ýöb–¡=\í¯Û–\\Öµ1en\îû{Y)57‡\ë^eº¤oF\Û@J°Ú‡Íµ‘\én/„ñ¿=¾§ÿ¾»¬\Ïj~!N\Øña¼k®\ái&ˆ\Ø<kà©¬˜l\î\î®»úM¸¦Ñ«W\Å\Çÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0@Áÿñ9\0\0#\0\0\0\0\0word/webSettings.xmlœ\Ò_O\Â0\0ðw¿\Ã\Òw\è ²…Ab\Æc¢~€\ÒÝ ±\í-½\âÀO\ïmbxa¾ôÿýr\×v¶\Ø9›|B ƒ¾£a*ð\ZK\ã×…x[¦\"¡¨|©,z(\ÄH,\æ·7³&o`õ\n1òIJXñ”;]ˆMŒu.%\é\r8EC¬Áóf…Á©\ÈÓ°–N…m=\Ð\èj\Í\ÊX÷rœ¦™80\á\Z«\Êhx@½u\àc/X\Ñ\Ó\Æ\ÔtÔšk´CY\Ô@\Äõ8û\ã9eü‰\Ý]@\Îè€„Ur1‡Œ:Š\ÃGi7rö˜ô\Æ@¦a\×Ï˜É‘\çŽ)û9\Ù\É1\å™ó¿d\Î\0‚~\Ä\ä˜\í][‘\Óù\Ó\ÚcP+\Ë¿Q\Â×œtp\Ûr¶m\×\rùøœ-\Ö\Ñ8óK÷‚ \Ûee-6/Ï<‘¾öü\0\0ÿÿ\0PK\0\0\0\0\0!\0|™\Ý\ÓG\0\0?	\0\0\0\0\0word/fontTable.xmlÜ•M\Ú0@\ï•ú\"ß—8!mX©\ÛEªTõ\ÐnÕ³qb5¶#\Ûø÷;\ácKHJ8\ãñ‹ý\rO\Ï;Q[¦\rW2C\Ñ£€Iªr.\×úù¶|˜¡ÀX\"sR)\É2´g=/>~xjæ…’\Ö°^š¹ *­­\çahh\É1#U3	“…Ò‚X¸\Õ\ëPý{S?P%jbùŠW\Ü\î\Ã\ã	\ê0úŠ*\nN\ÙgE7‚I\ë×‡šU@TÒ”¼6Zs­Q:¯µ¢\Ì8³¨Zž \\1QrœjeTaGp˜nG\Ë#\ìG¢:\Òa€ø0¡l7Œ1\ë!¬<\çð|gr\äðüŒóo›96‘öaöÂH\Ðù—µTš¬* Áo€\æÀƒ\Ý\'\ì\Ö}ù!¤/ºz\rš¹$¼qÁLð5Áw%ˆô	5‘Ê°r¶¤\ÊŽ\áš\à1Nq\ïF	\n]\"-‰6\ÌÁ\ÚDÜ†\"xµ?Dµ\çú‰š[Z\â[¢¹\Ût;eø\Z&6f…3ôŠ1Ž_—K\ÔF¢½@d:K?u‘\Ø=Ë¿»\ÈøÁ.B=\Ç\ßF-‡z\Î1ž¶&.Œ¼Š¯4¿bb\é\r¸+ñ ¦\á\Æ3‘ô™ˆ“\é}L¨\æL»\ê¸bc\n½\rg%dC¨œ\é¾\Â(øŽ\å·WE2¾‡‹_\ÐÝŸ\é5‘§W¿‰¸\Ï\ÙX5¨,\ÎÕªˆ\ÞGN*‘^³÷‘UüØ‹•ª®xH¡\í»\Ö?…Ž\áªb:À\ÃðNñ\×!\ï,¢\ëÁW¾.\í\Õ~\áº\Ä\Ú/ºYü\0\0ÿÿ\0PK\0\0\0\0\0!\0;9u\0\0ô\0\0\0docProps/core.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Œ’MO\Ã0@\ïHü‡*÷.\é6«º\"\â\Ä$$†@\ÜBbÖ°\æC‰YÙ¿\'m·Žnvüü\ê:).?ulÀeÍœd#F0\ÂJeVsò¸¼M/H\Ékk`N¶\ÈeyzR—\ë\á\Þ[„$šLÈ…›“\n\Ñ\å”Q\æa	‹o\ÖkŽ1õ+\ê¸Xó\Ð1cgTrÉ‘\ÓV˜ºÁHvJ)¥ûðu\'‚B\r\Zš2z`¼6t•o¤V¸uð\'º/ôgP\Ø4Í¨™thœ?£Ï‹»‡\îWSe\Ú]	 e!EŽ\nk(zc>^\ßA`<$18Z_b\ÅM•n­L\ÕaûR»ô5l\ëeˆ‚£,b‚ð\Êa¼\Ê^t\éš\\Ä»}S ¯¶¿¾ô›h›<lTû:\Êl\Ú!C^\ìvÝ2‰;\Êû\î+O“\ë›\å-)\Çl\ÌR6K\Ùù’Mòi–3ö\ÒNx\Ô\ê\Ýÿ1Î–\ì<Ÿü0\îý’Ž\ßiù\0\0ÿÿ\0PK\0\0\0\0\0!\0!…‹\Þ\0\0\ß\0\0\0docProps/app.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œSÁn\Û0½\Ø?¾7²ƒ!\ÉFÅb\èa[\ÄmÏšL\'\ÂdIÔ \Ù×²O\ÙvšOô\ÓIÁ\ík¯‹ú ¬Ù”õ¬*4Ò¶\Ê6\åcóùfU!\n\Ó\nm\rn\Ê3†ò–¿;oú¨0$aÂ¦<\Æ\èÖŒy\Ä^„¥\re:\ë{)ôf»NI¼³ò¥GÙ¼ª_#š\Û7	–£\âúÿW´µ2ùO\ÍÙ‘‡{§EDþ-ý©g­=°‰…\ÆF¡\Õ#_|$~Š`\'x\rlðl}Kñr	l„°=\n/d¤òºª\çÀ2>9§•‘ºË¿*\ém°],\ËE\0–—\0]còÅ«x\æ°<„/Êƒ°5/^¸c\àó\äoŠ`/…\Æ-5€wBö›€{i¸;¡’¿S\\ŸPFë‹ ~\Òx\çeñ]LmÛ”\'\á•0±\Ë\Æ`ÀÚ…\èy£¢&\í)`^–cõ!5q×…C0x |\ín8!<tt·ø³unvð0Z\Í\ì\ä\Î.gü¡ºµ½†ú\Ë&D\rþ]c\ï\Òr¼õðš\Ì\Æþ¬\âq\ï„L{R¯–ùd)\Ø‹-Mt\Z\ÊDÀ=]Á\ët\0ýk\Ø^jþN¤•z\Z\ß+¯³Š¾a‡.m\Âôø/\0\0\0ÿÿ\0PK-\0\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0_rels/.relsPK-\0\0\0\0\0\0!\0ˆu\Ñ\Ù^	\0\0GC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0word/document.xmlPK-\0\0\0\0\0\0!\0³¾‹\0\0¶\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0¶ôg˜\Ò\0\0\É \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0“\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\Ò4l¥~\0\0~\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0›­ô t\0\0ð*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0öü¾«´\0\0ur\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\é\"\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0@Áÿñ9\0\0#\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ê.\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0|™\Ý\ÓG\0\0?	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\050\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0;9u\0\0ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬2\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0!…‹\Þ\0\0\ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X5\0\0docProps/app.xmlPK\0\0\0\0\0\0\0\0l8\0\0\0\0','todo-list.docx',15235,'2021-04-03 23:14:12',9),(20,_binary 'PK\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0[Content_Types].xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0´”\Ëj\Ã0E÷…þƒÑ¶\ØJº(¥\ÄÉ¢ehúŠ4NDõB£¼þ¾\ã81¥$14\É\Æ \Ï\Ü{\Ï1ƒ\ÑÚšl	µw%\ë=–“^i7+\Ù\×\ä-d&\á”0\ÞA\É6€l4¼½L60#µÃ’\ÍS\nOœ£œƒXø\0Ž*•V$:\ÆB~‹ðû^\ïK\ï¸”§Úƒ\r/P‰…I\Ù\ëš~7$²\ì¹i¬³J&B0ZŠDu¾t\êOJ¾K(H¹\íÁ¹xG\rŒL¨+\Çvººš¨dcÓ»°\Ô\ÅW>*®¼\\XR§mpúª\ÒZ}\í¢—€HwnM\ÑV¬\Ðn\Ï”\Ã-\ì\")/\ÒZwB`\ÚÀ\Ë4¾\Ýñ	®°s\îDXÁôój¿\Ì;A*Êˆ©\Ëc´Ö‰\Ö\04\ßþ\Ù[›S‘\Ô9Ž> ­•ø±÷{£V\ç4p€˜ô\éW\×&’õ\ÙóA½’¨\Ù|»d‡?\0\0\0ÿÿ\0PK\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0_rels/.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬’Áj\Ã0@\ïƒýƒÑ½Q\ÚÁ£N/c\Ð\Û\Ù[IL\Û\Øj\×þý<\Ø\Ø]\éaG\Ë\ÒÓ“\ÐzsœFu\à”]ð\Z–U\rŠ½	\Öù^\Ã[û¼x\0•…¼¥1x\Öp\â›\æöfý\Ê#I)Êƒ‹YŠ\Ï\Z‘øˆ˜\ÍÀ\å*Dö\å§i\")\Ï\Ôc$³£žqU\×÷˜~3 ™1\Õ\ÖjH[{ª=E¾†º\Î~\nf?±—3-\ÂÞ²]\ÄTê“¸2j)õ,\Zl0/%œ‘b¬\n\Zð¼\Ñ\êz£¿§Å‰…,	¡	‰/û|f\\Zþ\çŠ\æ?6\ï!Y´_\áoœ]Aó\0\0ÿÿ\0PK\0\0\0\0\0!\0ˆu\Ñ\Ù^	\0\0GC\0\0\0\0\0word/document.xml\ì\\\Ío\ã\Æ¿\èÿ0\ÐiØµø-JˆH¢´0°ñn¢\è\Z\Ò\"k~…Ivn‹ ŠœŒŠŠ\Ú1Û¤Ydƒ¤(`!\èA®ÿþ\'}3$%\ê\Ã2­\Ý\r$\Ã>ˆ\âòqÞ¼\ßüÞ›7”?úø\ÈuP\ß#\Û÷¶KüWB¦‡}\ÃöºÛ¥\ÏÛ\ÕŠˆ\îº\ã{\æv\éØŒJ\ïüö7\rj†{®\é*¼¨6ðv\É\"$¨•\Ë¶LW¶\\‡~\ä-\ì»eÿ\àÀ\Æfy\à‡FY\àxŽ}B›Q\Ïk\ê^_J©:|TL›\ê¸™*”\Ê\Ø\ÒCbMtð·V\"—«eu^‘°‚\"°P\à\çU‰·V¥”i¯\æI+)‚^\Íi’WÓ´À8e5MÂ¼¦\Êjš\ÄyM\êjš\æ\à\ä\Î\ÜL\Zü\Ð\Õ	œ†Ý²«‡‡½\à1(tbwl\Ç&Ç “S25º\í®\Ð#¸k¬Á[k¨”]\ß0\ÑÈ´øÛ¥^\è\Õ\Òû\ï§]¯%÷§‡ìŽ°ˆý\É-ZJ\Ìòrh:0¾Yv0ž\á\îªÚ \ÑÊ”ô—\Ñw\ìºAÀœ.\×Ñ“–\åDa‘\î§\ã\ï:IÏ—k\ä¹¡*\Æw\é\Âô3³ž¸€\ÂÉƒW\Zš\Ü\àò	$S \Ì)P°Yð3jª£Œ\'3”\ê±NLO\âªÇž,_\Çf;“S™·S!gýˆŽÝœEA÷\Ý`û$ô{ÁD›ýn\Úv\'$4 \éÀ-t¥ð\ÏO\É\è\Ý:³o\ép“‹k»]\ÏõŽ=0#À#b Ÿ\àVz`_\Í#D‰ ´\éK\Ç7Ž\é1€©è¡¾\ÈQ*JK\æ\ÚZ‰Iü	•r\\Ckª¢\0\Ò\Z¤JÆ§T\ÄKb•¯ŽE{!rœ$ª\í±P3ôžC\æ[ö˜H\äõ\ëM°\ÒÃŸ0´÷ug»„\îÌ°T¦\Ò0iÛ¾G\"¸@°\rŽ|n»f„>1\èS\ß\Õ=ªÚª{\Ñ\âÍ‹™òNòÙŒ\Ø1ú<ë€ $\í\Ñ\çMúÌœ¬œö¨<\îv¸pÖ¸\ëƒ\Z\Ùy\î>r\ìˆP)I\Ú£\æaÁ5\Z²ViP\0\ä`¡4U­Y§`q+4T±\"\\ƒ€Ža\î\Ãû£<~[?‹‡#~öºˆ#·O<t4ú\æñðGº\ìŠxø-|\Ñ+8\Ì\Üò\Âˆ1ò.¿\0\ág½ø\â\ÜC\Î\èdèž…¢\Ñ¶\à²3œª\ï\ÛñðKŒ¬\Ñ)œx\Ý\Ñ\é1\ÂñðµŽ<kôÍ£\ï<ô€d {¸U\0vUiñ\\kv•ôo\nvI‘•fAØ¥o \ì\Ö\ra4–Õ¢@\Çz‚ÐŒÌ°o–vø-4\å\ÝM™/‹­IôWûZƒfð´V\Óß»C^È±H_ü\Â*!/2:µÑ¡\å3‚z\0y”\í<BE4]zx\å¶T­ó~°\ïøô\Ñ\Ì\äv›þj>½<a|\ìYñÅ›\àùõG§>‚ó%\"\rS]ty¿¸Á­ªÒ„P°1þ[l¼C™¬\éØ©L€\ÍRgt\ê\"úãœ€N\Óÿ\àTD ©x½ÄºØ‰@>,J%ñð_\É\ß\"\"ù\â¿^zª<\ÜBûz²\Ävõ£©,‰\\a¹‹3\áòdt³Àˆ/^õ2$\Ý„€q\ç0 E(À§EIÀPÀ¼\Â(a‚t–\Ü\Zj›S¥ú¦c€.<þB©0¾\Ñ72ñš]\"¥@Æ–O÷ð‡1FÀ€ŠŸ\n­†D‰“ªª\\šZ\rIMU¨´\Å\Æ	\ËWC\Ó-÷«¡÷\ëwa%«…ùHØ‡_»	\Z`\î³¹\í\Z®\ÞÂ—\Ñwñð\å£ø\â\Â\Â\Æ\ë^&;š ô\æüh|qF•X£3ý\áòD‡\ZmQ<£#ˆ¯\ìª\áŸ!©‚Kÿ¸li²$©If­\Æòx\ÚyF=z\Ç\Æ7¡\Ý×‰ùpÖ¬u³a1Åkh¤÷ºWo\ã\á\ß\í$O\ÂV:-Á‹\"\à\Î7À&‡£º,\\,O\rNT¤_Á“\ïm=\Ó}\Ö9	¾ñ\ÖÝ—;EhZ¬ª’\Ø\0L­\ZJ]\Ò\Ô	\'/¯•. \éÍ­•®\Åe\\¸®‹«-ôttS……3Wg°`ˆ‡_%ñ…X¦ŒÑ¿\íM%\Ä\å¼\ÆCr+ý\n™\Þ{\ãµ#\Ó-€²\Í6òšJ@¢\Ú9ž\Þ)\È%D\É\ÆÀ²\áá›Š()wrxXx¿ó\Ð\Ø\É46m¯#©À,\ÅÎ²\íI\æfqWou–\ç_4—¼hR·¬´y-\n\ä–\Ìi\ÊF¡\02˜-zÿ±‘Aw3£\étª€ÿGww\é†	-@\ÞTQ\×¡Z\ç6e/O`¦¾\ì±MlZKš3z\í æ€¯h\á`º@° nNm¨\Ö;feJ(_\ÔÃ°ž\ìÚºG‹\ÊI­I·A®»Tš2U~\ÕUh+^TMkpô}ŸÜª†\ç\Û<_ak‹O÷«š\Ë\Òú$‡—¢$ jM\ØøB2Ì”\ïÙ®\ËÅ«\ãµ\'€\ë²Å¹ùï²¹KKASö-bŠ¬¼thÝ”t®ipñ <ð€óz¹\Ú \ZJÊƒóûý\ëf\ÒN’ûu\è®+\ç¦T_„…\å\×T\å\Ê\Ì\0«ª\Õ\Ù\Æ@Ž…yYæ¤±(™\Ö3\Â<5Oµ$¯gNr²Œó>\ä0v’\Ï÷ù\"fj\Ô\Zwzü÷´úi¥¿V$WQ£›|S¤–\Ø\àyn–{;7V\é`û\ä\Ø1³~?µ#²}\è†zFe¯\ç&W\ÚN\ßÉ®Kù\ÚvL&¦&o¸\çpñ»\ä5\' \î^d\"¬\Ã%ý~B\î\ègºIp^\02\\U\Ð±Ný¯HW…:dcKY\ã2™\è\êŒ-¾ÎŠ\r$þX\0&Š*µ›-af\ãB\á´\n§U\ï™\å\î\Â;z	=²È‰\í:}ñ:Ÿ}Ô•J]‘g^@¸\È&ä¹•ú\Ê2t¢w ú@ˆ$+rµ%\ÎPˆ¬òj³\ÞP§’þøgB¦[\î²¾Òµut\Å\é¡\'/v\0D\æ¡\Îó”,ò©H½\ÍWZ\Zý\Õ\Ù ie(%ýŒ0‡š\é–kjKë¿€Y7G/^€\ïY,±p\ã\áK—½¦—þv¨vCY)\ç‘5^\í=|ñ\ì\éB8G&&{c«n\Â)ƒ^wŸ>°]\âAby”\ßeUJ\Ù(\è>Ó©F\â —’KB»k‘\Éi\Ç\'\Äw\'\çŽykµL\Ý0\á¹ø>Év{„¦Ã¾CmO}J¯ab\Ã\ÇOBú[Ñšc{\æžM0ôRTXk9³›}M~9ZžüŒÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0³¾‹\0\0¶\0\0\0word/_rels/document.xml.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬“\Íj\Ã0„ï…¾ƒ\Ø{-;mC	‘s)\\[÷d{ýCõc¤MZ¿}EJ‡ÓƒŽ3bg¾…\Õzó­; ó½5²$†¦²uoZ\Åö\á˜\'ij©¬A#z\Ø\ä÷w\ë7T’Â\ïúÁ³b¼€ŽhXq\î«µô‰Ð„—\Æ:-)H\×òAVŸ²E¾H\Ó%w\ÓÈ¯2Ù®\àvõ#°bð?Ù¶iú\n_mµ\×h\èF÷H6ó!SºIÀ\ÉIBð\Û‹¨4*œõ\\}³\Þ\ìu‰.l|!8[sË˜fñp”¿f6\Çð“¡±†\nYª	\ÇÙšƒxŠ	ñ…\åûŸ“œ˜\'~õ\Ûò\0\0\0ÿÿ\0PK\0\0\0\0\0!\0¶ôg˜\Ò\0\0\É \0\0\0\0\0word/theme/theme1.xml\ìYK‹G¾ò†¹\Ëz\Í\èa¬5\ÒHòk\×6Þµƒ½Rk¦­ži\Ñ\ÝÚµ0†`Ÿr	œC¹\åB1\Ä\ä’c°Iœ‘\êI3-õÄ]ƒ	»‚U?¾ªþºªºº4s\á\âý˜:G˜Â’Ž[=WqœŒØ˜$aÇ½}0,µ\\GH”Œe	\î¸,Ü‹;Ÿv—Ž±ò‰8:n$\å\ì|¹,F0Œ\Ä96\Ã	\ÌM‘„.\ËcŽŽAoLËµJ¥QŽI\\\'A1¨½1™v”Jwg¥|@\á_\"…\ZQ¾¯TcCBc\ÇÓªúP\î!\Úqa1;>À÷¥\ëP$$LtÜŠþs\Ë;\Êk!*dsrCý·”[\nŒ§5-\Ç\ÃÃµ \çù^£»Ö¯Tn\ã\ÍAc\ÐX\ë\Ó\04\ZÁNS.¦\Îf-ð–\Ø(mZt÷›ýz\ÕÀ\çô×·ð]_}¼¥Mo?™\rs ´\éo\áý^»\×7õkP\Úllá›•n\ßk\Zx\rŠ(I¦[\èŠß¨«Ý®!F/[\ám\ß6kKx†*\ç¢+•OdQ¬\Å\è\ãC\0h\ç\"IG.fx‚F€%‡œ8»$Œ ðf(a†+µÊ°R‡ÿ\ê\ã\é–ö(:QN:\Z‰­!\Å\Ç#Nf²\ã^­nò\êÅ‹—ž¿|ôû\ËÇ_>úu¹ö¶\Üe”„y¹7?}ó\Ï\Ó/¿ûñÍ“o\íx‘Ç¿þ\å«\×üù_\ê¥A\ë»g¯Ÿ?{õý\×ýü\Ä\ïrt˜‡\ç:>vn±6hY\0ò÷“8ˆ\ÉKt“P )z #}}(²\àzØ´\ã\é\Â¼4¿gÞø\\ðZÀ=\Æhqëž®©µòV˜\'¡}q>\Ï\ãn!td[;\Øðò`>ƒ¸\'6•A„\rš7)¸…8Á\ÒQslŠ±E\ì.!†]÷Èˆ3Á&Ò¹Kœ\"V“C#š2¡\Ë$¿,lÁß†mö\î8=Fm\êûø\ÈD\Â\Ù@Ô¦SÃŒ—\Ð\\¢\Ø\Ê\Å4\ÜE2²‘\Ü_ð‘ap!Á\Ó!¦\ÌŒ±6™|aÐ½i\Æ\îö=ºˆM$—djC\î\"\Æò\È>›ŠgV\Î$‰ò\Ø+b\n!Šœ›LZI0ó„¨>ø%…\î¾C°\áî·Ÿ\íÛ†\ì¢f\æ\Üv$03\Ï\ã‚N¶)\ïò\ØH±]N¬\ÑÑ›‡Fh\ïbL\Ñ1\Zc\ìÜ¾bÃ³™aóŒô\Õ²\Êel³\ÍUdÆª\ê\'X@­¤Š‹c‰0Bv‡¬€\Ï\Þb#ñ,P#^¤ùú\Ô™\\u±5^\éhj¤R\ÂÕ¡µ“¸!bc…ZoF\È+\Õöx]p\Ã\ïr\Æ@\æ\Þ\È\à÷–\ÄþÎ¶9@\ÔX ˜U†-Ý‚ˆ\áþLD\'-6·\ÊM\ÌC›¹¡¼Qô\Ä$yk´Qûø¯ö\n\ã\ÕO-\ØÓ©w\ìÀ“T:E\Éd³¾)\ÂmV5\ãcò\é5}4Onb¸G,Ð³šæ¬¦ù\ß\×4E\çù¬’9«d\Î*»\ÈG¨d²\âE?Z=\è\ÑZ\âÂ§>B\é¾\\P¼+t\Ù#\àì‡0¨;ZhýiAs¹œ9\Òm‡3ù‘\Ñ~„f°LU¯Š¥\êP83& p\Ò\ÃV\Ýj‚\Î\ã=6NG«\Õ\ÕsM@2‡\Âk5ešLG\Í\ì\ÞZ½\î…úAëŠ€’}¹\ÅLu‰\æjð-$ô\ÎN…E\ÛÂ¢¥\Ô²\Ð_K¯À\å\ä õH\Ü÷RFn\Òc\å§T~\å\ÝS÷t‘1\Ím\×,\Ûk+®§\ãiƒD.\ÜL¹0Œ\àò\Ø>e_·3—\Zô”)¶i4[\Ã\×*‰l\äš˜=\ç\Î\\\Ý5#4\ë¸ø\É\Íxú„\ÊTˆ†I\ÇÉ¥¡?$³Ì¸}$¢¦§\Òý\ÇDb\îPC¬\ç\Ý@“Œ[µ\ÖT{üDÉµ+Ÿž\åôW\Þ\Éx2Á#Y0’ua.Ub=!Xu\ØH\ïG\ãc\ç\Îù-†ò›UeÀ1rm\Í1\á¹\àÎ¬¸‘®–G\Ñxß’QDgZ\Þ(ùdž\Âu{M\'·\ÍtsWf¹™\ÃP9\éÄ·\îÛ…\ÔD.i\\ \êÖ´çw\É\çXey\ß`•¦\î\Í\\\×^åº¢[\â\äBŽZ¶˜AM1¶P\ËFMj§X\ä–[‡f\ÑqÚ·ÁfÔªbUW\ê\ÞÖ‹mvx\"¿\Õ\êœJ¡©Â¯Ž‚\Õ+\É4\è\ÑUv¹/9\'÷A\Å\ïzA\ÍJ•–?(yu¯Rjù\Ýz©\ëûõ\êÀ¯Vú½\ÚC0ŠŒâªŸ®=„ût±|o¯Ç·\Þ\ÝÇ«RûÜˆ\Åe¦\ë\à²\Ö\ïî«µ\âw÷\Ë<hÔ†\íz»\×(µ\ë\Ýa\É\ë÷Z¥v\Ð\è•ú \Ùö¿\Õ>t#\röºõÀkZ¥F5J^£¢\è·Ú¥¦W«u½f·5ðº—¶†¯¾W\æÕ¼vþ\0\0ÿÿ\0PK\0\0\0\0\0!\0\Ò4l¥~\0\0~\r\0\0\0\0\0word/settings.xml´W\ßo\â8~?\éþ\ÄóQ\çDKW@\ÈmW\åö´tu\ÏNbÀjG¶eO÷¿\ßÄ‰h£Ý»ö¡˜ùf¾\Ï\Ø\ã\á\Ã\Ç\'–DHÊ‹\ÙÐ¾±†R¤<£\Ån6üö&ÃT¸\Èp\Î2žˆ~¼ýõ—\ÇP¥@M€¢!KgÃ½Re8\ËtO–7¼$€[.VðU\ì\Æ‹Çª¥œ•XÑ„\æT\ÆÈ²üaK\Ãg\ÃJaK1b4\\ò­ªMB¾\ÝÒ”´\ÆB\\\ã·1‰xZ1R(\íq,H1ðB\îi)\rûY6\0÷†\äð£MXnôŽ¶u\Åv\\d\Ï×„W”‚§DJ(\ËM€´\è»¯ˆž}ß€\ïv‹š\n\ÌmK¯\Î#÷\ÞF€^ø)yzÇ¤\åƒ\å9\Í\Þ\Æ\ã?ó\Ð.±¶ÿsÁœHò6\n\Ï\Ä!O¬Û‘Ì¯©q\Ý\ÓD`\ÑÜ ¶À,\r\ïv8\É!(ô\0j5\Ð\Ñ\Õÿa\Ëõ‡^‚\Ï[¸\È\ß9gƒcX‘\Âi†.X\Ãq\rdd‹«\\=\àd£x	*±¨…\Ó=8UDlJœ\ÂA[òB	ž½ŒÿÁ\Õ.º€s\ØZ\èkß­6M‹3ˆö¢-¬ywüV‚^Ÿ\Ö\Ú@{·½s—/qhy‚f\ä¡\Î\ÒFrCðúÌ‹\ìs%F\ÝþC?\n€µ\ç/P×‡SIb‚Uiz\'gºqN\Ë5‚‹»\"ƒ:¿›3º\Ý(Vd\rÇ‡\n~\ÔyþDp/\Í;ù­$ù”\áZ9p,\\)\Î>\Ê=\äú¨\äøüø\Â{™I³øÊ¹2ªü¹\Î$n\"­Ñ«\Ç^\ÌW½H\ìLý ±-k\â.{dÏ½~›À³œ¨YúŽ\ë÷!\Èr|·76Áª\í—ˆš÷!.ò\æ\êC¼•gE½x±;·µ¿D\Ûó,·q}\Ï\ï\Í\Î$†¼õÆ¶˜8\ê\Ý\éù\Ó6”K$r½À]ô\"ž\ëNz\Ù\"M\ç½y[¡\0¡^?«©ã›¶üñ—®öøù\\²°žFþfU7·k,–˜%‚\âÁºžWÆµF\"´0xB\à™!\çÈ¦J8\Z5€d8\Ïc¸fÐ¡±0£²Œ\ÈV¯ó5»Ž·\Õ½Rxi>?sÕ¯¿^•\rz¸lš–Q±]·µ¤…º§\Ì\Èe•lŒU\ãTÙ—ƒ\Ðy\ê\Òs4\Ýü\ï±n&Z—£o›&\Ùi.6u£ k\\–M¿Ivöl˜\Ó\Ý^\Ùu‹Pð-ƒ±VIv¨Å\ÆPƒ\é/8­w\Ú\í¢“!#;\ÓsŒ\Ì\éd®‘¹\Ì32¯“ùF\æ×²=¼0\"§\Å#´>³¬\å[ž\çüH²OþJ\Ô$A\îqI¢f\Z€\ã\ÅA;\ÈÁ!$O07Œ*øµPÒŒa˜\ìl\é\ë\Üj\çø\Ä+u¡[cµryÉa…MÓ½0\ÖGüE,õ”’R8Ž›Kº\á\ã¦	<§Š\æÅ…Á~Ó˜\í†O\ï\êi\Èm\ä\Þr\ZE\ÓUsÿlO\Ï7J¿%P÷¯d»À’d-fL½\Æô\ï r‘P0r\ß¹(\nF\Ë[Œ\"\Ï^Yv¼@nÿ\Ó^Ró\Ã\éö_\0\0\0ÿÿ\0PK\0\0\0\0\0!\0›­ô t\0\0ð*\0\0\0\0\0word/numbering.xml\ìXÛŽ\ê6}¯\Ô@‘ú8“!É \Ã…Ú©Ú£ª‡ª\Ï&1`MlGv¸½žŸ\é\'ô³úµs#%fTQ)/8\Ø{/o¯½·³\à\Ó\ç=Žz[\È8¢d¤™†Öƒ$ !\"«‘ö\Ç|ö\ài=ž\0‚ˆ8\ÒkŸŸ¿ÿ\î\ÓnH6x™0\ì	Â‡»8i\ë$‰‡ºÎƒ5Ä€?b0\Ê\é2y(\Ö\ér‰¨\ï(u\Ë0ô)f4€œœ@¶€k9\\°o†2°\Î\ÐÖƒ5`	\Ü1\Ì\Ö ýI÷\ê@–8¡eÖ¡ú­¡]FU²•€DT5¤\ZÒ…\Ã9jHV\ÉUC\ê×‘<5¤Z9\áz\Ó±¸¤ƒD|e+ö¶‰p´@J\Óp\n€È›BDÂ«DÀý°5‚«c\ZÂ¨(t¤m\æþ¥¿}˜ù\çC\áÁšœ?s™\Ð`ƒ!IÒ“\ëF‚Jø\Z\Åe‡cU4±¸.@¶\ïb‹£\Ân›\r\Û\å\Úõ4É¨<6	?\çGY\ä\ï#šFƒŒHˆÒ£I§{‘`Q…Ç•¨©k6¼@\n\0«\à°\á…_`x9†;Tâ †­Q\àdY‘8\èH¬\Ùð;¦Àa;ˆA?\àÊ‰\â\Õmeû#£›øˆ†nC{=^B;©Z`\å\å_mI~[0_\× w†¯+BXD\"\"Q\Ì=Q½4òS¤U\é#\Ü÷\äE =ý<a H¾lp\ï\äÛ«( ¡ƒÈA!~˜œÌ¤Ž¿L 3Þ¤‰D!\\\Â· \Zi–\ëL\Ç\Zkº\\Á›(A¿À-Œ\æ‡6\ëÃ‚¡ðW¹Éµ\Ì6ÁqTX<\Í\ìÿiú’­D[¹€Ä5L\âH¼†ü©\åœqv¡\Äf8)ü›(‚I\é=‡ûré¡œý9(\æ\"¸Ì\ãß˜‘’\Ó#Íµ\Ò=×€¬RE\Øwi«—\Æ,f”$\\\Ò\È$JlŽ0\ä½/p\×ûb@$<ñ9s‘h‘&ŒD\Æ~ò}\éò\á¢[À/N¯\á…p	“yHi,zz¼s\æ\Ì#s†m<†\ÑOg\Ä+E¼—¶PZHŸ4\Û3fFKcvi[vM\ÛV£÷…n‚LRRa\ïlV2wnØŽ5«\Æ\Ú\à\ãYû\ç\Û_my³LG·?…µüi\Ã+¬Îµ#(+¢*AY¡}0A·&\Èó\ÔúzÀ\ZUØ©L´£Æ¾ËŽ<\Üu\Çeýug÷_\ÝqÎv\ÜÀP¼\Ê?®\ãÜ»ì¸«xWÿG\ç\Ýi\Ç9¶\â~{\Ç\é\'jX\îñ®T–\r\ØZ*fc\Ó\éOr‘«*•§®\ã®?-\É-\ÓZ‘\Ê3\Ûó&\ÆtZOc¿e\Z;ù\Ü\É\çN>wò¹“Ï|n\Å[\'Ÿ;ù¬\Öq|V\ë¸ÿ|–*¡µ|v}\Ût\\÷Fù\ì\Í|â’\Ü2­ùœ§u\Ö0!ùfgyüÁ|l›\Ç\Ö\nºS¶²\í”\íU‚:e{™˜NÙªu\\§l;e«\Öq²Uë¸»R¶$U´¤ø#XN\È\Û\âDE„ä‚›u\Ý-¥óŠ[ÿº›Uu\Ë\ÆLT?ÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0öü¾«´\0\0ur\0\0\0\0\0word/styles.xml¼Ks\Û8\Ç\ï[µß¥\Ó\ì!‘Ÿr’\Zg\Êv\âµk\ã\Ä9›3DB\Ö ¡\å#¶÷\Ó/\0R\ä&(6\Ø\ãbIdÿðhühˆ¤~ÿ\ã)•\Ñ/žBe§£ý·{£ˆg±JDv:úqwù\æ\Ý(*J–%LªŒŸŽžy1ú\ã\ã\ßÿöûã‡¢|–¼ˆ4 +>¤ñ\éhQ–\Ë\ãq/xÊŠ·j\É3}p®ò”•úm~?NYþP-\ß\Ä*]²RÌ„\åóø`oo2j0yŠš\ÏE\Ì?©¸JyVZûqÎ¥&ª¬Xˆe±¢=ö¡=ª<Y\æ*\æE¡Êš—2‘­1ûG\0”Š8W…š—oucš\ZY”6\ßß³¯R¹\ã\0\00‰ùŽñ®aŒµ¥\Ë	Ž3YsD\âp\Â*\ã\0\nŽC¯\êQ<§¦Eiü\áú>S9›IM\Ò>Št7Glþ×µ5\ìK}úG=`\âsVÉ²0oóÛ¼yÛ¼³.UV\Ñ\ãV\ÄB\Ü\ézix*t9WgY!FúgEyV\Özpa^´‰‹\Òùø\\$b46%ÿ\Ó1y::8X}raj°õ™d\Ùý\ê3ž½ù1uk\â|4\Ó\Ü\Ó\Ë\ßLÏŒ\á¸iXý\×i\îò\å;[ð’\ÅÂ–\Ã\æ%\×ZÜŸ\ì¨Fú\Ç\ïWo¾W¦\ÏYUª¦¨ÿ®±c\Ð\ãZ¢Z°\Ó:n\è£|þE\Å<™–úÀ\éÈ–¥?üq}›•\ë\Øp:zo\Ë\ÔNy*®D’ð\Ì91[ˆ„ÿ\\ð\ìGÁ“\Í\ç^Z}7Äª\Êô\ëÃ“‰²H>?\Å|i¢…>š1ã“¯\Æ@š³+±)Üšÿw\Ûo<\Ñf¿\àÌ„\Ìhÿ%\ÂV…80…\Ó\Úvfõ¢\íö,TA‡¯U\Ð\ÑktüZM^« “\×*\è\Ýkd1eA\"KøS-DX \î\âxÔˆ\æxÄ†\æx´„\æx¤‚\æx”€\æx:š\ã\ÇhŽg˜\"8¥Š}£\Ðì‡ž\Ñ\Þ\Í\Ý=G„qwO	a\Ü\Ý3@wwÀ\ã\îŽ\ïa\Ü\Ý\á<Œ»;z‡qwk<·^jE\×ZfY9Xes¥\ÊL•<*ù\Óp\Z\Ë4\Ë\æ‘4<3\éñœ¤‘˜:²5ñ`Z\Ì\ìû\Ý#ÄŠ4|>/M‚©y4÷UÎ‹Á\ç\Ù/.Õ’G,I4˜ó²\Ê==2¦s>\ç9\ÏbN9°\é &Œ²*Œ\Í%»\'cñ,!\î¾‘$(¬´ÎŸF$‚`P§,\Î\Õðª)F¾ˆbx_Ht^IÉ‰X_i†˜e\r\Ï\r,fxj`1\Ã3‹ž8>£ê¢†F\ÔS\r¨\Ã\Z\ZQ¿\Õã“ª\ß\Z\ZQ¿54¢~kh\Ãû\íN”Ò†xwÕ±\ß\ï\îB*³ó?¸SqŸ1½\0>\Ý4{¦\Ñ-\Ë\Ù}Î–‹\È\ìJ·c\Ý6c\Ë9W\ÉstG1§­IT\ëz;D.t«EV\r\ï\Ð-\Z•¸\Ö<\"y­yD[ó†K\ìF/“\Í\íŠ&Ÿ™V³²U´–\ÔK´S&«zA;\\m¬>\Â6¸yA&ƒv,Áþj–³Æ‘oS\Ë\áÛ°†\Ë\êeT\"­^ƒ$¨¥TñM¾z^ò\\§eƒI—JJõ\È:\â´\ÌU=\Ö\\\ÉX—ô’ü\çt¹`…°¹\Ò¢ÿT¿ºf ºa\ËÁ\rº•Ld4~ûü&eBFt+ˆ«»›/ÑZš4\Ót\rð\\•¥JÉ˜\ÍN\ào?ù\ì4<\ÓIpöL\Ô\Ú3¢\í!»“LMR	I/3E&H\æP\Ëûž)–\'4´Ûœ×—é”œˆ8e\é²^thK\Ç\ÅGVC–÷o–³/4˜\æ\ìô\Õ\ì?<¾ªˆd3\ç[U\Ú-C»:µ\Öt¸\á3ûnø¬~gwù¦\Â9‚\Æn\á†7vG\Õ\ØÉŠBx¿õ\æQ5wÅ£n\ïð|­\á)©òy%\é:p$\ëÁ¬•¬Ò¬ l±\å6\Øò¨\ÛK8d,`\Íòþ™‹„\ÌF\å	£rƒ…QùÀ\ÂH0ü¢\Z6ü\Ê\Z6üòš\ZF´p`T\ãŒtú\'úbÆQ3£\ZgF5\Î,Œjœ~Šø|®ÁtSŒƒ¤\Zs’n¢\ÉJž.U\Îòg\"\äg\É\ïÁžfM»\Í\Õ\Ü\Ür¡²úºk¤\ÙV–t«\ãŸ|F0hÎ™”J\ím\"±µÜ¾k—™½+apn%‹ùBÉ„\çž6ùmu\"9­o1xY}[^[x_\Äý¢Œ¦‹õÎµ‹™\ì\í´\\e²[f»l\ëó\É\êÞŒ6³žˆ*]U\Þ09\ìolGô–ñ\Ñn\ã\Í»ey\Ü\Ó–9\Ùm¹Y>nYžô´„e¾\ëii\Ã\æ–e—>±ü¡u œtŸuò\ã|\']£hm\ÜZl\×@Z[¶\rÁ“®Q´%•\è,Ž\Í\Î7ôN?\Íø\íû‰\ÇoQ‘Ÿ‚‘“Ÿ\Ò[W~D—À¾ó_\ÂLy˜ i\Ë[_	\0\â¾]]öŠœVªÞƒ\Þúò¤ÿ\rJ\×zE‘<j\åöÿf+\Êøû±w¸ñ#z\Ç?¢w\0ò#zE\"¯9*$ù)½c“\Ñ;Hù\èhg\\´‚ö¸h\íC¢¤„D««\0?¢÷rÀ@\"\ÐB°Rð#PB\æAB…´P!-Tˆ@.ÀpB…ö8¡Bû¡BJˆP!-Tˆ@\"\ÐB…´P!-\ÔÀµ½\×<H¨‚*D …\nh¡\Úõ\â\0¡B{œP¡}ˆP!%D¨‚*D …\nh¡BZ¨*D „\nÌƒ„\n)h¡BZ¨j}\Û\\¸P¡=N¨\Ð>D¨\"THA\"\ÐB…´P!-Tˆ@\"PB\æAB…´P!-Tˆ@\Õ~‹6@¨\Ð\'Th\"TH	*¤ …\nh¡BZ¨*D …\n(¡ó ¡B\nZ¨*Dt\Ï\æ«@\ß%\ãûø]O\ï\Õ\çý¿ºj*õÝ½-\ÙEöG­j\ågõ¿®þ\\©‡¨õ&ºC›oôƒˆ™\ÊnQ{¾ov¹öZ\ÔŸ\ß.º\ïVq\é \Ô\\\×o¿3ð£¾–`O\å¨kÈ»– \É;\ê\Z\é®%XuuE_\×LƒG]A\×\êruµ†žŽ€qW˜qŒ÷=\æ]\Ñ\Ú1‡]\Ü£C\Ø\Ã]‘\Ù1„\Ü\Ã\ã\È\ç—\Ö\Ç=ûi²¾ðº†£C8ñº†%ô\Õ*CaôušŸ\Ð\×{~B_7ú	(z1x\ÇúQhûQa®†2Ãº:\\¨~\ÖÕ\äj€	w5D»\Z¢\Â\\\r#\ÖÕ€uuxpö‚\\\r0á®†¨`WCT˜«\áT†u5$`]\r	XWœ½˜pWCT°«!*\Ì\Õpq‡u5$`]\r	XWCB«&\Ü\Õ\ìjˆ\ns5È’Ñ®†¬«!\ëjHr5À„»\Z¢‚]\rQ]®¶»([®Fy\Ø1\Ç-\ÂCÜ„\ìâ‚³c-9ÖÙ’CÌ– ¯V>\ÇeK®\Óü„¾\Þóúº\ÑO@ùÓ‹Á;ÖB{Ø\ns5.[jsu¸Pý¬«qÙ’\×Õ¸l©\ÓÕ¸l©\ÓÕ¸l\É\ïj\\¶\Ô\æj\\¶\Ô\æ\êð\à\ì\'¹\Z—-uº\Z—-uº\Z—-ù]Ë–\Ú\\Ë–\Ú\\Ë–\Ú\\=pBöb\Â]Ë–:]Ë–ü®\ÆeKm®\ÆeKm®\ÆeKm®\ÆeK^Wã²¥NWã²¥NW\ã²%¿«q\ÙR›«q\ÙR›«q\ÙR›«qÙ’\×Õ¸l©\ÓÕ¸l©\ÓÕ¸l\éF›‚\ÇMS–—Ý³Ï®X±(\Ùð\íý\Èr^(ù‹\'mS¿ Z9~\Üú)\'Ã¶?§\Ï/uŸ™§y;·+%õ\ÓL =ñ:Yÿ\ä’165‰š·j>¶n¾®­K´†°¨x¡ËŠ›\ç0yŠjž§º¾‰\Ê>MõeÁž‡®ÚŠl\à\ê\ì¦K7ýUŸ·\Õ[õ.Í€ï¨³DgÕšñUð}v\ÕP\×g&\ëŸÿ\Ò/®³D›Ÿ¾ªkš<±\Z¥_p)oX}¶ZúO•|^\ÖG÷÷\ì½ü/Ž\Ï\ê\'\Éy\ís¦½€ñve\ê·\ÍOyú»~¶|sý€wHšX\Ô\Ò\Ýöb–¡=\í¯Û–\\Öµ1en\îû{Y)57‡\ë^eº¤oF\Û@J°Ú‡Íµ‘\én/„ñ¿=¾§ÿ¾»¬\Ïj~!N\Øña¼k®\ái&ˆ\Ø<kà©¬˜l\î\î®»úM¸¦Ñ«W\Å\Çÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0@Áÿñ9\0\0#\0\0\0\0\0word/webSettings.xmlœ\Ò_O\Â0\0ðw¿\Ã\Òw\è ²…Ab\Æc¢~€\ÒÝ ±\í-½\âÀO\ïmbxa¾ôÿýr\×v¶\Ø9›|B ƒ¾£a*ð\ZK\ã×…x[¦\"¡¨|©,z(\ÄH,\æ·7³&o`õ\n1òIJXñ”;]ˆMŒu.%\é\r8EC¬Áóf…Á©\ÈÓ°–N…m=\Ð\èj\Í\ÊX÷rœ¦™80\á\Z«\Êhx@½u\àc/X\Ñ\Ó\Æ\ÔtÔšk´CY\Ô@\Äõ8û\ã9eü‰\Ý]@\Îè€„Ur1‡Œ:Š\ÃGi7rö˜ô\Æ@¦a\×Ï˜É‘\çŽ)û9\Ù\É1\å™ó¿d\Î\0‚~\Ä\ä˜\í][‘\Óù\Ó\ÚcP+\Ë¿Q\Â×œtp\Ûr¶m\×\rùøœ-\Ö\Ñ8óK÷‚ \Ûee-6/Ï<‘¾öü\0\0ÿÿ\0PK\0\0\0\0\0!\0|™\Ý\ÓG\0\0?	\0\0\0\0\0word/fontTable.xmlÜ•M\Ú0@\ï•ú\"ß—8!mX©\ÛEªTõ\ÐnÕ³qb5¶#\Ûø÷;\ácKHJ8\ãñ‹ý\rO\Ï;Q[¦\rW2C\Ñ£€Iªr.\×úù¶|˜¡ÀX\"sR)\É2´g=/>~xjæ…’\Ö°^š¹ *­­\çahh\É1#U3	“…Ò‚X¸\Õ\ëPý{S?P%jbùŠW\Ü\î\Ã\ã	\ê0úŠ*\nN\ÙgE7‚I\ë×‡šU@TÒ”¼6Zs­Q:¯µ¢\Ì8³¨Zž \\1QrœjeTaGp˜nG\Ë#\ìG¢:\Òa€ø0¡l7Œ1\ë!¬<\çð|gr\äðüŒóo›96‘öaöÂH\Ðù—µTš¬* Áo€\æÀƒ\Ý\'\ì\Ö}ù!¤/ºz\rš¹$¼qÁLð5Áw%ˆô	5‘Ê°r¶¤\ÊŽ\áš\à1Nq\ïF	\n]\"-‰6\ÌÁ\ÚDÜ†\"xµ?Dµ\çú‰š[Z\â[¢¹\Ût;eø\Z&6f…3ôŠ1Ž_—K\ÔF¢½@d:K?u‘\Ø=Ë¿»\ÈøÁ.B=\Ç\ßF-‡z\Î1ž¶&.Œ¼Š¯4¿bb\é\r¸+ñ ¦\á\Æ3‘ô™ˆ“\é}L¨\æL»\ê¸bc\n½\rg%dC¨œ\é¾\Â(øŽ\å·WE2¾‡‹_\ÐÝŸ\é5‘§W¿‰¸\Ï\ÙX5¨,\ÎÕªˆ\ÞGN*‘^³÷‘UüØ‹•ª®xH¡\í»\Ö?…Ž\áªb:À\ÃðNñ\×!\ï,¢\ëÁW¾.\í\Õ~\áº\Ä\Ú/ºYü\0\0ÿÿ\0PK\0\0\0\0\0!\0;9u\0\0ô\0\0\0docProps/core.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Œ’MO\Ã0@\ïHü‡*÷.\é6«º\"\â\Ä$$†@\ÜBbÖ°\æC‰YÙ¿\'m·Žnvüü\ê:).?ulÀeÍœd#F0\ÂJeVsò¸¼M/H\Ékk`N¶\ÈeyzR—\ë\á\Þ[„$šLÈ…›“\n\Ñ\å”Q\æa	‹o\ÖkŽ1õ+\ê¸Xó\Ð1cgTrÉ‘\ÓV˜ºÁHvJ)¥ûðu\'‚B\r\Zš2z`¼6t•o¤V¸uð\'º/ôgP\Ø4Í¨™thœ?£Ï‹»‡\îWSe\Ú]	 e!EŽ\nk(zc>^\ßA`<$18Z_b\ÅM•n­L\ÕaûR»ô5l\ëeˆ‚£,b‚ð\Êa¼\Ê^t\éš\\Ä»}S ¯¶¿¾ô›h›<lTû:\Êl\Ú!C^\ìvÝ2‰;\Êû\î+O“\ë›\å-)\Çl\ÌR6K\Ùù’Mòi–3ö\ÒNx\Ô\ê\Ýÿ1Î–\ì<Ÿü0\îý’Ž\ßiù\0\0ÿÿ\0PK\0\0\0\0\0!\0!…‹\Þ\0\0\ß\0\0\0docProps/app.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œSÁn\Û0½\Ø?¾7²ƒ!\ÉFÅb\èa[\ÄmÏšL\'\ÂdIÔ \Ù×²O\ÙvšOô\ÓIÁ\ík¯‹ú ¬Ù”õ¬*4Ò¶\Ê6\åcóùfU!\n\Ó\nm\rn\Ê3†ò–¿;oú¨0$aÂ¦<\Æ\èÖŒy\Ä^„¥\re:\ë{)ôf»NI¼³ò¥GÙ¼ª_#š\Û7	–£\âúÿW´µ2ùO\ÍÙ‘‡{§EDþ-ý©g­=°‰…\ÆF¡\Õ#_|$~Š`\'x\rlðl}Kñr	l„°=\n/d¤òºª\çÀ2>9§•‘ºË¿*\ém°],\ËE\0–—\0]còÅ«x\æ°<„/Êƒ°5/^¸c\àó\äoŠ`/…\Æ-5€wBö›€{i¸;¡’¿S\\ŸPFë‹ ~\Òx\çeñ]LmÛ”\'\á•0±\Ë\Æ`ÀÚ…\èy£¢&\í)`^–cõ!5q×…C0x |\ín8!<tt·ø³unvð0Z\Í\ì\ä\Î.gü¡ºµ½†ú\Ë&D\rþ]c\ï\Òr¼õðš\Ì\Æþ¬\âq\ï„L{R¯–ùd)\Ø‹-Mt\Z\ÊDÀ=]Á\ët\0ýk\Ø^jþN¤•z\Z\ß+¯³Š¾a‡.m\Âôø/\0\0\0ÿÿ\0PK-\0\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0_rels/.relsPK-\0\0\0\0\0\0!\0ˆu\Ñ\Ù^	\0\0GC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0word/document.xmlPK-\0\0\0\0\0\0!\0³¾‹\0\0¶\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0¶ôg˜\Ò\0\0\É \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0“\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\Ò4l¥~\0\0~\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0›­ô t\0\0ð*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0E\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0öü¾«´\0\0ur\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\é\"\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0@Áÿñ9\0\0#\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ê.\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0|™\Ý\ÓG\0\0?	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\050\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0;9u\0\0ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬2\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0!…‹\Þ\0\0\ß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X5\0\0docProps/app.xmlPK\0\0\0\0\0\0\0\0l8\0\0\0\0','todo-list.docx',15235,'2021-04-03 23:22:40',11);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminder`
--

DROP TABLE IF EXISTS `reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `reminder_time` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkv39lrjs52d15dqytgxl25bb1` (`user_id`),
  CONSTRAINT `FKkv39lrjs52d15dqytgxl25bb1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminder`
--

LOCK TABLES `reminder` WRITE;
/*!40000 ALTER TABLE `reminder` DISABLE KEYS */;
INSERT INTO `reminder` VALUES (6,'Mau chÃ³ng chuáº©n bá»‹ bÃ¡o cÃ¡o cÃ´ng viá»‡c nhÃ©','2021-04-03 23:15:39',2),(7,'Ok rá»“i Ä‘áº¥y','2021-04-03 23:23:49',2);
/*!40000 ALTER TABLE `reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `normalized_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name_unique` (`name`),
  UNIQUE KEY `role_normalized_name_unique` (`normalized_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'NhÃ¢n viÃªn','ROLE_USER'),(2,'GiÃ¡m Ä‘á»‘c','ROLE_ADMIN'),(3,'Quáº£n lÃ½','ROLE_MANAGER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime NOT NULL,
  `sector` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `complete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2hsytmxysatfvt0p1992cw449` (`user_id`),
  CONSTRAINT `FK2hsytmxysatfvt0p1992cw449` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (9,'2021-04-12 00:00:00',1,'2021-03-29 00:00:00',1,'CÃ´ng viá»‡c A',10,NULL),(10,'2021-04-16 00:00:00',2,'2021-04-03 00:00:00',1,'CÃ´ng viá»‡c B',10,NULL),(11,'2021-04-03 00:00:00',1,'2021-03-18 00:00:00',2,'CÃ´ng viá»‡c C',11,'2021-04-03 23:24:02'),(12,'2021-04-22 00:00:00',2,'2021-04-04 00:00:00',1,'CÃ´ng viá»‡c D',13,NULL),(13,'2021-04-01 00:00:00',1,'2021-03-16 00:00:00',3,'CÃ´ng viá»‡c E',11,NULL),(14,'2021-04-05 00:00:00',1,'2021-03-25 00:00:00',2,'CÃ´ng viá»‡c F',14,'2021-04-04 18:49:14');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_comment`
--

DROP TABLE IF EXISTS `task_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_comment` (
  `task_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`task_id`,`comment_id`),
  KEY `FKp7xiykep2b3g3h373ykf1b7hf` (`comment_id`),
  CONSTRAINT `FKp7xiykep2b3g3h373ykf1b7hf` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`),
  CONSTRAINT `FKpoxt1sd4otmq9p94rp1atkgs7` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_comment`
--

LOCK TABLES `task_comment` WRITE;
/*!40000 ALTER TABLE `task_comment` DISABLE KEYS */;
INSERT INTO `task_comment` VALUES (9,16),(9,17),(10,18),(10,19),(13,20);
/*!40000 ALTER TABLE `task_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_reminder`
--

DROP TABLE IF EXISTS `task_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_reminder` (
  `task_id` bigint(20) NOT NULL,
  `reminder_id` bigint(20) NOT NULL,
  PRIMARY KEY (`task_id`,`reminder_id`),
  KEY `FKfwxmgboutglfp904nfe0ogc9w` (`reminder_id`),
  CONSTRAINT `FK5l5hkramq406964uda1s7hsh3` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKfwxmgboutglfp904nfe0ogc9w` FOREIGN KEY (`reminder_id`) REFERENCES `reminder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_reminder`
--

LOCK TABLES `task_reminder` WRITE;
/*!40000 ALTER TABLE `task_reminder` DISABLE KEYS */;
INSERT INTO `task_reminder` VALUES (9,6),(11,7);
/*!40000 ALTER TABLE `task_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_user`
--

DROP TABLE IF EXISTS `task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_user` (
  `task_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`task_id`,`user_id`),
  KEY `FKs46ejm4kitq56yd498a3fnr19` (`user_id`),
  CONSTRAINT `FKd1fn28rqhh1ku21jx7hcksvh9` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKs46ejm4kitq56yd498a3fnr19` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_user`
--

LOCK TABLES `task_user` WRITE;
/*!40000 ALTER TABLE `task_user` DISABLE KEYS */;
INSERT INTO `task_user` VALUES (11,10),(14,10),(10,11),(12,11),(9,12),(12,12),(13,12),(9,13),(10,13),(11,13),(13,13),(14,13),(12,14),(13,14);
/*!40000 ALTER TABLE `task_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `first_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'1998-06-28','william123@gmail.com',1,'William',1,'Crowley','$2a$10$dCzUl6.ZaKFq.Wt5m8fJl.mAikp85qa.0lgqu.vC7Xb7GAiYPR40a'),(10,'2000-07-14','ducthang123@gmail.com',1,'Äá»©c Tháº¯ng',1,'Nguyá»…n','$2a$10$K/kk/jyElajESRRHsQ6jLO/2abhDuYt74DG1fUCQ.GH24ym8T5vN.'),(11,'2000-11-08','minhkhoi69@gmail.com',1,'Minh KhÃ´i',1,'HÃ ','$2a$10$TK87M0rSXEljmOI3SyxAFOBLHl6AAGY3vmL92Fr3JX3.oMQAAtjU.'),(12,'2000-06-21','dangkhoa69@gmail.com',1,'ÄÄƒng Khoa',1,'Nguyá»…n','$2a$10$iDQ1EsAfQvBEr9gEvOTAO.w/gypahAIOBEmCKp4vdEIrBusG7g0r.'),(13,'2001-10-11','minhthu123@gmail.com',1,'Minh ThÆ°',0,'Nguyá»…n','$2a$10$cyRpKeb2zqf3VQPx8.1D5ucuAVsSTkdE6hyYZ7lp.KWCZGYtHOy62'),(14,'2000-06-20','duckhai159@gmail.com',1,'Äá»©c Kháº£i',1,'Pháº¡m','$2a$10$i1wXsvQ/aEbMHNntUVLINOPQ3qaz2pLOpPPSpYyQ1mFMRcDUyYeGC');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (10,1),(11,1),(12,1),(13,1),(14,1),(2,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05  7:54:22
