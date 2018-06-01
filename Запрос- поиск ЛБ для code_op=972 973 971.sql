select *
from MD_BRIG.OPERS_BRIG
where 
date_op >= to_date ('11/21/2015','MM/DD/YYYY')
AND date_op < to_date ('11/22/2015','MM/DD/YYYY')
and code_op in (972, 973, 971)
and idf_op=idf_mm
and idf_op=idf_work


select *
from MD_BRIG.OPERS_BRIG
where 
date_op >= to_date ('11/10/2015','MM/DD/YYYY')
--AND date_op < to_date ('11/22/2015','MM/DD/YYYY')
--and code_op in (972, 973, 971)
and idf_brig in (11481339153)--, , 508501598)11036739172
and idf_op=idf_mm
and idf_op=idf_work
order by date_inf desc




select *
from MD_BRIG.ST_MM_BRIG
where 
idf_brig in (11481339153)--, 11036739172, 508501598)  
and date_beg >= to_date ('11/12/2015','MM/DD/YYYY')
order by date_end desc


select *
from MD_BRIG.ST_work_brig
where 
idf_brig in 11481339153
order by date_end desc

select * from md_brig.opers_brig 
where idf_brig=11142750199
order by date_inf desc


select *
from MD_BRIG.ST_MM_BRIG
where 
idf_brig in (11142750199)
order by date_end desc



select *
from MD_BRIG.ST_TOUR_BRIG
where 
idf_brig in (11142750199)
order by date_end desc
