select nom_mrm, depo, date_calc, JAVKA, END_RAB
from md_mm.main_mm a, md_mm.st_doc_mm b
where a.idf_mm = b.idf_doc
        and depo = 4508 -- депо учета работы ЛБ
        and type_mm = 0 -- признак електронного ММ 
        and a.status = 0 -- признак актуальной записи
        and DATE_MM= 201409 -- учетный месяц
--        and NOM_MRM= 3415 -- номер ММand depo = 4508
order by JAVKA

