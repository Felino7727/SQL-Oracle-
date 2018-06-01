-- 7 розділ (Відомості про хід, вагу поїзда та виділену маневрову роботу) 
select nom_mrm, depo, date_calc, JAVKA, END_RAB, SDATE_BEG, SDATE_END, STR_NOM_BEG, STR_NOM_END, NOM_P, VS_VAG
from md_mm.st_doc_mm a, md_mm.main_mm b, md_mm.SUBS_POIZD_MM e
where a.idf_mm = b.idf_mm
    and a.idf_doc = e.idf_doc
        and DATE_MM= 201410 -- учетный месяц
        and depo = 4508 -- депо учета работы ЛБ
        and nom_mrm = 3494 -- номер ММ
        and type_mm = 1 -- признак електронного ММ 
        and b.status = 0 -- признак актуальной записи


-- 7 розділ (Підсумкові данні про склад поїзду №)
select nom_mrm, depo, date_calc, JAVKA, END_RAB, d.STR_NOM_BEG, d.STR_NOM_END, KOD_RPS, KOL_GR, KOL_POR, Z_TIP_PARKA--, NOM_P, VS_VAG
from md_mm.st_doc_mm a, md_mm.main_mm b, md_mm.SUBS_P_RPS_MM d--, md_mm.SUBS_POIZD_MM e
where a.idf_mm = b.idf_mm
    and a.idf_doc = d.idf_doc
    --and a.idf_doc = e.idf_doc
        and DATE_MM= 201410 -- учетный месяц
        and depo = 4508 -- депо учета работы ЛБ
        and nom_mrm = 3494 -- номер ММ
        and type_mm = 1 -- признак електронного ММ 
        and b.status = 0 -- признак актуальной записи