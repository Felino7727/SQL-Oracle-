ALTER TABLE STAT_NOM.LOKBRIG_SVERKA
 DROP PRIMARY KEY CASCADE;

DROP TABLE STAT_NOM.LOKBRIG_SVERKA CASCADE CONSTRAINTS;

CREATE TABLE STAT_NOM.LOKBRIG_SVERKA
(
  KOD_DOR    NUMBER(2)                          NOT NULL,
  DEPO_MM    NUMBER(4)                          NOT NULL,
  NOM_MM     NUMBER(10)                         NOT NULL,
  KPZ        NUMBER(4)                          NOT NULL,
  DATE_OP    DATE                               NOT NULL,
  DATE_CALC  DATE                               NOT NULL,
  KOP        NUMBER(6)                          NOT NULL,
  OZN_MM     NUMBER(1)                          NOT NULL,
  PR_TAKS    NUMBER(1)                          NOT NULL,
  OZN_DEL    NUMBER(1)                          NOT NULL,
  DATE_INF   DATE                               NOT NULL
)
NOCOMPRESS 
TABLESPACE TSK_DATA
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
PARTITION BY RANGE (DATE_CALC)
(  
  PARTITION P_201701 VALUES LESS THAN (TO_DATE(' 2017-02-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE TSK_DATA
    PCTFREE    10
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          8M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON TABLE STAT_NOM.LOKBRIG_SVERKA IS '%Є.093616.2.01.02.0.001  001.000.000%Придн%Панко О. В.% Перелік документів, збережених в АСУ ЛокБриг';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.KOD_DOR IS 'Код регіональної філії';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.DEPO_MM IS 'Депо приписки бригади';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.NOM_MM IS 'Номер маршруту';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.KPZ IS 'Депо передачі інформації';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.DATE_OP IS 'Дата передачі інформації (формат dd.mm.yyyy)';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.DATE_CALC IS 'Дата створення документу в АСУ ЛокБриг(формат dd.mm.yyyy)';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.KOP IS 'Табельний номер оператора ТЧУ';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.OZN_MM IS 'Тип маршруту (0- поїзний з ТРО; 1, 2, 5, 6 - зарплатний)';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.PR_TAKS IS 'Ознака таксування в ТЧУ Локбриг (1- так, 0- ні)';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.OZN_DEL IS 'признак видалення маршруту (1- так, 0- ні)';

COMMENT ON COLUMN STAT_NOM.LOKBRIG_SVERKA.DATE_INF IS 'Дата обробки інформації в БД АСК ВП УЗ-Є ';



CREATE UNIQUE INDEX STAT_NOM.PK_LOKBRIG_SVERKA ON STAT_NOM.LOKBRIG_SVERKA
(DEPO_MM, NOM_MM, DATE_CALC)
  PCTFREE    10
  INITRANS   2
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOCAL (  
  PARTITION P_201701
    LOGGING
    NOCOMPRESS 
    TABLESPACE TSK_DATA
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOPARALLEL;


ALTER TABLE STAT_NOM.LOKBRIG_SVERKA ADD (
  CONSTRAINT PK_LOKBRIG_SVERKA
  PRIMARY KEY
  (DEPO_MM, NOM_MM, DATE_CALC)
  USING INDEX LOCAL
  ENABLE VALIDATE);

GRANT DELETE, INSERT, SELECT, UPDATE ON STAT_NOM.LOKBRIG_SVERKA TO APPL_DBW;

GRANT DELETE, INSERT, SELECT, UPDATE ON STAT_NOM.LOKBRIG_SVERKA TO MSG_WORK;

GRANT DELETE, INSERT, SELECT, UPDATE ON STAT_NOM.LOKBRIG_SVERKA TO PUBLIC;

GRANT DELETE, INSERT, SELECT, UPDATE ON STAT_NOM.LOKBRIG_SVERKA TO SUVP_POTOK;

GRANT DELETE, INSERT, SELECT, UPDATE ON STAT_NOM.LOKBRIG_SVERKA TO SUVP_POTOK_SPR;
