-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `tbl_sample`
--

DROP TABLE IF EXISTS `tbl_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sample` (
  `순번` int DEFAULT NULL,
  `행정구역` text,
  `지사` text,
  `시설명` text,
  `우편번호` int DEFAULT NULL,
  `주소` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sample`
--

LOCK TABLES `tbl_sample` WRITE;
/*!40000 ALTER TABLE `tbl_sample` DISABLE KEYS */;
INSERT INTO `tbl_sample` VALUES (1,'부산 사하구','부산광역본부','(주)진원에너지',49505,'부산광역시 사하구 다대로 722 (다대동)'),(2,'강원 원주시','강원광역본부','원주천연가스버스충전소',26505,'강원특별자치도 원주시 치악로 1307 (관설동) '),(3,'전북 군산시','전북본부','대흥산업가스(주)',54161,'전북특별자치도 군산시 공항로 161 (산북동) '),(4,'전북 완주군','전북본부','현대자동차(주) 전주공장CNG제2충전소',55322,'전북특별자치도 완주군 봉동읍 완주산단5로 163'),(5,'울산 남구','울산본부','삼산CNG충전소',44714,'울산광역시 남구 산업로 686 '),(6,'대전 동구','대전광역본부','블루에너지서비스(주)대전지사',34709,'대전광역시 동구 금산로 471 (구도동)'),(7,'경기 부천시 원미구','경기서부지사','신길천연가스(주)',14599,'경기도 부천시 원미구 부일로 158 신길운수'),(8,'경기 시흥시','경기서부지사','주식회사 스카이비(오이도)',15014,'경기도 시흥시 서해안로 81-30 경원여객내'),(9,'인천 남동구','인천본부','서창공영차고지CNG충전소',21610,'인천광역시 남동구 서창방산로 136'),(10,'경기 광주시','경기동부지사','(주)대원고속 광주씨엔지충전소',12739,'경기도 광주시 광주대로 171 (송정동)'),(11,'부산 강서구','부산광역본부','(주)항만엘엔지 HPNT LNG충전소',46767,'부산광역시 강서구 신항남로 454'),(12,'부산 영도구','부산광역본부','태종CNG',49126,'부산광역시 영도구 태종로 810 (동삼동) '),(13,'강원 춘천시','강원광역본부','이오젠CNG충전소',24232,'강원특별자치도 춘천시 공단로 86  '),(14,'충북 청주시 흥덕구','충북본부','(주)대성티앤이비하CNG충전소',28360,'충청북도 청주시 흥덕구 직지대로240번길 84'),(15,'전북 전주시 덕진구','전북본부','(유)호남고속팔복CNG충전소',54845,'전북특별자치도 전주시 덕진구 신복천변로 32 (팔복동1가) '),(16,'전북 군산시','전북본부','군산도시가스(주)신관CNG충전소',54157,'전북특별자치도 군산시 대학로 674 (신관동)'),(17,'전북 완주군','전북본부','현대자동차(주)전주공장 CNG제1충전소',55322,'전북특별자치도 완주군 봉동읍 완주산단5로 163'),(18,'전북 전주시 덕진구','전북본부','(유)전일여객덕진CNG충전소',54840,'전북특별자치도 전주시 덕진구 기린대로 616 (덕진동2가)'),(19,'서울 송파구','서울광역본부','코원에너지서비스(주)위례충전소',5844,'서울특별시 송파구 헌릉로 869 일원 (위례택지개발지구 차1블럭)'),(20,'서울 서초구','서울광역본부','주식회사 우신씨엔지',6761,'서울특별시 서초구 과천대로 802'),(21,'경기 평택시','경기광역본부','용이CNG충전소',17870,'경기도 평택시 이화로 89'),(22,'경남 창원시 진해구','경남본부','(주)항만엘엔지_한진터미널',51609,'경상남도 창원시 진해구 신항로 434 (안골동)'),(23,'경북 칠곡군','대구광역본부','대성에너지(주)동명CNG충전소',39858,'경상북도 칠곡군 동명면 금암동석4길 11'),(24,'대구 서구','대구광역본부','대성에너지(주) 상리CNG충전소',41700,'대구광역시 서구 가르뱅이로10길 31'),(25,'광주 동구','광주광역본부','(주)해양에너지 월남 CNG충전소',61513,'광주광역시 동구 남문로 333'),(26,'광주 광산구','광주광역본부','(주)해양에너지 광산 CNG충전소',62455,'광주광역시 광산구 동곡로 324'),(27,'울산 울주군','울산본부','덕하공영차고지CNG충전소',44990,'울산광역시 울주군 청량읍 온산로 545'),(28,'대전 유성구','대전광역본부','씨엔씨티에너지(주)(원내CNG충전소)',34229,'대전광역시 유성구 계백로801번길 1'),(29,'대전 대덕구','대전광역본부','씨엔씨티에너지(주)(신대CNG충전소)',34357,'대전광역시 대덕구 신탄진로315번길 72 시내버스공영차고지내'),(30,'경기 포천시','경기북부지사','(주)대원운수 내촌CNG충전소',11192,'경기도 포천시 내촌면 음고개길 9-28 '),(31,'경기 남양주시','경기북부지사','천호에너지(주)태능지점CNG충전소',12100,'경기도 남양주시 불암산로 20 (별내동) '),(32,'충남 천안시 서북구','충남본부','(유)도솔공영에너지-성성동CNG충전소',31078,'충청남도 천안시 서북구 공단로 78-15'),(33,'서울 관악구','서울남부지사','엘티씨엔지(주)신림동CNG충전소',8839,'서울특별시 관악구 신림로 98'),(34,'서울 강서구','서울남부지사','서울씨엔지(주)강서Clean Station',7505,'서울특별시 강서구 개화동로8길 17(공용차고지)'),(35,'서울 노원구','서울동부지사','흥안에너지CNG충전소',1691,'서울특별시 노원구 노원로 487'),(36,'서울 도봉구','서울동부지사','강북씨앤지주식회사',1365,'서울특별시 도봉구 삼양로 620'),(37,'서울 도봉구','서울동부지사','(주)대륜이엔에스도봉공영CNG충전소',1301,'서울특별시 도봉구 도봉로 961 도봉권역공영차고지'),(38,'경기 부천시 오정구','경기서부지사','고강공영차고지 CNG충전소',14404,'경기도 부천시 오정구 봉오대로556번길 26'),(39,'인천 부평구','인천본부','강인산업(주)',21448,'인천광역시 부평구 백범로 570'),(40,'인천 연수구','인천본부','인천교통공사 송도CNG충전소',22014,'인천광역시 연수구 아카데미로51번길  42'),(41,'경기 하남시','경기동부지사','하남BRT CNG충전소',13023,'경기도 하남시 창우로 146'),(42,'경기 파주시','경기중부지사','주식회사 용성에너지',10867,'경기도 파주시 교하로 1358'),(43,'부산 남구','부산광역본부','(주)항만엘엔지 BPT 감만 LNG 충전소',48481,'부산광역시 남구 북항로 105 (감만동)'),(44,'강원 원주시','강원광역본부','장양리고정식CNG충전소',26307,'강원특별자치도 원주시 소초면 북원로 3118-1'),(45,'충북 청주시 상당구','충북본부','(주)대성티앤이용정CNG충전소',28749,'충청북도 청주시 상당구 영운천로203번길 18'),(46,'전북 익산시','전북본부','전북에너지서비스(주) 송학동CNG충전소',54670,'전북특별자치도 익산시 평동로 382 (송학동)'),(47,'경기 화성시','경기광역본부','(주)경기고속 안녕동CNG충전소',18364,'경기도 화성시 안녕남로 111'),(48,'경기 오산시','경기광역본부','(주)삼천리오산세교CNG충전소',18102,'경기도 오산시 독산성로 313'),(49,'경남 김해시','경남본부','(주)가야에너지 CNG충전소',50937,'경상남도 김해시 호계로 374'),(50,'경남 창원시 진해구','경남본부','경남에너지(주)진해CNG충전소',51656,'경상남도 창원시 진해구 천자로 83'),(51,'경남 김해시','경남본부','경남에너지(주)김해CNG충전소',50853,'경상남도 김해시 한림면 김해대로 1611'),(52,'경북 경산시','대구광역본부','대성에너지(주)경산CNG충전소',38577,'경상북도 경산시 원효로 456'),(53,'서울 은평구','서울서부지사','서울씨엔지(주) 은평CNG충전소',3486,'서울특별시 은평구 수색로24길 19'),(54,'강원 동해시','강원영동지사','블루에너지서비스(주)동해지사',25707,'강원특별자치도 동해시 동해대로 6060'),(55,'울산 울주군','울산본부','언양CNG충전소',44954,'울산광역시 울주군 삼남면 신화리로 148'),(56,'경기 남양주시','경기북부지사','(주)대원운수(진벌리CNG충전소)',12021,'경기도 남양주시 진접읍 경복대로 497 '),(57,'서울 도봉구','서울동부지사','아진교통(주)아진CNG충전소',1300,'서울특별시 도봉구 도봉산길 50'),(58,'서울 노원구','서울동부지사','흥안에너지(주)월계CNG충전소',1884,'서울특별시 노원구 월계로 280'),(59,'부산 금정구','부산북부지사','금정공영차고지사업부 CNG충전소',46202,'부산광역시 금정구 중앙대로 2310 (노포동)'),(60,'부산 기장군','부산북부지사','동부산공영차고지사업부 CNG충전소',46075,'부산광역시 기장군 기장읍 기장대로 313'),(61,'경기 안산시 단원구','경기서부지사','(주)스카이비(성곡동)CNG충전소',15409,'경기도 안산시 단원구 신원로 138'),(62,'경기 광명시','경기서부지사','(주)삼천리광명소하CNG충전소',14333,'경기도 광명시 오리로 273'),(63,'경기 시흥시','경기서부지사','주식회사 스카이비 (정왕동)',15082,'경기도 시흥시 희망공원로 276'),(64,'경기 부천시 오정구','경기서부지사','(주)삼천리이엔지 오정CNG충전소',14400,'경기도 부천시 오정구 벌말로 43'),(65,'경기 시흥시','경기서부지사','주식회사 시흥교통(방산 공영차고지 CNG충전소)',14954,'경기도 시흥시 청룡저수지길 366 방산버스공영차고지'),(66,'경남 진주시','경남서부지사','진양호씨엔지충전소',52648,'경상남도 진주시 진양호로 1(판문동)'),(67,'경기 성남시 분당구','경기동부지사','성남천연가스(주)',13509,'경기도 성남시 분당구 판교로 776 (야탑동)'),(68,'부산 강서구','부산광역본부','(주)항만엘엔지 PNIT LNG 충전소',46767,'부산광역시 강서구 신항남로 330 (성북동)'),(69,'부산 남구','부산광역본부','(주)항만엘엔지 BPT 신선LNG충전소',48562,'부산광역시 남구 신선로 294 (용당동)'),(70,'부산 강서구','부산광역본부','강서공영차고지사업부CNG충전소',46733,'부산광역시 강서구 녹산화전로 117 (화전동) '),(71,'부산 남구','부산광역본부','(주)신선에너지 신선대CNG충전소',48560,'부산광역시 남구 신선로 306 (용당동)'),(72,'전북 전주시 완산구','전북본부','(유)제일씨엔지에너지평화동CNG충전소',55141,'전북특별자치도 전주시 완산구 난전들로 59 (평화동3가)'),(73,'서울 서초구','서울광역본부','한국스마트자동차(주)서초CNG충전소',6792,'서울특별시 서초구 양재대로 254 서초공영차고지'),(74,'서울 강동구','서울광역본부','한국스마트자동차(주)강동CNG충전소',5212,'서울특별시 강동구 아리수로 426 시내버스공영차고지'),(75,'경기 군포시','경기광역본부','군포시부곡버스공영차고지CNG충전소',15881,'경기도 군포시 송부로 153(부곡동)'),(76,'경기 수원시 권선구','경기광역본부','(주)에스이모빌리티 곡반CNG충전소',16672,'경기도 수원시 권선구 동수원로 22'),(77,'경기 군포시','경기광역본부','(주)삼천리이엔지 부곡(군포부곡씨엔지충전소)',15879,'경기도 군포시 번영로 179-46 공영차고지'),(78,'경남 양산시','경남본부','(주)경동도시가스 증산CNG충전소',50615,'경상남도 양산시 물금읍 메기로 114'),(79,'대구 달서구','대구광역본부','대성에너지(주)성서CNG충전소',42705,'대구광역시 달서구 성서공단로 97'),(80,'대구 달서구','대구광역본부','대성에너지(주)대곡CNG충전소',42826,'대구광역시 달서구 한실로 10'),(81,'울산 울주군','울산본부','율리CNG충전소',44959,'울산광역시 울주군 청량읍 웅촌로 1263'),(82,'대전 유성구','대전광역본부','씨엔씨티에너지(주)(안산CNG충전소)',34062,'대전광역시 유성구 안금로 70'),(83,'충남 천안시 서북구','충남본부','(유)도솔공영에너지-신당동CNG충전소',31083,'충청남도 천안시 서북구 천일고1길 48 보성여객'),(84,'서울 중랑구','서울동부지사','주식회사 예스코홀딩스 면목북부충전소',2254,'서울특별시 중랑구 면목로 230, 1층(면목동)'),(85,'서울 중랑구','서울동부지사','(주)예스코홀딩스 중랑공영차고지충전소',2056,'서울특별시 중랑구 신내역로 25 (신내동공영차고지)'),(86,'서울 노원구','서울동부지사','진아복지에너지(주)월계CNG충전소',1906,'서울특별시 노원구 마들로 145 진아교통'),(87,'부산 북구','부산북부지사','구포CNG충전소',46627,'부산광역시 북구 시랑로185번길 66'),(88,'부산 기장군','부산북부지사','(주)대진여객 CNG사업소',46051,'부산광역시 기장군 철마면 반송로 973'),(89,'부산 금정구','부산북부지사','(주)엑스티루브 회동CNG충전소',46259,'부산광역시 금정구 개좌로 222 (회동동)'),(90,'전남 목포시','전남서부지사','(주)그린씨엔지',58606,'전라남도 목포시 임성로 16'),(91,'인천 중구','인천본부','은혜산업개발주식회사',22341,'인천광역시 중구 서해대로94번길 57-33  은혜CNG충전소'),(92,'인천 중구','인천본부','세운산업(주)인천국제공항CNG충전소',22380,'인천광역시 중구 공항동로465번길 20'),(93,'경기 용인시 처인구','경기동부지사','(주)대원고속 죽전CNG충전소',16885,'경기도 용인시 처인구 모현읍 포은대로896번길 42-3'),(94,'경기 이천시','경기동부지사','부발CNG충전소',17323,'경기도 이천시 부발읍 중부대로1763번길 80-24'),(95,'경기 용인시 처인구','경기동부지사','(주)대원고속 용인CNG충전소',17024,'경기도 용인시 처인구 포곡읍 석성로850번길 1'),(96,'경기 파주시','경기중부지사','신성문산CNG충전소(주)',10813,'경기도 파주시 문산읍 통일로 1699'),(97,'경기 고양시 일산동구','경기중부지사','고양씨엔지(주)',10320,'경기도 고양시 일산동구 무궁화로 385-11'),(98,'경기 고양시 일산서구','경기중부지사','서울씨엔지(주) 대화충전소',10226,'경기도 고양시 일산서구 대수길 105'),(99,'충북 음성군','충북북부지사','도시가스충전',27738,'충청북도 음성군 맹동면 원중로 1390 검사지원처'),(100,'부산 남구','부산광역본부','(주)시민에너지 용호CNG충전소',48563,'부산광역시 남구 백운포로 40 (용호동)'),(101,'부산 사상구','부산광역본부','대도하이젠(주) 수소복합충전소 학장CNG충전소',47020,'부산광역시 사상구 학감대로 167(학장동)'),(102,'충북 청주시 서원구','충북본부','(주)대성티앤이미평CNG충전소',28635,'충청북도 청주시 서원구 청남로 1919'),(103,'서울 송파구','서울광역본부','송파씨엔지충전(주)',5791,'서울특별시 송파구 충민로6길 61-23'),(104,'경기 화성시','경기광역본부','(주)삼천리화성동탄CNG충전소',18511,'경기도 화성시 10용사로 636 동탄공영버스차고지'),(105,'경기 안성시','경기광역본부','안성터미널주유소,충전소',17585,'경기도 안성시 비봉로 71-14 안성터미널주유소'),(106,'경남 양산시','경남본부','(주)경동도시가스 웅상공영차고지CNG충전소',50524,'경상남도 양산시 웅상대로 1510'),(107,'경남 함안군','경남본부','광신기계공업(주)-CNG충전소',52029,'경상남도 함안군 칠원읍 오곡로 124'),(108,'광주 북구','광주광역본부','뉴 월출 CNG충전소',61000,'광주광역시 북구 삼소로 235 (월출동) '),(109,'울산 북구','울산본부','농소CNG충전소',44230,'울산광역시 북구 호계로 80'),(110,'울산 동구','울산본부','방어진CNG충전소',44106,'울산광역시 동구 문현로 120'),(111,'대전 유성구','대전광역본부','씨엔씨티에너지(주)(봉산CNG충전소)',34003,'대전광역시 유성구 금남구즉로 1351-1'),(112,'경기 남양주시','경기북부지사','(주)대원운수(덕소CNG충전소)',12270,'경기도 남양주시 와부읍 덕소로 320 '),(113,'경기 포천시','경기북부지사','선진에너지(주)포천CNG충전소',11161,'경기도 포천시 호국로883번길 9 (설운동) '),(114,'경북 포항시 남구','경북동부지사','영남에너지서비스(주)문덕CNG충전소',37895,'경상북도 포항시 남구 오천읍 냉천로 700'),(115,'서울 양천구','서울남부지사','중부운수(주)',8033,'서울특별시 양천구 지양로 106 중부운수'),(116,'서울 성동구','서울동부지사','(주)예스코서비스 뚝섬 Clean Station',4767,'서울특별시 성동구 광나루로 76'),(117,'부산 연제구','부산북부지사','(주)삼동에너지 연산CNG충전소',47568,'부산광역시 연제구 좌수영로 300 (연산동)'),(118,'경기 광명시','경기서부지사','(주)삼천리광명하안CNG충전소',14303,'경기도 광명시 범안로 966'),(119,'인천 서구','인천본부','매립지충전소관리 주식회사 (CNG충전소)',22688,'인천광역시 서구 거월로 61'),(120,'인천 강화군','인천본부','선진CNG충전소',23041,'인천광역시 강화군 선원면 중앙로 219-1'),(121,'인천 서구','인천본부','세운산업(주)',22847,'인천광역시 서구 보도진로18번길 24-1'),(122,'인천 중구','인천본부','(주)삼천리월미CNG충전소',22305,'인천광역시 중구 월미로 470'),(123,'경기 용인시 처인구','경기동부지사','(주)케이엔에너지',17059,'경기도 용인시 처인구 신기로 170'),(124,'경기 고양시 일산동구','경기중부지사','주식회사 동진네오-신촌교통씨엔지충전소',10251,'경기도 고양시 일산동구 고봉로678번길 47'),(125,'경기 김포시','경기중부지사','선진버스(주)걸포가스충전소',10092,'경기도 김포시 감암로 127(CNG충전소)'),(126,'경기 고양시 일산동구','경기중부지사','고양씨엔지(주)문봉CNG충전소',10313,'경기도 고양시 일산동구 동국로  283-35'),(127,'경기 김포시','경기중부지사','선진네트웍스(주) 김포LCNG충전소',10069,'경기도 김포시 양촌읍 향동로 20 나동'),(128,'강원 원주시','강원광역본부','(주)에코바이오홀딩스',26333,'강원특별자치도 원주시 저금어지길 458'),(129,'경기 화성시','경기광역본부','현대자동차(주) 남양연구소-CNG충전소',18280,'경기도 화성시 남양읍 현대연구소로 150'),(130,'경기 안양시 만안구','경기광역본부','(주)삼천리안양석수CNG충전소',13900,'경기도 안양시 만안구 일직로 119 안양시내버스공영차고지'),(131,'경기 오산시','경기광역본부','(주)오산교통에너지 CNG충전소',18128,'경기도 오산시 서부로 21, 오산공영버스차고지 내'),(132,'경남 창원시 성산구','경남본부','경남에너지(주)불모산CNG충전소',51541,'경상남도 창원시 성산구 불모산로 49 '),(133,'경남 창원시 진해구','경남본부','(주)항만엘엔지_PNC터미널',51611,'경상남도 창원시 진해구 신항로 341 PNC터미널 내'),(134,'대구 동구','대구광역본부','대성에너지(주)동호CNG충전소',41085,'대구광역시 동구 경안로 700'),(135,'서울 은평구','서울서부지사','은평뉴타운CNG충전소',3300,'서울특별시 은평구 통일로 1190 은평뉴타운CNG충전소'),(136,'서울 마포구','서울서부지사','서울씨엔지(주)상암CNG충전소',3902,'서울특별시 마포구 가양대로 125 (상암동)'),(137,'광주 서구','광주광역본부','(주)해양에너지 매월 CNG충전소',62070,'광주광역시 서구 불암길 154'),(138,'세종 ','대전광역본부','대평CNG충전소',30154,'세종특별자치시 종합터미널로 38 (대평동)'),(139,'경기 의정부시','경기북부지사','(주)대원여객민락동CNG충전소',11815,'경기도 의정부시 용민로 503 (민락동) '),(140,'서울 성북구','서울동부지사','(주)예스코서비스 정릉2충전소',2700,'서울특별시 성북구 보국문로 204 (정릉동) 204'),(141,'부산 북구','부산북부지사','삼진그린에너지(주)',46510,'부산광역시 북구 금곡대로 730'),(142,'인천 중구','인천본부','인천그린에너지(주)_운북CNG충전소',22362,'인천광역시 중구 영종순환로877번길 29'),(143,'경기 용인시 처인구','경기동부지사','(주)삼천리에버랜드CNG충전소',17023,'경기도 용인시 처인구 포곡읍 곡현로 74 사무동'),(144,'경기 양주시','경기중부지사','(주)대원여객덕정동CNG충전소',11449,'경기도 양주시 화합로1325번길 222'),(145,'강원 홍천군','강원광역본부','두원에너지 홍천CNG충전소',25115,'강원특별자치도 홍천군 북방면 홍천로 179 '),(146,'경기 수원시 권선구','경기광역본부','(주)에스이모빌리티 남부CNG충전소',16668,'경기도 수원시 권선구 덕영대로1368번길 2 외 일원'),(147,'경기 수원시 영통구','경기광역본부','(주)대원고속 광교CNG충전소',16511,'경기도 수원시 영통구 광교호수로 252 CNG충전소'),(148,'경기 수원시 권선구','경기광역본부','(주)에스이모빌리티 서부CNG충전소',16630,'경기도 수원시 권선구 온정로 107, 수원서부공영차고지 내'),(149,'대구 달성군','대구광역본부','대성에너지(주)매곡CNG충전소',42916,'대구광역시 달성군 다사읍 달구벌대로 701-45'),(150,'경북 구미시','대구광역본부','영남에너지서비스(주)구미CNG충전소',39214,'경상북도 구미시 송선로 301 구미cng충전소'),(151,'대구 수성구','대구광역본부','대성에너지(주)범물CNG충전소',42239,'대구광역시 수성구 청호로 22'),(152,'대구 달성군','대구광역본부','대성에너지(주)논공CNG충전소',42976,'대구광역시 달성군 논공읍 약산덧재길 56'),(153,'광주 북구','광주광역본부','(주)해양에너지 장등 CNG충전소',61140,'광주광역시 북구 장운길 55'),(154,'대전 동구','대전광역본부','씨엔씨티에너지(주)(용운CNG충전소)',34521,'대전광역시 동구 동부로 246'),(155,'전남 순천시','전남동부지사','(유)원영실업 순천CNG충전소',57924,'전라남도 순천시 중앙로 491-6'),(156,'전남 여수시','전남동부지사','주식회사 율촌 ',59625,'전라남도 여수시 좌수영로 548'),(157,'전남 여수시','전남동부지사','주식회사 율촌 와온 영업소',59649,'전라남도 여수시 무선로 282'),(158,'경기 남양주시','경기북부지사','(주)대원운수 차산리CNG충전소',12197,'경기도 남양주시 화도읍 수레로1092번길 5-4 '),(159,'경북 포항시 북구','경북동부지사','블루에너지서비스(주)',37597,'경상북도 포항시 북구 새천년대로 1415 '),(160,'서울 금천구','서울남부지사','범일에너지주식회사',8644,'서울특별시 금천구 금하로 738 범일CNG충전소'),(161,'서울 양천구','서울남부지사','(주)귀뚜라미에너지 양천CNG충전소',8056,'서울특별시 양천구 신정로7길 17 양천공영차고지'),(162,'서울 구로구','서울남부지사','(주)귀뚜라미에너지 온수CNG충전소',8261,'서울특별시 구로구 부일로 841'),(163,'서울 성북구','서울동부지사','(주)예스코서비스 정릉1충전소',2704,'서울특별시 성북구 보국문로 187'),(164,'서울 도봉구','서울동부지사','(주)사랑CNG충전소',1405,'서울특별시 도봉구 노해로 317-6'),(165,'경기 시흥시','경기서부지사','재연(주) CNG충전소',15082,'경기도 시흥시 희망공원로 278'),(166,'인천 남동구','인천본부','세운산업(주) 장수CNG충전소',21531,'인천광역시 남동구 수현로 9'),(167,'인천 서구','인천본부','은혜천연가스(주)원창CNG충전소',22770,'인천광역시 서구 원창로89번길 34'),(168,'경기 성남시 분당구','경기동부지사','(주)경기고속분당씨엔지충전소',13636,'경기도 성남시 분당구 성남대로43번길 30 (구미동)'),(169,'경기 김포시','경기중부지사','신대명에너지(주)',10042,'경기도 김포시 대곶면 대명항로 727-13'),(170,'서울 강남구','서울광역본부','(주)도선제이엔디아이엔씨',6358,'서울특별시 강남구 양재대로 486 도선여객정비공장'),(171,'경기 의왕시','경기광역본부','삼영씨엔지주식회사',16107,'경기도 의왕시 왕소나무길 29-15 충전소'),(172,'경기 평택시','경기광역본부','한국가스공사 평택생산기지본부 LNG충전소',17949,'경기도 평택시 포승읍 남양만로 175-88 (원정리 산 109-4)'),(173,'경기 수원시 권선구','경기광역본부','(주)에스이모빌리티 경진CNG충전소',16431,'경기도 수원시 권선구 세화로 220'),(174,'경남 창원시 마산합포구','경남본부','(주)그린창원',51755,'경상남도 창원시 마산합포구 가포순환로 109'),(175,'경남 창원시 마산합포구','경남본부','경남에너지(주)덕동CNG충전소',51778,'경상남도 창원시 마산합포구 덕동동 838번지 일원'),(176,'대구 북구','대구광역본부','대성에너지(주)검단CNG충전소',41507,'대구광역시 북구 검단북로11길 83'),(177,'대구 북구','대구광역본부','대성에너지(주)관음CNG충전소',41448,'대구광역시 북구 관음로 127'),(178,'경북 경산시','대구광역본부','대성에너지(주)하양CNG충전소',38421,'경상북도 경산시 와촌면 하양로 335'),(179,'광주 서구','광주광역본부','(주)해양에너지 상무 CNG충전소',62076,'광주광역시 서구 눌재로 589 A동(관리실)'),(180,'전남 나주시','광주광역본부','나주씨엔지스테이션',58276,'전라남도 나주시 왕곡면 영산포로 30-9'),(181,'경북 경주시','경북동부지사','서라벌도시가스(주)충효동CNG충전소',38057,'경상북도 경주시 알마을길 16'),(182,'서울 강서구','서울남부지사','김포교통(주)방화CNG충전소',7508,'서울특별시 강서구 금낭화로 170 김포교통주식회사'),(183,'서울 강북구','서울동부지사','한성운수(주)번동CNG충전소',1137,'서울특별시 강북구 한천로 939 관리과'),(184,'부산 연제구','부산북부지사','(주)부산버스공동환승터미널CNG충전소',47500,'부산광역시 연제구 월드컵대로 420'),(185,'경기 안산시 상록구','경기서부지사','주식회사 스카이비(본오동)',15559,'경기도 안산시 상록구 오목로 156'),(186,'경남 함양군','경남서부지사','케이지모빌리티커머셜(주)',50021,'경상남도 함양군 수동면 산업단지길 148'),(187,'인천 연수구','인천본부','(주)삼천리(승기CNG충전소)',21979,'인천광역시 연수구 아암대로 833'),(188,'인천 중구','인천본부','인천그린에너지(주) 신흥동CNG충전소',22341,'인천광역시 중구 축항대로290번길 124'),(189,'경기 성남시 분당구','경기동부지사','에코플러스(주)',13636,'경기도 성남시 분당구 탄천상로163번길 10'),(190,'경기 이천시','경기동부지사','(주)대원고속 이천공영차고지CNG충전소',17391,'경기도 이천시 이섭대천로 981-42 관리동'),(191,'경기 하남시','경기동부지사','하남CNG충전소',13026,'경기도 하남시 하남대로284번길 45 (상산곡동)'),(192,'경기 성남시 수정구','경기동부지사','성남천연가스(주)사송동지점',13446,'경기도 성남시 수정구 사송로 41'),(193,'경기 김포시','경기중부지사','선진에너지(주)',10023,'경기도 김포시 월곶면 김포대로 2600 CNG충전소'),(194,'경기 고양시 덕양구','경기중부지사','서울씨엔지(주)용두CNG충전소',10547,'경기도 고양시 덕양구 서오릉로 540-42 용두CNG충전소'),(195,'경기 파주시','경기중부지사','주식회사 맥금에너지',10847,'경기도 파주시 장터고개길 10'),(196,'경기 고양시 일산서구','경기중부지사','(주)오천고양지점 씨엔지충전소',10373,'경기도 고양시 일산서구 경의로 772 '),(197,'경기 양주시','경기중부지사','(주)양주씨엔지',11494,'경기도 양주시 고삼로 17-22'),(198,'경기 고양시 일산동구','경기중부지사','일산CNG충전소',10316,'경기도 고양시 일산동구 견달산로 246-3');
/*!40000 ALTER TABLE `tbl_sample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 15:19:57
