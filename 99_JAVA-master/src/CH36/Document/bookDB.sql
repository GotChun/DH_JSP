-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bookdb
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
-- Table structure for table `tbl_book`
--

DROP TABLE IF EXISTS `tbl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_book` (
  `booKCode` bigint DEFAULT NULL,
  `bookName` text,
  `publisher` text,
  `isbn` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_book`
--

LOCK TABLES `tbl_book` WRITE;
/*!40000 ALTER TABLE `tbl_book` DISABLE KEYS */;
INSERT INTO `tbl_book` VALUES (30000002419113,'모든 생물은 섹스를 한다','홍익출판사','8970659935'),(30000002419116,'레드 마케팅=RED MARKETING','아라크네','8989903106'),(30000002419974,'우리 엄마, 어디 있어요','산하','8976502280'),(30000002452990,'종교와 예술','열화당','8930101631'),(30000002452993,'농담 따먹기에 대한 철학적 고찰','이소출판사','8989305020'),(30000002452996,'어린이의 마음으로 철학하기','길','8987671178'),(30000002452999,'당진일기','하늘재','8995019360'),(30000002453002,'생각나무 과수원','청년정신','8987999769'),(30000002453008,'수리철학','京文社','8972824801'),(30000002453011,'일상 속의 철학','철학과현실사','8977752973'),(30000002453014,'철학의 즐거움','홍신문화사','8970551557'),(30000002453017,'논리 속의 철학 논리 밖의 철학','새길','8970330984'),(30000002453021,'임꺽정과 일곱형제들','산하',''),(30000002453377,'(전략)삼국지','대현출판사',''),(30000002453378,'(전략)삼국지','대현출판사',''),(30000002453379,'(전략)삼국지','대현출판사',''),(30000002453380,'(전략)삼국지','대현출판사',''),(30000002453381,'(전략)삼국지','대현출판사',''),(30000002453382,'(전략)삼국지','대현출판사',''),(30000002453383,'(전략)삼국지','대현출판사',''),(30000002453384,'(전략)삼국지','대현출판사',''),(30000002453385,'(전략)삼국지','대현출판사',''),(30000002453386,'(전략)삼국지','대현출판사',''),(30000002453388,'(전략)삼국지','대현출판사',''),(30000002453389,'(전략)삼국지','대현출판사',''),(30000002453390,'(전략)삼국지','대현출판사',''),(30000002453393,'(전략)삼국지','대현출판사',''),(30000002453394,'(전략)삼국지','대현출판사',''),(30000002453395,'(전략)삼국지','대현출판사',''),(30000002453396,'(전략)삼국지','대현출판사',''),(30000002453397,'(전략)삼국지','대현출판사',''),(30000002452900,'자기와 자기실현','한길사','8935654558'),(30000002452903,'아로마','현실문화연구','8987057208'),(30000002452906,'(폴 데이비스의)타임머신','한승','8986865831'),(30000002452909,'증오에서 삶으로','궁리','8988804813'),(30000002454116,'긴 머리 공주','마루벌','8985675788'),(30000002454119,'지하철 바다','마루벌','8985675877'),(30000002467161,'5시간만에 읽는 재미있는 교회사','하늘기획','89886680X'),(30000002467164,'마음고요','학고재','8956250073'),(30000002467165,'마음고요','학고재','8956250073'),(30000002468469,'(ACE)손쉽게 배우는 인체구조와 기능','군자출판사','8970892990'),(30000002468472,'지능형 빌딩시스템의 입문과 응용=Introduction to Intelligent Building System and Practices','技多利','8973742418'),(30000002468475,'(건축구조)뿌리에서 새순까지=From Root To Buds','技文堂','897086198X'),(30000002468476,'(건축구조)뿌리에서 새순까지=From Root To Buds','技文堂','8970861998'),(30000002468477,'(건축구조)뿌리에서 새순까지=From Root To Buds','技文堂','8970864830'),(30000002468480,'(最新版)建築設備用語大辭典','技文堂','8970861971'),(30000002468483,'레미콘 품질관리','技文堂','8970864369'),(30000002468486,'(새로쓴)한국 주거문화의 역사','技文堂','8970864695'),(30000002468489,'공유압제어기술:회로편','기전연구사','8933606106'),(30000002468492,'도시교통공학론=Urban Traffic Engineering','꾸벅','8995280808'),(30000002468498,'석유시대 언제까지 갈것인가','녹색평론사','8990274141'),(30000002468501,'機械設計便覽','大光書林','8938401499'),(30000002474241,'高麗前期의 財政構造','서울대학교출판부','8952103270'),(30000002474244,'까자흐스딴의 고려인','서울대학교출판부','8952103688'),(30000002474247,'獨島領有權에 대한 日本主張 批判','서울대학교출판부','8952103289'),(30000002474250,'고고학자와 함께하는 이집트 역사기행','서해문집','8974831643'),(30000002474253,'내가 꿈꾸는 주말여행','선미디어','8988323289'),(30000002454163,'루루야, 생일 축하해','계림닷컴','8953300975'),(30000002454164,'루루야, 생일 축하해','계림닷컴','8953300975'),(30000002454167,'루루는 참 바빠요','계림닷컴','8953300983'),(30000002466603,'(당신의 재산을 지켜주는)부동산 거래계약 이렇게 해야 안전하다','부연사','8984650994'),(30000002466606,'道治政治의 代議員 제도란 무엇인가','불소리','8989452074'),(30000002466609,'미국 땅에 심은 한국','뿌리출판사','8985622315'),(30000002466612,'위대한 아웃사이더','사람과사람','8985541714'),(30000002466615,'(21세기의 딜레마)정치변화와 사회민주주의','사회와연대','8989097142'),(30000002466624,'刑法各論','三知院','8974903989'),(30000002466627,'(장애인과 노약자를 위한)개인 맞춤형 복지 시대','새로운사람들','8981201781'),(30000002466630,'기업가치평가','새로운제안','8955330553'),(30000002466633,'카드 마케팅','새로운제안','895533057X'),(30000002466636,'컨설팅 프랙티스','새로운제안','8955330596'),(30000002474308,'이인제 의원님! 우리 아빠 맞아?','느낌이있는책','8988296419'),(30000002474309,'이인제 의원님! 우리 아빠 맞아?','느낌이있는책','8988296419'),(30000002474310,'이인제 의원님! 우리 아빠 맞아?','느낌이있는책','8988296419'),(30000002474313,'항우와 유방','달궁',''),(30000002474314,'항우와 유방','달궁',''),(30000002474315,'항우와 유방','달궁',''),(30000002474316,'항우와 유방','달궁',''),(30000002474317,'항우와 유방','달궁',''),(30000002474318,'항우와 유방','달궁',''),(30000002255346,'초등학교 수학 이렇게 가르쳐라','승산','8988907353'),(30000002294584,'성공하는 여자들에겐 분명한 이유가 있다','청하','8940301986'),(30000002294587,'(ADT R3.3과 함께하는)건축 인테리어 모델링','성안당','893154748X'),(30000002294590,'대런 섄','문학수첩리틀북스','898970829X'),(30000002294591,'대런 섄','문학수첩리틀북스','898970829X'),(30000002294592,'대런 섄','문학수첩리틀북스','898970829X'),(30000002294594,'대런 섄','문학수첩리틀북스','8989708303'),(30000002294595,'대런 섄','문학수첩리틀북스','8989708303'),(30000002294596,'대런 섄','문학수첩리틀북스','8989708303'),(30000002294597,'대런 섄','문학수첩리틀북스','8989708303'),(30000002294598,'대런 섄','문학수첩리틀북스','8989708311'),(30000002294599,'대런 섄','문학수첩리틀북스','8989708311'),(30000002294600,'대런 섄','문학수첩리틀북스','8989708311'),(30000002294601,'대런 섄','문학수첩리틀북스','8989708311'),(30000002294604,'CEO 히딩크-게임의 지배','바다출판사','8955611005'),(30000002294607,'마음에 약이 되는 이야기','예문','895659001X'),(30000002294610,'방송은 국민의 것이다','민서출판사','8942220215'),(30000002294613,'(이익훈)EAR OF THE TOEIC','넥서스','8982208437'),(30000002294619,'수사심리학','학지사','8975487164'),(30000002294625,'출세하는 아빠, 공부 잘하는 자녀를 만드는 생활풍수','태웅출판사','8972091251'),(30000002365481,'삼국지 구비동화','파랑새어린이',''),(30000002365482,'삼국지 구비동화','파랑새어린이',''),(30000002365486,'묵향 :묵향의 귀환','명상','8972324396'),(30000002365488,'묵향 :묵향의 귀환','명상','8972324396'),(30000002365489,'묵향 :묵향의 귀환','명상','8972324396'),(30000002365492,'셜록 홈즈 전집','황금가지','8982734007'),(30000002365493,'셜록 홈즈 전집','황금가지','8982734007'),(30000002365494,'셜록 홈즈 전집','황금가지','8982734007'),(30000002365498,'생물공학개론','형설출판사','8947248363'),(30000002365501,'천신문','너와나미디어','8956070180'),(30000002365502,'천신문','너와나미디어','8956070180'),(30000002365503,'천신문','너와나미디어','8956070180'),(30000002315082,'개가 무서워요!','사계절','8971967218'),(30000002315084,'개가 무서워요!','사계절','8971967218'),(30000002315085,'개가 무서워요!','사계절','8971967218'),(30000002315088,'산을 미는 강','북박스','8956620318'),(30000002315089,'산을 미는 강','북박스','8956620318'),(30000002315090,'산을 미는 강','북박스','8956620318'),(30000002391387,'(만화로 보는)그리스 로마 신화','가나출판사','8990103134'),(30000002403051,'最初의 모더니스트 鄭芝溶:일본 근대문학과의 비교고찰','역락','895556144X'),(30000002403052,'最初의 모더니스트 鄭芝溶:일본 근대문학과의 비교고찰','역락','895556144X'),(30000002403053,'最初의 모더니스트 鄭芝溶:일본 근대문학과의 비교고찰','역락','895556144X'),(30000002403054,'最初의 모더니스트 鄭芝溶:일본 근대문학과의 비교고찰','역락','895556144X'),(30000002403063,'롤즈의 민주적 자유주의','天池','8985586262'),(30000002403064,'롤즈의 민주적 자유주의','天池','8985586262'),(30000002403068,'서양문명과 인종주의','지식산업사','8942320457'),(30000002403071,'문학 속의 여성','월인','8984770701'),(30000002403072,'문학 속의 여성','월인','8984770701'),(30000002403075,'여성들은 다시 가슴을 높이기 시작했다:20세기 패션문화사','한길아트','8988360443'),(30000002403076,'여성들은 다시 가슴을 높이기 시작했다:20세기 패션문화사','한길아트','8988360443'),(30000002403082,'연행록 연구','일지사','8931205244'),(30000002403083,'연행록 연구','일지사','8931205244'),(30000002403091,'제3의 텍스트:영화와 소설 또는 정신분석학적 글쓰기','서울대학교출판부','8952103262'),(30000002403092,'제3의 텍스트:영화와 소설 또는 정신분석학적 글쓰기','서울대학교출판부','8952103262'),(30000002403095,'사회주의의 어제와 오늘','강원대학교출판부','897157125X'),(30000002403096,'사회주의의 어제와 오늘','강원대학교출판부','897157125X'),(30000002403099,'문학으로 여는 종교','전남대학교출판부','8975982955'),(30000002403100,'문학으로 여는 종교','전남대학교출판부','8975982955'),(30000002403101,'문학으로 여는 종교','전남대학교출판부','8975982955'),(30000002403102,'문학으로 여는 종교','전남대학교출판부','8975982955'),(30000002364052,'고시중국어','유스티니아누스','8987245195'),(30000002364055,'너 무슨 생각하니?','아라크네','8989903084'),(30000002364058,'정보처리산업기사 실기 Visual Basic 특별대비','영진.COM','8931420102'),(30000002364061,'왕비의 침실','영림카디널','8984010359'),(30000002364062,'왕비의 침실','영림카디널','8984010367'),(30000002364063,'왕비의 침실','영림카디널','8984010375'),(30000002364069,'COMPLETE GUIDE to the TOEFL TEST READING','넥서스','8982201645'),(30000002364941,'솔미의 밤 하늘 여행','길벗어린이','898662155X'),(30000002314870,'천사와 꼬마병정의 대모험','한림출판사','8970942254'),(30000002314871,'천사와 꼬마병정의 대모험','한림출판사','8970942254'),(30000002314872,'천사와 꼬마병정의 대모험','한림출판사','8970942254'),(30000002314875,'팔려가는 당나귀','비룡소','8949110210'),(30000002315662,'우리 아이는 왜 태양을 까맣게 그렸을까?','국일미디어','8974252651'),(30000002315663,'우리 아이는 왜 태양을 까맣게 그렸을까?','국일미디어','8974252651'),(30000002315666,'베토벤과 그의 연인들','생각의나무','8984981753'),(30000002315669,'여기가 남태평양이다','지식산업사','8942371187'),(30000002315675,'현대인의 심리','형설출판사','8947217115'),(30000002315678,'연애시집','마음산책','8989351251'),(30000002315679,'연애시집','마음산책','8989351251'),(30000002315680,'연애시집','마음산책','8989351251'),(30000002315683,'우리 엄마 데려다 줘','파랑새어린이','8970573089'),(30000002363927,'한글97 저학년','영진닷컴','8931421214'),(30000002363928,'한글97 저학년','영진닷컴','8931421214'),(30000002363932,'우리 민요의 세계','역락','8955561563'),(30000002403853,'우리 민요의 세계','역락','8955561563'),(30000002403854,'우리 민요의 세계','역락','8955561563'),(30000002363935,'(신정원의)플러스 잉글리쉬','학원사','891909005X'),(30000002363938,'TCP/IP Networking Service','정일','8988784928'),(30000002363941,'(NEW 알기쉬운)TCP/IP','정보문화사','8956740100'),(30000002363944,'가비오따스','말','8995091665'),(30000002363947,'노빈손 에버랜드에 가다!','뜨인돌출판사','8986183625'),(30000002363948,'노빈손 에버랜드에 가다!','뜨인돌출판사','8986183625'),(30000002315615,'신기한 스쿨버스 키즈','비룡소','8949150387'),(30000002315616,'신기한 스쿨버스 키즈','비룡소','8949150395'),(30000002315617,'신기한 스쿨버스 키즈','비룡소','8949150395'),(30000002315618,'신기한 스쿨버스 키즈','비룡소','8949150395'),(30000002315619,'신기한 스쿨버스 키즈','비룡소','8949150395'),(30000080476856,'心齋散稿:全','심재서당우문계원문인일동',''),(30000002364072,'토플 초보를 위한 기본독해','기본포럼','8988891074'),(30000002364078,'영어공부 제대로 하자 WORKBOOK','명상','8972322881'),(30000002364533,'지붕위의 사람들','문학동네','8982815384'),(30000002364534,'지붕위의 사람들','문학동네','8982815384'),(30000002364535,'지붕위의 사람들','문학동네','8982815384'),(30000002364538,'음식, 그 상식을 뒤엎는 역사','창해','8979193890'),(30000002364544,'새들의 꿈에서는 나무 냄새가 난다','문학과지성사','8932013659'),(30000002364547,'영어로 읽는 명작 동화','계림닷컴','8981068852'),(30000002364548,'영어로 읽는 명작 동화','계림닷컴','8981068852'),(30000002364549,'영어로 읽는 명작 동화','계림닷컴','8981068860'),(30000002364550,'영어로 읽는 명작 동화','계림닷컴','8981068860'),(30000002364551,'영어로 읽는 명작 동화','계림닷컴','8981068879'),(30000002364553,'영어로 읽는 명작 동화','계림닷컴','8981068887'),(30000002364554,'영어로 읽는 명작 동화','계림닷컴','8981068887'),(30000002364555,'영어로 읽는 명작 동화','계림닷컴','8981068895'),(30000002364556,'영어로 읽는 명작 동화','계림닷컴','8981068895'),(30000002364557,'영어로 읽는 명작 동화','계림닷컴','8981068909'),(30000002365455,'약손 경락 마사지로 건강미인 만들기','가림출판사','897895118X'),(30000002365461,'알고 먹어야 병이 낫는다','하남출판사','897534164X'),(30000002315522,'(사랑으로 세계를 치료한 의사)노먼 베쑨','파란자전거','898919203X'),(30000002315524,'(사랑으로 세계를 치료한 의사)노먼 베쑨','파란자전거','898919203X'),(30000002315527,'똥을 줍던 아이는 어떻게 세상을 얻었을까?','파란자전거','8995085509'),(30000002315528,'똥을 줍던 아이는 어떻게 세상을 얻었을까?','파란자전거','8995085509'),(30000002402961,'광복 후 북한현대문학 연구','역락','8955561555'),(30000002402964,'朝鮮後期 平安道 社會發展 硏究','일조각','8933704213'),(30000002402965,'朝鮮後期 平安道 社會發展 硏究','일조각','8933704213'),(30000002418762,'듄','황금가지','8982733655'),(30000002418763,'듄','황금가지','8982733655'),(30000002418766,'정당사회학','한길사','8935652970'),(30000002418769,'미국 비밀 문서로 본 한국 현대사 35장면=KISON REPORT2','삼인','8987519759'),(30000002418775,'일본어 일기','문예림','8974821923'),(30000002418778,'사진을 읽으면 영어가 보인다','문예림','8974822059'),(30000002418781,'회화가 강해지는 중국어 문법','을지외국어','8974620987'),(30000002418784,'선물거래소 투자길잡이','오상','8979530986'),(30000002418787,'(퇴계 가훈으로 배우는)인생의 소중한 지혜','새론북스','8989999065'),(30000002418793,'브랜드 마케팅 리포트','새로운제안','895533060X'),(30000002418796,'Photoshop 7 기본+활용 쉽게 배우기','영진닷컴','893142311X'),(30000002418799,'LinguaForum TOEFL CBT Review Series','링구아포럼','8955630131'),(30000002418803,'필링글리쉬','윤선생영어교실',''),(30000002418806,'경영 최전방에서 날아온 보고서','아라크네','8989903114'),(30000002418809,'청소의 여왕','럭스미디어','8989822033'),(30000002418812,'아침 8분 운동','들녘','8975273369'),(30000002418815,'수학아, 놀자','한울림','8985777734'),(30000002418816,'수학아, 놀자','한울림','8985777734'),(30000002403225,'유라시아 초원제국의 샤마니즘','민속원','8986252740'),(30000002403234,'한국 환경정책과 행정','신광출판사','8970695850'),(30000002403235,'한국 환경정책과 행정','신광출판사','8970695850'),(30000002418968,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418969,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418970,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418971,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418972,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418973,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418974,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418975,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418976,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418977,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418978,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002418979,'(KBS 만화로 보는)역사스페셜','아침이슬',''),(30000002403456,'페미니즘 언어학의 이해','부산대학교출판부','897316161X'),(30000002403457,'페미니즘 언어학의 이해','부산대학교출판부','897316161X'),(30000002403460,'21세기 러시아 정치와 국가전략','일신사','8974103540'),(30000002403461,'21세기 러시아 정치와 국가전략','일신사','8974103540'),(30000002394138,'만화 서양미술사','다빈치',''),(30000002394139,'만화 서양미술사','다빈치',''),(30000002394141,'만화 서양미술사','다빈치',''),(30000002394142,'만화 서양미술사','다빈치',''),(30000002391085,'문명교류사 연구','사계절','8971969067'),(30000002391088,'탁탁 톡톡 음매~ 젖소가 편지를 쓴대요','어린이중앙','8983755725'),(30000002391090,'탁탁 톡톡 음매~ 젖소가 편지를 쓴대요','어린이중앙','8983755725'),(30000002391091,'탁탁 톡톡 음매~ 젖소가 편지를 쓴대요','어린이중앙','8983755725'),(30000002391094,'파라오의 역사','까치','8972913421'),(30000002391097,'(페트라 켈리)나는 평화를 희망한다','양문','8987203492'),(30000002391100,'(목적지.현위치)10초 이내 찾는 지도','우성지도','8985762087'),(30000002391103,'아인슈타인 피카소','작가정신','897288183X'),(30000002391106,'주니어를 위한 직업 시리즈=나도 멋진 프로가 될 거야','을파소','8950990121'),(30000002391107,'주니어를 위한 직업 시리즈=나도 멋진 프로가 될 거야','을파소','8950990121'),(30000002391108,'주니어를 위한 직업 시리즈=나도 멋진 프로가 될 거야','을파소','8950990121'),(30000002391109,'주니어를 위한 직업 시리즈=나도 멋진 프로가 될 거야','을파소','895099013X'),(70000000011880,'再組合 Vaccinia virus를 이용한 fusional cholesteryl ester transfer protein의 生性','慶北大學校',''),(70000000011884,'都心韓屋住居地의 力學的 變化','慶北大學校',''),(70000000011886,'資産負債綜合管理(ALM)을 이용한 銀行의 危險 管理方案','慶北大學校',''),(70000000011888,'財務指標를 利用한 CP等級의 豫測力分析','慶北大學校',''),(70000000011890,'조기위암의 림프절전이 양상','慶北大學校',''),(70000000011892,'IRAS 赤外線 점원의 分布 分析을 통한 우리銀河의 構造 模型 硏究','慶北大學校',''),(70000000011894,'고속 신호 전송을 위한 백플레인 설계 기법','慶北大學校',''),(70000000011896,'음성 및 EGG 신호 분석에 의한 포만트 추정 및 음성합성','慶北大學校',''),(70000000011898,'블랙홀,정보, 그리고 연산','慶北大學校',''),(70000000011902,'위암수술 성적의 보고요건','경북대학교',''),(70000000008835,'On the proposition of the semiregular space','Dongguk Univ.',''),(70000000008839,'順菴 安鼎福의 實學思想硏究','東國大學校',''),(70000000008843,'校訓과 學校經營에 관한 硏究','東國大學校',''),(70000000008845,'地方敎育財政 彈力性 分析','東國大學校',''),(70000000008847,'跆拳道 競技中 國家代表選手들의 차기技術에 대한 使用 頻度數와 得點力에 관한 調査硏究','東國大學校',''),(70000000008849,'굳은 콘크리트의 凍害機構에 關한 硏究','東國大學校',''),(70000000008851,'등숙기 강우로 인한 맥주맥 종자의 구조적 특성 및 세포 화학적 변화에 관한 연구','동국대학교',''),(70000000001390,'宋史','경인문화사',''),(70000000001392,'宋史','경인문화사',''),(70000000001393,'宋史','경인문화사',''),(70000000001394,'宋史','경인문화사',''),(70000000001398,'五代史','경인문화사',''),(70000000001400,'遙史','경인문화사',''),(70000000001404,'元史','경인문화사',''),(70000000001405,'元史','경인문화사',''),(70000000001407,'明史','경인문화사',''),(70000000002925,'(엄마와 함께하는)영재 만들기','인터하우스',''),(70000000002927,'서울에서 제주까지','제이씨현시스템',''),(70000000002929,'(유쾌한씨와 함께 배우는)한글프로 \'96','CD플러스',''),(70000000002931,'(유쾌한씨와 함께 배우는)인터넷','CD플러스',''),(70000000000632,'최고인기가수 최고인기가요3','신세계레코드',''),(70000000000634,'이문세 양희은 골든','SKC',''),(70000000000636,'노사연','지구레코드',''),(70000000000638,'주현미','세원음반',''),(70000000000640,'나훈아','오아시스레코드',''),(70000000000642,'IDOL=아이돌','삼성전자',''),(70000000000644,'AmenityMusic1','삼성전자',''),(70000000000646,'AmenityMusic2','삼성전자',''),(70000000000648,'AmenityMusic3','삼성전자',''),(70000000000650,'AmenityMusic4','삼성전자',''),(70000000000652,'AmenityMusic5','삼성전자',''),(70000000000654,'AmenityMusic6','삼성전자',''),(70000000000656,'PHILIPS CLASSICS BEST \'95','성음',''),(70000000000658,'DISNEY=디즈니','한국BMG뮤직',''),(70000000000660,'Disney1=디즈니','한국BMG뮤직',''),(70000000000662,'나나무스쿠리','한국BMG뮤직',''),(70000000002683,'삼성 어린이 영어:응용편','삼성출판사',''),(70000000002685,'삼성 어린이 영어:응용편','삼성출판사',''),(70000000011904,'輪環體고리의 週期構造','慶北大學校',''),(70000000011908,'信用카드의 法理','慶北大學校',''),(70000000009422,'民間音樂團體의 活性化 方案 調査 硏究','漢陽大學校',''),(70000000009424,'灰重石의 電氣界面現象 및 凝集에 關한 硏究','漢陽大學校',''),(70000000009426,'美國移住者의 階層構造와 移住動機','漢陽大學校',''),(70000000009428,'大韓民國産業디자인展覽會의 歷史的 흐름에 關한 硏究','漢陽大學校',''),(70000000009430,'Polyazine(I),(II)과Polyazomethine(II)-(VI)의 열적 성질','漢陽大學校',''),(70000084833504,'(초등학생을 위한) 잉글리시 리스타트 =English restart ','웅진씽크빅',''),(70000000004510,'할로윈 H2O [녹화자료]','리스비젼',''),(70000000004512,'히트 [녹화자료]','삼성전자',''),(70000000004514,'엔드 오브 데이즈 [녹화자료]','삼화프로덕션',''),(70000000004516,'인스팅트 [녹화자료]','삼화프로덕션',''),(70000000004518,'라버 ＆ 러브 [녹화자료]','소프트랜드',''),(70000000004520,'블레어 윗치 [녹화자료]','스펙트럼디브이디',''),(70000000004522,'사랑이 머무는 풍경 [녹화자료]','스펙트럼디브이디',''),(70000000004524,'2000 S.E.S. First concert [녹화자료]','올림피아프로덕션',''),(70000000004526,'홀랜드 오피스 [녹화자료]','스펙트럼디브이디',''),(70000000004528,'댄스댄스 [녹화자료]','씨디플러스',''),(70000000004530,'벨벳 골드마인 [녹화자료]','씨디플러스',''),(70000000004532,'저수지의 개들 [녹화자료]','씨디플러스',''),(70000000004534,'박하사탕 [녹화자료]','알토미디어',''),(70000000004538,'아미스타드 [녹화자료]','스펙트럼디브이디',''),(70000000009007,'MBE로 성장된 GaAs/AlGaAs 이종접합구조의 PL에 관한 硏究','東國大學校',''),(70000000009009,'Si기판위에 성장된 GaAs의 깊은준위','東國大學校',''),(70000000009011,'農地改革 以後의 農民層 分解의 性格에 關한 硏究','東國大學校',''),(70000000014912,'The Glass menagerie에 나타난 葛藤樣相','대구대학교',''),(70000000014915,'模倣學習이 訓練可能 精神遲滯兒의 注意集中行動 및 基本動作形成에 미치는 效果','대구대학교',''),(70000000012738,'이범선 소설 연구','계명대학교',''),(70000000012742,'黃順元의 <나무들 비탈에 서다> 硏究','계명대학교',''),(70000000012746,'유아 놀이에 대한 어머니의 태도와 유아 놀이 활동성과의 관계 연구','계명대학교',''),(70000000012748,'統一新羅期 六頭品에 대하여','계명대학교',''),(70000000012750,'株式投資 特性과 株式投資 行動間의 關係에 관한 實證的 硏究','계명대학교',''),(70000000013433,'特殊學校 在學生의 重複障碍 實態調査','대구대학교',''),(70000000013434,'特殊學校 在學生의 重複障碍 實態調査','대구대학교',''),(70000000013436,'視覺障害兒의 自我槪念形成에 關한 硏究','대구대학교',''),(70000000013438,'腦性痲痺兒童의 音樂指導에 관한 硏究','한국사회사업대학',''),(70000000013439,'腦性痲痺兒童의 音樂指導에 관한 硏究','한국사회사업대학',''),(70000000013441,'韓國 醫療保險制度의 現況과 改善方向','대구대학교',''),(70000000013442,'韓國 醫療保險制度의 現況과 改善方向','대구대학교',''),(70000000013443,'韓國 醫療保險制度의 現況과 改善方向','대구대학교',''),(70000000013445,'韓國 生活保護對象者 選定과 保護內容','대구대학교',''),(70000000013446,'韓國 生活保護對象者 選定과 保護內容','대구대학교',''),(70000000013447,'韓國 生活保護對象者 選定과 保護內容','대구대학교',''),(70000000013449,'民間團體 活性化 方案에 關한 硏究','대구대학교',''),(70000000013451,'民間團體 活性化 方案에 關한 硏究','대구대학교',''),(70000000013452,'民間團體 活性化 方案에 關한 硏究','대구대학교',''),(70000000013454,'企業의 利解當事者集團 構造分析','대구대학교',''),(70000000013455,'企業의 利解當事者集團 構造分析','대구대학교',''),(70000000013458,'都市社會問題와 都市貧民層에 관한 硏究','대구대학교',''),(70000000011303,'南北韓의 統一政策에 關한 比較硏究','東亞大學校',''),(70000000011305,'Wagner音樂劇에서 Parsifal에 관한 硏究','東亞大學校',''),(70000000003241,'전자신문:축쇄판 CD-ROM','전자신문사',''),(70000000003243,'환상의 섬 제주','대한교과서주식회사',''),(70000000003245,'그랜드 캐년 국립공원=Grand Canyon National Park','인포미디어',''),(70000000003247,'(야생동물의 세계)뱀','세일',''),(70000000003249,'(한국의)역사상식 100가지','에이드시스템',''),(70000000003251,'(Inside)Photoshop4.0','CD플러스',''),(70000000003253,'(자연과 함께)놀며 공부하며','Mix design',''),(70000000003255,'삼성 시스템 유틸리티 모음집','삼성전자',''),(70000000003654,'HOW 4u [컴퓨터파일]','휴먼컴',''),(70000000003656,'HOW 4u [컴퓨터파일]','휴먼컴',''),(70000000003658,'PC Line [컴퓨터파일]','한경pc라인',''),(70000000003660,'PC Line [컴퓨터파일]','한경pc라인',''),(70000000003662,'(디지털)하우피시 [컴퓨터파일]','삼성출판사',''),(70000000001366,'드라이빙 미스 데이지=Driving Miss Daisy','LG전자',''),(70000000001368,'리얼 맥코이=The Real McCoy','LG전자',''),(70000000001370,'캠퍼스 군단','LG전자',''),(70000000001372,'케이 투=K2','LG전자',''),(70000000001374,'남자가 여자를 사랑할때=Boxing Helena','LG전자',''),(70000000001376,'조화유의 이것이 미국영어다','LG전자',''),(70000000001378,'高麗史中 中緯關係史料彙編','食資出版社',''),(70000000001380,'高麗史中 中緯關係史料彙編','食資出版社',''),(70000000001383,'舊唐書','경인문화사',''),(70000000001384,'舊唐書','경인문화사',''),(70000000001386,'新唐書','경인문화사',''),(70000000001389,'宋史','경인문화사',''),(70000000002307,'베토벤 음악교실','수잔하몬드',''),(70000000002309,'꼬마토끼 윌리와 그림책 나들이','인포미디어',''),(70000000002311,'PC 여섯마당','코리아컴퓨터',''),(70000000003407,'익스플로러 4.X','신세계',''),(70000000003409,'신나는 5개국어여행','인터컴',''),(70000000003411,'ACE중국어회화','CD플러스',''),(70000000003413,'글꼴 오!K95','큐닉스컴퓨터',''),(70000000003415,'한글 파워포인트95 퍼팩트 마스터=Power Point95 perfect master','CD타운',''),(70000000003417,'쉬운 한글 Excel 95','CD타운',''),(70000000003419,'Talk to me','두산동아',''),(70000000003421,'Excel 완전정복','한국미디어기획연합',''),(70000000003423,'조선시대 회화명품전','대한교과서주식회사',''),(70000000003425,'하늘천따지:천자문','시스텍',''),(70000000003427,'(재미있는)일본어 길잡이','태경테크',''),(70000000003429,'(Microsoft한글)Windows 98','태경테크',''),(70000000003431,'C 언어','태경테크',''),(70000000003433,'いちばん','한국멀티미디어',''),(70000000003435,'야무진 일본어','진명출판사',''),(70000000003437,'금강삼매경','포스트산업네트',''),(70000000003439,'그림성경=Picture Bible','크리스챤과컴퓨터',''),(70000000003441,'배낭여행=BackPacker','LG미디어',''),(70000000003443,'서식백과사전','거성씨오엠',''),(70000000003445,'즐거운 애견 돌보기=Oh! My dog','디지타워',''),(70000000002667,'KBS 위성방송과 한국방송공사','KBS 한국방송공사',''),(70000000002669,'KBS 위성방송과 한국방송사','KBS 한국방송공사',''),(70000000002671,'충청북도','충청북도',''),(70000000002675,'삼성 어린이 영어:기초편','삼성출판사',''),(70000000002677,'삼성 어린이 영어:기초편','삼성출판사',''),(70000000002679,'삼성 어린이 영어:기초편','삼성출판사',''),(70000000000876,'Terbo 2:New Sensation','도레미레코드사',''),(70000000000878,'Cool Ⅲ:Destined for the best','워너뮤직',''),(70000000000880,'Lee Seng Gang:Taegum Sanjo','삼성뮤직',''),(70000000001260,'ISE','LG전자',''),(70000000001262,'ISE','LG전자',''),(70000000001264,'ISE','LG전자',''),(70000000001266,'ISE','LG전자',''),(70000000001268,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001270,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001272,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001274,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001276,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001278,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001280,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001282,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001284,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001286,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001288,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001290,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001292,'Suvival english for travelers=여행자 필수 영어','LG전자',''),(70000000001294,'ISE','LG전자',''),(70000000001296,'ISE','LG전자',''),(70000000001298,'ISE=Interactive Screen English','LG전자',''),(70000000002391,'(Welcome to)POP HOUSE 4','동아출판사',''),(70000000005163,'言語的 情報의 構造와 學習者의 Schema가 課題成就 및 情報引出에 미치는 影響','高麗大學校',''),(70000000005164,'言語的 情報의 構造와 學習者의 Schema가 課題成就 및 情報引出에 미치는 影響','高麗大學校',''),(70000000005166,'沈從文 文學의 鄕土意識 硏究','고려대학교',''),(70000000005167,'沈從文 文學의 鄕土意識 硏究','고려대학교',''),(70000000005173,'러시아 나로드니끼 운동으로서의 학생운동','고려대학교',''),(70000000005177,'촉매로서 Silver oxide를 사용한 Serine의 Side chain protection','高麗大學校',''),(70000000005179,'Improved THM에 의한 Hg₁  Cd Te단결정 생장','高麗大學校',''),(70000000005181,'Solvent effect on peroxyoxalate chemiluminescence of fluorescent aromatic hydrocarbons','高麗大學校',''),(70000000005183,'영어학습자 오류와 제2언어습득 과정의 이해','高麗大學敎',''),(70000000005185,'중앙격자 양말단에 서로다른 메소겐기가 달린 새로운 화합물의 합성 및 액정성에 관한 연구','高麗大學校',''),(70000000005189,'NMR study of   Cl in K₂CuCl₄·2H₂O','高麗大學校',''),(70000000005191,'새로운 직접 축합 중합법에 의한 방향족 폴리케톤의 합성과 성질에 관한 연구','고려대학교',''),(70000000005194,'丁玲 初期의 作家意識變化 硏究','高麗大學校',''),(70000000005196,'歷史的 理解에 對한 硏究','高麗大學校',''),(70000000005198,'韓國改新敎 受容에 關한 一硏究','高麗大學校',''),(70000000005200,'周期的인 圓柱型 障碍物이 있는 덕트 流動 및 熱傳達의 非直交 座標變換에 의한 解析','高麗大學校',''),(70000000005202,'인덕터 電動機의 쉐이딩角과 쉐이딩齒數 設計에 관한 硏究','高麗大學校',''),(70000000005204,'Zn-Ni合金鍍金에 關한 速度論的인 硏究','高麗大學校',''),(70000000005206,'서술보문구조에 대한 연구','高麗大學校',''),(70000000005208,'英語 複合名詞의 分析','高麗大學校',''),(70000000005212,'金融革新과 通貨指標','高麗大學校',''),(70000000005214,'韓國語 單母音의 性別·年齡別 特徵變化 및 認識에 關한 硏究','高麗大學校',''),(70000000004676,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004678,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004680,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004682,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004684,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004686,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004688,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004690,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004692,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004694,'오성식 생활 영어 SOS 7200','고려원',''),(70000000004697,'태백','태백시',''),(70000000004699,'영어의 콧대를 꺾어라 [녹음자료]','민병철생활영어사',''),(70000000004701,'영어의 콧대를 꺾어라 [녹음자료]','민병철생활영어사',''),(70000000004703,'영어의 콧대를 꺾어라 [녹음자료]','민병철생활영어사',''),(70000000004705,'영어의 콧대를 꺾어라 [녹음자료]','민병철생활영어사',''),(70000000004707,'영어의 콧대를 꺾어라 [녹음자료]','민병철생활영어사',''),(70000000004711,'충청도 아줌마 육영수의 \"그분 이야기\"\" [녹음자료]\"','조선일보사',''),(70000000004713,'육성으로 듣는 영어 명연설 [녹음자료]','조선일보사',''),(70000000009013,'C프로그램 분석을 위한 시스템 설계 및 구현','東國大學校',''),(70000000008351,'中間報告에 關한 硏究','梨花女子大學校',''),(70000000008353,'음절훈련과 낱말훈련이 청각장애아의 조음에 미치는 영향에 관한 일 연구','梨花女子大學校',''),(70000000008357,'시험불안 감소를 위한 인지행동적 집단상담의 효과에 관한 연구','梨花女子大學校',''),(70000000008359,'過剩 行動兒 判別尺度 構成을 위한 豫備的 硏究','梨花女子大學校',''),(70000000008361,'부모-자녀간의 대인관계 유사성에 관한 연구','이화여자대학교',''),(70000000008367,'한국 개신교의 성장과정에 나타난 제도화의 특성에 관한 연구','이화여자대학교',''),(70000000008369,'한국 교회설교의 효과적인 전달과정에 대한 연구','중앙대학교',''),(70000000009228,'韓國軍의 停年制度에 관한 硏究','東國大學校',''),(70000000009230,'韓國의 資源備蓄行政에 關한 硏究','東國大學校',''),(70000000009236,'靑少年非行의 原因과 豫防對策에 關한 硏究','東國大學校',''),(70000000009238,'韓國防衛産業에 關한 硏究','東國大學校',''),(70000000009240,'韓國의 兵役人事 制度에 관한 硏究','東國大學校',''),(70000000009244,'飛行安全管理에 關한 硏究','東國大學校',''),(70000000009246,'不動産仲介業의 早期定着을 위한 現實化 方案','東國大學校',''),(70000000009248,'工場建物의 鑑定評價에 관한 硏究','東國大學校',''),(70000000009250,'不動産仲介業 實態調査에 관한 硏究','東國大學校',''),(70000000009252,'特別賠償審議會 制度에 關한 硏究','東國大學校',''),(70000000008572,'서울市 都市再開發事業施行節次에 관한 硏究','檀國大學校',''),(70000000008574,'韓國의 棄·迷兒 兒童福祉에 관한 硏究','檀國大學校',''),(70000000008576,'韓國老人福祉의 沮害要因과 改善方案에 관한 硏究','檀國大學校',''),(70000000008578,'地方政府의 財政自立 確立에 관한 硏究','檀國大學校',''),(70000000008580,'地方財政調整制度改善方向에 관한 硏究','檀國大學校',''),(70000000008582,'團體協約에 관한 硏究','檀國大學校',''),(70000000008584,'敎育可能  精神遲滯兒의 社會眺望 發達硏究','檀國大學敎',''),(70000000014300,'새마을指導者와 그 後繼者 養成에 關한 硏究','대구대학교',''),(70000000014301,'새마을指導者와 그 後繼者 養成에 關한 硏究','대구대학교',''),(70000000014307,'韓國의 勤勞者財産形成政策에 관한 硏究','대구대학교',''),(70000000014309,'靑果物의 流通構造에 관한 硏究','대구대학교',''),(70000000014312,'株式會社의 理事의 責任에 關한 硏究','대구대학교',''),(70000000014313,'株式會社의 理事의 責任에 關한 硏究','대구대학교',''),(70000000014315,'韓國勞使協議制度의 運營에 관한 實證的 硏究','대구대학교',''),(70000000014316,'韓國勞使協議制度의 運營에 관한 實證的 硏究','대구대학교',''),(70000000014318,'韓國 高齡勞動力 活用에 關한 硏究','大邱大學校',''),(70000000014319,'韓國 高齡勞動力 活用에 關한 硏究','大邱大學校',''),(70000000014321,'韓國 高齡勞動力 活用에 關한 硏究','大邱大學校',''),(70000000014324,'醫療保險의 現況과 發展方案에 관한 硏究','대구대학교',''),(70000000014326,'醫療保險의 現況과 發展方案에 관한 硏究','대구대학교',''),(70000000014328,'醫療保險의 現況과 發展方案에 관한 硏究','대구대학교',''),(70000000014330,'우리나라 保護處分少年의 效率的 善導方案','대구대학교',''),(70000000014334,'效率的인 DSS 開發接近法에 관한 硏究','대구대학교',''),(70000000014903,'育兒施設兒童의 性格特性 分析을 通한 生活指導 改善方案','대구대학교',''),(70000000014904,'育兒施設兒童의 性格特性 分析을 通한 生活指導 改善方案','대구대학교',''),(70000000014906,'品質管理分任組活動의 影響要因에 關한 硏究','대구대학교',''),(70000000014908,'品質管理分任組活動의 影響要因에 關한 硏究','대구대학교',''),(70000000014909,'品質管理分任組活動의 影響要因에 關한 硏究','대구대학교',''),(70000000014910,'品質管理分任組活動의 影響要因에 關한 硏究','대구대학교',''),(70000000008001,'軍 精神敎育의 史的 考察','中央大學校',''),(70000000008003,'韓國의 停年制와 老後 所得保障에 關한 硏究','中央大學敎',''),(70000000008005,'Reinhold Niebuhr의 社會倫理에 관한 考察','中央大學敎',''),(70000000008007,'東學의 民衆敎育思想硏究=(A)Historical study on popular educational thought in Donghak movement','中央大學校',''),(70000000008013,'초음파 분무법으로 제작된 In₂O₃: Sn막의 전기적 특성','중앙대학교',''),(1,'이것이리눅스다','한빛미디어','111-111');
/*!40000 ALTER TABLE `tbl_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10 11:44:42
