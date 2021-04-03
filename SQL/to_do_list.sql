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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'hello','2021-04-03 14:01:50',7),(2,'Cá»‘ lÃ m nhanh nhÃ©','2021-04-03 14:13:31',7),(3,'Ok luÃ´n báº¡n Æ¡i!','2021-04-03 15:15:40',6),(4,'CÃ³ ai cÃ³ Ã½ kiáº¿n gÃ¬ ko?','2021-04-03 15:50:24',6),(5,'Táº¡m thá»i thÃ¬ khÃ´ng','2021-04-03 16:27:39',7),(6,'Tui má»›i up file lÃªn Ä‘Ã³, check thá»­ Ä‘i!','2021-04-03 16:30:34',6),(7,'ThÆ° thÃ¬ sao?','2021-04-03 16:48:39',7),(8,'Tui cux á»•n','2021-04-03 16:49:24',9);
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
  UNIQUE KEY `document_name_unique` (`name`),
  KEY `FKh5cchnpa6yekfuhqutgi5fsng` (`task_id`),
  CONSTRAINT `FKh5cchnpa6yekfuhqutgi5fsng` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (11,_binary 'PK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0docProps/PK\0\0\0\0‡N\â@:O[\ÇX\0\0k\0\0\0\0\0docProps/app.xml‘ÁN\Ã0D\ïHüC”{b\' \ÕÖ¨zBP©)=V–³m,Û²\rjÿ‡Tm¸rÛ™•\ÇO;ğx\è\Ú\è­“Z\Í\â,¥q„J\èZªı,^W‹\ä!œ\çª\æ­V8‹\è\âGv}K«\rZ/\ÑE!B¹Y\Üxo¦„8\Ñ`\Ç]\Z\Ö*lv\Úv\Üi÷D\ïvR\à³_*OrJ\ï<ª\Z\ëÄœ\ã!qú\íÿZk\Ñó¹\êh0ƒ\n;\Ór\ì­\Çiœ\rXò=:–\Øh[;F”\r·\\øp\"–)x•jx9!\Éò½\å¦9ÅT\Úó¶’öÿ\\¬o±¤l\Ç[‡@.FŸş\éÖ¦\Ò\Ï=÷iÿ\×±m¤oV†‹\0ô‡r\ä\ÃÜ˜V\n\îC\Õl³\\E\ï¿ul³,\ÍSšNh‘o\Ù\ËM~ÿT&ùİ¤LnoŠ:™gEĞ¢,n\é¥y92‚P\ç\nÅ—•ş\Ø_m,\ÃMÏ¥²PK\0\0\0\0‡N\â@\íÎ‹úR\0\0\0\0\0\0\0docProps/core.xml’QK\Ã0…\ßÿC\É{›´ec„¶•áƒ“Å·ÜµÁ6\rI¶®ÿŞ¦\Û\êD|¼9\'\ß=É½\Ùò\Ø\ÔÁŒ•­\ÊQ€â­ª\Ì\Ñ\ëv.P`S‚Õ­‚õ`Ñ²¸½É¸¦¼5°1­\ã$\Ø` )K¹\ÎQåœ¦[^A\Ãl48\Ô \îZ\Ó07”¦ÄšñOVN™\ã\Ì1ì¡ˆ\èŒ|Bê½©G€\àjh@9‹\ã(\Æ\ß^¦±^•+g#]¯‡7\ã^³?‰“ûh\åd\ìº.\ê\Ò1Æ?\Æ\ïë§—ñ©¡Tş¯8 \"|lG¹\æ@€\Ú]”·ôşa»BEB’8$i˜¤[\Ó¡„|dø\â:\ß÷À«5\Ås¹\ïÁk©ª`S1\åİ“\è\'S3\ë\Ö\Ãw\Ä]_<n2üûtŠØœÿ\É8÷\ÓMW/€\Â÷6p~›Šxl:•cõseŠ/PK\0\0\0\0‡N\â@2iş\0\0\0\0\0\0\0\0docProps/custom.xml\Ëj„0@÷…şC\È>&FlG‰Ug6]´\Ğ\é\ì%‰3‚yD[)ı÷f˜>ö]^\Î\åp\îe\Ûw5E:?\Z]Á4!HÍõ©‚¯‡=\Ú@\àC¯E?-+¸J·õ\í\r{v\ÆJF\éATh_Ás¶\Ä\Øó³T½O\"Ö‘Æ©>\ÄÑ°†‘\Ë\ÎğYI0%\äó\Ù£ı\ÕÁ«¯\\\Â•\ÂğK?Vskö-_Á \Â(*ø\Ñ\åm\×\å$GtW´(%iƒŠ¬¸GdCmh»/vŸ\Ø\Ë2…@÷*şøòµbæ¡™\ÇI¥‹\ê%”“}óÁ\Õ)\É2”¦	MHRœ2ü\ÇşI¨¾´]?WPK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/PK\0\0\0\0‡N\â@X\í\'/\n\0\0™T\0\0\0\0\0word/styles.xml½\\\Ûr\ã6}ßªıŸv<¾q&5\ã\Ëz*öÄ‰\ì\ä\"!’PHĞ²óõi4HŠ–HP\İL\í“-J§O\İ}p„?¾¤Iğ,óB\él¾;™E:V\Ù\Ó$||¸\Şû!\n#²X$:““ğUáŸşı¯«óÂ¼&²À@Vœ§\Ñ$\\³<\ß\ß/¢…LEñN/eo\Îu\n/ó§ıT\ä\ß\Ë\å^¤Ó¥0j¦e^÷N\ÃÊŒ„eW&öR\åº\Ğsc!\çz>W‘¬şÔˆ|^‡¼\ÔQ™\Ê\Ì \ã~.ğAg\ÅB-‹\ÚZÊµM\\\ÔF}xN“ús«]\ÈV:—¹dQ@L\Ò\Ä9Ÿ\n•5fO¶5÷:n\ß5ßšø\áş\×ò\ãğÀ\çq\Õ\í]S\ÉcG´]o\Õ,¹3$€õ;Î¿>e:³Rjux~‚|Šut)\ç¢LLa_\æ÷yõ²z…®ufŠ`u.ŠH©H40*°uó9+T\ï,\ì?\ïHQ˜Ï…oF…iYû¢b\îú¸~\Ô\àñ†·KYSW«óH—™™„G§POğY9ÿ\å\Z\Ë`\Ö³…Š\å\ï™=2†Ò«>8•©ºQq,m9V\Ï¿\Ş\çJ\çP,“ğÃ‡\êá­¾\Ëxj€\ØZµ½“ñ\ÕK$—6­öÏš\í”„\èH©Ö–ñAÑ¢\Ç™°]ü\ÍzŸ\ØË‚\î÷°,¤°\Â\îB\Ôòm:GkG\ãM7q2\Ş\Äûñ&NÇ›8o\â‡ñ&>tšhç°«—\n*‹\åKO.ù1\İ\É\ã\Çtg‹Ó~Lw>ø1\İ	\à\ÇtGÜ\é±3\Ó\ãVy\í\ÑM\Äp<7\Ã\Ñ\ÜD\Çr1\ÉM\Äp7\ÃQ\ÜD\Çp1ÁvUº‘$ø\nÅ™R=Ïµ6™620ò…†\àp²G\Ç\ÚE\ædG‰§U\Õ\à\ÕI¶1˜·F¿\ã÷vF\à4/8øwZ\è«Cc§asõT\æ0¿\ï\Z\åûÀ2{–	\ÌıÇ€e‚si`\ÚO\"n²!—s™ÃšE’à­”\àHT&ƒ¬Lg\ÄH/\Å\'³“Ÿ\çm&—N“¢4;U\ÄI,\áH¡1Z¾J\èK\Å[U\ĞdÁ‚/e’H\î=ô\È7<µ\Õ!Ãƒ\Ñ\ä„\Ô\ã\È2<m±¸¾MªŒ–UHF+$£.ÖœvVHF;+$£²»\Ã\ÈĞšğĞ·(|P&¡©\îE¢\í.)9§\ê)0<3\á2×ƒ\ÕJ=¸¹x\Ê\ÅrØ\ï¿Ô©Fƒ\â\Ìp°/ÀQ••\Ã\Í\İ*\Ç\Z\ÉI\Ô\ËH\Õ\ËH\ÖÛ®}ZS\r;\Şô\ÏÎ¨™\ÙÓ³11-g†œ\ìS‘”n\ÖIÊ»K\Ø\Ğ!\Ö)w­r\ÑS\ën\Ä<úf\ç\æ6 \Ô\n_³\ÓF’5–´kœ\ë*b;·\àDö6\î\è\Âróº”9L:¿“r\ãZ\'‰^\ÉØ&–\ÊÑ‘]pô•Š\Éu\ÂSi|c\ÏUº\\ˆB¤Ş¨¿\0\îÄ’¼O`ßš³«=\Ø\ïN‚\İG°¶¤W\åÿü.gÿ%9{ópw|†Ywöš2€Œu2^(¢n9”ij‡(\ŞUkM[3\"ö\'ù:\Ó¾Ë ,syk/\Ü\Å7’ŠtIœ.!\ëş\n^\Äu&b¹²«{R[«\Ä{ [kê¢œı!#Ú„	¡Xl7\í°\É×®•7P\Ú òJSr½H|5·Ë¶\ä¶\Ç5–\ãr\ã3m\ÂVµW\':Ÿ—	+D5˜\Õ\â\Z\Ìj²N\Ê4+¸^#–\é4b\Çø\Ìò\Ò\æ\Õ.\Äÿ\ËU\Ì\ê(rz	œ.B §\È\îœ\áø\íbG\Æ\á\rù\àğ¾ü6×“\İ_¦ö-¬\\ Gr\âˆ@NÈ‰#9qD \'\ä\Äñø2ó9Œ§<ùjÁ91mÁ9‘µ+|™.\á´GşJš‡¸T¼J\ä“ n\İ8\ä}®\çöÔŒ\ÎzN.økÀ®ù¹\åt6\ÌöY\Êkq=|C{|N7z–s®+­uZ\ì¿Xx\Â)”ş\r´!·\Ü×Œ^·¬¢v§ÔñÚŒ§„x\Öİ©Ÿ\×o\Õ\Ó\ÂÓ…gŸd\ÈûS\ß^•³oµ†\é¼ou\ïŒóûıôØ³up\'cU¦u\×ô•Á`\çœ\ìNÁ¬˜SüÆµ\'¾U+P\ì{\Æ\ŞÁ&Ày\È\Ş\r–¶}®ÿg\Ãöq¶\Âõùö¹şû‘Uıƒö{4k¨ÿ\Ï|;O—p†5\à—×™¯v›\å\Ñ(y8óUpC1¢	¾\"n\ì	_÷¿‘O\Ø\æŠ\à	[*|±X\ë\èX_8Ö‚:–\Å”Me\ËE‘Ø±\\;k­Ÿˆ¸ù|\ìk\"j{ó\Õ\"s˜\İY\ãı\í\Z<\Ö{º³Ø%\ÚYõ\Ç\í,ÿ#‰vÆ’øD¨Q\Ój@\Ëå“¢†\Ó{œ²ùÔ¨!\Â1z\Ñ\îS\íº\ë¸s_˜¶\Ç\n.‹/@\Ûc—\Å¾±‚\Ë\å\Ò\r®£±1\"\ÜF‘Å›KDo.Y¼¹Ddñf\ÑÄ›K\âS…F\ç6Ä›\Ë\åÓ††«-\Ş\\\"Ÿ<4Dmñf\ÑÅ›¹ \ÛqÃ¤–.‹/@\Û\â\ÍeñEgCPÇ¶ˆ#\Ş\Üv‘Å›KDo.Y¼¹Ddñ\æ‘Å›IDo.	G¼¹\\>mh4µ-\Ş\\\"Ÿ<4Dmñf\ÑÅ»\çë½¡\İ8¢xsY|\Úo.‹/:}\â\Í\å\âˆ7—‹,\Ş\\\"²xs‰\È\â\Í%\"‹7—ˆ,\ŞL\"šxsI8\â\Í\åòiC£©mñ\æù\ä¡!j‹7“ˆ.\Ş=G,şañ\æ²ø´-\Ş\\_túÄ›\Ë\Åo.Y¼¹Ddñ\æ‘Å›KDo.Y¼™D4ñ\æ’pÄ›\Ë\åÓ†FS\Û\â\Í%ò\ÉCC\Ôo&]¼{¹ı\Ã\â\Íeñh[¼¹,¾\èô‰7—‹#\Ş\\.²xs‰\È\â\Í%\"‹7—ˆ,\Ş\\\"²x3‰h\â\Í%\áˆ7—Ë§\r¦¶Å›Kä“‡†¨-\ŞHµoş²\×c\áµxpü\ÉÀ\ïv&\á²ş²=÷€\Ù\ëÍª‹½ğƒ_ñ\ê/‹³?\\†\Ï<¸[­}\İVup­´>±ZòÀ>X\Ş\çÈ½‘½@\îG›\Ã†€Èö²\n¸\ì=\æ¡}ñkio^ƒ;ğjhEe\0.]³vòÿó5k\Ğk\Õ-‚_b[‹¿.\ìEo\Øõ³D`\ãğ™\Ìö§¶W\ëk\İ&aóh×·Aóò½\égk¬u‹vúv˜¢\Ä)²¿±ƒ=a:\Â;\Ö\Úaòı\Ê|}:\ĞE\î\ÍX\ÛL<n\Îö8iğYıo9¸ıS.[pX6³Ä¥üs!“\äN`²½Ÿ\à2C<¶\å\Ò>~“È¹q\ï \Ün¼?\Ó\Æ\è´Ÿ\ãiY4\ße\0:«\íŒ{i\ì\ï\Å7\ÙÔ »‚°\\•C>3wõıl\ï\Ö\Ã¬Gú+Na\ïõ•(öZU \'Í‹·º:‡‚€\Õö\æ$<;ªª>²G\ë_L)’©+| ‚†ûjy>¨n\íü&WÁ¯:pcueb\ç;Q\Ñù¸.¹öMŠW\ÕíŠ®µ­z®\Úÿ¦ñ¸Šz³Uı_ñ\éoPK\0\0\0\0‡N\â@µ\nE\Ğ\0\0\Ò	\0\0\0\0\0word/settings.xmlµV\Ûn\Û8}_`ÿAĞ¾Ö‘d;‰+D)§Ş¶ˆ\Ûb~\0%l\"¼$e\ÕùúI\Ñ\Î\Å\rŠ-\êSs\æÆ™3$/\Ş}\ç,Ú‚\ÒTŠ\"\ÎN\Ò8QÉšŠu»[Œfq¤\r5aR@\ï@\Ç\ï.ÿş\ë¢\Ï5ƒj:BB\ç¼*\â1m$º\Ú\0\'úD¶ l¤\â\Ä\à§Z\'œ¨û®U’·\ÄĞ’2jv\É8M\Ï\âÁ,\âN‰|p1\â´RR\Ë\ÆX“\\6\r­`ø\êW\âz\ËYu„qsBoh«ƒ7ş½\á7Á\ÉöµMl9z}–¾¦9l·—ª\Ş[üJzÖ U²­±Aœù\írB\Å\ŞM6}\áh_\ê,u\âc\'\Öšg©[2\×\ì…ı‘nû.\Ş\ÒR\åÛŒ°Yğ*ÿ¸R‘’!©úl\Z_\"£¤\äQŸ· *lRŸ§qb\åõĞ¶¯J\Z¨l\ËPòª\Û\Î\"ŠĞ™;R®ŒlQiK0\Ïóñ\0W¢He@­ZRae\æR%YĞ«\ågi\æ\ÈL……ó‘=Om~µòœGA8f\î¥—²†¡N\Ñ\Åùiq­\Ë2;}òy ‰3ªh\r¸5+³c°À\äWô®Dı©Ó†\âd86ÿF¯%\0\ÂFş‚}·ka\ÄtX¦?\ÌubÁh»¤JIõQ\Ô\Ø\å?Œ6\r(@‰%Ò‡*Ù»:\0R\ã\Ñø››Ly,ğ ­uXü\'¥	\íO\Ó\élü60Şª\ÉUv>~\ï»ó™N²ë›8ÏŸz;»,\Ò\É1oo\'Yš\ŞC\æi:Ì!7Wg\ã\Ù\ì2›¦\Ùõ\Ì\Ù`†}ó\Ü“_\Õ\å…_YG\ÜÀœğRQ-\íAŠs\ÏóR\İ_Sğp\à\á1²\ê\Ê\0FĞœ0¶À)€}\×T·7\Ğ8·lI\Ôú\àw\ĞPG¥54Ÿö¾\ì©\ê_%»\ÖG\ëi=9C¸l:üQan)rİ•«`%ğ0|u¢ş²U\Öar(OŸ¼Cİ\ß±\\\01ú¶²|¢Í•¦¤ˆ6£ùgk4cje¯^X’¶\Åó\rõ\ÊuVÄŒ®7&³f¿j¼‚\İG¹\Ø\Øaøe1÷A*»Y\ÔVÁ/QkXd“ ›dxÁx½\éAv\Zd§\ÙY\á \Ï7x¸(F\Å= ai\ådLöP\Â\"~!òE\Ğ\Ò¶\Ú^8i2w\ì£D\re¬’L\â«áŸ…û\ÅNV\ÄÆ¾t”¼\Çc\İ\àu´Í­jdŸEˆ4x\ámú€`ú\Æux›{\í(xK\İ\ÏõñY\Ğ}Œ\ìdg¢m\ßñÒ‚š\Ú@2§5\'\íiTƒ½\Í{ó\Æ\È|z=İ£•±\ËPK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/theme/PK\0\0\0\0‡N\â@\ä¸Q\îó\0\0\'\0\0\0\0\0word/theme/theme1.xml\íYKo7¾\èXì½±d\ëa‘[¸‘’\"Gj—\Úe\Ä].HÊnEr\ê¥@´\è¡z\ë¡(\Z \Zô\ÒcÀA›şˆ¹«)Qñ>Eì‹—û\Íğ\ã\Ìğr}ó\ÖÓ„zÇ˜\ÂÒ¶_½Qñ=œ,$i\ÔöûŸmû(\re)nû3,ü[»Ÿ~r\í\È\'\ØûTì ¶K™\íllˆ\0†‘¸Á2œÂ»1\ã	’ğÈ££ğ›Ğ\ÍJ¥±‘ ’ú^Šp{o<&ö†Ê¥¿;wŞ£ğ˜J¡\Ê\Ê5¶,46œTB\ÌD‡r\ïÑ¶ó„\ìdˆŸJß£HHx\Ñö+ú\Ç\ßØ½¹v\n#*\×\Ø\Zv}ıS\Ø\ádS\ÏÉ£Q9i­V¯5öJÿ\Z@\å*®\×\ì5zÒŸ  €•\æ\\lŸ\Í\ÍN­À\Z üO‡\ïn³»Uµğ†ÿ­\Î{uõk\á5(÷_[Á÷ûˆ¢…× __Á\×÷[û]Û¿\åø\Æ\n¾Y\Ù\ëÖš–\rŠ)I\'+\èJ½±Õ™¯¶„Œ=p\Â[õZ¿¹Y8_  \Z\Ê\êRSŒY*\×\ÕZ‚0\Ş€R$I\ê\ÉY†\Ç(€*\î JFœx‡$Š¥š\í`d¼Ï‡±2¤fôDÀI&\Ûş‚}±ğzö\æ\Í\é³×§\Ïş8}şüô\Ùo¦w\Ë\î\0¥‘i÷\î\çoÿ}ù•÷\Ï\ï?½{ñ]>õ2^˜ø·¿~ıöÏ¿\Ş\ç6“A\ëûWo_¿:ûá›¿y\áğ¾\Ç\ÑÈ„I‚…wŸxX\ÔÑ±ù\à¿œ\Å0FÄ´\ØK#R¤fqø\ï\É\ØBß!Š¸}l\Çñ1qoOŸX„1ŸJ\âğx\'N,\àctŸqgî¨¹Œ0§iäœOM\Ü„]swPje¹7\Í@E‰\Ëe\'\Æ\Íû¥E8\Å\ÒS\ï\Øc\Ç\êb\Åõˆœ	6–\Şc\â\í#\âÉŒ¬jZò2s„|[±9z\ä\í3\êZu\ÛH\Øˆ:\È1µ\ÂxM%J\\.‡(¡fÀ‘Œ]$3˜¸\éS\æõB,„\Ë\æ‡õ\ZI¿B\âNû%6’K2qù<DŒ™\È.›tb”d.ì€¤±‰ı\\L D‘wŸIüˆ\Ù;D=CPº6İ¶\Ò}¾\Z<\r5)-\nD½™rG.ocf\Õ\ï`F\Çk©‰·”;!\é¹2\Ïp=2yö\ãK\ç\ëm·c+\âg—“\ë=Nœû\å`I¤\×á–¥¹\ÃxH>|e\î¢iz\ÃfXmO…ù£0ûÿ{a^·Ÿ¯_\n\â¬‚ù‘[À“µ\ç\ï1¡t g\n}\Ğw\Â>*;}÷\Ä\å},‹\áOµ“aq¤m<\Î\ä—DÆƒep|¯ú\ÊI$\n×‘ğ2&\àÚ¨‡¾N“#\æ\×\ÎjU]1sñH.\Æ+õr®2G7š‹«T\é^³ô•wN@\Ù^†„1™Mb\ËA¢9TA\Òlšƒ„^Ùµ°h9Xl+÷óT­°\0jeV\à`\äÁqª\í\×k`FpoB‡*Oyª\ç\Ù\ÕÉ¼\ÎL¯¦Uø¶QTÀ\"\Ó-\Åu\íò\Ô\êòR»@¦-F¹\Ù$tdt1\nqQjô\"4.›\ë\Ö\"¥=Š\"\æöûX\\5\×`·¬\r45•‚¦\ŞI\ÛolÕ¡d”µı1\\\ß\á\Ï$ƒ\Ú\ê@‹h\ßÀ\Éó\reÉ¸]$\â<\àZtr5Hˆ\ÄÜ£$iûjùe\Zhª5Ds«n‚ |°\äZ +\Z9Hºd<\ã@ši7FT¤óGPø\\+œoµù\ÕÁÊ’M!İƒ8<ñFt\Ê (±z³ª\ßxªy4CŸ%K![\Ô\ßRc*d\×ü.¨k(G4‹Q\ÑQL1\Ï\áZ\ÊK:ú©ŒñT¬j„¤h„£H5X3¨V7-»F\Îam\×=\ßHE\Î\ÍEÏ´TEuM·ŠY3\Ì\ÛÀR,¯\Ö\ä\rVóC»4;|.\İË’Ûšk\İ\Ò9¡\ìğ2~®{†`P[LfQSŒWeXiv1j÷ùÏ¡v‘&a¨~c\îv)nepNƒW\êü`·\\µ04Ÿ+u¤õÿ/\Ì1°\Ñ.|ÌR)rĞ \İÿ\0PK\0\0\0\0‡N\â@™]\Õ\çT\0\0ÿH\0\0\0\0\0word/document.xml\í\\I\ëHr¾ğÊ€1†¦)Š‹¤\îz’\Ú%j£öË€¤¸‰«¸J:˜ƒ|0|±a>Àw\Ãğ¡ó?‰#“R-\ïU\×t\Ï\ë\é7=.\ÅJ23#####3#>\êóŸ=·”\éQlş\İM\å\ryS\Ò}-\ØÙ¾yw³˜·ok7¥8Qü\â¾~ws\Òã›Ÿ¼ı\Ó?ù<o\ì-õt?)	?n\ä¡vwc%I\Ø ˆX³tO‰\ßx¶q`$o´À#Ã°5ÈƒhGPd…Ä©0\n4=¡=Qñ3%¾¹ó>¤„ºmA\ä)Iü&ˆL\ÂS\"\'\roz¨$¶j»vr\Ú${%\Üİ¤‘ß¸0t{\Ïª\Ò(ºü»Öˆ>\è\Å3\í5›	\à‰Hw‡À-;|\è\Æ\ïJ\rºh]Y\Ê^\êD\æ¹\×ryX¡?h\ï¾\Ë\ßdš‘’\ÃP<ü€\Ü3\Â\Ø•<·\Zß‡Q}Ÿ\â7!ø”Â•®§\Øş=c¿[G‰ªB¾$Ô‹f Fšd>\àıE\ÙRX¿5Â”ú˜	Ò‰‚4¼g\'´?Z\Ïw\îi¡™ı-8#\Ùº+\Ì}\ÙRBı0\Ó8	¼¦’(÷tó<“‡ñÍ¿’G³¯R% \ë¡\ÒM\É\Ó\Z=\Ó\"Eu¡oy….\å¦„&\È\Í[°]j°;¡ÿañ8ÈÈ‰%¥¼a\ï\înÀ\æ\r_ñ òO; h\Î\rñ¸l\Ë\ßİ—\Ä\Ñ\ÛÏ¡M\ŞMô\ÈW]ül#~)ZØ½\ÒL?¤v¤ƒ¤€W\Ì\Åe\â\0İ°¡øšD¥\'s\Ü<J	÷©!\ç\n]%/”1{xŒm/tõI\0t!³0B™\Ş\Õm\ÓJ\în(¦Â²$U3®\ê–\í\ï@j¸ h^t\ÔUNAšô|Qw] {SR\\7\ÈÇ°*¸Jˆ^`\ï\Û)1º£®‡0ˆmdùº÷Í·£À»»\Ñ7õü¢:”F¬\'oo\ë$M\Ñ\ä\ç0d¨\æ\å\íõ± ô„\ìò=²¡)f¤„\Öû”+\Õz…ª1WR\ÏQ^b\Êú\rNIƒ\Ô’&iæ¦¤A‡hº\ÆRs\é–nº–´Š² /H	\ß\Õ\äÀ\Í\Ö\ÇB°0N¢Ò¢\êM©Ğ¡‹:”&®¢\éV\à\îô¨D]š\ÑFYõ\Æ\Ö\Ú(\Ü$zû¹\ÒÀı»¼\ÂPÅ—eña>\\\×\Ø\ßn\Ã\é&0‰DÿR³\ÛØ£ 9\\J£4V…}@c\ÍZH@\ä°WBz¯“Ê \nñ¥ôÑˆ<\Ä\"Xù÷”Yi€j\\õ¢Z«\Â\0¾§„Ò¸V£8\é\èWB‰»›”4Ri(\Ù0N”•Æµù•\ÄJrT\Ğüÿ\ŞV\\\ì\æ\Òrrru°2™\ÊGö\ÇO=\Ôc0Rn\æ^óŠyØ€¼²J¸|•\'À†]+Ä¡¢Á\Òù®\ì=UMRñ0K‘‘T\Ò$(\Z‰Š&¢6±\Ê\èJœğ±\rº7·==.ô¼4<\Å/Š\Ç\çk£{iS€\Ö/]Á_¨‚Q\0;w\á’\Ä\â##XMÈ»»I`0ÿy\Ãsz-L]dğ~{y#>‹ˆO\Üñ‚°ø\rD¦m».ˆ\âÀµw\ÑU]`2q\Í\äx\Ú\Ó\Ò\ÄSZĞ«KO’·¢õ\î‹ö\Z¥$}÷Å¿ø%²Vúß¿üe)‰~ó«w_ş½V¢	\Z¶DT,¨&¾\ãU§¸’ş¸¡Æ†ˆÿê†«`½Æƒ˜Ù·\Ë\Ö\Ë\ïE~ı7\ï¾øÏ¤\ä}õ\ï~\é\×?óK‡T)%¶_òA3ş\Í2ğxô\ï•\çh\Z \Õl+¬lw7!lpô(\ÓoŞ–~T)ıúö»/\æı\Å9€¦~\Ä¸Ø…\'¶\î“L\0ºöıÚº¢½§¶\îò\î{\Ñt°u_şµÿ \é\ÙWÿP2\ß}ù¯ö\×\éû\ë8ÿNk\Ú\ãü)\r]\Íd¿”€üüA	~4üÍ¯\Ò\ÒWÿ\İ(Yó5iÅ»/ş\ç‘eL¢\0Yi]-e6\ìnK\ÚWÿ/*%%_\r\Ú\â}\äfè‡ 8‰õ\ÕÀ \Ã\nù\ã’ú\î‹‚Eó\ï¾ü%¾ÿ\\¹®¥¯Q+P8h\ê\ï—~\Ğ,5\nrX~@¹\ë«Ô¾k\ÕznŸıIÖ? }ö§´I°ùúòom\Øk\íù««\Å\ß=\Ùj¼n¹Ÿ9 ÷\ÇM\ä3»D!…|b\à·\0·fÁu†cø%\înb\Ø\ÔF\às{>8™\êšFü@3…\"s\Ô\'9‰‡:\ä)A\'c?\à\ái\ØøtŒZ/\ÚD‡\"xÀ{84_|\Ès\09÷Ï¸\Ô\ÅO†Ò{÷·\ÂÉ†ımmğ_©\à±C\Ç\ä\Ğ\Ö\à\ä•5\Ğ\á»d÷Ä”\ØÀ\"\ÍO\È\nÿ4®\Ñ[¸\Äbt‡\í\í\Å\Ó\ÕPT8O¦‰ş™«Iƒ“\ÏÀƒh\Úş-~¾\å*o¨‡wI6*dı\r\ÃÀ;{\æ\ZU¦ú†BÏ¹½K¬G\×\ŞT\Ñ\ãùœtú±q\ï¸ûÌ‹ƒ[\\\èö\ê\Ük„Š©\ã÷±÷2nJœz‘s\Ï@ŒGvôAZÀŸ\Û\ç\âôO’?\0ò(\r\Ó8î°³uÑŠ›ğø\ê\íÆ´S$\İ[(½\íö\ÏÃŠ0\äó\é=‹¼Ø§}Ş«Ÿ¶AB£W£?ÿ³\nù?\åùf\ÙI;\ÕµºK5oI\r}+Q[\Ô$_q¢$-Y³\Íúv\Å\âñ\Ô2\åñ(Ÿƒƒs‚5O\Õ\æJ\ì\êMU²õóÊ¯G¶2^•2\Â\Ãj¿5¹c8l\ÅS’¶‹UR™öõö™8÷·¼?Ò¥’ô·ó\ÜÌ¹UÙ¨\ìB·Ÿ`‚3\"\âƒ_Š§µ³°WV=b†\ãõ\Î\İ/\æ S\Ói¶uuvTO\Ò[aG0M\ÈIµ…¹~Taz\È\é\êh«\ZGm\Ù+8”²6:1Ü‘\ÕvÄªy]¥£¦\ÇÈ“\æ©\Ï\n©zd³º™\îN³›d\Í\Õ\åf¶’C»\×o\Ñ\â\à\ÔZ\rònl\Åg<M\ÏY\ë|»\Ì3GŸ \ÈuY|FødHGQ ğ¼ğ ó¦y/wWò\ê-•’RLP\ïT\âh9\Ô$Î›CrB5k½Ô®S\İÁn´Ÿ\ï\Ûdg\Ø6;½!9&›\í¶7\Ø/={f{Ç˜­¡j…iê¬§³y(pFA¯vRË\ÅÕš+£\É\r\Ç\Ë\ÑjšL¶†F‘‘mµ…v¨À\Ô#\Ågd?©§Õ¨®6YF\Ôùt”[si›\n\ç©S;=\í{ÙŠZµ|º=wÃBö,¾§³g!^ò\ì@\Øûq2Uşh·{Ì¼º«†\å¹ÑŸ\ä\Érs2Fk\åPk²˜C\Ï\ZW#1\'V§V›\ä°\'•\êö\Øİ²¹Y\Ì|e\åµY‹kM§\Üf¢­İ±ã˜¦¶\ÛZ}Ip\Ã\ê\Â^ŒÂ¢l·”\Ãl9\î\Ëg\ïkk8&³4önâ¬—“³°Ú­:B4\ë\îlS\í4ÕµcVšŠİ›™\Õñ²2\'˜\áf®£ª8t·Ç9t\ÄMuZo=&Ø”.[\é\ì\í3”\éœ`õ\Ñ1\Çó]\×;Ÿ=f™+f\Ã\Êry\Ì§ ğ\Ã2—ˆ]!_u›²‚	ör’.\Ë\ìxfZü¡\ÏC\ãónk\àuµıv,u\çSŸt¨¡|\âZ$Æ‚{½,5º3ˆ	\æ\Í.c¼\Å69mÚ˜ cØ€Œmu›I‡ar3¡\Ø\í=­ñ©“Æ›,9Ÿig¹Ÿgşr“qqÛ«:!Šjµ\Ğ\×h$\\bD\ãıK@J\Û3²:>kalk\æMF\È‰d\\Dd\\ <&ˆ+\\9\Ü6%–òfO\ÍLj’\ë\ÊÑ‹¥M@\ÒYP\"v\ÆñT/\ÜwÜ¤#%>[Ï¤±I­\É\ä0*zm	—{3¥\ÒsRFr]Wø|LôB>\É\Üòd.\ìp\ä§Ü¢µiSzß«M\Êg)M¢\Í\Ş[I³Šlm›Ò©ö¸°6G\ÚD\İ\ÙB\Z\Z£Yÿ«²\Ô]+\'\n–$şY­m¥»a\Ó\é¨&9“@d«d|$(\Ñaû‡N¸X9ô¼g1KÌ¡Àm\İ}\ÊõFiKMÊ¹;ä•š˜+n+Uºe,\ËD™5t’\Ô\Ê4-@—Xº¾V¹@\Ëra*\çR«\r\"\äy“\Ç-’³§]¬U³Š^\ÓS¶ AJP§T=\İu–\é®]_\èkÁ\Õ*dŠŒ‰»msu«µ®Ê£³P³6\î<J\n‚¢¸\Íh6œLmÓ™MZA\â¨]WR:\å‰\Ãm\ÔY¿½¡ö\";\é\\U8w¦‹|C5F²°Õ”\Ï\îş0È¼r•ZL0‡ŸoI{Î@wô•—EdX\'õÉ°=P\Ò~¿¾Ÿ0³ÁnS\ß\Ç\"S#­„cÁ\Ô9wIÑ™”M‰]S;m\Êb!0Á\Õ6\ç¶m’¢¤¡ß’Ö”3`&}³\Õu\Óa˜4\íóÀôõfeÛœ¶‡^6n:!\Ù\×A:®\Õsu×Ÿ²¡!\ZgœŠ\Z&¨“\î¤\Å…\Ú4°&ñx3\êOûQ\ï\Ì0\'|£¯6\İ“D+%>©y‹\Zdz›Œ\Õhµ÷²õxR5j)%§¾1›\ÉT\Ñô™ö¼0Ec\Ò\ãñ\Ú,”™ta\Ö\Ñ·À\ìós”Y\\-(W³…F\ï\ÉÀ>\Z=XôŞšò\"šzpa\r(’\î›Gi4ñx¾•ƒV<™z\Ïr)ÚMDUúS\Ä\åş.×•K­	\\\Z°1ˆµS­X¤ğÃ•\à7Ø’<¼¦Gó¥õwuñªé¸‹ıLó”¡Š7‘’óµkM:ˆ…\ÑC÷g¶.Å ´Ÿ”¦\ì-*5`Ç„nñ\ãª—\îŠ$Z£1w\Ûy?›u\ê{LoŠ€¨0-„\r¶°Ã·Tx[<‡\Ân:k ]^	Áv`kg\0P4hkGşŸS³F±õ»”€hPÖ°=\Ø8¢lù;A;Z\ä\Ä\Z(\Z\\\ÊPğ\ë\îF\ß\Ù\ÉM\ÉD`ˆA4\Âqû\çÁ[Pk˜Š®¨Ák\ë£ı6—€\Õk\ê^ƒXpZ~\rb}\ï±\Ü\× ~¿\ç€ı>\ê\× \Ö\ï˜Q\È9\à\0şºqş”\ã\× Ö·Eô¼*i½}¢8¯A¬?6°Ø§´I¯A¬o…ú ˆ•aœ>‰Eœ§X\àp\àE†\ÂA\è\éC„6ZQ¨n\Ï\æ\ß—>‚›©S,ı‡ƒà®•\nÃ¼ˆ³\î‚D€\á\ßÁ}KCô\íE\Â/¸+U–e \"	\nhş\ã\Ü\ÔÀ=GŞ’R>{;AÜ¯móC¶‘&\Ğt\èı\Ş \Û\ßcı€e~@7?`™‹w/o\Û\ïQ\Ú\ï\Ç\0³\×V#»4D€ dµk¶=Gh\ç»O\ÙQD9W\\÷\ã\Ì\Ö\ëòµ#\Ø.\Õ{g\ã‰\Õø.±«ğe\nš¬O¼_—w\ßË‰pˆ‘Û•Fi€C=øj\'2\0\ÉúF‚\ÎKxQù„ğ‰Rñ|T“D\àııƒÀR\\\âwŒ\à\êoX…¸ *z\â¶ú¦ò<Q!¹7\ì\Ë\Ø	¼d~–\İ\"7õm!»†g\ïvnœøÁ\0*†ú±M\'BQŒ\éË€Šù\"kN±\Ã\ÑCb3ó…—ª²#©ñ\Éİ°\ÚJ]\Z<{^°\ç\Ü ¸µ\"‚«\Î†\í¸U—”£×§6J\ëXo\n‡A8\íÁ†òš\Õ9\ÓDscJövš\0\à\ä\ĞM\æú—ƒ¨\Å\æ\ĞW¶{Î”U«-[B˜-o»rb<÷\Æ\í‰U\İ&]SÆ¡\àO©ªŸ¶K94\ædóñ¨©/²¤u\ÍQ­¯1ÁSj\Æş²\Í\Ö\çˆM\ìl›•\rq¿hK\Ò¶I/\ã@Nšş‚;¶œ\\\ŞgK¶\\“\ËY÷ë¹²`™\áÚŸ\Ëq¥³)d|—È«£\ç,\çl\â\Ñ*¹ø_¢xŒŸÀ>€(\Ê\ã\Öy!E\\€(\"r²Á \n\ëY…5ûœ¡~¢\á_j\Ñ.d(yes/:~0_¦BaÕŒ\á\Ş.TkU‹œ®j\ãlT®\ZQ¾\ÛøY•ŒıNO\ä&U§\Û\ì8³O\Ãb”\ç®3Û¦\â2`{D\ì\Ëv”Ú³ykš¦\Ôğ¸>•\0¢¨Ø£^{:\Åi\0 Š#Q$\Z{ö¬ø	Oœxi‹:\â.Sƒc;[L¬ñIò;i\ÏXµ-«Û­’\Í\îbx7\êÖ…•,\ÍøÔ¤Š’£°\ç\ÎWS\Ï–-\æĞûö2\ÙòL¾­‘q1«M–>\ÍUE\é¬j\Ò\Úoº–²\'ıL¸¨\Ë7º2t\ÉD\Şó]Y „\ÎÆ¬¤\ÎJ_­h§2‘\ã\áb²:\ìlU …¶Et-jİ£f²z¨¥¡™\r™\İğlÏ—§tyX. U-bBhú@Š§úÀ¢\æf\Ç0¯P½\ã°5­¯¥a_®µp—I\ÛSÕoÖ”\Ü\n\Ã\å\Ôsx\âÜ¦\Â^­\î\ét¦\ãqJŒ˜q8œ‰¨1™.\í½PaÖ‰GFñ¤6\ncZ.\Ğ\Ö(\Ì;ó\î\\#„°Kv\Ôy³}\Ï:›Á¨GJ\Ä(¬\Õl&1\çJ-#b\Ã½„\Î\Â^\"ô]\í»j\Ç?›Â“°ñó\Ùkù¡\ê]LĞ‘Ú‡ü\ÌKVZnf›\É\ÌXw”üh\ï\çvyOv²°77¶\')+rs¢Œˆª\ålsk\ÈTP,\ÍqB™¸mG[fg1&¸• \Ésµ}«Ë—\Ëkº.\r‡Ò¹d:3¥j»iKûœ\à¤K%öx»9v—ƒ¶#‡«Õ’­¶\Ï[;Şµ§yR«ƒ\âwI\Ô?\ZfŠÙ‚2eŒ²£“«\áşÀğ\Õü4-›\ÃÈ\Ï]b3˜^ ¸\Ô>x\Ê&J»î¢›x«1›=K\Ì\á,’´Xˆò¡t\×_æ¬¾\æ.¬sóÙ™Û§É²l\Ñ\çh_\Ùe©u\"x~g¤ªÛ›hşìµ…\æ­F¥4UŠ!·+ğ(3F\ë,\Ïk™¡\Õ\Õi\é,\Úcõtf\ìzU©{j\Û\0T ù^_÷Ä¤•ğ\áhb·­šlS³X_•.\Ï+i\êF‘ˆ2\Ñ\ç2­+m…¹°ßŒ‘3°\Ë\Ît4¯\ÆÁ¡¬r\ÆvZ—5~z’š{Q¶\Ø&\È(J9“ıêŒ®Å‹ğ@;>%n+¬\ì©q>ô\ÏrÇ—Ó½ \Î%c:˜,,; —õp6\ë…[¿	¸§¹º\ÉSmŠ	\re\Z95Ÿ\ê+:õ\ÈñP:ˆ;z²tFR\èv\Ëş\Ôed\æ{;›\ìH·ypkıZy\Ê\Òı#\'/jó¨\Õ=Šv«Œ	\æŒIº¼\ï\'©m¶\'\å]Í\Ç\ë¡G%\ÛÃ¹ŸñóÍ¡N¯\åcš(c¥®\ÑÄ8q\Û»d®Y1\à\Zÿ\Ç\Ü\å\ë‘.hşÀuôó\éw,º,\ç-\Ğ÷\0§¯\Å6a\ÊpCH@D 5\æ:õ®@\Ì\á¨B/Xl÷\çª\áòª£dq]¸N4\Æc\Ô‚/\Ã;¦Wr\èÿ\ÃC}\0”\îŞ‡ ¬\'\æuññşU\ÃXODuP\ÄÿmtÇ€Qj–\í(@g­75t\åõô\é HÜ™I;\"¸E #J\á?\\\×AAb(¸»7¢uˆ¶†\ìB\0ü†_!xG«Vˆ”¿û(^•\ßú\Ë\àğ±ò;rh‡V8Xr\çò•±)£/µs\0´35„\á\Ï¤)ø1”\"~\á\î¾¦\İ\Å\Zú=|0MI‰ aPcÿÁWZüº\ÄõQ\rø¹‡l‚x²t~\ï\à\î*7Œ €Cöı£™&øñòq\røĞ§Ü—\ÏI/U\0\ä\n~\à\×:‘¾sGß±O\ìDƒNTY\Ü\ÍR\"¹ø“\\»\É\âG? $ğ/½ı?PK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0customXml/PK\0\0\0\0‡N\â@\ÔÁ\0\0\0T\0\0\0\0\0customXml/item1.xmlÁjƒ@†ï…¾\Ã2÷ºj!qÍ¡¶\Ğ[h\ÒsX\Ö5\nqfq\ÆjŞ¾‚$µ‡^:Ç™ÿû˜™|7uõ\å{n	\r$QÊ££ªÅ³\Ï\ã\Û\Ó‹\Å\Ê^½«g\Ø9gn`¡®´b\Õ,A6Ğˆ„L\ëq£1p\äPS]·Î—\ä†Î£\è4Nõ<z¹£°°\Ù?\é\"_¶8x\'ûÿn\è\"\×šğ:\ÉO¾	\ïX“\â\ĞVNS<×‰“8İ€?\É‰•ùşVÎ›B¯ŸQ|PK\0\0\0\0‡N\â@cC{E\å\0\0\0G\0\0\0\0\0customXml/itemProps1.xmleQkƒ0…\ßûr\ß5F\ë\Ôb,´N\è\ë\Ø`¯!^Û€I\Ä\Ä\Ú1ö\ß7t}ºœ{¸\ß9·\Ú]\Õ\\p²\Òh4Š!@-L\'õ‰Á\ÛkX\Çu\Ç£‘ÁZ\ØÕUg·w\Ü:3\áÑ¡\nüBúyl|\îi™\çmŞ„Iœ\í\ÃM\\Ğ°¤\é!L‹fCŸó,k\Ë\äŸ­=\Æ28;7n	±âŒŠ\ÛÈŒ¨½Ù›Iq\ç\åt\"¦\ï¥ÀÆˆY¡v$‰\ã\'\"f¯\Ş\Õ\0õ\Ú\ç÷ú{{+\×jó$ÿR–e‰–\ÑFB\ßSiJ¼uø7ş? uEş±W}ó{ı\rPK\0\0\0\0‡N\â@Š–ˆ‹\0\0w\0\0\0\0\0word/numbering.xml\ÍY\Ûn›0¾Ÿ´wˆz\Ùp94jZU\Í2uª¦I\ëÀ\'±\ê²M\Ò\Ş\íYöh{’ı†@HƒPh\á¦\Äşş¿Ï§z}û\Âho‹¥\"‚\Ï,·\ïX=\Ì¾Y¿—«§4\â!¢‚\ã™õŠ•u{óù\Óõn\Êc¶\Ä{ƒ«\é.\nf\ÖF\ëhj\Û*\Ø`†TŸ‘@\n%Vºf‹ÕŠ\Ø\Ş	Ú\ã:É¯HŠ\0+y\î\ß\"e\íÓ±\Ól\"\Â\ÆZ	ÉV}!\×6Cò9.!{„4YJô+\ävFY\Z1³bÉ§û‚.ó‚L\È4-hÿ\È\"\ä	Š’q\ÓÈ¹b†¹NF´%¦Pƒ\àjC¢Œº\Ù\0\â&+i[b\Ëhæ·‹\\ÿd¼ò{\æ`.\Ñ¦\âğ$]	a\Z\ÄhÊƒ™\ßÃ¬¾\Í\è:U`ö3bR\ä5¼§„\ã1³J\"<OSš\"¹°%š¬\ï¯R\ÄQ^NDše{\à\Ïy.³3?P™3Jv^šúP‚“­ûsƒ\"lõX0}Xs!Ñ’BE;\×\ï™i\İÀi–JK\è\ï1\ëµÂ™\å$.\\‘l[D¡\ç\Ëüj8X,\Û³˜jòˆ·˜>½F8óIz©\éM½4‹hf;§[c ğ0cÁO\r›ö\êªLÇ†3N\ê,\ØMóÁ·`y\ç2¦\ë\Ô‰ğKnúûûO\Şÿ-È²P¼Ú»G?¤A¡ƒıó\È\Z‘€	{Ic<	7„˜D©\Z\Ä\×\É\á<e\Şûô2E.\×\Êxa!^!`Ï€F* °\è\î$Apb€\Ã0µÓ“P\0\04•ys;Ë›\ëû\ÅE\âó9™ó:Ëœ\çæ‹¨Œ¹\Ä|N\æ\İen2©Zs1Ÿ“9¿³\ÌÁ¹U\Å\\b>\'s\Ã\Î2\ç*/ˆ\Ä|N\æ@swôf:•7Db>\'s\ã\î27®¼!†\Æ|N\æ\àõ´£kn\äW\Ş‰ùÿ2º® Â¾+4¡”BËˆr÷D”«û\Ñ\ÜóS±ûqQ~_—uEyˆ\Â@\Í&o	oTù…\Û\ÏûÏ¥\ÊÛ•\ÒT\ì°|\ÄZc™#+¾‡\\x­ n¨§\Ë1\×Á•3<hoC\\·®t­\Äë·ƒ·™v-\Ç[WpV\â¶‚·¡\â,\Ç[W&V\âµ‚·¡N,\Ç[W\ÜU\â·‚·¡º+\Ç[W’Uâ´ƒ·™&+\Ç[WHU\â½joC%•\á…gA\áùø@öÀßƒ\Ü)x<˜oo\é\ÇHs\ÛB8x„yo¿nÂ’ÏˆYXúLÿaróPK\0\0\0\0‡N\â@Q)\Ê6\0\0q\0\0\0\0\0word/fontTable.xmlİ–\ßn\Ó0\Æ\ï‘x‡\È÷[œ,[³jİ´U Á„\Ø\â\ÒM\İ\Ö\"¶#;]\Ù# ®\Ï\0B¼h\â-8¶“-m“­ÿqÕ¦=µO\ì_¾\ï\Ø;{/y\êQ¥™=¬c\äQ‘\È!\ãzz\Ú_‹‘§s\"†$•‚ö\Ğ9\Õho÷îYw$E®=/t—\'=4\Éó¬\ëû:™PNôºÌ¨€?GRq’\ÃO5ö9Q/¦\ÙZ\"yFr6`)\Ë\Ïı\ã-T¤Q«d‘£K\è=™L9¹\ï+šBF)ô„eº\Ì6[%\ÛLªa¦dBµ†5ó\Ô\åã„‰\Ë4A´”ˆ³DI-Gù:,\Æw3òM*`û§\È\ãI÷ÁXHE)°›\Ú-Ày³® ‚§ŒS\íÓ™÷Dr\"l‡Œ©i\0}\ÎH\ÚC8„\×\ŞÀ›8‚w\ß\"\ä›LÉ„(MóËØ…G„³ô¼Œ*›\×ö\ÏXL\ÊøQ\ÌLÌ\ÑlLõ\0÷<\ÜÙ;\ÈE‚Š!bZ	aR®<ì¨Ëˆ\í“\Ø<¶K\Ğ\ï›><\Å(;O\ßIh‰\È\×÷¯¿|zkA4?J0Ü‚8aüd*\Ü|—À› |\Õ2Š·\ê‘i.‹¼«!*²q…\Çø\ÈDe¤	Qƒ‚vˆ\n\İo\á0¤#2MsG¨ª”ea÷\ë0“_«”[`x5•J×ºf³˜\\\åR«¶P\ÄM$Ê‡]Õº[÷•g\Ê>µ‚¨:mu\Ïìƒ•\ÓZ\n!>\0_D¶†˜:¶ªzÆ´®1F#cğ\ÈYŠ	`8„H\'\Ş<XôŞ¾NF\rx®tô¡™ ™MS\éøöñ\Í\ßR:\Z	™5@³w„~¨rX1­.”C9UŒ*³\á4È¥%t\Û\n\Ål5Q+¹p9¤ª,\Ğ\ÕB\ÚH£I/QYY¯lóôrHR6P¬D\ßn¶\Ö2À¤\É8õJ{\ã€â—F–\Æ1{÷¼qLÀ´\ëŒó3@¸;À¦>wúh\ØY›ñG9\\¼{uñ\á³\Õ\Ã\Â\Ù\ãQy\âó“û”5q\á \æ@\Ï}º+\ÔÚ¢*\ïS\Ô\Ñ[o9\Õ<-*‰ó÷\'y£ƒŒonrP½pş19\åTh,\èç„%õ+&Šc\Ô\âÁ­|\n•\ëÿ£b\ÃÖ»\ßPK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_rels/PK\0\0\0\0‡N\â@\"\"ı\0\0\0\á\0\0\0\0\0_rels/.rels­’\İJ1…\ï\ß!\Ì}7\Û*\"\ÒloD\èH}€!™\İ\r\İüLµ}{ƒ¸°®½ğr2g\Î|s\Èzstƒx¡”mğ\n–U\r‚¼\ÆúNÁó\îaq\"3zƒCğ¤\àD6\Í\å\Åú‰\ä2”{³(.>+\è™ã”Y÷\ä0W!’/6$‡\\\Ê\ÔÉˆz\ÉU]\ß\Èô\Óš‘§\Ø\Zik®A\ìN±lş\Û;´­\ÕtôÁ‘\ç‰r¬(Î˜:b¯!i>«‚ršfu>\Í\ï—JGŒ¥‰1•œÛ’\ì7Pay,\Ïù]1´<h|üT<tdò†\Ì<\Æ8GtõŸDú9¸y\Í’}\Ì\æ\rPK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0customXml/_rels/PK\0\0\0\0‡N\â@t?9z¼\0\0\0(\0\0\0\0\0customXml/_rels/item1.xml.rels…\ÏÁŠ1\à»\à;”Ü\Îx‘\éxY¼‰¸\àµt23\ÅiSš(úöO+,\ì1	ùş¤\İ?Â¬\î˜\ÙS4\ĞT5(ŒzG?\ç\ï\Õ‹½)¢\'2\ì»\å¢=\ál¥,ñ\ä«¢D60‰¤\Ö\ì&–+J\Ëd ¬”2:Ywµ#\êu]otşm@÷aªCo ú\Ôù™Jòÿ6\rƒwøE\î0\Ê\Ú\İX(\\\Â|Ì”¸\È6(¼`x·šª\Üºkõ\Ç\İPK\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/_rels/PK\0\0\0\0‡N\â@&J\ï\r\0\0»\0\0\0\0\0word/_rels/document.xml.rels­“\Íj\Ã0„ï…¾ƒ\Ø{-;mC)‘s)…\\‹½*òú‡Z’‘Ö¥~û.†8	÷\â‹`GhöÓ¬´\Ûÿ\ÚNü`ˆ­w\n²$\Îø²uµ‚\Ï\âı\áD$\íJ\İy‡\nFŒ°\Ï\ï\ïv\Øi\âC±iû(\Ø\ÅE\rQÿ*e4\rZß£\ã\Ê«‰\ËP\Ë^›o]£Ü¤\éV†KÈ¯<Å¡T\åD1ö\Üùo_U­Á7o‹n´•wT\èc‡lªC¤`–&y\âyM7\Ø#ø1KKOkB˜!’·_|\å9‰$‘³*[B›-\Ñ<®ICü^.f2•rZ6k2D$\â¡\Äs \'e)†lU\Z;ş_óD\âTŸ\ÚË«/—ÿPK\0\0\0\0‡N\â@ \ë\ç\ìx\0\0\0\0\0\0\0[Content_Types].xmlµ”;o\Â0…÷Jı‘\×*1t¨ªŠÀ\Ğ\Ç\Ø2P©«qnÀª_²o(üû\Ş\È\0()¥]\"%ö9\çÓ¹±G“µ\Ñ\É\nBT\Î\æl˜\rXVºB\ÙE\Î\Şg/\é=K\"\n[\í,\äl‘M\Æ\×W£\Ù\ÆCLHmcÎ–ˆşó(—`DÌœK+¥F ½†÷B~Šğ\ÛÁ\àKg,¦X{°ñ\è	JQiL\×ôyKBr–<n÷\ÕQ9\Şk%(¯WùI]\0;„+[Ğ¥;²Œ”y\\*ov	oTMP$SğU\âà²Š\èÌ‡\Ñ\\!˜ip>³n\Ş±®,•„\Â\É\ÊPYkZûA@¤k‚9µrq6ÔµP¤ş¼l\éœ¾\ï»VŸ\ØT~\æÉ²ş\åBÁ\Û9]:\çÚj–#1£³\Ö\Ùe»~»†£¤1sı‹\Ş:8i­{!le\æÿ\âAA´Ö½	!ş=\ÃŞ¹7\Zş ñ\íGºl7\Ï\Ë\ïŸ\ÆfÉ›\Ë}ü\rPK\0\0\0\0\0‡N\â@ \ë\ç\ìx\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\æ<\0\0[Content_Types].xmlPK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09\0\0_rels/PK\0\0\0\0\0‡N\â@\"\"ı\0\0\0\á\0\0\0\0\0\0\0\0\0\0 \0\0\0*9\0\0_rels/.relsPK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0­/\0\0customXml/PK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P:\0\0customXml/_rels/PK\0\0\0\0\0‡N\â@t?9z¼\0\0\0(\0\0\0\0\0\0\0\0\0\0 \0\0\0~:\0\0customXml/_rels/item1.xml.relsPK\0\0\0\0\0‡N\â@\ÔÁ\0\0\0T\0\0\0\0\0\0\0\0\0\0 \0\0\0\Õ/\0\0customXml/item1.xmlPK\0\0\0\0\0‡N\â@cC{E\å\0\0\0G\0\0\0\0\0\0\0\0\0\0 \0\0\0\Ç0\0\0customXml/itemProps1.xmlPK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0docProps/PK\0\0\0\0\0‡N\â@:O[\ÇX\0\0k\0\0\0\0\0\0\0\0\0\0 \0\0\0\'\0\0\0docProps/app.xmlPK\0\0\0\0\0‡N\â@\íÎ‹úR\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0­\0\0docProps/core.xmlPK\0\0\0\0\0‡N\â@2iş\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0.\0\0docProps/custom.xmlPK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]\0\0word/PK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0v;\0\0word/_rels/PK\0\0\0\0\0‡N\â@&J\ï\r\0\0»\0\0\0\0\0\0\0\0\0\0 \0\0\0Ÿ;\0\0word/_rels/document.xml.relsPK\0\0\0\0\0‡N\â@™]\Õ\çT\0\0ÿH\0\0\0\0\0\0\0\0\0\0 \0\0\0*\0\0word/document.xmlPK\0\0\0\0\0‡N\â@Q)\Ê6\0\0q\0\0\0\0\0\0\0\0\0\0 \0\0\0 5\0\0word/fontTable.xmlPK\0\0\0\0\0‡N\â@Š–ˆ‹\0\0w\0\0\0\0\0\0\0\0\0\0 \0\0\0\â1\0\0word/numbering.xmlPK\0\0\0\0\0‡N\â@µ\nE\Ğ\0\0\Ò	\0\0\0\0\0\0\0\0\0\0 \0\0\0\Ü\0\0word/settings.xmlPK\0\0\0\0\0‡N\â@X\í\'/\n\0\0™T\0\0\0\0\0\0\0\0\0\0 \0\0\0€\0\0word/styles.xmlPK\0\n\0\0\0\0\0‡N\â@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û\0\0word/theme/PK\0\0\0\0\0‡N\â@\ä¸Q\îó\0\0\'\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0word/theme/theme1.xmlPK\0\0\0\0\0\0Y\0\0>\0\0\0\0','BTQuaTrinh_1.docx',17406,'2021-04-03 13:19:00',1);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'2021-04-01 00:00:00',1,'2021-03-24 00:00:00',2,'CÃ´ng viá»‡c A',7,'2021-04-02 20:57:30'),(3,'2021-04-15 00:00:00',1,'2021-04-01 00:00:00',1,'CÃ´ng viá»‡c B',7,NULL),(4,'2021-04-24 00:00:00',1,'2021-04-04 00:00:00',1,'CÃ´ng viá»‡c D',6,NULL);
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
INSERT INTO `task_comment` VALUES (1,1),(1,2),(1,3),(4,4),(4,5),(1,6),(4,7),(4,8);
/*!40000 ALTER TABLE `task_comment` ENABLE KEYS */;
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
INSERT INTO `task_user` VALUES (1,6),(4,7),(4,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'1998-06-28','william123@gmail.com',1,'William',1,'Crowley','$2a$10$dCzUl6.ZaKFq.Wt5m8fJl.mAikp85qa.0lgqu.vC7Xb7GAiYPR40a'),(6,'2000-02-09','minhkhoi69@gmail.com',1,'Minh KhÃ´i',1,'HÃ ','$2a$10$eq2EFQtuc/7eQbXAEoLDROMasPlYmT3AGM6PTU2Ks9y2HCCWO4s9G'),(7,'2000-05-13','ducthang123@gmail.com',1,'Äá»©c Tháº¯ng',1,'Nguyá»…n','$2a$10$XhbTdg8vb8ATKUW2qI9xGuNlMD.OKDGBmw.Py/KIl7qvSEWDo2HHy'),(8,'2000-07-13','dangkhoa69@gmail.com',1,'ÄÄƒng Khoa',1,'Nguyá»…n','$2a$10$41hGl9FoTuDHK5Igxxfq0e0x36SX3OZAtGgAAGDMDD2wh1KqNw2fK'),(9,'2001-11-21','minhthu123@gmail.com',1,'Minh ThÆ°',0,'Tráº§n','$2a$10$0LlxswF277QuVAO1Wmd7NOKoB6CDgWqykTZHhuJ64mLeAxh.BmiDC');
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
INSERT INTO `user_role` VALUES (6,1),(7,1),(8,1),(9,1),(2,2);
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

-- Dump completed on 2021-04-03 16:52:36
