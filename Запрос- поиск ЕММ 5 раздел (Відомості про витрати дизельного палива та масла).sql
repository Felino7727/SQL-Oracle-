select b.IDF_MM, b.NOM_MRM, b.DEPO, b.DATE_MM, c.IDF_TPS, c.KOD_SER, c.NAME_LOK, c.OZN_TAKS, d.IDF_SEC, d.ID_SER, d.NOM_LOK, d.KOD_SEK
from md_mm.main_mm a, md_mm.st_doc_mm b, md_mm.SUBS_LOK_MM c, md_mm.SUBS_SEC_MM d
where a.idf_mm = b.idf_doc
    and b.idf_doc = c.idf_doc
    and b.idf_doc = d.idf_doc
    and c.IDF_TPS = d.IDF_TPS 
        and type_mm = 1 -- признак електронного ММ 
        and a.status = 0 -- признак актуальной записи
        and depo = 4508 -- депо учета работы ЛБ
        and NOM_MRM= 3415 -- номер ММ
        and DATE_MM= 201410 -- учетный месяц
        and c.OZN_TAKS in (1,2,3) -- признак таксировки для локомитива 
    order by c.NAME_LOK -- сортировка по номеру ТРО
