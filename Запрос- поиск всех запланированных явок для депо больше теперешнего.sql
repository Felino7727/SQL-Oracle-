select d.idf_plb, DATE_BEG_PLAN, IDF_BRIG
   from md_plb.SUBS_SKLAD_BRG_PLB b, md_plb.ST_TID_PLB c, md_plb.ST_OZN_PLB d, md_plb.ST_BRG_PLB l
    where b.idf_brg = l.idf_brg
      and c.idf_plb = d.idf_plb
      and c.idf_plb = l.idf_plb
and depo_obl = 4502
--and idf_brig= 754715876
and OZN_PLB = 1
and OZN_BRG_W =1
and d.status = 0
and DATE_BEG_PLAN >= sysdate
order by DATE_BEG_PLAN