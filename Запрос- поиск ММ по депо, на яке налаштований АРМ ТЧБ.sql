Select a.IDF_DOC, a.NOM_MRM, a.DATE_CALC, a.DATE_MM, a.DEPO, a.javka, a.end_rab, c.IDF_BRIG
from
(
    Select :depo,f.IDF_BRIG
    from
    nsi.lb_brig_kolona d 
    join MD_BRIG.ST_TID_BRIG f
        on (
            f.status = 0
            and f.part = 300101
            and f.depo_prip= d.idf_pidpr
            ) 
    join MD_BRIG.ST_ADD_PASP_BRIG pa
        on (
            pa.status = 0
            and pa.part = 300101
            and pa.IDF_BRIG = f.IDF_BRIG
            and pa.NUM_COLUMN = d.NOM_KOL
            )         
    where
    :depo = 0 or d.depo_oblik = :depo 
    union all
    Select :depo,r.IDF_BRIG
    from MD_BRIG.ST_TOUR_BRIG r
    where
    :depo = 0 or r.depo_tour = :depo 
    and r.part = 300101
   ) brig
join MD_MM.SUBS_BRIG_MM c
    on (
        c.IDF_BRIG = brig.IDF_BRIG
        and c.part = 300101
        )
join MD_MM.ST_DOC_MM a
    on  (
        c.IDF_DOC = a.idf_doc
        and a.part = 300101
        and a.status = 0
        and a.DATE_CALC = trunc(sysdate) 
         )
join MD_MM.MAIN_MM m
    on  (
        c.IDF_DOC = m.IDF_MM
        and a.part = 300101
        and a.status = 0
        and TYPE_MM = 0
        )
order by a.javka
