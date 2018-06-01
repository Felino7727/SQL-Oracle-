select NOM_MRM, DEPO, DATE_CALC, c.IDF_TPS, c.IDF_SEC, c.ID_SER, c.NOM_LOK, c.KOD_SEK
from md_mm.main_mm a, md_mm.st_doc_mm b, md_mm.SUBS_SEC_MM c
where a.idf_mm = b.idf_doc
    and b.idf_doc = c.idf_doc
        and depo in (4303,4501, 4502, 4508, 3207, 3501, 3201, 3290, 4002) -- депо учета работы ЛБ
        and type_mm = 1 -- признак електронного ММ 
        and a.status = 0 -- признак актуальной записи
        and DATE_MM= 201504
        and NOM_MRM != -1
        and NOM_MRM >= 702384
        and DATE_CALC >= TO_DATE('04/06/2015','MM/DD/YYYY')-- учетный месяц
        order by NOM_MRM, nom_lok, KOD_SEK