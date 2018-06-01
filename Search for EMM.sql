--Поиск ЕММ по 
Select DATE_INF, IDF_MOD, SR.IDF_DOC, IDF_MM, TYPE_MM, CODE_OP, NOM_MRM, DEPO, DATE_MM, JAVKA, END_RAB, DATE_CALC, KPZ, DATE_RAB,
       SR.PRIEM, SR.SD_LOK, SR.DEPO_OUT, SR.DEPO_IN, SR.ID_DEPO_IN, SR.ID_DEPO_OUT, 
       TYPE_RAB, TYPE_OBJ_JAVKA, CODE_OBJ_JAVKA, TYPE_OBJ_END_RAB, CODE_OBJ_END_RAB,
       IDF_BRIG, TAB_BRIG, DEPO_PRIP, FAM_BRIG, DOLG_MM, DOLG_BRIG, CLASS_MASH, DATE_BEG_RAB, DATE_END_RAB, KOD_KOL,
       L.IDF_TPS, L.KOD_SER, L.NAME_LOK, L.DEPO_LOK, L.CNT_SEK, L.PR_SEC, L.PRIEM, L.SD_LOK, L.ID_DEPO_OUT, L.ID_DEPO_IN, L.DEPO_OUT, L.DEPO_IN, L.OZN_TAKS, L.IDF_TPS_SBO--,
--       s.IDF_SEC, s.ID_SER, s.NOM_LOK, s.KOD_SEK
from MD_MM.SREZ_ACTUAL_MM SR
left join MD_MM.SUBS_BRIG_MM B
on SR.IDF_DOC= B.IDF_DOC 
left join MD_MM.SUBS_LOK_MM L 
on SR.IDF_DOC= L.IDF_DOC 
--left join MD_MM.SUBS_SEC_MM s 
--on s.IDF_DOC = s.IDF_DOC 
where 
TYPE_MM in (1)
--and dolg_mm = 1
--and idf_mod = 4720241572
--and DATE_MM > 
and CODE_OP = 51
and DATE_INF >= to_date ('21.12.2017 00:00:00','DD.MM.YYYY hh24:mi:ss')
--and nom_mrm in (1112928)
--and l.idf_tps is not null
--and l.ozn_taks =1 
--and (sr.DEPO_OUT is not null or sr.DEPO_IN is not null)
order by DATE_INF desc