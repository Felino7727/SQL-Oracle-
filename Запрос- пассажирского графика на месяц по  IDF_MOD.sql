select TID_PLECH, VID_RAB, TYPE_RAB, PR_WORK, DATE_BEG_PLAN, TYPE_OBJ, CODE_OBJ, NOMP, ESR_OTPR, DATE_OTPR, ESR_PRIB, DATE_PRIB, DATE_END_PLAN, NOM_NG, nom_zmina, NP
from md_plb.srez_actual_plb
where idf_mod =  2930683480
--and PR_WORK =0
and nom_zmina=1
order by nom_zmina, date_beg_plan

select nom_mm
  from md_plb.srez_actual_plb
  where idf_mod=  2930722305
  
  
nsi_.V_LD_LINK_KOLONA_ESR