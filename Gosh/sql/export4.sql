--------------------------------------------------------
--  File created - Thursday-September-03-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GCART
--------------------------------------------------------

  CREATE TABLE "TESTDB"."GCART" 
   (	"ID" NUMBER, 
	"CUSERNAME" VARCHAR2(30 BYTE), 
	"PRODUCTID" NUMBER, 
	"QUANTITY" NUMBER, 
	"PRICE" NUMBER, 
	"PRODUCTNAME" VARCHAR2(30 BYTE), 
	"BOUGHT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GPRODUCTS
--------------------------------------------------------

  CREATE TABLE "TESTDB"."GPRODUCTS" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PNAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"PRICE" VARCHAR2(20 BYTE), 
	"IQUANTITY" NUMBER, 
	"PUSERNAME" VARCHAR2(30 BYTE), 
	"PICTURE" VARCHAR2(1000 BYTE), 
	"S_COST" NUMBER, 
	"AVAILABLE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GUSERS
--------------------------------------------------------

  CREATE TABLE "TESTDB"."GUSERS" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"USERNAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"BALANCE" BINARY_DOUBLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TESTDB.GCART
SET DEFINE OFF;
REM INSERTING into TESTDB.GPRODUCTS
SET DEFINE OFF;
REM INSERTING into TESTDB.GUSERS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index GCART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TESTDB"."GCART_PK" ON "TESTDB"."GCART" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GPRODUCTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TESTDB"."GPRODUCTS_PK" ON "TESTDB"."GPRODUCTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GUSERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TESTDB"."GUSERS_PK" ON "TESTDB"."GUSERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table GCART
--------------------------------------------------------

  ALTER TABLE "TESTDB"."GCART" ADD CONSTRAINT "GCART_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TESTDB"."GCART" MODIFY ("BOUGHT" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GCART" MODIFY ("PRODUCTNAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GCART" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GCART" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GCART" MODIFY ("PRODUCTID" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GCART" MODIFY ("CUSERNAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GCART" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GPRODUCTS
--------------------------------------------------------

  ALTER TABLE "TESTDB"."GPRODUCTS" ADD CONSTRAINT "GPRODUCTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("AVAILABLE" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("S_COST" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("PICTURE" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("PUSERNAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("IQUANTITY" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("PNAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GPRODUCTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GUSERS
--------------------------------------------------------

  ALTER TABLE "TESTDB"."GUSERS" ADD CONSTRAINT "GUSERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TESTDB"."GUSERS" MODIFY ("BALANCE" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GUSERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GUSERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GUSERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."GUSERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger GCART_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TESTDB"."GCART_TRG" 
BEFORE INSERT ON GCART 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING THEN
      SELECT GCART_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TESTDB"."GCART_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GPRODUCTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TESTDB"."GPRODUCTS_TRG" 
BEFORE INSERT ON GPRODUCTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING THEN
      SELECT GPRODUCTS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TESTDB"."GPRODUCTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GUSERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TESTDB"."GUSERS_TRG" 
BEFORE INSERT ON GUSERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING THEN
      SELECT GUSERS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TESTDB"."GUSERS_TRG" ENABLE;
