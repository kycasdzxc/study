--------------------------------------------------------
--  ������ ������ - �����-7��-23-2022   
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
	"SPEAK" VARCHAR2(500 BYTE) DEFAULT '������ �ݰ�����!'
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
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('f8be5781-6273-4949-856c-8e9e04aa2005.png','��������.png','2022/04/19','1',1,'oovfree');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('c1f212e5-ff0a-4cc4-b516-6d2552879115.jpg','dullin.jpg','2022/04/16','1',1,'newdul');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('243f1fec-630d-4545-beba-5596bd9b5c59.png','bibibik.png','2022/04/19','1',1,'bibibik1697');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('0b8726c1-2fbc-4c01-bf61-d21fc36f0510.png','boy.png','2022/04/14','1',1,'chan');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('0d65d2b9-b76e-480d-a045-2bd1a8cb9deb.png','Nook.png','2022/04/17','1',1,'nook');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('4aa38c97-ab1a-4de2-b9a4-0bffb474cc49.png','char4.png','2022/04/19','1',1,'inadang');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('7f2882ee-bf9a-41d8-9e57-c8e850b7bf1f.jpg','14297E35500430621A.jpg','2022/04/19','1',1,'woong');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('661f6195-ba11-4332-9982-b6a5633fc5d9.png','���� ����.png','2022/04/19','1',1,'javaboy');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('db3b84fc-f661-46cb-870e-5050656b048b.png','noimage.png','2022/04/20','1',1,'hihi');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('fde4599d-9d60-4dc9-8fa3-4d3a8b8eabcb.png','adfaf.png','2022/04/20','1',1,'kingfish');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('c5c888cb-2988-49a2-94c1-92e4a513546b.png','79a948ca-8762-44a6-b54b-b331b7aff794.png','2022/04/21','1',1,'test');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('982b9521-30c7-424d-8fdd-0b95d0fc51aa.jpg','meaning-of-Jesus-resurrection.jpg','2022/04/21','1',1,'jesus');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('60c8d197-842a-4f84-80ff-0c2198548ce0.jpeg','320CA43F-2D78-4542-B7A1-9A9A7B10B829.jpeg','2022/04/21','1',1,'9626wndud');
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('a72974af-ca4b-4764-8cf2-77f41ca879af.webp','l_2021091902000980800207612.webp','2022/05/05','0',1,null);
Insert into TBL_ATTACH (UUID,ORIGIN,PATH,IMAGE,ORD,ID) values ('32fea861-7ea5-49bc-8f12-aea338165c07.jpg','5bb32285000ed2738de6.jpg','2022/05/05','1',1,'javaman');
REM INSERTING into TBL_BOARD
SET DEFINE OFF;
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (252,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (253,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (254,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'���߷���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (255,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (256,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (257,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'�ܱ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (258,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'��ũ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (259,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (260,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'Źȣ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (261,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'�ÿ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (262,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (263,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'�볲��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (264,'������ �ʹ� ����~ ������',0,to_date('22/04/17','RR/MM/DD'),'��ÿ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (265,'���� ������� �� ���~ ����!',2,to_date('22/04/17','RR/MM/DD'),'�帮��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (266,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'�轼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (267,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (268,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'ŷ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (269,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',1,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (270,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'ȣ����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (271,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (272,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (273,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'���߷���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (274,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (275,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (276,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'�ܱ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (277,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'��ũ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (278,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (279,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'Źȣ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (280,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'�ÿ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (281,'������ ���� �м�����~ ����',1,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (282,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'�볲��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (283,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (284,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (285,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (286,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'���߷���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (287,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (288,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (289,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'�ܱ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (290,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'��ũ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (291,'���� �������༭ ����! �ưŵ�',1,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (292,'�̸��� � ������ �˷�����! �׷���',3,to_date('22/04/17','RR/MM/DD'),'Źȣ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (293,'������ ���� �м�����~ ����',3,to_date('22/04/17','RR/MM/DD'),'�ÿ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (294,'���� ���� �ϳ� ������? ��������',5,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (295,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',1,to_date('22/04/17','RR/MM/DD'),'�볲��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (296,'������ �ʹ� ����~ ������',6,to_date('22/04/17','RR/MM/DD'),'��ÿ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (297,'���� ������� �� ���~ ����!',3,to_date('22/04/17','RR/MM/DD'),'�帮��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (298,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'�轼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (299,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',4,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (300,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',5,to_date('22/04/17','RR/MM/DD'),'ŷ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (226,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'Źȣ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (203,'������ �ʹ� ����~ ������',0,to_date('22/04/17','RR/MM/DD'),'�帮��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (204,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (205,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (206,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'ŷ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (207,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (208,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'ȣ����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (209,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (210,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'���߷���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (211,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'��ÿ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (212,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (213,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (214,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'�ܱ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (215,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'��ũ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (216,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',1,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (217,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'Źȣ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (218,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'�ÿ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (219,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (220,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'�轼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (221,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (224,'������ �ʹ� ����~ ������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (223,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'�볲��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (225,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'�ÿ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (227,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (228,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'��ũ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (229,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'�ܱ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (230,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (231,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (232,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'���߷���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (233,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'�轼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (234,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (235,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'ȣ����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (236,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (237,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'ŷ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (238,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (239,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (240,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'�帮��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (241,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'��ÿ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (242,'���� ���� �ϳ� ������? ��������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (243,'������ ���� �м�����~ ����',0,to_date('22/04/17','RR/MM/DD'),'�볲��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (244,'������ �ʹ� ����~ ������',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (245,'���� ������� �� ���~ ����!',0,to_date('22/04/17','RR/MM/DD'),'��ÿ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (246,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',0,to_date('22/04/17','RR/MM/DD'),'�帮��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (247,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',0,to_date('22/04/17','RR/MM/DD'),'�轼',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (248,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',0,to_date('22/04/17','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (249,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',0,to_date('22/04/17','RR/MM/DD'),'ŷ',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (250,'���� �������༭ ����! �ưŵ�',0,to_date('22/04/17','RR/MM/DD'),'������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (251,'�̸��� � ������ �˷�����! �׷���',0,to_date('22/04/17','RR/MM/DD'),'ȣ����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (189,'������ �Դٰ��ϴ�~',13,to_date('22/04/15','RR/MM/DD'),'�����̴�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (900,'��ħü�� ��� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (901,'������ Ư���� ���� ���� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (902,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (903,'�ʱ��������� ������ ����� �ִٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (904,'������ ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (905,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (906,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (907,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (908,'ī���� �ٲ�� �ϸ� ���϶� ����������!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (909,'������� ��ȸ�ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (910,'���˺��� ���� �������� ���̴ٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (911,'�ʷվƱ͸� �� �迡 �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (912,'���ο� �ֹ��� �̻�� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (913,'�ڹ������� ���� ���� �ִٰ� �Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (914,'�̺�Ʈ ���� īŻ�α� ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (915,'Ŀ�󼶿�.. KKK�� �´ٰ� �Ѵٱ���!!!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (916,'��ħü�� ��� �����Ѵٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (917,'������ Ư���� ���� ���� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (918,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (919,'�ʱ��������� ������ ����� �ִٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (920,'������ ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (921,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (922,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (923,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (924,'ī���� �ٲ�� �ϸ� ���϶� ����������!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (925,'������� ��ȸ�ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (926,'���˺��� ���� �������� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (927,'�ʷվƱ͸� �� �迡 �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (928,'���ο� �ֹ��� �̻�� �����̴ٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (929,'�ڹ������� ���� ���� �ִٰ� �Ѵٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (930,'�̺�Ʈ ���� īŻ�α� ����̴ٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (931,'Ŀ�󼶿�.. KKK�� �´ٰ� �Ѵٱ���!!!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (932,'��ħü�� ��� �����Ѵٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (933,'������ Ư���� ���� ���� ���̴ٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (934,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (935,'�ʱ��������� ������ ����� �ִٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (936,'������ ����̴ٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (937,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (938,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (939,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (940,'ī���� �ٲ�� �ϸ� ���϶� ����������!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (941,'������� ��ȸ�ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (942,'���˺��� ���� �������� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (943,'�ʷվƱ͸� �� �迡 �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (944,'���ο� �ֹ��� �̻�� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (945,'�ڹ������� ���� ���� �ִٰ� �Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (946,'�̺�Ʈ ���� īŻ�α� ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (947,'Ŀ�󼶿�.. KKK�� �´ٰ� �Ѵٱ���!!!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (948,'��ħü�� ��� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (949,'������ Ư���� ���� ���� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (950,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (951,'�ʱ��������� ������ ����� �ִٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (952,'������ ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (953,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (954,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (955,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (956,'ī���� �ٲ�� �ϸ� ���϶� ����������!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (957,'������� ��ȸ�ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (958,'���˺��� ���� �������� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (959,'�ʷվƱ͸� �� �迡 �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (960,'���ο� �ֹ��� �̻�� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (961,'�ڹ������� ���� ���� �ִٰ� �Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (962,'�̺�Ʈ ���� īŻ�α� ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (963,'Ŀ�󼶿�.. KKK�� �´ٰ� �Ѵٱ���!!!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (964,'��ħü�� ��� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (965,'������ Ư���� ���� ���� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (966,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (967,'�ʱ��������� ������ ����� �ִٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (968,'������ ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (969,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (970,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (971,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (972,'ī���� �ٲ�� �ϸ� ���϶� ����������!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (973,'������� ��ȸ�ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (974,'���˺��� ���� �������� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (975,'�ʷվƱ͸� �� �迡 �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (976,'���ο� �ֹ��� �̻�� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (977,'�ڹ������� ���� ���� �ִٰ� �Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (978,'�̺�Ʈ ���� īŻ�α� ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (979,'Ŀ�󼶿�.. KKK�� �´ٰ� �Ѵٱ���!!!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (980,'��ħü�� ��� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (981,'������ Ư���� ���� ���� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (982,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (983,'�ʱ��������� ������ ����� �ִٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (984,'������ ����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (985,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (986,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (987,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (988,'ī���� �ٲ�� �ϸ� ���϶� ����������!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (989,'������� ��ȸ�ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (990,'���˺��� ���� �������� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (991,'�ʷվƱ͸� �� �迡 �����Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (992,'���ο� �ֹ��� �̻�� �����̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (993,'�ڹ������� ���� ���� �ִٰ� �Ѵٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (994,'�̺�Ʈ ���� īŻ�α� ����̴ٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (995,'Ŀ�󼶿�.. KKK�� �´ٰ� �Ѵٱ���!!!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (996,'��ħü�� ��� �����Ѵٱ���!',1,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (997,'������ Ư���� ���� ���� ���̴ٱ���!',0,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (998,'Ư�� ��齺�� �����Ǹ� �����Ѵٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (999,'�ʱ��������� ������ ����� �ִٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1000,'������ ����̴ٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1001,'������ ���簡���� �� �� ���ݿ� �����Ѵٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1002,'�̹� �� �Ͽ��Ͽ� ���Ķ� �� �����̴ٱ���!',2,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1003,'����ó�� ���� ������ �����ؾ��Ѵٱ���!',4,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1004,'ī���� �ٲ�� �ϸ� ���϶� ����������!',6,to_date('22/04/17','RR/MM/DD'),'�ʱ�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1061,'���',10,to_date('22/04/18','RR/MM/DD'),'�����̴�',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1043,'������ �ݰ�����~',7,to_date('22/04/18','RR/MM/DD'),'�迹��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1081,'������',9,to_date('22/04/19','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1082,'��������',5,to_date('22/04/19','RR/MM/DD'),'�̳���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1101,'���� �ٷ�',8,to_date('22/04/19','RR/MM/DD'),'�����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1102,'�����ߴ� ��¥',14,to_date('22/04/19','RR/MM/DD'),'�׾ƾ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1121,'����',5,to_date('22/04/19','RR/MM/DD'),'�̳���',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1122,'������',8,to_date('22/04/19','RR/MM/DD'),'�׾ƾ�',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1123,'���뼮',5,to_date('22/04/19','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1124,'���뼮',4,to_date('22/04/19','RR/MM/DD'),'����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1125,'������ ���� ���úη�',10,to_date('22/04/19','RR/MM/DD'),'����',1);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1141,'����!',8,to_date('22/04/19','RR/MM/DD'),'����������������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1181,'�� sql ������ ���',13,to_date('22/04/20','RR/MM/DD'),'����������������',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1201,'��������',2,to_date('22/04/20','RR/MM/DD'),'ī��ī��',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1202,'������ �޴���',15,to_date('22/04/20','RR/MM/DD'),'�����',2);
Insert into TBL_BOARD (BNO,TITLE,HITCOUNT,REGDATE,WRITER,CATEGORY) values (1242,'test title',3,to_date('22/05/05','RR/MM/DD'),null,1);
REM INSERTING into TBL_CHAT
SET DEFINE OFF;
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (81,'��ÿ','�ʱ�','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (82,'����','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (83,'�轼','�ʱ�','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (84,'��','ŷ','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (91,'����','�ÿ�','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (92,'�볲��','����','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (87,'��','�帮��','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (93,'������','����','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (94,'����','�ÿ�','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (90,'������','����','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (95,'�볲��','����','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (96,'���߷���','������','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (97,'������','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (98,'Źȣ','������','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (99,'���߷���','����','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (100,'����','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (101,'Źȣ','����','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (102,'���߷���','ŷ','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (103,'ŷ','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (104,'Źȣ','ŷ','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (105,'�ܱ','ȣ����','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (106,'ȣ����','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (107,'��ÿ','ȣ����','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (108,'�ܱ','�ʱ�','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (109,'�ʱ�','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (110,'��ÿ','�ʱ�','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (111,'�ܱ','�迹��','������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (112,'�迹��','����','�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (113,'��ÿ','�迹��','���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (142,'Źȣ','�迹��','�ȴ� ���� Ÿ�ھ�~ ����',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (122,'��������','�����̴�','�� �� �ٺ���',to_date('22/04/17','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (143,'Źȣ','������','�ȳ�, �� �̸��� Źȣ��~ ����',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (161,'�迹��','������','������ �ݰ���~',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (162,'�迹��','ȣ����','������ �ݰ���~',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (163,'�迹��','����','������ �ݰ���~',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (181,'�迹��','�ִ��Ǽҳ��','���õ� ���� �����??',to_date('22/04/18','RR/MM/DD'),to_date('22/04/18','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (182,'�迹��','�ִ��Ǽҳ��','�̷��� �������ϴ� �� �� ������~???',to_date('22/04/18','RR/MM/DD'),to_date('22/04/18','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (183,'�迹��','�ִ��Ǽҳ��','���ϸ𷹸� �츮 ���� ���ϱ�, ���� ����ʹ�?',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (201,'�����̴�','����','���',to_date('22/04/18','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (221,'���뼮','���뼮','�ȳ�?',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (50,'�����̴�','�迹��','�˶��',to_date('22/04/16','RR/MM/DD'),to_date('22/04/17','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (51,'��������','�����̴�','������',to_date('22/04/16','RR/MM/DD'),to_date('22/04/18','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (222,'���뼮','����','������?',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (223,'�̳���','����','����������������',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (224,'�̳���','�迹��','�о�
',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (225,'���뼮','�̳���','�ο��?',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (226,'�迹��','�̳���','�о����ϴ�!',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (227,'����','�̳���','���� 3�� �� ħ?',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (228,'����','�̳���','������ ������',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (229,'����������������','����','fadsfasdf',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (241,'����������������','�̳����','�����������������Ĥĺ�������',to_date('22/04/19','RR/MM/DD'),to_date('22/04/19','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (261,'����������������','�����̴�','fasdfasdfasdf',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (262,'�̳����','����������������','����!',to_date('22/04/19','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (263,'����������������','�����','�溸����',to_date('22/04/19','RR/MM/DD'),to_date('22/04/20','RR/MM/DD'));
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (281,'�׽�Ʈ','�迹��','�׽�Ʈ�Դϴ�.',to_date('22/04/21','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (301,'�ڹٸ�','������','�ҷ����',to_date('22/05/05','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (302,'�ڹٸ�','������','����',to_date('22/05/05','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (321,'�迹��','�ܱ','�ܱ �ȴ�?',to_date('22/05/28','RR/MM/DD'),null);
Insert into TBL_CHAT (CNO,SENDER,RECEIVER,CONTENT,S_DATE,R_DATE) values (322,'�迹��','��ÿ','��ÿ �ȳ�? �츮 ���� �� �� ��������~',to_date('22/05/28','RR/MM/DD'),null);
REM INSERTING into TBL_MEMBER
SET DEFINE OFF;
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mylove','0707','�ִ��Ǽҳ��','����Ư����','��õ��','���ﵿ','����Ư���� ��õ�� �����50�� 89','103�� 2201ȣ','08563','����Ư���� ��õ�� �����50�� 89, 103�� 2201ȣ(���ﵿ, ���;���Ʈ)','����Ư���� ��õ�� ���ﵿ 5-13 ���;���Ʈ','juhui7955@daum.net','1','32568194','���� ������̴�! ��!!!! �Ҹ� �ֳ�!!!!!!! ? ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('newdul','1234','��������',null,null,null,null,null,null,null,null,'yeopiya@gmail.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('woon','1126','������',null,null,null,null,null,null,null,null,'mail@mail.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('nook','1234','�ʱ�',null,null,null,null,null,null,null,null,'nook@dongs.co.kr','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('bibibik','1234','����',null,null,null,null,null,null,null,null,'bibibik@babamba.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('dullin','1234','�����̴�',null,null,null,null,null,null,null,null,'dutnehdduq@naver.com','1','29568377','010 3001 5858 CALL ME BABY');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('chan','0000','�迹��','����Ư����','����','�ұ���','����Ư���� ���� �ұ��� 51','1234','03358','����Ư���� ���� �ұ��� 51, 1234(�ұ���)','����Ư���� ���� �ұ��� 272-2 �ұ��ʵ��б�','kycasdzxc@naver.com','1','95617847','�𿩺���, ������ ��');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('test','1234','�׽�Ʈ','����Ư����','����','�ұ���','����Ư���� ���� �ұ���6�� 10-10','����','03364','����Ư���� ���� �ұ���6�� 10-10, ����(�ұ���, �ұ��� ��.�� �� �ټ�������)','����Ư���� ���� �ұ��� 8-156 �ұ��� ��.�� �� �ټ�������','test@gmail.com','0',null,'������ �ݰ�����!!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('john','1234','��',null,null,null,null,null,null,null,null,null,'0',null,'�� ���� ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('horang','1234','ȣ����',null,null,null,null,null,null,null,null,null,'0',null,'���ʿ��� ȣ����, ���ʿ��� Ÿ�̰�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('ham','1234','�ܱ',null,null,null,null,null,null,null,null,null,'0',null,'���� ���� �� ���ִ�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('michel','1234','��ÿ',null,null,null,null,null,null,null,null,null,'0',null,'�߿��� �� Ÿ�̹�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('tank','1234','��ũ',null,null,null,null,null,null,null,null,null,'0',null,'ȸ�� �ٸ��� ȸ�� �������� ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('apple','1234','����',null,null,null,null,null,null,null,null,null,'0',null,'������� ��� ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('bing','1234','����',null,null,null,null,null,null,null,null,null,'0',null,'�����ϸ� �Ϻ���');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('king','1234','ŷ',null,null,null,null,null,null,null,null,null,'0',null,'����� ��');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('tako','1234','Źȣ',null,null,null,null,null,null,null,null,null,'0',null,'1���� ��');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('sion','1234','�ÿ�',null,null,null,null,null,null,null,null,null,'0',null,'�뼭�� ������ ������� �߲�ġ�� ���� ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mong','1234','����',null,null,null,null,null,null,null,null,null,'0',null,'������, ������, �������� ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mari','1234','����',null,null,null,null,null,null,null,null,null,'0',null,'�Ǵ� �� ���δ�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('dream','1234','�帮��',null,null,null,null,null,null,null,null,null,'0',null,'������ ���� ȣ�� �������� ȣ��');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('cham','1234','������',null,null,null,null,null,null,null,null,null,'0',null,'�λ� �� ��');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('jorz','1234','������',null,null,null,null,null,null,null,null,null,'0',null,'���� �㰡 ������ ���� ������ �ִ�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('goni','1234','���߷���',null,null,null,null,null,null,null,null,null,'0',null,'10������ �ϸ��� �ϳ��� ���ۿ� ���� �ʴ´�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('peter','1234','����',null,null,null,null,null,null,null,null,null,'0',null,'�罿 ���� �ƹ��� �𸥴�');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('jack','1234','�轼',null,null,null,null,null,null,null,null,null,'0',null,'���� �귣��');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('mami','1234','����',null,null,null,null,null,null,null,null,null,'0',null,'������ ���� ����, ���̴� �� ����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('dragon','1234','�볲��',null,null,null,null,null,null,null,null,null,'0',null,'��빮');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('oovfree','1234','���뼮',null,null,null,null,null,null,null,null,'oovfree@naver.com','0','25829970','������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('inadang','1234','�̳����','����Ư����ġ��','��������','����','����Ư����ġ�� �������� ���ʷ�35���� 46','13','63599','����Ư����ġ�� �������� ���ʷ�35���� 46, 13(����)','����Ư����ġ�� �������� ���� 1252-1 ������ ���ָ���Ʈ','ina9377@gmail.com','0',null,'������ �ݰ�����!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('bibibik1697','1234','����',null,null,null,null,null,null,null,null,'rla10321@naver.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('woong','1234','�����',null,null,null,null,null,null,null,null,'rbdnd112@naver.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('javaboy','1234','����������������','����Ư����ġ��','���ֽ�','������','����Ư����ġ�� ���ֽ� ������ 311','2323','63105','����Ư����ġ�� ���ֽ� ������ 311, 2323(������)','����Ư����ġ�� ���ֽ� ������ 2350','hyeong901@naver.com','0',null,'����');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('kingfish','5678','ŷ�ǽ�','����Ư����','��������','��������3��','����Ư���� �������� ���߷�8�� 6','���� 777��','07302','����Ư���� �������� ���߷�8�� 6, ���� 777��(��������3��)','����Ư���� �������� ��������3�� 8-1 ��������','goodday759@naver.com','0','47160249','������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('hihi','1234','ī��ī��',null,null,null,null,null,null,null,null,'123@naver.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('jesus','1234','������',null,null,null,null,null,null,null,null,'jesus@naver.com','0',null,'������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('javaman','1234','�ڹٸ�','��⵵','��õ��','�ɰ','��⵵ ��õ�� ���Ϸ� 425',null,'14635','��⵵ ��õ�� ���Ϸ� 425(�ɰ)','��⵵ ��õ�� �ɰ 458-6 �����Ӹ���','lepelaka@gmail.com','1','10381999','������ �ݰ�����!');
Insert into TBL_MEMBER (ID,PW,NAME,SI,SGG,EMD,ROADADDR,ADDRDETAIL,ZIPNO,ROADFULLADDR,JIBUNADDR,EMAIL,AUTH,AUTH_TOKEN,SPEAK) values ('9626wndud','dk9626dk','������̽�Ƽ','����Ư����','��õ��','���ﵿ','����Ư���� ��õ�� �����50�� 89','103�� 2201ȣ','08563','����Ư���� ��õ�� �����50�� 89, 103�� 2201ȣ(���ﵿ, ���;���Ʈ)','����Ư���� ��õ�� ���ﵿ 5-13 ���;���Ʈ','7955wndud@naver.com','0',null,'ȣ���� ¬¬��');
REM INSERTING into TBL_REPLY
SET DEFINE OFF;
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (563,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),223,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (558,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),221,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (564,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),223,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (565,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),223,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (566,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),223,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (102,'�Դٰ���',to_date('22/04/16','RR/MM/DD'),189,'��������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (567,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),224,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (568,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),224,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (121,'������ �ݰ�����~',to_date('22/04/17','RR/MM/DD'),189,'�迹��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (569,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),224,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (570,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),224,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (571,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),225,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (572,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),225,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (573,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),225,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (574,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),225,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (575,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),226,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (576,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),226,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (577,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),226,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (578,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),226,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (579,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),227,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (580,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),227,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (581,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),227,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (582,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),227,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (583,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),228,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (584,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),228,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (585,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),228,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (586,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),228,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (587,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),229,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (588,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),229,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (589,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),229,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (590,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),229,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (591,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),230,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (592,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),230,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (593,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),230,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (594,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),230,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (595,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),231,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (596,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),231,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (597,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),231,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (598,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),231,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (599,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),232,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (600,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),232,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (601,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),232,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (602,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),232,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (603,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),233,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (604,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),233,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (605,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),233,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (606,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),233,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (607,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),234,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (608,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),234,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (609,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),234,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (610,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),234,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (611,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),235,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (612,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),235,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (613,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),235,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (614,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),235,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (615,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),236,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (616,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),236,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (617,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),236,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (618,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),236,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (619,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),237,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (620,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),237,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (621,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),237,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (622,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),237,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (623,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),238,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (624,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),238,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (625,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),259,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (626,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),259,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (627,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),260,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (628,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),260,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (629,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),260,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (630,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),260,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (631,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),261,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (632,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),261,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (633,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),261,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (634,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),261,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (635,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),262,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (636,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),262,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (637,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),262,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (638,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),262,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (639,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),263,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (640,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),263,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (641,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),263,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (642,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),263,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (643,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),264,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (644,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),264,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (645,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),264,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (646,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),264,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (647,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),265,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (648,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),265,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (649,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),265,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (650,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),265,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (651,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),266,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (652,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),266,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (653,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),266,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (654,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),266,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (655,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),267,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (656,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),267,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (657,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),267,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (658,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),267,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (659,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),268,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (660,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),268,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (661,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),268,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (662,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),268,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (663,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),269,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (664,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),269,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (665,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),269,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (666,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),269,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (667,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),270,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (668,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),270,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (669,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),270,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (670,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),270,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (671,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),271,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (672,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),271,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (673,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),271,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (674,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),271,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (675,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),272,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (676,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),272,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (677,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),272,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (678,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),272,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (679,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),273,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (680,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),273,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (681,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),273,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (682,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),273,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (683,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),274,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (684,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),274,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (685,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),274,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (686,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),274,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (687,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),275,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (688,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),275,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (689,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),275,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (690,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),275,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (691,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),291,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (692,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),292,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (693,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),292,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (694,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),292,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (695,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),292,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (696,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),293,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (697,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),293,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (698,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),293,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (699,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),293,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (700,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),294,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (701,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),294,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (702,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),294,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (703,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),294,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (704,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),295,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (705,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),295,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (706,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),295,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (707,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),295,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (708,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),296,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (709,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),296,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (710,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),296,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (711,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),296,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (712,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),297,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (713,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),297,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (714,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),297,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (715,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),297,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (716,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),298,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (717,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),298,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (718,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),298,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (719,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),298,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (720,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),299,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (721,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),299,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (722,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),299,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (723,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),299,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (724,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),300,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (725,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),300,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (726,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),300,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (727,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),300,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (949,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),189,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (950,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),189,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (951,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),189,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (952,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),189,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (994,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),203,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (995,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),203,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (996,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),203,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (997,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),203,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (998,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),204,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (999,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),204,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1000,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),204,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1001,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),204,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1002,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),205,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1003,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),205,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1004,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),205,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1005,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),205,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1006,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),206,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1007,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),206,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1008,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),206,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1009,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),206,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1010,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),207,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1011,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),207,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1012,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),207,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1013,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),207,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1014,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),208,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1015,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),208,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1016,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),208,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1017,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),208,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1018,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),209,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1019,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),209,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1020,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),209,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1021,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),209,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1022,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),210,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1023,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),210,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1024,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),210,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1025,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),210,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1026,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),211,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1027,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),211,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1028,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),211,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1029,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),211,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1030,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),212,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1031,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),212,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1032,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),212,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1033,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),212,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1034,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),213,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1035,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),213,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1036,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),213,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1037,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),213,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1038,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),214,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1039,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),214,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1040,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),214,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1041,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),214,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1042,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),215,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1043,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),215,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1044,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),215,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1045,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),215,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1046,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),216,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1047,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),216,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1048,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),216,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1049,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),216,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1050,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),217,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1051,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),217,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1052,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),217,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1053,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),217,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1054,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),218,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1055,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),218,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1056,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),218,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1057,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),218,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1058,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),219,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1059,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),219,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1060,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),219,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1061,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),219,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1062,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),220,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1063,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),220,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1064,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),254,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1065,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),254,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1066,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),254,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1067,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),255,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1068,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),255,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1069,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),255,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1070,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),255,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1071,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),256,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1072,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),256,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1073,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),256,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1074,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),256,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1075,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),257,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1076,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),257,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1077,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),257,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1078,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),257,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1079,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),258,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1080,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),258,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1081,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),258,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1082,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),258,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1083,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),259,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1084,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),259,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1085,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),259,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1086,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),259,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1087,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),260,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1088,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),260,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1089,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),260,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1090,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),260,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1091,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),261,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1092,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),261,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1093,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),261,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1094,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),261,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1095,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),262,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1096,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),262,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1097,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),262,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1098,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),262,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1099,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),263,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1100,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),263,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1101,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),263,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1102,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),263,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1103,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),264,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1104,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),264,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1105,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),264,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1106,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),264,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1107,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),265,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1108,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),265,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1109,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),265,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1110,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),265,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1111,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),266,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1112,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),266,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1113,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),266,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1114,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),266,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1115,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),267,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1116,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),267,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1117,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),267,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1118,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),267,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1119,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),268,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1120,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),268,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1121,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),268,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1122,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),268,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1123,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),269,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1124,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),269,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1125,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),269,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1126,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),269,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1127,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),270,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1128,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),270,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1129,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),270,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1130,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),270,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1131,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),271,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1132,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),271,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1133,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),282,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1134,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),283,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1135,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),283,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1136,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),283,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1137,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),283,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1138,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),284,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1139,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),284,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1140,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),284,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1141,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),284,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1142,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),285,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1143,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),285,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1144,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),285,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1145,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),285,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1146,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),286,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1147,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),286,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1148,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),286,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1149,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),286,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1150,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),287,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1151,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),287,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1152,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),287,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1153,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),287,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1154,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),288,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1155,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),288,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1156,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),288,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1157,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),288,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1158,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),289,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1159,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),289,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1160,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),289,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1161,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),289,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1162,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),290,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1163,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),290,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1164,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),290,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1165,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),290,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1166,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),291,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1167,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),291,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1168,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),291,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1169,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),291,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1170,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),292,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1171,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),292,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1172,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),292,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1173,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),292,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1174,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),293,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1175,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),293,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1176,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),293,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1177,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),293,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1178,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),294,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1179,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),294,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1180,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),294,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1181,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),294,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1182,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),295,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1183,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),295,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1184,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),295,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1185,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),295,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1186,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),296,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1187,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),296,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1188,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),296,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1189,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),296,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1190,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),297,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1191,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),297,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1192,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),297,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1193,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),297,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1194,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),298,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1195,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),298,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1196,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),298,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1197,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),298,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1198,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),299,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1199,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),299,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1200,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),299,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1201,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),299,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1203,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),238,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1204,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),238,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1205,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),238,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1206,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),238,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1207,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),239,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1208,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),239,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1209,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),239,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1210,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),239,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1211,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),240,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1212,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),240,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1213,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),240,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1214,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),240,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1215,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),241,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1216,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),241,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1217,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),241,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1218,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),241,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1219,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),242,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1220,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),242,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1221,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),242,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1222,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),242,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1223,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),243,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1224,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),243,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1225,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),243,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1226,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),243,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1227,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),244,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1228,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),244,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1229,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),244,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1230,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),244,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1231,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),245,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1232,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),245,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1233,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),245,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1234,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),245,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1235,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),246,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1236,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),246,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1237,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),246,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1238,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),246,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1239,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),247,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1240,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),247,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1241,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),247,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1242,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),247,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1243,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),248,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1244,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),248,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1245,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),248,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1246,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),248,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1247,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),249,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1248,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),249,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1249,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),249,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1250,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),249,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1251,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),250,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1252,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),250,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1253,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),250,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1254,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),250,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1255,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),251,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1256,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),251,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1257,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),251,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1258,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),251,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1259,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),252,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1260,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),252,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1261,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),252,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1262,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),252,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1263,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),253,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1264,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),253,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1265,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),253,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1266,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),253,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1267,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),254,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1268,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),254,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1269,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),254,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1270,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),254,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1271,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),255,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (1272,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),255,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3207,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),908,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3208,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),908,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3209,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),908,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3210,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),909,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3211,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),909,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3212,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),909,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3213,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),909,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3214,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),910,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3215,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),910,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3216,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),910,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3217,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),910,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3218,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),911,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3219,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),911,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3220,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),911,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3221,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),911,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3222,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),912,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3223,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),912,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3224,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),912,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3225,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),912,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3226,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),913,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3227,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),913,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3228,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),913,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3229,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),913,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3230,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),914,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3231,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),914,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3232,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),914,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3233,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),914,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3234,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),915,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3235,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),915,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3236,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),915,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3237,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),915,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3238,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),916,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3239,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),916,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3240,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),916,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3241,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),916,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3242,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),917,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3243,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),917,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3244,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),917,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3245,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),917,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3246,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),918,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3247,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),918,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3248,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),918,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3249,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),918,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3250,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),919,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3251,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),919,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3252,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),919,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3253,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),919,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3254,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),920,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3255,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),920,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3256,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),920,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3257,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),920,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3258,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),921,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3259,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),921,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3260,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),921,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3261,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),921,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3262,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),922,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3263,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),922,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3264,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),922,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3265,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),922,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3266,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),923,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3267,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),923,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3268,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),923,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3269,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),923,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3270,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),924,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3271,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),924,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3272,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),924,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3273,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),924,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3274,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),925,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3275,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),943,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3276,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),943,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3277,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),943,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3278,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),944,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3279,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),944,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3280,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),944,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3281,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),944,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3282,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),945,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3283,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),945,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3284,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),945,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3285,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),945,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3286,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),946,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3287,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),946,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3288,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),946,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3289,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),946,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3290,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),947,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3291,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),947,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3292,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),947,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3293,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),947,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3294,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),948,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3295,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),948,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3296,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),948,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3297,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),948,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3298,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),949,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3299,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),949,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3300,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),949,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3301,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),949,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3302,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),950,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3303,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),950,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3304,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),950,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3305,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),950,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3306,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),951,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3307,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),951,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3308,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),951,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3309,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),951,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3310,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),952,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3311,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),952,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3312,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),952,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3313,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),952,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3314,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),953,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3315,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),953,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3316,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),953,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3317,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),953,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3318,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),954,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3319,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),954,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3320,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),954,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3321,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),954,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3322,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),955,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3323,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),955,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3324,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),955,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3325,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),955,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3326,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),956,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3327,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),956,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3328,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),956,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3329,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),956,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3330,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),957,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3331,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),957,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3332,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),957,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3333,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),957,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3334,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),958,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3335,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),958,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3336,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),958,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3337,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),958,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3338,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),959,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3339,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),959,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3340,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),959,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3341,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),959,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3342,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),960,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3343,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),960,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3344,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),960,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3345,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),960,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3346,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),961,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3347,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),961,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3348,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),961,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3349,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),961,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3350,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),962,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3351,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),962,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3352,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),962,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3353,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),962,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3354,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),963,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3355,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),963,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3356,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),963,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3357,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),963,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3358,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),964,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3359,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),964,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3360,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),964,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3361,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),964,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3362,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),965,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3363,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),965,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3364,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),965,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3365,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),965,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3366,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),966,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3367,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),966,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3368,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),966,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3369,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),966,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3370,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),967,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3371,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),967,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3372,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),967,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3373,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),967,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3374,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),968,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3375,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),995,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3376,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),995,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3377,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),995,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3378,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),996,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3379,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),996,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3380,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),996,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3381,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),996,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3382,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),997,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3383,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),997,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3384,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),997,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3385,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),997,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3386,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),998,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3387,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),998,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3388,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),998,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3389,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),998,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3390,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),999,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3391,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),999,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3392,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),999,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3393,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),999,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3394,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),1000,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3395,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),1000,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3396,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),1000,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3397,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),1000,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3532,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),900,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3533,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),900,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3534,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),900,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3535,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),900,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3536,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),901,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3537,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),901,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3538,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),901,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3539,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),901,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3540,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),902,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3541,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),902,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3542,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),902,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3543,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),902,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3544,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),903,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3545,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),903,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3546,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),903,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3547,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),903,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3548,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),904,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3549,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),920,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3550,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),921,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3551,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),921,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3552,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),921,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3553,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),921,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3554,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),922,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3555,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),922,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3556,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),922,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3557,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),922,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3558,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),923,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3559,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),923,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3560,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),923,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3561,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),923,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3562,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),924,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3563,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),924,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3564,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),924,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3565,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),924,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3566,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),925,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3567,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),925,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3568,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),925,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3569,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),925,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3570,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),926,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3571,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),926,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3572,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),926,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3573,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),926,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3574,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),927,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3575,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),927,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3576,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),927,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3577,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),927,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3578,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),928,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3579,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),928,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3580,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),928,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3581,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),928,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3582,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),929,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3583,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),929,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3584,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),929,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3585,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),929,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3586,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),930,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3587,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),930,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3588,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),930,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3589,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),930,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3590,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),931,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3591,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),931,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3592,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),931,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3593,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),931,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3594,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),932,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3595,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),932,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3596,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),932,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3597,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),932,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3598,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),933,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3599,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),933,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3600,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),933,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3601,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),933,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3602,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),934,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3603,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),934,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3604,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),934,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3605,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),934,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3606,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),935,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3607,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),935,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3608,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),935,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3609,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),935,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3610,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),936,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3611,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),936,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3612,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),936,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3613,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),936,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3614,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),937,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3615,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),937,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3616,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),937,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3617,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),937,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3618,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),938,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3619,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),938,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3620,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),938,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3621,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),938,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3622,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),939,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3623,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),939,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3624,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),939,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3625,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),939,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3626,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),940,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3627,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),940,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3628,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),940,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3629,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),940,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3630,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),941,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3631,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),941,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3632,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),941,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3633,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),941,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3634,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),942,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3635,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),942,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3636,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),942,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3637,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),942,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3638,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),943,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3639,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),982,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3640,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),982,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3641,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),983,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3642,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),983,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3643,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),983,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3644,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),983,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3645,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),984,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3646,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),984,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3647,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),984,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3648,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),984,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3649,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),985,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3650,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),985,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3651,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),985,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3652,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),985,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3653,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),986,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3654,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),986,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3655,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),986,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3656,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),986,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3657,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),987,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3658,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),987,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3659,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),987,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3660,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),987,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3661,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),988,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3662,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),988,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3663,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),988,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3664,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),988,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3665,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),989,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3666,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),989,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3667,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),989,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3668,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),989,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3669,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),990,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3670,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),990,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3671,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),990,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3672,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),990,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3673,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),991,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3674,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),991,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3675,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),991,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3676,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),991,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3677,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),992,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3678,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),992,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3679,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),992,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3680,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),992,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3681,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),993,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3682,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),993,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3683,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),993,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3684,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),993,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3685,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),994,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3686,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),994,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3687,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),994,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3688,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),994,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3689,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),995,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3690,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),995,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3691,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),995,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3692,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),995,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3693,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),996,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3694,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),996,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3695,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),996,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3696,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),996,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3697,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),997,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3698,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),997,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3699,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),997,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3700,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),997,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3701,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),998,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3702,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),998,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3703,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),998,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3704,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),998,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3705,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),999,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3706,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),999,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3707,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),960,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3708,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),960,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3709,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),960,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3710,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),960,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3711,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),961,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3712,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),961,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3713,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),961,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3714,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),961,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3715,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),962,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3716,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),962,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3717,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),962,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3718,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),962,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3719,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),963,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3720,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),963,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3721,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),963,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3722,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),963,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3723,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),964,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3724,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),964,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3725,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),964,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3726,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),964,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3727,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),965,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3728,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),965,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3729,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),965,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3730,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),965,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3731,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),966,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3732,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),966,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3733,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),966,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3734,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),966,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3735,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),967,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3736,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),967,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3737,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),967,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3738,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),967,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3739,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),968,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3740,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),968,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3741,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),968,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3742,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),968,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3743,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),969,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3744,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),969,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3745,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),969,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3746,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),969,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3747,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),970,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3748,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),970,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3749,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),970,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3750,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),970,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3751,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),971,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3752,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),971,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3753,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),971,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3754,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),971,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3755,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),972,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3756,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),972,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3757,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),972,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3758,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),972,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3759,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),973,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3760,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),973,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3761,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),973,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3762,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),973,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3763,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),974,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3764,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),974,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3765,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),974,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3766,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),974,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3767,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),975,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3768,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),975,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3769,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),975,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3770,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),975,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3771,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),976,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3772,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),976,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3773,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),976,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3774,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),976,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3775,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),977,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3776,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),970,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3777,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),970,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3778,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),970,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3779,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),970,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3780,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),971,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3781,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),971,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3782,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),971,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3783,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),971,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3784,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),972,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3785,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),972,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3786,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),972,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3787,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),972,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3788,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),973,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3789,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),973,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3790,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),973,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3791,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),973,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3792,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),974,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3793,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),974,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3794,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),974,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3795,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),974,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3796,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),970,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3797,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),970,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3798,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),970,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3799,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),970,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3800,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),971,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3801,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),971,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3802,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),971,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3803,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),971,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3804,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),972,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3805,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),972,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3806,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),972,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3807,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),972,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3808,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),973,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3809,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),973,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3810,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),973,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3811,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),973,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3812,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),974,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3813,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),974,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3814,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),974,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3815,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),974,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3816,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),975,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3817,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),975,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3818,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),975,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3819,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),975,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3820,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),976,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3821,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),976,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3822,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),976,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3823,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),976,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3824,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),977,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3825,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),977,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3826,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),977,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3827,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),977,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3828,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),978,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3829,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),978,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3830,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),978,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3831,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),978,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3832,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),979,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3833,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),979,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3834,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),979,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3835,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),979,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3836,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),980,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3837,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),980,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3838,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),980,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3839,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),980,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3840,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),981,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3841,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),981,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3842,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),981,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3843,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),981,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3844,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),982,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3845,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),982,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3846,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),982,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3847,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),982,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3848,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),983,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3849,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),983,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3850,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),983,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3851,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),983,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4062,'�м������ϴϱ� �� ���� ���� �� ���� >_<',to_date('22/04/18','RR/MM/DD'),293,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4063,'���?',to_date('22/04/18','RR/MM/DD'),1043,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4064,'�� �ʴ°ž� ��!!! �ð��� Į ���� ���Ѿ� �ϴ°Ŷ��',to_date('22/04/18','RR/MM/DD'),300,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4068,'������ ���� �� �������� �� ���... ����ͼ�',to_date('22/04/18','RR/MM/DD'),296,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4066,'�׷� ���� ��Ź�Ѵ�, �θ�',to_date('22/04/18','RR/MM/DD'),299,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4067,'��������! �� �޸��Ⱑ �����ϱ�... ������ ���ھ��!',to_date('22/04/18','RR/MM/DD'),297,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4069,'������ ȯ������ Ŀ��',to_date('22/04/18','RR/MM/DD'),294,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4081,'��������',to_date('22/04/19','RR/MM/DD'),1082,'�����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4082,'����',to_date('22/04/19','RR/MM/DD'),1081,'�����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4083,'�����߳�',to_date('22/04/19','RR/MM/DD'),1082,'�׾ƾ�');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4101,'�̰ų������ǵ� �Ƶ�ȹٳ�',to_date('22/04/19','RR/MM/DD'),1102,'�׾ƾ�');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3923,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),900,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3924,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),900,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3925,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),900,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3926,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),900,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3927,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),901,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3928,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),901,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3929,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),901,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3930,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),901,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3931,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),902,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3932,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),902,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3933,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),902,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3934,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),902,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3935,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),903,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3936,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),903,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3937,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),903,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3938,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),903,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3939,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),904,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3940,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),904,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3941,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),904,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3942,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),904,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3943,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),905,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3944,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),905,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3945,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),905,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3946,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),905,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3947,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),906,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3948,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),906,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3949,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),906,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3950,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),906,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3951,'���ƾ�!! �丮�п��� �ʾ���ȴ�.. ����',to_date('22/04/17','RR/MM/DD'),907,'ŷ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3952,'��.. �Ƴ��� å�� �Ҿ���ȴ�... �ٵ�',to_date('22/04/17','RR/MM/DD'),907,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3953,'���� �������༭ ����! �ưŵ�',to_date('22/04/17','RR/MM/DD'),907,'ȣ����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3954,'�̸��� � ������ �˷�����! �׷���',to_date('22/04/17','RR/MM/DD'),907,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3955,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),908,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3956,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),908,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3957,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),908,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3958,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),908,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3959,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),909,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3960,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),909,'���߷���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3961,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),909,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3962,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),909,'��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3963,'������ ���� �м�����~ ����',to_date('22/04/17','RR/MM/DD'),910,'�ܱ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3964,'���� ���� �ϳ� ������? ��������',to_date('22/04/17','RR/MM/DD'),910,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3965,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),910,'Źȣ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3966,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),910,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3967,'������ �ʹ� ����~ ������',to_date('22/04/17','RR/MM/DD'),911,'��ÿ');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3968,'���� ������� �� ���~ ����!',to_date('22/04/17','RR/MM/DD'),911,'�帮��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3969,'�ٵ� �ູ�� �Ϸ� �Ǽ���~ ���',to_date('22/04/17','RR/MM/DD'),911,'�轼');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (3970,'���� �Ϸ絵 �� ��Ź����. �ȱ׳�',to_date('22/04/17','RR/MM/DD'),911,'����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4102,'�̳����',to_date('22/04/19','RR/MM/DD'),1102,'�̳���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4041,'�ȳ�?',to_date('22/04/18','RR/MM/DD'),1043,'������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4103,'�̳���',to_date('22/04/19','RR/MM/DD'),1061,'�̳���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4104,'�̳���',to_date('22/04/19','RR/MM/DD'),1061,'�̳���');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4061,'��� �ڰ�� ���̾�, ���� ���� �������� �ϴ°ž�',to_date('22/04/18','RR/MM/DD'),292,'�ִ��Ǽҳ��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4105,'�����Ǵ°ǰ�?',to_date('22/04/19','RR/MM/DD'),1122,'����������������');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4106,'�̳����',to_date('22/04/19','RR/MM/DD'),1121,'�̳����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4121,'������',to_date('22/04/19','RR/MM/DD'),1122,'�̳����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4122,'��!',to_date('22/04/19','RR/MM/DD'),1003,'�̳����');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4141,'�������� �������� �����Ǿ����ϴ� ����',to_date('22/04/20','RR/MM/DD'),1181,'�迹��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4161,'���� ����',to_date('22/04/20','RR/MM/DD'),1181,'ī��ī��');
Insert into TBL_REPLY (RNO,CONTENT,REGDATE,BNO,WRITER) values (4201,'<script>alert(''����'')</script>',to_date('22/05/05','RR/MM/DD'),1125,'�ڹٸ�');
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
