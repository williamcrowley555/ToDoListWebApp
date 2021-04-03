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
INSERT INTO `comment` VALUES (1,'hello','2021-04-03 14:01:50',7),(2,'Cố làm nhanh nhé','2021-04-03 14:13:31',7),(3,'Ok luôn bạn ơi!','2021-04-03 15:15:40',6),(4,'Có ai có ý kiến gì ko?','2021-04-03 15:50:24',6),(5,'Tạm thời thì không','2021-04-03 16:27:39',7),(6,'Tui mới up file lên đó, check thử đi!','2021-04-03 16:30:34',6),(7,'Thư thì sao?','2021-04-03 16:48:39',7),(8,'Tui cux ổn','2021-04-03 16:49:24',9);
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
INSERT INTO `document` VALUES (11,_binary 'PK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0docProps/PK\0\0\0\0�N\�@:O[\�X\0\0k\0\0\0\0\0docProps/app.xml���N\�0D\�H�C�{b\'�\�֨zBP�)=V��m,۲\rj��Tm�rۙ�\�O;�x\�\�\���Z\�\�,�q�J\�Z��,^W�\�!��\�\�V8��\�\�Gv}K�\rZ/\�E!B�Y\�xo��8\�`\�]\Z\�*lv\�v\�i�D\�vR\�_*OrJ\�<�\Z\�Ĝ\�!q�\��Zk\��\�h0�\n;\�r�\�\�i��\rX�=:�\�h[;F��\r�\\�p\"�)x�jx9!\��\�9ŝT\����\\�o��l\�[�@.F��\�֦\�\�=�i�\��m�oV��\0�r\�\�ܘV\n\�C\�l�\\E\�ul�,\�S�Nh�o\�\�M~�T&�ݤLno�:�gE�Т,n\��y92�P\�\nŗ��\�_m,\�Mϥ�PK\0\0\0\0�N\�@\�΋�R\0\0\0\0\0\0\0docProps/core.xml��QK\�0�\��C\�{��ec���დ�ŷ�ܵ�6\rI���ަ\�\�D|�9\'\�=ɽ\��\�\�����\�Q�⭐�\�\�\�v.P`S�խ��`Ѳ��ɸ��5�1�\�$\�` )K�\�Q圦[^A\�l48\� \�Z\�07��Ě�OVN�\�\�1쁡��\�|B꽩G�\�jh@9�\�(\�\�^��^�+g#]��7�\�^�?���h\�d\�.\�\�1Ɛ?\�\�맗�T��8�\"|lG�\�@��\�]����a�BEB�8$i��[\���|d�\�:\����5\�s�\��k��`S1\�ݓ\�\'S3\�\�\�w\�]_<n2��t�؜��\�8�\�MW/�\��6p�~��xl:�c�se�/PK\0\0\0\0�N\�@2i�\0\0\0\0\0\0\0\0docProps/custom.xml��\�j�0@���C\�>&FlG�Ug6]�\�\�\�%�3�y�D[)��f�>�]^\�\�p\�e\�w5�E:?\Z]�4!H͍�����=\�@\�C�E?-+�J��\�\r{v\�JF\�ATh_�s�\�\��T�O\"֑Ʃ>\�ѝ���\�\��YI0%\��\����\����\\\��\��K�?Vsk�-_��\�(*�\�\�m\�\�$GtW�(%i����GdCmh�/v�\�\�2�@�*�����b桙\�I��\�%��}��\�)\�2��	MHR��2�\��I���]?WPK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/PK\0\0\0\0�N\�@X\�\'/\n\0\0�T\0\0\0\0\0word/styles.xml�\\\�r\�6}ߪ��v<���q�&5\�\�z*�ĉ\�\�\"!�PHв��i4H��HP\�L\�-J�O\�}p��?��I�,�B\�l�;�E:V\�\�$||�\��!\n#�X$:���UᏟ������¼&��@V��\�$\\�<\�\�/��LE�N/eo\�u�\n/��T\�\�\�\�^�ӥ0j�e^��N\�ʌ��e��W&�R\�\�sc!\�z>W���Ԉ|^��\�Q�\�\� \�~.�Ag\�B-�\�ZʵM\\\�F�}�xN��s�]\�V:����dQ@L\�\�9�\n�5fO�5�:n\�5ߚ�\��\��\���\�q\�\�]S\�cG�]o\�,�3$��;�ο>e:�Rjux~�|�ut)\�LLa_\��y��z��uf�`u.�H�H40�*�u�9+T\�,\�?�\�HQ�υ�oF�iY��b\����~\�\�񆷐K�YSW��H����G�PO�Y9�\�\Z\�`\����\�\��=2�ҫ>8���Qq,m9V\��\�\�J\�P,��Ç\�᭎�\�xj�\�Z����\�K$�6���Ϛ\��\�H�֖�AѢ\���]�\�z�\�˂\���,��\�\�B\��m:GkG\�M�7q2\�\���&NǛ8o\��&>t�h簫�\n*�\�KO.�1\�\�\�\�tg�ӝ~Lw>�1\�	\�\�tG܏\��3\�\�Vy\�\�M\�p<7\�\�\�D\�r1\�M\�p7\�Q\�D\�p1�vU��$�\nřR=ϵ6�620�\�p�G\�\�E\�dG��U\�\�\�I�1��F�\��vF\�4/8�wZ\�Cc�a��s�T\�0�\�\Z\���2{�	\��ǀe�si`\�O\"n�!�s�ÚE�୔\�HT&��Lg\�H/\�\'���\�m�&�N��4;U\�I,\�H�1Z�J\�K\�[U\�d��/e�H\�=�\�7<�\�!Ã\�\�\�\�\�2<m���M����UHF+$��.֜vVHF;+$�����\�\�К�з(|P&��\�E�\�.)9�\�)0<3\�2׍�\�J=��x\�\�r؍\��ԩF�\�\�p�/�Q��\�\�\�*\�\Z\�I\�\�H\�\�H\�۝�}ZS\r;�\��\�Ψ��\�ӳ11-g��\�S��n\�IʻK\�\�!\�)w�r\�S\�n\�<�f\�\�6 \�\n_�\�F�5���k�\�*b;�\�D�6\�\�\�r�9L:��r\�Z\'�^\�؏&�\�ё]p���\�u�\�Si|c\�U�\\�B�ި�\0\�Ē�O`ߚ��=\�\�N�\�G���W\���.g�%9{�pw|�Yw��2��u2^(�n9��ij�(\�UkM[3\"�\'�:\��ˠ,syk/\�\�7����tI�.!\��\n^\�u&b���{R[�\�{ [kꢜ�!#ڄ	�Xl7\�\�׮�7P\� �JSr�H|5�˶\�\�5�\�r�\�3m\�V�W\':��	+D5�\�\�\Z\�j�N\�4+�^#�\�4b\��\��\�\�\�.\��\�U\�\�(rz	��.B �\�\�\��\�bG\�\�\r�\���6ד\�_��-�\\ �Gr\�@Nȉ#9qD \'�\�\���2��9��<�j�91m�9��+|�.\�G�J���T�J\� n\�8\�}�\��Ԍ\�zN.�k����\�t6\��Y\�kq=|C{|N7z�s�+�uZ\�Xx\�)��\r�!�\�׌^���v�Ԑ�ڌ��x\�ݩ�\�o\�\�\�Ӆg�d\��S\�^��o��\�ou\�����سup\'cU�u\����`\�\�N���S�Ƶ\'�U+P\�{\�\��&�y\�\�\r��}��g\��q�\����������U���{4k��\�|;O�p�5\��י�v�\�\�(y8�UpC1�	�\"n\�	_���O\�\�\�	[*|�X\�\�X_8ւ:�\��Me\�E�ر\\;k�����|\�k\"j{�\�\"s�\�Y\��\�\Z<\�{��؏%\�Y�\�\�,�#�vƒ�D�Q\�j@\�哢�\�{����Ԩ!\�1z\�\�S\�\�s_��\�\n.�/@\�c�\�����\�\�\�\r���1\"�\�F�śKDo.Y��Dd�f\�ěK\�S�F\�6ě\�\�ӆ��-\�\\\"�<4Dm�f\�ś��\�qä�.�/@\�\�\�e�EgCPǶ�#\�\�v�śKDo.Y��Dd�\��śIDo.	G��\\>mh4�-\�\\\"�<4Dm�f\�Ż\�뽡\�8�xsY|\�o.�/:}\�\�\�\�7��,\�\\\"�xs�\�\�\�%\"�7��,\�L\"�xsI8\�\�\��iC��m�\��\�!j�7��.\�=G,�a�\���-\�\\_t�ě\�\�o.Y��Dd�\��śKDo.Y��D4�\�pě\�\�ӆFS\�\�\�%�\�CC\�o&]�{���\�\�\�e�h[��,�\��7��#\�\\.�xs�\�\�\�%\"�7��,\�\\\"�x3�h\�\�%\�7�˧\r���śK䓇��-\�H��o��\�c\�xp�\��\�v&\���=��\�\�ͪ����_�\�/��?\\�\�<�[�}\�Vup��>�Z���>X\�\�Ƚ��@\�G�\���ȍ��\n��\�=\�}�kio^�;�jhEe\0.]�v���5k\�k\�-�_b[��.\�Eo\���D`\��\����W\�k\�&a�h׷A��\�gk�u�v�v��\�)����=a:\�;\�\�a��\�|}:\�E\�\�X\�L<n\��8i�Y�o9��S.�[pX6�ĥ�s!�\�N`���\�2C<�\�\�>~�ȹq\��\�n�?\�\�\��\�iY4\�e\0:�\�{i�\�\�\�7\�Ԡ���\\��C>3w��l\�\�\���G�+Na\���(�ZU�\'͋��:���\��\�$<;��>�G\�_L)��+| ���jy>�n\��&W��:pcueb\�;Q\���.��M�W\�튮��z�\�������z��U�_�\�oPK\0\0\0\0�N\�@��\nE\�\0\0\�	\0\0\0\0\0word/settings.xml�V\�n\�8}_`�Aо֑d;�+D)�޶�\�b�~\0%�l\"�$e\���I\�\�\�\r�-\�Ss\�ƙ3$/\�}\�,ڂ\�T�\"\�N\�8Qɚ�u�[�fq�\r5aR@\�@\�\�.��\�\�5�j:BB\�*\�1m�$�\�\0\'�D� l�\�\�\�Z\'����U��\�В2jv\�8M\�\���,\�N�|p1\�RR\�\�X�\\6\r�`�\�W\�z\�Yu�qs�Boh��7��\�7�\���Ml9z}���9l���\�[�Jz֠U���A��\�rB\�\�M6}\�h_\�,u\�c\'\��g�[2\�\���n�.\�\�R\�ی�Y�*��R��!��l\Z_\"��\�Q���*lR��qb\��ж�J\Z�l\�P�\�\�\"�А��;R��lQiK0\���\0W�He@�ZRae\�R%YЫ\�gi\�\�L���=Om~��GA8f\������N\�\��iq��\�2;}�y �3�h\r�5+�c��\�W��D��ӆ\�d86�F�%\0\�F��}�ka\�tX�?\�ub�h��JI�Q\�\�\�?�6\r(@��%҇*ٻ:\0R\�\����Ly,��uX�\'�	\�O\�\�l�60ު�\�Uv>~\���N�뛁8ϐ�z;��,\�\�1oo\'Y�\�C\�i:�̏!7Wg\�\�\�2��\��\�\�`�}�\��_\�\�_YG\����RQ-\�A�s\��R\�_S�p\�\�1�\�\�\0�FМ0��)�}�\�T�7\�8�lI\��\�w\�PG�54���\�\�_%�\�G\�i=9C�l:�Qan)rݕ�`%�0|u���U\�ar(O��Cݐ\��\\\01���|�͕���6��gk�4cje�^X��\��\r�\�uVČ�7&�f�j��\�G�\�\�a�e1�A*�Y\�V�/QkXd� �dx�x�\�Av\Zd�\�Y�\��\�7x�(F\�=��ai\�dL�P\�\"~!�E\�\��\�^8i2w\�D\re��L\�ៅ�\�NV\�ƾt��\�c\�\�u�ͭjd�E�4x\�m��`�\�ux�{\�(xK\�\���Y\�}�\�dg�m\��҂�\�@2�5\'\�iT��\�{�\�\�|z=ݣ���\�PK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/theme/PK\0\0\0\0�N\�@\�Q\��\0\0\'\0\0\0\0\0word/theme/theme1.xml\�YKo7�\�X콱d\�a�[������\"Gj�\�e\�].HʎnEr\�@��\�z\�(\Z�\Z�\�c�A�����)Q�>E싗�\��\�\��r}�\�ӄzǘ\�Ҷ_�Q�=�,$i\����m���(\re)n�3,�[��~r\�\�\'\��T젶K�\�ll�\0����2�»1\�	��ȣ����Ѝ\�J��� ��^�p{o<&��ʥ�;wޣ�J�\�\�5�,46�TB\�D�r\�Ѷ�\�d��JߣHHx\��+�\�\�ؽ��v\n#*\�\�\Zv}�S\�\�dS\�ɣQ9i�V�5�J�\Z@\�*�\�\�5z�ҟ� ��\�\\l�\�\�N��\Z��O�\�n��U�����\�{u�k\�5(�_[������נ__�\��[�]ۿ\��\�\n�Y\�\�֚�\r�)I\'+\�J��ՙ����=p\�[�Z��Y8_��\Z\�\�RS�Y*\�\�Z��0\��R$I\�\�Y�\�(�*\� JF�x�$���\�`d�χ�2�f�D�I&\���}��z�\�\�\�ק\��8}���\�o�w\�\�\0��i�\�\�o�}���\�\�?�{�]>�2^����~��Ͽ\�\�6�A\��Wo_�:�᛿y\��\�\�ȄI��w�xX\�ѱ�\���\�0FĴ\�K#�R�fq�\�\�\�Bߝ!��}l\��1qoO�X�1�J\��x\'N,\�ct�qg�0�i䞜OM\���]swPje�7\�@E�\�e\'\�\���E8\�\�S\�\�c\�\�b\����	6�\�c\�\�#\�ɐ��jZ��2s�|[�9z\�\�3\�Zu\�H\��:\�1�\�xM%J\\.�(�f���]$3�����\�S\��B,�\�\���\ZI�B\�N��%6�K2q�<D��\�.�tb�d.쀤���\\L�D�w�I��\�;D=CP�6ݏ�\�}�\Z<\r5)-\nD��rG.ocf\�\�`F\�k����;!\�2�\�p=2y�\�K\�\�m�c+\�g��\�=N��\�`I�\�ᖥ�\�xH>|e\�iz\�fXmO���0��{a^���_�\n\����[���\�\�1�t g\n}\�w\�>*;}�\�\�},�\�O��aq�m<\�\�Dƃep|��\�I$\nב�2&\�ڨ����N�#\�\�\�jU]1s�H.\�+�r�2G7���T\�^����wN@\�^��1�Mb\�A�9TA\�l���^ٵ�h9Xl+��T��\0jeV\�`\��q�\�\�k`FpoB�*Oy�\�\�\�ɼ\�L��U��QT�\"\�-\�u\��\�\��R�@�-F�\�$tdt1\nqQ�j�\"4.�\�\�\"�=�\"�\���X\\5\�`��\r45���\�I\�olաd���1\\\�\�\�$�\�\�@�h\��\��\reɸ�]$\�<\�Ztr5H�\�ܣ$i�j�e\Zh�5Ds�n� |�\�Z +\Z9H��d<\�@�i7FT��GP�\\+�o��\��ʒM!݃8<�Ft\� (�z��\�x�y4C�%K![\�\�Rc*d\��.�k(G4�Q\�QL1\�\�Z\�K:�����T�j��h��H5X3�V7-�F\�am\�=\�HE\�\�EϴTEuM��Y3\�\��R,�\�\�\rV�C�4;|.\�˒ۚk\�\�9�\��2~��{��`P[LfQS�WeXiv1j���ϡv�&a�~c\�v)ne�pN�W\��`�\\�04��+u���/\�1�\��.|̝R)r�Р\��\0PK\0\0\0\0�N\�@�]\�\�T\0\0�H\0\0\0\0\0word/document.xml\�\\I�\�Hr��ʀ1��)���\�z�\�%j��ˀ�����J:��|0|�a>�w\���?��#�R-\�U\�t\�\�\�7=.\�J23#####3#>\��=��\�Ql�\�M\�\ryS\�}-\�پyw���ok7�8Q��\��~ws\�㛟��\�?�<o\�-�t?)	?n\�vwc%I\� �X�tO�\�x�q`$o��#ð5�ȃhGPd�ĩ0\n4=��=Q�3%����>���mA\�)I�&�L\�S\"\'\ro�z�$�j�vr\�${%\�ݤ�߸0t{\��\�(���ֈ>\�\�3\�5�	\��Hw����-;|\�\�\�J\r�h]Y\�^\�D\�\�ryX�?h\�\�\�d���\�P<��\�3\�\��<��\Z߇Q}�\�7!����\��=c�[G��B�$ԋf F�d>\��E\�RX�5��	҉�4�g\'�?�Z\�w\�i���-8#\��+\�}\�RB���0\�8	���(�t�<���Ϳ�G��R% \�\�M\�\�\Z=\�\"Eu�oy�.\���&\�\�[�]j�;��a�8Ȑȉ%��a\�\�n�\�\r_��O;��h\�\r�l\�\�ݗ\�\�\�ϡM\�M�\�W]�l#~)Zؽ\�L?�v����W\�\�e\�\0ݰ���D��\'s\�<J	��!\�\n]%�/�1{x�m/t�I\0t!�0B�\�\�m\�J\�n(�²$U3�\�\�\�@j��h�^t\�UNA��|Qw]�{SR\\7\�ǰ*�J�^`\�\�)1������0�md���ͷ����\�7���:�F�\'oo\�$M\�\�\�0d�\�\�\��� �\��=��)f��\���+\�z��1WR\�Q^b\��\rNI��\��&i榤A�h�\�Rs\�n����� /H	\�\�\��\�\�\�B�0N�Ң\�M�С�:�&��\�V\�\���D]�\�FY�\�\�\�(\�$z��\�����\�Pŗe�a>\\\�\�\�n�\�\���&0�D�R�\�أ�9\\J��4V�}@c�\�ZH@\�WBz���ʠ\n��ш<\�\"X���Yi�j\\��Z�\�\0���ҸV�8\�\�WB����4Ri(\�0N���Ƶ��\�JrT�\���\�V\\\�\�\�rrru�2�\�G�\�O=\�c0Rn\�^�y؀��J�|�\'��]+ġ��\����\�=U�MR�0K��T\�$(\Z��&�6�\�\�J��\r�7�==.���4<\�/�\�\�k�{iS�\�/]�_��Q\0;w\�\�\�#�#XMȻ�I`0�y\�sz-L]d�~{y#>��O\����\rD�m�.��\���w�\�U]`2q\�\�x\�\�\�\�SZЫKO����\��\Z�$}�ſ�%�V�߿�e)�~�w_��V�	\Z�DT�,�&�\�U������Ɔ��ꆫ`�ƃ�ٷ\�\�\�\�E~�7\��Ϥ\�}�\�~\�\�?�K�T)%�_�A3�\�2�x�\�\�h\Z�\�l+�lw7!lp�(\�oޖ~T)����/\��\�9��~\��؅\'�\�L\0���ں����\��\�{\�t�u_����\�\�W�P2\�}���\�\��\�8�Nk\�\��)\r]\�d�����A	~4�ͯ\�\�W�\�(Y��5iŻ/�\�eL�\0Yi]-e6\�nK\�W�/*%%_\r\�\�}\�f臠8��\���\�\n�\��\��E�\��%��\\����Q+P8h\�\�~\�,5\nrX~@�\�Ծk\�zn��I֞?�}���I����om\�k�\����\�\�=\�j�n��9 ����\�M\�3�D!�|b\�\0�f�u�c�%\�nb\�\�F\��s{>8�\��F��@3�\"�s\�\'9��:\�)A\'c?\�\�i\��t�Z/\�D�\"x�{84_|\�s\09�ϸ\�\�O�ҍ{���\�Ɇ�mm�_�\�C\�\�\�\�\�\�5\�\��d��Ĕ\��\"�\�O�\�\n�4���\�[�\�bt�\�\�\�\�\�PT8O�����I��\���h\��-~�\�*o��wI6*d�\r\��;{\�\ZU���BϹ�K�G\�\�T\�\���t��q\��̋�[\\\��\�\�k���\����2nJ�z�s\�@�Gv�AZ��\�\�\��O�?\0�(\r\�8uъ���\�\�ƴS$\�[(�\��\�Ê0\��\�=��؝�}ޫ��AB�W�?��\n�?\��f��\�I;\���K5oI\r}+Q[\�$_q�$-�Y�\��v\�\��\�2\��(���s�5O\�\�J\�\�MU���ʯG�2^�2\�\�j�5�c8l\�S���UR�����8���?ҝ�����\�̹U٨\�B��`�3\"\��_�����WV=b�\��\�\�/\�S\�i�uuvTO\�[aG0M\�I����~Taz\�\�\�h�\ZGm\�+8���6:1ܑ\�vĪy]���\�ȓ\�\�\n�zd�����\�N��d\�\�\�f��C�\�o\�\�\�\�Z\r�nl\�g<M\�Y\�|�\�3G� \�uY|F�dHGQ �� �y/wW�\�-��RLP\�T\�h9\�$ΛCrB5k�ԮS\��n��\�\�dg\�6;�!9&�\�7\�/={f{ǘ��j�i�꬧�y(pFA���vRˎ\�՚+�\�\r\�\�\�j�L��F��m��v��\�#\�gd?��ը�6YF\��t�[si�\n\�S;=\�{يZ�|�=wÞB�,���g!^�\�@�\��q2U�h�{̼���\�џ\�\�rs2Fk\�Pk��C\�\ZW�#1\'V�V�\�\'�\��\�ݲ�Y\�|e\�Y�kM�\�f��ݱ㘦�\�Z}Ip\�\�\�^��l��\�l9\�\�g\�kk�8&�4�n⬗���ڭ:B4\�\�lS\�4յcV��ݛ�\��2\'�\�f���8t�Ǎ�9t\�MuZo=&ؔ.[\�\�\�3��\�`�\�1\��]\�;�=f��+f\�\�ry\�� �\�2��]!_u����	�r�.\�\�xfZ��\�C\��nk\�u��v,u\�S�t��|\�Z$Ƃ{�,5�3�	\�\�.c�\�69mژ c؀�mu�I�ar3�\�\�=��ƛ,9�ig���g�r�qq�۫:!�j�\�\�h$\\bD\��K@J\�3�:>kalk\�MF\��d\\Dd\\�<&�+�\\9\�6%��fO\�L�j�\�\�ы�M@\�YP\"v\��T/\�wܤ#%>[Ϥ�I�\�\�0*zm�	�{3�\�sRFr]W�|L�B>\�\��d.�\�p\�ܢ�i��Sz߫M\�g)M�\�\�[I��lm�ҩ���6G�\�D\�\�B\Z\Z�Y���\�]+\'�\n��$�Y�m��a\�\�&9�@d�d|$(\�a��N�X9��g1K̡�m\�}\��FiKMʹ;䕚�+n+U�e,\�D�5t�\�\�4-�@�X��V�@\�ra*\�R�\r\"\�y�\�-���]�U��^\�S� AJP�T=\�u�\�]_\�k�\�*d����ms�u���ʣ�P�6\�<J\n���\�h6�LmәMZA\�]WR:\�\�m\�Y����\";\�\\U8w��|C5F��Ք\�\��0ȼr�ZL0��oI{�Ν@w���EdX\'�ɰ=P\�~���0��nS\�\�\"S#���c�\�9wIљ�M�]�S;m\�b!0�\�6\�m����ߒ֔3`&}�\�u\�a�4\�����feۜ��^6n:!\�\�A:�\�suן��!\Zg��\Z&��\�\��\�4�&�x3\�O�Q\�\��0\'|��6\��D+%>�y�\Zdz��\�h����xR5j)%��1�\�T\�����0Ec\�\��\�,��ta\�\���\��s�Y\\-(W��F\�\��>\Z=X�ޚ�\"�zpa\r(��\�Gi4�x���V<�z\�r)ڝM�DU�S\�\��.וK�	\\\Z�1��S�X��Õ\�7ؒ<���G��wu�鸋�L󔡎�7���kM:��\�C�g�.Š����\�-*5�`Ǆn�\���\�$Z�1w\�y?�u\�{Lo���0-�\r��÷Tx[<�\�n:k�]^	�v`kg\0P4hkG��S�F�����hPְ=\�8��l�;A;Z\�\�\Z(\Z\\\�P�\�\�F\�\�\�M\�D`�A4\�q�\��[Pk�����k\��6��\�k\�^�XpZ~\rb}\�\�\� �~�\��>\�\� \�\��Q\�9\�\0��q��\�\� ַE��*i�}�8�A�?6�ا�I�A�o�� ��a�>�E��X\�p\�E�\�A\�\�C�6ZQ�n\�\�\��>���S,���ஐ�\nü��\�D�\�\��}KC�\�E\�/�+U�e \"	\nh�\�\�\��=GޒR>{;�Aܯ�m�C��&\�t\��\� \�\�c��e~@7?`��w/o\�\�Q\�\�\�\0�\�V#�4D� d�k�=Gh\�O\�QD9W\\�\�\�\�\��#\�.\�{g\�\��.���e\n��O�_�w\�ˉp��ەFi��C=�j\'2\0\��F�\�KxQ����R�|T�D\�����R\\�\�w��\�\�oX�� *z\����<Q!�7\�\�\�	�d~�\�\"7�m!��g\�vn���\0*���M\'BQ�\�ˀ��\"kN�\�\�Cb3����#��\�ݰ\�J]\Z<{^�\�\� ��\"��\��\�U����ק6J\�Xo\n�A8\����\�9\�DscJ�v�\0\�\�\�M\�����\�\�\�W�{ΔU�-[B��-o�rb�<�\�\�U\�&]Sơ\�O����K94\��d��/���u\�Q��1�Sj\���\�\�\��M\�l���\rq��hK\��I/\�@N���;��\\\�gK�\\�\�Y�빲`�\�ڟ\�q��)d|�ȫ�\�,\�l\�\�*���_�x���>�(\�\�\�y!E\\�(\"r�� \n\�Y�5���~�\�_j\�.d(�yes�/:~0_�BaՌ\�\�.TkU���j\�lT�\ZQ�\��Y���NO\�&U�\�\�8�O\�b�\�3ۦ\�2`{�D\�\�v�ڳyk��\��>�\0��أ^{:\�i\0 �#Q$\Z{����	O�xi�:\�.S�c;[L��I�;i\�X�-�ۭ�\�\�bx7\�օ�,\��Ԥ����\�\�WS\��-\�Н��2\��L���q1�M�>\�UE\�j\�\�o����\'�L��\�7�2t\�D\��]Y �\�Ƭ�\�J_�h�2�\�\�b�:�\�lU ���Et-jݣf�z����\r�\��lϗ�tyX.�U-bBh�@�����\�f\�0�P�\�5���a_��p�I\�SՎo֔\�\n\�\�\�sx\�ܦ\�^�\�\�t�\�qJ��q8���1�.\�Pa։GF�6\ncZ.\�\�(\�;�\�\\#��Kv\�y�}\�:���GJ\�(�\�l&1\�J-#b\���\�\�^\"��]\�j\�?����\�k���\�]LБڇ�\�KVZnf�\�\�Xw��h\�\�vyOv��77�\')+rs����\�lsk\�TP,\�qB��mG[fg1&���\�s�}�˗\�k�.\r�ҹd:3�j�iK��\�K%�x�9v���#���Ւ��\�[;޵�yR��\�w�I\�?\Zf�ٍ�2e�����\����\��4-�\�Ȑ\�]b3�^��\�>x\�&J�x�1�=K\�\�,��X��t\�_款\�.�s�ٙۧɲl\�\�h_\�e�u\"x~g��ۛh�쵅\�F��4U�!�+�(3F\�,\�k��\�\�i\�,\�c��tf\�zU�{j\�\0T �^_�Ĥ��\�hb���lS�X_�.\�+i\�F��2\�\�2�+m���ߌ�3�\�\�t4�\����r\�vZ�5~z��{Q�\�&\�(J9��ꌮŋ�@;>%n+�\�q>�\�rǗӽ \�%c:�,,;���p6\�[�	����\�Sm�	\re\Z95��\�+:�\��P:�;z�tFR\�v�\��\�ed\�{;�\�H�ypk�Zy\�\��#\'/j�\�=�v��	\�I��\�\'�m�\'\�]͍\�\�G%\�ù���͡N�\�c�(c��\�Ď8q\��d�Y1\�\Z�\�\�\�\�.h��u��\�w,�,\�-\��\0��\�6a\�pCH@D�5\�:��@\�\��B/Xl�\��\����dq]�N4\�c\��/\�;�Wr\��\�C�}\0�\�އ �\'\�u���U\�XODuP\��mtǀQj�\�(@g�75t\���\�HܙI;\"�E #J\�?\\\�AAb(��7�u���\�B\0��_!xG�V������(^��\��\�\���;rh�V8Xr\��)�/�s\0�35�\�\��)�1�\"~\�\���\�\�\Z�=|0MI� �aPc��WZ��\��Q\r����l�x�t~\�\�\�*�7� �C����&���q\r�Чܗ\�I/U\0\�\n~\�\�:���sG߱O\�D�NTY\�\�R\"���\\�\�\�G? $�/��?PK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0customXml/PK\0\0\0\0�N\�@\���\0\0\0T\0\0\0\0\0customXml/item1.xml���j�@�\�2��j!q͡�\�[h\�sX\�5\nqfq\�j޾�$��^:Ǚ����|7u�\�{n	\r$Qʣ��ų�\�\�\�\��\�\�^���g\��9gn`���b\�,A6Ј�L\�q�1p\�PS]�Η\�Σ\�4N��<z����\�?\�\"_�8x\'���n\�\"\���:\�O�	\�X�\�\�VNS<׉�8݀?\�����VΛB��Q|PK\0\0\0\0�N\�@cC{E\�\0\0\0G\0\0\0\0\0customXml/itemProps1.xmle�Qk�0�\��r\�5F\�\�b,�N\�\�\�`�!^ۀI\�\�\�1�\�7t}��{�\�9�\�]\�\\p�\�h4�!@-L\'���\�kX\�u\����Z\�ՏUg�w\�:3\�ѡ\n�B�yl|\�i�\�mބI�\�\�M\\а�\�!L�fC��,k\�\���=\�28;7n	�⌊\�Ȍ��ٛIq\�\�t\"�\��ƈY�v$�\�\'\"f�\�\�\0�\�\���{{+\�j�$�R�e��\�FB\�SiJ�u�7�? uE��W}�{�\rPK\0\0\0\0�N\�@�����\0\0w\0\0\0\0\0word/numbering.xml\�Y\�n�0���w��z\�p94jZU\�2u��I\��\'�\��M\�\�\�Y�h{���@H�Ph\�\����ϧz}�\�ho��\"�\�,�\�X=\���Y�����4\�!��\����u{��\��n\�c�\�{���\�.\nf\�F\�hj\�*\�`�T��@\n%V�f�Պ\�\�	ڞ\�:ɯH�\0+y\�\�\"e\�ӱ\�l\"\�\�Z	ɐV}!\�6C�9�.!{�4YJ�+\�vFY\Z1�bɧ��.�L\�4-h�\�\"\�	��q\�ȹb��NF�%�P�\�jC���\�\0\�&+i[b\�h淋\\�d��{\�`.\��\��$]	a\Z\�hʃ�\�ì�\�\�:U`�3bR\�5���\�1�J\"<OS��\"��%��\�R\�Q^ND�e{\�\�y.�3?P�3Jv^��P����s�\"l�X0}Xs!ђBE;\�\�i\��i��JK\�\�1\��\�$.\\�l[D�\�\��j8X,\���j򈷘>�F8�Iz�\�M�4�hf;��[c �0c�O\r��\��Lǆ3N\�,\�M���`y\�2�\�\����Kn���O\��-ȲP�ڻG?�A�����\�\Z��	{�Ic<	7��D�\Z\�\�\�\�<e\���2E.\�\�xa!^!`πF* �\�\�$Apb�\�0��Ӂ�P\0\04�ys;˛\��\�E\��9��:˜\�拨��\�|N\�\�en2�Zs�1��9��\���U\�\\b>\'s\�\�2\�*/�\�|N\�@sw�f:�7Db>\'s\�\�27��!�\�|N\�\����kn\�W\����2����+4��Bˈr�D�����\�\��S��qQ~_�uEy�\�@\�&o	oT��\�\��ϥ\�ە\�T\�|\�Zc�#+��\\x� n��\�1\���3<hoC\\���t�\�뷃��v-\�[WpV\�����\�,\�[W&V\�����N,\�[W\�U\������+\�[W�U❴���&+\�[WHU\�joC%�\�gA\���@��߃\�)x<�oo\�\�Hs\�B8x��yo�nψYX�L�ar�PK\0\0\0\0�N\�@Q)\�6\0\0q\0\0\0\0\0word/fontTable.xmlݖ\�n\�0\�\�x�\��[�,[�jݴ�U ��\�\�\�M\�\�\"�#;]\�# �\�\0B�h\�-8��-m���qզ=�O\�_�\�\�;{/y\�Q��=�c\�Q�\�!\�zz\�_���s\"�$���\�9\�ho�Yw$E�=/t�\'=4\��\��:�PN��̨�?GRq�\�O5�9Q/�\�Z\"yFr6`)\�\��\�-T�Q�d��K\�=�L9�\�+�BF)�e�\�6[%\�L�a�dB��5�\�\�ㄉ\�4A����DI-G�:,\�w3�M*`���\�\�I��XHE)��\�-�y�� ���S\�ә�Dr\"l���i\0}\�H\�C8�\�\���8�w\�\"\�LɄ(M�ˎ؅G�����*�\��\�X�L\��Q\�L̍\�lL�\0�<\�ُ;\�E��!bZ	aR��<쨍ˈ\�\�<�K\�\�>�<\�(;O\�Ih�\�\����|zkA�4?J0܂8a�d*\�|����|\�2��\��i.���!*�q�\��\�De�	Q��v�\n\�o\�0�#2MsG���ea�\�0�_��[`x�5�J׺f��\\\�R��P\�M$ʇ]պ[��g\�>���:mu\�샕\�Z\n!>\0_D���:��zƴ�1F#c��\�Y�	`8�H\'\�<X�޾NF\rx�t�����MS\����\�\�R:\Z	�5@��w�~�rX1�.�C9U�*�\�4ȥ%t\�\n\�l5Q+�p9��,\�\�B\�H�I/QYY�l��rHR6P��D\�n�\�2��\�8�J{\�◍F��\�1{��qL��\��3@�;��>w�h\�Y��G9\\�{u�\�\�\�\�\�\�Qy\����5q\�\�@\�}��+\�ڢ*\�S\�\�[o9\�<-*�����\'y���onrP�p�19\�Th,\�焎%�+&�c\�\���|\n�\����b\�ֻ\�PK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_rels/PK\0\0\0\0�N\�@\"\"�\0\0\0\�\0\0\0\0\0_rels/.rels��\�J1�\�\�!\�}7\�*\"\�loD\�H}�!�\�\r\���L�}{������r2g\�|s\�zst�x��m�\n�U\r��\��N��\�aq\"3z�C�\�D6\�\�\���\�2�{�(.>+\�㝔Y�\�0W!�/�6$�\\\�\�Ɉz�\�U]\�\��\����\�\Zik�A\�N�l�\�;��\�t���\�r�(Θ:b�!i>��r�fu>\�\�JG���1��ے\�7Pay,\��]1�<h|�T<td�\�<\�8Gt��D��9�y�\��}\�\�\rPK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0customXml/_rels/PK\0\0\0\0�N\�@t?9z�\0\0\0(\0\0\0\0\0customXml/_rels/item1.xml.rels�\���1\�\�;�ܝ\�x�\�xY���\�t23\�iS�(��O+,\�1	���\�?¬\�\�S4\�T5(��zG?\�\�\�����)��\'2\�\�=\�l�,�\���D60���\�\�&�+J\�d���2�:Yw�#\�u]ot�m@�a�Co �\���J��6\r�w�E\�0\�\�\�X(\\\�|̔�\�6�(�`x���\��k�\�\�PK\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/_rels/PK\0\0\0\0�N\�@&J\�\r\0\0�\0\0\0\0\0word/_rels/document.xml.rels��\�j\�0��\�{-;mC)�s)�\\��*���Z��֥~�.�8	�\�`Gh�Ӭ�\��\�N�`��w\n�$�\���u��\�\��\�D$\�J\�y�\nF��\�\�\�v\�i\�C�i�(\�\�E\rQ�*e4\rZߣ\�\���\�P\�^�o]�ܤ\�V�Kȯ<šT\�D1�\��o_U��7o��n���wT\�c�l�C��`�&y\�yM7\�#�1KKOkB�!��_|\�9�$��*[B�-\�<�IC�^.f2�rZ6k2D$\�\�s \'e)�lU\Z;�_�D\�T�\�˫/��PK\0\0\0\0�N\�@�\�\�\�x\0\0\0\0\0\0\0[Content_Types].xml��;o\�0��J��\�*1t����\�\�\�2P��qn��_�o(��\�\�\0()�]\"%�9\�ӹ�G��\�\�\nBT\�\�l�\rXV�B\�E\�\�g/\�=K\"\n[\�,\�l�M\�\�W�\�\�CLHmcΖ����(�`D̜K+�F ���B~��\��\��Kg,�X{��\�	JQiL�\��yKBr�<n�\�Q9\�k%(�W�I]\0;�+[Х;����y\\*ov	oTMP$S�U\�ಊ\�̇\�\\!�ip>�n\���,��\�\�\�PYkZ�A@��k�9�rq6ԵP���l\���\�V��\�T~\�ɲ�\�B�\�9]:\�ڍj�#1��\�\�e�~����1s��\�:8i�{!le\��\�AA�ֽ	!�=\�޹7\Z���\�G�l�7\�\�\�\�fɛ\�}�\rPK\0\0\0\0\0�N\�@�\�\�\�x\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\�<\0\0[Content_Types].xmlPK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09\0\0_rels/PK\0\0\0\0\0�N\�@\"\"�\0\0\0\�\0\0\0\0\0\0\0\0\0\0 \0\0\0*9\0\0_rels/.relsPK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0�/\0\0customXml/PK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P:\0\0customXml/_rels/PK\0\0\0\0\0�N\�@t?9z�\0\0\0(\0\0\0\0\0\0\0\0\0\0 \0\0\0~:\0\0customXml/_rels/item1.xml.relsPK\0\0\0\0\0�N\�@\���\0\0\0T\0\0\0\0\0\0\0\0\0\0 \0\0\0\�/\0\0customXml/item1.xmlPK\0\0\0\0\0�N\�@cC{E\�\0\0\0G\0\0\0\0\0\0\0\0\0\0 \0\0\0\�0\0\0customXml/itemProps1.xmlPK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0docProps/PK\0\0\0\0\0�N\�@:O[\�X\0\0k\0\0\0\0\0\0\0\0\0\0 \0\0\0\'\0\0\0docProps/app.xmlPK\0\0\0\0\0�N\�@\�΋�R\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0�\0\0docProps/core.xmlPK\0\0\0\0\0�N\�@2i�\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0.\0\0docProps/custom.xmlPK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]\0\0word/PK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0v;\0\0word/_rels/PK\0\0\0\0\0�N\�@&J\�\r\0\0�\0\0\0\0\0\0\0\0\0\0 \0\0\0�;\0\0word/_rels/document.xml.relsPK\0\0\0\0\0�N\�@�]\�\�T\0\0�H\0\0\0\0\0\0\0\0\0\0 \0\0\0*\0\0word/document.xmlPK\0\0\0\0\0�N\�@Q)\�6\0\0q\0\0\0\0\0\0\0\0\0\0 \0\0\0�5\0\0word/fontTable.xmlPK\0\0\0\0\0�N\�@�����\0\0w\0\0\0\0\0\0\0\0\0\0 \0\0\0\�1\0\0word/numbering.xmlPK\0\0\0\0\0�N\�@��\nE\�\0\0\�	\0\0\0\0\0\0\0\0\0\0 \0\0\0\�\0\0word/settings.xmlPK\0\0\0\0\0�N\�@X\�\'/\n\0\0�T\0\0\0\0\0\0\0\0\0\0 \0\0\0�\0\0word/styles.xmlPK\0\n\0\0\0\0\0�N\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0word/theme/PK\0\0\0\0\0�N\�@\�Q\��\0\0\'\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0word/theme/theme1.xmlPK\0\0\0\0\0\0Y\0\0�>\0\0\0\0','BTQuaTrinh_1.docx',17406,'2021-04-03 13:19:00',1);
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
INSERT INTO `role` VALUES (1,'Nhân viên','ROLE_USER'),(2,'Giám đốc','ROLE_ADMIN'),(3,'Quản lý','ROLE_MANAGER');
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
INSERT INTO `task` VALUES (1,'2021-04-01 00:00:00',1,'2021-03-24 00:00:00',2,'Công việc A',7,'2021-04-02 20:57:30'),(3,'2021-04-15 00:00:00',1,'2021-04-01 00:00:00',1,'Công việc B',7,NULL),(4,'2021-04-24 00:00:00',1,'2021-04-04 00:00:00',1,'Công việc D',6,NULL);
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
INSERT INTO `user` VALUES (2,'1998-06-28','william123@gmail.com',1,'William',1,'Crowley','$2a$10$dCzUl6.ZaKFq.Wt5m8fJl.mAikp85qa.0lgqu.vC7Xb7GAiYPR40a'),(6,'2000-02-09','minhkhoi69@gmail.com',1,'Minh Khôi',1,'Hà','$2a$10$eq2EFQtuc/7eQbXAEoLDROMasPlYmT3AGM6PTU2Ks9y2HCCWO4s9G'),(7,'2000-05-13','ducthang123@gmail.com',1,'Đức Thắng',1,'Nguyễn','$2a$10$XhbTdg8vb8ATKUW2qI9xGuNlMD.OKDGBmw.Py/KIl7qvSEWDo2HHy'),(8,'2000-07-13','dangkhoa69@gmail.com',1,'Đăng Khoa',1,'Nguyễn','$2a$10$41hGl9FoTuDHK5Igxxfq0e0x36SX3OZAtGgAAGDMDD2wh1KqNw2fK'),(9,'2001-11-21','minhthu123@gmail.com',1,'Minh Thư',0,'Trần','$2a$10$0LlxswF277QuVAO1Wmd7NOKoB6CDgWqykTZHhuJ64mLeAxh.BmiDC');
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
