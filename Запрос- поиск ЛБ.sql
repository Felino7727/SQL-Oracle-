select DATE_OP, CODE_OP, IDF_MOD, DATE_INF, ESR_OP, 
IDF_BRIG, TAB_NOM, DEPO_PRIP, FAM, 
PR_WORK, NOM_MM, TIME_YAVKA, 
PR_TOUR, DEPO_TOUR,
TYPE_OBJ_DISL, CODE_OBJ_DISL
from MD_BRIG.SREZ_ACTUAL_BRIG --V_FULL_BRIG_ONLINE
where 
1=1
--and idf_brig = 
and depo_prip = 4501
--and tab_nom = 
and DATE_INF >= to_date ('20.12.2016 00:00:00','DD.MM.YYYY hh24:mi:ss')
--and code_op in (972, 973, 971)
order by date_op desc