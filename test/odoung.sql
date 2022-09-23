--------------------------------------------------------
--  ������ ������ - �����-7��-23-2022   
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
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('adc7e27e-df94-4e51-80b3-d3a0fcc51b9c.png','���� ����.png','2022/03/28','1',1,315);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('e8a3b4ee-65e8-40a8-a0cb-87ffa30f3405.pptx','���������̼�1.pptx','2022/03/28','0',1,316);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('768c57c7-e68e-47c6-9d4f-034a1fcf6b28.png','JAVA-�����-060 (1).png','2022/03/29','1',1,321);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('ea7b8b13-8275-488c-be1f-3d81bb7880b1.zip','JAVA_����� (2).zip','2022/03/29','0',1,322);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('59126150-36fe-4f49-8d81-3ed6a5617ab7.zip','JAVA_����� (2).zip','2022/03/29','0',1,323);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b9600616-ff39-4803-b147-70e1aab047a0.png','JAVA-�����-060.png','2022/03/29','1',1,324);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('4881fb6f-b5e4-43ce-85af-98596c267128.zip','JAVA_����� (2).zip','2022/03/29','0',1,325);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('10d1ed3f-02d0-4a61-82fa-47fda06add9a.png','JAVA-�����-060 (1).png','2022/03/29','1',1,326);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b3e44233-d008-4eb5-b0c9-1073bf81cb6e.png','���ΰ� ��.png','2022/03/29','1',1,341);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('84e485c3-3d3a-4c73-9896-277e270ce584.png','���ΰ� ��.png','2022/03/29','1',1,342);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b1a8b000-bcf0-420b-97af-29e91e835e75.png','���ΰ� ��.png','2022/03/29','1',1,344);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('ed197827-2d8f-4a08-ac16-50c0624e3c01.png','���ΰ� ��.png','2022/03/29','1',1,345);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('2584c509-45cd-49ca-b8a3-f9c179f3b087.png','icons8-��ǻ��-16.png','2022/04/12','1',1,401);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('6496df75-bee0-4818-b42d-a74c3169b2e1.png','icons8-��ǻ��-16.png','2022/04/12','1',1,421);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('bbb8d139-dbe8-4b48-afb6-2d0e09d329aa.png','dragon.png','2022/04/14','1',1,442);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('f1b29fa4-24ad-476f-8471-e98c5402cd09.png','bing.png','2022/05/28','1',1,462);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('9455bca7-143b-42b5-81da-c80e6a35fcd2.png','mari.png','2022/05/28','1',1,463);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('b6c7aefd-e89d-4799-9728-1eb5099a04a6.png','cham.png','2022/05/28','1',1,464);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('bde92ee5-373b-48c2-bd0a-dc6e62bb6d51.png','bing.png','2022/05/28','1',1,465);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('7e1298c6-ef30-4f60-a8ab-7f85d62507ba.png','girl.png','2022/05/28','1',1,466);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,BNO) values ('8d5e46f5-6919-4025-9ee0-2fa5c4df12f0.png','king.png','2022/05/28','1',1,467);
REM INSERTING into TBL_BOARD
SET DEFINE OFF;
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (2,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (3,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (5,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (6,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (7,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (81,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (47,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (61,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (83,'�Ƹ��Ƹ�',2,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (84,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (85,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (86,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (87,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (88,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (89,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (90,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (91,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (92,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (93,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (94,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (95,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (96,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (97,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (98,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (99,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (100,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (101,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (102,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (103,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (104,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (105,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (106,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (107,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (108,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (109,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (110,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (111,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (112,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (113,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (114,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (115,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (116,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (117,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (118,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (119,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (120,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (121,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (122,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (123,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (124,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (125,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (126,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (127,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (128,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (129,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (130,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (131,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (132,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (133,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (134,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (135,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (136,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (137,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (138,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (139,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (140,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (141,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (142,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (143,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (144,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (145,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (146,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (147,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (148,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (149,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (150,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (151,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (152,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (153,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (154,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (155,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (156,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (157,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (158,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (159,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (160,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (161,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (162,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (163,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (164,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (165,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (166,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (167,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (168,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (169,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (170,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (171,'1234aa',4,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (172,'aa',5,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (173,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (174,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (175,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (176,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (177,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (178,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (179,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (180,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (181,'123422',4,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (182,'aa',4,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (183,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (184,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (185,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (186,'merongs',5,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (187,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (188,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (189,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (190,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (191,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (192,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (193,'�Ƹ��Ƹ�',2,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (194,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (195,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (261,'��������',1,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (197,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (198,'�� ����',7,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (199,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (200,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (201,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (202,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (203,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (204,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (205,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (206,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (207,'�� ����',8,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (262,'��¥����',0,to_date('22/03/22','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (209,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (210,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (211,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (212,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (213,'�Ƹ��Ƹ�',2,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (214,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (215,'������ �� ����',15,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (216,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (217,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (218,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (219,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (220,'�׽�Ʈ123',4,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (221,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (222,'aa',0,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (223,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (224,'�� ����',16,to_date('22/02/28','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (225,'������ �� ����',17,to_date('22/03/16','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (226,'merongs',4,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (227,'�� ����',5,to_date('22/03/04','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (228,'�� ����',6,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (229,'javaman',20,to_date('22/03/05','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (230,'�׽�Ʈ123',6,to_date('22/03/21','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (231,'1234',0,to_date('22/03/18','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (232,'aa',5,to_date('22/03/19','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (233,'�Ƹ��Ƹ�',1,to_date('22/03/21','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (263,'��¥������',0,to_date('22/03/22','RR/MM/DD'),null,2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (264,'�������� �ۼ� �� ������ ���𷺼� �׽�Ʈ',14,to_date('22/03/22','RR/MM/DD'),null,2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (270,'category',2,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (271,'cate2',6,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (272,'�۹�ȣ �׽�Ʈ',5,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (273,'���� ÷�� �׽�Ʈ',269,to_date('22/03/22','RR/MM/DD'),'javaman',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (305,'avc',0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (306,'aa',0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (307,'aa',0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (301,'AA',5,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (302,'[rrhdwl]',5,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (303,'[����]',1,to_date('22/03/28','RR/MM/DD'),null,2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (304,null,0,to_date('22/03/28','RR/MM/DD'),null,0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (308,'TEST',2,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (309,'����� TEST',10,to_date('22/03/28','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (310,'������',0,to_date('22/03/28','RR/MM/DD'),null,3);
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
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (341,'���ΰ� ��',2,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (342,'���ΰ� ��',4,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (361,'���ΰ� ��',4,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (344,'���ΰ� ��',7,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (345,'���ΰ� ��',24,to_date('22/03/29','RR/MM/DD'),null,3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (381,'���ΰ� ��',0,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (382,'���ΰ� ��',3,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (383,'����',1,to_date('22/04/01','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (384,'Ż��ó�� TEST',31,to_date('22/04/01','RR/MM/DD'),null,1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (401,'����÷��',1,to_date('22/04/12','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (421,'123',4,to_date('22/04/12','RR/MM/DD'),'babamba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (441,'�����ٶ�',0,to_date('22/04/14','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (442,'����÷�� TEST',5,to_date('22/04/14','RR/MM/DD'),'babamba',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (461,'test',0,to_date('22/05/28','RR/MM/DD'),'babamaba',0);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (462,'test',3,to_date('22/05/28','RR/MM/DD'),'babamaba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (463,'test2',0,to_date('22/05/28','RR/MM/DD'),'babamaba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (464,'���� �� �ö���±�',0,to_date('22/05/28','RR/MM/DD'),'babamaba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (465,'test',1,to_date('22/05/28','RR/MM/DD'),'babamba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (466,'test2',2,to_date('22/05/28','RR/MM/DD'),'babamba',3);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (467,'server test',0,to_date('22/05/28','RR/MM/DD'),'babamba',3);
REM INSERTING into TBL_MEMBER
SET DEFINE OFF;
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('javaman','1234','�ڹٸ�',null,null,null,null,null,null,null,null,null,'0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('tamsasoo','1234','Ž���','��⵵','��õ��','���߸�','��⵵ ��õ�� ���߸� �繮�� 151','1234','11129','��⵵ ��õ�� ���߸� �繮�� 151, 1234','��⵵ ��õ�� ���߸� �繮�� 833-2 ���߸�繫��,���߽ø�������','a@b.cd','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('odoung','1234','������',null,null,null,null,null,null,null,null,null,'0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('babami','1234','�ٹ���','����Ư����','��������','��������3��','����Ư���� �������� ���߷�8�� 5','�ٹ�����','07302','����Ư���� �������� ���߷�8�� 5, �ٹ�����(��������3��)','����Ư���� �������� ��������3�� 7-12','a@b.c','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('yermi','1234','������Ƽ¹','����Ư����','��������','��������3��','����Ư���� �������� ���߷�8�� 5','1234','07302','����Ư���� �������� ���߷�8�� 5, 6��(��������3��)','����Ư���� �������� ��������3�� 7-12','kycasdzxc@naver.com','1','51203901');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('javaman2',null,null,null,null,null,null,null,null,null,null,null,'0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('babamba','1234','�ٹ��123','����Ư����','��������','��������3��','����Ư���� �������� ���߷�8�� 5','d','07302','����Ư���� �������� ���߷�8�� 5, dd(��������3��)','����Ư���� �������� ��������3�� 7-12','qq@d','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('babamaba','1234','babamba',null,null,null,null,null,null,null,null,'kycasdzxc@gmail.com','0',null);
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN) values ('yermi2','1234','������','��⵵','��õ��','�ɰ','��⵵ ��õ�� ���Ϸ� 425','102��','14635','��⵵ ��õ�� ���Ϸ� 425, 102��(�ɰ)','��⵵ ��õ�� �ɰ 458-6 �����Ӹ���','admin@yermi.works','0',null);
REM INSERTING into TBL_MUSINSA_SAMPLE
SET DEFINE OFF;
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2439423,'����������','���� ������ Vol.526 / 2022.04. 2022-23 CMF ������ ����','15,000��','https://store.musinsa.com/app/goods/2439423');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2396464,'�дй�ư','[���дм��� 3��ȣ]BLU3','20,000�� 15,000��','https://store.musinsa.com/app/goods/2396464');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2251162,'���������� �мǼ���','2022 SPRING & SUMMER COLLECTION','12,000��','https://store.musinsa.com/app/goods/2251162');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2318805,'����������','���� ������ Vol.524 / 2022.02 More Than jpg ��� ������.mov','15,000��','https://store.musinsa.com/app/goods/2318805');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2267526,'���������� �мǼ���','Marie Claire Fashion shows 2021 FW & 2022 S/S COLLECTION','24,000��','https://store.musinsa.com/app/goods/2267526');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2242811,'����������','���� ������ Vol.522 / 2021.12 2021 �ѱ� ������ ����','15,000��','https://store.musinsa.com/app/goods/2242811');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1964765,'����������','���� ������ Vol. 516 / 2021.06 ��Ÿ��ƽ �÷�Ʈ ������','15,000��','https://store.musinsa.com/app/goods/1964765');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1912968,'����������','���������� Vol. 514 / 2021.04 �� ���� ���ᰡ �Ŷ�! ������ �÷�Ƽ��','15,000��','https://store.musinsa.com/app/goods/1912968');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2279604,'����������','���� ������ Vol.523 / 2022.01 2022 <���� ������>�� �ָ��� �����̳�','15,000��','https://store.musinsa.com/app/goods/2279604');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1591337,'������׹���','thisisneverthat�� Archives: 2010-2020','50,000��','https://store.musinsa.com/app/goods/1591337');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2082510,'��Ŀ�����̹��','Beautiful Inventory A-20','12,800��','https://store.musinsa.com/app/goods/2082510');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1916446,'����������','���� ������ Vol. 513 / 2021.03 ������ ������ 500% Design Real Estate','15,000��','https://store.musinsa.com/app/goods/1916446');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284757,'�дй�ư','[���дм��� 8��ȣ] Extreme Sports [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284757');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284760,'�дй�ư','[���дм��� 9��ȣ] Chili and Eggs Party [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284760');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2336758,'�дй�ư','[���дм��� 2��ȣ]HANYANG2����','20,000�� 15,000��','https://store.musinsa.com/app/goods/2336758');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281551,'�дй�ư','[���дм��� 1��ȣ] Sound [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2281551');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1838782,'�׹�Ʈ���̳׹���','�ʸ� ���� ȣġ��','18,500��','https://store.musinsa.com/app/goods/1838782');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2039232,'����������','���� ������ Vol. 518 / 2021.08 �λ��� �����ϴ� �����̳ʸ� ���� �ȳ���','15,000��','https://store.musinsa.com/app/goods/2039232');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2080767,'����������','���� ������ Vol. 519 / 2021.09 ������ �������. 2021 ���ֵ����κ񿣳���','15,000��','https://store.musinsa.com/app/goods/2080767');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1707927,'�����𼼺�','������ ����ϴ� ���� SGL-BOK01 ��������','15,000��','https://store.musinsa.com/app/goods/1707927');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027176,'����ũ �����','Carrier Pigeon no.17 [Vol.5 Issue 1]','32,000��','https://store.musinsa.com/app/goods/2027176');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1916269,'����������','���� ������ Vol. 515 / 2021.05 ��ü �Ұ����� �̷� ��Ÿ���� ��ųʸ�','15,000��','https://store.musinsa.com/app/goods/1916269');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2190424,'����������','���� ������ Vol.521 / 2021.11 ������ �� ���� ���� �� ũ����Ʈ�ǽ�','15,000��','https://store.musinsa.com/app/goods/2190424');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027119,'����ũ �����','Carrier Pigeon no.8 [Vol.2 Issue 4]','32,000��','https://store.musinsa.com/app/goods/2027119');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2026992,'����ũ �����','Carrier Pigeon no.1 [Vol.1 Issue 1]','32,000��','https://store.musinsa.com/app/goods/2026992');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027103,'����ũ �����','Carrier Pigeon no.2 [Vol.1 Issue 2]','32,000��','https://store.musinsa.com/app/goods/2027103');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027175,'����ũ �����','Carrier Pigeon no.16 [Vol.4 Issue 4]','32,000��','https://store.musinsa.com/app/goods/2027175');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (20468,'����������','���������� �̽� 0 ���� �ȶ�','20,000��','https://store.musinsa.com/app/goods/20468');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027146,'����ũ �����','Carrier Pigeon no.14 [Vol.4 Issue 2]','32,000��','https://store.musinsa.com/app/goods/2027146');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284995,'�дй�ư','[���дм��� 12��ȣ]��r2�̰����Ϣ� [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284995');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027104,'����ũ �����','Carrier Pigeon no.4 [Vol.1 Issue 4]','32,000��','https://store.musinsa.com/app/goods/2027104');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2006690,'����������','���� ������ Vol. 517 / 2021.07 F&B ������ Ŭ��','15,000��','https://store.musinsa.com/app/goods/2006690');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2372718,'����������','���� ������ Vol.525 / 2022.03. ���� ü������ �� ���� ������ Game Design','15,000��','https://store.musinsa.com/app/goods/2372718');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111914,'�Ű��� ��','�Ű��� B �̽�.26 �ѻ� ����','14,000�� 12,600��','https://store.musinsa.com/app/goods/111914');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027113,'����ũ �����','Carrier Pigeon no.5 [Vol.2 Issue 1]','32,000��','https://store.musinsa.com/app/goods/2027113');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (436331,'�����','����� 40ȣ','15,000��','https://store.musinsa.com/app/goods/436331');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284440,'�дй�ư','[���дм��� 10��ȣ] ���󰡻�����[2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284440');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (546809,'�����','����� 46ȣ','15,000��','https://store.musinsa.com/app/goods/546809');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027181,'����ũ �����','Carrier Pigeon no.18 [Vol.5 Issue 2]','32,000��','https://store.musinsa.com/app/goods/2027181');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027173,'����ũ �����','Carrier Pigeon no.15 [Vol.4 Issue 3]','32,000��','https://store.musinsa.com/app/goods/2027173');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (476967,'�����','����� 43ȣ','15,000��','https://store.musinsa.com/app/goods/476967');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027114,'����ũ �����','Carrier Pigeon no.7 [Vol.2 Issue 3]','32,000��','https://store.musinsa.com/app/goods/2027114');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (1916469,'����������','���� ������ Vol. 511/ 2021.01 2021 ���� <������>�� �ָ��� �����̳� 14��','15,000��','https://store.musinsa.com/app/goods/1916469');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (332033,'�����','����� 34ȣ','15,000��','https://store.musinsa.com/app/goods/332033');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (365130,'�����','����� 36ȣ','15,000��','https://store.musinsa.com/app/goods/365130');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (302220,'�����','����� 32ȣ','15,000��','https://store.musinsa.com/app/goods/302220');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2027136,'����ũ �����','Carrier Pigeon no.12 [Vol.3 Issue 4]','32,000��','https://store.musinsa.com/app/goods/2027136');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2148904,'����������','���� ������ Vol.520 / 2021.10 ���������� ����� �귣�� �츮Ƽ�� 45','15,000��','https://store.musinsa.com/app/goods/2148904');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (316553,'�����','����� 33ȣ','15,000��','https://store.musinsa.com/app/goods/316553');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (344878,'�����','����� 35ȣ','15,000��','https://store.musinsa.com/app/goods/344878');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (575564,'�����','����� 47ȣ','15,000��','https://store.musinsa.com/app/goods/575564');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (619631,'�����','����� 49ȣ','15,000��','https://store.musinsa.com/app/goods/619631');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (421101,'�����','����� 39ȣ','15,000��','https://store.musinsa.com/app/goods/421101');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111903,'�Ű��� ��','�Ű��� B �̽�.15 ��������','14,000�� 12,600��','https://store.musinsa.com/app/goods/111903');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (457330,'�����','����� 41ȣ','15,000��','https://store.musinsa.com/app/goods/457330');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111913,'�Ű��� ��','�Ű��� B �̽�.25 ����','14,000�� 12,600��','https://store.musinsa.com/app/goods/111913');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281599,'�дй�ư','[���дм��� 5��ȣ] True Folks [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2281599');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (111909,'�Ű��� ��','�Ű��� B �̽�.21 ����','14,000�� 12,600��','https://store.musinsa.com/app/goods/111909');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (378331,'�����','����� 37ȣ','15,000��','https://store.musinsa.com/app/goods/378331');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (491325,'�����','����� 44ȣ','15,000��','https://store.musinsa.com/app/goods/491325');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (406545,'�����','����� 38ȣ','15,000��','https://store.musinsa.com/app/goods/406545');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284434,'�дй�ư','[���дм��� 6��ȣ] �̼��� �� ������ [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284434');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281431,'�дй�ư','[���дм��� 3��ȣ] Outdoor [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2281431');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284435,'�дй�ư','[���дм��� 2��ȣ] ��Ƶ��ƿ� �� [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284435');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281600,'�дй�ư','[���дм��� 11��ȣ] ������������ [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2281600');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281552,'�дй�ư','[���дм��� 12��ȣ] Portrait [2020]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2281552');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2284748,'�дй�ư','[���дм��� 7��ȣ] TATTOO : UNDER THE SKIN [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2284748');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2281598,'�дй�ư','[���дм��� 4��ȣ] Re Creation [2021]','20,000�� 15,000��','https://store.musinsa.com/app/goods/2281598');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2291013,'�дй�ư','[���дм��� 1��ȣ] Don7Panic','20,000�� 15,000��','https://store.musinsa.com/app/goods/2291013');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2285117,'��������','[��ĥ���� �ϻ�ü] Moment By Moment We say No Concept But Good Sense','50,000��','https://store.musinsa.com/app/goods/2285117');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2574660,'����������','���� ������ Vol.528 / 2022.06. ��ŷ ���� �ٿ���� Gender Inclusive Design','15,000��','https://www.musinsa.com/app/goods/2574660');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2545637,'����','���� ������','13,000��','https://www.musinsa.com/app/goods/2545637');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2460009,'�Ƹ޽� ������̵�','5/31 ��� [WOODZ X AMES]PHOTOBOOK','25,000�� 22,500��','https://www.musinsa.com/app/goods/2460009');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2526130,'���������� �мǼ���','���������� �мǼ��� 2022 F/W COLLECTION','12,000��','https://www.musinsa.com/app/goods/2526130');
Insert into TBL_MUSINSA_SAMPLE (NO,TITLE,INFO,PRICE,LINK) values (2458835,'�дй�ư','[���дм��� 4��ȣ] Why Vegan','20,000�� 15,000��','https://www.musinsa.com/app/goods/2458835');
REM INSERTING into TBL_REPLY
SET DEFINE OFF;
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (64,'talend',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (65,'��� ���� ����',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (170,null,to_date('22/03/24','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (171,null,to_date('22/03/24','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (181,'d',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (182,null,to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (183,'ddd',to_date('22/03/29','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (184,null,to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (185,'rkrk',to_date('22/03/29','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (186,'dddddd',to_date('22/03/29','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (193,'test �����̴�',to_date('22/03/29','RR/MM/DD'),309,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (191,'����',to_date('22/03/29','RR/MM/DD'),309,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (192,'test �����̴�',to_date('22/03/29','RR/MM/DD'),309,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (194,'dd',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (195,'aaaa',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (168,'����',to_date('22/03/24','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (196,'ssss',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (197,'fgfffff',to_date('22/03/29','RR/MM/DD'),273,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (198,'ddd',to_date('22/03/29','RR/MM/DD'),309,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (201,'eotrmf',to_date('22/04/01','RR/MM/DD'),302,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (221,'QWEQWEQ',to_date('22/04/01','RR/MM/DD'),382,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (222,'QWEQWEQWE',to_date('22/04/01','RR/MM/DD'),382,null);
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (241,'asdasd',to_date('22/04/12','RR/MM/DD'),384,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (242,'asdasdasd',to_date('22/04/12','RR/MM/DD'),384,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (89,'��� ����',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (91,'��� ����',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (100,'��� ����',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (102,'��� ����',to_date('22/03/23','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (153,'get.jsp ����',to_date('22/03/24','RR/MM/DD'),273,'javaman');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (154,'�̰��� ����',to_date('22/03/24','RR/MM/DD'),273,'javaman');
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
