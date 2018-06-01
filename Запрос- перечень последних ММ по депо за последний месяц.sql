select 
trunc(a.date_calc,'mm') date_mm,
a.DEPO,
depo.mname||' '||depo.short_name mname_depo,
max(a.NOM_MRM) MAX_NOM_MRM,
count(a.NOM_MRM) KOL
from md_mm.SREZ_ACTUAL_MM a
  join askvp_view.v_dic_depo depo on (a.depo = depo.id_depo and a.date_calc between depo.date_beg and depo.date_end)
where 
trunc(a.date_calc,'mm') = to_date('01.12.2015','dd.mm.yyyy')   
group by a.DEPO, depo.mname,depo.short_name, trunc(a.date_calc,'mm')
order by a.DEPO