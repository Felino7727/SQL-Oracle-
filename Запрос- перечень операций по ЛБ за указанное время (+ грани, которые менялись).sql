select a.DATE_OP, a.ESR_OP, a.CODE_OP, a.IDF_OP, a.IDF_MOD, a.IDF_MM, a.IDF_WORK, a.IDF_DISL, a.IDF_DOR, b.TIME_YAVKA
from md_brig.OPERS_BRIG a, md_brig.ST_MM_BRIG b
where a.idf_mm = b.idf_mm 
and a.idf_brig =139663755
and date_op>= to_date ('01.02.2015 00:01:00','dd.mm.yyyy hh24:mi:ss')
and date_op<= to_date ('15.02.2015 00:01:00','dd.mm.yyyy hh24:mi:ss')
order by date_op







