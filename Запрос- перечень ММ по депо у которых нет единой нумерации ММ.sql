Select 
a.DEPO,
--a.NOM_MRM,
depo.mname||' '||depo.short_name mname_depo,
--max(a.NOM_MRM) MAX_NOM_MRM,
count(a.NOM_MRM) KOL
from md_mm.SREZ_ACTUAL_MM a
 join askvp_view.v_dic_depo depo on (a.depo = depo.id_depo and a.date_calc between depo.date_beg and depo.date_end)
where 
--trunc(a.date_calc,'mm') = to_date('01.12.2015','dd.mm.yyyy')   
depo.KOD_GOSP=5
and depo.kod_adm = 22
and depo.dor != 48
and a.NOM_MRM < 1000000
and a.NOM_MRM != -1
group by a.DEPO, depo.mname, depo.short_name
order by a.DEPO