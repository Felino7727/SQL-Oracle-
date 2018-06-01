CREATE OR REPLACE FORCE VIEW MD_LOK.V_FULL_TPS_ONLINE_EMM
(   
   DATE_OP,
   IDF_TPS,
   CODE_OP,   
   ST_CODE_WORK,  
   CNT_VAG,   
   ID_SER,
   KOD_SEK,
   CNT_SEK,
   NAME_LOK,
   DATE_BEG_DISL,
   DATE_END_DISL,
   TYPE_OBJ_DISL,
   KOD_OBJ_DISL,  
   ID_DEPO
)
AS
   SELECT         
          TBL_OPERS.DATE_OP DATE_OP,         
          TBL_OPERS.IDF_TPS IDF_TPS,
          TBL_OPERS.CODE_OP CODE_OP,         
          TBL_WORK.ST_CODE_WORK ST_CODE_WORK,          
          TBL_POK.CNT_VAG CNT_VAG,
          TBL_TID.ID_SER ID_SER,
          TBL_TID.KOD_SEK KOD_SEK,
          TBL_TID.CNT_SEK CNT_SEK,
          TBL_TID.NAME_LOK NAME_LOK,          
          TBL_DISL.DATE_BEG DATE_BEG_DISL,
          TBL_DISL.DATE_END DATE_END_DISL,         
          TBL_DISL.TYPE_OBJ_DISL TYPE_OBJ_DISL,
          TBL_DISL.KOD_OBJ_DISL KOD_OBJ_DISL,          
          TBL_PRIP.ID_DEPO ID_DEPO
     FROM OPERS_TPS TBL_OPERS,         
          ST_DISL_TPS TBL_DISL,         
          ST_POK_TPS TBL_POK,
          ST_PRIP_TPS TBL_PRIP,
          ST_TID_TPS TBL_TID,
          ST_WORK_TPS TBL_WORK
    WHERE   
           tbl_opers.part = 300101
          AND tbl_DISL.IDF_DISL(+) = tbl_opers.IDF_DISL
          AND tbl_DISL.part(+) = 300101 
          AND tbl_POK.IDF_POK(+) = tbl_opers.IDF_POK
          AND tbl_POK.part(+) = 300101
          AND tbl_PRIP.IDF_PRIP(+) = tbl_opers.IDF_PRIP
          AND tbl_PRIP.part(+) = 300101          
          AND tbl_TID.IDF_TID(+) = tbl_opers.IDF_TID
          AND tbl_TID.part(+) = 300101
          AND tbl_WORK.IDF_WORK(+) = tbl_opers.IDF_WORK
          AND tbl_WORK.part(+) = 300101
          AND tbl_opers.status != 1;