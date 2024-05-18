-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cafe
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bahan`
--

DROP TABLE IF EXISTS `bahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bahan` (
  `idBahan` varchar(36) NOT NULL DEFAULT uuid(),
  `nama` varchar(255) NOT NULL,
  `stok` int(11) DEFAULT 0 CHECK (`stok` >= 0),
  PRIMARY KEY (`idBahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bahan`
--

LOCK TABLES `bahan` WRITE;
/*!40000 ALTER TABLE `bahan` DISABLE KEYS */;
INSERT INTO `bahan` VALUES
('0057325f-292a-4af9-b417-2905defe9513','Daun Sambung Nyawa',580),
('012eb71a-54b8-4049-9858-b5b54214f40f','Daun Cabe',992),
('01dfb6b5-e9ea-4513-a024-28b3db5af7de','Kecombrang',717),
('027fc1a3-9d1e-4503-90b7-7f546d6d9fe2','Daun Pohpohan',614),
('03983bea-4b88-410a-b664-5a8ff81607e6','Daun Cocor Bebek',472),
('03d45628-f69f-4f5a-87a3-5f02d4b1043c','Daun Kunyit',841),
('05424415-9f69-4619-b4f3-2ba5ee060705','Sirup Teh Hijau',995),
('05509094-9953-43fe-9b24-29e146011d71','Daun Binahong',139),
('0604ccdf-aee2-4861-a988-2c1df2036313','Daun Landep',965),
('06518ef7-f6fc-4aac-8f5d-24beee8de770','Sirup Gula',511),
('0662574e-7121-4618-aa6f-52e6e70fdbb1','Bayam',480),
('06a53e3f-f37a-45ac-a3ae-9b410236e865','Daun Turi',197),
('0890fc60-1986-4457-8f2f-a4ba7997b47d','Sirup Nangka',810),
('0997645f-6094-4160-ac8a-f41f2780defc','Strawberry',622),
('09d1f636-9436-4cbb-8bf5-e7f6cc7779b7','Daun Sambiloto',529),
('0e8ede2d-d154-4a4d-a0c9-918c05a144c7','Daun Dewa',146),
('0f445587-fe3d-4a01-be0d-30f589b980cc','Cabe Hijau',826),
('0f940b58-7437-48ab-9581-c6bbca7fd70b','Labu Siam',664),
('10e403cd-b451-4ae1-8c83-323a22328116','Daun Pinang',595),
('10f2190d-af72-4689-aec5-a50709e7d0f8','Daging Sapi',275),
('114795bd-1f61-4809-90f2-c7a0b0968865','Daun Tarum',212),
('119f9603-6439-4898-ac0b-4f5fa26c3d6d','Daun Sonchus Arvensis',86),
('12b1cd2b-ab05-44dc-a145-1cf8a2739a8b','Sirup Kurma',737),
('1371c8fb-3c1f-42d2-a11b-d62780cdc276','Daun Sirih',939),
('153d39a1-5bc5-4f36-b125-825761f77e73','Cabe Rawit',587),
('1583ad7b-ea51-4add-8637-a1007bf51031','Saus Tomat',529),
('163adf4a-be58-4512-b815-2dc73d82cd4e','Kencur',336),
('17fcc641-8f31-41a8-b1d9-109c05584ebb','Bawang Putih',827),
('1801b852-89ec-4c85-b464-624af180f5a9','Gula Aren',620),
('18fdd56e-3fc9-4709-9ed2-54c8e1d17c74','Daun Mangkokan',647),
('1a21aead-14bd-4eda-96dd-58a0c46a287f','Bawang Merah',429),
('1cc6efec-b77a-44f0-aafd-01b32c7d6e19','Daun Pegagan',182),
('1df841bf-bded-4d4f-b495-84a7e3c77098','Daun Ungu',444),
('1e36a180-d375-4add-9a67-e407317c930d','Belimbing',456),
('20687349-e602-4b25-b5b5-0dd522008b40','Daun Pakis',196),
('207d911d-6d0c-422d-b223-098b397dea61','Gula Merah',552),
('20b8a498-4278-46e3-8d43-6c54c6b09e93','Sirup Markisa',206),
('217be770-7f65-4f07-905c-1d2d07e2a923','Daun Tapak Liman',34),
('22e95e21-05ec-467d-925b-6cf77733aed0','Daun Waluh',77),
('2358258e-3ecd-4fb3-9d33-5dc2483d04e1','Cincau',381),
('2364a880-237b-40cc-b853-0612f543187d','Nanas',421),
('24d1a487-0c4f-4c6d-8f2f-ef7b41c80d13','Ikan',954),
('25358cc6-58e2-4f3e-8fd4-05748407897e','Cabe Merah',335),
('2580967c-8197-49a8-bb7e-a0d94c60eb04','Kopi',565),
('25cf4e64-2b92-424f-815e-6dcf0fafdc6a','Sirup Coklat',319),
('28f4c68c-185f-4c6e-8df6-c9433b91d21b','Daun Jarak',677),
('29e50409-0e92-4a0d-aab0-82c5492d8ee4','Sirup Lemon',558),
('2ac78efb-8f58-4369-a370-d8306c18ee78','Sirup Melon',399),
('2bdb4d43-b2bd-4c46-8c7c-4612460e8e67','Kecap',491),
('2f3570b3-a8a9-4b52-91a0-303d6b536cdd','Daun Tomat',585),
('2f63135d-d9c6-414d-8cf7-8f9051877f66','Sirup Sirsak',781),
('309b94d9-3905-414d-857c-21aa7f0d978b','Daun Kayu Manis',266),
('32d1ac25-e269-4a5f-8394-0fc875de59af','Daun Terong',56),
('33397476-d89a-42e6-89ea-c17c74765c1c','Telur Ayam',214),
('34879c56-7f08-4d08-943e-e99548d1d144','Daun Sereh',883),
('34b600bb-5d86-412f-9b81-27149cef50e8','Minyak Goreng',510),
('36b9f131-5fb3-4413-a58b-1ab79782a562','Pepaya',713),
('398ffc49-f86b-495b-b2dd-9725bd6c2f14','Daun Gata',763),
('3a96c73e-8540-4e7c-af72-98f2e67fa8a4','Apel',454),
('3cc0716f-27ee-4741-b66e-5e41e71a4bdd','Daun Salam',247),
('3d2897ef-9cda-4a25-8fbd-96da562b8bfe','Daun Jati',632),
('3e5d5771-7b02-45bf-8c26-cddf3a334f85','Tahu',480),
('3ee5c445-5015-411e-ac3e-ab04e47d0934','Lontong',940),
('3f1f416f-7f7d-4e05-a773-d03a4f5e381d','Daun Srikaya',334),
('436a013d-291d-4d0f-9e2d-3943787d4281','Sirup Anggur',207),
('45b6bb1a-726a-451a-a0eb-2f2ff79d5cc7','Daun Bandotan',486),
('46093512-8a5d-477b-a7c0-0136bfa61720','Daun Alang Alang',33),
('4657ee8a-7a39-4ba3-9217-3b69c705af91','Saus Sambal',691),
('4c18d44b-775e-44cb-88c0-d18ce6ab5026','Sambal',464),
('4c9f17b2-7a29-412b-8f47-485ff6507d22','Daun Pepaya',835),
('4ed88b4c-de2f-4e3a-9ce8-15a7405cdfdf','Jeruk Nipis',934),
('519ff2eb-c0f1-497c-934a-c3dda1670b0d','Daun Kari',336),
('525459fb-3fad-4372-bb0e-7f7fea5867db','Sawi',771),
('52f89a40-7cf6-4e7f-a8cb-10a1cb391468','Daun Kelor',223),
('5539623b-eee1-4d75-aa2e-1638d3b3187f','Ayam',186),
('599b5369-06f4-451f-8794-fb964c2d758e','Kacang Kedelai',678),
('5a7e4089-bc38-40c2-b2ec-d7374c2695f0','Telur',814),
('5aae8d7c-b658-41c4-894b-09c22ef2ac57','Kurma',838),
('5ac50509-09c1-4e11-b95a-3d68ec2735ec','Sirup Kiwi',518),
('5b700f05-c3e8-4712-9cd1-aa9c2c446114','Kunyit Asam',830),
('5e8a1b60-6b4e-4fcc-ae91-2989d5853ba6','Telur Bebek',222),
('5fe74e2a-aede-42ec-bc93-c36f4ed81bb1','Daun Sirih Merah',919),
('6192c6b7-8caf-41e6-af08-cee32f5ed282','Daun Buah Pepaya',757),
('6222c6f7-c50d-4c15-8ead-0734e26fbb1d','Daun Talas',981),
('68dcd0c1-d094-4210-874e-b0fdcfd43139','Sirup Apel',734),
('69b6e7f3-c941-42ce-aea7-4fedbd511e2f','Daun Jombang',814),
('6acdf270-929f-4aad-8801-388782c2e24d','Sirup Vanila',691),
('6b99cc8f-d30b-4f08-9db5-16941b61b77c','Daun Gedi',350),
('6cd515ef-73b7-45c3-b1d1-3f5d4b7bf617','Daun Kemangi',839),
('6dec189f-bf8b-4322-85fa-fed9baba4f50','Durian',460),
('6f69cf57-b05e-4d81-92e1-ebd64687d800','Leci',306),
('6ff771a7-4e20-478b-a19b-fd61f284064e','Daun Singkong',746),
('70648825-68ae-48c8-a318-09d531ffefcd','Daging Ayam',287),
('71a8f783-6605-46cb-b558-859d9ba1724a','Kecambah',771),
('7217bac6-958f-4f8b-bf06-ee10c566fdd8','Kacang Tanah',312),
('75ef119a-bdf7-4ebd-b86f-02c98a97d54d','Sari Kurma',419),
('78816608-d00f-4fe6-8d6a-4646f0e7efcb','Daun Ki Hujan',527),
('78cdd727-b30d-481d-b333-228600f122a0','Kayu Manis',36),
('79c8b1d1-8d8e-430c-b64d-58316472f2e6','Ketupat',709),
('7cccba12-cbc0-426f-9f5c-8b8c97a80dbe','Daun Rumput Fatimah',54),
('7e2d4556-d25f-4ff8-8a48-12c79f6c350a','Daun Asam Jawa',304),
('7e35eb04-2f66-4a87-a93b-5ac92f510bfa','Sirup Mangga',118),
('80b5c09c-d7d5-4fd1-9f2b-1fc9bb7345e5','Raspberry',749),
('82c1e4cc-e8aa-4af4-b28f-35e2f667af67','Air Kelapa',469),
('83823bab-5614-4e0e-b471-e93717d04ea8','Daun Kates',321),
('83a0cb18-0f81-447a-aba4-163f25605dc7','Daun Ketumbar',143),
('858b9aca-cc9c-49e0-99c0-236fb14c0f6d','Santan',662),
('85cd32a1-26c5-4f56-be17-19653157b6b7','Kacang Hijau',595),
('86253d3f-4096-45ae-9f6c-35dbd3392da8','Kerang',746),
('86371b81-f0b0-406d-b219-6f864dbe35fb','Daun Blimbing Wuluh',403),
('86ebc034-0211-4cc1-bc67-bd8942866b6d','Daun Legundi',766),
('8ac0fbff-3052-45a0-81b6-ad40b3baa4fd','Sirup Teh',810),
('8b1c14ae-6512-4e20-9b3c-e9e714e647c7','Bihun',276),
('8edc4e53-7763-407b-92c6-5b38c282e31d','Daun Subang',295),
('8f4cd933-35fd-4e85-af33-574ef1e47cff','Jeruk Bali',345),
('8f75fa98-8a6b-4554-b240-522889e5ffc6','Blueberry',747),
('90168770-789b-4e0b-af83-b753e1d13ad6','Daun Kumis Kucing',770),
('920eb59a-67fc-4413-90b1-019e90e2032a','Daun Waru',286),
('93301aa4-3ade-425b-aece-c62c8ab21c58','Markisa',305),
('96bc9e53-135a-4ebc-bb0c-95593bfaa4d5','Daun Putri Malu',366),
('9868620b-3df6-4c11-8583-82de396ada01','Sirup Tarik',550),
('9aeffcb1-e817-48ae-baa1-652af887e8ae','Daun Suruhan',388),
('9b2aecca-e10a-408f-a21c-88573fa30907','Kunyit',993),
('9bff35f4-f968-459f-bcdf-26bebc661f86','Nangka Muda',425),
('9cb3bd5b-3c6d-4841-9f2b-0064420987ff','Kedondong',788),
('9da6259d-79a0-4aa8-9072-eaaae97a8778','Asam Jawa',427),
('a2699a46-acf7-4175-b498-c3835f0a891e','Sirsak',520),
('a31d44f9-42ec-4ac1-b0e1-111c927cc10a','Daun Kencur',346),
('a44225d4-092a-4f41-b2b6-90f0fd6aefea','Kecap Manis',863),
('a4483ffc-dd5a-4063-aed3-6aa3f784147d','Jahe',562),
('a52055c2-35ac-48e7-9c54-7b255b2db82b','Kerupuk',705),
('a5c02ea7-e4bc-4abc-ad78-ee4212f5a817','Daun Mint',252),
('a6b24f56-88fa-4134-8bc9-6003b46886ba','Jeruk',459),
('a708d3fc-534a-4017-aae7-d7cdcbcefe46','Sirup Nata De Coco',170),
('a718b7a3-fec8-40e2-a40c-bce7353bcc91','Daun Lemongrass',368),
('a8a2fa4a-c814-4b02-a1f8-210e6392a5fc','Daun Cengkeh',315),
('a9c82af6-8ef6-4ace-886b-109dff5c7fca','Daun Melinjo',454),
('a9c862a6-ed45-4711-be13-debb000f5298','Daun Beluntas',919),
('ac458fdc-b636-488a-9e48-d7e4b7283ca4','Daun Kesum',467),
('ad80726c-ea65-4950-a207-72ecba585a25','Anggur',915),
('affbc8d1-4502-4158-88a7-bbff1fda8b54','Sirup Mocha',711),
('b0cd27aa-6d28-498c-a7eb-4c2dc8f58f2b','Daun Lempuyang',251),
('b0fb55db-c270-4f09-bd97-95a5c3e50041','Jagung',129),
('b57b9035-0c54-44ea-bec1-f42bba61f9e6','Daun Serai',506),
('b5ec4360-0279-4ff7-b612-07acde068f23','Daun Gadung',128),
('b86d8d0e-4d4c-45b5-a019-f43bf67a48c0','Pisang',553),
('b88c7853-6c64-4cb5-94c0-52ee8b16b31d','Daun Daun',364),
('b9744bc5-fdf7-443c-868d-a697f4f118d0','Daun Katuk',404),
('b9846cd8-bf68-4b77-91da-8f292bd7817b','Daun Jeruk',307),
('bc23e969-10b5-4f20-a61b-33215c7449f4','Sirup Buah',118),
('bccf9ce3-e8a2-4901-ac0d-e1dd07396edd','Bawang Goreng',53),
('bef42f0b-b7bd-424a-96b8-b7102dc6e296','Susu',560),
('bfe5d6e9-9ef4-4c9b-8d63-0bc9f9a4cbaf','Teh',178),
('bfed071a-56b8-4482-a131-9475fd91b4a9','Beras',499),
('c0f8c738-da4f-4afd-85ff-9ccb2ca10c75','Cumi',145),
('c17f22bb-206e-4fa4-8913-5bb09c6ef401','Daun Kenikir',885),
('c1e1785a-6ec4-40e1-bb6b-73c667e7ad3f','Nangka',748),
('c20c810d-1615-4a28-b247-499d2c9a7f13','Melon',189),
('c3446b7e-a4e5-4193-acca-78900597193a','Ketimun',317),
('c54b6ff2-e5c4-42fd-bc09-3b961b8a07ed','Kluwek',993),
('c5b8b621-e535-4d3d-88f1-187c3d5c381c','Kacang Panjang',249),
('c5d2e404-12db-4b1a-a8fa-bf9c45ff7bd6','Daun Papaya',833),
('c6a8e502-2cc1-4e96-9b7c-34f2cd8d81f8','Bengkuang',881),
('c6be03c9-c673-4b4e-8ca7-8cb24795e265','Wortel',289),
('c89ffe72-1b8c-4fcb-92aa-bb8b488864a3','Daun Meniran',156),
('c94c553f-1b1d-4c80-a4d5-03d1b28681e7','Daun Mimba',21),
('ca5039a0-6316-4a4a-b946-34f4382dd398','Sirup Blueberry',598),
('cbd4e910-45d1-488f-9c62-fec9d725c2f4','Kol',232),
('cc12008d-1100-4348-9dc2-296d8064c2fa','Daun Temurui',718),
('cd10ae69-8a73-40a3-a1da-21b249ab27ca','Daun Rambutan',584),
('ce40e6a3-f7ae-4cf6-987e-5f542e0e84c4','Mangga',268),
('cecaf644-eb70-49d3-8b0d-ebfcead10ca3','Daun Wungu',565),
('cf4abeff-05e7-469c-8fa4-894d8ac894dc','Saus Tiram',786),
('d05eff1a-cdd8-43ea-b8cb-27ca4cbe3412','Daun Lemon',595),
('d234f18c-8bb5-4563-b57a-59ee02499ba3','Daun Kecipir',56),
('d4661bfb-c24d-4ae2-9118-62856d94a176','Jeruk Limau',785),
('d472f189-e0d1-437b-a268-767a3ad4697b','Daun Jambu Biji',506),
('d6b53391-c986-44e9-846c-baa793c2533e','Daun Brotowali',496),
('d7a54b7b-0798-4ee8-8024-195801ad524d','Mie',947),
('d7addbc0-b96f-4481-8593-fd7d06541943','Daun Nangka',187),
('d7fab420-06ff-4946-a2ca-97ccade90dd0','Sirup Matcha',56),
('d8512e3a-0301-42a3-bf06-1f0c9858b8cc','Soda',438),
('d8a32c93-d334-4b2b-a6c5-029e150224be','Daun Jahe',821),
('db401933-7fb6-4c10-ac26-4720138c085e','Daun Paitan',390),
('dc887c48-f5df-4487-81eb-6019d7acb621','Garam',598),
('de569ac0-e492-40c7-be66-b92ee9d887e8','Sosis',68),
('decf1570-d458-4162-a6c5-7ca857daac85','Kelapa Muda',838),
('e05fc481-046f-4714-862d-465d6a9d225c','Susu Kedelai',366),
('e0defcbb-e73e-4de7-95dd-2a702789a6c6','Daun Sidaguri',66),
('e1f402d4-e374-491a-bf88-fd3694e8da1f','Daun Semambu',69),
('e3450d4f-f6d4-4a35-be7e-6e8dd5b29a6c','Sirup Leci',408),
('e3bce094-1471-4444-806e-d717bb8bd02a','Tauge',544),
('e5e26024-5a37-48bb-915c-a7841d7ad278','Timun Suri',5),
('e63ba894-cf38-4bf4-a6f7-1af9c0f9f79b','Jeruk Manis',262),
('e7976bf5-1dc3-4a38-a8f3-5c22178de0f4','Air',390),
('e7e48f46-568e-4691-b094-1a70de95ce96','Sirup Jeruk',941),
('ecd39d6b-feed-47ae-a5bd-59d166039010','Daun Gandarusa',530),
('ee75a144-0cfb-4f12-8b54-9b1f98824558','Kiwi',915),
('ef222d3c-c525-427d-aa50-b560ff3165eb','Daun Pacar Air',589),
('f0319171-7aad-485b-918e-d2af135d96e3','Kismis',475),
('f1e88a14-fb0d-4594-a7ec-bf768fcd0ab6','Sirup Stroberi',912),
('f2b2fab0-0662-478b-b6b7-37a17494e95e','Daun Lembayung',255),
('f33988d0-d9d4-45e5-a371-91e173d64c7b','Tempe',95),
('f47892c1-c811-4d21-9471-a6156dea1b39','Daun Kaki Kuda',343),
('f50c0b6b-5746-45e3-9556-9a1f8aebbdc0','Daun Miana',157),
('f54b5900-b092-4994-85ee-496a4bf94f50','Cengkeh',132),
('f608f8ac-ef18-45d0-91ef-85851be0cd0e','Daun Pisang',328),
('f61f8520-7ba3-455c-b903-afb82d98fd26','Lada',480),
('f8e04a74-d16b-4b86-8e3b-91695d6dc6f1','Daun Pandan',664),
('f9d87f5f-6c8e-4697-8432-83704c1adae5','Daun Bayam',979),
('fae57b91-ed09-49e4-8aa6-ad36e4e15cc0','Susu Almond',469),
('fc1a89bf-ad0b-4e95-badc-9dfca2b8d74d','Daun Wijayakusuma',623),
('fda354ec-d159-4cc1-8876-c00c619f377f','Nasi',983),
('fdd040fc-036d-4339-9be9-48ffefa6c9be','Buah Naga',487),
('fe1e3675-5293-4f78-b218-c5973f806c76','Sirup Raspberry',979),
('febb5e41-589f-4207-b5cc-145c248ef431','Udang',801),
('ff637d52-1138-4f95-9f20-84fc7b70987b','Merica',620);
/*!40000 ALTER TABLE `bahan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckBahan_BeforeInsert BEFORE INSERT ON Bahan
FOR EACH ROW
BEGIN
    IF NEW.stok < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckBahan_BeforeUpdate BEFORE UPDATE ON Bahan
FOR EACH ROW
BEGIN
    IF NEW.stok < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bahanmenu`
--

DROP TABLE IF EXISTS `bahanmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bahanmenu` (
  `idMenu` varchar(36) NOT NULL,
  `idBahan` varchar(36) NOT NULL,
  `jumlah` int(11) NOT NULL CHECK (`jumlah` >= 0),
  PRIMARY KEY (`idMenu`,`idBahan`),
  KEY `idBahan` (`idBahan`),
  CONSTRAINT `bahanmenu_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`) ON DELETE CASCADE,
  CONSTRAINT `bahanmenu_ibfk_2` FOREIGN KEY (`idBahan`) REFERENCES `bahan` (`idBahan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bahanmenu`
--

LOCK TABLES `bahanmenu` WRITE;
/*!40000 ALTER TABLE `bahanmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bahanmenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckBahanMenu_BeforeInsert BEFORE INSERT ON BahanMenu
FOR EACH ROW
BEGIN
    IF NEW.jumlah < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckBahanMenu_BeforeUpdate BEFORE UPDATE ON BahanMenu
FOR EACH ROW
BEGIN
    IF NEW.jumlah < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detailtransaksi`
--

DROP TABLE IF EXISTS `detailtransaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailtransaksi` (
  `nomorTransaksi` varchar(36) NOT NULL,
  `idDetailTransaksi` varchar(36) NOT NULL DEFAULT uuid(),
  `kuantitas` int(11) NOT NULL CHECK (`kuantitas` >= 0),
  `idMenu` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`idDetailTransaksi`),
  KEY `nomorTransaksi` (`nomorTransaksi`),
  KEY `idMenu` (`idMenu`),
  CONSTRAINT `detailtransaksi_ibfk_1` FOREIGN KEY (`nomorTransaksi`) REFERENCES `transaksi` (`nomorTransaksi`) ON DELETE CASCADE,
  CONSTRAINT `detailtransaksi_ibfk_2` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailtransaksi`
--

LOCK TABLES `detailtransaksi` WRITE;
/*!40000 ALTER TABLE `detailtransaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailtransaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckStockBahanEnough BEFORE INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE v_stock INT;
    DECLARE v_jumlah INT;

    
    SELECT B.stok, BM.jumlah
    INTO v_stock, v_jumlah
    FROM Bahan B
    JOIN BahanMenu BM ON B.idBahan = BM.idBahan
    WHERE BM.idMenu = NEW.idMenu;

    
    IF v_stock < NEW.kuantitas * v_jumlah THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough stock for this transaction';
    ELSE
        
        UPDATE Bahan
        SET stok = stok - (NEW.kuantitas * v_jumlah)
        WHERE idBahan = (SELECT idBahan FROM BahanMenu WHERE idMenu = NEW.idMenu);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckDetailTransaksi_BeforeInsert BEFORE INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    IF NEW.kuantitas < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Kuantitas harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER UpdateTotalHarga AFTER INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE v_total INT;
    SELECT SUM(Menu.harga * NEW.kuantitas)
    INTO v_total
    FROM Menu
    WHERE Menu.idMenu = NEW.idMenu;
    
    UPDATE Transaksi SET totalHarga = v_total WHERE nomorTransaksi = NEW.nomorTransaksi;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckDetailTransaksi_BeforeUpdate BEFORE UPDATE ON DetailTransaksi
FOR EACH ROW
BEGIN
    IF NEW.kuantitas < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Kuantitas harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `idFeedback` varchar(36) NOT NULL,
  `waktuFeedback` datetime DEFAULT current_timestamp(),
  `ratingPelayanan` int(11) DEFAULT NULL CHECK (`ratingPelayanan` >= 0 and `ratingPelayanan` <= 5),
  `ratingKebersihan` int(11) DEFAULT NULL CHECK (`ratingKebersihan` >= 0 and `ratingKebersihan` <= 5),
  `komentar` varchar(255) DEFAULT NULL,
  `ratingMenuOverall` float DEFAULT NULL CHECK (`ratingMenuOverall` >= 0 and `ratingMenuOverall` <= 5),
  PRIMARY KEY (`idFeedback`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`idFeedback`) REFERENCES `transaksi` (`nomorTransaksi`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckFeedback_BeforeInsert BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan < 0 OR NEW.ratingPelayanan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingKebersihan < 0 OR NEW.ratingKebersihan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Kebersihan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingMenuOverall < 0 OR NEW.ratingMenuOverall > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Menu Overall harus di antara 0 dan 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckFeedbackRatingBeforeInsert BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan = 5 AND NEW.ratingKebersihan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckFeedback_BeforeUpdate BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan < 0 OR NEW.ratingPelayanan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingKebersihan < 0 OR NEW.ratingKebersihan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Kebersihan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingMenuOverall < 0 OR NEW.ratingMenuOverall > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Menu Overall harus di antara 0 dan 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PreventInvalidUpdateFeedbackBeforeUpdate
BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.waktuFeedback < OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback';
    END IF;
    IF NEW.waktuFeedback >= OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `makanan`
--

DROP TABLE IF EXISTS `makanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makanan` (
  `idMenu` varchar(36) NOT NULL,
  `tingkatKepedasan` int(11) DEFAULT 0 CHECK (`tingkatKepedasan` >= 0 and `tingkatKepedasan` <= 5),
  PRIMARY KEY (`idMenu`),
  CONSTRAINT `makanan_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makanan`
--

LOCK TABLES `makanan` WRITE;
/*!40000 ALTER TABLE `makanan` DISABLE KEYS */;
INSERT INTO `makanan` VALUES
('0347f58e-4208-4af4-b68f-9f4ea8a0d1a3',0),
('088ec400-a08d-4604-88c7-a3114cfcff3c',0),
('0af79dc3-0436-4e01-8d80-0796d5ec8e2d',0),
('19b7126a-fa46-4d1d-9133-08595acb13a0',0),
('1e797e49-cdaf-46f9-b59f-cc0f7b439d0f',0),
('219c1103-17bb-4862-89e7-b8097df5d7a9',0),
('2529e4c4-7693-450c-8968-e92a71f8090d',0),
('2ff5aac5-f0fa-4083-84ee-9d467746afe4',0),
('316b1f97-9317-4eb7-b749-0716026bf069',0),
('40602dcb-a248-4828-b479-57501b858a41',0),
('449ee15e-ce30-4937-b28b-4ade24300850',0),
('47cc72ea-5c0a-476e-b85a-2254f47e56cc',0),
('4d8ad1ef-8238-48e5-afdd-9d0f4936f957',0),
('4fe54b9d-228a-48db-8430-3181d0014c20',0),
('506d5266-95c2-4d51-a1ce-e1e7c3d4a9dc',0),
('535c754b-6d5f-4eee-b98c-45291a7f3080',0),
('5e810ec1-2e56-4c6e-94aa-f435a32297a7',0),
('5ec44f25-04dd-4d36-a351-0d25b80cb03a',0),
('628cc702-d9c6-4347-87c8-772ee0be49d7',0),
('64c8f6ae-3e88-4edf-926e-821ca919f71e',0),
('6a7ccd37-5bc4-4f44-b59f-65604d53c7c6',0),
('6dd6c44c-f54d-4296-ae40-8464fc0a9046',0),
('710d21b5-f3c7-4b4e-a7c6-647002663291',0),
('7215c764-6975-43bb-afcf-264ad50da5ec',0),
('72442079-f2ca-4ade-8a29-0606227f14fc',0),
('788b183d-6b3e-4c11-ac74-1d9ee0cffbc8',0),
('7df20049-3fca-4c8a-ac7a-8277f7cbac18',0),
('8173d111-2a80-4345-89ca-4f3a41a88dff',0),
('83835132-9c37-4e46-b93d-7c42d3b3147a',0),
('843b0f19-1dce-4b68-a538-94321e4e8a60',0),
('905a31bd-5e4b-40d2-b681-bd8f4284a626',0),
('90a33bcd-bc42-42c9-a84d-74ab66e6cb7c',0),
('98db6eab-1f9c-46ec-8dd4-37e01289b32f',0),
('9b6b9466-584a-4247-aeaf-958883e92f94',0),
('9e4ade1f-a289-48dd-bffa-04c1c4167a8c',0),
('9fbe01cf-63f8-4b57-b009-4127c7ae6c40',0),
('a5580261-d710-4038-b157-0f1107439cb1',0),
('a8c61f39-5077-4ac5-830b-188a3e1ea913',0),
('b3934444-83c2-45c1-90f6-8ce23fe2c31f',0),
('b4471cd9-c33b-4faa-90cf-60cc34321dca',0),
('bc94d32d-3674-4223-9855-02d7a1039c1b',0),
('be6a3454-131c-44e7-8a8d-ec9092782f74',0),
('be8aea0d-0bc8-4503-8d01-fe6d06b4f0f2',0),
('c33219f2-9ac3-4785-a043-7387a1482dab',0),
('c79e3b58-09d1-4d4c-97ce-91d7194892cf',0),
('da821254-ad9e-4daa-9328-92cbbedcbb51',0),
('dd9d3d87-4a94-46c2-af66-2d0cfb61f550',0),
('e15da438-f819-4afa-a847-b59f58d1b1bd',0),
('e2f04709-d84c-42b4-bbb5-6505e9855d6d',0),
('e3fa05b2-292d-4239-b158-ceabb7801275',0),
('e98e2e2e-33a0-40b9-83f7-0b7290b548c7',0),
('ef50cb17-e81f-4cb3-96c6-c29874fe5c0c',0),
('f3edcaa2-5624-4014-a182-875db328426e',0),
('f7eb9a91-2665-4d33-b881-f0503bef2873',0),
('f9e48afc-a619-45cb-92a9-2808723d3cad',0),
('fe8aa3d0-7596-4dfe-9997-e9f8d4b16398',0);
/*!40000 ALTER TABLE `makanan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckMakanan_BeforeInsert BEFORE INSERT ON Makanan
FOR EACH ROW
BEGIN
    IF NEW.tingkatKepedasan < 0 OR NEW.tingkatKepedasan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tingkat Kepedasan harus di antara 0 dan 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckMakanan_BeforeUpdate BEFORE UPDATE ON Makanan
FOR EACH ROW
BEGIN
    IF NEW.tingkatKepedasan < 0 OR NEW.tingkatKepedasan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tingkat Kepedasan harus di antara 0 dan 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `idMenu` varchar(36) NOT NULL DEFAULT uuid(),
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL CHECK (`harga` >= 0),
  `rating` float DEFAULT NULL CHECK (`rating` >= 0 and `rating` <= 5),
  `deskripsi` varchar(255) DEFAULT 'Deskripsi Menu Belum Tersedia',
  `tipe` enum('Makanan','Minuman') NOT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES
('0347f58e-4208-4af4-b68f-9f4ea8a0d1a3','Nasi Campur',468200,4.23,'Nasi dengan berbagai lauk seperti ayam, telur, tempe, tahu, dan sambal.','Makanan'),
('068d78d5-ae38-47ac-a21e-08a26d6ac168','Soda Gembira',21600,4.27,'Minuman soda dengan tambahan sirup dan es batu.','Minuman'),
('088ec400-a08d-4604-88c7-a3114cfcff3c','Nasi Uduk',506800,4.32,'Nasi yang dimasak dengan santan dan rempah, disajikan dengan lauk-pauk seperti ayam, tempe, dan sambal.','Makanan'),
('0af79dc3-0436-4e01-8d80-0796d5ec8e2d','Kroket',626200,4.29,'Makanan yang terbuat dari kentang yang dihaluskan dan digoreng dengan berbagai isian.','Makanan'),
('12a7159f-1e97-4120-bbf3-d25227a4a123','Teh Manis',31100,4.34,'Minuman teh dengan tambahan gula.','Minuman'),
('144612e7-14d9-4148-8ebe-3799c7f4d280','Es Teh',22400,4.1,'Minuman teh dingin dengan tambahan es batu dan gula.','Minuman'),
('199cd039-3a7e-4a3f-b5b2-305d79200260','Es Campur',23500,4.18,'Minuman es campur dengan tambahan berbagai buah, agar-agar, dan sirup.','Minuman'),
('19b7126a-fa46-4d1d-9133-08595acb13a0','Bubur Ayam',687500,4.26,'Bubur nasi dengan potongan ayam, bawang goreng, daun bawang, dan kerupuk.','Makanan'),
('19c6aa35-bcdb-4fe5-89c0-1e5988bd0b80','Wedang Uwuh',45800,4.22,'Minuman tradisional dengan campuran berbagai rempah seperti jahe, cengkeh, dan kayu manis.','Minuman'),
('1a5f691a-0e9b-4faa-975e-a4a7a0f06b61','Jus Nanas',49800,4.16,'Minuman jus nanas segar yang dicampur dengan air dan gula.','Minuman'),
('1e797e49-cdaf-46f9-b59f-cc0f7b439d0f','Gado-Gado',102800,4.32,'Sayuran segar seperti kacang panjang, tauge, bayam, dan ketimun dengan saus kacang khas Indonesia.','Makanan'),
('219c1103-17bb-4862-89e7-b8097df5d7a9','Nasi Goreng Jawa',768900,4.36,'Nasi yang digoreng dengan bumbu khas Jawa, disajikan dengan telur, ayam, dan kerupuk.','Makanan'),
('21a7384b-0952-4a63-bd31-1709f0dacb67','Susu Kurma',12800,4.34,'Minuman susu dengan tambahan ekstrak kurma.','Minuman'),
('23c8fc8e-41c3-43fe-a1c9-b735ab1ea702','Es Jeruk',47400,4.25,'Minuman jeruk segar dengan tambahan es batu dan gula.','Minuman'),
('24e2d25d-044e-4d84-abe9-b45921bbc78e','Es Cincau Hitam',6500,4.3,'Minuman es dengan tambahan cincau hitam dan sirup.','Minuman'),
('2529e4c4-7693-450c-8968-e92a71f8090d','Iga Bakar',708900,4.32,'Iga sapi yang dibakar dengan bumbu khas, disajikan dengan nasi dan sambal.','Makanan'),
('2b531f7b-68f5-402f-bf10-494ccf0d90f8','Jamu Beras Kencur',29600,4.29,'Minuman jamu dengan bahan utama beras kencur dan rempah-rempah.','Minuman'),
('2ff5aac5-f0fa-4083-84ee-9d467746afe4','Bubur Manado',689500,4.17,'Bubur nasi dengan berbagai lauk seperti ikan asin, telur, dan bawang goreng.','Makanan'),
('316b1f97-9317-4eb7-b749-0716026bf069','Soto Ayam',907100,4.25,'Sup ayam dengan kuah bening, disajikan dengan nasi, irisan telur, ketupat, dan bawang goreng.','Makanan'),
('3d0ec539-3526-426e-a127-3151c1f7e7ae','Teh Poci',39900,4.23,'Minuman teh yang disajikan dalam poci khas tradisional.','Minuman'),
('40602dcb-a248-4828-b479-57501b858a41','Mie Rebus',798000,4.29,'Mie yang direbus dengan kuah bening, disajikan dengan telur, sayuran, dan daging/ayam/udang.','Makanan'),
('4183c84c-b52d-44c1-a6d2-3f1cb3b577f2','Es Kopyor',28100,4.15,'Minuman es dengan tambahan daging kelapa muda dan santan.','Minuman'),
('449ee15e-ce30-4937-b28b-4ade24300850','Nasi Padang',975800,4.3,'Nasi dengan berbagai lauk khas Padang seperti rendang, gulai ayam, sambal, dan sayuran.','Makanan'),
('44af2a3a-c77e-4e89-8258-f382b5e152f6','Es Buah',23200,4.22,'Minuman es dengan tambahan potongan buah segar dan sirup.','Minuman'),
('45cf1229-0006-4c86-bb78-2fe6ec65d9b6','Wedang Secang',14100,4.24,'Minuman tradisional dengan bahan utama daun secang, gula aren, dan rempah.','Minuman'),
('47cc72ea-5c0a-476e-b85a-2254f47e56cc','Nasi Bakar',929600,4.3,'Nasi yang dibungkus daun pisang dan dipanggang, disajikan dengan lauk ayam/ikan, lalapan, dan sambal.','Makanan'),
('4944ceb7-eb60-4104-b738-0e94348cc594','Susu Kacang Hijau',27100,4.32,'Minuman susu dengan tambahan ekstrak kacang hijau.','Minuman'),
('4d8ad1ef-8238-48e5-afdd-9d0f4936f957','Sate Madura',344000,4.35,'Potongan daging/ayam yang dipanggang dengan bumbu kacang khas Madura, disajikan dengan ketupat.','Makanan'),
('4fe54b9d-228a-48db-8430-3181d0014c20','Kangkung Belacan',407300,4.35,'Sayuran kangkung yang disajikan dengan sambal belacan.','Makanan'),
('506d5266-95c2-4d51-a1ce-e1e7c3d4a9dc','Sate Lilit',732600,4.32,'Sate yang dibuat dengan cara melilitkan daging/ayam pada tusuk bambu, disajikan dengan sambal.','Makanan'),
('535c754b-6d5f-4eee-b98c-45291a7f3080','Pecel Lele',669000,4.31,'Lele goreng yang disajikan dengan sambal pecel, lalapan, dan nasi.','Makanan'),
('5e810ec1-2e56-4c6e-94aa-f435a32297a7','Capcay',815200,4.27,'Sayuran dan daging/ayam/udang yang diwok dengan bumbu-bumbu dan disajikan dengan nasi.','Makanan'),
('5ec44f25-04dd-4d36-a351-0d25b80cb03a','Nasi Timbel',434200,4.29,'Nasi yang dibungkus daun pisang, disajikan dengan lauk ayam/ikan, lalapan, dan sambal.','Makanan'),
('5ecb369d-bafd-46f0-bbe6-d21b9be9ad23','Teh Botol',22300,4.31,'Minuman teh kemasan botol dengan tambahan gula.','Minuman'),
('5fa63dc8-467b-4851-9fbf-322ce429e9d6','Es Krim',14200,4.33,'Minuman es krim dengan berbagai varian rasa.','Minuman'),
('628cc702-d9c6-4347-87c8-772ee0be49d7','Nasi Tumpeng',145300,4.24,'Nasi berbentuk kerucut dengan lauk ayam, telur, tahu, tempe, sambal, dan kerupuk.','Makanan'),
('64c8f6ae-3e88-4edf-926e-821ca919f71e','Bebek Goreng',953200,4.39,'Potongan bebek yang digoreng garing dengan bumbu khas, disajikan dengan nasi dan sayuran.','Makanan'),
('64deb5ff-32a5-44f2-afc5-94ee9d11cf6d','Cendol',36600,4.17,'Minuman tradisional dengan campuran tepung beras, santan, dan gula merah.','Minuman'),
('6713d585-2a43-464d-8f40-b25b1cfa68e5','Jus Melon',5700,4.19,'Minuman jus melon segar yang dicampur dengan air dan gula.','Minuman'),
('6930a474-e354-4797-b210-9e532a37847d','Sari Kurma',27300,4.16,'Minuman sari kurma segar tanpa tambahan gula.','Minuman'),
('6a7ccd37-5bc4-4f44-b59f-65604d53c7c6','Nasi Goreng Seafood',256300,4.33,'Nasi yang digoreng dengan bumbu khas dan campuran seafood seperti cumi, udang, dan kerang.','Makanan'),
('6dd6c44c-f54d-4296-ae40-8464fc0a9046','Bebek Betutu',385800,4.3,'Potongan bebek yang dimasak dengan bumbu betutu khas Bali, disajikan dengan nasi dan sayuran.','Makanan'),
('6e34d29b-c500-4e71-8451-256daf94779b','Wedang Ronde',33200,4.32,'Minuman tradisional dengan bola-bola ketan dan kuah jahe.','Minuman'),
('710d21b5-f3c7-4b4e-a7c6-647002663291','Rawon',294400,4.39,'Sup daging sapi dengan kuah hitam khas Jawa Timur, disajikan dengan nasi dan irisan telur.','Makanan'),
('7215c764-6975-43bb-afcf-264ad50da5ec','Mie Goreng',323000,4.28,'Mie yang digoreng dengan bumbu rempah, dicampur dengan telur, sayuran, dan daging/ayam/udang.','Makanan'),
('72442079-f2ca-4ade-8a29-0606227f14fc','Sop Buntut',564800,4.3,'Sup buntut sapi dengan kuah bening yang kaya rempah, disajikan dengan nasi.','Makanan'),
('757a9758-b6ef-47ef-85c0-b633cf7e33dc','Teh Tarik',38400,4.25,'Minuman teh yang disajikan dengan cara tarik agar menghasilkan busa khas.','Minuman'),
('75ebb5bb-ab69-40d1-a227-2f2cfb256a59','Kolang-Kaling',27800,4.29,'Minuman tradisional dengan tambahan kolang-kaling dan es batu.','Minuman'),
('788b183d-6b3e-4c11-ac74-1d9ee0cffbc8','Pisang Goreng',745500,4.22,'Potongan pisang yang digoreng garing, bisa disajikan dengan keju atau sambal.','Makanan'),
('7df20049-3fca-4c8a-ac7a-8277f7cbac18','Rendang',442600,4.25,'Daging sapi yang dimasak dalam santan dengan rempah-rempah khas Minang.','Makanan'),
('8173d111-2a80-4345-89ca-4f3a41a88dff','Nasi Goreng',533800,4.21,'Nasi yang digoreng dengan bumbu rempah dan disajikan dengan telur, daging ayam, dan sayuran.','Makanan'),
('83835132-9c37-4e46-b93d-7c42d3b3147a','Mie Ayam',571100,4.37,'Mie dengan potongan ayam dan irisan pangsit, disajikan dengan kuah ayam dan bawang goreng.','Makanan'),
('843b0f19-1dce-4b68-a538-94321e4e8a60','Nasi Gudeg',678100,4.37,'Nasi dengan lauk gudeg (nangka muda santan) dan sambal krecek.','Makanan'),
('866390b1-6417-4557-8486-33f51ba9785e','Teh Hangat',37100,4.26,'Minuman teh hangat tanpa tambahan gula.','Minuman'),
('8baeca5d-063d-47af-bfca-fc7d4038db91','Es Cincau',43500,4.23,'Minuman es dengan tambahan cincau dan sirup gula.','Minuman'),
('8c1a0ee8-a521-4aa4-ac3b-fc3985f79f90','Es Timun Suri',22200,4.41,'Minuman es dengan tambahan potongan timun suri dan sirup.','Minuman'),
('8d904b75-cfce-40b9-8d2b-7781be9af8a2','Jus Markisa',13200,4.39,'Minuman jus markisa segar tanpa tambahan gula.','Minuman'),
('905a31bd-5e4b-40d2-b681-bd8f4284a626','Ayam Betutu',128200,4.22,'Potongan ayam yang dimasak dengan bumbu betutu khas Bali, disajikan dengan nasi dan sayuran.','Makanan'),
('90a33bcd-bc42-42c9-a84d-74ab66e6cb7c','Lontong Sayur',149600,4.46,'Lontong dengan kuah sayur bening, disajikan dengan telur, tahu, tempe, dan sambal.','Makanan'),
('9258375e-0934-427f-87d6-8ace85770971','Wedang Jahe',38400,4.16,'Minuman tradisional dengan bahan utama jahe, gula aren, dan rempah lainnya.','Minuman'),
('9348820a-db7d-46c3-8065-b6b333ba6b2d','Kopi Tubruk',32400,4.3,'Minuman kopi dengan teknik penyeduhan kopi langsung dalam cangkir.','Minuman'),
('9416d7a2-5d87-4adc-92c7-bc4f76e4b7c8','Jus Pepaya',11000,4.27,'Minuman jus pepaya segar tanpa tambahan gula.','Minuman'),
('98db6eab-1f9c-46ec-8dd4-37e01289b32f','Sop Kambing',961000,4.42,'Sup kambing dengan kuah bening yang kaya rempah, disajikan dengan nasi dan irisan daun bawang.','Makanan'),
('9b6b9466-584a-4247-aeaf-958883e92f94','Tempe Goreng',960000,4.18,'Potongan tempe yang digoreng garing, disajikan dengan sambal dan kecap.','Makanan'),
('9e4ade1f-a289-48dd-bffa-04c1c4167a8c','Rujak Cingur',439400,4.26,'Rujak dengan campuran buah, sayuran, dan cingur (hidung sapi) dengan saus petis.','Makanan'),
('9fbe01cf-63f8-4b57-b009-4127c7ae6c40','Sambal Goreng',160000,4.27,'Sayuran seperti kacang panjang dan tahu yang digoreng dengan sambal, disajikan dengan nasi.','Makanan'),
('a5580261-d710-4038-b157-0f1107439cb1','Sambal Matah',226500,4.29,'Sambal khas Bali dengan bawang merah, cabe rawit, terasi, dan jeruk nipis.','Makanan'),
('a70e6b55-43ab-434e-8ee7-a403049a4a37','Jus Alpukat',43500,4.31,'Minuman jus alpukat segar yang dicampur dengan susu kental manis.','Minuman'),
('a8c61f39-5077-4ac5-830b-188a3e1ea913','Pindang',576500,4.34,'Daging/ikan yang dimasak dalam kuah asam Jawa, disajikan dengan nasi dan irisan daun bawang.','Makanan'),
('acbc1ac9-15e7-4aa9-ac4c-c5d7067fc189','Kopi Susu',26500,4.31,'Minuman kopi dengan tambahan susu kental manis.','Minuman'),
('b3934444-83c2-45c1-90f6-8ce23fe2c31f','Ayam Goreng',48100,4.24,'Potongan ayam yang digoreng garing dengan bumbu khas, disajikan dengan nasi dan sayuran.','Makanan'),
('b4471cd9-c33b-4faa-90cf-60cc34321dca','Sop Iga',854900,4.36,'Sup iga sapi dengan kuah bening, disajikan dengan nasi dan sayuran.','Makanan'),
('b60b9f68-dc05-40ca-a011-864367e995bf','Jus Wortel',49500,3.99,'Minuman jus wortel segar tanpa tambahan gula.','Minuman'),
('bab8680a-a723-4e2a-8f84-51b708c743e8','Bandrek',48700,4.42,'Minuman tradisional dengan bahan utama jahe, gula aren, dan santan.','Minuman'),
('bc94d32d-3674-4223-9855-02d7a1039c1b','Kwetiau Goreng',744400,4.28,'Kwetiau yang digoreng dengan bumbu dan berbagai bahan seperti ayam, udang, sayuran, dan telur.','Makanan'),
('be6a3454-131c-44e7-8a8d-ec9092782f74','Ayam Rica-Rica',358300,4.23,'Potongan ayam yang dimasak pedas dengan bumbu rica-rica, disajikan dengan nasi dan sayuran.','Makanan'),
('be86ca97-96f8-42d1-aff7-6fea69368a17','Sirup Marjan',14600,4.29,'Minuman sirup dengan berbagai varian rasa dan tambahan air.','Minuman'),
('be8aea0d-0bc8-4503-8d01-fe6d06b4f0f2','Coto Makassar',676800,4.38,'Sup daging sapi yang kaya rempah dengan kuah yang kental, disajikan dengan ketupat.','Makanan'),
('c1f2418a-56e2-4d1c-9ed1-3fc0290fb672','Bajigur',17100,4.33,'Minuman tradisional dengan bahan utama santan, gula merah, dan rempah.','Minuman'),
('c33219f2-9ac3-4785-a043-7387a1482dab','Kupat Tahu',909100,4.24,'Potongan tahu yang disajikan dengan kuah kacang dan lontong, ditambah dengan bawang goreng.','Makanan'),
('c79e3b58-09d1-4d4c-97ce-91d7194892cf','Nasi Liwet',861100,4.27,'Nasi yang dimasak dengan santan dan rempah, disajikan dengan lauk ayam/udang dan sambal.','Makanan'),
('c7f3e326-70df-4d92-a4a8-7ba83fcd17fc','Es Cendol',44000,4.14,'Minuman es dengan tambahan cendol dan sirup gula.','Minuman'),
('cbf40f36-4095-4e1e-bbb0-06f5db997ec3','Jahe Wangi',49600,4.23,'Minuman jahe dengan tambahan bahan utama jahe dan gula.','Minuman'),
('cc56879a-16dd-406f-992a-f033e0c8733f','Es Doger',47500,4.36,'Minuman es campur dengan tambahan kelapa muda, kolang-kaling, dan sirup.','Minuman'),
('cdb7c326-baec-44f8-aab2-e91a1c52b06d','Jus Apel',45000,4.29,'Minuman jus apel segar tanpa tambahan gula.','Minuman'),
('da821254-ad9e-4daa-9328-92cbbedcbb51','Tahu Goreng',25900,4.27,'Potongan tahu yang digoreng garing, disajikan dengan sambal dan kecap.','Makanan'),
('dcae0174-7368-4ce3-b8b9-2f3774ef8c16','Jus Mangga',22600,4.26,'Minuman jus mangga segar yang dicampur dengan air dan gula.','Minuman'),
('dd9d3d87-4a94-46c2-af66-2d0cfb61f550','Ketoprak',248100,4.42,'Mie rebus dengan tauge, ketupat, telur, tahu, dan bumbu kacang, disajikan dengan sambal.','Makanan'),
('df71c212-8854-4f06-87a1-d4f1813ed06d','Es Kelapa Muda',33800,4.26,'Minuman es dengan tambahan potongan kelapa muda dan air gula.','Minuman'),
('dfa8d488-f378-4541-9d4d-9fda73171d47','Sari Asem',14500,4.26,'Minuman tradisional dengan campuran buah asam, gula, dan air.','Minuman'),
('e0e1f62e-ff15-4b1c-974b-05ad306813fd','Air Kelapa',9800,4.24,'Minuman segar dari air kelapa yang masih muda.','Minuman'),
('e15da438-f819-4afa-a847-b59f58d1b1bd','Kare Ayam',529200,4.34,'Potongan ayam yang dimasak dengan kuah kare yang kaya rempah, disajikan dengan nasi.','Makanan'),
('e2f04709-d84c-42b4-bbb5-6505e9855d6d','Ikan Bakar',602300,4.17,'Ikan yang dibakar dengan bumbu rempah, disajikan dengan sambal dan nasi.','Makanan'),
('e3fa05b2-292d-4239-b158-ceabb7801275','Sate Ayam',213700,4.4,'Potongan daging ayam yang dipanggang dengan bumbu kacang, disajikan dengan lontong dan irisan bawang.','Makanan'),
('e7c2c88f-969d-4f84-b7b8-b159b5b24734','Susu Kurma Muda',9600,4.43,'Minuman susu dengan tambahan ekstrak kurma muda.','Minuman'),
('e98e2e2e-33a0-40b9-83f7-0b7290b548c7','Martabak',766900,4.31,'Adonan terigu yang digoreng dengan isian telur, daging/ayam, bawang, dan bumbu lainnya.','Makanan'),
('e9bc38df-db6d-4ca1-ac52-8a41ce580153','Kopi Hitam',40700,4.41,'Minuman kopi tanpa tambahan susu atau gula.','Minuman'),
('ea4f467e-1d09-488b-94c0-96181602f20c','Susu Jahe',49000,4.21,'Minuman susu dengan tambahan ekstrak jahe.','Minuman'),
('eb44869a-1d08-4db5-a67a-5221bf166242','Teh Talua',44000,4.29,'Minuman teh dengan tambahan telur ayam.','Minuman'),
('ed143a25-e7f0-49e1-bdfd-451c0b6cbaa3','Es Oyen',30500,4.31,'Minuman es dengan tambahan potongan oyen (buah pinang) dan gula merah.','Minuman'),
('ef015cc6-853e-4210-9aec-7fb01b3959ad','Teh Susu',12700,4.39,'Minuman teh dengan tambahan susu.','Minuman'),
('ef50cb17-e81f-4cb3-96c6-c29874fe5c0c','Sate Padang',310700,4.27,'Potongan daging/ayam yang dipanggang dengan bumbu kacang khas Padang, disajikan dengan ketupat.','Makanan'),
('f066fafe-9e31-4467-bee0-a951f045a83c','Susu Jahe Merah',24300,4.28,'Minuman susu dengan tambahan ekstrak jahe merah.','Minuman'),
('f3edcaa2-5624-4014-a182-875db328426e','Laksa',109400,4.21,'Mie dengan kuah santan kental dan bumbu rempah, disajikan dengan telur, ayam/udang, dan tauge.','Makanan'),
('f72cd8df-f309-45e3-9226-ce4be33c8787','Air Zam-Zam',23700,4.37,'Minuman air Zam-Zam, air suci dari sumber mata air Zam-Zam di Mekkah.','Minuman'),
('f7eb9a91-2665-4d33-b881-f0503bef2873','Ayam Bakar',11600,4.31,'Potongan ayam yang dibakar dengan bumbu khas, disajikan dengan nasi dan sambal.','Makanan'),
('f9e48afc-a619-45cb-92a9-2808723d3cad','Bakso',20000,4.23,'Bola daging yang direbus dengan kuah kaldu sapi dan disajikan dengan mie, bihun, atau nasi.','Makanan'),
('fe8aa3d0-7596-4dfe-9997-e9f8d4b16398','Nasi Kuning',661200,4.23,'Nasi yang dimasak dengan kunyit, disajikan dengan telur, ayam goreng, tempe, sambal, dan acar.','Makanan');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckRatingMenu_BeforeInsert BEFORE INSERT ON Menu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.tipe NOT IN ('Makanan', 'Minuman') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipe harus Makanan atau Minuman';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER EnsureMenuType AFTER INSERT ON Menu
FOR EACH ROW
BEGIN
    IF NEW.tipe = 'Makanan' THEN
        INSERT INTO Makanan (idMenu) VALUES (NEW.idMenu);
    ELSEIF NEW.tipe = 'Minuman' THEN
        INSERT INTO Minuman (idMenu) VALUES (NEW.idMenu);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckRatingMenu_BeforeUpdate BEFORE UPDATE ON Menu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.tipe NOT IN ('Makanan', 'Minuman') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipe harus Makanan atau Minuman';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `minuman`
--

DROP TABLE IF EXISTS `minuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minuman` (
  `idMenu` varchar(36) NOT NULL,
  `isDingin` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`idMenu`),
  CONSTRAINT `minuman_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minuman`
--

LOCK TABLES `minuman` WRITE;
/*!40000 ALTER TABLE `minuman` DISABLE KEYS */;
INSERT INTO `minuman` VALUES
('068d78d5-ae38-47ac-a21e-08a26d6ac168',0),
('12a7159f-1e97-4120-bbf3-d25227a4a123',0),
('144612e7-14d9-4148-8ebe-3799c7f4d280',0),
('199cd039-3a7e-4a3f-b5b2-305d79200260',0),
('19c6aa35-bcdb-4fe5-89c0-1e5988bd0b80',0),
('1a5f691a-0e9b-4faa-975e-a4a7a0f06b61',0),
('21a7384b-0952-4a63-bd31-1709f0dacb67',0),
('23c8fc8e-41c3-43fe-a1c9-b735ab1ea702',0),
('24e2d25d-044e-4d84-abe9-b45921bbc78e',0),
('2b531f7b-68f5-402f-bf10-494ccf0d90f8',0),
('3d0ec539-3526-426e-a127-3151c1f7e7ae',0),
('4183c84c-b52d-44c1-a6d2-3f1cb3b577f2',0),
('44af2a3a-c77e-4e89-8258-f382b5e152f6',0),
('45cf1229-0006-4c86-bb78-2fe6ec65d9b6',0),
('4944ceb7-eb60-4104-b738-0e94348cc594',0),
('5ecb369d-bafd-46f0-bbe6-d21b9be9ad23',0),
('5fa63dc8-467b-4851-9fbf-322ce429e9d6',0),
('64deb5ff-32a5-44f2-afc5-94ee9d11cf6d',0),
('6713d585-2a43-464d-8f40-b25b1cfa68e5',0),
('6930a474-e354-4797-b210-9e532a37847d',0),
('6e34d29b-c500-4e71-8451-256daf94779b',0),
('757a9758-b6ef-47ef-85c0-b633cf7e33dc',0),
('75ebb5bb-ab69-40d1-a227-2f2cfb256a59',0),
('866390b1-6417-4557-8486-33f51ba9785e',0),
('8baeca5d-063d-47af-bfca-fc7d4038db91',0),
('8c1a0ee8-a521-4aa4-ac3b-fc3985f79f90',0),
('8d904b75-cfce-40b9-8d2b-7781be9af8a2',0),
('9258375e-0934-427f-87d6-8ace85770971',0),
('9348820a-db7d-46c3-8065-b6b333ba6b2d',0),
('9416d7a2-5d87-4adc-92c7-bc4f76e4b7c8',0),
('a70e6b55-43ab-434e-8ee7-a403049a4a37',0),
('acbc1ac9-15e7-4aa9-ac4c-c5d7067fc189',0),
('b60b9f68-dc05-40ca-a011-864367e995bf',0),
('bab8680a-a723-4e2a-8f84-51b708c743e8',0),
('be86ca97-96f8-42d1-aff7-6fea69368a17',0),
('c1f2418a-56e2-4d1c-9ed1-3fc0290fb672',0),
('c7f3e326-70df-4d92-a4a8-7ba83fcd17fc',0),
('cbf40f36-4095-4e1e-bbb0-06f5db997ec3',0),
('cc56879a-16dd-406f-992a-f033e0c8733f',0),
('cdb7c326-baec-44f8-aab2-e91a1c52b06d',0),
('dcae0174-7368-4ce3-b8b9-2f3774ef8c16',0),
('df71c212-8854-4f06-87a1-d4f1813ed06d',0),
('dfa8d488-f378-4541-9d4d-9fda73171d47',0),
('e0e1f62e-ff15-4b1c-974b-05ad306813fd',0),
('e7c2c88f-969d-4f84-b7b8-b159b5b24734',0),
('e9bc38df-db6d-4ca1-ac52-8a41ce580153',0),
('ea4f467e-1d09-488b-94c0-96181602f20c',0),
('eb44869a-1d08-4db5-a67a-5221bf166242',0),
('ed143a25-e7f0-49e1-bdfd-451c0b6cbaa3',0),
('ef015cc6-853e-4210-9aec-7fb01b3959ad',0),
('f066fafe-9e31-4467-bee0-a951f045a83c',0),
('f72cd8df-f309-45e3-9226-ce4be33c8787',0);
/*!40000 ALTER TABLE `minuman` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckMinuman_BeforeInsert BEFORE INSERT ON Minuman
FOR EACH ROW
BEGIN
    IF NEW.isDingin NOT IN (TRUE, FALSE) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'isDingin harus TRUE atau FALSE';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckMinuman_BeforeUpdate BEFORE UPDATE ON Minuman
FOR EACH ROW
BEGIN
    IF NEW.isDingin NOT IN (TRUE, FALSE) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'isDingin harus TRUE atau FALSE';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `NIKPegawai` varchar(255) NOT NULL CHECK (octet_length(`NIKPegawai`) = 16),
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomorTelepon` varchar(13) DEFAULT NULL CHECK (`nomorTelepon` regexp '^\\+?[0-9]+$' and octet_length(`nomorTelepon`) <= 13),
  PRIMARY KEY (`NIKPegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` VALUES
('1029252891069864','Ani Safitri','Gg. Pacuan Kuda No. 33\nBanjarmasin, Sumatera Selatan 66760','+6284287950'),
('1264408959206190','Agnes Hartati','Jl. K.H. Wahid Hasyim No. 4\nMagelang, SN 75495','+6289580783'),
('1316875858667862','Dadi Prabowo','Gang Stasiun Wonokromo No. 70\nSubulussalam, Maluku Utara 11842','+6283149721'),
('1424557368379501','Zizi Wasita','Gg. Dipenogoro No. 38\nTarakan, Jambi 74404','+62817616499'),
('1446800049397817','Rika Yuliarti','Gang Jend. Sudirman No. 86\nBatu, SB 40959','+62855278637'),
('1678670209121951','Pranata Kusumo','Gg. Kutai No. 562\nPrabumulih, Sulawesi Barat 94515','+62825646503'),
('2021708893610687','Sutan Jail Setiawan','Gang Sadang Serang No. 111\nTegal, Maluku 58995','+628787067678'),
('2172125543154246','Karimah Sudiati','Jalan Raya Setiabudhi No. 16\nManado, BA 50799','+628447390317'),
('2308310476318034','Zelda Utama','Gang Stasiun Wonokromo No. 124\nPalu, YO 07373','+62895457464'),
('2446772306725859','Luhung Latupono','Jalan Pelajar Pejuang No. 7\nPasuruan, JK 88737','+6281342210'),
('2735757226814964','Titi Najmudin','Jl. Kebonjati No. 5\nMetro, JK 41774','+628972850312'),
('2827438097869456','Rini Kuswoyo','Gang Abdul Muis No. 0\nKediri, Sulawesi Barat 66873','+628164272327'),
('2883266338057315','Drs. Marwata Hardiansyah','Gg. Tubagus Ismail No. 833\nPayakumbuh, PB 73568','+628280594805'),
('3554125953905242','Anastasia Wulandari','Gang Jakarta No. 52\nPekalongan, KS 10589','+628460603509'),
('3607764793409165','Ciaobella Kusumo','Gang Cempaka No. 90\nSemarang, Nusa Tenggara Timur 26604','+6286703535'),
('3632850801048738','Oliva Palastri','Gang Stasiun Wonokromo No. 846\nBau-Bau, PA 76309','+6283469274'),
('3733474902940074','Jarwa Hidayat','Jalan R.E Martadinata No. 6\nSurakarta, JT 53208','+628460812430'),
('3807141425374446','Restu Halimah','Gg. Pasteur No. 4\nTomohon, NT 34968','+6287800162'),
('3868931323277182','Galiono Putra','Jl. Lembong No. 16\nPayakumbuh, SS 84816','+628578945820'),
('3959188236147870','Dr. Gina Setiawan','Gg. Waringin No. 86\nBukittinggi, Jawa Timur 12762','+628959131681'),
('4620760337561426','Qori Megantara','Gg. S. Parman No. 89\nPagaralam, SB 66089','+628499462383'),
('4641035466077796','Satya Budiyanto','Jalan Lembong No. 19\nMataram, Kalimantan Tengah 92963','+62859288690'),
('4663861080770820','Drs. Calista Gunawan','Gang Jamika No. 910\nSingkawang, KT 06350','+6282784976'),
('4830696251207418','Karsana Prasetya','Jalan Waringin No. 62\nTomohon, Kalimantan Barat 42566','+62839989257'),
('4937607478912350','Warsa Nababan','Jl. PHH. Mustofa No. 95\nTomohon, Papua Barat 23212','+628585982748'),
('5042174745328435','Daru Rajasa','Jalan Kebonjati No. 082\nKota Administrasi Jakarta Timur, Papua 64540','+6282305577'),
('5125235020276940','Karen Hidayat','Jalan Abdul Muis No. 66\nPematangsiantar, Kalimantan Barat 59752','+62897766847'),
('5358203153094141','Daniswara Siregar','Jalan Veteran No. 49\nSurabaya, SB 17080','+628396266341'),
('5517074067216463','Halim Mahendra','Gg. Monginsidi No. 072\nMojokerto, JA 63040','+62881897351'),
('5539779128993853','R.A. Ellis Kuswandari','Gg. Rawamangun No. 90\nBalikpapan, Kalimantan Utara 44277','+628293829126'),
('5561382096312836','Yessi Napitupulu','Jl. M.T Haryono No. 745\nBanda Aceh, SS 82536','+628259188001'),
('5582312181698249','Asirwanda Budiman','Gg. Ir. H. Djuanda No. 332\nBanjarbaru, SB 13781','+628249243946'),
('5704548000248327','Garang Susanti','Gang Indragiri No. 18\nSabang, Jawa Timur 18041','+62815879812'),
('6066212981841572','Dartono Mustofa','Gang Monginsidi No. 18\nGorontalo, Jawa Tengah 17643','+6288131803'),
('6125625791718020','drg. Rachel Irawan','Gang Kutai No. 566\nSabang, SG 44549','+6284138936'),
('6386299576755068','Jaiman Mangunsong','Jl. Suryakencana No. 95\nSurabaya, Nusa Tenggara Barat 14868','+6283427309'),
('6568173311311405','Dacin Nasyiah','Gg. Laswi No. 92\nPadang Sidempuan, AC 38452','+62827322719'),
('6809812775568501','R.A. Salimah Putra','Gg. Kebonjati No. 778\nPagaralam, Sulawesi Tengah 47964','+62896842457'),
('7307390661965726','Kawaya Safitri','Jl. Moch. Toha No. 4\nKota Administrasi Jakarta Barat, LA 59352','+6288361893'),
('7464355832267560','Pia Wijaya','Gang Otto Iskandardinata No. 5\nKendari, JI 05061','+62833426629'),
('7491848927779966','Laras Permadi','Gg. Wonoayu No. 635\nTernate, Nusa Tenggara Barat 93232','+6282620940'),
('7514737759472091','Puspa Hartati','Jl. Pacuan Kuda No. 72\nPalopo, KI 53988','+6282568590'),
('7553719814134183','Gilda Fujiati','Gg. Gardujati No. 83\nSolok, KT 52571','+62847478837'),
('7811104265247197','Malika Winarno','Jl. Cikutra Timur No. 5\nBandung, Kalimantan Timur 10767','+628969000498'),
('7891363813065389','Yani Suryatmi','Gg. Medokan Ayu No. 48\nPurwokerto, Kepulauan Riau 91116','+6282979778'),
('8210496026792280','Gading Lailasari','Gang Gardujati No. 979\nBatu, SB 42201','+62841691866'),
('8223830648402988','Carla Prastuti','Gang Monginsidi No. 206\nSawahlunto, BA 21767','+62848283268'),
('8566513411121961','Candra Wibowo','Jl. Jend. A. Yani No. 36\nTasikmalaya, MA 10568','+628228325101'),
('9352918881397807','Dina Siregar','Gg. Kutai No. 73\nPagaralam, Maluku Utara 11722','+628850769473'),
('9742471286166789','Nabila Rajasa','Gang Pasteur No. 1\nMeulaboh, Maluku Utara 10246','+62818053286');
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPegawai_BeforeInsert BEFORE INSERT ON Pegawai
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.NIKPegawai) != 16 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai harus 16 karakter';
    END IF;
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPegawai_BeforeUpdate BEFORE UPDATE ON Pegawai
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.NIKPegawai) != 16 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai harus 16 karakter';
    END IF;
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pembelianbahan`
--

DROP TABLE IF EXISTS `pembelianbahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembelianbahan` (
  `emailPenyedia` varchar(255) NOT NULL,
  `idBahan` varchar(36) NOT NULL,
  `harga` int(11) NOT NULL CHECK (`harga` >= 0),
  `jumlahPembelian` int(11) NOT NULL CHECK (`jumlahPembelian` >= 0),
  `tanggalPembelian` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`emailPenyedia`,`idBahan`,`tanggalPembelian`),
  KEY `idBahan` (`idBahan`),
  CONSTRAINT `pembelianbahan_ibfk_1` FOREIGN KEY (`emailPenyedia`) REFERENCES `penyediabahan` (`email`) ON DELETE CASCADE,
  CONSTRAINT `pembelianbahan_ibfk_2` FOREIGN KEY (`idBahan`) REFERENCES `bahan` (`idBahan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelianbahan`
--

LOCK TABLES `pembelianbahan` WRITE;
/*!40000 ALTER TABLE `pembelianbahan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pembelianbahan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER LimitStokPembelianBeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_stokBahan INT;

    
    SELECT stok INTO v_stokBahan
    FROM Bahan
    WHERE idBahan = NEW.idBahan;

    
    IF v_stokBahan > 200 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok bahan melebihi 500, pembelian tidak diizinkan.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER LimitMenuHargaPembelianBeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaBahanMenu INT;

    
    SELECT MIN(M.harga) INTO v_hargaBahanMenu
    FROM BahanMenu BM
    JOIN Menu M ON BM.idMenu = M.idMenu
    WHERE BM.idBahan = NEW.idBahan;

    
    IF NEW.harga < v_hargaBahanMenu THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga menu lebih mahal dari harga salah satu bahan yang dibelinya.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER LimitBahanTermurahPembelianBeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaBahanTerendah INT;

    
    SELECT MAX(harga) INTO v_hargaBahanTerendah
    FROM (
        SELECT harga
        FROM Bahan
        ORDER BY harga
        LIMIT 10
    ) AS top10;

    
    IF NEW.harga > v_hargaBahanTerendah THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga bahan lebih mahal dari top 10 bahan termurah.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPembelianBahan_BeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.jumlahPembelian < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah Pembelian harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER BatasiPembelianBahanMurah BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaTerendah INT;
    DECLARE length_data INT;

    
    SELECT MIN(harga) INTO v_hargaTerendah
    FROM PembelianBahan
    WHERE idBahan = NEW.idBahan;


    
    SELECT COUNT(*) INTO length_data
    FROM PembelianBahan
    WHERE idBahan = NEW.idBahan
    ORDER BY harga ASC
    LIMIT 10;

    
    IF NEW.harga < v_hargaTerendah AND length_data>=10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga pembelian bahan baru lebih murah dari harga terendah yang pernah ada.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER UpdateStokBahan AFTER INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    UPDATE Bahan
    SET stok = stok + NEW.jumlahPembelian
    WHERE idBahan = NEW.idBahan;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPembelianBahan_BeforeUpdate BEFORE UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.jumlahPembelian < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah Pembelian harus lebih besar dari atau sama dengan 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PreventInvalidUpdatePembelianBahanBeforeUpdate
BEFORE UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.tanggalPembelian < OLD.tanggalPembelian THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal pembelian.';
    END IF;
    IF NEW.tanggalPembelian >= OLD.tanggalPembelian THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal pembelian.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pengunjung`
--

DROP TABLE IF EXISTS `pengunjung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengunjung` (
  `email` varchar(255) NOT NULL CHECK (locate('@',`email`) > 0),
  `nama` varchar(255) NOT NULL,
  `nomorTelepon` varchar(13) DEFAULT NULL CHECK (`nomorTelepon` regexp '^\\+?[0-9]+$' and octet_length(`nomorTelepon`) <= 13),
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengunjung`
--

LOCK TABLES `pengunjung` WRITE;
/*!40000 ALTER TABLE `pengunjung` DISABLE KEYS */;
INSERT INTO `pengunjung` VALUES
('abyasakusmawati33@countermail.com','Abyasa Kusmawati','+6289442460'),
('adedamanik58@posteo.de','Ade Damanik, S.Ked','+628698913313'),
('ademanullang11@posteo.de','Ade Manullang','+628169169897'),
('ademaulana@mailbox.org','Ade Maulana, S.E.I','+6283223083'),
('adetampubolon@runbox.com','Ade Tampubolon','+62832411144'),
('adewahyuni27@ctemplar.com','Ade Wahyuni','+6285900067'),
('adhiarjahabibi49@zoho.com','Adhiarja Habibi','+628126009551'),
('adhiarjapratama@mailbox.org','Adhiarja Pratama','+628698911604'),
('adhiarjawulandari81@mailbox.org','Adhiarja Wulandari','+6289652576'),
('adiarjahidayanto@mailfence.com','Adiarja Hidayanto','+62828065111'),
('adinatagunawan@startmail.com','Adinata Gunawan','+628936033531'),
('adinatapalastri50@mailbox.org','Adinata Palastri, S.IP','+628698911186'),
('adinataprastuti@posteo.de','Adinata Prastuti','+62819274387'),
('agnesharyanto@countermail.com','Agnes Haryanto','+62813400363'),
('agnesnainggolan18@icloud.com','Agnes Nainggolan','+6284810367'),
('agnesnovitasari@startmail.com','Agnes Novitasari','+6281741562'),
('agnespradana@outlook.com','Agnes Pradana','+62831205053'),
('agnesyuliarti95@posteo.de','Agnes Yuliarti','+628968170205'),
('agusutami85@ctemplar.com','Agus Utami','+6281303374'),
('aisyahagustina@posteo.de','Aisyah Agustina','+6287883877'),
('aisyahhartati93@mailbox.org','Aisyah Hartati, S.Ked','+628844464783'),
('aisyahmaheswara@startmail.com','Aisyah Maheswara, M.Kom.','+6283457637'),
('ajenghariyah97@posteo.de','Ajeng Hariyah','+6281308212'),
('ajengputra79@runbox.com','Ajeng Putra','+628931785572'),
('ajimanmandala82@startmail.com','Ajiman Mandala','+628788510547'),
('ajimanyulianti@tutanota.com','Ajiman Yulianti','+62836682940'),
('ajiminmarpaung30@posteo.de','Ajimin Marpaung','+6289943408'),
('akarsanaiswahyudi74@tutanota.com','Akarsana Iswahyudi','+62826251488'),
('akarsanasinaga93@outlook.com','Akarsana Sinaga','+62829220594'),
('akarsanawijayanti@hushmail.com','Akarsana Wijayanti','+628280543459'),
('alambanahariyah@mailbox.org','Alambana Hariyah','+6284148820'),
('alikakurniawan59@startmail.com','Alika Kurniawan','+6281424338'),
('alikamangunsong44@tutanota.com','Alika Mangunsong','+6283269441'),
('almirasuwarno60@mailbox.org','Almira Suwarno','+62844146049'),
('almirauwais@runbox.com','Almira Uwais','+6285816134'),
('amalianasyiah15@runbox.com','Amalia Nasyiah, M.Farm','+628460504782'),
('amalianurdiyanti28@posteo.de','Amalia Nurdiyanti','+6281745607'),
('amaliaprakasa@ctemplar.com','Amalia Prakasa','+628989764559'),
('amaliasiregar@posteo.de','Amalia Siregar','+628390286761'),
('ameliadongoran@posteo.de','Amelia Dongoran','+628571980360'),
('ameliamandala4@runbox.com','Amelia Mandala','+6284377677'),
('ameliamaryadi50@posteo.de','Amelia Maryadi, S.I.Kom','+62824033329'),
('amiiswahyudi16@runbox.com','Ami Iswahyudi, M.Pd','+6285949987'),
('amimardhiyah@tutanota.com','Ami Mardhiyah, S.Ked','+6282762263'),
('aminashiruddin34@posteo.de','Ami Nashiruddin','+628176219970'),
('amirajata@tutanota.com','Ami Rajata','+628338663462'),
('amiuyainah76@yahoo.com','Ami Uyainah','+628273189234'),
('amiwibowo@ctemplar.com','Ami Wibowo, S.Pd','+628686108506'),
('amiwijaya@mailbox.org','Ami Wijaya','+62847718351'),
('amizulkarnain92@mailbox.org','Ami Zulkarnain','+628966070257'),
('anagunarto92@tutanota.com','Ana Gunarto','+6282737856'),
('anamaryadi@runbox.com','Ana Maryadi','+628998216395'),
('anastasiahutapea@countermail.com','Anastasia Hutapea, S.Kom','+6284303896'),
('anastasiasitorus18@mailbox.org','Anastasia Sitorus','+628273793336'),
('anastasiasuryatmi@posteo.de','Anastasia Suryatmi, S.E.','+6281776314'),
('anggabayalailasari@runbox.com','Anggabaya Lailasari','+6282289779'),
('anggabayanasyiah1@startmail.com','Anggabaya Nasyiah','+6282974834'),
('anitahandayani80@posteo.de','Anita Handayani','+628972429791'),
('anitamba@runbox.com','Ani Tamba, S.Psi','+6281358444'),
('anitanatsir@startmail.com','Anita Natsir, S.E.I','+6282344204'),
('anomwinarsih@tutanota.com','Anom Winarsih','+628855767163'),
('argonohidayanto@ctemplar.com','Argono Hidayanto','+628998210342'),
('argonopalastri@tutanota.com','Argono Palastri','+628584702209'),
('arsipatragunawan@posteo.de','Arsipatra Gunawan','+628324163260'),
('artantopuspasari@tutanota.com','Artanto Puspasari','+628431136567'),
('artantowijayanti@mailbox.org','Artanto Wijayanti','+62836486790'),
('artanuraini@startmail.com','Arta Nuraini, M.Kom.','+628273839103'),
('artawanusada96@posteo.de','Artawan Usada','+628388611702'),
('artawanwulandari@tutanota.com','Artawan Wulandari','+628155414237'),
('asirwadaardianto23@ctemplar.com','Asirwada Ardianto','+628154131362'),
('asirwadawaluyo69@posteo.de','Asirwada Waluyo','+6282993396'),
('asirwandazulkarnain56@ctemplar.com','Asirwanda Zulkarnain','+628659658713'),
('aslijansuryono78@fastmail.com','Aslijan Suryono, S.H.','+628144418716'),
('asmadiiswahyudi@runbox.com','Asmadi Iswahyudi','+6282966842'),
('asmadikuswoyo@runbox.com','Asmadi Kuswoyo','+62846695563'),
('asmadisuwarno41@runbox.com','Asmadi Suwarno','+62897429325'),
('asmankuswoyo@countermail.com','Asman Kuswoyo','+628227295427'),
('asmanlazuardi@startmail.com','Asman Lazuardi','+62878068849'),
('asmansihombing4@yandex.cominbox.com','Asman Sihombing, S.E.I','+628998214451'),
('asmiantomulyani92@runbox.com','Asmianto Mulyani','+6286882009'),
('asmunisantoso@startmail.com','Asmuni Santoso','+62843746445'),
('aswanihardiansyah99@runbox.com','Aswani Hardiansyah','+6287797528'),
('atmahabibi@posteo.de','Atma Habibi','+62893135268'),
('atmasamosir90@tutanota.com','Atma Samosir','+628698917787'),
('aurorakusmawati@hotmail.com','Aurora Kusmawati','+62819884706'),
('auroramahendra13@ctemplar.com','Aurora Mahendra','+62859100899'),
('aurorauwais@countermail.com','Aurora Uwais','+62878208356'),
('ayuprabowo@runbox.com','Ayu Prabowo','+6282436813'),
('ayupudjiastuti@hushmail.com','Ayu Pudjiastuti','+628268527104'),
('azaleapermata65@tutanota.com','Azalea Permata','+62818501149'),
('azaleaprasetya24@hotmail.com','Azalea Prasetya','+62849197129'),
('azaleaprasetyo@runbox.com','Azalea Prasetyo','+628468374994'),
('azaleasafitri15@keemail.me','Azalea Safitri','+628384315935'),
('azaleasimbolon@posteo.de','Azalea Simbolon','+62847441270'),
('azaleasuartini30@yandex.cominbox.com','Azalea Suartini','+628972255477'),
('bagasnatsir@mailbox.org','Bagas Natsir','+6282368432'),
('bagaswaskita@runbox.com','Bagas Waskita, S.Sos','+628979543057'),
('bagiyapuspita@countermail.com','Bagiya Puspita','+62882585907'),
('bagiyasetiawan@mailbox.org','Bagiya Setiawan','+628243217109'),
('bagyasalahudin@startmail.com','Bagya Salahudin, M.M.','+628654683633'),
('bahuraksamelani@mailfence.com','Bahuraksa Melani','+628228243572'),
('bahuraksarajasa52@yahoo.com','Bahuraksa Rajasa','+6282368490'),
('bahuwiryairawan@scryptmail.com','Bahuwirya Irawan','+62894229618'),
('bahuwiryalestari@ctemplar.com','Bahuwirya Lestari','+628583513632'),
('bakdahutasoit22@tutanota.com','Bakda Hutasoit','+62899599471'),
('bakdasudiati@mailbox.org','Bakda Sudiati','+6287845078'),
('bakiadihidayanto@posteo.de','Bakiadi Hidayanto','+628814798869'),
('bakiadipurwanti91@posteo.de','Bakiadi Purwanti','+6284182837'),
('bakidinbudiman68@mailbox.org','Bakidin Budiman','+628258175200'),
('bakidinwulandari33@aol.com','Bakidin Wulandari','+628673665348'),
('bakidinyolanda@posteo.de','Bakidin Yolanda','+628371369489'),
('bakijansihombing57@tutanota.com','Bakijan Sihombing','+62865912382'),
('bakijanwastuti8@runbox.com','Bakijan Wastuti','+6284720702'),
('bakimanwibisono@ctemplar.com','Bakiman Wibisono','+6282632321'),
('bakionohassanah@posteo.de','Bakiono Hassanah','+62841213298'),
('bakionosiregar@startmail.com','Bakiono Siregar','+6281392184'),
('baktiantohutapea@yahoo.com','Baktianto Hutapea','+62829208351'),
('baktimayasari@hushmail.com','Bakti Mayasari','+62843226128'),
('baktionomarbun71@tutanota.com','Baktiono Marbun','+628179120182'),
('baktionoprasetyo13@mail.com','Baktiono Prasetyo','+628810541048'),
('baktionosirait@scryptmail.com','Baktiono Sirait','+6289786443'),
('baktionowaluyo@posteo.de','Baktiono Waluyo','+628158544386'),
('balamantrimulyani@posteo.de','Balamantri Mulyani','+6288260879'),
('balamantripuspita37@hushmail.com','Balamantri Puspita','+6283562862'),
('balamantritamba@tutanota.com','Balamantri Tamba','+6281596271'),
('balamantriwaskita@ctemplar.com','Balamantri Waskita, S.T.','+628227472937'),
('balanggaprasetya@posteo.de','Balangga Prasetya','+62883217300'),
('balanggarahayu@posteo.de','Balangga Rahayu','+628998214126'),
('balapalastri85@ctemplar.com','Bala Palastri','+628552872043'),
('balathamrin@mail.com','Bala Thamrin','+6281372019'),
('balawaluyo24@tutanota.com','Bala Waluyo','+628956459432'),
('balawulandari@mail.com','Bala Wulandari','+62821162833'),
('balidinpurnawati@mailbox.org','Balidin Purnawati','+628959867241'),
('balidinutama23@startmail.com','Balidin Utama','+628373901909'),
('balijanhutapea24@ctemplar.com','Balijan Hutapea','+628847639086'),
('bambangmaryadi71@gmail.com','Bambang Maryadi','+6282864267'),
('banarahutagalung@mailbox.org','Banara Hutagalung','+628489894375'),
('banarapuspasari91@countermail.com','Banara Puspasari','+628986820105'),
('banarawaluyo@ctemplar.com','Banara Waluyo, S.T.','+628361246788'),
('banawaprayoga@riseup.net','Banawa Prayoga','+628993113506'),
('banawiadriansyah@outlook.com','Banawi Adriansyah','+628263814905'),
('banawiuyainah44@tutanota.com','Banawi Uyainah','+628358416571'),
('bancarhidayat@tutanota.com','Bancar Hidayat','+62896239151'),
('bancarlaksita92@posteo.de','Bancar Laksita, S.E.','+62813395025'),
('belindamardhiyah71@mailbox.org','Belinda Mardhiyah','+62877710038'),
('belindauwais25@startmail.com','Belinda Uwais','+628418481426'),
('belladamanik99@mailbox.org','Bella Damanik','+628381669555'),
('betaniaastuti@posteo.de','Betania Astuti, M.Ak','+628781858762'),
('betaniadabukke23@posteo.de','Betania Dabukke','+628241206443'),
('betaniamegantara58@runbox.com','Betania Megantara','+628138955370'),
('betaniazulkarnain52@posteo.de','Betania Zulkarnain','+6281962621'),
('budisihombing81@gmail.com','Budi Sihombing, M.M.','+6282685756'),
('cagakmanullang@scryptmail.com','Cagak Manullang','+62817246551'),
('cagakramadan@posteo.de','Cagak Ramadan','+628998211623'),
('cagakwinarsih97@ctemplar.com','Cagak Winarsih','+628258383600'),
('cagakwulandari@outlook.com','Cagak Wulandari, M.Ak','+62824231039'),
('cageryolanda@runbox.com','Cager Yolanda','+62895871352'),
('cahyadipurwanti20@ctemplar.com','Cahyadi Purwanti','+6281598381'),
('cahyadiuyainah9@posteo.de','Cahyadi Uyainah','+62813743572'),
('cahyantosetiawan92@runbox.com','Cahyanto Setiawan','+6281201143'),
('cahyojailani56@gmx.com','Cahyo Jailani','+62895150510'),
('cahyomandasari83@tutanota.com','Cahyo Mandasari','+628987395290'),
('cahyonapitupulu@tutanota.com','Cahyo Napitupulu, S.Psi','+6289321771'),
('caketnurdiyanti@startmail.com','Caket Nurdiyanti','+6282900194'),
('cakrabirawamegantara51@startmail.com','Cakrabirawa Megantara','+6284514973'),
('cakrabuanasirait@startmail.com','Cakrabuana Sirait, S.E.I','+62831268468'),
('cakrabuanausamah@tutanota.com','Cakrabuana Usamah, S.T.','+62829758558'),
('cakrajiyahartati71@mailbox.org','Cakrajiya Hartati','+6282295383'),
('cakrajiyaprabowo@posteo.de','Cakrajiya Prabowo','+62837389178'),
('cakrawalahabibi@mailbox.org','Cakrawala Habibi','+628380082599'),
('cakrawangsasimbolon37@posteo.de','Cakrawangsa Simbolon','+6289763245'),
('cakrawangsasuryono@zoho.com','Cakrawangsa Suryono','+628175611974'),
('calistahardiansyah@posteo.de','Calista Hardiansyah','+628273161922'),
('calistamahendra23@posteo.de','Calista Mahendra','+62896290425'),
('calistamansur38@ctemplar.com','Calista Mansur','+628181726178'),
('calistanashiruddin@mailbox.org','Calista Nashiruddin, S.T.','+628286429604'),
('candrakantasalahudin@tutanota.com','Candrakanta Salahudin','+6282162618'),
('candranurdiyanti19@runbox.com','Candra Nurdiyanti, S.E.','+6289618859'),
('capamayasari@runbox.com','Capa Mayasari','+62866538110'),
('capauyainah@mailbox.org','Capa Uyainah','+62819970089'),
('carakasihombing40@hushmail.com','Caraka Sihombing','+628286423371'),
('carlaaryani46@startmail.com','Carla Aryani','+62895611802'),
('carlahakim70@mailbox.org','Carla Hakim','+628961431956'),
('carlamarbun@countermail.com','Carla Marbun','+628222800983'),
('carlapurwanti@runbox.com','Carla Purwanti','+628827864758'),
('carlazulaika81@ctemplar.com','Carla Zulaika','+6281626127'),
('carubjailani41@posteo.de','Carub Jailani','+6288481254'),
('carubkusmawati73@countermail.com','Carub Kusmawati','+62817277034'),
('caturangganugroho75@posteo.de','Caturangga Nugroho, S.T.','+62857166535'),
('caturanggaprayoga83@tutanota.com','Caturangga Prayoga','+62814493359'),
('caturanggriawan45@countermail.com','Catur Anggriawan','+6281551776'),
('caturrajasa@hushmail.com','Catur Rajasa, S.Gz','+6281684920'),
('cawisadiaryani74@countermail.com','Cawisadi Aryani','+62858579749'),
('cawisadihakim@startmail.com','Cawisadi Hakim','+6281426818'),
('cawisadilaksmiwati3@posteo.de','Cawisadi Laksmiwati','+628194030995'),
('cawisonomanullang@posteo.de','Cawisono Manullang','+628589454135'),
('cawisonopratama80@startmail.com','Cawisono Pratama','+6282328620'),
('cawukpratama@runbox.com','Cawuk Pratama, M.Ak','+62856145549'),
('cawuksaptono@lavabit.com','Cawuk Saptono, S.Gz','+6282700314'),
('cawuksimanjuntak@startmail.com','Cawuk Simanjuntak','+628854563954'),
('cayadipratiwi@keemail.me','Cayadi Pratiwi','+6289363178'),
('cayaditampubolon@fastmail.com','Cayadi Tampubolon','+628217771456'),
('cecepnugroho8@aol.com','Cecep Nugroho','+62867484906'),
('cecepriyanti@ctemplar.com','Cecep Riyanti','+62893356976'),
('cecepwidodo67@startmail.com','Cecep Widodo','+62823769113'),
('cemanihariyah@outlook.com','Cemani Hariyah, S.Pd','+6283258259'),
('cemaniprabowo@mailfence.com','Cemani Prabowo, M.Ak','+628955574518'),
('cemetijailani25@mailbox.org','Cemeti Jailani','+6282733841'),
('cemetimarpaung@tutanota.com','Cemeti Marpaung','+6282547439'),
('cemetimaryati@mailbox.org','Cemeti Maryati','+6286765109'),
('cemetiuyainah@runbox.com','Cemeti Uyainah','+6284595467'),
('cemetiwinarsih23@startmail.com','Cemeti Winarsih','+62898617736'),
('cemplunkmarpaung@ctemplar.com','Cemplunk Marpaung','+62885492206'),
('cemplunkpermata50@runbox.com','Cemplunk Permata','+62836146047'),
('cemplunkutami16@startmail.com','Cemplunk Utami, S.Kom','+6289739209'),
('cengkalwastuti34@countermail.com','Cengkal Wastuti, S.E.','+6283164614'),
('cengkalwijayanti@posteo.de','Cengkal Wijayanti','+62842451364'),
('chelseamandala76@startmail.com','Chelsea Mandala','+6283999170'),
('chelseawibowo96@gmx.com','Chelsea Wibowo','+6281564448'),
('ciaobellakusumo@riseup.net','Ciaobella Kusumo','+62859086743'),
('ciaobellapangestu@countermail.com','Ciaobella Pangestu, S.Pt','+628231570159'),
('ciaobellapermata54@startmail.com','Ciaobella Permata','+628781111857'),
('cicihasanah51@tutanota.com','Cici Hasanah','+6284991931'),
('cicimegantara@tutanota.com','Cici Megantara','+6289973887'),
('cicinajmudin39@countermail.com','Cici Najmudin','+6289529510'),
('cicipalastri@countermail.com','Cici Palastri, S.Farm','+6289987458'),
('ciciwahyuni32@runbox.com','Cici Wahyuni','+62883574836'),
('cindymangunsong64@startmail.com','Cindy Mangunsong','+62831104327'),
('cindysiregar3@tutanota.com','Cindy Siregar','+6282766330'),
('cindysitorus59@runbox.com','Cindy Sitorus, S.Ked','+6282574164'),
('cintaiswahyudi67@tutanota.com','Cinta Iswahyudi, S.IP','+6283177199'),
('cintalazuardi21@yandex.cominbox.com','Cinta Lazuardi','+628698917002'),
('cintapurnawati20@mailbox.org','Cinta Purnawati','+628227443760'),
('cintayolanda@posteo.de','Cinta Yolanda','+62837437196'),
('cinthiahakim@posteo.de','Cinthia Hakim','+6281291065'),
('cinthiasamosir@keemail.me','Cinthia Samosir','+6281329413'),
('cinthiasihombing@startmail.com','Cinthia Sihombing','+628967694103'),
('cinthiayuniar@lavabit.com','Cinthia Yuniar, S.Sos','+6281257141'),
('citranashiruddin@tutanota.com','Citra Nashiruddin','+62816903751'),
('citraprasasta46@mailbox.org','Citra Prasasta, S.Gz','+628419798767'),
('citraprayoga67@runbox.com','Citra Prayoga','+62883364225'),
('citrayolanda@startmail.com','Citra Yolanda','+6281482801'),
('clarapalastri40@mailbox.org','Clara Palastri','+62838528693'),
('clarapratama@countermail.com','Clara Pratama, S.Pd','+62896988375'),
('clarawulandari@outlook.com','Clara Wulandari','+628783098374'),
('cornelialazuardi53@runbox.com','Cornelia Lazuardi, M.TI.','+62832632591'),
('corneliamansur95@ctemplar.com','Cornelia Mansur, S.Gz','+6289433814'),
('cutclara24@protonmail.com','Cut Clara Habibi, S.Ked','+6286897291'),
('cutfaizah@countermail.com','Cut Faizah Kurniawan','+628445687091'),
('cuthasna72@startmail.com','Cut Hasna Sihotang','+628459181546'),
('cutira30@mailbox.org','Cut Ira Adriansyah','+6287770786'),
('cutiriana27@gmail.com','Cut Iriana Habibi','+6282439900'),
('cutkania43@mailbox.org','Cut Kania Sihombing, S.I.Kom','+62827033324'),
('cutkeisha14@tutanota.com','Cut Keisha Nasyiah','+6289618177'),
('cutkeisha83@startmail.com','Cut Keisha Zulaika','+6282855046'),
('cutlili10@runbox.com','Cut Lili Fujiati, M.Kom.','+628195935604'),
('cutmaida@posteo.de','Cut Maida Habibi, S.I.Kom','+62828204546'),
('cutmalika@tutanota.com','Cut Malika Maryadi','+62814639084'),
('cutnilam@startmail.com','Cut Nilam Maulana, S.Ked','+62827919454'),
('cutnova@mailbox.org','Cut Nova Yuliarti','+62899726723'),
('cutoni@tutanota.com','Cut Oni Jailani','+62844913888'),
('cutpatricia@protonmail.com','Cut Patricia Kuswoyo','+628297715514'),
('cutpia@protonmail.com','Cut Pia Saptono, S.Psi','+628153606128'),
('cutpuspa40@mailbox.org','Cut Puspa Pratiwi','+6282870480'),
('cutsabrina55@ctemplar.com','Cut Sabrina Gunawan, S.Pd','+628130674218'),
('cutsadina28@mailbox.org','Cut Sadina Nurdiyanti','+6286570720'),
('cutsamiah15@mailbox.org','Cut Samiah Pradana','+6284901804'),
('cutsamiah@yandex.cominbox.com','Cut Samiah Nasyiah, S.Pd','+62858345333'),
('cuttitin@hotmail.com','Cut Titin Laksmiwati, S.Pd','+62838942855'),
('cutvicky@posteo.de','Cut Vicky Nugroho','+6284674811'),
('cutvictoria93@ctemplar.com','Cut Victoria Irawan, S.Kom','+62898507885'),
('cutyuni51@posteo.de','Cut Yuni Sitompul, S.Pd','+62897029518'),
('cutzulfa64@runbox.com','Cut Zulfa Winarno','+6282116343'),
('dacinsinaga98@mailbox.org','Dacin Sinaga','+628253113963'),
('dacinwijaya@runbox.com','Dacin Wijaya, S.I.Kom','+6281997507'),
('dadapnajmudin@startmail.com','Dadap Najmudin','+6286662196'),
('dadisafitri58@runbox.com','Dadi Safitri, S.T.','+6282623545'),
('dagelmaheswara@mail.com','Dagel Maheswara','+62895385241'),
('dagelsihombing93@posteo.de','Dagel Sihombing','+628843377117'),
('dagelwacana@scryptmail.com','Dagel Wacana, M.Pd','+628685444257'),
('dalimapratiwi@ctemplar.com','Dalima Pratiwi','+62893262731'),
('dalimasaragih@startmail.com','Dalima Saragih','+62845457737'),
('daliminhasanah@scryptmail.com','Dalimin Hasanah','+62898627315'),
('dalionoanggriawan25@mailbox.org','Daliono Anggriawan, S.E.','+628676623580'),
('dalionowahyuni@runbox.com','Daliono Wahyuni','+628140403325'),
('dalionoyuniar45@mailbox.org','Daliono Yuniar','+62849781820'),
('damarhasanah64@mailbox.org','Damar Hasanah, S.E.','+6289376046'),
('danangrahimah@startmail.com','Danang Rahimah, S.H.','+628983878341'),
('danuhidayat@posteo.de','Danu Hidayat','+6289636724'),
('danuirawan@posteo.de','Danu Irawan','+62827549189'),
('danusihombing84@countermail.com','Danu Sihombing','+628155075581'),
('danuwidiastuti@runbox.com','Danu Widiastuti','+62849999021'),
('dariatihastuti@mail.com','Dariati Hastuti, S.E.','+6288263637'),
('dariatisuwarno@ctemplar.com','Dariati Suwarno, M.TI.','+62833654231'),
('dariminpermata@tutanota.com','Darimin Permata','+628251603587'),
('darmajimansur@posteo.de','Darmaji Mansur','+6282826326'),
('darmajinashiruddin@startmail.com','Darmaji Nashiruddin','+62867365965'),
('darmajiwinarsih60@keemail.me','Darmaji Winarsih','+6281472359'),
('darmajizulkarnain48@mailbox.org','Darmaji Zulkarnain, M.Ak','+628495037126'),
('darmantokuswoyo62@posteo.de','Darmanto Kuswoyo','+62892832945'),
('darmantosudiati33@ctemplar.com','Darmanto Sudiati','+6281648854'),
('darmanwijayanti24@hushmail.com','Darman Wijayanti','+62835868156'),
('dartonomanullang13@posteo.de','Dartono Manullang','+628599546113'),
('dartonousamah@runbox.com','Dartono Usamah','+628999586763'),
('daruprayoga67@startmail.com','Daru Prayoga','+6281559128'),
('dasahidayat@countermail.com','Dasa Hidayat','+628277480482'),
('devimahendra@mailbox.org','Devi Mahendra','+62897110124'),
('deviwijaya@startmail.com','Devi Wijaya','+628439324083'),
('dewihariyah@mailbox.org','Dewi Hariyah','+62866020667'),
('dewiharyanti60@hotmail.com','Dewi Haryanti','+62898779677'),
('dewiiswahyudi2@ctemplar.com','Dewi Iswahyudi','+628829408337'),
('dewiprasetya@posteo.de','Dewi Prasetya','+628698913059'),
('dewipuspita38@startmail.com','Dewi Puspita','+628578692610'),
('diahkuswoyo19@countermail.com','Diah Kuswoyo','+62859873793'),
('dianastuti83@posteo.de','Dian Astuti','+62842133574'),
('dianfirmansyah10@startmail.com','Dian Firmansyah, M.Farm','+6281787428'),
('diansuartini70@mailbox.org','Dian Suartini','+628659769261'),
('dimazkuswoyo@ctemplar.com','Dimaz Kuswoyo','+6282334358'),
('dimazpurwanti@mailbox.org','Dimaz Purwanti','+62897967511'),
('dinafujiati85@tutanota.com','Dina Fujiati','+62898674905'),
('dinalestari78@mailfence.com','Dina Lestari','+628982218979'),
('dinamanullang36@tutanota.com','Dina Manullang','+628184293176'),
('dindaadriansyah@mailbox.org','Dinda Adriansyah, M.Kom.','+6282885755'),
('dindahandayani4@outlook.com','Dinda Handayani','+6281377006'),
('dindamaheswara8@posteo.de','Dinda Maheswara','+628275303477'),
('dindawastuti35@posteo.de','Dinda Wastuti','+628185924267'),
('dipadamanik@posteo.de','Dipa Damanik','+6287875498'),
('dipahidayanto@posteo.de','Dipa Hidayanto','+62817655712'),
('dirjafarida@posteo.de','Dirja Farida','+6282770418'),
('dodohutasoit50@startmail.com','Dodo Hutasoit','+62819256201'),
('donouwais36@runbox.com','Dono Uwais','+6282188565'),
('dragnes@tutanota.com','dr. Agnes Maheswara','+62856251016'),
('draisyah@countermail.com','dr. Aisyah Hutasoit, S.E.','+6284272482'),
('drajatnababan80@countermail.com','Drajat Nababan, S.Kom','+6286870492'),
('drajatpadmasari59@zoho.com','Drajat Padmasari','+628181261668'),
('dralambana48@fastmail.com','dr. Alambana Maryadi, S.I.Kom','+628966109201'),
('dralika27@posteo.de','Dr. Alika Fujiati','+62857152573'),
('dralmira79@posteo.de','dr. Almira Uyainah','+62838743470'),
('dralmira@startmail.com','Dr. Almira Dabukke, M.Farm','+628932862400'),
('dranastasia@mailbox.org','dr. Anastasia Nugroho','+6285924813'),
('drarta@countermail.com','Dr. Arta Hardiansyah','+628232369930'),
('drartawan@posteo.de','Dr. Artawan Pratama, M.Farm','+628698916366'),
('dratma17@countermail.com','Dr. Atma Hariyah','+628284938592'),
('draurora@aol.com','dr. Aurora Pradipta','+628774919247'),
('drbakda@tutanota.com','Dr. Bakda Sihombing, M.TI.','+62882497898'),
('drbaktiono@startmail.com','dr. Baktiono Kuswandari','+62828681708'),
('drbambang19@mailbox.org','dr. Bambang Riyanti','+6285678452'),
('drbanara53@ctemplar.com','Dr. Banara Nasyiah','+62837920275'),
('drbelinda@mailbox.org','Dr. Belinda Waluyo, M.Kom.','+628973067041'),
('drbetania@posteo.de','Dr. Betania Farida, S.Farm','+62829895022'),
('drcakrawala@startmail.com','Dr. Cakrawala Latupono, S.Psi','+6285712278'),
('drcawuk@tutanota.com','dr. Cawuk Lailasari','+628214156533'),
('drcemeti@outlook.com','Dr. Cemeti Iswahyudi, S.H.','+6289705072'),
('drcengkal@fastmail.com','dr. Cengkal Dongoran','+62846354011'),
('drcici@protonmail.com','Dr. Cici Hartati, S.Sos','+62823769385'),
('drcinthia4@runbox.com','dr. Cinthia Tampubolon','+62825997922'),
('drcitra5@mailfence.com','Dr. Citra Dongoran, S.Ked','+62843094275'),
('drcornelia59@posteo.de','dr. Cornelia Tarihoran, S.Sos','+628858564986'),
('drdacin70@mailbox.org','Dr. Dacin Permadi, S.Psi','+628778569837'),
('drdanuja@startmail.com','dr. Danuja Wibisono','+62896191220'),
('drdariati@posteo.de','Dr. Dariati Namaga','+628953189355'),
('drdirja15@posteo.de','dr. Dirja Dongoran, S.T.','+62896506720'),
('drella@tutanota.com','dr. Ella Zulaika','+6286617458'),
('dreluh@runbox.com','dr. Eluh Nashiruddin','+62814899153'),
('dremong@tutanota.com','Dr. Emong Waskita','+62834601264'),
('drgaduh@mailbox.org','dr. Gaduh Puspita, S.Kom','+628942252953'),
('drgagnes97@posteo.de','drg. Agnes Sinaga, S.I.Kom','+628317875010'),
('drgalang@mailbox.org','Dr. Galang Sitorus, S.Farm','+6282274452'),
('drgalih49@tutanota.com','Dr. Galih Yolanda','+62826565946'),
('drgarsipatra@mailbox.org','drg. Arsipatra Wahyuni','+628268903961'),
('drgasti@ctemplar.com','Dr. Gasti Wasita, S.Ked','+628985605906'),
('drgaurora71@countermail.com','drg. Aurora Habibi','+62843127693'),
('drgdadi74@tutanota.com','drg. Dadi Mustofa','+62842727958'),
('drgdwi@runbox.com','drg. Dwi Wibisono','+628229691180'),
('drgfitriani@posteo.de','drg. Fitriani Budiyanto','+62823589369'),
('drggarda@gmail.com','drg. Garda Waluyo','+62823645648'),
('drghaliyati@mailbox.org','Dr. Ghaliyati Santoso','+6282894449'),
('drghana@countermail.com','drg. Hana Anggriawan','+6282442230'),
('drghasna46@startmail.com','drg. Hasna Napitupulu','+628941452417'),
('drgikin@aol.com','drg. Ikin Latupono','+62836187107'),
('drgina@ctemplar.com','drg. Ina Mulyani','+62817460544'),
('drgira58@countermail.com','drg. Ira Widodo','+6289885491'),
('drgjefri@ctemplar.com','drg. Jefri Kuswandari','+628279594780'),
('drgkajen@mailbox.org','drg. Kajen Dabukke, S.H.','+62859784211'),
('drgkamila@yahoo.com','drg. Kamila Rahmawati','+628322557716'),
('drgkarja41@posteo.de','drg. Karja Adriansyah','+628991964596'),
('drgkasusra@tutanota.com','drg. Kasusra Lestari, S.T.','+62856920866'),
('drglidya75@posteo.de','drg. Lidya Rahayu','+6287824599'),
('drglintang70@posteo.de','drg. Lintang Haryanti','+6283797774'),
('drglurhur31@countermail.com','drg. Lurhur Waskita','+62832613251'),
('drgmala@tutanota.com','drg. Mala Nasyiah','+62842631002'),
('drgmaras@tutanota.com','drg. Maras Widodo, M.Farm','+62897298180'),
('drgmaryadi@posteo.de','drg. Maryadi Kurniawan, S.E.','+62815878103'),
('drgmuhammad38@tutanota.com','drg. Muhammad Hastuti, S.E.I','+6284923187'),
('drgprabawa@mailbox.org','drg. Prabawa Rahimah, S.Kom','+62858374227'),
('drgprayoga48@scryptmail.com','drg. Prayoga Megantara, M.M.','+62832768581'),
('drgpurwa@runbox.com','drg. Purwa Gunawan, S.E.I','+628988400969'),
('drgratih3@tutanota.com','drg. Ratih Wacana, S.H.','+62881504256'),
('drgtari@posteo.de','drg. Tari Oktaviani','+62837116436'),
('drgtaufik@mail.com','drg. Taufik Sudiati, S.T.','+628556899259'),
('drgtiti7@posteo.de','drg. Titi Suryono','+628976809641'),
('drgulva@tutanota.com','drg. Ulva Kurniawan, S.H.','+62845192237'),
('drgwasis@yandex.cominbox.com','drg. Wasis Januar','+628425944152'),
('drgxanana@startmail.com','drg. Xanana Fujiati','+6281536296'),
('drhairyanto@runbox.com','dr. Hairyanto Handayani, M.Pd','+628252724000'),
('drhalima@posteo.de','Dr. Halima Megantara','+6288520126'),
('drhana@countermail.com','dr. Hana Puspasari, S.Gz','+6282291245'),
('drhardana@runbox.com','dr. Hardana Setiawan','+6289510785'),
('drharjasa22@mailbox.org','Dr. Harjasa Waskita','+628228023338'),
('drharsaya@startmail.com','dr. Harsaya Sitorus, S.Pd','+62826604325'),
('drhartaka49@tutanota.com','dr. Hartaka Nainggolan','+6287987806'),
('drhasna56@mailbox.org','Dr. Hasna Usada, S.Farm','+6288200782'),
('drhendra10@runbox.com','dr. Hendra Maryadi, S.E.I','+62828635491'),
('drheru@startmail.com','dr. Heru Maryati','+62893311416'),
('drhilda@hotmail.com','dr. Hilda Zulaika','+62825497930'),
('drida@mailbox.org','dr. Ida Simanjuntak, S.Sos','+628432404082'),
('drirma@countermail.com','dr. Irma Namaga, S.Psi','+628683609342'),
('drjabal53@runbox.com','dr. Jabal Iswahyudi','+62829286448'),
('drjaeman2@protonmail.com','dr. Jaeman Susanti','+6288517810'),
('drjaga@posteo.de','dr. Jaga Sihombing, S.I.Kom','+62865652522'),
('drjaiman@posteo.de','Dr. Jaiman Budiyanto','+62829916164'),
('drjasmin@hotmail.com','Dr. Jasmin Pranowo','+628844033065'),
('drjelita92@outlook.com','dr. Jelita Dongoran, S.IP','+6281512305'),
('drjessica@runbox.com','dr. Jessica Mardhiyah','+6284151724'),
('drkajen54@startmail.com','Dr. Kajen Salahudin, S.Gz','+62829167863'),
('drkamaria@startmail.com','dr. Kamaria Ardianto','+62898950443'),
('drkarimah@gmx.com','Dr. Karimah Siregar','+62829748895'),
('drkarja@startmail.com','dr. Karja Jailani, S.Pd','+6283926192'),
('drkawaca44@startmail.com','dr. Kawaca Wahyudin, M.Kom.','+628191558155'),
('drkayla49@tutanota.com','Dr. Kayla Anggriawan, S.E.','+62812751303'),
('drkemba@runbox.com','dr. Kemba Hasanah, S.Pt','+628970293016'),
('drlaksana43@runbox.com','Dr. Laksana Utami, S.Ked','+6282953589'),
('drlalita@yahoo.com','dr. Lalita Pratiwi, S.E.I','+6282861518'),
('drlasmanto@runbox.com','Dr. Lasmanto Anggriawan, S.H.','+628965152978'),
('drlatika7@posteo.de','dr. Latika Simbolon','+628588530762'),
('drmakuta@runbox.com','Dr. Makuta Widiastuti, M.Farm','+628249927852'),
('drmalik23@startmail.com','Dr. Malik Yolanda','+62894203477'),
('drmaman@runbox.com','Dr. Maman Zulaika, S.T.','+62894494046'),
('drmaya@countermail.com','Dr. Maya Mandala, M.Pd','+628481753665'),
('drmutia1@ctemplar.com','Dr. Mutia Pradana, S.H.','+62849586848'),
('drnajwa@posteo.de','dr. Najwa Hartati','+628983846260'),
('drnalar32@mailbox.org','dr. Nalar Napitupulu, S.E.I','+62898141094'),
('drnasab@mail.com','Dr. Nasab Aryani','+628228023138'),
('drnova@posteo.de','Dr. Nova Kusumo','+6289624915'),
('drolivia88@mailbox.org','Dr. Olivia Prayoga, S.Psi','+628979038143'),
('drpuji10@posteo.de','dr. Puji Pertiwi','+628339837188'),
('drpuput@posteo.de','dr. Puput Prabowo, S.Pt','+62849187744'),
('drpurwadi@startmail.com','dr. Purwadi Hastuti, S.Sos','+628698911632'),
('drputu63@posteo.de','Dr. Putu Budiman, S.Sos','+6287974524'),
('drqori@startmail.com','Dr. Qori Yolanda, S.T.','+62814853155'),
('drrespati@startmail.com','dr. Respati Hutagalung','+62866834114'),
('drrestu92@tutanota.com','dr. Restu Najmudin','+6284393030'),
('drrina@tutanota.com','dr. Rina Suryono, S.Farm','+6286823950'),
('drsalsabila83@posteo.de','Dr. Salsabila Melani, S.E.I','+62895534729'),
('drsamelia74@posteo.de','Drs. Amelia Palastri, M.TI.','+6289844769'),
('drsbalapati21@gmail.com','Drs. Balapati Usamah','+6281594562'),
('drsbambang@runbox.com','Drs. Bambang Yuniar','+628967186524'),
('drsbella1@mailfence.com','Drs. Bella Hartati, S.I.Kom','+62841012621'),
('drsbudi@protonmail.com','Drs. Budi Nasyidah, S.Sos','+62893406209'),
('drscakrabirawa64@ctemplar.com','Drs. Cakrabirawa Wijaya','+6283596971'),
('drscandrakanta67@mailbox.org','Drs. Candrakanta Sinaga','+6281716640'),
('drscarla11@mailbox.org','Drs. Carla Prasetya','+628569010142'),
('drscaturangga43@startmail.com','Drs. Caturangga Lazuardi, M.TI.','+628978314076'),
('drscemeti61@countermail.com','Drs. Cemeti Kusmawati','+62897929612'),
('drschelsea@mailbox.org','Drs. Chelsea Kusmawati','+628381984976'),
('drsciaobella@runbox.com','Drs. Ciaobella Hidayat','+62833397370'),
('drsdalima14@riseup.net','Drs. Dalima Nashiruddin','+6281288348'),
('drsdamu@posteo.de','Drs. Damu Najmudin','+6285614194'),
('drsdarmaji3@gmx.com','Drs. Darmaji Farida','+628496203503'),
('drsdewi@zoho.com','Drs. Dewi Santoso','+62831906028'),
('drsdwi@mailbox.org','Drs. Dwi Rajasa','+6284668307'),
('drsedi@gmx.com','Drs. Edi Prayoga','+6283289198'),
('drsedi@mailbox.org','Drs. Edi Samosir, M.M.','+6289978014'),
('drsepti@startmail.com','dr. Septi Uwais','+6282815015'),
('drsgaman34@posteo.de','Drs. Gaman Rahayu, M.Farm','+6281615694'),
('drsgamblang@mailfence.com','Drs. Gamblang Purwanti, S.Kom','+62833168251'),
('drsgilang34@runbox.com','Drs. Gilang Pangestu','+6287732083'),
('drshari84@riseup.net','Drs. Hari Hutapea, S.T.','+62824570035'),
('drsharimurti41@startmail.com','Drs. Harimurti Maulana','+628238142057'),
('drshilda60@startmail.com','Drs. Hilda Puspasari','+628465903490'),
('drshilda@startmail.com','Drs. Hilda Gunarto','+628238206178'),
('drsian49@yandex.cominbox.com','Drs. Ian Nasyiah','+6287785186'),
('drsina@tutanota.com','Drs. Ina Prasetyo','+628482543226'),
('drsiska33@startmail.com','Dr. Siska Sihombing','+62895020671'),
('drsiti3@yahoo.com','dr. Siti Manullang','+628256577533'),
('drsjaiman53@tutanota.com','Drs. Jaiman Santoso','+628466643643'),
('drsjaka@runbox.com','Drs. Jaka Gunawan','+628267031156'),
('drsjanet@icloud.com','Drs. Janet Wijayanti','+62826403483'),
('drsjarwi44@countermail.com','Drs. Jarwi Damanik, S.Psi','+62833483136'),
('drsjefri87@mailbox.org','Drs. Jefri Wibisono, S.Kom','+628832644003'),
('drsjelita59@mailbox.org','Drs. Jelita Hutapea','+628376681879'),
('drsjinawi51@scryptmail.com','Drs. Jinawi Nuraini, M.Kom.','+62815799346'),
('drskani@tutanota.com','Drs. Kani Wibowo','+628313865547'),
('drskartika66@yahoo.com','Drs. Kartika Napitupulu','+6281584681'),
('drskayun86@posteo.de','Drs. Kayun Rahayu','+62813925040'),
('drskemal15@posteo.de','Drs. Kemal Megantara','+62814321089'),
('drskiandra84@mailbox.org','Drs. Kiandra Saefullah','+62895792622'),
('drskunthara@mailbox.org','Drs. Kunthara Maryati, S.Pd','+6289834825'),
('drslintang43@startmail.com','Drs. Lintang Kusumo, M.M.','+628838875017'),
('drsmakuta84@mailbox.org','Drs. Makuta Putra','+628956401606'),
('drsmulya@posteo.de','Drs. Mulya Nababan, S.E.I','+6284971342'),
('drsmursita87@startmail.com','Drs. Mursita Firmansyah','+62827016825'),
('drsnyoman@countermail.com','Drs. Nyoman Hariyah','+62892740889'),
('drsoleh@riseup.net','dr. Soleh Suryatmi','+628588231173'),
('drsomar33@keemail.me','Drs. Omar Situmorang, S.Sos','+628921767551'),
('drsoni99@scryptmail.com','Drs. Oni Wibowo','+628121747835'),
('drspadma@mailbox.org','Drs. Padma Aryani','+6283598356'),
('drsradit83@ctemplar.com','Drs. Radit Permata','+6285572597'),
('drsratna42@tutanota.com','Drs. Ratna Maheswara','+6287974133'),
('drssabrina71@mailbox.org','Drs. Sabrina Saputra, M.Ak','+628261599525'),
('drsshania@ctemplar.com','Drs. Shania Maryadi, S.Ked','+628785831448'),
('drstari@posteo.de','Drs. Tari Agustina, S.I.Kom','+628162755637'),
('drstiti15@keemail.me','Drs. Titi Zulaika','+6282762280'),
('drstiti29@icloud.com','Drs. Titi Suwarno','+6285719252'),
('drsumi61@gmail.com','Drs. Umi Simbolon','+628121709302'),
('drsvero94@hotmail.com','Drs. Vero Maryadi','+628297664917'),
('drswirda@ctemplar.com','Drs. Wirda Rahimah','+628264201608'),
('drsyahrini@mailbox.org','dr. Syahrini Mansur, S.Farm','+62855170926'),
('drsyance73@runbox.com','Drs. Yance Hariyah','+62848766875'),
('drsyunita@lavabit.com','Drs. Yunita Maryati','+6281543655'),
('drszulaikha@posteo.de','Drs. Zulaikha Purwanti','+628698916122'),
('drtantri74@mailbox.org','dr. Tantri Wijayanti, S.Sos','+6284957014'),
('drtitin@mailbox.org','dr. Titin Samosir, S.Pt','+628828188636'),
('drtitin@riseup.net','dr. Titin Maulana','+628450329505'),
('drtugiman@ctemplar.com','dr. Tugiman Halim','+62849752995'),
('druli@outlook.com','dr. Uli Mayasari','+6286688978'),
('drulva38@countermail.com','dr. Ulva Mandasari','+628251041273'),
('drulya24@mailfence.com','dr. Ulya Hastuti','+628173840097'),
('drutama@mailbox.org','dr. Utama Damanik, S.E.','+62824527653'),
('drvicky@outlook.com','dr. Vicky Hastuti, M.TI.','+628376136877'),
('drvictoria@posteo.de','Dr. Victoria Laksita, S.Psi','+6281459875'),
('drwadi73@mailbox.org','dr. Wadi Zulaika, S.Sos','+628284614939'),
('drwaluyo95@hushmail.com','Dr. Waluyo Hidayanto, S.I.Kom','+6283563380'),
('drwardi42@runbox.com','Dr. Wardi Anggraini','+62819277524'),
('drwulan35@posteo.de','dr. Wulan Saefullah, S.Ked','+62892495902'),
('dryance68@runbox.com','dr. Yance Farida','+6283107020'),
('dryulia@riseup.net','Dr. Yulia Yulianti','+6289609970'),
('dryunita83@runbox.com','dr. Yunita Kusmawati','+628778957030'),
('drzulaikha39@countermail.com','Dr. Zulaikha Hakim, S.Pt','+62827917778'),
('dtbakiono@ctemplar.com','Dt. Bakiono Utama','+62824605307'),
('dtcahyanto38@startmail.com','Dt. Cahyanto Haryanto, M.TI.','+628220082171'),
('dtdwi57@runbox.com','Dt. Dwi Pratiwi','+62817917057'),
('dtemin@yandex.cominbox.com','Dt. Emin Iswahyudi','+62829583132'),
('dtgalih58@posteo.de','Dt. Galih Purnawati, S.Pt','+62828454990'),
('dtgaman1@countermail.com','Dt. Gaman Susanti, S.Sos','+6281343229'),
('dtgangsar87@runbox.com','Dt. Gangsar Budiyanto, S.Gz','+628431476929'),
('dtharsaya68@outlook.com','Dt. Harsaya Nuraini','+628555817562'),
('dtibrahim71@countermail.com','Dt. Ibrahim Maryati, S.Gz','+6282849325'),
('dtjaga@posteo.de','Dt. Jaga Marbun, S.Pt','+62847709884'),
('dtjarwadi99@startmail.com','Dt. Jarwadi Pranowo, S.IP','+62893560234'),
('dtjoko@mailbox.org','Dt. Joko Setiawan','+62844183641'),
('dtkuncara19@startmail.com','Dt. Kuncara Salahudin','+62857234590'),
('dtlanjar64@startmail.com','Dt. Lanjar Narpati','+628161884769'),
('dtlantar@scryptmail.com','Dt. Lantar Budiyanto','+6286753172'),
('dtluthfi41@runbox.com','Dt. Luthfi Waskita, M.M.','+62825323186'),
('dtmargana41@runbox.com','Dt. Margana Suryono, M.Kom.','+628319612546'),
('dtmartani@yandex.cominbox.com','Dt. Martani Pradipta, S.Pt','+628367783995'),
('dtnarji@mailbox.org','Dt. Narji Utama','+6287705938'),
('dtpanji@startmail.com','Dt. Panji Wahyudin','+628310105346'),
('dtradit75@posteo.de','Dt. Radit Uwais','+6284917687'),
('dtrafi@runbox.com','Dt. Rafi Utama','+62855533252'),
('dtsabar@countermail.com','Dt. Sabar Kuswoyo','+62838968434'),
('dttomi@mail.com','Dt. Tomi Utami, M.TI.','+628294811958'),
('dtvega13@ctemplar.com','Dt. Vega Melani','+62815231242'),
('dtvega@runbox.com','Dt. Vega Pratama','+6284354882'),
('dtwardaya28@mailbox.org','Dt. Wardaya Widiastuti, S.T.','+628273517102'),
('dtwardaya@fastmail.com','Dt. Wardaya Damanik, S.T.','+6284460967'),
('dtyahya38@yandex.cominbox.com','Dt. Yahya Pertiwi, S.Sos','+628357087545'),
('dwipuspasari42@posteo.de','Dwi Puspasari, S.Kom','+62868975172'),
('edimaheswara93@hotmail.com','Edi Maheswara, M.M.','+62832947342'),
('edimarbun36@mailbox.org','Edi Marbun','+628391043970'),
('edinasyiah48@mailbox.org','Edi Nasyiah','+62859902557'),
('edinasyidah@startmail.com','Edi Nasyidah','+628998213673'),
('edipuspita@posteo.de','Edi Puspita, S.T.','+6283455729'),
('edisonmarpaung@scryptmail.com','Edison Marpaung','+62847379191'),
('edisonsiregar@startmail.com','Edison Siregar','+62844874539'),
('edisonwasita@posteo.de','Edison Wasita','+628290649796'),
('editarihoran@mailbox.org','Edi Tarihoran','+62858458435'),
('ediusada45@posteo.de','Edi Usada','+628150218897'),
('edwardlatupono16@tutanota.com','Edward Latupono','+62827973645'),
('edwardmardhiyah46@startmail.com','Edward Mardhiyah','+628664006669'),
('edwardwibowo@ctemplar.com','Edward Wibowo','+6282133172'),
('egahutapea@mailbox.org','Ega Hutapea','+62849731788'),
('egalailasari51@startmail.com','Ega Lailasari, S.H.','+6282578298'),
('egapalastri@countermail.com','Ega Palastri','+628955359791'),
('egasudiati31@runbox.com','Ega Sudiati, S.H.','+6282418857'),
('ekapalastri34@ctemplar.com','Eka Palastri','+6285790035'),
('ekasamosir2@startmail.com','Eka Samosir','+62877921633'),
('ekatarihoran54@countermail.com','Eka Tarihoran','+6289889663'),
('ekawijaya6@mailbox.org','Eka Wijaya, S.I.Kom','+628455062910'),
('ekazulaika95@startmail.com','Eka Zulaika','+6289641529'),
('elihariyah@startmail.com','Eli Hariyah, S.E.I','+628790862901'),
('elilestari@keemail.me','Eli Lestari','+62865965934'),
('elimarpaung91@lavabit.com','Eli Marpaung, S.Psi','+62849722394'),
('elisadabukke@posteo.de','Elisa Dabukke','+628150287435'),
('elisahardiansyah60@posteo.de','Elisa Hardiansyah','+6284498547'),
('elisanurdiyanti@posteo.de','Elisa Nurdiyanti','+62826511892'),
('ellalaksita@tutanota.com','Ella Laksita','+628698912709'),
('ellanasyidah68@posteo.de','Ella Nasyidah','+62847846742'),
('ellariyanti87@zoho.com','Ella Riyanti','+62842834958'),
('ellawidiastuti71@gmx.com','Ella Widiastuti','+62879183795'),
('ellisanggriawan@startmail.com','Ellis Anggriawan','+62833565159'),
('ellisastuti48@riseup.net','Ellis Astuti','+628979088719'),
('ellisastuti61@startmail.com','Ellis Astuti, S.Farm','+6284311720'),
('ellismanullang@posteo.de','Ellis Manullang, S.Pt','+628164040352'),
('ellisnugroho@countermail.com','Ellis Nugroho','+628844862154'),
('ellisrahimah69@zoho.com','Ellis Rahimah','+62896796665'),
('elmaprasasta@countermail.com','Elma Prasasta','+6285659325'),
('elmasiregar10@tutanota.com','Elma Siregar','+628774492551'),
('elmauyainah@mailfence.com','Elma Uyainah','+62859374494'),
('elonwinarsih@countermail.com','Elon Winarsih','+6282825691'),
('eluhrahimah28@posteo.de','Eluh Rahimah','+6288349121'),
('elvinamandala74@mail.com','Elvina Mandala, M.TI.','+6289599775'),
('elvinpudjiastuti53@tutanota.com','Elvin Pudjiastuti','+62822164509'),
('emankusmawati69@startmail.com','Eman Kusmawati, S.Pd','+62824000304'),
('emanwidiastuti46@gmail.com','Eman Widiastuti','+62857248868'),
('emilmandasari63@icloud.com','Emil Mandasari','+6281845546'),
('eminlatupono@zoho.com','Emin Latupono','+628973227078'),
('emplukhasanah@tutanota.com','Empluk Hasanah, M.Ak','+628180251457'),
('emplukmandala@posteo.de','Empluk Mandala','+628411592786'),
('emplukputra@mailbox.org','Empluk Putra','+6283973503'),
('emplukwidodo28@aol.com','Empluk Widodo, S.Gz','+628978117623'),
('endahhidayanto@keemail.me','Endah Hidayanto, M.M.','+628177240507'),
('endahnarpati77@ctemplar.com','Endah Narpati','+6289618676'),
('endahsaragih@runbox.com','Endah Saragih','+628380175419'),
('endahsetiawan@tutanota.com','Endah Setiawan','+628998213187'),
('endrawaskita9@hushmail.com','Endra Waskita, S.H.','+62822098697'),
('entengnapitupulu52@posteo.de','Enteng Napitupulu, M.Ak','+628181353082'),
('entengtarihoran@tutanota.com','Enteng Tarihoran','+62831357454'),
('erikzulkarnain@icloud.com','Erik Zulkarnain, M.TI.','+628383808381'),
('estiawanhidayanto@runbox.com','Estiawan Hidayanto','+6284500203'),
('estiawanmandasari13@mailbox.org','Estiawan Mandasari','+62834500593'),
('evabudiyanto@mailbox.org','Eva Budiyanto','+6285596184'),
('evanashiruddin@runbox.com','Eva Nashiruddin','+6288474661'),
('evaoktaviani@riseup.net','Eva Oktaviani','+628426524063'),
('faizahhassanah55@startmail.com','Faizah Hassanah','+6282695007'),
('faizahwaluyo3@mailbox.org','Faizah Waluyo, S.E.I','+628223758283'),
('farahmansur@startmail.com','Farah Mansur','+628965527137'),
('farahyuliarti@runbox.com','Farah Yuliarti, S.Gz','+628225840799'),
('farhunnisahutapea@runbox.com','Farhunnisa Hutapea','+628248363209'),
('farhunnisakuswandari@fastmail.com','Farhunnisa Kuswandari, M.Kom.','+6281429562'),
('farhunnisasiregar60@ctemplar.com','Farhunnisa Siregar','+628174788738'),
('farhunnisawaskita44@posteo.de','Farhunnisa Waskita','+6282815826'),
('fathonahlaksmiwati@posteo.de','Fathonah Laksmiwati','+62834977365'),
('fathonahmulyani56@posteo.de','Fathonah Mulyani','+6281567834'),
('fathonahputra89@hushmail.com','Fathonah Putra, M.Ak','+62885731773'),
('fathonahutama27@posteo.de','Fathonah Utama, M.TI.','+628275347508'),
('fathonahwasita16@startmail.com','Fathonah Wasita','+628680139696'),
('fathonahwinarsih76@posteo.de','Fathonah Winarsih','+62822323805'),
('fitriahutagalung100@countermail.com','Fitria Hutagalung, M.Pd','+6287907271'),
('fitrianiagustina@tutanota.com','Fitriani Agustina','+62843152244'),
('fitrianihariyah6@tutanota.com','Fitriani Hariyah','+628157325265'),
('fitrianinatsir15@runbox.com','Fitriani Natsir','+6281960246'),
('fitrianitamba75@mailbox.org','Fitriani Tamba, S.Pt','+6283760526'),
('fitriasalahudin43@startmail.com','Fitria Salahudin','+62819472690'),
('fitriasaptono50@runbox.com','Fitria Saptono','+628934850274'),
('gabriellairawan@posteo.de','Gabriella Irawan, S.I.Kom','+628196101450'),
('gabriellanasyiah14@posteo.de','Gabriella Nasyiah, M.Pd','+628550837449'),
('gabriellaprastuti@gmx.com','Gabriella Prastuti','+628294319029'),
('gadamangunsong3@mailbox.org','Gada Mangunsong','+628473421100'),
('gadingputra@posteo.de','Gading Putra','+6285737979'),
('galakmansur4@tutanota.com','Galak Mansur','+628496531721'),
('galionoramadan76@mailbox.org','Galiono Ramadan','+6281513374'),
('galuhanggraini@posteo.de','Galuh Anggraini','+628979104336'),
('galurpratiwi23@posteo.de','Galur Pratiwi','+6283679186'),
('gamanimarbun10@posteo.de','Gamani Marbun, M.Farm','+628698912840'),
('gamaninuraini48@ctemplar.com','Gamani Nuraini','+628839926735'),
('gamankusumo74@lavabit.com','Gaman Kusumo','+62814040748'),
('gamantowidiastuti@tutanota.com','Gamanto Widiastuti, M.Kom.','+6289828763'),
('gambirawijaya36@countermail.com','Gambira Wijaya, S.H.','+62822236553'),
('gambirawijaya50@ctemplar.com','Gambira Wijaya','+628669288030'),
('gamblangnashiruddin91@tutanota.com','Gamblang Nashiruddin','+62824048406'),
('gamblangpratiwi@mail.com','Gamblang Pratiwi','+62821357783'),
('gandamandasari@runbox.com','Ganda Mandasari','+6284791929'),
('gandasinaga73@ctemplar.com','Ganda Sinaga','+62826938850'),
('gandayolanda26@riseup.net','Ganda Yolanda','+62859547050'),
('gandewasitorus@startmail.com','Gandewa Sitorus','+6289643363'),
('gandiandriani76@runbox.com','Gandi Andriani','+62878770823'),
('gandidamanik@mailbox.org','Gandi Damanik, M.M.','+62824711871'),
('gandimardhiyah51@ctemplar.com','Gandi Mardhiyah','+628683098826'),
('gandisamosir8@startmail.com','Gandi Samosir','+628158300492'),
('ganepnababan12@posteo.de','Ganep Nababan','+6282553467'),
('ganeppratiwi@runbox.com','Ganep Pratiwi','+6281955204'),
('ganepsimanjuntak@posteo.de','Ganep Simanjuntak','+6282560587'),
('gangsaputra@startmail.com','Gangsa Putra, S.I.Kom','+62892084553'),
('gangsarsaragih46@posteo.de','Gangsar Saragih, S.Farm','+6281489228'),
('gangsasirait39@posteo.de','Gangsa Sirait','+628673500491'),
('gantarmansur12@startmail.com','Gantar Mansur','+628984532174'),
('gantarputra76@keemail.me','Gantar Putra','+6285956947'),
('garahartati@posteo.de','Gara Hartati','+62818548722'),
('garangkuswoyo75@runbox.com','Garang Kuswoyo','+6283446292'),
('garanhutasoit3@hotmail.com','Garan Hutasoit','+6286751379'),
('garauwais28@ctemplar.com','Gara Uwais','+62814060862'),
('gardamegantara@startmail.com','Garda Megantara, S.IP','+62845649320'),
('gastiandriani@mailbox.org','Gasti Andriani','+628149918197'),
('gastifirgantoro@mail.com','Gasti Firgantoro','+628161569179'),
('gastipangestu@posteo.de','Gasti Pangestu','+62855405243'),
('gastirahayu45@runbox.com','Gasti Rahayu','+6282806913'),
('gastisuwarno@zoho.com','Gasti Suwarno','+6284837022'),
('gatothariyah62@posteo.de','Gatot Hariyah','+628698911140'),
('gatotpermata14@posteo.de','Gatot Permata','+628655693407'),
('gatotsiregar@protonmail.com','Gatot Siregar','+62829084682'),
('gatrahalimah@gmail.com','Gatra Halimah','+62897024166'),
('gatrahartati@startmail.com','Gatra Hartati, M.Ak','+628297994269'),
('gatranapitupulu@tutanota.com','Gatra Napitupulu, S.T.','+6283144523'),
('gawatihutagalung@countermail.com','Gawati Hutagalung','+628941676990'),
('gawatiwidiastuti@ctemplar.com','Gawati Widiastuti','+6282869567'),
('gentaagustina83@lavabit.com','Genta Agustina','+6284846752'),
('gentadabukke@tutanota.com','Genta Dabukke','+628969829803'),
('gentasirait@hotmail.com','Genta Sirait','+6284160307'),
('ghaliyatianggriawan@mailbox.org','Ghaliyati Anggriawan','+62884141508'),
('ghaliyatihakim@startmail.com','Ghaliyati Hakim','+62895857435'),
('ghaliyatihandayani@startmail.com','Ghaliyati Handayani','+628793254676'),
('ghaliyatimarpaung@mailbox.org','Ghaliyati Marpaung','+628835666618'),
('ghaliyatiutami@mailbox.org','Ghaliyati Utami','+62833400608'),
('ghaniyuniar84@countermail.com','Ghani Yuniar','+6284315879'),
('gilangkusmawati66@mailbox.org','Gilang Kusmawati, S.Sos','+62833306328'),
('gilangutami@startmail.com','Gilang Utami','+628132052934'),
('gildaiswahyudi@posteo.de','Gilda Iswahyudi','+628698918803'),
('gildanarpati@runbox.com','Gilda Narpati','+6289690887'),
('gildapalastri6@tutanota.com','Gilda Palastri','+6284876601'),
('gildaprasetya@scryptmail.com','Gilda Prasetya','+62818434835'),
('ginadongoran38@outlook.com','Gina Dongoran','+6283534192'),
('ginanugroho26@keemail.me','Gina Nugroho','+628125710168'),
('ginasaragih@runbox.com','Gina Saragih','+62825267361'),
('hadiramadan42@runbox.com','Hadi Ramadan','+628134557225'),
('hafshahpangestu63@posteo.de','Hafshah Pangestu','+6281432402'),
('hafshahprabowo95@outlook.com','Hafshah Prabowo','+62834173752'),
('hafshahpurnawati8@ctemplar.com','Hafshah Purnawati','+6284898088'),
('hafshahsalahudin76@startmail.com','Hafshah Salahudin, S.I.Kom','+62823857991'),
('hafshahuwais@posteo.de','Hafshah Uwais','+62836212204'),
('hafshahzulaika70@posteo.de','Hafshah Zulaika','+6285730272'),
('hairyantomahendra23@hotmail.com','Hairyanto Mahendra, S.E.','+62895797558'),
('hairyantoyolanda87@mailbox.org','Hairyanto Yolanda, S.Pt','+628998211778'),
('halimawijaya@posteo.de','Halima Wijaya','+62813931026'),
('hamimahakim@ctemplar.com','Hamima Hakim','+628127966768'),
('hamimamangunsong25@mailbox.org','Hamima Mangunsong','+62899113069'),
('hamimamansur34@fastmail.com','Hamima Mansur','+628812182063'),
('hamimanugroho@hushmail.com','Hamima Nugroho','+6289943526'),
('hamimariyanti@mailbox.org','Hamima Riyanti','+6282290179'),
('hamimauwais18@ctemplar.com','Hamima Uwais','+6284203167'),
('hanadabukke41@startmail.com','Hana Dabukke','+628386061598'),
('hanamandala44@keemail.me','Hana Mandala','+6285624271'),
('hananamaga47@startmail.com','Hana Namaga, S.Psi','+628838375028'),
('hanatarihoran@mailbox.org','Hana Tarihoran','+6281606784'),
('hanggabaya58@runbox.com','H. Anggabaya Wijayanti','+6281303099'),
('haniagustina75@yandex.cominbox.com','Hani Agustina, S.H.','+6284723133'),
('haniharyanto@hotmail.com','Hani Haryanto','+6289217170'),
('hanipranowo52@mailbox.org','Hani Pranowo','+628234114869'),
('hardimelani@startmail.com','Hardi Melani','+628947475001'),
('hardipuspita@posteo.de','Hardi Puspita, M.Kom.','+6285720507'),
('harimaryadi98@mailbox.org','Hari Maryadi','+6286522856'),
('harimurtihakim44@mailbox.org','Harimurti Hakim, S.T.','+62812029782'),
('harimurtilatupono33@countermail.com','Harimurti Latupono','+6281557865'),
('harinovitasari@tutanota.com','Hari Novitasari','+628820511818'),
('harjanababan56@icloud.com','Harja Nababan','+628947084769'),
('harjasasiregar@yahoo.com','Harjasa Siregar','+628962403104'),
('harjayayuliarti54@runbox.com','Harjaya Yuliarti','+6282654213'),
('harjopudjiastuti76@startmail.com','Harjo Pudjiastuti, S.T.','+628842046716'),
('harsanaprayoga@runbox.com','Harsana Prayoga, S.Ked','+62892050866'),
('harsanawinarno@posteo.de','Harsana Winarno','+6284493694'),
('harsantohakim@mailbox.org','Harsanto Hakim','+6282643261'),
('harsantohandayani88@tutanota.com','Harsanto Handayani, S.Kom','+62892605126'),
('harsantosihombing46@posteo.de','Harsanto Sihombing','+628825059766'),
('harsayairawan@runbox.com','Harsaya Irawan','+6284806675'),
('harsayajanuar@runbox.com','Harsaya Januar','+628427163664'),
('harsayasaputra@countermail.com','Harsaya Saputra','+6286504945'),
('harsayawahyuni9@mail.com','Harsaya Wahyuni, S.I.Kom','+6284447167'),
('hartanalailasari5@runbox.com','Hartana Lailasari','+6287968455'),
('hartananamaga2@posteo.de','Hartana Namaga','+62866639263'),
('hartohakim@mailbox.org','Harto Hakim','+62834249878'),
('hartokuswandari@tutanota.com','Harto Kuswandari','+62835889387'),
('hartowijayanti@mailbox.org','Harto Wijayanti, S.Farm','+6282398964'),
('hasanhasanah@startmail.com','Hasan Hasanah','+628573134129'),
('hasanhidayanto@tutanota.com','Hasan Hidayanto, S.I.Kom','+62836919531'),
('hasanwinarsih45@posteo.de','Hasan Winarsih, S.H.','+62859098473'),
('hasimdamanik37@mailbox.org','Hasim Damanik','+62898904813'),
('hasimmelani6@startmail.com','Hasim Melani','+628319083192'),
('hasimmulyani@ctemplar.com','Hasim Mulyani, S.Psi','+62879422887'),
('hasnaanggriawan52@lavabit.com','Hasna Anggriawan','+6289309820'),
('hasnadamanik@posteo.de','Hasna Damanik','+6282181713'),
('hasnaharyanto@runbox.com','Hasna Haryanto','+6283433156'),
('hasnamaulana@startmail.com','Hasna Maulana','+62844368615'),
('hasnanatsir@startmail.com','Hasna Natsir','+6282440858'),
('hasnapratiwi@runbox.com','Hasna Pratiwi','+62892224343'),
('hasnariyanti42@tutanota.com','Hasna Riyanti','+628262801225'),
('hasnasamosir@protonmail.com','Hasna Samosir','+628824792902'),
('hastaprasasta30@startmail.com','Hasta Prasasta','+6285913361'),
('hbambang78@outlook.com','H. Bambang Rahimah, M.M.','+628340802426'),
('hbanawi47@countermail.com','H. Banawi Utama, M.TI.','+6281858428'),
('hcawisono@outlook.com','H. Cawisono Nababan, S.Ked','+628298811393'),
('hdariati81@mailbox.org','H. Dariati Latupono','+6282674808'),
('hdaruna@startmail.com','H. Daruna Puspasari','+628234532870'),
('hemong58@posteo.de','H. Emong Thamrin','+62818198034'),
('hendranamaga@mailfence.com','Hendra Namaga, M.Farm','+628440021904'),
('hendrawaskita57@tutanota.com','Hendra Waskita','+6282607447'),
('hendrinasyiah@startmail.com','Hendri Nasyiah, S.H.','+62833183024'),
('herusihombing@countermail.com','Heru Sihombing','+62855460062'),
('heruwaskita@protonmail.com','Heru Waskita','+628921103183'),
('hestiaryani@mailbox.org','Hesti Aryani','+628993300234'),
('hestihassanah88@mail.com','Hesti Hassanah','+6286655049'),
('hestioktaviani@startmail.com','Hesti Oktaviani','+62859976780'),
('hestiyolanda@tutanota.com','Hesti Yolanda','+62857837244'),
('hhardana89@keemail.me','H. Hardana Putra, S.Gz','+628977471910'),
('hildamangunsong@outlook.com','Hilda Mangunsong','+62823118245'),
('hildaramadan3@hushmail.com','Hilda Ramadan, M.Ak','+628990429173'),
('himawansetiawan@mailbox.org','Himawan Setiawan, S.H.','+62848643284'),
('himawansuryono12@posteo.de','Himawan Suryono','+62898765898'),
('himawansuwarno@gmail.com','Himawan Suwarno','+62849373463'),
('hjagaraga95@mailbox.org','H. Jagaraga Samosir','+6284966576'),
('hjalmira56@startmail.com','Hj. Almira Usamah','+62849551981'),
('hjami62@posteo.de','Hj. Ami Sinaga, S.T.','+6288122000'),
('hjayadi19@mailbox.org','H. Jayadi Kusumo, S.E.','+6281345993'),
('hjayu@posteo.de','Hj. Ayu Oktaviani','+6281919070'),
('hjbetania@lavabit.com','Hj. Betania Jailani','+62827143154'),
('hjdinda@outlook.com','Hj. Dinda Sudiati, M.Pd','+6284864399'),
('hjdinda@posteo.de','Hj. Dinda Sitompul','+62826906342'),
('hjefri91@gmail.com','H. Jefri Widiastuti, S.Sos','+628998213489'),
('hjelisa73@mailbox.org','Hj. Elisa Wijaya','+628832490669'),
('hjellis65@mailbox.org','Hj. Ellis Marpaung','+62878196734'),
('hjgasti97@startmail.com','Hj. Gasti Puspasari, S.Farm','+62833988690'),
('hjhana@yahoo.com','Hj. Hana Wahyuni','+62865726686'),
('hjhesti22@startmail.com','Hj. Hesti Pratiwi','+628956694902'),
('hjhilda@tutanota.com','Hj. Hilda Kuswoyo, M.M.','+62865616152'),
('hjkayla52@posteo.de','Hj. Kayla Laksita','+62855433869'),
('hjmutia95@tutanota.com','Hj. Mutia Mardhiyah','+62881608466'),
('hjnatalia@runbox.com','Hj. Natalia Maheswara','+6282643269'),
('hjoni33@mailfence.com','Hj. Oni Wijayanti, S.Ked','+628448888475'),
('hjpuput8@posteo.de','Hj. Puput Prasasta, M.Farm','+628142716429'),
('hjqueen12@startmail.com','Hj. Queen Yulianti, M.M.','+62843991217'),
('hjsalimah32@scryptmail.com','Hj. Salimah Maryadi','+628968288213'),
('hjsarah60@runbox.com','Hj. Sarah Namaga, S.I.Kom','+6283669942'),
('hjsiska2@posteo.de','Hj. Siska Andriani','+62828078377'),
('hjtira34@lavabit.com','Hj. Tira Pudjiastuti','+6289907747'),
('hjumi78@countermail.com','Hj. Umi Mandala, M.Farm','+628250110574'),
('hjvanesa@posteo.de','Hj. Vanesa Prasetyo, S.H.','+62842031128'),
('hjvera@tutanota.com','Hj. Vera Puspita','+62868807643'),
('hjwani@ctemplar.com','Hj. Wani Suwarno','+62834171020'),
('hjwidya@mailfence.com','Hj. Widya Prasetyo, M.TI.','+6288120641'),
('hjyunita99@mailbox.org','Hj. Yunita Hidayat','+6286899983'),
('hkamidin@riseup.net','H. Kamidin Suartini','+6281620576'),
('hkoko@countermail.com','H. Koko Mansur, S.Kom','+62846833020'),
('hkunthara@tutanota.com','H. Kunthara Hastuti','+6282904412'),
('hlantar86@tutanota.com','H. Lantar Halim, S.Kom','+628492475865'),
('hlantar@tutanota.com','H. Lantar Mandala, M.TI.','+62883800154'),
('hlasmono@mailbox.org','H. Lasmono Yolanda, M.M.','+6282825770'),
('hrosman33@yandex.cominbox.com','H. Rosman Mangunsong, S.Gz','+6289781958'),
('hsabar80@posteo.de','H. Sabar Budiman','+6286535549'),
('hsoleh@runbox.com','H. Soleh Iswahyudi','+628251811497'),
('htaufik28@lavabit.com','H. Taufik Usamah','+6284425986'),
('htirta87@ctemplar.com','H. Tirta Tampubolon','+6282285811'),
('humairadongoran17@posteo.de','Humaira Dongoran','+6283427161'),
('humairaiswahyudi81@ctemplar.com','Humaira Iswahyudi','+62814758250'),
('humairanababan2@ctemplar.com','Humaira Nababan','+628284114041'),
('humairaprasetya61@countermail.com','Humaira Prasetya, S.Farm','+6281547850'),
('humay@mailbox.org','H. Umay Mulyani','+6282994547'),
('husman@hushmail.com','H. Usman Rahimah, S.Gz','+628210930757'),
('hwarta80@mailbox.org','H. Warta Wijayanti, M.Kom.','+62813795682'),
('hwawan@mailbox.org','H. Wawan Simanjuntak, S.Sos','+6283690397'),
('hyoga60@ctemplar.com','H. Yoga Simanjuntak','+6288342561'),
('ibrahimdamanik@mailbox.org','Ibrahim Damanik','+62824032353'),
('ibranilailasari95@posteo.de','Ibrani Lailasari','+62845595374'),
('ibranisiregar51@ctemplar.com','Ibrani Siregar, M.Farm','+6282583775'),
('ibunsaptono@fastmail.com','Ibun Saptono','+6283938671'),
('ichaadriansyah63@tutanota.com','Icha Adriansyah','+62879880704'),
('ichahassanah@posteo.de','Icha Hassanah','+6287837530'),
('ichakusumo71@ctemplar.com','Icha Kusumo, S.E.','+6284253693'),
('ichanababan81@posteo.de','Icha Nababan','+628155745204'),
('idairawan@ctemplar.com','Ida Irawan, M.TI.','+628131299967'),
('ifaiswahyudi5@mailbox.org','Ifa Iswahyudi','+628980394337'),
('ihsanlazuardi@ctemplar.com','Ihsan Lazuardi','+6288522393'),
('ikahabibi@riseup.net','Ika Habibi','+628988096609'),
('ikaharyanti17@tutanota.com','Ika Haryanti','+6289212293'),
('ikahidayanto@runbox.com','Ika Hidayanto','+62813701770'),
('ikahutasoit@posteo.de','Ika Hutasoit','+6289570005'),
('ikapermata@hushmail.com','Ika Permata','+628785163246'),
('ikawijaya@posteo.de','Ika Wijaya','+628987652837'),
('ikhsanwibisono@mailbox.org','Ikhsan Wibisono, S.Psi','+628673415603'),
('ikinhidayanto@tutanota.com','Ikin Hidayanto','+6289763587'),
('ikinprasetyo86@ctemplar.com','Ikin Prasetyo','+628985226844'),
('ilsadabukke@runbox.com','Ilsa Dabukke','+62829286326'),
('ilsahardiansyah49@countermail.com','Ilsa Hardiansyah','+6281537313'),
('ilsamaryadi93@tutanota.com','Ilsa Maryadi','+6281605326'),
('ilsaoktaviani@tutanota.com','Ilsa Oktaviani, S.Sos','+6281566417'),
('ilsautami89@tutanota.com','Ilsa Utami','+628297698732'),
('ilyasmangunsong@ctemplar.com','Ilyas Mangunsong','+628369835418'),
('ilyasmanullang36@tutanota.com','Ilyas Manullang','+6281928278'),
('imamprasetya@tutanota.com','Imam Prasetya','+62855874808'),
('imampratiwi10@mailbox.org','Imam Pratiwi','+628143486020'),
('imamrajasa@tutanota.com','Imam Rajasa','+628596468311'),
('inarahayu57@runbox.com','Ina Rahayu','+628579811725'),
('inauyainah@tutanota.com','Ina Uyainah','+62815005167'),
('inayulianti@tutanota.com','Ina Yulianti','+6282368018'),
('indahfirmansyah@mailbox.org','Indah Firmansyah','+628268707819'),
('indahhutagalung@runbox.com','Indah Hutagalung','+6283103529'),
('indahrahayu@countermail.com','Indah Rahayu','+628964660216'),
('indahsantoso4@posteo.de','Indah Santoso','+628140452032'),
('indahwibisono16@hushmail.com','Indah Wibisono','+62884653907'),
('indraagustina@mailbox.org','Indra Agustina','+6283238657'),
('indranasyidah61@aol.com','Indra Nasyidah, S.Farm','+628198831223'),
('intanhandayani62@mailbox.org','Intan Handayani','+628194968319'),
('intansafitri30@mailbox.org','Intan Safitri','+62866347366'),
('iragunarto12@runbox.com','Ira Gunarto, M.Farm','+62897322215'),
('irajimat22@posteo.de','Ir. Ajimat Yolanda, S.Farm','+6282848545'),
('irakarsana@tutanota.com','Ir. Akarsana Rahayu','+62828682073'),
('iralmira48@posteo.de','Ir. Almira Astuti, S.I.Kom','+6282507935'),
('iramandasari66@countermail.com','Ira Mandasari','+6284341359'),
('irartanto1@startmail.com','Ir. Artanto Mahendra, S.I.Kom','+628431796456'),
('irazalea@mailbox.org','Ir. Azalea Hakim, M.Pd','+6284445879'),
('irbagas@mailbox.org','Ir. Bagas Astuti','+6283422631'),
('irbajragin@posteo.de','Ir. Bajragin Hastuti','+62823381623'),
('irbakiadi@tutanota.com','Ir. Bakiadi Gunawan, S.I.Kom','+628983156126'),
('irbalapati55@tutanota.com','Ir. Balapati Mayasari','+628223546262'),
('ircinta40@outlook.com','Ir. Cinta Damanik, S.Pt','+6282193750'),
('irdasa@posteo.de','Ir. Dasa Lazuardi','+628183778419'),
('irelvina@runbox.com','Ir. Elvina Prasetya','+62859056211'),
('irfanwaskita63@posteo.de','Irfan Waskita, M.Kom.','+628453545153'),
('irfathonah@startmail.com','Ir. Fathonah Saputra','+628480151674'),
('irgalang47@mailbox.org','Ir. Galang Sirait, S.Pt','+6282382746'),
('irgina@ctemplar.com','Ir. Gina Namaga, S.Sos','+6281448239'),
('irharimurti69@posteo.de','Ir. Harimurti Wahyudin, M.TI.','+6282918675'),
('irhasna33@startmail.com','Ir. Hasna Megantara, S.Kom','+628672536575'),
('irhesti17@yahoo.com','Ir. Hesti Wibisono, M.Ak','+628698915879'),
('irianasitorus30@mailbox.org','Iriana Sitorus','+62878426179'),
('irianauyainah49@startmail.com','Iriana Uyainah','+6283918119'),
('irianawahyuni@tutanota.com','Iriana Wahyuni','+6288242977'),
('iricha43@mailbox.org','Ir. Icha Dabukke, S.E.','+628965894207'),
('irida@posteo.de','Ir. Ida Setiawan, S.Pt','+628274283896'),
('irikhsan@posteo.de','Ir. Ikhsan Hutagalung, S.Sos','+6282984663'),
('irirma@mailbox.org','Ir. Irma Lestari, M.Farm','+6289710849'),
('irjindra@mailbox.org','Ir. Jindra Nugroho, M.TI.','+62829857311'),
('irjuli17@startmail.com','Ir. Juli Kuswandari','+62857147971'),
('irkadir@posteo.de','Ir. Kadir Januar','+62817414114'),
('irkadir@startmail.com','Ir. Kadir Hassanah, S.Psi','+62878833551'),
('irkezia35@startmail.com','Ir. Kezia Sitompul, M.Pd','+6288214862'),
('irmahalim@tutanota.com','Irma Halim','+6282444421'),
('irmahdi@icloud.com','Ir. Mahdi Dabukke','+62836506642'),
('irmanashiruddin48@mailbox.org','Irma Nashiruddin','+62893192479'),
('irmawinarno85@icloud.com','Irma Winarno','+628259089915'),
('irmayuniar@tutanota.com','Irma Yuniar','+628550873203'),
('irmuhammad@startmail.com','Ir. Muhammad Safitri','+6289530034'),
('irmursinin62@posteo.de','Ir. Mursinin Prasasta','+62877482339'),
('irmursita97@mailbox.org','Ir. Mursita Haryanti','+62822080869'),
('irmutia33@posteo.de','Ir. Mutia Firmansyah, S.Pt','+628998214191'),
('irophelia86@posteo.de','Ir. Ophelia Nasyiah, M.Kom.','+62812258926'),
('irprasetyo@posteo.de','Ir. Prasetyo Rahimah','+62841329555'),
('irraden@countermail.com','Ir. Raden Mardhiyah, S.Pt','+6284608056'),
('irratna@startmail.com','Ir. Ratna Wahyudin, S.E.','+628340739723'),
('irsaddabukke@yandex.cominbox.com','Irsad Dabukke, S.Pt','+6286863508'),
('irsadrajata@ctemplar.com','Irsad Rajata','+62895682205'),
('irsadtampubolon56@posteo.de','Irsad Tampubolon','+6282496989'),
('irsadwacana26@startmail.com','Irsad Wacana, S.E.','+6282439374'),
('irsalwa@yandex.cominbox.com','Ir. Salwa Situmorang','+628439174735'),
('irsetya@countermail.com','Ir. Setya Dongoran, S.IP','+6284684260'),
('irtomi3@startmail.com','Ir. Tomi Suryatmi','+6283164924'),
('irtri@posteo.de','Ir. Tri Wasita','+6289308061'),
('irupik@startmail.com','Ir. Upik Utami','+628152638689'),
('irwandamanik33@runbox.com','Irwan Damanik','+62868864650'),
('irwanhidayanto@protonmail.com','Irwan Hidayanto','+62838593875'),
('iryuni14@mailbox.org','Ir. Yuni Hidayanto','+62817510702'),
('ivansuwarno@countermail.com','Ivan Suwarno','+62847370945'),
('ivanwijayanti71@startmail.com','Ivan Wijayanti','+6281485034'),
('jaemangunarto@tutanota.com','Jaeman Gunarto','+6282770002'),
('jagapatihakim100@mailbox.org','Jagapati Hakim','+6287815134'),
('jagapatisuryatmi@runbox.com','Jagapati Suryatmi','+6288426826'),
('jagaragahutagalung57@tutanota.com','Jagaraga Hutagalung','+628988852657'),
('jagaragaiswahyudi56@tutanota.com','Jagaraga Iswahyudi, S.Sos','+628698914176'),
('jailhutasoit@posteo.de','Jail Hutasoit, S.H.','+6283712015'),
('jailusada@ctemplar.com','Jail Usada','+628436427236'),
('jaimansaptono70@keemail.me','Jaiman Saptono','+628587127027'),
('jaimansihotang@posteo.de','Jaiman Sihotang','+628985161522'),
('jaimanwibowo@yandex.cominbox.com','Jaiman Wibowo, S.Farm','+6285688797'),
('jaisnainggolan@hushmail.com','Jais Nainggolan','+628236981186'),
('jaisrahayu8@ctemplar.com','Jais Rahayu, M.TI.','+62818783633'),
('jakagunarto4@tutanota.com','Jaka Gunarto','+628289734887'),
('jakarahayu@countermail.com','Jaka Rahayu','+628484020187'),
('jamalialatupono100@mailbox.org','Jamalia Latupono','+62878725024'),
('jamalianatsir@ctemplar.com','Jamalia Natsir','+628698914249'),
('jamaliasuryatmi@countermail.com','Jamalia Suryatmi','+628583577598'),
('jamalnababan@icloud.com','Jamal Nababan, S.Kom','+6285852094'),
('jamaluyainah@posteo.de','Jamal Uyainah','+628131179415'),
('jamalwinarsih@startmail.com','Jamal Winarsih','+6288347882'),
('jamilnainggolan7@hushmail.com','Jamil Nainggolan','+628592223957'),
('jamilnatsir85@aol.com','Jamil Natsir','+62859516086'),
('janeiswahyudi@tutanota.com','Jane Iswahyudi, S.Gz','+6289403355'),
('janenajmudin8@protonmail.com','Jane Najmudin','+628373003623'),
('janesafitri58@runbox.com','Jane Safitri','+628211673687'),
('janetsimanjuntak@posteo.de','Janet Simanjuntak, S.Ked','+62849949226'),
('jarwadimarpaung16@tutanota.com','Jarwadi Marpaung','+628248912373'),
('jarwiirawan70@posteo.de','Jarwi Irawan','+62821724118'),
('jarwipudjiastuti@posteo.de','Jarwi Pudjiastuti','+628998219241'),
('jarwisetiawan67@tutanota.com','Jarwi Setiawan','+62877259319'),
('jaswadisantoso@tutanota.com','Jaswadi Santoso','+628156339435'),
('jatianggraini70@lavabit.com','Jati Anggraini, S.Pd','+62829765480'),
('jatimayasari@riseup.net','Jati Mayasari','+6283566620'),
('jatmikoiswahyudi@startmail.com','Jatmiko Iswahyudi, M.M.','+62827476830'),
('jayadianggriawan@ctemplar.com','Jayadi Anggriawan','+62845085867'),
('jayadibudiman@posteo.de','Jayadi Budiman','+6285839104'),
('jayapratiwi@yahoo.com','Jaya Pratiwi','+62877813901'),
('jayengmanullang@posteo.de','Jayeng Manullang','+62836469207'),
('jelitapratama@startmail.com','Jelita Pratama','+62829681565'),
('jelitasusanti@mailbox.org','Jelita Susanti','+62841687584'),
('jessicabudiman44@icloud.com','Jessica Budiman','+6289967394'),
('jessicafirgantoro@posteo.de','Jessica Firgantoro','+62832556481'),
('jessicahalimah@ctemplar.com','Jessica Halimah','+6288411724'),
('jessicahutasoit51@keemail.me','Jessica Hutasoit','+6284630493'),
('jessicarahayu@aol.com','Jessica Rahayu, S.Gz','+62867455512'),
('jessicarajata@startmail.com','Jessica Rajata','+628246947895'),
('jessicathamrin@lavabit.com','Jessica Thamrin','+628484007545'),
('jinawimarbun61@mailbox.org','Jinawi Marbun, M.TI.','+6281527709'),
('jindrahandayani@ctemplar.com','Jindra Handayani','+628566226391'),
('jindrapermata19@hotmail.com','Jindra Permata','+62828117805'),
('jindrawulandari@outlook.com','Jindra Wulandari','+628188771095'),
('jindrayolanda71@posteo.de','Jindra Yolanda','+628162034847'),
('johanprasetyo7@hushmail.com','Johan Prasetyo','+62866301664'),
('johansusanti19@runbox.com','Johan Susanti','+6282895122'),
('jokomarpaung34@startmail.com','Joko Marpaung, S.Psi','+6283962546'),
('jonojailani@posteo.de','Jono Jailani, S.H.','+62829380566'),
('jonosirait77@mailfence.com','Jono Sirait','+6281415516'),
('juliasuwarno@lavabit.com','Julia Suwarno','+6283220958'),
('juliautama@posteo.de','Julia Utama','+6284688760'),
('julifujiati@mailbox.org','Juli Fujiati, S.Sos','+6282620661'),
('julihardiansyah@ctemplar.com','Juli Hardiansyah, S.H.','+6289283676'),
('julihidayat24@mailbox.org','Juli Hidayat','+628924007805'),
('julimangunsong@startmail.com','Juli Mangunsong','+6289674679'),
('juliprasetya30@posteo.de','Juli Prasetya, S.Ked','+6282538053'),
('juliwastuti15@startmail.com','Juli Wastuti','+628947130462'),
('jumadimelani80@posteo.de','Jumadi Melani, M.Kom.','+62883970551'),
('jumadiyuliarti@posteo.de','Jumadi Yuliarti','+6284455880'),
('jumarifirmansyah49@runbox.com','Jumari Firmansyah, S.Farm','+628324023127'),
('kacunghutagalung@countermail.com','Kacung Hutagalung','+62812762212'),
('kacungkusumo9@yandex.cominbox.com','Kacung Kusumo','+62893800657'),
('kacungputra56@icloud.com','Kacung Putra, M.Farm','+6282549614'),
('kairavnuraini37@mailbox.org','Kairav Nuraini, M.Farm','+62829076271'),
('kajenfirmansyah@tutanota.com','Kajen Firmansyah','+6284691188'),
('kajenlaksita62@aol.com','Kajen Laksita','+6283397822'),
('kajenyolanda@posteo.de','Kajen Yolanda','+62832280772'),
('kalamaryati23@mailbox.org','Kala Maryati','+628559019328'),
('kalapurnawati@countermail.com','Kala Purnawati','+628789945791'),
('kalimirawan24@posteo.de','Kalim Irawan','+6285942085'),
('kamalprasetyo97@tutanota.com','Kamal Prasetyo, S.Psi','+628311831834'),
('kambalimaryadi@hotmail.com','Kambali Maryadi','+6289569529'),
('kambalisitompul@mailbox.org','Kambali Sitompul','+628285337685'),
('kambaliwibisono5@startmail.com','Kambali Wibisono','+6281807644'),
('kamidinmaryati94@lavabit.com','Kamidin Maryati, S.H.','+62881942245'),
('kamidinputra@runbox.com','Kamidin Putra','+62866079710'),
('kamiladamanik97@mailbox.org','Kamila Damanik','+628355351461'),
('kamilajanuar78@mailbox.org','Kamila Januar','+6281442237'),
('kamilasaefullah12@startmail.com','Kamila Saefullah','+62867617791'),
('kandapurnawati@posteo.de','Kanda Purnawati','+628938559578'),
('kaniahalim@startmail.com','Kania Halim','+62898168756'),
('kaniamaheswara6@countermail.com','Kania Maheswara','+62878687855'),
('kaniazulaika@mailbox.org','Kania Zulaika','+6289642537'),
('kanikuswoyo@posteo.de','Kani Kuswoyo','+6289385270'),
('kanimulyani@ctemplar.com','Kani Mulyani, S.Ked','+62856600638'),
('kanirajata@posteo.de','Kani Rajata','+6282483019'),
('kanisudiati@mailbox.org','Kani Sudiati','+628388152084'),
('kardiastuti@tutanota.com','Kardi Astuti','+62822823189'),
('kardipangestu@hushmail.com','Kardi Pangestu','+628266522120'),
('kardisinaga@yahoo.com','Kardi Sinaga','+628970850564'),
('karenanggraini@countermail.com','Karen Anggraini','+628125755217'),
('karenhariyah5@ctemplar.com','Karen Hariyah','+628295466314'),
('karenkuswoyo27@posteo.de','Karen Kuswoyo','+628596703219'),
('karenprasetyo@startmail.com','Karen Prasetyo, S.Ked','+62842126435'),
('karenwidiastuti@gmx.com','Karen Widiastuti','+628836072622'),
('karimahharyanti@yahoo.com','Karimah Haryanti','+62845963961'),
('karimahhidayat@startmail.com','Karimah Hidayat','+6286579586'),
('karimahlaksita@mailbox.org','Karimah Laksita, S.I.Kom','+6289250797'),
('karimahmulyani34@aol.com','Karimah Mulyani','+628138638627'),
('karimahsihotang@mailbox.org','Karimah Sihotang','+6281488443'),
('karimanmaulana68@mailbox.org','Kariman Maulana','+62882816914'),
('karjaharyanto@runbox.com','Karja Haryanto','+62816690091'),
('karjamandala@countermail.com','Karja Mandala','+628570270946'),
('karmanusada1@mailbox.org','Karman Usada','+62838276622'),
('karnalazuardi@posteo.de','Karna Lazuardi','+628683659502'),
('karsanamarbun@runbox.com','Karsana Marbun','+6285745059'),
('karsanapurnawati6@mailbox.org','Karsana Purnawati','+6287744554'),
('karsarahimah@ctemplar.com','Karsa Rahimah','+628959910526'),
('karsatampubolon82@runbox.com','Karsa Tampubolon','+628139955923'),
('kartamaryati89@runbox.com','Karta Maryati','+628839642471'),
('kartikarajasa87@posteo.de','Kartika Rajasa','+6286797837'),
('karyadabukke@startmail.com','Karya Dabukke','+628998217852'),
('karyasafitri30@runbox.com','Karya Safitri','+62858284658'),
('kasimnapitupulu@posteo.de','Kasim Napitupulu','+628380807558'),
('kasiransaefullah87@gmx.com','Kasiran Saefullah, S.Farm','+628923769975'),
('kasirantampubolon92@posteo.de','Kasiran Tampubolon','+6283544303'),
('kasiranyulianti79@posteo.de','Kasiran Yulianti, S.E.','+628924035029'),
('kasiyahsimbolon72@tutanota.com','Kasiyah Simbolon','+628391981012'),
('kasusralaksmiwati@runbox.com','Kasusra Laksmiwati','+628213088034'),
('kasusramustofa52@posteo.de','Kasusra Mustofa','+62835295896'),
('kasusrapalastri@posteo.de','Kasusra Palastri','+628192353369'),
('kasusrapradipta84@posteo.de','Kasusra Pradipta','+628299704190'),
('kasusrasimanjuntak35@posteo.de','Kasusra Simanjuntak','+62884911898'),
('kawacahidayat3@countermail.com','Kawaca Hidayat','+628970413433'),
('kawayasafitri@runbox.com','Kawaya Safitri, S.H.','+6288151806'),
('kaylahakim33@runbox.com','Kayla Hakim','+628851753883'),
('kaylaharyanto83@tutanota.com','Kayla Haryanto','+6285912607'),
('kaylahutasoit47@runbox.com','Kayla Hutasoit','+628569649487'),
('kaylaiswahyudi40@tutanota.com','Kayla Iswahyudi','+6281532131'),
('kayuntarihoran59@startmail.com','Kayun Tarihoran, S.Pt','+628840535281'),
('kayunyolanda@tutanota.com','Kayun Yolanda','+6281383950'),
('keishaandriani55@ctemplar.com','Keisha Andriani','+62883570849'),
('keishanasyidah75@runbox.com','Keisha Nasyidah','+62899689854'),
('keishasaragih4@ctemplar.com','Keisha Saragih','+62879736813'),
('kemalmandala94@ctemplar.com','Kemal Mandala','+628262733567'),
('kemalsaragih@ctemplar.com','Kemal Saragih','+628247613820'),
('kemalsuartini@posteo.de','Kemal Suartini','+62834619875'),
('kemalwinarsih53@ctemplar.com','Kemal Winarsih','+6289533738'),
('kembasamosir@mailfence.com','Kemba Samosir','+62827095321'),
('kenariramadan@gmail.com','Kenari Ramadan','+62847593763'),
('keneshandayani@hushmail.com','Kenes Handayani','+62894203926'),
('kenesprayoga@countermail.com','Kenes Prayoga','+62823115336'),
('kenziesitumorang@icloud.com','Kenzie Situmorang, S.H.','+6289340651'),
('keziaiswahyudi@startmail.com','Kezia Iswahyudi','+62897181447'),
('keziamaryadi@yahoo.com','Kezia Maryadi','+628591388773'),
('khasirwanda@posteo.de','KH. Asirwanda Laksita, S.T.','+62892420924'),
('khasman@runbox.com','KH. Asman Wahyuni','+6281929600'),
('khaswani55@startmail.com','KH. Aswani Safitri, S.Pt','+62898687622'),
('khbakti@countermail.com','KH. Bakti Adriansyah','+628169590169'),
('khbanara84@mailbox.org','KH. Banara Hutasoit','+62834990429'),
('khcahyono@hushmail.com','KH. Cahyono Wahyudin','+62817453667'),
('khgaman@startmail.com','KH. Gaman Mansur','+62848783084'),
('khgamani@runbox.com','KH. Gamani Yuniar, M.Farm','+6282357183'),
('khkacung89@mailbox.org','KH. Kacung Usamah, S.Kom','+628831033396'),
('khkenes@countermail.com','KH. Kenes Nababan, M.TI.','+62826999931'),
('khpaiman68@posteo.de','KH. Paiman Waskita','+628953039481'),
('khprabawa4@mailbox.org','KH. Prabawa Wahyuni','+628394849386'),
('khprayoga15@posteo.de','KH. Prayoga Wibowo, M.Farm','+6282864536'),
('khrudi51@mailbox.org','KH. Rudi Permata','+628550322853'),
('khsetya32@runbox.com','KH. Setya Maryadi','+6283645613'),
('khtri67@tutanota.com','KH. Tri Zulkarnain','+6281645729'),
('kiandradamanik@runbox.com','Kiandra Damanik, S.IP','+62883019078'),
('kokomangunsong@posteo.de','Koko Mangunsong','+628216029839'),
('kuncarapranowo77@countermail.com','Kuncara Pranowo','+6285800810'),
('kuncarasudiati@startmail.com','Kuncara Sudiati','+6283107557'),
('kuntharasalahudin86@mailbox.org','Kunthara Salahudin','+6282165477'),
('kurnialestari@runbox.com','Kurnia Lestari','+6287796029'),
('kusumayuliarti84@mailbox.org','Kusuma Yuliarti','+6284128269'),
('lailamelani@startmail.com','Laila Melani','+628416193999'),
('lalahalim@posteo.de','Lala Halim','+628143514465'),
('lalalaksita38@zoho.com','Lala Laksita','+62897942965'),
('lalamaheswara74@posteo.de','Lala Maheswara','+62825417536'),
('lalapermata91@mailbox.org','Lala Permata','+62814155664'),
('lalasalahudin@gmail.com','Lala Salahudin','+628698915615'),
('lalitaadriansyah@posteo.de','Lalita Adriansyah','+628456929441'),
('lalitamandala@startmail.com','Lalita Mandala','+628395331054'),
('lalitamelani@ctemplar.com','Lalita Melani','+628698912201'),
('lamarhartati19@tutanota.com','Lamar Hartati, S.Psi','+6281642711'),
('lamarhidayat@posteo.de','Lamar Hidayat','+62883661300'),
('lamarsalahudin86@mailbox.org','Lamar Salahudin','+628676758351'),
('lamarsirait23@ctemplar.com','Lamar Sirait','+62847984388'),
('langgengirawan@aol.com','Langgeng Irawan','+6283125091'),
('langgengyulianti40@startmail.com','Langgeng Yulianti, S.E.I','+628462896473'),
('lanjaranggriawan76@icloud.com','Lanjar Anggriawan','+62881911844'),
('lanjarwahyuni97@ctemplar.com','Lanjar Wahyuni','+62813919416'),
('lantarbudiyanto41@runbox.com','Lantar Budiyanto','+628498687107'),
('lantarhastuti31@tutanota.com','Lantar Hastuti, M.Farm','+62878650401'),
('lantarmahendra63@startmail.com','Lantar Mahendra, S.IP','+6284249399'),
('larasanggriawan10@countermail.com','Laras Anggriawan','+6282237791'),
('larashastuti@mailbox.org','Laras Hastuti','+628245984546'),
('larasoktaviani31@countermail.com','Laras Oktaviani','+6282238046'),
('lasmantothamrin29@mailbox.org','Lasmanto Thamrin','+6283274395'),
('lasmononababan79@runbox.com','Lasmono Nababan','+62837752733'),
('lasmononainggolan71@tutanota.com','Lasmono Nainggolan','+62858053713'),
('laswiprakasa@tutanota.com','Laswi Prakasa','+6282886127'),
('laswiuyainah98@outlook.com','Laswi Uyainah','+628698918719'),
('latifhabibi@ctemplar.com','Latif Habibi','+62877903305'),
('latifmayasari@startmail.com','Latif Mayasari','+628263664033'),
('latikaharyanto42@posteo.de','Latika Haryanto','+6288571995'),
('latikamandala@countermail.com','Latika Mandala','+628559039008'),
('latikanamaga1@mailbox.org','Latika Namaga','+628932179453'),
('latikanatsir@mailbox.org','Latika Natsir','+6282708601'),
('latikawinarsih56@tutanota.com','Latika Winarsih','+628140360132'),
('legaanggriawan@tutanota.com','Lega Anggriawan','+628998211068'),
('leoardianto@startmail.com','Leo Ardianto','+62813435775'),
('leosimanjuntak77@countermail.com','Leo Simanjuntak','+628778745498'),
('lidyahutagalung76@yandex.cominbox.com','Lidya Hutagalung, S.Ked','+6281418056'),
('lidyanasyidah47@startmail.com','Lidya Nasyidah','+6281326296'),
('lidyapangestu15@startmail.com','Lidya Pangestu','+62847159504'),
('lidyarahimah20@countermail.com','Lidya Rahimah','+628164635429'),
('lilidabukke3@countermail.com','Lili Dabukke','+6282621726'),
('lilihassanah75@posteo.de','Lili Hassanah','+628176353812'),
('lilimandala33@runbox.com','Lili Mandala, S.Ked','+628130948992'),
('lilimarbun3@mailbox.org','Lili Marbun','+62833564911'),
('liliprabowo@scryptmail.com','Lili Prabowo, S.Sos','+628377939404'),
('liliprasetya89@tutanota.com','Lili Prasetya','+62841462859'),
('lilisamosir28@posteo.de','Lili Samosir','+62878524088'),
('limanusamah@mailbox.org','Liman Usamah','+628698912873'),
('limarhassanah@startmail.com','Limar Hassanah','+62815567841'),
('luhunghassanah41@posteo.de','Luhung Hassanah','+6283107548'),
('luhungirawan@startmail.com','Luhung Irawan','+62823357958'),
('luhungsitorus@startmail.com','Luhung Sitorus','+628972880750'),
('luismahendra7@tutanota.com','Luis Mahendra','+628293054746'),
('lukmananggriawan13@startmail.com','Lukman Anggriawan, S.H.','+6284228296'),
('luluhsirait@tutanota.com','Luluh Sirait','+628972239124'),
('lulutdamanik43@tutanota.com','Lulut Damanik','+628344847384'),
('lulutmandasari92@mailbox.org','Lulut Mandasari','+628432011940'),
('lulutmelani@runbox.com','Lulut Melani','+628222162184'),
('lurhurmandala29@startmail.com','Lurhur Mandala','+6282119415'),
('lutfanhakim77@mailbox.org','Lutfan Hakim','+628829562568'),
('lutfanmanullang@runbox.com','Lutfan Manullang','+628378667967'),
('luwarkuswoyo@runbox.com','Luwar Kuswoyo','+62827970496'),
('luwarpermata@countermail.com','Luwar Permata','+6282539074'),
('luwarpudjiastuti@mailbox.org','Luwar Pudjiastuti','+62816226158'),
('luwarwastuti5@runbox.com','Luwar Wastuti','+62884858679'),
('luwesnuraini@ctemplar.com','Luwes Nuraini, S.T.','+628698915534'),
('luwesprasetyo15@yandex.cominbox.com','Luwes Prasetyo','+62897204408'),
('luwessiregar42@gmail.com','Luwes Siregar','+6281492756'),
('mahdikusmawati@startmail.com','Mahdi Kusmawati','+6287823328'),
('mahesaoktaviani@runbox.com','Mahesa Oktaviani, M.TI.','+628369437649'),
('mahfudnuraini54@startmail.com','Mahfud Nuraini','+62826182786'),
('maidalailasari@mailbox.org','Maida Lailasari','+62824296978'),
('maidamaheswara24@mailbox.org','Maida Maheswara','+628227294967'),
('maidautami26@posteo.de','Maida Utami','+62896270039'),
('maimunahkuswandari28@mailfence.com','Maimunah Kuswandari','+6281400572'),
('maimunahmayasari@ctemplar.com','Maimunah Mayasari','+62896322514'),
('maimunahprasasta@startmail.com','Maimunah Prasasta','+6286845793'),
('maimunahsalahudin31@ctemplar.com','Maimunah Salahudin, M.Ak','+62848544299'),
('makaraagustina@tutanota.com','Makara Agustina, S.Pd','+6289682835'),
('makaraaryani@runbox.com','Makara Aryani','+62817474460'),
('makaramandala18@runbox.com','Makara Mandala','+62816239501'),
('makarautama@countermail.com','Makara Utama','+628192324808'),
('makutajanuar@keemail.me','Makuta Januar','+62897725623'),
('makutaprastuti@mailfence.com','Makuta Prastuti','+628575528642'),
('makutasitorus28@icloud.com','Makuta Sitorus','+62814679750'),
('makutasuryatmi15@startmail.com','Makuta Suryatmi','+6289272546'),
('malapermata@countermail.com','Mala Permata, S.Farm','+62897490670'),
('malikamardhiyah@posteo.de','Malika Mardhiyah','+6289508974'),
('malikamulyani@runbox.com','Malika Mulyani','+62845871748'),
('malikapalastri22@mailbox.org','Malika Palastri','+628368701028'),
('malikhandayani@tutanota.com','Malik Handayani, S.Gz','+628698913429'),
('maliknasyiah12@tutanota.com','Malik Nasyiah','+628223511634'),
('mamannurdiyanti@mailbox.org','Maman Nurdiyanti','+62844559666'),
('mamanwidodo@runbox.com','Maman Widodo','+628786277901'),
('manahutama25@ctemplar.com','Manah Utama','+628228017684'),
('marganamansur12@mailbox.org','Margana Mansur','+628698919795'),
('mariaanggraini51@startmail.com','Maria Anggraini','+62849521602'),
('mariadisuwarno@mailbox.org','Mariadi Suwarno','+628132697646'),
('mariathamrin@startmail.com','Maria Thamrin','+628998211956'),
('mariausamah@tutanota.com','Maria Usamah','+62858192881'),
('mariawidiastuti@posteo.de','Maria Widiastuti, S.Psi','+62829686615'),
('mariawidodo66@startmail.com','Maria Widodo','+62881481956'),
('marsudirahmawati@posteo.de','Marsudi Rahmawati','+6287796302'),
('marsudisuartini@ctemplar.com','Marsudi Suartini, M.Pd','+628173226246'),
('martakapranowo72@posteo.de','Martaka Pranowo','+628177582872'),
('martakausamah68@runbox.com','Martaka Usamah','+6289465603'),
('martanisuryatmi28@posteo.de','Martani Suryatmi','+62838537203'),
('martaniwidodo@tutanota.com','Martani Widodo','+628136100159'),
('maryadioktaviani15@countermail.com','Maryadi Oktaviani','+628818833073'),
('maryadisalahudin100@lavabit.com','Maryadi Salahudin','+62849657182'),
('maryadiusamah@runbox.com','Maryadi Usamah','+6282128679'),
('maryantogunarto61@mailbox.org','Maryanto Gunarto','+628217738602'),
('maryantonuraini65@startmail.com','Maryanto Nuraini','+62838643948'),
('maryantooktaviani38@countermail.com','Maryanto Oktaviani','+628674408795'),
('maryantopradana65@mailbox.org','Maryanto Pradana','+6284703118'),
('mayasaefullah@startmail.com','Maya Saefullah','+6283298377'),
('mayasaptono@scryptmail.com','Maya Saptono, S.H.','+62865978626'),
('mayawaluyo@mailbox.org','Maya Waluyo','+6284966688'),
('melindawacana@startmail.com','Melinda Wacana, S.Pt','+628971304085'),
('melindawinarno@protonmail.com','Melinda Winarno','+62826584183'),
('michellesirait89@countermail.com','Michelle Sirait','+628998219772'),
('michellesitorus49@posteo.de','Michelle Sitorus','+62867657232'),
('michellewibisono35@ctemplar.com','Michelle Wibisono, S.E.I','+6284930140'),
('michellezulkarnain100@startmail.com','Michelle Zulkarnain','+628698911916'),
('milasimanjuntak54@mailbox.org','Mila Simanjuntak, S.Kom','+62878264782'),
('milasuryatmi62@countermail.com','Mila Suryatmi','+628689001163'),
('mitramustofa53@posteo.de','Mitra Mustofa','+62898204944'),
('mitrausada@posteo.de','Mitra Usada, S.H.','+6289351942'),
('muhammadhassanah@startmail.com','Muhammad Hassanah, S.Gz','+6283453532'),
('muhammadnajmudin9@posteo.de','Muhammad Najmudin','+62824862766'),
('mujurnababan@runbox.com','Mujur Nababan','+62857830490'),
('mulyantowahyudin31@countermail.com','Mulyanto Wahyudin, S.Gz','+6289926237'),
('mulyantowibisono@startmail.com','Mulyanto Wibisono','+6286715989'),
('mulyawibowo27@scryptmail.com','Mulya Wibowo','+6287794014'),
('mumpunihidayanto1@startmail.com','Mumpuni Hidayanto, S.T.','+62812876659'),
('mumpunihidayanto66@runbox.com','Mumpuni Hidayanto','+6284325715'),
('mumpuninasyiah@posteo.de','Mumpuni Nasyiah','+628166787383'),
('mumpunisaputra68@startmail.com','Mumpuni Saputra, S.Gz','+62838873755'),
('munihartati9@posteo.de','Muni Hartati','+6287897372'),
('muninasyidah@keemail.me','Muni Nasyidah','+628570857372'),
('mursininpalastri62@startmail.com','Mursinin Palastri','+628239014269'),
('mursininprayoga7@runbox.com','Mursinin Prayoga','+6281512798'),
('mursitasihombing@posteo.de','Mursita Sihombing','+6282297128'),
('mustikakurniawan41@riseup.net','Mustika Kurniawan, S.Pt','+62839677824'),
('mustikamustofa25@posteo.de','Mustika Mustofa','+628247204345'),
('mustofaagustina@posteo.de','Mustofa Agustina','+628834120267'),
('mustofapuspasari57@tutanota.com','Mustofa Puspasari','+628131672081'),
('mutiamarbun@outlook.com','Mutia Marbun, M.Farm','+628269036726'),
('mutiamaulana@protonmail.com','Mutia Maulana','+62829562403'),
('mutianugroho53@startmail.com','Mutia Nugroho','+628124971737'),
('nabilahakim@mailbox.org','Nabila Hakim, S.T.','+62812550738'),
('nabilamardhiyah@fastmail.com','Nabila Mardhiyah','+628351258421'),
('nabilamaulana@mailbox.org','Nabila Maulana','+62896806674'),
('nabilaprasasta@startmail.com','Nabila Prasasta','+62813487091'),
('nadianamaga33@startmail.com','Nadia Namaga','+62835523730'),
('nadiatarihoran@tutanota.com','Nadia Tarihoran, S.Pt','+628240375603'),
('nadiauyainah@startmail.com','Nadia Uyainah, S.Psi','+628413768913'),
('nadinefirmansyah59@mailbox.org','Nadine Firmansyah','+62837737552'),
('nadineirawan34@runbox.com','Nadine Irawan','+62823126180'),
('nadineutama26@keemail.me','Nadine Utama','+6281528732'),
('najibhastuti91@posteo.de','Najib Hastuti, S.E.I','+628393175549'),
('najibwibowo95@runbox.com','Najib Wibowo','+62832079155'),
('najwahasanah25@countermail.com','Najwa Hasanah, S.Ked','+6285597633'),
('najwanarpati14@outlook.com','Najwa Narpati','+628140627341'),
('najwazulkarnain@startmail.com','Najwa Zulkarnain','+628332395891'),
('nalarnainggolan52@mailbox.org','Nalar Nainggolan','+62826153295'),
('nalarnugroho@countermail.com','Nalar Nugroho','+628291643666'),
('naradidamanik@startmail.com','Naradi Damanik','+628827940732'),
('naradifirmansyah@posteo.de','Naradi Firmansyah','+6281445911'),
('nardinurdiyanti1@posteo.de','Nardi Nurdiyanti','+628395001277'),
('narjikurniawan@mailbox.org','Narji Kurniawan','+628328080411'),
('narjinashiruddin65@ctemplar.com','Narji Nashiruddin','+628666186463'),
('narjisihotang@countermail.com','Narji Sihotang, S.Sos','+628834882087'),
('narjiutami@mailbox.org','Narji Utami','+628192458476'),
('narjiyulianti@zoho.com','Narji Yulianti','+628859178763'),
('nasabanggraini45@scryptmail.com','Nasab Anggraini','+6284877881'),
('nasrullahlaksita33@zoho.com','Nasrullah Laksita','+628279874073'),
('nataliaharyanto@startmail.com','Natalia Haryanto','+6283196169'),
('natalianugroho@countermail.com','Natalia Nugroho, M.TI.','+62818341680'),
('nataliapurwanti@posteo.de','Natalia Purwanti','+62826541561'),
('nilamrahimah@mailbox.org','Nilam Rahimah, S.Gz','+62824162089'),
('nilamsinaga@gmail.com','Nilam Sinaga','+628782849846'),
('novanamaga@aol.com','Nova Namaga','+628266042056'),
('novanugroho13@posteo.de','Nova Nugroho','+62832866948'),
('novapuspasari36@hushmail.com','Nova Puspasari','+6284793246'),
('novasudiati9@ctemplar.com','Nova Sudiati','+62824573424'),
('novazulkarnain83@posteo.de','Nova Zulkarnain','+62846490476'),
('novimahendra@gmail.com','Novi Mahendra','+628820098728'),
('novirajasa@startmail.com','Novi Rajasa','+6289762960'),
('noviuyainah55@gmx.com','Novi Uyainah','+628488379605'),
('nrimasuwarno73@mailbox.org','Nrima Suwarno','+628496086990'),
('nrimawasita@startmail.com','Nrima Wasita','+628956512074'),
('nugrahauwais@posteo.de','Nugraha Uwais','+6283251568'),
('nurulgunarto38@mailbox.org','Nurul Gunarto, S.Gz','+62833483501'),
('nurulnababan@scryptmail.com','Nurul Nababan','+62893018567'),
('nurulprasasta@posteo.de','Nurul Prasasta','+628656208141'),
('nyanauwais@ctemplar.com','Nyana Uwais, S.T.','+628842382756'),
('olgapermadi@runbox.com','Olga Permadi','+6282579115'),
('olgaprabowo21@scryptmail.com','Olga Prabowo','+62858997003'),
('olivamardhiyah@riseup.net','Oliva Mardhiyah','+6286764069'),
('olivaprasetyo@startmail.com','Oliva Prasetyo, M.Kom.','+628497420585'),
('olivasaragih36@startmail.com','Oliva Saragih','+6282503615'),
('olivasitompul57@startmail.com','Oliva Sitompul','+62844094909'),
('oliviahidayat5@runbox.com','Olivia Hidayat','+62815222714'),
('oliviamarbun@mailbox.org','Olivia Marbun, S.Farm','+628463959746'),
('omanmandala@protonmail.com','Oman Mandala','+628454106707'),
('onianggriawan@protonmail.com','Oni Anggriawan','+62895743573'),
('oninamaga@ctemplar.com','Oni Namaga','+628125845560'),
('oniwahyudin61@mailbox.org','Oni Wahyudin','+62825015106'),
('oniwidodo8@yahoo.com','Oni Widodo','+628167831162'),
('opanmulyani80@mailbox.org','Opan Mulyani','+628297900456'),
('opannasyiah41@startmail.com','Opan Nasyiah','+6282422016'),
('opanyuniar50@mailbox.org','Opan Yuniar','+6285999159'),
('opheliakusumo@mailbox.org','Ophelia Kusumo','+6284317316'),
('ophelianainggolan@posteo.de','Ophelia Nainggolan, S.Ked','+6281553622'),
('opheliaprastuti26@ctemplar.com','Ophelia Prastuti, S.I.Kom','+6282668596'),
('opheliawaskita@mailbox.org','Ophelia Waskita','+628698910864'),
('oskarhalim@zoho.com','Oskar Halim','+628247595929'),
('ozyfirmansyah@mailbox.org','Ozy Firmansyah','+628568262950'),
('padmariyanti4@countermail.com','Padma Riyanti','+62879809154'),
('padmihassanah@posteo.de','Padmi Hassanah','+6284791452'),
('padmikuswandari@mailbox.org','Padmi Kuswandari, S.T.','+628239671827'),
('padminarpati@posteo.de','Padmi Narpati','+6284915274'),
('padmipurwanti48@outlook.com','Padmi Purwanti, S.Sos','+6283276961'),
('pancaiswahyudi@runbox.com','Panca Iswahyudi','+6282253581'),
('pandudabukke@runbox.com','Pandu Dabukke','+6285512697'),
('panduwaluyo100@ctemplar.com','Pandu Waluyo','+62878285861'),
('pangeranharyanto@yandex.cominbox.com','Pangeran Haryanto','+6285911365'),
('pangeranpurnawati@posteo.de','Pangeran Purnawati','+6285525099'),
('pangeransaragih60@mailbox.org','Pangeran Saragih, S.Psi','+62827913413'),
('pangestupradipta51@startmail.com','Pangestu Pradipta','+6281802080'),
('panjifujiati3@tutanota.com','Panji Fujiati','+628973748242'),
('panjijailani52@countermail.com','Panji Jailani','+6285574270'),
('panjisihombing@runbox.com','Panji Sihombing','+628356802775'),
('panjiwaluyo17@gmail.com','Panji Waluyo','+62813033823'),
('panjiwijayanti@lavabit.com','Panji Wijayanti, S.Farm','+62885908695'),
('paramitalailasari51@ctemplar.com','Paramita Lailasari, M.Farm','+62812397973'),
('paramitapratama@startmail.com','Paramita Pratama','+628261078996'),
('paramitayolanda99@scryptmail.com','Paramita Yolanda','+6281325871'),
('pardisetiawan66@runbox.com','Pardi Setiawan','+62856041186'),
('parismelani@tutanota.com','Paris Melani','+62823295094'),
('parissetiawan13@tutanota.com','Paris Setiawan','+6282714677'),
('pariswibowo@mailbox.org','Paris Wibowo, S.H.','+6284815188'),
('parmannurdiyanti83@startmail.com','Parman Nurdiyanti','+62885091504'),
('parmanwibowo@ctemplar.com','Parman Wibowo','+62866904156'),
('patriciawahyuni@startmail.com','Patricia Wahyuni','+6281610225'),
('paulinmaryati32@runbox.com','Paulin Maryati','+62826462953'),
('perkasapermadi43@posteo.de','Perkasa Permadi','+62884288159'),
('perkasawibisono@mailbox.org','Perkasa Wibisono','+62835704558'),
('piayolanda94@ctemplar.com','Pia Yolanda','+6289725236'),
('prabahandayani@tutanota.com','Praba Handayani','+62838078121'),
('prabamandasari@mailbox.org','Praba Mandasari','+62843349480'),
('prabawadongoran41@countermail.com','Prabawa Dongoran','+628559306880'),
('prabowomahendra@ctemplar.com','Prabowo Mahendra','+628211039160'),
('prabowopadmasari25@countermail.com','Prabowo Padmasari','+6284428201'),
('prabuanggraini@mailbox.org','Prabu Anggraini','+6285526320'),
('prakosairawan23@startmail.com','Prakosa Irawan','+628834681368'),
('prakosasimbolon@runbox.com','Prakosa Simbolon','+6287748627'),
('pranatalatupono@tutanota.com','Pranata Latupono','+6284875796'),
('pranatapratama@mailbox.org','Pranata Pratama, S.Gz','+62898887026'),
('pranatasusanti@startmail.com','Pranata Susanti, M.Farm','+628922567389'),
('prasetyahalim@runbox.com','Prasetya Halim, S.Gz','+628499867644'),
('prasetyakusmawati@startmail.com','Prasetya Kusmawati','+62839095704'),
('prasetyohutapea@aol.com','Prasetyo Hutapea','+628395032924'),
('prasetyosantoso@ctemplar.com','Prasetyo Santoso','+62836654500'),
('pujiandriani@startmail.com','Puji Andriani, S.Pd','+6282963744'),
('pujifirmansyah@posteo.de','Puji Firmansyah','+62895042668'),
('pujimaheswara93@posteo.de','Puji Maheswara, S.E.','+62844445183'),
('pujirajasa58@icloud.com','Puji Rajasa','+62823274108'),
('puputfarida17@runbox.com','Puput Farida','+62834548709'),
('puputmaheswara43@ctemplar.com','Puput Maheswara','+628830994853'),
('puputwastuti@posteo.de','Puput Wastuti','+628441890550'),
('purwantofujiati18@startmail.com','Purwanto Fujiati','+62813875728'),
('purwawidiastuti@startmail.com','Purwa Widiastuti','+62823751785'),
('putidewi31@runbox.com','Puti Dewi Purwanti','+628477016492'),
('putihafshah70@mailbox.org','Puti Hafshah Kuswandari','+62841202938'),
('putihasna@posteo.de','Puti Hasna Mardhiyah, S.Psi','+628439532997'),
('putipradipta@startmail.com','Puti Pradipta','+62826363141'),
('putipuspa@startmail.com','Puti Puspa Suartini','+628585489196'),
('putirachel13@posteo.de','Puti Rachel Megantara, S.Kom','+6288434622'),
('putiraisa74@posteo.de','Puti Raisa Napitupulu','+628249262167'),
('putiratih4@runbox.com','Puti Ratih Handayani, M.Kom.','+6284317468'),
('putirina@startmail.com','Puti Rina Napitupulu, S.T.','+62825431525'),
('putiriyanti@mailbox.org','Puti Riyanti','+628221156434'),
('putisepti@mailbox.org','Puti Septi Hidayanto, S.Gz','+6289544367'),
('putisitumorang99@startmail.com','Puti Situmorang','+628952664238'),
('putisuci10@startmail.com','Puti Suci Hakim, S.Gz','+62897832447'),
('putitami23@posteo.de','Puti Tami Hariyah','+628698916344'),
('putitira@posteo.de','Puti Tira Rahayu','+628247303619'),
('putivanesa80@ctemplar.com','Puti Vanesa Samosir','+6283626442'),
('putiwani@mailbox.org','Puti Wani Pranowo, M.Kom.','+62824483266'),
('putiwidya@startmail.com','Puti Widya Firmansyah, M.M.','+6286767566'),
('putiyance54@countermail.com','Puti Yance Ardianto','+62826630116'),
('putiyuni7@tutanota.com','Puti Yuni Mangunsong, S.Sos','+62833400088'),
('putizaenab58@posteo.de','Puti Zaenab Suryono, S.Pt','+62817479201'),
('putizamira78@ctemplar.com','Puti Zamira Prabowo','+62877432235'),
('putrifirmansyah@gmx.com','Putri Firmansyah','+62893236069'),
('putrikuswandari@countermail.com','Putri Kuswandari','+62878214326'),
('putrisaragih49@posteo.de','Putri Saragih','+628151677271'),
('putrisitorus64@ctemplar.com','Putri Sitorus, S.H.','+6281716952'),
('putriwidiastuti88@startmail.com','Putri Widiastuti','+62828519933'),
('putuhutasoit88@runbox.com','Putu Hutasoit, S.E.I','+62883005966'),
('putuuyainah16@posteo.de','Putu Uyainah','+62858140263'),
('qorinashiruddin@ctemplar.com','Qori Nashiruddin','+628171780239'),
('qoripratiwi@runbox.com','Qori Pratiwi','+62816559423'),
('qoripurwanti4@scryptmail.com','Qori Purwanti, S.Gz','+628175709269'),
('qorisaptono@tutanota.com','Qori Saptono','+6285536486'),
('queenardianto@startmail.com','Queen Ardianto, S.Pd','+62895384911'),
('queenmaheswara60@runbox.com','Queen Maheswara','+62813904180'),
('queennurdiyanti@mailbox.org','Queen Nurdiyanti, S.T.','+62819054721'),
('queenpurnawati@runbox.com','Queen Purnawati, S.Pd','+62836651735'),
('raaurora@icloud.com','R.A. Aurora Prabowo','+62847544813'),
('raciaobella89@mailbox.org','R.A. Ciaobella Hariyah, S.Ked','+628698915365'),
('racindy85@posteo.de','R.A. Cindy Jailani','+628998213843'),
('radenyulianti51@countermail.com','Raden Yulianti','+628698912429'),
('radewi16@mailbox.org','R.A. Dewi Yulianti','+62867995905'),
('radiarja80@startmail.com','R. Adiarja Damanik, S.Psi','+628230819207'),
('radikapratama@startmail.com','Radika Pratama','+6284383476'),
('radikapurwanti47@ctemplar.com','Radika Purwanti','+6283864603'),
('radina@gmail.com','R.A. Dina Manullang, M.Farm','+62836145495'),
('radinda51@startmail.com','R.A. Dinda Rajata, M.Kom.','+628226434611'),
('raditbudiyanto57@keemail.me','Radit Budiyanto','+628998215718'),
('radithandayani91@startmail.com','Radit Handayani','+6281489233'),
('raditmustofa@startmail.com','Radit Mustofa','+62831810821'),
('raelma@ctemplar.com','R.A. Elma Latupono, S.E.','+628463999059'),
('raendah@mailbox.org','R.A. Endah Utama, M.Pd','+628331153419'),
('raeva@yandex.cominbox.com','R.A. Eva Hakim, S.Pd','+628256078429'),
('rafidkusumo@tutanota.com','Rafid Kusumo','+62859805644'),
('rafidnuraini@runbox.com','Rafid Nuraini, M.Kom.','+628998211605'),
('raharjauyainah10@startmail.com','Raharja Uyainah, M.Pd','+62846003346'),
('rahayumayasari1@ctemplar.com','Rahayu Mayasari','+62825128835'),
('rahmatprabowo@runbox.com','Rahmat Prabowo, S.Pt','+628780350639'),
('rahmatwasita41@hushmail.com','Rahmat Wasita','+628977866971'),
('rahmianggraini25@runbox.com','Rahmi Anggraini','+6289487024'),
('rahmiirawan91@startmail.com','Rahmi Irawan','+6282625717'),
('rahmioktaviani@protonmail.com','Rahmi Oktaviani','+62884739915'),
('rahmisihombing70@tutanota.com','Rahmi Sihombing, M.Ak','+62825334131'),
('rahmisirait75@startmail.com','Rahmi Sirait, M.Pd','+628221886266'),
('raifa6@posteo.de','R.A. Ifa Setiawan, S.E.I','+6281534027'),
('raihanprasetyo36@mailbox.org','Raihan Prasetyo','+628161871394'),
('raihanramadan@tutanota.com','Raihan Ramadan','+6285842344'),
('raihanzulaika29@countermail.com','Raihan Zulaika','+628830338450'),
('raika63@runbox.com','R.A. Ika Sihombing, S.E.I','+628771816226'),
('rainahariyah@posteo.de','Raina Hariyah','+6284589497'),
('rainauyainah@mail.com','Raina Uyainah','+62814507895'),
('raisamustofa@ctemplar.com','Raisa Mustofa','+628998214305'),
('raisanainggolan26@mailbox.org','Raisa Nainggolan, S.Sos','+628136615881'),
('raisapadmasari@startmail.com','Raisa Padmasari','+628993705619'),
('raisarahmawati56@startmail.com','Raisa Rahmawati','+628460134764'),
('raisasitumorang@runbox.com','Raisa Situmorang','+62834175238'),
('raisasusanti96@startmail.com','Raisa Susanti','+6282915040'),
('raisautama@runbox.com','Raisa Utama, S.I.Kom','+6282868874'),
('rajiman39@mailbox.org','R. Ajiman Suwarno, S.I.Kom','+62814547299'),
('rajuli@ctemplar.com','R.A. Juli Hardiansyah','+62877414602'),
('rakamaria43@ctemplar.com','R.A. Kamaria Simanjuntak, M.Pd','+62898059890'),
('rakartika7@runbox.com','R.A. Kartika Lazuardi','+6282995290'),
('ralaras9@runbox.com','R.A. Laras Utami, S.I.Kom','+628328121766'),
('ramaria40@runbox.com','R.A. Maria Laksmiwati','+62828097963'),
('ranggahasanah80@posteo.de','Rangga Hasanah','+628260505730'),
('ranggaprasetya@posteo.de','Rangga Prasetya','+6281496131'),
('rani@tutanota.com','R. Ani Nugroho','+62849498989'),
('rarahmi28@startmail.com','R.A. Rahmi Novitasari, M.Ak','+6282563520'),
('rargono88@tutanota.com','R. Argono Thamrin, S.Pt','+62825011204'),
('rartawan94@startmail.com','R. Artawan Gunawan, S.Ked','+6282690667'),
('rasari@gmx.com','R.A. Sari Anggraini','+62896011845'),
('rasari@startmail.com','R.A. Sari Nuraini, S.Ked','+62845120505'),
('rashakila5@tutanota.com','R.A. Shakila Mandala, S.T.','+628814276091'),
('rasirwada@mailbox.org','R. Asirwada Sihombing, S.T.','+6281367829'),
('ratiara31@riseup.net','R.A. Tiara Mandasari, S.Pd','+628560057812'),
('ratihandriani@tutanota.com','Ratih Andriani','+628421250226'),
('ratihhalim@yahoo.com','Ratih Halim','+62899416449'),
('ratihhutagalung76@mailbox.org','Ratih Hutagalung','+6288187026'),
('ratihmaheswara@startmail.com','Ratih Maheswara','+628166115585'),
('ratihmaryati@mailbox.org','Ratih Maryati','+628933109355'),
('ratihprakasa1@posteo.de','Ratih Prakasa, S.Farm','+628134084915'),
('ratihpudjiastuti@countermail.com','Ratih Pudjiastuti','+62899823130'),
('ratina33@mailbox.org','R.A. Tina Mahendra','+6286898813'),
('ratnabudiman10@ctemplar.com','Ratna Budiman','+62814269833'),
('ratnahabibi@startmail.com','Ratna Habibi, S.Gz','+6283938880'),
('ratnahastuti32@runbox.com','Ratna Hastuti, S.Psi','+628291991221'),
('ratnasinaga69@runbox.com','Ratna Sinaga','+62824086195'),
('ratnazulkarnain67@mailbox.org','Ratna Zulkarnain','+6281397168'),
('raumi82@mailbox.org','R.A. Umi Nababan','+6286817628'),
('raurora52@zoho.com','R. Aurora Situmorang, S.H.','+62837625496'),
('ravera46@mailbox.org','R.A. Vera Napitupulu','+628566037951'),
('ravivi@ctemplar.com','R.A. Vivi Damanik','+6281990419'),
('rawani72@mailbox.org','R.A. Wani Suwarno, S.H.','+62841470324'),
('rbalapati@posteo.de','R. Balapati Laksmiwati','+628484370156'),
('rbalidin@startmail.com','R. Balidin Tarihoran, M.TI.','+6288396297'),
('rcakrabirawa@fastmail.com','R. Cakrabirawa Putra','+6285959185'),
('rcinthia43@runbox.com','R. Cinthia Sitompul, S.E.','+628329257772'),
('rdalimin@mailbox.org','R. Dalimin Megantara, S.Psi','+6288332715'),
('rdarmanto@icloud.com','R. Darmanto Waluyo, S.I.Kom','+628392813883'),
('rdiah6@ctemplar.com','R. Diah Winarno','+628698911284'),
('rellis@posteo.de','R. Ellis Budiyanto, M.M.','+628439247358'),
('reman@runbox.com','R. Eman Budiyanto, S.Kom','+628961393486'),
('rendysalahudin68@yandex.cominbox.com','Rendy Salahudin, S.E.I','+62823593760'),
('rerik@mailbox.org','R. Erik Tarihoran','+62881133719'),
('restufarida@countermail.com','Restu Farida, S.Psi','+6284692432'),
('restuhutagalung@startmail.com','Restu Hutagalung','+628858172411'),
('restumaulana81@startmail.com','Restu Maulana','+62829098399'),
('restuwaskita@zoho.com','Restu Waskita','+628953663237'),
('restuzulaika33@posteo.de','Restu Zulaika','+62866396775'),
('rezapranowo@mailbox.org','Reza Pranowo','+628149684090'),
('rezasaefullah@countermail.com','Reza Saefullah','+628429424569'),
('rfarah97@startmail.com','R. Farah Sihombing','+6285856439'),
('rgaliono35@startmail.com','R. Galiono Haryanto','+628311209797'),
('rgandi@startmail.com','R. Gandi Rajata','+62813714849'),
('rghaliyati30@outlook.com','R. Ghaliyati Kusmawati','+62896512433'),
('rharsanto23@tutanota.com','R. Harsanto Santoso, S.I.Kom','+62814283043'),
('rhesti@mailbox.org','R. Hesti Mustofa, S.H.','+628975305203'),
('ridwanmayasari@tutanota.com','Ridwan Mayasari','+628150934176'),
('rika@runbox.com','R. Ika Sihotang, M.Ak','+628858700680'),
('rina@tutanota.com','R. Ina Anggraini, S.Gz','+628256149352'),
('rinadamanik79@tutanota.com','Rina Damanik','+628286735615'),
('rinanasyidah42@startmail.com','Rina Nasyidah','+6289827084'),
('rinapradana56@ctemplar.com','Rina Pradana','+628669000833'),
('rinatamba30@mailbox.org','Rina Tamba, S.Pd','+628187743960'),
('rinianggriawan4@tutanota.com','Rini Anggriawan','+628963513170'),
('riniaryani@runbox.com','Rini Aryani','+6287755121'),
('rinimangunsong@protonmail.com','Rini Mangunsong','+62895709396'),
('rinipudjiastuti6@icloud.com','Rini Pudjiastuti','+62829501540'),
('rinisantoso100@keemail.me','Rini Santoso','+6289824025'),
('rirma53@hotmail.com','R. Irma Novitasari, S.Ked','+628663436802'),
('rirwan@runbox.com','R. Irwan Mandala, S.Pd','+628177463904'),
('rizkirajasa@tutanota.com','Rizki Rajasa','+6285786681'),
('rizkiwijayanti65@ctemplar.com','Rizki Wijayanti','+628228353117'),
('rjane@tutanota.com','R. Jane Purwanti, S.Kom','+628982283116'),
('rkalim@runbox.com','R. Kalim Ramadan, M.Pd','+6282212492'),
('rkani@hotmail.com','R. Kani Pranowo','+62812551924'),
('rkartika55@tutanota.com','R. Kartika Dabukke','+62841257717'),
('rkunthara@icloud.com','R. Kunthara Dabukke','+62884910271'),
('rlintang@tutanota.com','R. Lintang Sihombing, M.Farm','+6285987680'),
('rmadiarja@yahoo.com','R.M. Adiarja Maryadi','+6281522393'),
('rmasman@posteo.de','R.M. Asman Ardianto, S.Pt','+6289703833'),
('rmdarijan@ctemplar.com','R.M. Darijan Habibi, S.Psi','+628998218651'),
('rmdarimin@tutanota.com','R.M. Darimin Nuraini','+628658785267'),
('rmeka@lavabit.com','R.M. Eka Rahayu, S.H.','+62832691607'),
('rmempluk@startmail.com','R.M. Empluk Rahimah, S.IP','+62832505277'),
('rmgaiman@protonmail.com','R.M. Gaiman Nuraini','+628263415095'),
('rmgamanto@gmail.com','R.M. Gamanto Rahimah','+628666939992'),
('rmharjo32@tutanota.com','R.M. Harjo Yulianti','+62859200049'),
('rmian@runbox.com','R.M. Ian Oktaviani','+6281962461'),
('rmjaka@countermail.com','R.M. Jaka Oktaviani','+628855655970'),
('rmjamil24@posteo.de','R.M. Jamil Nasyidah','+6288420583'),
('rmkalim@tutanota.com','R.M. Kalim Sudiati, S.H.','+6282624253'),
('rmkarja78@countermail.com','R.M. Karja Yolanda, S.E.I','+62884884069'),
('rmlabuh@runbox.com','R.M. Labuh Aryani, S.T.','+6282596224'),
('rmmaras@posteo.de','R.M. Maras Yuliarti','+62814310229'),
('rmmulyanto@mailfence.com','R.M. Mulyanto Wulandari, S.Farm','+6285858199'),
('rmparman@ctemplar.com','R.M. Parman Sitorus','+6283441912'),
('rmreksa@ctemplar.com','R.M. Reksa Rahayu, M.Farm','+6281445285'),
('rmsabar@mailbox.org','R.M. Sabar Prasasta','+62882799128'),
('rmtaufik@startmail.com','R.M. Taufik Uwais, S.Psi','+62823540490'),
('rnasab20@startmail.com','R. Nasab Palastri','+6283875492'),
('rnasab@posteo.de','R. Nasab Budiman, M.Kom.','+62865969426'),
('rnurul74@posteo.de','R. Nurul Purwanti','+628314116969'),
('roliva@countermail.com','R. Oliva Fujiati, S.Pd','+62829217061'),
('rophelia17@runbox.com','R. Ophelia Suryono, M.TI.','+62849921481'),
('rpadma31@keemail.me','R. Padma Farida','+628836820111'),
('rprayoga31@yandex.cominbox.com','R. Prayoga Narpati, S.E.','+6283513150'),
('rputi@startmail.com','R. Puti Laksita','+6281922418'),
('rputri38@posteo.de','R. Putri Sihombing, M.Farm','+628857112715'),
('rrahmi12@tutanota.com','R. Rahmi Nasyiah','+6287965387'),
('rrika@yandex.cominbox.com','R. Rika Hastuti, S.Gz','+6288270187'),
('rsabrina@protonmail.com','R. Sabrina Susanti, S.E.','+6283768027'),
('rtami21@runbox.com','R. Tami Situmorang, S.Gz','+62815290589'),
('rtaswir18@yandex.cominbox.com','R. Taswir Novitasari','+62831109204'),
('rtaufik@zoho.com','R. Taufik Iswahyudi','+6283131926'),
('rtira@countermail.com','R. Tira Simbolon, M.Farm','+62828486987'),
('rtirtayasa22@posteo.de','R. Tirtayasa Ramadan, S.Gz','+62897361512'),
('rusmanlailasari@posteo.de','Rusman Lailasari','+628288465933'),
('rusmanprasetya5@mailbox.org','Rusman Prasetya, S.Farm','+62895549908'),
('rwage36@zoho.com','R. Wage Wahyudin, S.E.','+6289649457'),
('rwahyu@mailbox.org','R. Wahyu Santoso','+6284231865'),
('rwani15@mailbox.org','R. Wani Permadi','+6289620267'),
('rwarji@protonmail.com','R. Warji Novitasari, M.TI.','+6284764349'),
('rwarsa@fastmail.com','R. Warsa Prayoga, S.Farm','+62821171632'),
('ryani60@mailbox.org','R. Yani Widodo','+62878915496'),
('rzamira@yahoo.com','R. Zamira Pratama, M.Ak','+62839988941'),
('sabarhalimah@lavabit.com','Sabar Halimah','+628789447422'),
('sabarlailasari74@countermail.com','Sabar Lailasari','+62884922355'),
('sabartamba96@gmx.com','Sabar Tamba','+6284189194'),
('sabrimaryadi33@runbox.com','Sabri Maryadi','+62858424952'),
('sabrinajailani@runbox.com','Sabrina Jailani','+62842632754'),
('sabrinamangunsong@mailbox.org','Sabrina Mangunsong, S.IP','+62879659855'),
('sabrinamardhiyah@posteo.de','Sabrina Mardhiyah, S.T.','+6289419653'),
('sabrinaoktaviani@runbox.com','Sabrina Oktaviani','+628384864761'),
('sabrinapalastri89@lavabit.com','Sabrina Palastri','+628191434132'),
('sabrinarajasa@posteo.de','Sabrina Rajasa','+6285684853'),
('sabrinazulkarnain@hushmail.com','Sabrina Zulkarnain','+628421251392'),
('sadinakusumo@mail.com','Sadina Kusumo, M.Ak','+6289818919'),
('sadinamansur9@yahoo.com','Sadina Mansur, S.Farm','+628291078343'),
('sadinayulianti24@mailbox.org','Sadina Yulianti','+6282548808'),
('safinamardhiyah80@startmail.com','Safina Mardhiyah','+62828003191'),
('sakasaputra19@mailbox.org','Saka Saputra','+628211308494'),
('saktisaragih@ctemplar.com','Sakti Saragih','+6285682563'),
('saktisitompul33@posteo.de','Sakti Sitompul','+6283453172'),
('sakuralaksita24@ctemplar.com','Sakura Laksita','+628371842805'),
('sakuramulyani54@startmail.com','Sakura Mulyani','+62834596787'),
('sakurarahayu@runbox.com','Sakura Rahayu','+62847300872'),
('sakurayuliarti@posteo.de','Sakura Yuliarti','+62836288140'),
('salimahardianto@posteo.de','Salimah Ardianto','+6285860511'),
('salimahhartati@countermail.com','Salimah Hartati','+628467847393'),
('salimahhutagalung6@mailbox.org','Salimah Hutagalung','+628253269974'),
('salimahkurniawan@runbox.com','Salimah Kurniawan','+628599021814'),
('salimahwastuti79@countermail.com','Salimah Wastuti','+628147958673'),
('salmannuraini@startmail.com','Salman Nuraini','+62826685771'),
('salmansihombing@runbox.com','Salman Sihombing','+628813457043'),
('salmansuryatmi@ctemplar.com','Salman Suryatmi','+6284544466'),
('salsabilabudiman@posteo.de','Salsabila Budiman','+6282610318'),
('salsabilakuswandari47@tutanota.com','Salsabila Kuswandari, S.E.','+628280900818'),
('salsabilaprasetya@icloud.com','Salsabila Prasetya','+62895343474'),
('samiaharyani72@fastmail.com','Samiah Aryani','+628152511002'),
('samiahharyanti26@runbox.com','Samiah Haryanti','+6289201481'),
('samiahnatsir@tutanota.com','Samiah Natsir','+62857101479'),
('samiahoktaviani62@mailbox.org','Samiah Oktaviani','+628226554979'),
('samiahrajasa47@runbox.com','Samiah Rajasa','+62848898982'),
('samiahwinarno@countermail.com','Samiah Winarno, S.Pt','+62823680674'),
('sarahagustina@icloud.com','Sarah Agustina','+628178383823'),
('sarahhalimah@startmail.com','Sarah Halimah','+62829655630'),
('sarahthamrin18@tutanota.com','Sarah Thamrin','+62816314698'),
('sarikurniawan33@countermail.com','Sari Kurniawan','+628458085416'),
('sarilestari@tutanota.com','Sari Lestari','+62855616406'),
('sarisaptono@startmail.com','Sari Saptono','+62822677430'),
('sarisimanjuntak13@mailbox.org','Sari Simanjuntak','+62829227281'),
('sariwulandari@startmail.com','Sari Wulandari','+6286735926'),
('sariyuniar@runbox.com','Sari Yuniar','+628323756004'),
('satyasihombing@tutanota.com','Satya Sihombing','+628571576631'),
('septimulyani@startmail.com','Septi Mulyani','+628137034008'),
('septinashiruddin@startmail.com','Septi Nashiruddin, M.Kom.','+628371437398'),
('septiriyanti79@countermail.com','Septi Riyanti','+628329685083'),
('shakilamaryati81@scryptmail.com','Shakila Maryati, S.Pd','+6284191483'),
('shanialaksmiwati@posteo.de','Shania Laksmiwati, S.T.','+628940745255'),
('shaniamandala73@posteo.de','Shania Mandala','+6288364768'),
('silviaprasasta31@startmail.com','Silvia Prasasta','+6289540939'),
('silviarajasa71@posteo.de','Silvia Rajasa','+628482130944'),
('silviawibisono99@startmail.com','Silvia Wibisono','+628270732033'),
('simonusamah@mailbox.org','Simon Usamah, M.TI.','+62895422153'),
('siskapurwanti@posteo.de','Siska Purwanti','+62839257684'),
('siskasiregar19@posteo.de','Siska Siregar','+628241364434'),
('siskasudiati65@posteo.de','Siska Sudiati','+628268918460'),
('siskawastuti14@countermail.com','Siska Wastuti, M.M.','+6289641482'),
('sitimelani@startmail.com','Siti Melani, S.Psi','+6283505410'),
('slametlailasari7@tutanota.com','Slamet Lailasari','+62848063708'),
('slametnasyidah@zoho.com','Slamet Nasyidah','+6282629458'),
('sucimulyani68@ctemplar.com','Suci Mulyani, S.Gz','+6289824247'),
('sucioktaviani@yandex.cominbox.com','Suci Oktaviani','+628157747314'),
('sucisihotang31@mailbox.org','Suci Sihotang, S.Sos','+6289555257'),
('suciyolanda17@mailbox.org','Suci Yolanda','+6284607097'),
('suryakuswoyo81@yahoo.com','Surya Kuswoyo','+6288499664'),
('suryasusanti@posteo.de','Surya Susanti, S.T.','+62824060398'),
('sutanabyasa@mailbox.org','Sutan Abyasa Sitompul','+62815161052'),
('sutandaryani69@posteo.de','Sutan Daryani Astuti','+6282706426'),
('sutanedison85@outlook.com','Sutan Edison Zulkarnain','+62824566390'),
('sutanedward@tutanota.com','Sutan Edward Natsir, S.Ked','+62845837846'),
('sutangamani@startmail.com','Sutan Gamani Sitorus, S.Gz','+628263792246'),
('sutangamblang@outlook.com','Sutan Gamblang Permadi, S.Farm','+62833888061'),
('sutangatra@countermail.com','Sutan Gatra Haryanti','+628216253844'),
('sutanibrani@zoho.com','Sutan Ibrani Sihombing, S.E.I','+628371476227'),
('sutanjaga@hotmail.com','Sutan Jaga Uyainah','+62885135622'),
('sutanjamil@posteo.de','Sutan Jamil Dongoran, M.M.','+628972340989'),
('sutanjatmiko45@icloud.com','Sutan Jatmiko Laksita','+628452465902'),
('sutankamal@mailbox.org','Sutan Kamal Anggraini, S.I.Kom','+62849729620'),
('sutankarna@tutanota.com','Sutan Karna Laksmiwati, S.E.I','+628969242736'),
('sutankoko43@tutanota.com','Sutan Koko Laksmiwati, M.Ak','+628487927667'),
('sutanlanggeng20@startmail.com','Sutan Langgeng Tampubolon, S.T.','+6284682544'),
('sutanlasmono@startmail.com','Sutan Lasmono Maryadi, M.Kom.','+62829417267'),
('sutanluluh94@startmail.com','Sutan Luluh Wulandari, S.IP','+6283494981'),
('sutanmakuta85@mailbox.org','Sutan Makuta Maryadi, S.T.','+628986839844'),
('sutannrima@runbox.com','Sutan Nrima Putra','+628940375883'),
('sutanpangestu@ctemplar.com','Sutan Pangestu Zulaika','+62849639110'),
('sutanprayitna85@countermail.com','Sutan Prayitna Mayasari','+62883668533'),
('sutanslamet65@startmail.com','Sutan Slamet Yulianti','+628955876180'),
('sutanteddy@aol.com','Sutan Teddy Usamah','+6282814530'),
('sutanteguh28@yandex.cominbox.com','Sutan Teguh Tampubolon, M.Kom.','+62824708283'),
('sutanvinsen10@startmail.com','Sutan Vinsen Fujiati, S.Pd','+6284860268'),
('sutanyusuf@runbox.com','Sutan Yusuf Maulana','+628261054786'),
('syahrinikusmawati@tutanota.com','Syahrini Kusmawati','+62815066037'),
('syahrinisitorus97@posteo.de','Syahrini Sitorus','+6288570320'),
('syahriniutami41@runbox.com','Syahrini Utami','+628220332518'),
('tagus54@startmail.com','T. Agus Permadi, M.Kom.','+628227927228'),
('taliaaryani43@yandex.cominbox.com','Talia Aryani','+6283302844'),
('taliahakim97@runbox.com','Talia Hakim, M.Farm','+6289421867'),
('taliaharyanti@tutanota.com','Talia Haryanti','+62892517278'),
('taliamangunsong@tutanota.com','Talia Mangunsong, M.M.','+62846759967'),
('taliaprabowo80@posteo.de','Talia Prabowo, M.TI.','+62829835934'),
('taliawidiastuti90@hotmail.com','Talia Widiastuti, S.Kom','+628294696022'),
('tamianggraini@tutanota.com','Tami Anggraini','+62824196391'),
('tamibudiman71@mailbox.org','Tami Budiman, M.M.','+62894523787'),
('tamisiregar96@scryptmail.com','Tami Siregar','+6289806352'),
('tamiutami@startmail.com','Tami Utami, M.Farm','+628395296460'),
('taniariyanti@fastmail.com','Tania Riyanti','+6281437664'),
('tantrinasyiah@posteo.de','Tantri Nasyiah','+62866615569'),
('tarimustofa35@mailbox.org','Tari Mustofa','+62882949066'),
('taririyanti26@zoho.com','Tari Riyanti','+628484037247'),
('tbagya92@outlook.com','T. Bagya Damanik, M.Kom.','+628982557155'),
('tbahuwirya38@mailbox.org','T. Bahuwirya Mulyani, M.Pd','+62823301670'),
('tbakti@yandex.cominbox.com','T. Bakti Nugroho','+62831536824'),
('tcakrajiya5@tutanota.com','T. Cakrajiya Rahimah','+6281308558'),
('teddyyolanda@posteo.de','Teddy Yolanda','+62834322705'),
('tedimelani@hotmail.com','Tedi Melani','+6282362460'),
('tedison@runbox.com','T. Edison Wijayanti, M.Ak','+62838364833'),
('teguhnainggolan59@posteo.de','Teguh Nainggolan, S.Sos','+628799044528'),
('tgaluh@posteo.de','T. Galuh Suryono, S.IP','+628483928117'),
('tgambira70@posteo.de','T. Gambira Nainggolan, S.T.','+628419172970'),
('tgantar@startmail.com','T. Gantar Dongoran','+6287849145'),
('tgkcarub@hotmail.com','Tgk. Carub Hardiansyah, S.H.','+628960719370'),
('tgkcengkir@runbox.com','Tgk. Cengkir Tampubolon','+628973352638'),
('tgkelma@ctemplar.com','Tgk. Elma Hasanah','+62892743533'),
('tgkelvina@aol.com','Tgk. Elvina Thamrin','+62814649653'),
('tgkfarah@mailbox.org','Tgk. Farah Hidayanto','+62884320068'),
('tgkfarah@runbox.com','Tgk. Farah Tampubolon, M.Ak','+628142728423'),
('tgkgading86@runbox.com','Tgk. Gading Laksmiwati','+6289506447'),
('tgkgasti@ctemplar.com','Tgk. Gasti Rajata','+6289838103'),
('tgkhani56@startmail.com','Tgk. Hani Hidayanto','+6284929415'),
('tgkharimurti77@startmail.com','Tgk. Harimurti Zulkarnain','+6289832720'),
('tgkharjo22@outlook.com','Tgk. Harjo Hartati','+6288196060'),
('tgkida@aol.com','Tgk. Ida Haryanti, M.TI.','+62838316784'),
('tgkjail@mailbox.org','Tgk. Jail Kuswoyo, S.Pt','+628240973749'),
('tgkjessica12@ctemplar.com','Tgk. Jessica Wibowo, S.Pd','+628195927148'),
('tgkkala@tutanota.com','Tgk. Kala Wastuti, M.TI.','+628227956366'),
('tgkkarsana22@mailbox.org','Tgk. Karsana Hutagalung','+6289572214'),
('tgkkasim@runbox.com','Tgk. Kasim Adriansyah','+62824668064'),
('tgkmarwata55@gmx.com','Tgk. Marwata Novitasari','+62884558253'),
('tgknilam@lavabit.com','Tgk. Nilam Hutagalung, M.TI.','+6281421658'),
('tgkolivia@runbox.com','Tgk. Olivia Dabukke','+6281374726'),
('tgkoskar82@runbox.com','Tgk. Oskar Agustina, S.H.','+62816443379'),
('tgkprayogo27@ctemplar.com','Tgk. Prayogo Sirait','+628556391060'),
('tgkpurwadi@mail.com','Tgk. Purwadi Marbun','+628388039942'),
('tgkputri@posteo.de','Tgk. Putri Tarihoran','+6282906656'),
('tgkqori59@mailbox.org','Tgk. Qori Riyanti, S.Sos','+6284135835'),
('tgkrahmi65@countermail.com','Tgk. Rahmi Fujiati','+62823965713'),
('tgkreza@countermail.com','Tgk. Reza Prayoga, S.Sos','+628923852237'),
('tgkrina@countermail.com','Tgk. Rina Anggraini, S.E.I','+628415638119'),
('tgksadina@mailbox.org','Tgk. Sadina Mulyani','+628797898941'),
('tgksalsabila20@countermail.com','Tgk. Salsabila Hutasoit','+62829689646'),
('tgksamiah@mailfence.com','Tgk. Samiah Pratiwi','+62822261099'),
('tgksiska51@gmx.com','Tgk. Siska Fujiati, S.H.','+6282678694'),
('tgktari@outlook.com','Tgk. Tari Situmorang','+628773641188'),
('tgkumay41@countermail.com','Tgk. Umay Hasanah, S.Psi','+62836964711'),
('tgkzelaya@tutanota.com','Tgk. Zelaya Mustofa','+6282397650'),
('tgkzizi@posteo.de','Tgk. Zizi Maryati, S.Ked','+62825277702'),
('tharsaya@startmail.com','T. Harsaya Halimah, S.Gz','+628259117205'),
('tiaradongoran@riseup.net','Tiara Dongoran, S.Pd','+628998214601'),
('tiarapangestu10@mailbox.org','Tiara Pangestu','+62848698279'),
('tiaraputra47@countermail.com','Tiara Putra','+62843467884'),
('tiaraputra@ctemplar.com','Tiara Putra, S.T.','+628460706815'),
('tiarautami34@countermail.com','Tiara Utami','+6288482837'),
('tilyas49@startmail.com','T. Ilyas Manullang, M.Pd','+628567773793'),
('timbulutama28@runbox.com','Timbul Utama','+62843191115'),
('tinaharyanto@mailbox.org','Tina Haryanto','+62815927513'),
('tinahutagalung@zoho.com','Tina Hutagalung','+62868439551'),
('tinapurwanti@tutanota.com','Tina Purwanti','+628698912860'),
('tinawasita@yahoo.com','Tina Wasita','+628972357441'),
('tirafarida44@startmail.com','Tira Farida','+628998219291'),
('tiramandasari@posteo.de','Tira Mandasari','+62826501702'),
('tiraprasasta@runbox.com','Tira Prasasta','+62828395286'),
('tirasuartini69@startmail.com','Tira Suartini','+6284301014'),
('tirtaharyanti@gmail.com','Tirta Haryanti, M.Ak','+6287720688'),
('tirtamayasari15@mail.com','Tirta Mayasari','+628228772199'),
('tirtapranowo@gmail.com','Tirta Pranowo','+6282313778'),
('titihalim87@countermail.com','Titi Halim','+628573908806'),
('titimandala69@countermail.com','Titi Mandala','+62824479190'),
('titinadriansyah26@mailbox.org','Titin Adriansyah','+628131734943'),
('titinlailasari@startmail.com','Titin Lailasari','+6282567848'),
('titinnapitupulu@mailbox.org','Titin Napitupulu, S.T.','+62815308199'),
('titinnasyidah@gmx.com','Titin Nasyidah, M.M.','+628483483984'),
('titinsimanjuntak@startmail.com','Titin Simanjuntak','+628279292314'),
('titisihotang83@yahoo.com','Titi Sihotang, S.Gz','+62898644954'),
('tjinawi21@ctemplar.com','T. Jinawi Ramadan, S.Psi','+62815504362'),
('tkenari@ctemplar.com','T. Kenari Haryanto, S.Kom','+62834025750'),
('tkurnia91@yahoo.com','T. Kurnia Hariyah','+62833243770'),
('tlaksana74@startmail.com','T. Laksana Hidayat, S.Psi','+6282210593'),
('tliman@mailbox.org','T. Liman Padmasari','+6282572359'),
('tmahfud27@startmail.com','T. Mahfud Widodo','+62825653775'),
('tmaman@runbox.com','T. Maman Hidayat','+62835469104'),
('tmumpuni@tutanota.com','T. Mumpuni Kusumo, M.Farm','+6289270432'),
('tmuni@gmx.com','T. Muni Pratiwi, S.Farm','+62824423114'),
('tnalar52@posteo.de','T. Nalar Zulaika, S.I.Kom','+62877303194'),
('tnugraha@startmail.com','T. Nugraha Pangestu, S.E.I','+628365322629'),
('tokto@yahoo.com','T. Okto Prayoga, S.Sos','+62844780654'),
('tomidabukke@mailbox.org','Tomi Dabukke','+628939555109'),
('tominashiruddin47@mailbox.org','Tomi Nashiruddin','+628140267084'),
('tomisuryatmi@outlook.com','Tomi Suryatmi','+628828223391'),
('tpangeran6@ctemplar.com','T. Pangeran Kuswoyo','+62898053487'),
('tpranawa44@startmail.com','T. Pranawa Suryono','+62826590300'),
('trifujiati@countermail.com','Tri Fujiati, S.I.Kom','+628810024224'),
('tsatya@gmx.com','T. Satya Laksmiwati, S.E.','+6282873278'),
('ttasdik@posteo.de','T. Tasdik Utama','+628562439956'),
('tugimanpuspita40@posteo.de','Tugiman Puspita','+628424558560'),
('tugimansirait11@gmx.com','Tugiman Sirait','+628410063928'),
('tviktor@posteo.de','T. Viktor Oktaviani, S.Psi','+628966494010'),
('twarsita@posteo.de','T. Warsita Jailani','+628498746444'),
('twira33@icloud.com','T. Wira Mayasari','+628258497376'),
('uchitahabibi58@ctemplar.com','Uchita Habibi','+6287765721'),
('uchitapadmasari@icloud.com','Uchita Padmasari','+6281266413'),
('uchitawasita38@keemail.me','Uchita Wasita','+6281935155'),
('udaprastuti@countermail.com','Uda Prastuti','+62841425902'),
('ulidamanik@scryptmail.com','Uli Damanik','+628284961866'),
('uliuyainah21@aol.com','Uli Uyainah, M.Kom.','+628282278543'),
('uliyuliarti24@yandex.cominbox.com','Uli Yuliarti','+628970207611'),
('ulvaardianto9@scryptmail.com','Ulva Ardianto','+628975400339'),
('ulvahariyah@ctemplar.com','Ulva Hariyah','+62848172111'),
('ulvapurnawati@posteo.de','Ulva Purnawati, S.Kom','+6281440933'),
('ulvasaptono90@posteo.de','Ulva Saptono','+6281459310'),
('ulvauyainah19@gmail.com','Ulva Uyainah, S.IP','+6281314535'),
('ulyanarpati39@startmail.com','Ulya Narpati, M.M.','+628349756382'),
('ulyasalahudin90@startmail.com','Ulya Salahudin','+628293927774'),
('umaranggriawan65@lavabit.com','Umar Anggriawan, M.TI.','+6289684772'),
('umargunawan@ctemplar.com','Umar Gunawan','+6283218243'),
('umarpadmasari53@runbox.com','Umar Padmasari','+628593948312'),
('umaryuniar40@tutanota.com','Umar Yuniar','+628292367187'),
('umayahardiansyah48@startmail.com','Umaya Hardiansyah','+6286773213'),
('umimaryadi@icloud.com','Umi Maryadi','+628443029067'),
('unjanijailani@startmail.com','Unjani Jailani','+62813563580'),
('unjanilaksita@posteo.de','Unjani Laksita','+628955203263'),
('unjanipermata@tutanota.com','Unjani Permata','+6281373777'),
('unjanisantoso@mailbox.org','Unjani Santoso','+62826951762'),
('usmanhutagalung54@tutanota.com','Usman Hutagalung, S.Sos','+6282595140'),
('usyiaryani@mailbox.org','Usyi Aryani, S.Farm','+6281303519'),
('utamapratiwi@runbox.com','Utama Pratiwi, S.Sos','+6282845404'),
('vanesakuswoyo@runbox.com','Vanesa Kuswoyo','+6289490316'),
('vanesamayasari7@posteo.de','Vanesa Mayasari, S.IP','+6284536982'),
('vanyalaksmiwati@outlook.com','Vanya Laksmiwati, S.Pt','+628855236056'),
('vanyamayasari35@posteo.de','Vanya Mayasari','+62867870901'),
('vanyanurdiyanti@mail.com','Vanya Nurdiyanti','+6284324292'),
('vanyapratama@mailbox.org','Vanya Pratama, S.Pd','+628571163759'),
('vanyasiregar9@mailfence.com','Vanya Siregar','+6288564837'),
('vanyawahyudin@countermail.com','Vanya Wahyudin','+628852767280'),
('vegaardianto@posteo.de','Vega Ardianto','+6282863118'),
('vegairawan@startmail.com','Vega Irawan','+628243813324'),
('vegapuspasari@ctemplar.com','Vega Puspasari','+628572928034'),
('vegasafitri@ctemplar.com','Vega Safitri','+62885583132'),
('veropuspasari19@startmail.com','Vero Puspasari','+6284212045'),
('vickyardianto59@tutanota.com','Vicky Ardianto','+62815530161'),
('vickyfirmansyah80@startmail.com','Vicky Firmansyah','+628945183632'),
('vickylailasari21@gmail.com','Vicky Lailasari','+62884399487'),
('vickysihotang@startmail.com','Vicky Sihotang','+6281307853'),
('victoriagunawan@posteo.de','Victoria Gunawan','+628783516829'),
('victoriamandasari50@posteo.de','Victoria Mandasari','+628251029634'),
('victorianurdiyanti8@posteo.de','Victoria Nurdiyanti','+628299980210'),
('victoriasaragih@mailfence.com','Victoria Saragih','+62826420650'),
('victoriasuryono9@mailbox.org','Victoria Suryono','+6283774450'),
('viktorprasasta80@hotmail.com','Viktor Prasasta','+62884640604'),
('vimansusanti@mailbox.org','Viman Susanti','+6281370884'),
('vimanyulianti36@runbox.com','Viman Yulianti','+62843125631'),
('vinonamaga69@tutanota.com','Vino Namaga','+62848021800'),
('vinsenmustofa@mail.com','Vinsen Mustofa','+628559956464'),
('violethastuti34@posteo.de','Violet Hastuti','+62847749035'),
('violetkuswandari93@tutanota.com','Violet Kuswandari','+62817933577'),
('violetsiregar2@runbox.com','Violet Siregar','+6281741165'),
('wadiaryani@posteo.de','Wadi Aryani','+62885899424'),
('waluyomustofa9@tutanota.com','Waluyo Mustofa','+62813230525'),
('waluyonainggolan@tutanota.com','Waluyo Nainggolan','+628332992462'),
('wanikusumo50@icloud.com','Wani Kusumo','+6284493999'),
('wanimulyani74@startmail.com','Wani Mulyani','+6283478062'),
('wardayapradipta@tutanota.com','Wardaya Pradipta','+628157638505'),
('warditampubolon63@tutanota.com','Wardi Tampubolon','+62813274448'),
('warjioktaviani69@mailbox.org','Warji Oktaviani','+6284964709'),
('warjipranowo@ctemplar.com','Warji Pranowo, S.Sos','+62847990626'),
('warjisetiawan@startmail.com','Warji Setiawan, S.E.','+62827297401'),
('warsarajasa@countermail.com','Warsa Rajasa','+628959376551'),
('wartapermadi72@lavabit.com','Warta Permadi, M.Farm','+628480494240'),
('wartasuryono@mailbox.org','Warta Suryono','+62896638267'),
('wasismarpaung@startmail.com','Wasis Marpaung','+628960214806'),
('wasismustofa@mailbox.org','Wasis Mustofa','+628838400736'),
('wasiswibowo50@tutanota.com','Wasis Wibowo','+62829417035'),
('wawanmegantara80@yahoo.com','Wawan Megantara','+62857718873'),
('wawanpradipta@runbox.com','Wawan Pradipta','+62843275590'),
('widyahabibi@posteo.de','Widya Habibi','+62848995680'),
('widyakusmawati9@mailbox.org','Widya Kusmawati, M.Farm','+6281301692'),
('widyalailasari15@tutanota.com','Widya Lailasari','+628254088088'),
('widyapradana31@posteo.de','Widya Pradana','+6285840439'),
('widyasuartini@posteo.de','Widya Suartini','+62813472995'),
('windapalastri53@hushmail.com','Winda Palastri, S.Sos','+628430038189'),
('windasudiati@mailbox.org','Winda Sudiati','+62843301096'),
('windausamah@mailbox.org','Winda Usamah, M.Pd','+62882976545'),
('windawijayanti94@tutanota.com','Winda Wijayanti','+628589576443'),
('wiradabukke3@yandex.cominbox.com','Wira Dabukke','+6282957494'),
('wirasaefullah@ctemplar.com','Wira Saefullah','+62842905307'),
('wirawibowo@runbox.com','Wira Wibowo','+628266822474'),
('wirdapratama@mailbox.org','Wirda Pratama','+6283547349'),
('wisnukuswandari79@tutanota.com','Wisnu Kuswandari','+6288561971'),
('wisnunovitasari@tutanota.com','Wisnu Novitasari','+6285854367'),
('wulanmaulana@countermail.com','Wulan Maulana','+6282640842'),
('wulansuartini@startmail.com','Wulan Suartini','+6284296685'),
('yahyamelani82@posteo.de','Yahya Melani','+6282235150'),
('yahyamustofa@startmail.com','Yahya Mustofa','+628925128180'),
('yahyanugroho@tutanota.com','Yahya Nugroho','+62897506671'),
('yancejailani88@startmail.com','Yance Jailani','+6289382502'),
('yancekuswoyo@startmail.com','Yance Kuswoyo','+628998216176'),
('yancesudiati74@tutanota.com','Yance Sudiati','+62819053349'),
('yanifirgantoro@tutanota.com','Yani Firgantoro, S.IP','+62838173373'),
('yanipermadi@lavabit.com','Yani Permadi','+62824337551'),
('yanisaragih68@runbox.com','Yani Saragih, S.Sos','+628150211224'),
('yanisitorus@mailbox.org','Yani Sitorus','+62837016972'),
('yaniyulianti@protonmail.com','Yani Yulianti','+628972105104'),
('yessiramadan@mailbox.org','Yessi Ramadan, S.Kom','+6285813253'),
('yessisalahudin37@mailbox.org','Yessi Salahudin','+628139713490'),
('yessisuryono@mailbox.org','Yessi Suryono','+6289619205'),
('yessiwasita57@runbox.com','Yessi Wasita','+628153486635'),
('yogamandala@mailbox.org','Yoga Mandala','+6288182350'),
('yogayolanda@runbox.com','Yoga Yolanda','+6287865007'),
('yonohalim55@posteo.de','Yono Halim','+628243259154'),
('yoseflazuardi@hushmail.com','Yosef Lazuardi','+62828924207'),
('yuliafarida53@startmail.com','Yulia Farida','+6283437879'),
('yulianaardianto@gmail.com','Yuliana Ardianto, M.TI.','+62849136491'),
('yulianadabukke@tutanota.com','Yuliana Dabukke, S.Psi','+6281534779'),
('yulianarajasa@posteo.de','Yuliana Rajasa','+628132748164'),
('yulianasimbolon8@posteo.de','Yuliana Simbolon','+6282453721'),
('yuliapadmasari@startmail.com','Yulia Padmasari','+62899564447'),
('yuliarajata@ctemplar.com','Yulia Rajata','+6286628958'),
('yuliawaskita@tutanota.com','Yulia Waskita','+62855700582'),
('yunipermadi39@posteo.de','Yuni Permadi, S.E.','+628230397096'),
('yunipermadi97@posteo.de','Yuni Permadi','+6284111594'),
('yuniutama13@startmail.com','Yuni Utama','+628220434981'),
('yuniuwais22@posteo.de','Yuni Uwais','+6281794723'),
('yusuflatupono@mail.com','Yusuf Latupono','+628285614797'),
('yusufnasyiah@mailbox.org','Yusuf Nasyiah, M.M.','+628143644789'),
('zaenabhandayani99@mailbox.org','Zaenab Handayani, S.H.','+628314827116'),
('zaenabkusmawati48@fastmail.com','Zaenab Kusmawati','+62855544462'),
('zaenabpratiwi58@mailbox.org','Zaenab Pratiwi, S.E.','+628150473191'),
('zahraadriansyah49@runbox.com','Zahra Adriansyah','+628475241561'),
('zahrajanuar89@posteo.de','Zahra Januar','+628778510593'),
('zahramaryati@yandex.cominbox.com','Zahra Maryati','+62868793206'),
('zahraoktaviani33@mailfence.com','Zahra Oktaviani','+62879852053'),
('zahraprayoga57@protonmail.com','Zahra Prayoga','+62895511240'),
('zahraramadan@mailbox.org','Zahra Ramadan','+62848278433'),
('zahrasalahudin@posteo.de','Zahra Salahudin','+628938074576'),
('zalindradongoran82@startmail.com','Zalindra Dongoran','+62817985915'),
('zalindranapitupulu13@startmail.com','Zalindra Napitupulu','+62896840031'),
('zalindraoktaviani53@runbox.com','Zalindra Oktaviani, S.IP','+628327039688'),
('zalindrapalastri3@tutanota.com','Zalindra Palastri, S.T.','+62894374244'),
('zamirafujiati@tutanota.com','Zamira Fujiati, M.TI.','+628497491260'),
('zamiramandasari@ctemplar.com','Zamira Mandasari','+628925367215'),
('zamiramaryati29@runbox.com','Zamira Maryati','+628777655406'),
('zamirapratiwi88@startmail.com','Zamira Pratiwi, S.Gz','+628590959295'),
('zamirasudiati@mailfence.com','Zamira Sudiati','+6285719293'),
('zamirausada@posteo.de','Zamira Usada, S.Gz','+628998213232'),
('zelayahutagalung56@lavabit.com','Zelaya Hutagalung','+6283272382'),
('zelayamarbun15@scryptmail.com','Zelaya Marbun','+628587307152'),
('zelayanapitupulu@fastmail.com','Zelaya Napitupulu','+62834995993'),
('zelayawasita@startmail.com','Zelaya Wasita, M.Farm','+628972353897'),
('zeldaadriansyah@posteo.de','Zelda Adriansyah, S.Pd','+628154609144'),
('zeldahariyah45@startmail.com','Zelda Hariyah, M.Farm','+6288558883'),
('zeldamardhiyah21@runbox.com','Zelda Mardhiyah','+628925261505'),
('zeldapranowo72@posteo.de','Zelda Pranowo','+6281920104'),
('zeldasuwarno62@countermail.com','Zelda Suwarno, M.Kom.','+628386032646'),
('zeldatamba@posteo.de','Zelda Tamba, M.TI.','+628995862375'),
('zizihardiansyah@gmx.com','Zizi Hardiansyah, S.Pt','+6281520516'),
('ziziharyanto@fastmail.com','Zizi Haryanto','+62899590375'),
('zizipurnawati40@gmail.com','Zizi Purnawati','+62821808360'),
('ziziriyanti100@ctemplar.com','Zizi Riyanti','+6285625364'),
('zizisaptono@mailfence.com','Zizi Saptono','+6285837299'),
('zizizulaika10@ctemplar.com','Zizi Zulaika','+628358928054'),
('zulaikhamansur44@countermail.com','Zulaikha Mansur','+6289301555'),
('zulaikhapratama63@startmail.com','Zulaikha Pratama','+6288444300'),
('zulaikhasantoso53@countermail.com','Zulaikha Santoso','+6289802393'),
('zulfayuliarti@hotmail.com','Zulfa Yuliarti','+62866830259');
/*!40000 ALTER TABLE `pengunjung` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPengunjung_BeforeInsert BEFORE INSERT ON Pengunjung
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPengunjung_BeforeUpdate BEFORE UPDATE ON Pengunjung
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penyediabahan`
--

DROP TABLE IF EXISTS `penyediabahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penyediabahan` (
  `email` varchar(255) NOT NULL CHECK (locate('@',`email`) > 0),
  `nama` varchar(255) NOT NULL,
  `nomorTelepon` varchar(13) DEFAULT NULL CHECK (`nomorTelepon` regexp '^\\+?[0-9]+$' and octet_length(`nomorTelepon`) <= 13),
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyediabahan`
--

LOCK TABLES `penyediabahan` WRITE;
/*!40000 ALTER TABLE `penyediabahan` DISABLE KEYS */;
INSERT INTO `penyediabahan` VALUES
('cvagus100@mailbox.org','CV Agus Pantai Dharma','+628362531134'),
('cvagus19@zoho.com','CV Agus Hutan Bersama','+628434215408'),
('cvagus@startmail.com','CV Agus Sehat Surya','+62893883030'),
('cvagustina75@tutanota.com','CV Agustina Pulau Inti','+6282995517'),
('cvbambang@countermail.com','CV Bambang Bergizi Utama','+628499527275'),
('cvbambang@hotmail.com','CV Bambang Asli Maju','+628658848600'),
('cvbudi75@posteo.de','CV Budi Tradisional Mega','+628246160452'),
('cvbudi@icloud.com','CV Budi Bersih Lestari','+6286766802'),
('cvdewanto18@ctemplar.com','CV Dewanto Lautan Jayakarta','+62826492342'),
('cvdewanto87@runbox.com','CV Dewanto Harapan Mandiri','+628793039195'),
('cvdewi@gmx.com','CV Dewi Enak Berkah','+6287712734'),
('cvfitriani25@countermail.com','CV Fitriani Sungai Jaya','+628213886752'),
('cvfitriani53@mailbox.org','CV Fitriani Makmur Maju','+62885135575'),
('cvfitriani62@runbox.com','CV Fitriani Tradisional Cemerlang','+628833383728'),
('cvfitriani@mail.com','CV Fitriani Praktis Maju','+62848965313'),
('cvgunawan41@ctemplar.com','CV Gunawan Manis Energi','+628698915289'),
('cvgunawan97@runbox.com','CV Gunawan Tradisional Bersama','+628149853302'),
('cvgunawan@fastmail.com','CV Gunawan Sejati Makmur','+628284204379'),
('cvgunawan@mailbox.org','CV Gunawan Bumi Mitra','+628457923376'),
('cvhadi@gmail.com','CV Hadi Pulau Jaya','+6286804705'),
('cvhadi@mailbox.org','CV Hadi Bahagia Harapan','+62898848602'),
('cvhasanah99@ctemplar.com','CV Hasanah Bergizi Utama','+62821557000'),
('cvhidayat18@startmail.com','CV Hidayat Harmoni Karya','+628230330052'),
('cvindah14@mailbox.org','CV Indah Prima Utama','+6283662229'),
('cvindah@outlook.com','CV Indah Segar Prestasi','+628348092940'),
('cvjaya6@runbox.com','CV Jaya Makanan Berkat','+628991287125'),
('cvkristanto13@countermail.com','CV Kristanto Ramah Energi','+6283737107'),
('cvkristanto49@mailbox.org','CV Kristanto Harapan Wijaya','+628463992859'),
('cvkristanto@yandex.cominbox.com','CV Kristanto Taman Sejahtera','+6289403952'),
('cvkurniawan83@startmail.com','CV Kurniawan Nusantara Karya','+6285551161'),
('cvkurniawan@ctemplar.com','CV Kurniawan Modern Mitra','+628591678858'),
('cvkurniawan@tutanota.com','CV Kurniawan Sejahtera Mitra','+628770131014'),
('cvkusuma52@countermail.com','CV Kusuma Utama Kusuma','+6285868123'),
('cvkusuma@ctemplar.com','CV Kusuma Damai Surya','+628238346712'),
('cvkusuma@tutanota.com','CV Kusuma Sederhana Harmoni','+6284351166'),
('cvkusumawati62@yandex.cominbox.com','CV Kusumawati Sungai Jaya','+6282243731'),
('cvkusumawati@runbox.com','CV Kusumawati Nikmat Raya','+6284445616'),
('cvkusumo37@posteo.de','CV Kusumo Bahagia Lestari','+62877743927'),
('cvmulya@countermail.com','CV Mulya Murni Harapan','+628577416028'),
('cvmulya@lavabit.com','CV Mulya Tumbuh Maju','+6285537752'),
('cvningsih65@mailbox.org','CV Ningsih Indonesia Gemilang','+6282582359'),
('cvningsih@gmx.com','CV Ningsih Air Bersama','+6284686645'),
('cvnugroho13@yandex.cominbox.com','CV Nugroho Rasa Mega','+62866473291'),
('cvnur57@runbox.com','CV Nur Rasa Bakti','+62823255005'),
('cvnur@tutanota.com','CV Nur Prima Citra','+628474999685'),
('cvnurhayati81@runbox.com','CV Nurhayati Mulia Maju','+6287967866'),
('cvpermadi13@runbox.com','CV Permadi Pulau Kusuma','+628312100237'),
('cvpermadi62@keemail.me','CV Permadi Favorit Nusantara','+628266621256'),
('cvprasetyo37@countermail.com','CV Prasetyo Matahari Maju','+628932548438'),
('cvpratama@fastmail.com','CV Pratama Toko Mitra','+6282988357'),
('cvpratama@runbox.com','CV Pratama Hutan Wira','+6288490957'),
('cvpurnomo16@ctemplar.com','CV Purnomo Bersih Mitra','+6289637534'),
('cvpurnomo63@tutanota.com','CV Purnomo Pilihan Pertama','+62865666156'),
('cvpurnomo@lavabit.com','CV Purnomo Indah Bhakti','+6284945401'),
('cvpurnomo@posteo.de','CV Purnomo Lestari Sentosa','+62824019373'),
('cvpuspitasari@posteo.de','CV Puspitasari Nusantara Pertama','+628272240754'),
('cvpuspitasari@tutanota.com','CV Puspitasari Indah Jaya','+6282767506'),
('cvputra38@posteo.de','CV Putra Alam Purnama','+6289973347'),
('cvputri61@posteo.de','CV Putri Lezat Utama','+62816368837'),
('cvputri@ctemplar.com','CV Putri Bahagia Karya','+6283492935'),
('cvputri@gmail.com','CV Putri Tradisional Nusa','+6282859309'),
('cvputri@hushmail.com','CV Putri Nikmat Harmoni','+628992933665'),
('cvputri@posteo.de','CV Putri Nusantara Nusantara','+62847283913'),
('cvputri@startmail.com','CV Putri Lingkungan Maju','+6289689485'),
('cvrahayu44@icloud.com','CV Rahayu Damai Citra','+628989588205'),
('cvrahayu@mailbox.org','CV Rahayu Rasa Mitra','+6282927552'),
('cvrahayu@runbox.com','CV Rahayu Lestari Mega','+62827292816'),
('cvrahmawati@ctemplar.com','CV Rahmawati Pohon Jaya','+6282927547'),
('cvrahmawati@mailbox.org','CV Rahmawati Taman Mitra','+62825209268'),
('cvsantoso13@countermail.com','CV Santoso Sejahtera Sejahtera','+6284153576'),
('cvsantoso71@runbox.com','CV Santoso Pulau Sejahtera','+62868946001'),
('cvsaputra@hushmail.com','CV Saputra Pulau Maju','+62879220461'),
('cvsaputra@riseup.net','CV Saputra Berkah Prestasi','+62822406758'),
('cvsaputri38@mailbox.org','CV Saputri Lingkungan Murni','+62822236790'),
('cvsaputri@countermail.com','CV Saputri Sejahtera Maju','+62827183271'),
('cvsaputri@posteo.de','CV Saputri Nikmat Sejahtera','+62892157122'),
('cvsaputro72@ctemplar.com','CV Saputro Organik Dharma','+6285673969'),
('cvsaputro@fastmail.com','CV Saputro Prima Nusantara','+6288569582'),
('cvsaputro@posteo.de','CV Saputro Lengkap Abadi','+62823425207'),
('cvsari@keemail.me','CV Sari Alami Nusantara','+62837234482'),
('cvsari@startmail.com','CV Sari Air Bersinar','+62815377008'),
('cvseptiani57@countermail.com','CV Septiani Terpilih Nusantara','+62878695939'),
('cvseptiani@startmail.com','CV Septiani Murni Nusa','+628983226866'),
('cvsetiadi75@posteo.de','CV Setiadi Berkah Maju','+628567560564'),
('cvsetiadi@ctemplar.com','CV Setiadi Gunung Mitra','+6288303477'),
('cvsetiadi@tutanota.com','CV Setiadi Harian Dharma','+628396698775'),
('cvsetiawan70@posteo.de','CV Setiawan Waktu Harapan','+6282243443'),
('cvsetiawati@ctemplar.com','CV Setiawati Mulia Maju','+62857503794'),
('cvsuharto100@posteo.de','CV Suharto Hijau Kreatif','+6284174907'),
('cvsuharto@tutanota.com','CV Suharto Sehat Prima','+6283865130'),
('cvsukardi@startmail.com','CV Sukardi Sungai Maju','+62895122884'),
('cvsurya@posteo.de','CV Surya Bahagia Maju','+628581864175'),
('cvsuryadi48@zoho.com','CV Suryadi Bersih Nusantara','+628288844551'),
('cvsuryadi92@ctemplar.com','CV Suryadi Segar Nusa','+6282460919'),
('cvsuryadi@runbox.com','CV Suryadi Lezat Sakti','+62823648993'),
('cvsuryadi@tutanota.com','CV Suryadi Alam Sentosa','+62838859717'),
('cvsuryani40@startmail.com','CV Suryani Indah Sejahtera','+62866424347'),
('cvsuryani@startmail.com','CV Suryani Waktu Berkat','+6289200409'),
('cvsuryanto86@startmail.com','CV Suryanto Lautan Jayakarta','+628799641247'),
('cvsusanti37@startmail.com','CV Susanti Taman Inti','+62815118153'),
('cvsusanti86@mailbox.org','CV Susanti Khas Maju','+628943282010'),
('cvsusanti@startmail.com','CV Susanti Makanan Konsultama','+6284552604'),
('cvsusanto91@tutanota.com','CV Susanto Khas Makmur','+628346080862'),
('cvsusanto@posteo.de','CV Susanto Mulia Sejahtera','+628925656373'),
('cvutami@mailbox.org','CV Utami Lestari Wijaya','+6289639183'),
('cvwibisono@posteo.de','CV Wibisono Harapan Utama','+6289526723'),
('cvwibisono@startmail.com','CV Wibisono Tradisional Bersama','+6282102615'),
('cvwibisono@tutanota.com','CV Wibisono Matahari Eka','+628287684234'),
('cvwibowo97@mailbox.org','CV Wibowo Hijau Nusa','+628446806670'),
('cvwidodo66@keemail.me','CV Widodo Sehat Sejahtera','+62827297900'),
('cvwijaya18@startmail.com','CV Wijaya Nikmat Intan','+6281243457'),
('cvwijaya26@icloud.com','CV Wijaya Lezat Harapan','+62827757425'),
('cvwulandari@aol.com','CV Wulandari Toko Tata','+628992010700'),
('cvwulandari@countermail.com','CV Wulandari Lautan Maju','+62822600555'),
('cvyulianto@startmail.com','CV Yulianto Lengkap Maju','+628322129454'),
('cvyusuf78@posteo.de','CV Yusuf Buah Konsultama','+62899027966'),
('firmaagung@riseup.net','Firma Agung Bumbu Mulia','+6289883818'),
('firmaagus25@mailbox.org','Firma Agus Tradisional Mandala','+628793864778'),
('firmaagus@countermail.com','Firma Agus Bumbu Gemilang','+628433236121'),
('firmabambang15@aol.com','Firma Bambang Gunung Purnama','+6289666103'),
('firmabambang20@countermail.com','Firma Bambang Asli Wira','+62835833602'),
('firmabambang65@tutanota.com','Firma Bambang Khas Wijaya','+6289669716'),
('firmabudi12@posteo.de','Firma Budi Waktu Nusa','+6285722469'),
('firmabudi22@runbox.com','Firma Budi Waktu Konsultan','+62843346273'),
('firmadewanto@runbox.com','Firma Dewanto Damai Cipta','+628562784664'),
('firmadewanto@startmail.com','Firma Dewanto Indah Nusantara','+628454255060'),
('firmadewi24@startmail.com','Firma Dewi Sumber Pertama','+6283795187'),
('firmafitriani7@countermail.com','Firma Fitriani Lestari Wijaya','+6281628026'),
('firmafitriani87@posteo.de','Firma Fitriani Lengkap Nusa','+62823157504'),
('firmafitriani@startmail.com','Firma Fitriani Lezat Abadi','+62816560745'),
('firmagunawan65@ctemplar.com','Firma Gunawan Nusantara Prima','+62839936265'),
('firmagunawan@tutanota.com','Firma Gunawan Terbaik Prima','+628998214220'),
('firmahadi@aol.com','Firma Hadi Sehat Wijaya','+6286659810'),
('firmahasanah25@startmail.com','Firma Hasanah Nikmat Sentosa','+6282464047'),
('firmahasanah@mailfence.com','Firma Hasanah Bergizi Makmur','+6286881506'),
('firmahermawan39@runbox.com','Firma Hermawan Cerah Surya','+628357674360'),
('firmahermawan52@tutanota.com','Firma Hermawan Bumi Karya','+628318945028'),
('firmahidayat30@gmx.com','Firma Hidayat Favorit Karya','+628129428869'),
('firmahidayat77@startmail.com','Firma Hidayat Bumi Prima','+6284790151'),
('firmahidayat@mailbox.org','Firma Hidayat Ceria Bersama','+6289846416'),
('firmakusuma@ctemplar.com','Firma Kusuma Cerah Sejahtera','+6282512044'),
('firmakusumawati2@posteo.de','Firma Kusumawati Air Cendekia','+628220675204'),
('firmakusumawati82@tutanota.com','Firma Kusumawati Nikmat Maju','+628369710190'),
('firmakusumawati@ctemplar.com','Firma Kusumawati Sayur Sentosa','+628235465046'),
('firmakusumo99@hotmail.com','Firma Kusumo Gunung Nusa','+628959217332'),
('firmalaila62@fastmail.com','Firma Laila Sayur Kusuma','+628299205922'),
('firmalaila78@startmail.com','Firma Laila Indonesia Bangun','+62895185109'),
('firmalaila92@startmail.com','Firma Laila Cerah Cemerlang','+628489142014'),
('firmalaila98@startmail.com','Firma Laila Buah Jayakarta','+628998214013'),
('firmalestari68@mailbox.org','Firma Lestari Hutan Dharma','+6281958369'),
('firmaningsih92@runbox.com','Firma Ningsih Khas Harmoni','+62821672675'),
('firmanugroho48@hushmail.com','Firma Nugroho Sumber Gemilang','+6282913943'),
('firmanur61@hotmail.com','Firma Nur Murni Sejahtera','+6288187607'),
('firmanurhayati@runbox.com','Firma Nurhayati Segar Sentosa','+6284313260'),
('firmaprasetyo12@outlook.com','Firma Prasetyo Praktis Dharma','+628461063732'),
('firmaprasetyo72@yandex.cominbox.com','Firma Prasetyo Berkah Kencana','+628988180576'),
('firmaprasetyo97@riseup.net','Firma Prasetyo Pohon Maju','+628998213030'),
('firmapratama@gmx.com','Firma Pratama Favorit Intan','+6283272455'),
('firmapurnomo12@tutanota.com','Firma Purnomo Segar Karya','+62815819147'),
('firmapurnomo21@startmail.com','Firma Purnomo Bahagia Lestari','+62815269942'),
('firmapurnomo34@gmx.com','Firma Purnomo Prima Makmur','+6288385686'),
('firmapurnomo57@riseup.net','Firma Purnomo Sehat Sejahtera','+628998212655'),
('firmapurnomo@countermail.com','Firma Purnomo Terbaik Sentosa','+6284688154'),
('firmapurnomo@runbox.com','Firma Purnomo Makmur Wahana','+628986572387'),
('firmapuspitasari32@posteo.de','Firma Puspitasari Hutan Wijaya','+6288259033'),
('firmapuspitasari@hushmail.com','Firma Puspitasari Buah Mitra','+6281425341'),
('firmapuspitasari@mailbox.org','Firma Puspitasari Lingkungan Mitra','+628279014014'),
('firmaputri11@startmail.com','Firma Putri Toko Berkah','+6282332514'),
('firmaputri63@runbox.com','Firma Putri Praktis Jaya','+628856222310'),
('firmarahayu30@posteo.de','Firma Rahayu Asli Wira','+6282734601'),
('firmasantoso@mailbox.org','Firma Santoso Terbaik Harapan','+62893309967'),
('firmasantoso@runbox.com','Firma Santoso Bersih Makmur','+62839128755'),
('firmasantoso@startmail.com','Firma Santoso Air Utama','+628976695521'),
('firmasaputra@mailbox.org','Firma Saputra Berkah Makmur','+6284326356'),
('firmasaputri2@ctemplar.com','Firma Saputri Damai Mandiri','+62866419408'),
('firmasaputro48@mailbox.org','Firma Saputro Sejati Pertama','+628164536318'),
('firmasaputro@lavabit.com','Firma Saputro Makmur Bangun','+62899213823'),
('firmasaputro@mailbox.org','Firma Saputro Khas Inti','+6282645535'),
('firmasaputro@protonmail.com','Firma Saputro Segar Prakarsa','+628272538039'),
('firmasaputro@zoho.com','Firma Saputro Makmur Mitra','+62856323868'),
('firmasari@mailbox.org','Firma Sari Terbaik Dharma','+6282872896'),
('firmaseptiani@ctemplar.com','Firma Septiani Alam Karya','+62896772556'),
('firmaseptiani@mailbox.org','Firma Septiani Sejati Wijaya','+62896732825'),
('firmaseptiani@outlook.com','Firma Septiani Terbaik Kreatif','+6286867661'),
('firmasetiadi5@hushmail.com','Firma Setiadi Air Citra','+62878665509'),
('firmasetiadi65@mailbox.org','Firma Setiadi Lengkap Wahana','+62846114038'),
('firmasetiadi@startmail.com','Firma Setiadi Tradisional Lestari','+6284438331'),
('firmasetiawan38@fastmail.com','Firma Setiawan Ceria Agung','+628171030499'),
('firmasetiawan@ctemplar.com','Firma Setiawan Nusantara Maju','+628838012322'),
('firmasetiawati52@startmail.com','Firma Setiawati Sejati Mitra','+628673031104'),
('firmasetiawati@countermail.com','Firma Setiawati Murni Harapan','+628397684782'),
('firmasetiawati@mailbox.org','Firma Setiawati Bersih Mitra','+62829775313'),
('firmasetiawati@posteo.de','Firma Setiawati Terbaik Purnama','+62899505415'),
('firmasuharto86@mailbox.org','Firma Suharto Organik Mandiri','+6285782492'),
('firmasuharto@countermail.com','Firma Suharto Organik Nusantara','+6281283006'),
('firmasukardi69@gmail.com','Firma Sukardi Ramah Wijaya','+628668111606'),
('firmasulistyo@posteo.de','Firma Sulistyo Lezat Bangun','+62842446853'),
('firmasulistyo@runbox.com','Firma Sulistyo Bahagia Karya','+628947230740'),
('firmasulistyo@tutanota.com','Firma Sulistyo Ceria Sejahtera','+628411108769'),
('firmasulistyo@yahoo.com','Firma Sulistyo Pohon Megah','+6281383617'),
('firmasupriyanto72@keemail.me','Firma Supriyanto Murni Sentosa','+628650340938'),
('firmasuryadi@ctemplar.com','Firma Suryadi Sejati Sentosa','+62884548167'),
('firmasuryadi@startmail.com','Firma Suryadi Sumber Sukses','+628162247261'),
('firmasuryani@gmx.com','Firma Suryani Indah Utama','+6286733218'),
('firmasuryani@posteo.de','Firma Suryani Lengkap Utama','+6281983592'),
('firmasuryani@runbox.com','Firma Suryani Murni Mandiri','+6281742179'),
('firmasuryani@tutanota.com','Firma Suryani Gunung Mitra','+62837831921'),
('firmasuryanto@startmail.com','Firma Suryanto Sehat Lestari','+62865970692'),
('firmasusanti56@ctemplar.com','Firma Susanti Rasa Mega','+62847516299'),
('firmasusanti@mailbox.org','Firma Susanti Enak Mitra','+62833429603'),
('firmasusanto1@startmail.com','Firma Susanto Bumbu Karya','+6289720287'),
('firmasusanto76@mailbox.org','Firma Susanto Terbaik Citra','+6281498335'),
('firmasusanto7@posteo.de','Firma Susanto Favorit Maju','+628356572943'),
('firmasusanto@posteo.de','Firma Susanto Matahari Dharma','+62831862096'),
('firmasusilo40@posteo.de','Firma Susilo Mulia Jaya','+628283784457'),
('firmasusilo76@startmail.com','Firma Susilo Bersih Dharma','+62892363351'),
('firmasusilo9@runbox.com','Firma Susilo Nikmat Lestari','+6289934607'),
('firmautama@mailbox.org','Firma Utama Toko Harapan','+6283234134'),
('firmautami@startmail.com','Firma Utami Sehat Utama','+6281212136'),
('firmautami@tutanota.com','Firma Utami Bahagia Maju','+628599317572'),
('firmawahyudin60@gmail.com','Firma Wahyudin Lezat Berkat','+6288111684'),
('firmawahyudin@keemail.me','Firma Wahyudin Sejati Nusantara','+62833379036'),
('firmawahyuni81@runbox.com','Firma Wahyuni Waktu Karya','+62834265986'),
('firmawahyuni@startmail.com','Firma Wahyuni Sayur Jasa','+628122363613'),
('firmawibisono46@runbox.com','Firma Wibisono Nusantara Bakti','+6281481855'),
('firmawibisono83@posteo.de','Firma Wibisono Berkah Maju','+628314786411'),
('firmawibisono94@tutanota.com','Firma Wibisono Segar Bersama','+6283811613'),
('firmawibisono@countermail.com','Firma Wibisono Indonesia Maju','+628577540907'),
('firmawibowo@posteo.de','Firma Wibowo Hijau Mandiri','+6283304434'),
('firmawicaksono46@startmail.com','Firma Wicaksono Modern Mitra','+62879114154'),
('firmawicaksono8@hotmail.com','Firma Wicaksono Asli Mulia','+62822094118'),
('firmawidodo12@runbox.com','Firma Widodo Bergizi Pratama','+628698911219'),
('firmawidodo82@mailbox.org','Firma Widodo Favorit Cendekia','+62818804430'),
('firmawidodo@posteo.de','Firma Widodo Lezat Cendekia','+62815508030'),
('firmawijaya36@posteo.de','Firma Wijaya Khas Mandala','+628568379960'),
('firmawijaya43@yandex.cominbox.com','Firma Wijaya Sederhana Prima','+6286713341'),
('firmawulandari56@ctemplar.com','Firma Wulandari Mulia Maju','+628259061165'),
('firmawulandari59@posteo.de','Firma Wulandari Toko Kusuma','+628561807472'),
('firmawulandari@ctemplar.com','Firma Wulandari Pokok Prestasi','+6285924672'),
('firmawulandari@runbox.com','Firma Wulandari Harapan Nusantara','+62896243949'),
('firmawulandari@yahoo.com','Firma Wulandari Bahagia Maju','+628963090859'),
('firmayulianto59@ctemplar.com','Firma Yulianto Bahan Mitra','+6288252583'),
('firmayulianto@countermail.com','Firma Yulianto Bumi Utama','+628288870914'),
('firmayusuf90@posteo.de','Firma Yusuf Nusantara Mitra','+62856035279'),
('ptagung12@mailbox.org','PT Agung Waktu Harapan','+628779988189'),
('ptagung@ctemplar.com','PT Agung Ceria Surya','+62877143468'),
('ptagung@mail.com','PT Agung Pantai Maju','+628345460448'),
('ptagus60@runbox.com','PT Agus Harapan Maju','+6281768363'),
('ptagustina34@runbox.com','PT Agustina Bumi Jaya','+628253745380'),
('ptagustina57@mailbox.org','PT Agustina Organik Berkat','+6282219551'),
('ptbambang@runbox.com','PT Bambang Harapan Karya','+628672966521'),
('ptdewanto30@gmx.com','PT Dewanto Lautan Cipta','+6285517999'),
('ptdewi51@countermail.com','PT Dewi Favorit Surya','+628225881348'),
('ptdewi53@runbox.com','PT Dewi Segar Maju','+628552592387'),
('ptdewi6@runbox.com','PT Dewi Bumi Sentosa','+62867158640'),
('ptdewi75@mailbox.org','PT Dewi Alam Maju','+6284380859'),
('ptfitriani@mailbox.org','PT Fitriani Lautan Mitra','+62828343152'),
('ptgunawan@countermail.com','PT Gunawan Segar Sejahtera','+6287752539'),
('ptgunawan@zoho.com','PT Gunawan Sejati Utama','+62813573126'),
('pthadi98@posteo.de','PT Hadi Berkah Sentosa','+6281323813'),
('pthandayani41@runbox.com','PT Handayani Ramah Karya','+6281463508'),
('pthandayani@ctemplar.com','PT Handayani Pantai Nusantara','+6287960866'),
('pthasanah59@runbox.com','PT Hasanah Taman Pertama','+6284759397'),
('pthasanah@countermail.com','PT Hasanah Terbaik Sejahtera','+62868409759'),
('pthermawan68@protonmail.com','PT Hermawan Harian Karya','+628427360496'),
('pthidayat62@mailbox.org','PT Hidayat Matahari Mitra','+6282797689'),
('ptindrawan@outlook.com','PT Indrawan Waktu Jayakarta','+628922988302'),
('ptindrawan@posteo.de','PT Indrawan Ceria Jayakarta','+62823335240'),
('ptjaya45@runbox.com','PT Jaya Lezat Harapan','+62892224365'),
('ptjaya94@posteo.de','PT Jaya Pantai Konsultama','+6281726350'),
('ptkristanto91@ctemplar.com','PT Kristanto Terbaik Maju','+628288547319'),
('ptkristanto@mailbox.org','PT Kristanto Bersih Cendekia','+628931070548'),
('ptkurniawan46@posteo.de','PT Kurniawan Pohon Karya','+628180376381'),
('ptkurniawan@mail.com','PT Kurniawan Prima Citra','+62855955650'),
('ptkusumo28@startmail.com','PT Kusumo Bersih Utama','+628368293926'),
('ptkusumo50@posteo.de','PT Kusumo Tumbuhan Dian','+6284490685'),
('ptkusumo59@gmail.com','PT Kusumo Praktis Mitra','+62837889261'),
('ptkusumo62@runbox.com','PT Kusumo Enak Maju','+62822604552'),
('ptkusumo@countermail.com','PT Kusumo Nusantara Makmur','+628238264542'),
('ptkusumo@posteo.de','PT Kusumo Sungai Sakti','+62896368156'),
('ptlaila41@mailbox.org','PT Laila Ceria Karya','+62895657752'),
('ptlaila66@runbox.com','PT Laila Sejati Mega','+62841371452'),
('ptlaila@countermail.com','PT Laila Khas Maju','+628957633373'),
('ptlaila@keemail.me','PT Laila Matahari Wijaya','+62868824776'),
('ptmulya@keemail.me','PT Mulya Organik Maju','+628921671391'),
('ptmulya@runbox.com','PT Mulya Damai Mitra','+6284577015'),
('ptnugroho3@runbox.com','PT Nugroho Sehat Purnama','+6284536193'),
('ptnur45@posteo.de','PT Nur Nikmat Bhakti','+628771978919'),
('ptnur@keemail.me','PT Nur Buah Wijaya','+628559331759'),
('ptnurhayati14@startmail.com','PT Nurhayati Hutan Berkat','+628457133143'),
('ptnurhayati33@posteo.de','PT Nurhayati Lengkap Maju','+6281813823'),
('ptnurhayati41@startmail.com','PT Nurhayati Sungai Bhakti','+62826606491'),
('ptnurhayati59@posteo.de','PT Nurhayati Ramah Maju','+628698918591'),
('ptnurhayati@startmail.com','PT Nurhayati Damai Prakarsa','+62894986512'),
('ptpermadi29@ctemplar.com','PT Permadi Lestari Prestasi','+628965372395'),
('ptpermadi65@lavabit.com','PT Permadi Bahagia Maju','+6288386899'),
('ptprasetyo68@tutanota.com','PT Prasetyo Makanan Utama','+6281595560'),
('ptprasetyo@startmail.com','PT Prasetyo Nikmat Karya','+62831136416'),
('ptpurnomo@countermail.com','PT Purnomo Cerah Makmur','+62823917231'),
('ptpurnomo@hotmail.com','PT Purnomo Organik Global','+62882322800'),
('ptpurnomo@posteo.de','PT Purnomo Hijau Mitra','+62819245064'),
('ptpurnomo@startmail.com','PT Purnomo Tumbuh Nusa','+628989237918'),
('ptputra24@mailbox.org','PT Putra Sayur Agung','+62824414388'),
('ptputri10@posteo.de','PT Putri Harian Sejahtera','+62895265608'),
('ptputri29@runbox.com','PT Putri Makmur Sejahtera','+62892896019'),
('ptrahayu77@yandex.cominbox.com','PT Rahayu Prima Konsultama','+628971364962'),
('ptrahmawati15@fastmail.com','PT Rahmawati Pantai Wira','+6284246199'),
('ptrahmawati16@protonmail.com','PT Rahmawati Sejahtera Bangun','+6281573680'),
('ptrahmawati@countermail.com','PT Rahmawati Sederhana Mega','+628374691432'),
('ptsantoso60@runbox.com','PT Santoso Bergizi Lestari','+62881011600'),
('ptsantoso69@startmail.com','PT Santoso Asli Konsultan','+628265329767'),
('ptsaputra75@tutanota.com','PT Saputra Praktis Cipta','+62866797005'),
('ptsaputri16@posteo.de','PT Saputri Pokok Maju','+628953231486'),
('ptsaputro44@countermail.com','PT Saputro Sehat Dharma','+628934768722'),
('ptsaputro73@startmail.com','PT Saputro Bumbu Wijaya','+628793686602'),
('ptsaputro96@startmail.com','PT Saputro Lezat Konsultama','+6285873134'),
('ptsaputro98@riseup.net','PT Saputro Pulau Maju','+628143532967'),
('ptsaputro@outlook.com','PT Saputro Sehat Sakti','+6289684040'),
('ptsari4@runbox.com','PT Sari Harmoni Maju','+62816529539'),
('ptseptiani25@startmail.com','PT Septiani Ceria Berkat','+62855041372'),
('ptsetiadi51@startmail.com','PT Setiadi Alam Jasa','+62815409487'),
('ptsetiadi@startmail.com','PT Setiadi Nikmat Purnama','+628939664594'),
('ptsetiawan80@tutanota.com','PT Setiawan Bersih Sentosa','+628399592630'),
('ptsetiawan@riseup.net','PT Setiawan Prima Bersama','+628792064766'),
('ptsetiawati45@mailbox.org','PT Setiawati Harian Raya','+62812967713'),
('ptsetiawati@hotmail.com','PT Setiawati Sederhana Mitra','+62833017185'),
('ptsuharto56@yandex.cominbox.com','PT Suharto Gunung Bersinar','+6285666156'),
('ptsuharto@fastmail.com','PT Suharto Murni Karya','+62892215444'),
('ptsuharto@runbox.com','PT Suharto Pokok Kreatif','+6284659668'),
('ptsuharto@startmail.com','PT Suharto Bumi Bersama','+6281413264'),
('ptsukardi13@countermail.com','PT Sukardi Nusantara Mulia','+628395294469'),
('ptsukardi22@mailfence.com','PT Sukardi Gunung Gemilang','+628345916808'),
('ptsukardi2@mailbox.org','PT Sukardi Murni Kencana','+6289529372'),
('ptsukardi47@posteo.de','PT Sukardi Mulia Maju','+628314226202'),
('ptsukardi@mailbox.org','PT Sukardi Hutan Kencana','+628576564152'),
('ptsukardi@riseup.net','PT Sukardi Sumber Utama','+628698919960'),
('ptsulistyo33@startmail.com','PT Sulistyo Utama Anugerah','+628224622261'),
('ptsulistyo79@mailbox.org','PT Sulistyo Bahagia Energi','+628153239915'),
('ptsulistyo@mailbox.org','PT Sulistyo Utama Wijaya','+6282496564'),
('ptsupriyanto@tutanota.com','PT Supriyanto Pohon Sentosa','+6285963690'),
('ptsurya@startmail.com','PT Surya Berkah Bersama','+628687473124'),
('ptsuryadi41@riseup.net','PT Suryadi Tumbuhan Mitra','+628412518691'),
('ptsuryadi61@ctemplar.com','PT Suryadi Sejahtera Jaya','+6287738850'),
('ptsuryadi76@tutanota.com','PT Suryadi Ceria Mandiri','+62834818278'),
('ptsuryanto16@posteo.de','PT Suryanto Hijau Nusa','+628774576450'),
('ptsusanti78@runbox.com','PT Susanti Ceria Sukses','+628977097719'),
('ptsusanto39@mailbox.org','PT Susanto Sejahtera Karya','+6282714042'),
('ptsusilo42@gmx.com','PT Susilo Pulau Mulia','+6282529380'),
('ptsusilo47@tutanota.com','PT Susilo Tumbuh Utama','+62844425465'),
('ptutama@mailbox.org','PT Utama Sehat Sentosa','+628319096521'),
('ptwahyudin89@posteo.de','PT Wahyudin Buah Citra','+628228757695'),
('ptwahyudin@countermail.com','PT Wahyudin Hutan Kencana','+62836477144'),
('ptwahyudin@zoho.com','PT Wahyudin Lingkungan Anugerah','+6282569075'),
('ptwahyuni20@posteo.de','PT Wahyuni Organik Maju','+628843119432'),
('ptwibisono88@countermail.com','PT Wibisono Bersih Surya','+62878295962'),
('ptwibisono@gmx.com','PT Wibisono Bersih Agung','+62895747941'),
('ptwibisono@runbox.com','PT Wibisono Ceria Energi','+628335317044'),
('ptwibowo59@posteo.de','PT Wibowo Harapan Sinar','+6289309270'),
('ptwibowo71@runbox.com','PT Wibowo Enak Bersinar','+628210180061'),
('ptwibowo@ctemplar.com','PT Wibowo Sehat Jasatama','+628390858428'),
('ptwicaksono76@countermail.com','PT Wicaksono Terpilih Sentosa','+628998215700'),
('ptwicaksono@tutanota.com','PT Wicaksono Enak Maju','+6284884198'),
('ptwidodo@keemail.me','PT Widodo Ceria Nusa','+62882101521'),
('ptwidodo@runbox.com','PT Widodo Pantai Wira','+628363991359'),
('ptwidodo@startmail.com','PT Widodo Taman Harmoni','+6288202014'),
('ptwijaya40@runbox.com','PT Wijaya Murni Maju','+628258881042'),
('ptwijaya@posteo.de','PT Wijaya Pulau Sejahtera','+6284380784'),
('ptwulandari@ctemplar.com','PT Wulandari Lestari Nusantara','+628666690015'),
('ptyanto67@yahoo.com','PT Yanto Ceria Harapan','+6283255792'),
('ptyanto@posteo.de','PT Yanto Sehat Bangun','+62865236906'),
('ptyulianto@tutanota.com','PT Yulianto Sejahtera Inti','+628286187019'),
('ptyusuf3@posteo.de','PT Yusuf Sejati Pertama','+62828816856'),
('udagung91@countermail.com','UD Agung Segar Pratama','+628159126321'),
('udagung@countermail.com','UD Agung Praktis Dharma','+62896282576'),
('udagus18@posteo.de','UD Agus Bergizi Megah','+6284886601'),
('udagus33@countermail.com','UD Agus Utama Gemilang','+628963781002'),
('udagus67@yahoo.com','UD Agus Pohon Surya','+6283476873'),
('udagustina@mailbox.org','UD Agustina Sehat Konsultan','+62897832883'),
('udbambang67@mailbox.org','UD Bambang Enak Bhakti','+628228125104'),
('udbudi66@posteo.de','UD Budi Sejahtera Jaya','+6284357590'),
('udbudi@posteo.de','UD Budi Pokok Utama','+6282797792'),
('uddewanto@startmail.com','UD Dewanto Utama Mitra','+628952675196'),
('uddewi36@ctemplar.com','UD Dewi Hijau Maju','+6283381006'),
('uddewi86@mailbox.org','UD Dewi Lezat Lestari','+6289898680'),
('uddewi@mail.com','UD Dewi Pokok Sentosa','+62846823400'),
('udfitriani44@ctemplar.com','UD Fitriani Pokok Surya','+6282429702'),
('udfitriani77@posteo.de','UD Fitriani Utama Bangun','+62885394478'),
('udhadi@ctemplar.com','UD Hadi Sejahtera Murni','+62823417738'),
('udhadi@icloud.com','UD Hadi Enak Surya','+628243342595'),
('udhadi@runbox.com','UD Hadi Tumbuhan Bakti','+6289619031'),
('udhadi@tutanota.com','UD Hadi Damai Jaya','+6286538474'),
('udhandayani@countermail.com','UD Handayani Pulau Cipta','+628985806613'),
('udhandayani@runbox.com','UD Handayani Harmoni Jasa','+6286634901'),
('udhandayani@tutanota.com','UD Handayani Asli Sejahtera','+62837738788'),
('udhasanah47@mailbox.org','UD Hasanah Berkah Mitra','+62818212821'),
('udhasanah75@runbox.com','UD Hasanah Prima Sejahtera','+628136475150'),
('udhermawan21@outlook.com','UD Hermawan Favorit Sakti','+628328619143'),
('udhermawan24@countermail.com','UD Hermawan Utama Sejahtera','+628479777365'),
('udhermawan38@mailbox.org','UD Hermawan Nikmat Mega','+6287848954'),
('udhermawan41@mailbox.org','UD Hermawan Toko Harapan','+62826702181'),
('udhermawan@tutanota.com','UD Hermawan Khas Mandala','+6286536249'),
('udhidayat28@runbox.com','UD Hidayat Pilihan Sakti','+6289740517'),
('udhidayat77@mailbox.org','UD Hidayat Khas Maju','+62822184972'),
('udhidayat@lavabit.com','UD Hidayat Berkah Harmoni','+628837317988'),
('udindah@countermail.com','UD Indah Mulia Abadi','+628784208068'),
('udindrawan30@mailbox.org','UD Indrawan Utama Sentosa','+628653418672'),
('udindrawan@tutanota.com','UD Indrawan Hutan Sentosa','+62832585052'),
('udjaya17@ctemplar.com','UD Jaya Sungai Berkah','+62835968606'),
('udjaya36@gmail.com','UD Jaya Terpilih Jasa','+6281764650'),
('udjaya@outlook.com','UD Jaya Nusantara Nusa','+628998212970'),
('udkristanto14@countermail.com','UD Kristanto Nikmat Konsultan','+628698913079'),
('udkristanto@runbox.com','UD Kristanto Sederhana Bersama','+6281382329'),
('udkurniawan18@yandex.cominbox.com','UD Kurniawan Segar Harapan','+6282659207'),
('udkusuma76@mailbox.org','UD Kusuma Hijau Nusantara','+6281587652'),
('udkusumawati15@icloud.com','UD Kusumawati Sejahtera Mega','+628485905570'),
('udkusumawati24@tutanota.com','UD Kusumawati Praktis Maju','+628834529102'),
('udkusumawati34@runbox.com','UD Kusumawati Berkah Berkah','+62865095357'),
('udkusumawati71@scryptmail.com','UD Kusumawati Khas Mitra','+628926296797'),
('udkusumawati@mailbox.org','UD Kusumawati Toko Prima','+62843211902'),
('udkusumo69@ctemplar.com','UD Kusumo Praktis Prima','+62837644038'),
('udkusumo99@ctemplar.com','UD Kusumo Tradisional Mitra','+62812100619'),
('udlestari13@posteo.de','UD Lestari Hutan Sentosa','+62812155633'),
('udlestari82@mailbox.org','UD Lestari Berkah Sukses','+62899065380'),
('udmulya1@mailbox.org','UD Mulya Pulau Utama','+628280192320'),
('udmulya39@startmail.com','UD Mulya Sejahtera Karya','+628470955223'),
('udmulya@hushmail.com','UD Mulya Mulia Mega','+62857223383'),
('udmulya@mail.com','UD Mulya Harmoni Sentosa','+628252326011'),
('udnur83@runbox.com','UD Nur Sejahtera Sentosa','+628590304737'),
('udnur@startmail.com','UD Nur Bahan Jasa','+6281756296'),
('udpermadi89@yandex.cominbox.com','UD Permadi Asli Mitra','+62885012339'),
('udpermadi@posteo.de','UD Permadi Mulia Jayakarta','+628698911102'),
('udprasetyo80@runbox.com','UD Prasetyo Sayur Tata','+6288106773'),
('udpratama37@gmail.com','UD Pratama Bahan Sejahtera','+62858119278'),
('udpurnomo98@runbox.com','UD Purnomo Makanan Mitra','+628573597767'),
('udpurnomo@icloud.com','UD Purnomo Sejahtera Wijaya','+628496199560'),
('udpurnomo@mailfence.com','UD Purnomo Alami Jasatama','+62814333555'),
('udpurnomo@posteo.de','UD Purnomo Toko Bhakti','+6289967968'),
('udpurnomo@runbox.com','UD Purnomo Damai Utama','+6281302539'),
('udpuspitasari39@runbox.com','UD Puspitasari Khas Kencana','+6282489570'),
('udputra63@ctemplar.com','UD Putra Enak Sukses','+6286898332'),
('udputri76@mailbox.org','UD Putri Harapan Cendekia','+6281751160'),
('udputri@posteo.de','UD Putri Makanan Jasa','+62883303498'),
('udrahayu@runbox.com','UD Rahayu Buah Nusantara','+62829661307'),
('udsantoso13@icloud.com','UD Santoso Bahan Konsultan','+6285828191'),
('udsantoso97@hotmail.com','UD Santoso Makanan Megah','+62842377022'),
('udsantoso9@countermail.com','UD Santoso Hijau Lestari','+628959951053'),
('udsaputra46@icloud.com','UD Saputra Tradisional Bhakti','+6284345011'),
('udsaputra93@mailbox.org','UD Saputra Praktis Bersama','+628599293762'),
('udsaputri74@startmail.com','UD Saputri Sejahtera Utama','+6287735614'),
('udsaputri@countermail.com','UD Saputri Favorit Karya','+628156577341'),
('udsaputro53@tutanota.com','UD Saputro Khas Megah','+6285968457'),
('udsaputro85@runbox.com','UD Saputro Alami Nusa','+6288267904'),
('udsaputro@countermail.com','UD Saputro Ramah Bhakti','+62829756056'),
('udsaputro@mailbox.org','UD Saputro Lingkungan Mega','+62824055566'),
('udsaputro@runbox.com','UD Saputro Sejati Harmoni','+62838340019'),
('udsaputro@startmail.com','UD Saputro Terpilih Cendekia','+62897081940'),
('udsari@mail.com','UD Sari Asli Makmur','+6284972184'),
('udsari@startmail.com','UD Sari Ramah Bersama','+628663521260'),
('udseptiani28@startmail.com','UD Septiani Waktu Mandiri','+62898234019'),
('udseptiani@countermail.com','UD Septiani Segar Konsultan','+62896065726'),
('udseptiani@startmail.com','UD Septiani Matahari Jaya','+62826659187'),
('udsetiadi84@yahoo.com','UD Setiadi Lezat Dharma','+6282911686'),
('udsetiawan@countermail.com','UD Setiawan Segar Utama','+62823454896'),
('udsetiawan@mailbox.org','UD Setiawan Matahari Jaya','+62885300302'),
('udsetiawati80@icloud.com','UD Setiawati Pohon Sentosa','+628978499860'),
('udsukardi41@posteo.de','UD Sukardi Praktis Maju','+62822317925'),
('udsukardi@runbox.com','UD Sukardi Makmur Intan','+6284717145'),
('udsupriyanto@tutanota.com','UD Supriyanto Tumbuhan Nusa','+6289466405'),
('udsurya@runbox.com','UD Surya Waktu Surya','+6285514682'),
('udsuryadi39@keemail.me','UD Suryadi Sejahtera Sejahtera','+62897719688'),
('udsuryadi46@startmail.com','UD Suryadi Sejahtera Kencana','+62841446113'),
('udsuryadi64@startmail.com','UD Suryadi Gunung Mandala','+62848766096'),
('udsuryanto@startmail.com','UD Suryanto Asli Citra','+6281464875'),
('udsusanti@icloud.com','UD Susanti Terbaik Makmur','+62844225584'),
('udsusanto32@startmail.com','UD Susanto Terpilih Harapan','+628995759856'),
('udsusilo57@countermail.com','UD Susilo Harapan Bhakti','+628496778613'),
('udsusilo70@mailbox.org','UD Susilo Tradisional Megah','+628343148271'),
('udsusilo@ctemplar.com','UD Susilo Toko Mitra','+62897393444'),
('udsusilo@mailbox.org','UD Susilo Lestari Maju','+628247208244'),
('udsusilo@yahoo.com','UD Susilo Ramah Maju','+62881881334'),
('udutama@countermail.com','UD Utama Nikmat Kreatif','+628984226949'),
('udutama@ctemplar.com','UD Utama Murni Mega','+6289660953'),
('udutama@riseup.net','UD Utama Utama Utama','+6283980158'),
('udwahyudin83@outlook.com','UD Wahyudin Terbaik Cendekia','+628822703185'),
('udwahyudin@fastmail.com','UD Wahyudin Damai Maju','+628135844985'),
('udwahyudin@lavabit.com','UD Wahyudin Harapan Jasatama','+628799992543'),
('udwahyuni90@posteo.de','UD Wahyuni Praktis Dharma','+628967610806'),
('udwahyuni@runbox.com','UD Wahyuni Favorit Tata','+62845861924'),
('udwibowo18@lavabit.com','UD Wibowo Alam Utama','+6286731757'),
('udwibowo@outlook.com','UD Wibowo Bahan Maju','+62814921609'),
('udwibowo@posteo.de','UD Wibowo Cerah Harapan','+6283790246'),
('udwicaksono61@runbox.com','UD Wicaksono Sejati Utama','+628664350220'),
('udwicaksono@runbox.com','UD Wicaksono Terbaik Angkasa','+628149575107'),
('udwidodo82@runbox.com','UD Widodo Air Prima','+6289366384'),
('udwidodo@countermail.com','UD Widodo Waktu Pertama','+6281419746'),
('udwijaya@startmail.com','UD Wijaya Sejati Tata','+628261994348'),
('udwulandari@gmx.com','UD Wulandari Damai Cipta','+6281916947'),
('udyulianto66@ctemplar.com','UD Yulianto Lengkap Nusantara','+628159588031'),
('udyulianto@outlook.com','UD Yulianto Praktis Berkah','+62848778355'),
('udyusuf@posteo.de','UD Yusuf Asli Sejahtera','+62855255773');
/*!40000 ALTER TABLE `penyediabahan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPenyediaBahan_BeforeInsert BEFORE INSERT ON PenyediaBahan
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPenyediaBahan_BeforeUpdate BEFORE UPDATE ON PenyediaBahan
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ratingmenu`
--

DROP TABLE IF EXISTS `ratingmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingmenu` (
  `idDetailTransaksi` varchar(36) NOT NULL,
  `idFeedback` varchar(36) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 0 and `rating` <= 5),
  PRIMARY KEY (`idDetailTransaksi`,`idFeedback`),
  KEY `idFeedback` (`idFeedback`),
  CONSTRAINT `ratingmenu_ibfk_1` FOREIGN KEY (`idDetailTransaksi`) REFERENCES `detailtransaksi` (`idDetailTransaksi`) ON DELETE CASCADE,
  CONSTRAINT `ratingmenu_ibfk_2` FOREIGN KEY (`idFeedback`) REFERENCES `feedback` (`idFeedback`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingmenu`
--

LOCK TABLES `ratingmenu` WRITE;
/*!40000 ALTER TABLE `ratingmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingmenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckRatingMenu_BeforeInsert_2 BEFORE INSERT ON RatingMenu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_rating_menu AFTER INSERT ON RatingMenu
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(5,2);

    
    SELECT AVG(rating) INTO avg_rating
    FROM RatingMenu
    WHERE idDetailTransaksi IN (
        SELECT idDetailTransaksi
        FROM DetailTransaksi
        WHERE idMenu = (
            SELECT idMenu
            FROM DetailTransaksi
            WHERE idDetailTransaksi = NEW.idDetailTransaksi
        )
    );

    
    UPDATE Menu
    SET rating = avg_rating
    WHERE idMenu = (
        SELECT idMenu
        FROM DetailTransaksi
        WHERE idDetailTransaksi = NEW.idDetailTransaksi
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckRatingMenu_BeforeUpdate_2 BEFORE UPDATE ON RatingMenu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `nomorTransaksi` varchar(36) NOT NULL DEFAULT uuid(),
  `metodePembayaran` enum('Tunai','Kartu Kredit','QRIS','Debit') NOT NULL,
  `totalHarga` int(11) NOT NULL CHECK (`totalHarga` >= 0),
  `tanggalTransaksi` datetime DEFAULT current_timestamp(),
  `emailPengunjung` varchar(255) NOT NULL,
  `NIKPegawai` varchar(255) NOT NULL,
  PRIMARY KEY (`nomorTransaksi`),
  KEY `emailPengunjung` (`emailPengunjung`),
  KEY `NIKPegawai` (`NIKPegawai`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`emailPengunjung`) REFERENCES `pengunjung` (`email`) ON DELETE CASCADE,
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`NIKPegawai`) REFERENCES `pegawai` (`NIKPegawai`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckTotalHarga BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    DECLARE v_total INT;
    SELECT SUM(Menu.harga * DetailTransaksi.kuantitas)
    INTO v_total
    FROM DetailTransaksi
    JOIN Menu ON DetailTransaksi.idMenu = Menu.idMenu
    WHERE DetailTransaksi.nomorTransaksi = NEW.nomorTransaksi;
    
    IF NEW.totalHarga != v_total THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total harga does not match the sum of DetailTransaksi';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckTransaksi_BeforeInsert BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.totalHarga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.metodePembayaran NOT IN ('Tunai', 'Kartu Kredit', 'QRIS', 'Debit') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Metode Pembayaran harus Tunai, Kartu Kredit, QRIS, atau Debit';
    END IF;
    IF NEW.emailPengunjung IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email Pengunjung tidak boleh NULL';
    END IF;
    IF NEW.NIKPegawai IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai tidak boleh NULL';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckPaymentMethodBeforeInsert BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    
    IF (NEW.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CheckTransaksi_BeforeUpdate BEFORE UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.totalHarga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.metodePembayaran NOT IN ('Tunai', 'Kartu Kredit', 'QRIS', 'Debit') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Metode Pembayaran harus Tunai, Kartu Kredit, QRIS, atau Debit';
    END IF;
    IF NEW.emailPengunjung IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email Pengunjung tidak boleh NULL';
    END IF;
    IF NEW.NIKPegawai IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai tidak boleh NULL';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PreventInvalidUpdateTransaksiBeforeUpdate
BEFORE UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.tanggalTransaksi < OLD.tanggalTransaksi THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal transaksi.';
    END IF;
    IF NEW.tanggalTransaksi >= OLD.tanggalTransaksi THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal transaksi.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 11:18:46
