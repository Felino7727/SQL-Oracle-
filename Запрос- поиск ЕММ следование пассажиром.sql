select nom_mrm, depo, date_calc, JAVKA, END_RAB, IDF_BRIG, TAB_BRIG, FAM_BRIG, DATE_OTPR, ST_OTPR, DATE_PRIB, ST_PRIB, NOM_P, NOM_LOK, NPP
from md_mm.SUBS_BR_PASS_MM b, md_mm.st_doc_mm d, md_mm.main_mm m, md_mm.SUBS_BRIG_MM c
where b.idf_doc = d.idf_doc
    and m.idf_mm = d.idf_doc
    and c.idf_doc = d.idf_doc
        and depo = 4508 -- ���� ����� ������ ��
        and type_mm = 1  -- ������� ������������ �� 
        and m.status = 0 -- ������� ���������� ������
        and DATE_MM= 201411 -- ������� �����
        --and NOM_MRM= 3415 -- ����� ��
    order by JAVKA