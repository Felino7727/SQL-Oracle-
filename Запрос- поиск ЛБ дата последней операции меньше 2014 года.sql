select IDF_BRIG, DEPO_PRIP, FAM, NAME, TYPE_OBJ_DISL, CODE_OBJ_DISL, PR_WORK, DATE_OP, CODE_OP
from md_brig.srez_actual_brig
where DATE_OP <= to_date ('01.09.2014','dd.mm.yyyy')
order by DATE_OP

