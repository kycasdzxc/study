--------------------------------------------------------
--  파일이 생성됨 - 토요일-7월-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 481 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_REPLY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 261 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBL_ATTACH
--------------------------------------------------------

  CREATE TABLE "TBL_ATTACH" 
   (	"UUID" VARCHAR2(50 BYTE), 
	"ORIGIN" VARCHAR2(500 BYTE), 
	"PATH" CHAR(10 BYTE), 
	"IMAGE" CHAR(1 BYTE) DEFAULT '0', 
	"ORD" NUMBER DEFAULT 1, 
	"BNO" NUMBER
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
	"AUTH_TOKEN" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_MUSINSA_SAMPLE
--------------------------------------------------------

  CREATE TABLE "TBL_MUSINSA_SAMPLE" 
   (	"NO" NUMBER, 
	"TITLE" VARCHAR2(2000 BYTE), 
	"INFO" VARCHAR2(4000 BYTE), 
	"PRICE" VARCHAR2(1000 BYTE), 
	"LINK" VARCHAR2(2000 BYTE)
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
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('adc7e27e-df94-4e51-80b3-d3a0fcc51b9c.png','제목 없음.png','2022/03/28','1',1,315);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('e8a3b4ee-65e8-40a8-a0cb-87ffa30f3405.pptx','프레젠테이션1.pptx','2022/03/28','0',1,316);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('768c57c7-e68e-47c6-9d4f-034a1fcf6b28.png','JAVA-썸네일-060 (1).png','2022/03/29','1',1,321);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('ea7b8b13-8275-488c-be1f-3d81bb7880b1.zip','JAVA_썸네일 (2).zip','2022/03/29','0',1,322);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('59126150-36fe-4f49-8d81-3ed6a5617ab7.zip','JAVA_썸네일 (2).zip','2022/03/29','0',1,323);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b9600616-ff39-4803-b147-70e1aab047a0.png','JAVA-썸네일-060.png','2022/03/29','1',1,324);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('4881fb6f-b5e4-43ce-85af-98596c267128.zip','JAVA_썸네일 (2).zip','2022/03/29','0',1,325);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('10d1ed3f-02d0-4a61-82fa-47fda06add9a.png','JAVA-썸네일-060 (1).png','2022/03/29','1',1,326);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b3e44233-d008-4eb5-b0c9-1073bf81cb6e.png','세로가 김.png','2022/03/29','1',1,341);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('84e485c3-3d3a-4c73-9896-277e270ce584.png','가로가 김.png','2022/03/29','1',1,342);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b1a8b000-bcf0-420b-97af-29e91e835e75.png','가로가 김.png','2022/03/29','1',1,344);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('ed197827-2d8f-4a08-ac16-50c0624e3c01.png','가로가 김.png','2022/03/29','1',1,345);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('2584c509-45cd-49ca-b8a3-f9c179f3b087.png','icons8-컴퓨터-16.png','2022/04/12','1',1,401);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('6496df75-bee0-4818-b42d-a74c3169b2e1.png','icons8-컴퓨터-16.png','2022/04/12','1',1,421);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('bbb8d139-dbe8-4b48-afb6-2d0e09d329aa.png','dragon.png','2022/04/14','1',1,442);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('f1b29fa4-24ad-476f-8471-e98c5402cd09.png','bing.png','2022/05/28','1',1,462);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('9455bca7-143b-42b5-81da-c80e6a35fcd2.png','mari.png','2022/05/28','1',1,463);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b6c7aefd-e89d-4799-9728-1eb5099a04a6.png','cham.png','2022/05/28','1',1,464);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('bde92ee5-373b-48c2-bd0a-dc6e62bb6d51.png','bing.png','2022/05/28','1',1,465);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('7e1298c6-ef30-4f60-a8ab-7f85d62507ba.png','girl.png','2022/05/28','1',1,466);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('8d5e46f5-6919-4025-9ee0-2fa5c4df12f0.png','king.png','2022/05/28','1',1,467);
REM INSERTING into TBL_BOARD
SET DEFINE OFF;
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (2,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (3,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (5,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (6,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (7,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (81,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (47,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (61,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (83,'아맛아맛',2,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (84,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (85,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (86,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (87,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (88,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (89,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (90,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (91,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (92,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (93,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (94,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (95,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (96,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (97,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (98,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (99,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (100,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (101,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (102,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (103,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (104,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (105,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (106,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (107,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (108,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (109,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (110,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (111,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (112,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (113,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (114,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (115,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (116,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (117,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (118,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (119,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (120,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (121,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (122,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (123,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (124,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (125,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (126,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (127,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (128,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (129,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (130,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (131,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (132,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (133,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (134,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (135,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (136,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (137,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (138,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (139,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (140,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (141,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (142,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (143,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (144,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (145,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (146,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (147,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (148,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (149,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (150,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (151,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (152,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (153,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (154,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (155,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (156,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (157,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (158,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (159,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (160,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (161,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (162,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (163,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (164,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (165,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (166,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (167,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (168,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (169,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (170,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (171,'1234aa',4,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (172,'aa',5,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (173,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (174,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (175,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (176,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (177,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (178,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (179,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (180,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (181,'123422',4,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (182,'aa',4,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (183,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (184,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (185,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (186,'merongs',5,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (187,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (188,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (189,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (190,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (191,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (192,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (193,'아맛아맛',2,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (194,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (195,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (261,'공지사항',1,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (197,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (198,'글 제목',7,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (199,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (200,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (201,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (202,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (203,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (204,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (205,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (206,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (207,'글 제목',8,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (262,'진짜공지',0,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (209,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (210,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (211,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (212,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (213,'아맛아맛',2,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (214,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (215,'수정된 글 제목',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (216,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (217,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (218,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (219,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (220,'테스트123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (221,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (222,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (223,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (224,'글 제목',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (225,'수정된 글 제목',17,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (226,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (227,'글 제목',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (228,'글 제목',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (229,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (230,'테스트123',6,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (231,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (232,'aa',5,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (233,'아맛아맛',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (263,'진짜공지다',0,to_date('22/03/22','RR/MM/DD'),null,2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (264,'공지사항 작성 후 페이지 리디렉션 테스트',14,to_date('22/03/22','RR/MM/DD'),null,2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (270,'category',2,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (271,'cate2',6,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (272,'글번호 테스트',5,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (273,'파일 첨부 테스트',269,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (305,'avc',0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (306,'aa',0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (307,'aa',0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (301,'AA',5,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (302,'[rrhdwl]',5,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (303,'[공지]',1,to_date('22/03/28','RR/MM/DD'),null,2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (304,null,0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (308,'TEST',2,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (309,'썸네일 TEST',10,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (310,'갤러리',0,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (311,'dd',0,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (312,'ddd',0,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (313,'sdfsdf',0,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (314,'test',0,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (315,'TEST',0,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (316,'TEST2',1,to_date('22/03/28','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (321,'test',1,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (322,'test',3,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (323,'test',0,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (324,'test',1,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (325,'test',0,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (326,'testtesttesttest',4,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (341,'세로가 김',2,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (342,'가로가 김',4,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (361,'가로가 김',4,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (344,'가로가 김',7,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (345,'세로가 김',24,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (381,'가로가 김',0,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (382,'세로가 김',3,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (383,'계정',1,to_date('22/04/01','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (384,'탈퇴처리 TEST',31,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (401,'파일첨부',1,to_date('22/04/12','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (421,'123',4,to_date('22/04/12','RR/MM/DD'),'babamba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (441,'가나다라',0,to_date('22/04/14','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (442,'파일첨부 TEST',5,to_date('22/04/14','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (461,'test',0,to_date('22/05/28','RR/MM/DD'),'babamaba',0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (462,'test',3,to_date('22/05/28','RR/MM/DD'),'babamaba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (463,'test2',0,to_date('22/05/28','RR/MM/DD'),'babamaba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (464,'아주 잘 올라오는군',0,to_date('22/05/28','RR/MM/DD'),'babamaba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (465,'test',1,to_date('22/05/28','RR/MM/DD'),'babamba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (466,'test2',2,to_date('22/05/28','RR/MM/DD'),'babamba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (467,'server test',0,to_date('22/05/28','RR/MM/DD'),'babamba',3);
REM INSERTING into TBL_MEMBER
SET DEFINE OFF;
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('javaman','1234','자바맨',null,null,null,null,null,null,null,null,null,'0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('tamsasoo','1234','탐사수','경기도','포천시','영중면','경기도 포천시 영중면 양문로 151','1234','11129','경기도 포천시 영중면 양문로 151, 1234','경기도 포천시 영중면 양문리 833-2 영중면사무소,영중시립도서관','a@b.cd','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('odoung','1234','오둥이',null,null,null,null,null,null,null,null,null,'0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('babami','1234','바밤이','서울특별시','영등포구','영등포동3가','서울특별시 영등포구 영중로8길 5','바밤이집','07302','서울특별시 영등포구 영중로8길 5, 바밤이집(영등포동3가)','서울특별시 영등포구 영등포동3가 7-12','a@b.c','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('yermi','1234','예르미티쨔','서울특별시','영등포구','영등포동3가','서울특별시 영등포구 영중로8길 5','1234','07302','서울특별시 영등포구 영중로8길 5, 6층(영등포동3가)','서울특별시 영등포구 영등포동3가 7-12','kycasdzxc@naver.com','1','51203901');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('javaman2',null,null,null,null,null,null,null,null,null,null,null,'0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('babamba','1234','바밤바123','서울특별시','영등포구','영등포동3가','서울특별시 영등포구 영중로8길 5','d','07302','서울특별시 영등포구 영중로8길 5, dd(영등포동3가)','서울특별시 영등포구 영등포동3가 7-12','qq@d','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('babamaba','1234','babamba',null,null,null,null,null,null,null,null,'kycasdzxc@gmail.com','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('yermi2','1234','예르미','경기도','부천시','심곡동','경기도 부천시 부일로 425','102동','14635','경기도 부천시 부일로 425, 102동(심곡동)','경기도 부천시 심곡동 458-6 하이팰리스','admin@yermi.works','0',null);
REM INSERTING into TBL_MUSINSA_SAMPLE
SET DEFINE OFF;
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2439423,'월간디자인','월간 디자인 Vol.526 / 2022.04. 2022-23 CMF 디자인 사전','15,000원','https://store.musinsa.com/app/goods/2439423');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2396464,'패닉버튼','[돈패닉서울 3월호]BLU3','20,000원 15,000원','https://store.musinsa.com/app/goods/2396464');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2251162,'마리끌레르 패션쇼즈','2022 SPRING & SUMMER COLLECTION','12,000원','https://store.musinsa.com/app/goods/2251162');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2318805,'월간디자인','월간 디자인 Vol.524 / 2022.02 More Than jpg 모션 포스터.mov','15,000원','https://store.musinsa.com/app/goods/2318805');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2267526,'마리끌레르 패션쇼즈','Marie Claire Fashion shows 2021 FW & 2022 S/S COLLECTION','24,000원','https://store.musinsa.com/app/goods/2267526');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2242811,'월간디자인','월간 디자인 Vol.522 / 2021.12 2021 한국 디자인 연감','15,000원','https://store.musinsa.com/app/goods/2242811');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1964765,'월간디자인','월간 디자인 Vol. 516 / 2021.06 판타스틱 플랜트 디자인','15,000원','https://store.musinsa.com/app/goods/1964765');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1912968,'월간디자인','월간디자인 Vol. 514 / 2021.04 너 나의 동료가 돼라! 디자인 컬렉티브','15,000원','https://store.musinsa.com/app/goods/1912968');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2279604,'월간디자인','월간 디자인 Vol.523 / 2022.01 2022 <월간 디자인>이 주목한 디자이너','15,000원','https://store.musinsa.com/app/goods/2279604');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1591337,'디스이즈네버댓','thisisneverthat® Archives: 2010-2020','50,000원','https://store.musinsa.com/app/goods/1591337');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2082510,'서커스보이밴드','Beautiful Inventory A-20','12,800원','https://store.musinsa.com/app/goods/2082510');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1916446,'월간디자인','월간 디자인 Vol. 513 / 2021.03 디자인 용적률 500% Design Real Estate','15,000원','https://store.musinsa.com/app/goods/1916446');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284757,'패닉버튼','[돈패닉서울 8월호] Extreme Sports [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284757');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284760,'패닉버튼','[돈패닉서울 9월호] Chili and Eggs Party [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284760');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2336758,'패닉버튼','[돈패닉서울 2월호]HANYANG2서울','20,000원 15,000원','https://store.musinsa.com/app/goods/2336758');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281551,'패닉버튼','[돈패닉서울 1월호] Sound [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2281551');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1838782,'네버트라이네버노','너를 위한 호치민','18,500원','https://store.musinsa.com/app/goods/1838782');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2039232,'월간디자인','월간 디자인 Vol. 518 / 2021.08 부산을 여행하는 디자이너를 위한 안내서','15,000원','https://store.musinsa.com/app/goods/2039232');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2080767,'월간디자인','월간 디자인 Vol. 519 / 2021.09 디자인 레볼루션. 2021 광주디자인비엔날레','15,000원','https://store.musinsa.com/app/goods/2080767');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1707927,'에스디세븐','몸으로 기억하는 수영 SGL-BOK01 수영도서','15,000원','https://store.musinsa.com/app/goods/1707927');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027176,'빠르크 에디션','Carrier Pigeon no.17 [Vol.5 Issue 1]','32,000원','https://store.musinsa.com/app/goods/2027176');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1916269,'월간디자인','월간 디자인 Vol. 515 / 2021.05 대체 불가능한 미래 메타버스 딕셔너리','15,000원','https://store.musinsa.com/app/goods/1916269');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2190424,'월간디자인','월간 디자인 Vol.521 / 2021.11 정의할 수 없는 실험 뉴 크래프트맨십','15,000원','https://store.musinsa.com/app/goods/2190424');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027119,'빠르크 에디션','Carrier Pigeon no.8 [Vol.2 Issue 4]','32,000원','https://store.musinsa.com/app/goods/2027119');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2026992,'빠르크 에디션','Carrier Pigeon no.1 [Vol.1 Issue 1]','32,000원','https://store.musinsa.com/app/goods/2026992');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027103,'빠르크 에디션','Carrier Pigeon no.2 [Vol.1 Issue 2]','32,000원','https://store.musinsa.com/app/goods/2027103');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027175,'빠르크 에디션','Carrier Pigeon no.16 [Vol.4 Issue 4]','32,000원','https://store.musinsa.com/app/goods/2027175');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (20468,'리드페이지','리드페이지 이슈 0 조제 팔라','20,000원','https://store.musinsa.com/app/goods/20468');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027146,'빠르크 에디션','Carrier Pigeon no.14 [Vol.4 Issue 2]','32,000원','https://store.musinsa.com/app/goods/2027146');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284995,'패닉버튼','[돈패닉서울 12월호]ㅃr2이공이일™ [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284995');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027104,'빠르크 에디션','Carrier Pigeon no.4 [Vol.1 Issue 4]','32,000원','https://store.musinsa.com/app/goods/2027104');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2006690,'월간디자인','월간 디자인 Vol. 517 / 2021.07 F&B 디자인 클럽','15,000원','https://store.musinsa.com/app/goods/2006690');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2372718,'월간디자인','월간 디자인 Vol.525 / 2022.03. 게임 체인저가 된 게임 디자인 Game Design','15,000원','https://store.musinsa.com/app/goods/2372718');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111914,'매거진 비','매거진 B 이슈.26 한사 토이','14,000원 12,600원','https://store.musinsa.com/app/goods/111914');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027113,'빠르크 에디션','Carrier Pigeon no.5 [Vol.2 Issue 1]','32,000원','https://store.musinsa.com/app/goods/2027113');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (436331,'어라운드','어라운드 40호','15,000원','https://store.musinsa.com/app/goods/436331');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284440,'패닉버튼','[돈패닉서울 10월호] 설상가상현실[2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284440');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (546809,'어라운드','어라운드 46호','15,000원','https://store.musinsa.com/app/goods/546809');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027181,'빠르크 에디션','Carrier Pigeon no.18 [Vol.5 Issue 2]','32,000원','https://store.musinsa.com/app/goods/2027181');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027173,'빠르크 에디션','Carrier Pigeon no.15 [Vol.4 Issue 3]','32,000원','https://store.musinsa.com/app/goods/2027173');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (476967,'어라운드','어라운드 43호','15,000원','https://store.musinsa.com/app/goods/476967');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027114,'빠르크 에디션','Carrier Pigeon no.7 [Vol.2 Issue 3]','32,000원','https://store.musinsa.com/app/goods/2027114');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1916469,'월간디자인','월간 디자인 Vol. 511/ 2021.01 2021 월간 <디자인>이 주목한 디자이너 14팀','15,000원','https://store.musinsa.com/app/goods/1916469');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (332033,'어라운드','어라운드 34호','15,000원','https://store.musinsa.com/app/goods/332033');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (365130,'어라운드','어라운드 36호','15,000원','https://store.musinsa.com/app/goods/365130');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (302220,'어라운드','어라운드 32호','15,000원','https://store.musinsa.com/app/goods/302220');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027136,'빠르크 에디션','Carrier Pigeon no.12 [Vol.3 Issue 4]','32,000원','https://store.musinsa.com/app/goods/2027136');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2148904,'월간디자인','월간 디자인 Vol.520 / 2021.10 디자인으로 계승한 브랜드 헤리티지 45','15,000원','https://store.musinsa.com/app/goods/2148904');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (316553,'어라운드','어라운드 33호','15,000원','https://store.musinsa.com/app/goods/316553');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (344878,'어라운드','어라운드 35호','15,000원','https://store.musinsa.com/app/goods/344878');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (575564,'어라운드','어라운드 47호','15,000원','https://store.musinsa.com/app/goods/575564');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (619631,'어라운드','어라운드 49호','15,000원','https://store.musinsa.com/app/goods/619631');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (421101,'어라운드','어라운드 39호','15,000원','https://store.musinsa.com/app/goods/421101');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111903,'매거진 비','매거진 B 이슈.15 조셉조셉','14,000원 12,600원','https://store.musinsa.com/app/goods/111903');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (457330,'어라운드','어라운드 41호','15,000원','https://store.musinsa.com/app/goods/457330');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111913,'매거진 비','매거진 B 이슈.25 순토','14,000원 12,600원','https://store.musinsa.com/app/goods/111913');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281599,'패닉버튼','[돈패닉서울 5월호] True Folks [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2281599');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111909,'매거진 비','매거진 B 이슈.21 윌슨','14,000원 12,600원','https://store.musinsa.com/app/goods/111909');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (378331,'어라운드','어라운드 37호','15,000원','https://store.musinsa.com/app/goods/378331');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (491325,'어라운드','어라운드 44호','15,000원','https://store.musinsa.com/app/goods/491325');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (406545,'어라운드','어라운드 38호','15,000원','https://store.musinsa.com/app/goods/406545');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284434,'패닉버튼','[돈패닉서울 6월호] 미술관 옆 동물원 [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284434');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281431,'패닉버튼','[돈패닉서울 3월호] Outdoor [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2281431');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284435,'패닉버튼','[돈패닉서울 2월호] 살아돌아온 복 [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284435');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281600,'패닉버튼','[돈패닉서울 11월호] 유남생유남민 [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2281600');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281552,'패닉버튼','[돈패닉서울 12월호] Portrait [2020]','20,000원 15,000원','https://store.musinsa.com/app/goods/2281552');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284748,'패닉버튼','[돈패닉서울 7월호] TATTOO : UNDER THE SKIN [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2284748');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281598,'패닉버튼','[돈패닉서울 4월호] Re Creation [2021]','20,000원 15,000원','https://store.musinsa.com/app/goods/2281598');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2291013,'패닉버튼','[돈패닉서울 1월호] Don7Panic','20,000원 15,000원','https://store.musinsa.com/app/goods/2291013');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2285117,'엠엠엘지','[팔칠엠엠 일상체] Moment By Moment We say No Concept But Good Sense','50,000원','https://store.musinsa.com/app/goods/2285117');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2574660,'월간디자인','월간 디자인 Vol.528 / 2022.06. 해킹 젠더 바운더리 Gender Inclusive Design','15,000원','https://www.musinsa.com/app/goods/2574660');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2545637,'보그','보그 런웨이','13,000원','https://www.musinsa.com/app/goods/2545637');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2460009,'아메스 월드와이드','5/31 배송 [WOODZ X AMES]PHOTOBOOK','25,000원 22,500원','https://www.musinsa.com/app/goods/2460009');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2526130,'마리끌레르 패션쇼즈','마리끌레르 패션쇼즈 2022 F/W COLLECTION','12,000원','https://www.musinsa.com/app/goods/2526130');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2458835,'패닉버튼','[돈패닉서울 4월호] Why Vegan','20,000원 15,000원','https://www.musinsa.com/app/goods/2458835');
REM INSERTING into TBL_REPLY
SET DEFINE OFF;
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (64,'talend',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (65,'댓글 내용 수정',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (170,null,to_date('22/03/24','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (171,null,to_date('22/03/24','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (181,'d',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (182,null,to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (183,'ddd',to_date('22/03/29','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (184,null,to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (185,'rkrk',to_date('22/03/29','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (186,'dddddd',to_date('22/03/29','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (193,'test 내용이다',to_date('22/03/29','RR/MM/DD'),309,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (191,'내용',to_date('22/03/29','RR/MM/DD'),309,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (192,'test 내용이다',to_date('22/03/29','RR/MM/DD'),309,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (194,'dd',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (195,'aaaa',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (168,'ㅇㅇ',to_date('22/03/24','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (196,'ssss',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (197,'fgfffff',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (198,'ddd',to_date('22/03/29','RR/MM/DD'),309,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (201,'eotrmf',to_date('22/04/01','RR/MM/DD'),302,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (221,'QWEQWEQ',to_date('22/04/01','RR/MM/DD'),382,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (222,'QWEQWEQWE',to_date('22/04/01','RR/MM/DD'),382,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (241,'asdasd',to_date('22/04/12','RR/MM/DD'),384,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (242,'asdasdasd',to_date('22/04/12','RR/MM/DD'),384,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (89,'댓글 내용',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (91,'댓글 내용',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (100,'댓글 내용',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (102,'댓글 내용',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (153,'get.jsp 내용',to_date('22/03/24','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (154,'이것은 예시',to_date('22/03/24','RR/MM/DD'),273,'javaman');
--------------------------------------------------------
--  DDL for Index IDX_ATTACH_UUID_BNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_ATTACH_UUID_BNO" ON "TBL_ATTACH" ("UUID", "BNO" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007109
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007109" ON "TBL_MUSINSA_SAMPLE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_RNO" ON "TBL_REPLY" ("RNO") 
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
--  DDL for Index IDX_REPLY_RNO_BNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_REPLY_RNO_BNO" ON "TBL_REPLY" ("RNO", "BNO" DESC) 
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
--  DDL for Index TBL_MEMBER_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_MEMBER_EMAIL_UK" ON "TBL_MEMBER" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IDX_BOARD_BNO_CATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_BOARD_BNO_CATEGORY" ON "TBL_BOARD" ("BNO" DESC, "CATEGORY") 
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
--  DDL for Index IDX_ATTACH_UUID_BNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_ATTACH_UUID_BNO" ON "TBL_ATTACH" ("UUID", "BNO" DESC) 
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
--  DDL for Index IDX_BOARD_BNO_CATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_BOARD_BNO_CATEGORY" ON "TBL_BOARD" ("BNO" DESC, "CATEGORY") 
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
--  DDL for Index TBL_MEMBER_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_MEMBER_EMAIL_UK" ON "TBL_MEMBER" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007109
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007109" ON "TBL_MUSINSA_SAMPLE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_RNO" ON "TBL_REPLY" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IDX_REPLY_RNO_BNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDX_REPLY_RNO_BNO" ON "TBL_REPLY" ("RNO", "BNO" DESC) 
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
END;

/
--------------------------------------------------------
--  DDL for Procedure QUIT_PROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "QUIT_PROC" (P_ID TBL_MEMBER.ID%TYPE) IS
BEGIN
    UPDATE TBL_BOARD SET
    WRITER = NULL
    WHERE WRITER = P_ID;

    UPDATE TBL_REPLY SET
    WRITER = NULL
    WHERE WRITER = P_ID;

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
  ALTER TABLE "TBL_ATTACH" MODIFY ("ORIGIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "TBL_BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_MEMBER
--------------------------------------------------------

  ALTER TABLE "TBL_MEMBER" ADD CONSTRAINT "TBL_MEMBER_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TBL_MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_MUSINSA_SAMPLE
--------------------------------------------------------

  ALTER TABLE "TBL_MUSINSA_SAMPLE" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "TBL_REPLY" ADD CONSTRAINT "PK_RNO" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "TBL_ATTACH" ADD CONSTRAINT "FK_ATTACH_BNO" FOREIGN KEY ("BNO")
	  REFERENCES "TBL_BOARD" ("BNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "TBL_BOARD" ADD CONSTRAINT "FK_BOARD_WRITER" FOREIGN KEY ("WRITER")
	  REFERENCES "TBL_MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "TBL_REPLY" ADD CONSTRAINT "FK_REPLY_BNO" FOREIGN KEY ("BNO")
	  REFERENCES "TBL_BOARD" ("BNO") ENABLE;
  ALTER TABLE "TBL_REPLY" ADD CONSTRAINT "FK_REPLY_WRITER" FOREIGN KEY ("WRITER")
	  REFERENCES "TBL_MEMBER" ("ID") ENABLE;
