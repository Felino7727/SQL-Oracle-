select t.idf_mod, t.idf_brig, n.depo_prip, n.tab_nom,  
t.code_op, o.code_op pred_op, 
t.date_op, t.time_yavka, pr_m.time_yavka pred_yavka
from 
(
select o.idf_mod, o.idf_op,  o.idf_brig, code_op, date_op, m.time_yavka 
from md_brig.opers_brig o, MD_BRIG.ST_DISL_BRIG d, md_brig.st_mm_brig m  
where 
  o.part = 300101 and
  o.status = 0 and 
  o.idf_brig = d.idf_brig and
  o.idf_disl = d.idf_disl and 
  d.type_obj_disl = 103 and
  o.idf_brig = m.idf_brig and
  o.idf_mm = m.idf_mm and
  idf_mod in (
    select idf_event
    from event.EV_MESS_ERR
    where
--    part = 3    
      --and 
      code_test = '1123199080301'
  )
) t,  md_brig.opers_brig o, 
md_brig.st_mm_brig pr_m,  md_brig.st_tid_brig n
where
  t.idf_brig = pr_m.idf_brig and
  t.idf_op = pr_m.idf_op_end and
  t.time_yavka <> pr_m.time_yavka and
  o.idf_brig = pr_m.idf_brig and
  o.idf_op = pr_m.idf_mm and
  n.idf_brig = o.idf_brig  and
  n.depo_prip = 4502 and 
  t.time_yavka >= to_date ('07.02.2015 00:00:00','dd.mm.yyyy hh24:mi:ss') and
  1 = 1
order by n.depo_prip, t.idf_brig, t.date_op desc;