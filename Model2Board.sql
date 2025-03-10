CREATE TABLE BOARD 
(
  NUM NUMBER NOT NULL 
, WRITER VARCHAR2(20 BYTE) 
, EMAIL VARCHAR2(50 BYTE) 
, SUBJECT VARCHAR2(50 BYTE) 
, PASSWORD VARCHAR2(10 BYTE) 
, REG_DATE DATE 
, REF NUMBER 
, REG_STEP NUMBER 
, RE_LEVEL NUMBER 
, READCOUNT NUMBER 
, CONTENT VARCHAR2(500 BYTE) 
, CONSTRAINT BOARD_PK PRIMARY KEY 
  (
    NUM 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX BOARD_PK ON BOARD (NUM ASC) 
      LOGGING 
      TABLESPACE SYSTEM 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 1048576 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        FREELISTS 1 
        FREELIST GROUPS 1 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE SYSTEM 
PCTFREE 10 
PCTUSED 40 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  FREELISTS 1 
  FREELIST GROUPS 1 
  BUFFER_POOL DEFAULT 
) 
NOCOMPRESS 
NO INMEMORY 
NOPARALLEL;
