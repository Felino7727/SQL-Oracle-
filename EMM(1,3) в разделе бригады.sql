--����� ��� �� 
Select IDF_MOD, a.IDF_DOC, IDF_MM,TYPE_MM, CODE_OP, NOM_MRM, DEPO, DATE_MM, JAVKA, PRIEM, SD_LOK, END_RAB, DATE_CALC, KPZ, DATE_RAB, NUM_COLUMN, DEPO_PR_KOL, br_time_rab,
       IDF_BRIG, TAB_BRIG, DEPO_PRIP, FAM_BRIG, DOLG_MM, DOLG_BRIG, CLASS_MASH--, DEPO_OUT, DEPO_IN, ID_DEPO_IN, ID_DEPO_OUT, IDF_TPS, KOD_SER, NAME_LOK, DEPO_LOK, CNT_SEK, PR_SEC, OZN_TAKS
from MD_MM.SREZ_ACTUAL_MM a, MD_MM.SUBS_BRIG_MM b--, MD_MM.SUBS_LOK_MM c 
where 
a.IDF_DOC=b.IDF_DOC
--and a.IDF_DOC=c.IDF_DOC
and DATE_OP >= TO_DATE('01/01/2016','MM/DD/YYYY')
and TYPE_MM = 1
and (a.NOM_MRM =:NOM_MRM or :NOM_MRM is Null)
AND (a.DEPO =:DEPO or :DEPO is Null)
and (b.DEPO_PRIP =:DEPO_PRIP or :DEPO_PRIP  is Null)
and (b.TAB_BRIG =:TAB_BRIG or :TAB_BRIG is Null)
and (b.IDF_BRIG =:IDF_BRIG or :IDF_BRIG is Null)

----------------------------------------------------------------------

Select *
from MD_MM.ST_DOC_MM
where 
NOM_MRM =:NOM_MRM or :NOM_MRM is Null

----------------------------------------------------------------------

Select *
from MD_MM.OPERS_MM 
where 
IDF_MM =:IDF_MM or :IDF_MM is Null

----------------------------------------------------------------------

Select DATE_BEG_DISL, DATE_END_DISL, TYPE_OBJ_DISL, CODE_OBJ_DISL
from MD_BRIG.V_FULL_BRIG_ONLINE
where 
DATE_BEG_DISL >= TO_DATE ('28.12.2015 00:00:00','DD.MM.YYYY hh24:mi:ss')
and IDF_BRIG = 3088362
--and d.TAB_NOM =
--and d.DEPO_PRIP = 
and TYPE_OBJ_DISL =103

----------------------------------------------------------------------

