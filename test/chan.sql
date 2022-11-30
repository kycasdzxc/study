--------------------------------------------------------
--  ÆÄÀÏÀÌ »ý¼ºµÊ - Åä¿äÀÏ-7¿ù-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1281 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_REPLY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CHAT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CHAT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBL_ATTACH
--------------------------------------------------------

  CREATE TABLE "TBL_ATTACH" 
   (	"UUID" VARCHAR2(50 BYTE), 
	"ORIGIN" VARCHAR2(500 BYTE), 
	"PATH" CHAR(10 BYTE), 
	"IMAGE" CHAR(1 BYTE) DEFAULT '0', 
	"ORD" NUMBER DEFAULT 1, 
	"ID" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "TBL_BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" CLOB, 
	"HITCOUNT" NUMBER DEFAULT 0, 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"WRITER" VARCHAR2(100 BYTE), 
	"CATEGORY" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TBL_CHAT
--------------------------------------------------------

  CREATE TABLE "TBL_CHAT" 
   (	"CNO" NUMBER, 
	"SENDER" VARCHAR2(100 BYTE), 
	"RECEIVER" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"S_DATE" DATE DEFAULT SYSDATE, 
	"R_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_MEMBER
--------------------------------------------------------

  CREATE TABLE "TBL_MEMBER" 
   (	"ID" VARCHAR2(100 BYTE), 
	"PW" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"SI" VARCHAR2(100 BYTE), 
	"SGG" VARCHAR2(100 BYTE), 
	"EMD" VARCHAR2(100 BYTE), 
	"ROADADDR" VARCHAR2(500 BYTE), 
	"ADDRDETAIL" VARCHAR2(20 BYTE), 
	"ZIPNO" VARCHAR2(10 BYTE), 
	"ROADFULLADDR" VARCHAR2(500 BYTE), 
	"JIBUNADDR" VARCHAR2(500 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"AUTH" CHAR(1 BYTE) DEFAULT 0, 
	"AUTH_TOKEN" VARCHAR2(100 BYTE), 
	"SPEAK" VARCHAR2(500 BYTE) DEFAULT '¸¸³ª¼­ ¹Ý°¡¿ö¿ä!'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_REPLY
--------------------------------------------------------

  CREATE TABLE "TBL_REPLY" 
   (	"RNO" NUMBER, 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"BNO" NUMBER, 
	"WRITER" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TBL_ATTACH
SET DEFINE OFF;
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('b9f8f96e-ae97-48af-a275-0a5128c969a6.png','bing.png','2022/04/14','1',1,'bing');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('31a4ca7b-0bcb-4e16-b41e-2057e398fb86.png','cham.png','2022/04/14','1',1,'cham');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('8953123c-4856-49c0-ba04-784daf7b6dd8.png','dragon.png','2022/04/14','1',1,'dragon');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('a7f584a3-afbf-4f38-b067-03586115b94d.png','dream.png','2022/04/14','1',1,'dream');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('7a6a6725-6616-4af0-b439-63028e9e8a19.png','goni.png','2022/04/14','1',1,'goni');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('5ca824bb-eb5f-4d6a-b01a-3f1994a51073.png','ham.png','2022/04/14','1',1,'ham');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('e4c0e698-f5bd-42f0-999a-476534ea5b5f.png','horang.png','2022/04/14','1',1,'horang');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('ca2576f1-28f9-4f93-9fa6-d50b952cb1e6.JPG','aaaa.JPG','2022/04/18','1',1,'woon');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('28186622-e955-4493-bb97-13470d7a1319.png','jack.png','2022/04/14','1',1,'jack');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('a67a1e63-0f63-4f2e-8b82-dc649ee7ab22.png','apple.png','2022/04/14','1',1,'apple');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('ab5bcf6f-a019-4153-94be-b0f581062fb3.png','john.png','2022/04/14','1',1,'john');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('438aadcd-e7a4-471f-acfb-2098b86a53ba.png','jorz.png','2022/04/14','1',1,'jorz');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('3f268db9-e93d-4a40-8e86-ca9a31cb7727.png','king.png','2022/04/14','1',1,'king');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('8daad504-e565-41c0-9163-6c4af3041a8d.png','mami.png','2022/04/14','1',1,'mami');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('d49d48bd-5e5b-4a2a-bef4-8986e0a1f4bc.png','mari.png','2022/04/14','1',1,'mari');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('0392a4de-8ab9-4f5b-981d-e3bc3a7338f1.png','michel.png','2022/04/14','1',1,'michel');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('815c40e1-18db-47a8-b891-3f1a0729a657.png','mong.png','2022/04/14','1',1,'mong');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('9aa50331-656f-4cb7-8eab-23d865e60f0a.png','peter.png','2022/04/14','1',1,'peter');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('5465e8ef-4b06-4233-9fe3-25856e46ca30.png','sion.png','2022/04/14','1',1,'sion');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('51db52fa-fc86-41fb-af99-76a13c7edef9.png','tako.png','2022/04/14','1',1,'tako');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('e0228200-e5de-46c8-80ed-48949c0169f3.png','tank.png','2022/04/14','1',1,'tank');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('d5d56cd2-3ea5-4fd3-b370-e02e287919c9.jpg','8364558785s.jpg','2022/04/19','1',1,'bibibik');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('1dfd5989-5707-47a8-97bc-ef21be6561b5.jpg','dullin.jpg','2022/04/15','1',1,'dullin');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('73ad4b3d-fd25-4590-a450-e0f2e2d896aa.png','0AAC639E-7A90-474D-933B-025D9206667A.png','2022/04/18','1',1,'mylove');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('f8be5781-6273-4949-856c-8e9e04aa2005.png','¤©¤·¿¹»Ý.png','2022/04/19','1',1,'oovfree');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('c1f212e5-ff0a-4cc4-b516-6d2552879115.jpg','dullin.jpg','2022/04/16','1',1,'newdul');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('243f1fec-630d-4545-beba-5596bd9b5c59.png','bibibik.png','2022/04/19','1',1,'bibibik1697');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('0b8726c1-2fbc-4c01-bf61-d21fc36f0510.png','boy.png','2022/04/14','1',1,'chan');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('0d65d2b9-b76e-480d-a045-2bd1a8cb9deb.png','Nook.png','2022/04/17','1',1,'nook');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('4aa38c97-ab1a-4de2-b9a4-0bffb474cc49.png','char4.png','2022/04/19','1',1,'inadang');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('7f2882ee-bf9a-41d8-9e57-c8e850b7bf1f.jpg','14297E35500430621A.jpg','2022/04/19','1',1,'woong');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('661f6195-ba11-4332-9982-b6a5633fc5d9.png','Á¦¸ñ ¾øÀ½.png','2022/04/19','1',1,'javaboy');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('db3b84fc-f661-46cb-870e-5050656b048b.png','noimage.png','2022/04/20','1',1,'hihi');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('fde4599d-9d60-4dc9-8fa3-4d3a8b8eabcb.png','adfaf.png','2022/04/20','1',1,'kingfish');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('c5c888cb-2988-49a2-94c1-92e4a513546b.png','79a948ca-8762-44a6-b54b-b331b7aff794.png','2022/04/21','1',1,'test');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('982b9521-30c7-424d-8fdd-0b95d0fc51aa.jpg','meaning-of-Jesus-resurrection.jpg','2022/04/21','1',1,'jesus');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('60c8d197-842a-4f84-80ff-0c2198548ce0.jpeg','320CA43F-2D78-4542-B7A1-9A9A7B10B829.jpeg','2022/04/21','1',1,'9626wndud');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('a72974af-ca4b-4764-8cf2-77f41ca879af.webp','l_2021091902000980800207612.webp','2022/05/05','0',1,null);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('32fea861-7ea5-49bc-8f12-aea338165c07.jpg','5bb32285000ed2738de6.jpg','2022/05/05','1',1,'javaman');
REM INSERTING into TBL_BOARD
SET DEFINE OFF;
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (252,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'¸¶¸®',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (253,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'ºù¼ö',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (254,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'°ïÀß·¹½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (255,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'Á¶¸£Áã',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (256,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'Á¸',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (257,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'ÇÜ±î½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (258,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'ÅÊÅ©',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (259,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'¾ÖÇÃ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (260,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'Å¹È£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (261,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'½Ã¿Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (262,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'¿ø½Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (263,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'¿ë³²ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (264,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',0,to_date('22/04/17','RR/MM/DD'),'¹ÌÃ¿',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (265,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',2,to_date('22/04/17','RR/MM/DD'),'µå¸®¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (266,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'Àè½¼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (267,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'ÇÇÅÍ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (268,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'Å·',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (269,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',1,to_date('22/04/17','RR/MM/DD'),'Âüµ¹ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (270,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'È£·©ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (271,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'¸¶¸®',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (272,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'ºù¼ö',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (273,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'°ïÀß·¹½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (274,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'Á¶¸£Áã',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (275,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'Á¸',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (276,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'ÇÜ±î½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (277,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'ÅÊÅ©',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (278,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'¾ÖÇÃ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (279,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'Å¹È£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (280,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'½Ã¿Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (281,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',1,to_date('22/04/17','RR/MM/DD'),'¿ø½Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (282,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'¿ë³²ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (283,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'¸¶¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (284,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'¸¶¸®',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (285,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'ºù¼ö',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (286,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'°ïÀß·¹½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (287,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'Á¶¸£Áã',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (288,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'Á¸',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (289,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'ÇÜ±î½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (290,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'ÅÊÅ©',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (291,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',1,to_date('22/04/17','RR/MM/DD'),'¾ÖÇÃ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (292,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',3,to_date('22/04/17','RR/MM/DD'),'Å¹È£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (293,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',3,to_date('22/04/17','RR/MM/DD'),'½Ã¿Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (294,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',5,to_date('22/04/17','RR/MM/DD'),'¿ø½Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (295,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',1,to_date('22/04/17','RR/MM/DD'),'¿ë³²ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (296,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',6,to_date('22/04/17','RR/MM/DD'),'¹ÌÃ¿',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (297,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',3,to_date('22/04/17','RR/MM/DD'),'µå¸®¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (298,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'Àè½¼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (299,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',4,to_date('22/04/17','RR/MM/DD'),'ÇÇÅÍ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (300,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',5,to_date('22/04/17','RR/MM/DD'),'Å·',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (226,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'Å¹È£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (203,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',0,to_date('22/04/17','RR/MM/DD'),'µå¸®¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (204,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'ºù¼ö',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (205,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'ÇÇÅÍ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (206,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'Å·',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (207,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'Âüµ¹ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (208,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'È£·©ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (209,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'¸¶¸®',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (210,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'°ïÀß·¹½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (211,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'¹ÌÃ¿',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (212,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'Á¶¸£Áã',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (213,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'Á¸',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (214,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'ÇÜ±î½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (215,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'ÅÊÅ©',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (216,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',1,to_date('22/04/17','RR/MM/DD'),'¾ÖÇÃ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (217,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'Å¹È£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (218,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'½Ã¿Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (219,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'¿ø½Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (220,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'Àè½¼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (221,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'¸¶¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (224,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',0,to_date('22/04/17','RR/MM/DD'),'¿ø½Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (223,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'¿ë³²ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (225,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'½Ã¿Â',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (227,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'¾ÖÇÃ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (228,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'ÅÊÅ©',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (229,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'ÇÜ±î½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (230,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'Á¸',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (231,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'Á¶¸£Áã',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (232,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'°ïÀß·¹½º',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (233,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'Àè½¼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (234,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'¸¶¸®',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (235,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'È£·©ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (236,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'Âüµ¹ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (237,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'Å·',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (238,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'ÇÇÅÍ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (239,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'ºù¼ö',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (240,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'µå¸®¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (241,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'¹ÌÃ¿',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (242,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',0,to_date('22/04/17','RR/MM/DD'),'¸¶¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (243,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',0,to_date('22/04/17','RR/MM/DD'),'¿ë³²ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (244,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',0,to_date('22/04/17','RR/MM/DD'),'¸¶¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (245,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',0,to_date('22/04/17','RR/MM/DD'),'¹ÌÃ¿',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (246,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',0,to_date('22/04/17','RR/MM/DD'),'µå¸®¹Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (247,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',0,to_date('22/04/17','RR/MM/DD'),'Àè½¼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (248,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',0,to_date('22/04/17','RR/MM/DD'),'ÇÇÅÍ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (249,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',0,to_date('22/04/17','RR/MM/DD'),'Å·',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (250,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',0,to_date('22/04/17','RR/MM/DD'),'Âüµ¹ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (251,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',0,to_date('22/04/17','RR/MM/DD'),'È£·©ÀÌ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (189,'´ú¸°ÀÌ ¿Ô´Ù°©´Ï´Ù~',13,to_date('22/04/15','RR/MM/DD'),'´ú¸°ÀÌ´Ù',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (900,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (901,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (902,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (903,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (904,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (905,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (906,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (907,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (908,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (909,'¼ú·¡Àâ±â ´ëÈ¸´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (910,'º°¶Ëº°ÀÌ ¸¹ÀÌ ¶³¾îÁö´Â ³¯ÀÌ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (911,'ÃÊ·Õ¾Æ±Í¸¦ µÎ ¹è¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (912,'»õ·Î¿î ÁÖ¹ÎÀÌ ÀÌ»ç¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (913,'¹Ú¹°°ü¿¡¼­ ÀüÇÒ ¸»ÀÌ ÀÖ´Ù°í ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (914,'ÀÌº¥Æ® °¡±¸ Ä«Å»·Î±× ¸ñ·ÏÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (915,'Ä¿¸ó¼¶¿¡.. KKK°¡ ¿Â´Ù°í ÇÑ´Ù±¸¸®!!!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (916,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (917,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (918,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (919,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (920,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (921,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (922,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (923,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (924,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (925,'¼ú·¡Àâ±â ´ëÈ¸´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (926,'º°¶Ëº°ÀÌ ¸¹ÀÌ ¶³¾îÁö´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (927,'ÃÊ·Õ¾Æ±Í¸¦ µÎ ¹è¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (928,'»õ·Î¿î ÁÖ¹ÎÀÌ ÀÌ»ç¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (929,'¹Ú¹°°ü¿¡¼­ ÀüÇÒ ¸»ÀÌ ÀÖ´Ù°í ÇÑ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (930,'ÀÌº¥Æ® °¡±¸ Ä«Å»·Î±× ¸ñ·ÏÀÌ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (931,'Ä¿¸ó¼¶¿¡.. KKK°¡ ¿Â´Ù°í ÇÑ´Ù±¸¸®!!!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (932,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (933,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (934,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (935,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (936,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (937,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (938,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (939,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (940,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (941,'¼ú·¡Àâ±â ´ëÈ¸´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (942,'º°¶Ëº°ÀÌ ¸¹ÀÌ ¶³¾îÁö´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (943,'ÃÊ·Õ¾Æ±Í¸¦ µÎ ¹è¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (944,'»õ·Î¿î ÁÖ¹ÎÀÌ ÀÌ»ç¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (945,'¹Ú¹°°ü¿¡¼­ ÀüÇÒ ¸»ÀÌ ÀÖ´Ù°í ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (946,'ÀÌº¥Æ® °¡±¸ Ä«Å»·Î±× ¸ñ·ÏÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (947,'Ä¿¸ó¼¶¿¡.. KKK°¡ ¿Â´Ù°í ÇÑ´Ù±¸¸®!!!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (948,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (949,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (950,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (951,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (952,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (953,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (954,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (955,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (956,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (957,'¼ú·¡Àâ±â ´ëÈ¸´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (958,'º°¶Ëº°ÀÌ ¸¹ÀÌ ¶³¾îÁö´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (959,'ÃÊ·Õ¾Æ±Í¸¦ µÎ ¹è¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (960,'»õ·Î¿î ÁÖ¹ÎÀÌ ÀÌ»ç¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (961,'¹Ú¹°°ü¿¡¼­ ÀüÇÒ ¸»ÀÌ ÀÖ´Ù°í ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (962,'ÀÌº¥Æ® °¡±¸ Ä«Å»·Î±× ¸ñ·ÏÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (963,'Ä¿¸ó¼¶¿¡.. KKK°¡ ¿Â´Ù°í ÇÑ´Ù±¸¸®!!!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (964,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (965,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (966,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (967,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (968,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (969,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (970,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (971,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (972,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (973,'¼ú·¡Àâ±â ´ëÈ¸´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (974,'º°¶Ëº°ÀÌ ¸¹ÀÌ ¶³¾îÁö´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (975,'ÃÊ·Õ¾Æ±Í¸¦ µÎ ¹è¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (976,'»õ·Î¿î ÁÖ¹ÎÀÌ ÀÌ»ç¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (977,'¹Ú¹°°ü¿¡¼­ ÀüÇÒ ¸»ÀÌ ÀÖ´Ù°í ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (978,'ÀÌº¥Æ® °¡±¸ Ä«Å»·Î±× ¸ñ·ÏÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (979,'Ä¿¸ó¼¶¿¡.. KKK°¡ ¿Â´Ù°í ÇÑ´Ù±¸¸®!!!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (980,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (981,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (982,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (983,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (984,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (985,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (986,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (987,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (988,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (989,'¼ú·¡Àâ±â ´ëÈ¸´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (990,'º°¶Ëº°ÀÌ ¸¹ÀÌ ¶³¾îÁö´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (991,'ÃÊ·Õ¾Æ±Í¸¦ µÎ ¹è¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (992,'»õ·Î¿î ÁÖ¹ÎÀÌ ÀÌ»ç¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (993,'¹Ú¹°°ü¿¡¼­ ÀüÇÒ ¸»ÀÌ ÀÖ´Ù°í ÇÑ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (994,'ÀÌº¥Æ® °¡±¸ Ä«Å»·Î±× ¸ñ·ÏÀÌ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (995,'Ä¿¸ó¼¶¿¡.. KKK°¡ ¿Â´Ù°í ÇÑ´Ù±¸¸®!!!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (996,'¾ÆÄ§Ã¼Á¶ ¹æ¹ý °øÀ¯ÇÑ´Ù±¸¸®!',1,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (997,'¿À´ÃÀº Æ¯º°ÇÑ ÀÏÀÌ ¾ø´Â ³¯ÀÌ´Ù±¸¸®!',0,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (998,'Æ¯Á¦ ¶ó¸é½ºÇÁ ·¹½ÃÇÇ¸¦ °ø°³ÇÑ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (999,'³Ê±¼»óÁ¡¿¡´Â ¼û°ÜÁø ºñ¹ÐÀÌ ÀÖ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1000,'¿À´ÃÀÇ ¸í¾ðÀÌ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1001,'¿À´ÃÀº ¸ñÀç°¡±¸¸¦ µÎ ¹è °¡°Ý¿¡ ¸ÅÀÔÇÑ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1002,'ÀÌ¹ø ÁÖ ÀÏ¿äÀÏ¿¡ ¹«ÆÄ¶ó°¡ ¿Ã ¿¹Á¤ÀÌ´Ù±¸¸®!',2,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1003,'¿©¿ìÃ³·³ »ý±ä »ç±â²ÛÀ» Á¶½ÉÇØ¾ßÇÑ´Ù±¸¸®!',4,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1004,'Ä«ÆêÀ» ¹Ù²ã¾ß ÇÏ¸é »çÇÏ¶ó¸¦ ¸¸³ªºÁ±¸¸®!',6,to_date('22/04/17','RR/MM/DD'),'³Ê±¼',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1061,'ùÛí­',10,to_date('22/04/18','RR/MM/DD'),'´ú¸°ÀÌ´Ù',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1043,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä~',7,to_date('22/04/18','RR/MM/DD'),'±è¿¹Âù',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1081,'ºñºñºòÀº',9,to_date('22/04/19','RR/MM/DD'),'ºñºñºò',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1082,'ÇÏÀÌÇÏÀÌ',5,to_date('22/04/19','RR/MM/DD'),'ÀÌ³ª´ç',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1101,'³»°¡ ¹Ù·Î',8,to_date('22/04/19','RR/MM/DD'),'Áý¹ä¸Ç',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1102,'°³ÀßÇß´Ù ÁøÂ¥',14,to_date('22/04/19','RR/MM/DD'),'±×¾Æ¾Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1121,'ÇÏÀÌ',5,to_date('22/04/19','RR/MM/DD'),'ÀÌ³ª´ç',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1122,'ÇÏÇÖÇÏ',8,to_date('22/04/19','RR/MM/DD'),'±×¾Æ¾Ì',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1123,'¸®´ë¼®',5,to_date('22/04/19','RR/MM/DD'),'»ó³²ÀÚ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1124,'¸®´ë¼®',4,to_date('22/04/19','RR/MM/DD'),'»ó³²ÀÚ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1125,'µ¿¹°ÀÇ ½£Àº ¿À´ÃºÎ·Î',10,to_date('22/04/19','RR/MM/DD'),'»ó³²ÀÚ',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1141,'¿¹¾Æ!',8,to_date('22/04/19','RR/MM/DD'),'¿¡º£º£º£º©º£º£º£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1181,'³» sql ÀÎÁ§¼Ç ¾îµð°¨',13,to_date('22/04/20','RR/MM/DD'),'¿¡º£º£º£º©º£º£º£',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1201,'¤¾¤·¤¾¤·',2,to_date('22/04/20','RR/MM/DD'),'Ä«·¹Ä«·¹',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1202,'¿À´ÃÀÇ ¸Þ´º´Â',15,to_date('22/04/20','RR/MM/DD'),'Áý¹ä¸Ç',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1242,'test title',3,to_date('22/05/05','RR/MM/DD'),null,1);
REM INSERTING into TBL_CHAT
SET DEFINE OFF;
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (81,'¹ÌÃ¿','³Ê±¼','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (82,'¸¶¸®','ºù¼ö','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (83,'Àè½¼','³Ê±¼','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (84,'Á¸','Å·','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (91,'¿ø½Â','½Ã¿Â','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (92,'¿ë³²ÀÌ','¿ø½Â','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (87,'Á¸','µå¸®¹Ì','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (93,'Á¶¸£Áã','¿ø½Â','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (94,'¿ø½Â','½Ã¿Â','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (90,'Á¶¸£Áã','¿ø½Â','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (95,'¿ë³²ÀÌ','¿ø½Â','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (96,'°ïÀß·¹½º','Âüµ¹ÀÌ','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (97,'Âüµ¹ÀÌ','ÇÇÅÍ','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (98,'Å¹È£','Âüµ¹ÀÌ','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (99,'°ïÀß·¹½º','ºù¼ö','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (100,'ºù¼ö','ÇÇÅÍ','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (101,'Å¹È£','ºù¼ö','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (102,'°ïÀß·¹½º','Å·','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (103,'Å·','ÇÇÅÍ','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (104,'Å¹È£','Å·','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (105,'ÇÜ±î½º','È£·©ÀÌ','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (106,'È£·©ÀÌ','¾ÖÇÃ','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (107,'¹ÌÃ¿','È£·©ÀÌ','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (108,'ÇÜ±î½º','³Ê±¼','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (109,'³Ê±¼','¾ÖÇÃ','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (110,'¹ÌÃ¿','³Ê±¼','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (111,'ÇÜ±î½º','±è¿¹Âù','³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (112,'±è¿¹Âù','¾ÖÇÃ','´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (113,'¹ÌÃ¿','±è¿¹Âù','À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (142,'Å¹È£','±è¿¹Âù','¾È´¨ ³ª´Â Å¸ÄÚ¾ß~ ¾àÈ÷',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (122,'´ú¸°µ¿»ý','´ú¸°ÀÌ´Ù','¾ß ÀÌ ¹Ùº¸¾ß',to_date('22/04/17','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (143,'Å¹È£','Âüµ¹ÀÌ','¾È³ç, ³» ÀÌ¸§Àº Å¹È£¾ß~ ¾àÈ÷',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (161,'±è¿¹Âù','Âüµ¹ÀÌ','¸¸³ª¼­ ¹Ý°¡¿ö~',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (162,'±è¿¹Âù','È£·©ÀÌ','¸¸³ª¼­ ¹Ý°¡¿ö~',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (163,'±è¿¹Âù','ºù¼ö','¸¸³ª¼­ ¹Ý°¡¿ö~',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (181,'±è¿¹Âù','ÁÖ´ÔÀÇ¼Ò³à´ã','¿À´Ãµµ ¸¹ÀÌ »ç¶ûÇØ??',to_date('22/04/18','RR/MM/DD'),to_date('22/04/18','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (182,'±è¿¹Âù','ÁÖ´ÔÀÇ¼Ò³à´ã','ÀÌ·¸°Ô »ç¶û°í¹éÇÏ´Â °Ç ¶Ç »õ·ÓÁö~???',to_date('22/04/18','RR/MM/DD'),to_date('22/04/18','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (183,'±è¿¹Âù','ÁÖ´ÔÀÇ¼Ò³à´ã','³»ÀÏ¸ð·¹¸é ¿ì¸® ÁÖÈñ º¸´Ï±î, »¡¸® º¸°í½Í´ç?',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (201,'´ú¸°ÀÌ´Ù','ºù¼ö','ùÛí­',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (221,'¸®´ë¼®','¸®´ë¼®','¾È³ç?',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (50,'´ú¸°ÀÌ´Ù','±è¿¹Âù','¾Ë¶óºé',to_date('22/04/16','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (51,'´ú¸°µ¿»ý','´ú¸°ÀÌ´Ù','¿¡¶óÀÌ',to_date('22/04/16','RR/MM/DD'),to_date('22/04/18','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (222,'¸®´ë¼®','»ó³²ÀÚ','µÚÁú·¡?',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (223,'ÀÌ³ª´ç','ºñºñºò','¤¾¤¾¤¾¤¾¤¾¤¾¤¾¤¾',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (224,'ÀÌ³ª´ç','±è¿¹Âù','ÀÐ¾î
',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (225,'¸®´ë¼®','ÀÌ³ª´ç','½Î¿ì½Ç?',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (226,'±è¿¹Âù','ÀÌ³ª´ç','ÀÐ¾ú½À´Ï´Ù!',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (227,'»ó³²ÀÚ','ÀÌ³ª´ç','´©³ª 3´ë ¸î Ä§?',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (228,'ºñºñºò','ÀÌ³ª´ç','ºñºñºòÀº ¸ÀÀÖÀ½',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (229,'¿¡º£º£º£º©º£º£º£','»ó³²ÀÚ','fadsfasdf',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (241,'¿¡º£º£º£º©º£º£º£','ÀÌ³ª´ç´ç','¿¡º£º£º£·¹º£·¹º£¤Ä¤Äº£º£º£º©',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (261,'¿¡º£º£º£º©º£º£º£','´ú¸°ÀÌ´Ù','fasdfasdfasdf',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (262,'ÀÌ³ª´ç´ç','¿¡º£º£º£º©º£º£º£','ÇÖÇÏ!',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (263,'¿¡º£º£º£º©º£º£º£','Áý¹ä¸Ç','°æº¸º¯ÅÂ',to_date('22/04/19','RR/MM/DD'),to_date('22/04/20','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (281,'Å×½ºÆ®','±è¿¹Âù','Å×½ºÆ®ÀÔ´Ï´Ù.',to_date('22/04/21','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (301,'ÀÚ¹Ù¸Ç','¿¹¼ö´Ô','ÇÒ·¼·ç¾ß',to_date('22/05/05','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (302,'ÀÚ¹Ù¸Ç','¿¹¼ö´Ô','ÇÖÇÏ',to_date('22/05/05','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (321,'±è¿¹Âù','ÇÜ±î½º','ÇÜ±î½º ¾È´¨?',to_date('22/05/28','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (322,'±è¿¹Âù','¹ÌÃ¿','¹ÌÃ¿ ¾È³ç? ¿ì¸® ¾ðÁ¦ ÇÑ ¹ø ¸¸³ª¾ßÁö~',to_date('22/05/28','RR/MM/DD'),null);
REM INSERTING into TBL_MEMBER
SET DEFINE OFF;
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mylove','0707','ÁÖ´ÔÀÇ¼Ò³à´ã','¼­¿ïÆ¯º°½Ã','±ÝÃµ±¸','½ÃÈïµ¿','¼­¿ïÆ¯º°½Ã ±ÝÃµ±¸ µ¶»ê·Î50±æ 89','103µ¿ 2201È£','08563','¼­¿ïÆ¯º°½Ã ±ÝÃµ±¸ µ¶»ê·Î50±æ 89, 103µ¿ 2201È£(½ÃÈïµ¿, »ïÀÍ¾ÆÆÄÆ®)','¼­¿ïÆ¯º°½Ã ±ÝÃµ±¸ ½ÃÈïµ¿ 5-13 »ïÀÍ¾ÆÆÄÆ®','juhui7955@daum.net','1','32568194','³»°¡ »ç¶ûµÕÀÌ´Ù! ¿Ö!!!! ºÒ¸¸ ÀÖ³Ä!!!!!!! ? È÷È÷');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('newdul','1234','´ú¸°µ¿»ý',null,null,null,null,null,null,null,null,'yeopiya@gmail.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('woon','1126','³ª³ª³ª',null,null,null,null,null,null,null,null,'mail@mail.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('nook','1234','³Ê±¼',null,null,null,null,null,null,null,null,'nook@dongs.co.kr','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('bibibik','1234','»ó³²ÀÚ',null,null,null,null,null,null,null,null,'bibibik@babamba.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('dullin','1234','´ú¸°ÀÌ´Ù',null,null,null,null,null,null,null,null,'dutnehdduq@naver.com','1','29568377','010 3001 5858 CALL ME BABY');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('chan','0000','±è¿¹Âù','¼­¿ïÆ¯º°½Ã','ÀºÆò±¸','ºÒ±¤µ¿','¼­¿ïÆ¯º°½Ã ÀºÆò±¸ ºÒ±¤·Î 51','1234','03358','¼­¿ïÆ¯º°½Ã ÀºÆò±¸ ºÒ±¤·Î 51, 1234(ºÒ±¤µ¿)','¼­¿ïÆ¯º°½Ã ÀºÆò±¸ ºÒ±¤µ¿ 272-2 ºÒ±¤ÃÊµîÇÐ±³','kycasdzxc@naver.com','1','95617847','¸ð¿©ºÁ¿ä, µ¿¹°ÀÇ ½£');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('test','1234','Å×½ºÆ®','¼­¿ïÆ¯º°½Ã','ÀºÆò±¸','ºÒ±¤µ¿','¼­¿ïÆ¯º°½Ã ÀºÆò±¸ ºÒ±¤·Î6±æ 10-10','¤§¤§','03364','¼­¿ïÆ¯º°½Ã ÀºÆò±¸ ºÒ±¤·Î6±æ 10-10, ¤§¤§(ºÒ±¤µ¿, ºÒ±¤µ¿ ±Ù.»ý ¹× ´Ù¼¼´ëÁÖÅÃ)','¼­¿ïÆ¯º°½Ã ÀºÆò±¸ ºÒ±¤µ¿ 8-156 ºÒ±¤µ¿ ±Ù.»ý ¹× ´Ù¼¼´ëÁÖÅÃ','test@gmail.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('john','1234','Á¸',null,null,null,null,null,null,null,null,null,'0',null,'Àß ¶§µµ Á¶½É');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('horang','1234','È£·©ÀÌ',null,null,null,null,null,null,null,null,null,'0',null,'ÀÌÂÊ¿¡´Â È£¶ûÀÌ, ÀúÂÊ¿¡´Â Å¸ÀÌ°Å');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('ham','1234','ÇÜ±î½º',null,null,null,null,null,null,null,null,null,'0',null,'³²ÀÇ ¶±ÀÌ ´õ ¸ÀÀÖ´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('michel','1234','¹ÌÃ¿',null,null,null,null,null,null,null,null,null,'0',null,'Áß¿äÇÑ °Ç Å¸ÀÌ¹Ö');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('tank','1234','ÅÊÅ©',null,null,null,null,null,null,null,null,null,'0',null,'È¸»ö ´Ù¸®´Â È¸»ö ¸¶À½º¸´Ù ³´´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('apple','1234','¾ÖÇÃ',null,null,null,null,null,null,null,null,null,'0',null,'»ç¶÷µéÀº ´à±â ¸¶·Ã');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('bing','1234','ºù¼ö',null,null,null,null,null,null,null,null,null,'0',null,'ºù¼öÇÏ¸é ÆÏºù¼ö');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('king','1234','Å·',null,null,null,null,null,null,null,null,null,'0',null,'¹é¼öÀÇ ¿Õ');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('tako','1234','Å¹È£',null,null,null,null,null,null,null,null,null,'0',null,'1°³´Â ´ý');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('sion','1234','½Ã¿Â',null,null,null,null,null,null,null,null,null,'0',null,'¿ë¼­¶õ Áþ¹âÈù Á¦ºñ²ÉÀÌ ¹ß²ÞÄ¡¿¡ ³²±ä Çâ±â´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mong','1234','¿ø½Â',null,null,null,null,null,null,null,null,null,'0',null,'º¸Áöµµ, µèÁöµµ, ¸»ÇÏÁöµµ ¸»¶ó');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mari','1234','¸¶¸®',null,null,null,null,null,null,null,null,null,'0',null,'ÇÇ´Â ¸ø ¼ÓÀÎ´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('dream','1234','µå¸®¹Ì',null,null,null,null,null,null,null,null,null,'0',null,'°³±¸¸® ¾ø´Â È£¼ö ÁöÀúºÐÇÑ È£¼ö');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('cham','1234','Âüµ¹ÀÌ',null,null,null,null,null,null,null,null,null,'0',null,'ÀÎ»ý ÇÑ ¹æ');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('jorz','1234','Á¶¸£Áã',null,null,null,null,null,null,null,null,null,'0',null,'Áý¿¡ Áã°¡ ÀÖÀ¸¸é ³ª¶ó¿£ µµµÏÀÌ ÀÖ´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('goni','1234','°ïÀß·¹½º',null,null,null,null,null,null,null,null,null,'0',null,'10¸¶¸®ÀÇ ÇÏ¸¶´Â ÇÏ³ªÀÇ ±¸¸Û¿¡ µé¾î°¡Áö ¾Ê´Â´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('peter','1234','ÇÇÅÍ',null,null,null,null,null,null,null,null,null,'0',null,'»ç½¿ ÀÏÀº ¾Æ¹«µµ ¸ð¸¥´Ù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('jack','1234','Àè½¼',null,null,null,null,null,null,null,null,null,'0',null,'¼¿ÇÁ ºê·£µù');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mami','1234','¸¶¹Ì',null,null,null,null,null,null,null,null,null,'0',null,'¾ö¸¶´Â ¾ÆÀÌ »ý°¢, ¾ÆÀÌ´Â ³î »ý°¢');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('dragon','1234','¿ë³²ÀÌ',null,null,null,null,null,null,null,null,null,'0',null,'µî¿ë¹®');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('oovfree','1234','¸®´ë¼®',null,null,null,null,null,null,null,null,'oovfree@naver.com','0','25829970','¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('inadang','1234','ÀÌ³ª´ç´ç','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ','¼­±ÍÆ÷½Ã','º¸¸ñµ¿','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ ¼­±ÍÆ÷½Ã ¹®ÇÊ·Î35¹ø±æ 46','13','63599','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ ¼­±ÍÆ÷½Ã ¹®ÇÊ·Î35¹ø±æ 46, 13(º¸¸ñµ¿)','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ ¼­±ÍÆ÷½Ã º¸¸ñµ¿ 1252-1 ´õº£ÀÌ Á¦ÁÖ¸®Á¶Æ®','ina9377@gmail.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('bibibik1697','1234','ºñºñºò',null,null,null,null,null,null,null,null,'rla10321@naver.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('woong','1234','Áý¹ä¸Ç',null,null,null,null,null,null,null,null,'rbdnd112@naver.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('javaboy','1234','¿¡º£º£º£º©º£º£º£','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ','Á¦ÁÖ½Ã','³ëÇüµ¿','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ Á¦ÁÖ½Ã ³ëÇü·Î 311','2323','63105','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ Á¦ÁÖ½Ã ³ëÇü·Î 311, 2323(³ëÇüµ¿)','Á¦ÁÖÆ¯º°ÀÚÄ¡µµ Á¦ÁÖ½Ã ³ëÇüµ¿ 2350','hyeong901@naver.com','0',null,'¹»ºÁ');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('kingfish','5678','Å·ÇÇ½¬','¼­¿ïÆ¯º°½Ã','¿µµîÆ÷±¸','¿µµîÆ÷µ¿3°¡','¼­¿ïÆ¯º°½Ã ¿µµîÆ÷±¸ ¿µÁß·Î8±æ 6','ÁöÇÏ 777Ãþ','07302','¼­¿ïÆ¯º°½Ã ¿µµîÆ÷±¸ ¿µÁß·Î8±æ 6, ÁöÇÏ 777Ãþ(¿µµîÆ÷µ¿3°¡)','¼­¿ïÆ¯º°½Ã ¿µµîÆ÷±¸ ¿µµîÆ÷µ¿3°¡ 8-1 ¼º³²ºôµù','goodday759@naver.com','0','47160249','¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('hihi','1234','Ä«·¹Ä«·¹',null,null,null,null,null,null,null,null,'123@naver.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('jesus','1234','¿¹¼ö´Ô',null,null,null,null,null,null,null,null,'jesus@naver.com','0',null,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('javaman','1234','ÀÚ¹Ù¸Ç','°æ±âµµ','ºÎÃµ½Ã','½É°îµ¿','°æ±âµµ ºÎÃµ½Ã ºÎÀÏ·Î 425',null,'14635','°æ±âµµ ºÎÃµ½Ã ºÎÀÏ·Î 425(½É°îµ¿)','°æ±âµµ ºÎÃµ½Ã ½É°îµ¿ 458-6 ÇÏÀÌÆÓ¸®½º','lepelaka@gmail.com','1','10381999','¸¸³ª¼­ ¹Ý°¡¿ö¿ä!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('9626wndud','dk9626dk','·¹¸ó¾ÆÀÌ½ºÆ¼','¼­¿ïÆ¯º°½Ã','±ÝÃµ±¸','½ÃÈïµ¿','¼­¿ïÆ¯º°½Ã ±ÝÃµ±¸ µ¶»ê·Î50±æ 89','103µ¿ 2201È£','08563','¼­¿ïÆ¯º°½Ã ±ÝÃµ±¸ µ¶»ê·Î50±æ 89, 103µ¿ 2201È£(½ÃÈïµ¿, »ïÀÍ¾ÆÆÄÆ®)','¼­¿ïÆ¯º°½Ã ±ÝÃµ±¸ ½ÃÈïµ¿ 5-13 »ïÀÍ¾ÆÆÄÆ®','7955wndud@naver.com','0',null,'È£¸£¸¤ Â¬Â¬¡¦');
REM INSERTING into TBL_REPLY
SET DEFINE OFF;
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (563,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),223,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (558,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),221,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (564,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),223,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (565,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),223,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (566,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),223,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (102,'¿Ô´Ù°£´Ù',to_date('22/04/16','RR/MM/DD'),189,'´ú¸°µ¿»ý');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (567,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),224,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (568,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),224,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (121,'¸¸³ª¼­ ¹Ý°¡¿ö¿ä~',to_date('22/04/17','RR/MM/DD'),189,'±è¿¹Âù');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (569,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),224,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (570,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),224,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (571,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),225,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (572,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),225,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (573,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),225,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (574,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),225,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (575,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),226,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (576,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),226,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (577,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),226,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (578,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),226,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (579,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),227,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (580,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),227,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (581,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),227,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (582,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),227,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (583,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),228,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (584,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),228,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (585,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),228,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (586,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),228,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (587,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),229,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (588,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),229,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (589,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),229,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (590,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),229,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (591,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),230,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (592,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),230,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (593,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),230,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (594,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),230,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (595,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),231,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (596,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),231,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (597,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),231,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (598,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),231,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (599,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),232,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (600,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),232,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (601,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),232,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (602,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),232,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (603,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),233,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (604,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),233,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (605,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),233,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (606,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),233,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (607,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),234,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (608,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),234,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (609,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),234,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (610,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),234,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (611,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),235,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (612,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),235,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (613,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),235,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (614,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),235,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (615,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),236,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (616,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),236,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (617,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),236,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (618,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),236,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (619,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),237,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (620,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),237,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (621,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),237,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (622,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),237,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (623,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),238,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (624,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),238,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (625,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),259,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (626,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),259,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (627,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),260,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (628,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),260,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (629,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),260,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (630,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),260,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (631,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),261,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (632,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),261,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (633,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),261,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (634,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),261,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (635,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),262,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (636,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),262,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (637,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),262,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (638,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),262,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (639,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),263,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (640,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),263,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (641,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),263,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (642,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),263,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (643,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),264,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (644,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),264,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (645,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),264,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (646,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),264,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (647,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),265,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (648,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),265,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (649,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),265,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (650,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),265,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (651,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),266,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (652,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),266,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (653,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),266,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (654,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),266,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (655,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),267,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (656,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),267,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (657,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),267,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (658,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),267,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (659,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),268,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (660,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),268,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (661,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),268,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (662,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),268,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (663,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),269,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (664,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),269,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (665,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),269,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (666,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),269,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (667,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),270,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (668,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),270,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (669,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),270,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (670,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),270,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (671,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),271,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (672,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),271,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (673,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),271,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (674,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),271,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (675,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),272,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (676,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),272,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (677,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),272,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (678,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),272,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (679,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),273,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (680,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),273,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (681,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),273,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (682,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),273,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (683,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),274,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (684,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),274,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (685,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),274,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (686,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),274,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (687,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),275,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (688,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),275,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (689,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),275,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (690,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),275,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (691,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),291,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (692,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),292,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (693,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),292,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (694,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),292,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (695,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),292,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (696,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),293,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (697,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),293,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (698,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),293,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (699,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),293,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (700,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),294,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (701,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),294,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (702,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),294,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (703,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),294,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (704,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),295,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (705,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),295,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (706,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),295,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (707,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),295,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (708,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),296,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (709,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),296,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (710,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),296,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (711,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),296,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (712,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),297,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (713,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),297,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (714,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),297,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (715,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),297,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (716,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),298,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (717,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),298,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (718,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),298,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (719,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),298,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (720,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),299,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (721,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),299,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (722,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),299,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (723,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),299,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (724,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),300,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (725,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),300,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (726,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),300,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (727,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),300,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (949,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),189,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (950,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),189,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (951,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),189,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (952,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),189,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (994,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),203,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (995,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),203,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (996,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),203,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (997,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),203,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (998,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),204,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (999,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),204,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1000,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),204,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1001,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),204,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1002,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),205,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1003,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),205,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1004,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),205,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1005,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),205,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1006,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),206,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1007,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),206,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1008,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),206,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1009,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),206,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1010,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),207,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1011,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),207,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1012,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),207,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1013,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),207,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1014,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),208,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1015,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),208,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1016,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),208,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1017,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),208,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1018,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),209,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1019,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),209,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1020,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),209,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1021,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),209,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1022,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),210,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1023,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),210,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1024,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),210,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1025,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),210,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1026,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),211,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1027,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),211,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1028,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),211,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1029,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),211,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1030,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),212,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1031,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),212,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1032,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),212,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1033,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),212,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1034,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),213,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1035,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),213,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1036,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),213,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1037,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),213,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1038,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),214,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1039,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),214,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1040,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),214,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1041,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),214,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1042,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),215,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1043,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),215,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1044,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),215,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1045,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),215,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1046,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),216,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1047,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),216,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1048,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),216,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1049,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),216,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1050,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),217,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1051,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),217,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1052,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),217,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1053,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),217,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1054,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),218,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1055,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),218,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1056,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),218,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1057,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),218,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1058,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),219,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1059,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),219,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1060,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),219,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1061,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),219,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1062,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),220,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1063,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),220,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1064,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),254,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1065,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),254,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1066,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),254,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1067,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),255,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1068,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),255,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1069,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),255,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1070,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),255,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1071,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),256,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1072,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),256,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1073,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),256,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1074,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),256,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1075,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),257,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1076,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),257,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1077,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),257,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1078,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),257,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1079,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),258,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1080,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),258,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1081,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),258,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1082,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),258,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1083,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),259,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1084,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),259,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1085,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),259,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1086,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),259,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1087,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),260,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1088,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),260,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1089,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),260,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1090,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),260,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1091,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),261,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1092,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),261,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1093,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),261,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1094,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),261,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1095,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),262,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1096,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),262,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1097,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),262,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1098,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),262,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1099,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),263,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1100,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),263,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1101,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),263,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1102,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),263,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1103,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),264,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1104,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),264,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1105,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),264,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1106,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),264,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1107,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),265,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1108,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),265,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1109,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),265,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1110,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),265,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1111,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),266,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1112,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),266,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1113,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),266,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1114,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),266,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1115,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),267,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1116,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),267,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1117,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),267,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1118,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),267,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1119,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),268,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1120,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),268,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1121,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),268,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1122,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),268,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1123,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),269,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1124,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),269,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1125,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),269,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1126,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),269,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1127,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),270,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1128,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),270,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1129,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),270,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1130,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),270,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1131,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),271,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1132,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),271,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1133,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),282,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1134,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),283,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1135,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),283,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1136,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),283,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1137,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),283,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1138,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),284,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1139,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),284,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1140,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),284,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1141,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),284,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1142,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),285,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1143,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),285,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1144,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),285,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1145,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),285,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1146,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),286,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1147,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),286,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1148,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),286,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1149,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),286,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1150,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),287,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1151,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),287,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1152,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),287,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1153,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),287,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1154,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),288,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1155,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),288,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1156,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),288,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1157,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),288,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1158,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),289,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1159,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),289,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1160,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),289,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1161,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),289,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1162,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),290,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1163,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),290,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1164,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),290,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1165,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),290,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1166,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),291,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1167,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),291,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1168,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),291,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1169,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),291,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1170,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),292,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1171,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),292,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1172,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),292,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1173,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),292,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1174,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),293,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1175,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),293,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1176,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),293,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1177,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),293,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1178,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),294,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1179,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),294,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1180,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),294,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1181,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),294,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1182,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),295,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1183,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),295,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1184,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),295,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1185,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),295,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1186,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),296,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1187,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),296,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1188,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),296,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1189,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),296,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1190,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),297,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1191,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),297,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1192,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),297,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1193,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),297,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1194,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),298,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1195,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),298,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1196,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),298,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1197,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),298,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1198,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),299,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1199,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),299,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1200,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),299,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1201,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),299,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1203,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),238,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1204,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),238,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1205,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),238,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1206,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),238,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1207,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),239,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1208,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),239,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1209,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),239,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1210,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),239,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1211,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),240,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1212,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),240,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1213,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),240,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1214,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),240,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1215,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),241,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1216,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),241,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1217,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),241,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1218,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),241,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1219,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),242,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1220,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),242,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1221,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),242,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1222,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),242,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1223,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),243,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1224,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),243,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1225,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),243,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1226,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),243,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1227,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),244,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1228,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),244,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1229,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),244,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1230,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),244,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1231,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),245,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1232,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),245,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1233,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),245,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1234,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),245,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1235,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),246,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1236,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),246,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1237,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),246,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1238,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),246,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1239,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),247,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1240,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),247,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1241,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),247,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1242,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),247,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1243,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),248,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1244,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),248,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1245,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),248,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1246,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),248,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1247,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),249,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1248,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),249,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1249,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),249,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1250,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),249,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1251,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),250,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1252,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),250,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1253,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),250,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1254,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),250,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1255,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),251,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1256,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),251,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1257,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),251,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1258,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),251,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1259,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),252,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1260,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),252,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1261,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),252,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1262,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),252,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1263,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),253,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1264,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),253,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1265,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),253,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1266,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),253,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1267,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),254,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1268,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),254,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1269,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),254,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1270,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),254,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1271,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),255,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1272,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),255,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3207,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),908,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3208,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),908,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3209,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),908,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3210,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),909,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3211,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),909,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3212,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),909,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3213,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),909,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3214,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),910,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3215,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),910,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3216,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),910,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3217,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),910,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3218,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),911,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3219,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),911,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3220,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),911,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3221,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),911,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3222,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),912,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3223,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),912,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3224,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),912,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3225,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),912,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3226,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),913,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3227,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),913,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3228,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),913,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3229,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),913,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3230,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),914,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3231,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),914,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3232,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),914,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3233,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),914,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3234,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),915,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3235,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),915,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3236,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),915,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3237,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),915,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3238,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),916,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3239,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),916,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3240,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),916,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3241,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),916,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3242,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),917,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3243,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),917,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3244,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),917,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3245,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),917,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3246,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),918,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3247,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),918,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3248,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),918,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3249,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),918,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3250,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),919,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3251,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),919,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3252,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),919,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3253,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),919,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3254,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),920,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3255,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),920,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3256,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),920,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3257,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),920,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3258,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),921,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3259,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),921,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3260,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),921,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3261,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),921,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3262,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),922,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3263,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),922,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3264,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),922,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3265,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),922,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3266,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),923,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3267,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),923,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3268,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),923,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3269,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),923,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3270,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),924,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3271,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),924,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3272,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),924,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3273,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),924,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3274,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),925,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3275,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),943,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3276,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),943,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3277,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),943,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3278,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),944,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3279,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),944,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3280,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),944,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3281,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),944,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3282,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),945,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3283,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),945,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3284,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),945,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3285,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),945,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3286,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),946,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3287,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),946,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3288,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),946,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3289,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),946,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3290,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),947,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3291,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),947,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3292,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),947,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3293,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),947,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3294,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),948,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3295,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),948,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3296,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),948,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3297,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),948,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3298,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),949,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3299,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),949,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3300,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),949,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3301,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),949,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3302,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),950,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3303,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),950,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3304,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),950,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3305,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),950,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3306,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),951,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3307,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),951,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3308,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),951,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3309,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),951,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3310,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),952,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3311,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),952,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3312,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),952,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3313,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),952,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3314,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),953,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3315,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),953,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3316,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),953,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3317,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),953,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3318,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),954,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3319,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),954,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3320,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),954,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3321,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),954,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3322,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),955,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3323,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),955,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3324,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),955,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3325,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),955,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3326,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),956,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3327,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),956,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3328,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),956,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3329,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),956,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3330,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),957,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3331,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),957,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3332,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),957,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3333,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),957,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3334,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),958,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3335,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),958,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3336,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),958,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3337,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),958,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3338,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),959,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3339,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),959,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3340,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),959,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3341,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),959,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3342,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),960,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3343,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),960,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3344,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),960,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3345,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),960,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3346,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),961,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3347,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),961,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3348,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),961,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3349,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),961,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3350,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),962,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3351,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),962,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3352,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),962,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3353,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),962,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3354,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),963,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3355,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),963,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3356,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),963,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3357,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),963,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3358,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),964,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3359,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),964,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3360,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),964,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3361,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),964,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3362,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),965,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3363,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),965,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3364,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),965,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3365,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),965,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3366,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),966,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3367,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),966,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3368,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),966,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3369,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),966,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3370,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),967,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3371,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),967,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3372,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),967,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3373,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),967,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3374,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),968,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3375,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),995,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3376,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),995,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3377,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),995,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3378,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),996,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3379,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),996,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3380,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),996,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3381,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),996,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3382,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),997,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3383,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),997,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3384,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),997,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3385,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),997,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3386,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),998,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3387,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),998,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3388,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),998,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3389,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),998,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3390,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),999,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3391,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),999,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3392,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),999,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3393,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),999,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3394,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),1000,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3395,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),1000,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3396,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),1000,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3397,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),1000,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3532,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),900,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3533,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),900,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3534,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),900,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3535,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),900,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3536,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),901,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3537,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),901,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3538,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),901,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3539,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),901,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3540,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),902,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3541,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),902,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3542,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),902,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3543,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),902,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3544,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),903,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3545,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),903,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3546,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),903,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3547,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),903,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3548,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),904,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3549,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),920,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3550,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),921,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3551,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),921,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3552,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),921,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3553,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),921,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3554,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),922,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3555,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),922,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3556,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),922,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3557,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),922,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3558,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),923,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3559,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),923,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3560,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),923,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3561,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),923,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3562,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),924,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3563,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),924,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3564,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),924,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3565,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),924,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3566,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),925,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3567,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),925,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3568,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),925,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3569,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),925,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3570,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),926,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3571,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),926,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3572,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),926,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3573,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),926,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3574,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),927,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3575,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),927,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3576,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),927,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3577,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),927,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3578,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),928,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3579,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),928,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3580,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),928,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3581,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),928,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3582,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),929,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3583,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),929,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3584,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),929,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3585,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),929,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3586,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),930,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3587,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),930,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3588,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),930,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3589,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),930,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3590,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),931,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3591,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),931,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3592,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),931,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3593,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),931,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3594,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),932,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3595,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),932,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3596,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),932,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3597,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),932,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3598,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),933,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3599,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),933,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3600,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),933,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3601,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),933,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3602,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),934,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3603,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),934,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3604,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),934,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3605,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),934,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3606,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),935,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3607,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),935,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3608,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),935,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3609,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),935,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3610,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),936,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3611,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),936,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3612,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),936,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3613,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),936,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3614,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),937,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3615,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),937,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3616,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),937,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3617,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),937,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3618,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),938,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3619,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),938,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3620,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),938,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3621,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),938,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3622,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),939,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3623,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),939,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3624,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),939,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3625,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),939,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3626,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),940,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3627,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),940,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3628,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),940,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3629,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),940,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3630,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),941,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3631,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),941,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3632,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),941,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3633,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),941,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3634,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),942,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3635,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),942,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3636,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),942,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3637,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),942,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3638,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),943,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3639,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),982,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3640,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),982,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3641,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),983,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3642,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),983,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3643,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),983,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3644,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),983,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3645,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),984,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3646,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),984,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3647,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),984,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3648,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),984,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3649,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),985,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3650,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),985,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3651,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),985,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3652,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),985,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3653,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),986,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3654,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),986,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3655,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),986,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3656,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),986,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3657,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),987,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3658,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),987,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3659,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),987,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3660,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),987,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3661,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),988,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3662,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),988,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3663,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),988,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3664,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),988,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3665,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),989,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3666,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),989,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3667,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),989,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3668,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),989,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3669,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),990,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3670,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),990,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3671,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),990,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3672,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),990,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3673,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),991,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3674,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),991,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3675,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),991,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3676,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),991,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3677,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),992,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3678,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),992,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3679,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),992,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3680,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),992,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3681,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),993,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3682,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),993,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3683,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),993,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3684,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),993,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3685,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),994,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3686,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),994,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3687,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),994,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3688,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),994,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3689,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),995,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3690,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),995,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3691,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),995,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3692,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),995,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3693,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),996,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3694,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),996,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3695,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),996,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3696,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),996,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3697,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),997,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3698,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),997,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3699,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),997,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3700,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),997,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3701,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),998,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3702,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),998,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3703,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),998,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3704,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),998,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3705,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),999,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3706,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),999,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3707,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),960,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3708,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),960,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3709,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),960,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3710,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),960,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3711,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),961,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3712,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),961,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3713,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),961,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3714,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),961,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3715,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),962,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3716,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),962,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3717,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),962,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3718,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),962,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3719,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),963,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3720,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),963,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3721,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),963,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3722,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),963,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3723,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),964,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3724,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),964,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3725,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),964,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3726,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),964,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3727,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),965,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3728,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),965,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3729,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),965,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3730,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),965,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3731,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),966,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3732,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),966,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3733,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),966,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3734,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),966,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3735,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),967,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3736,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),967,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3737,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),967,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3738,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),967,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3739,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),968,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3740,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),968,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3741,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),968,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3742,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),968,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3743,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),969,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3744,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),969,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3745,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),969,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3746,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),969,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3747,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),970,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3748,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),970,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3749,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),970,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3750,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),970,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3751,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),971,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3752,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),971,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3753,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),971,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3754,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),971,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3755,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),972,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3756,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),972,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3757,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),972,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3758,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),972,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3759,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),973,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3760,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),973,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3761,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),973,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3762,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),973,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3763,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),974,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3764,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),974,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3765,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),974,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3766,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),974,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3767,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),975,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3768,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),975,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3769,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),975,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3770,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),975,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3771,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),976,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3772,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),976,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3773,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),976,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3774,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),976,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3775,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),977,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3776,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),970,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3777,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),970,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3778,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),970,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3779,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),970,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3780,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),971,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3781,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),971,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3782,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),971,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3783,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),971,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3784,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),972,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3785,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),972,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3786,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),972,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3787,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),972,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3788,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),973,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3789,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),973,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3790,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),973,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3791,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),973,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3792,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),974,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3793,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),974,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3794,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),974,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3795,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),974,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3796,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),970,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3797,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),970,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3798,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),970,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3799,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),970,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3800,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),971,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3801,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),971,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3802,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),971,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3803,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),971,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3804,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),972,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3805,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),972,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3806,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),972,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3807,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),972,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3808,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),973,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3809,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),973,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3810,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),973,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3811,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),973,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3812,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),974,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3813,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),974,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3814,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),974,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3815,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),974,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3816,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),975,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3817,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),975,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3818,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),975,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3819,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),975,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3820,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),976,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3821,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),976,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3822,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),976,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3823,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),976,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3824,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),977,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3825,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),977,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3826,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),977,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3827,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),977,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3828,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),978,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3829,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),978,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3830,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),978,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3831,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),978,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3832,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),979,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3833,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),979,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3834,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),979,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3835,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),979,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3836,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),980,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3837,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),980,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3838,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),980,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3839,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),980,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3840,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),981,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3841,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),981,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3842,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),981,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3843,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),981,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3844,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),982,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3845,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),982,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3846,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),982,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3847,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),982,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3848,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),983,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3849,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),983,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3850,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),983,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3851,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),983,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4062,'ÆÐ¼ÇÇÇÇÃÇÏ´Ï±î ¶Ç ³»°¡ ºüÁú ¼ö ¾øÁö >_<',to_date('22/04/18','RR/MM/DD'),293,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4063,'Çï·Î?',to_date('22/04/18','RR/MM/DD'),1043,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4064,'¿Ö ´Ê´Â°Å¾ß ¿Ö!!! ½Ã°£Àº Ä® °°ÀÌ ÁöÄÑ¾ß ÇÏ´Â°Å¶ó°í',to_date('22/04/18','RR/MM/DD'),300,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4068,'³¯¾¾°¡ ÁÁÀ» ¶§ »ý°¢³ª´Â ±× »ç¶÷... º¸°í½Í¼Ò',to_date('22/04/18','RR/MM/DD'),296,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4066,'±×·¡ ³ªµµ ºÎÅ¹ÇÑ´Ù, ÀÎ¸¶',to_date('22/04/18','RR/MM/DD'),299,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4067,'Àú¿äÀú¿ä! Àü ´Þ¸®±â°¡ ºü¸£´Ï±î... µµ¸ÁÀ» °¡°Ú¾î¿ä!',to_date('22/04/18','RR/MM/DD'),297,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4069,'¾ðÁ¦³ª È¯¿µÇÏÁö Ä¿¸ó',to_date('22/04/18','RR/MM/DD'),294,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4081,'¤¾¤·¤¾¤·',to_date('22/04/19','RR/MM/DD'),1082,'Áý¹ä¸Ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4082,'ºñºñºò',to_date('22/04/19','RR/MM/DD'),1081,'Áý¹ä¸Ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4083,'°³ÀßÇß³×',to_date('22/04/19','RR/MM/DD'),1082,'±×¾Æ¾Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4101,'ÀÌ°Å³»°¡¾´°Çµ¥ ¾Æµð¾È¹Ù³¦',to_date('22/04/19','RR/MM/DD'),1102,'±×¾Æ¾Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3923,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),900,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3924,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),900,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3925,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),900,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3926,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),900,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3927,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),901,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3928,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),901,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3929,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),901,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3930,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),901,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3931,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),902,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3932,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),902,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3933,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),902,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3934,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),902,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3935,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),903,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3936,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),903,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3937,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),903,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3938,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),903,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3939,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),904,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3940,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),904,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3941,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),904,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3942,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),904,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3943,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),905,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3944,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),905,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3945,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),905,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3946,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),905,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3947,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),906,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3948,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),906,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3949,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),906,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3950,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),906,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3951,'À¸¾Æ¾Ñ!! ¿ä¸®ÇÐ¿ø¿¡ ´Ê¾î¹ö·È´Ù.. ±×ÃÝ',to_date('22/04/17','RR/MM/DD'),907,'Å·');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3952,'À½.. ¾Æ³¢´Â Ã¥À» ÀÒ¾î¹ö·È´Ù... ±Ùµ¥',to_date('22/04/17','RR/MM/DD'),907,'Âüµ¹ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3953,'»ýÀÏ ÃàÇÏÇØÁà¼­ °í¸¶¿ö! µÆ°Åµç',to_date('22/04/17','RR/MM/DD'),907,'È£·©ÀÌ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3954,'ÀÌ¸öÀÌ ¿îµ¿ ²ÜÆÁÀ» ¾Ë·ÁÁÖÁö! ±×·¯¸¶',to_date('22/04/17','RR/MM/DD'),907,'¸¶¸®');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3955,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),908,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3956,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),908,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3957,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),908,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3958,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),908,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3959,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),909,'ºù¼ö');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3960,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),909,'°ïÀß·¹½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3961,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),909,'Á¶¸£Áã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3962,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),909,'Á¸');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3963,'¿À´ÃÀº ³»°¡ ÆÐ¼ÇÇÇÇÃ~ µ¿±Û',to_date('22/04/17','RR/MM/DD'),910,'ÇÜ±î½º');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3964,'³»°¡ ¹®Á¦ ÇÏ³ª ³»º¼±î? Èú²ûÈú²û',to_date('22/04/17','RR/MM/DD'),910,'¾ÖÇÃ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3965,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),910,'Å¹È£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3966,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),910,'¿ø½Â');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3967,'³¯¾¾°¡ ³Ê¹« ÁÁ´Ù~ µùµ¿´ó',to_date('22/04/17','RR/MM/DD'),911,'¹ÌÃ¿');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3968,'³ª¶û ¼ú·¡Àâ±â ÇÒ »ç¶÷~ ¶¯¶¯!',to_date('22/04/17','RR/MM/DD'),911,'µå¸®¹Ì');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3969,'´Ùµé Çàº¹ÇÑ ÇÏ·ç µÇ¼¼¿ä~ ¿ì¿Õ',to_date('22/04/17','RR/MM/DD'),911,'Àè½¼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3970,'¿À´Ã ÇÏ·çµµ Àß ºÎÅ¹ÇÏÁö. ¾È±×³Ä',to_date('22/04/17','RR/MM/DD'),911,'ÇÇÅÍ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4102,'ÀÌ³ª´ç´ç',to_date('22/04/19','RR/MM/DD'),1102,'ÀÌ³ª´ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4041,'¾È³ç?',to_date('22/04/18','RR/MM/DD'),1043,'³ª³ª³ª');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4103,'ÀÌ³ª´ç',to_date('22/04/19','RR/MM/DD'),1061,'ÀÌ³ª´ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4104,'ÀÌ³ª´ç',to_date('22/04/19','RR/MM/DD'),1061,'ÀÌ³ª´ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4061,'¿îµ¿Àº ÀÚ°í·Î ¸»ÀÌ¾ß, ¶¡À» ³»°í ¿òÁ÷¿©¾ß ÇÏ´Â°Å¾ß',to_date('22/04/18','RR/MM/DD'),292,'ÁÖ´ÔÀÇ¼Ò³à´ã');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4105,'ÀÌÁ¦µÇ´Â°Ç°¡?',to_date('22/04/19','RR/MM/DD'),1122,'¿¡º£º£º£º©º£º£º£');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4106,'ÀÌ³ª´ç´ç',to_date('22/04/19','RR/MM/DD'),1121,'ÀÌ³ª´ç´ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4121,'¤»¤»¤»',to_date('22/04/19','RR/MM/DD'),1122,'ÀÌ³ª´ç´ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4122,'³×!',to_date('22/04/19','RR/MM/DD'),1003,'ÀÌ³ª´ç´ç');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4141,'°ü¸®ÀÚÀÇ ±ÇÇÑÀ¸·Î »èÁ¦µÇ¾ú½À´Ï´Ù ÈÄÈÄ',to_date('22/04/20','RR/MM/DD'),1181,'±è¿¹Âù');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4161,'³»°¡ ¸ÔÀ½',to_date('22/04/20','RR/MM/DD'),1181,'Ä«·¹Ä«·¹');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4201,'<script>alert(''ÇÖÇÏ'')</script>',to_date('22/05/05','RR/MM/DD'),1125,'ÀÚ¹Ù¸Ç');
--------------------------------------------------------
--  DDL for Index IDX_REPLY_RNO_BNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_REPLY_RNO_BNO" ON "TBL_REPLY" ("RNO" DESC, "BNO" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ATTACH
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ATTACH" ON "TBL_ATTACH" ("UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CHAT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CHAT" ON "TBL_CHAT" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPLY" ON "TBL_REPLY" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARD" ON "TBL_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "TBL_MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ATTACH
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ATTACH" ON "TBL_ATTACH" ("UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARD" ON "TBL_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CHAT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CHAT" ON "TBL_CHAT" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "TBL_MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPLY" ON "TBL_REPLY" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IDX_REPLY_RNO_BNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_REPLY_RNO_BNO" ON "TBL_REPLY" ("RNO" DESC, "BNO" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure PROC_INSERT_MEMBER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PROC_INSERT_MEMBER" (
    V_ID TBL_MEMBER.ID%TYPE,
    V_PW TBL_MEMBER.PW%TYPE,
    V_NAME TBL_MEMBER.NAME%TYPE,
    V_SI TBL_MEMBER.SI%TYPE,
    V_SGG TBL_MEMBER.SGG%TYPE,
    V_EMD TBL_MEMBER.EMD%TYPE,
    V_ROADADDR TBL_MEMBER.ROADADDR%TYPE,
    V_ADDRDETAIL TBL_MEMBER.ADDRDETAIL%TYPE,
    V_ZIPNO TBL_MEMBER.ZIPNO%TYPE,
    V_ROADFULLADDR TBL_MEMBER.ROADFULLADDR%TYPE,
    V_JIBUNADDR TBL_MEMBER.JIBUNADDR%TYPE,
    V_EMAIL TBL_MEMBER.EMAIL%TYPE
) IS
BEGIN
    INSERT INTO TBL_MEMBER (ID, PW, NAME, SI, SGG, EMD, ROADADDR, ADDRDETAIL, ZIPNO, ROADFULLADDR, JIBUNADDR, EMAIL)
    VALUES (V_ID, V_PW, V_NAME, V_SI, V_SGG, V_EMD, V_ROADADDR, V_ADDRDETAIL, V_ZIPNO, V_ROADFULLADDR, V_JIBUNADDR, V_EMAIL);
    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure QUIT_PROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "QUIT_PROC" (P_ID TBL_MEMBER.ID%TYPE) IS
BEGIN
    UPDATE TBL_ATTACH SET
    ID = NULL
    WHERE ID = P_ID;

    DELETE TBL_MEMBER
    WHERE ID = P_ID;

    COMMIT;
END;

/
--------------------------------------------------------
--  Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "TBL_ATTACH" ADD CONSTRAINT "PK_ATTACH" PRIMARY KEY ("UUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TBL_ATTACH" MODIFY ("UUID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "TBL_BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TBL_BOARD" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_CHAT
--------------------------------------------------------

  ALTER TABLE "TBL_CHAT" ADD CONSTRAINT "PK_CHAT" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_MEMBER
--------------------------------------------------------

  ALTER TABLE "TBL_MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TBL_MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "TBL_REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TBL_REPLY" MODIFY ("RNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "TBL_ATTACH" ADD CONSTRAINT "FK_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "TBL_MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "TBL_REPLY" ADD CONSTRAINT "FK_BOARD_BNO" FOREIGN KEY ("BNO")
	  REFERENCES "TBL_BOARD" ("BNO") ENABLE;
