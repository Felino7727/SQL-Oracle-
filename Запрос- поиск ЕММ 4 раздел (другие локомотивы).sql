select c.IDF_TPS, SDATE_BEG, SDATE_END, NPP, KOD_SLED, KOD_SLED_OKDL, c.OZN_TAKS, KOD_SER, NAME_LOK, DEPO_LOK, STR_NOM_BEG, STR_NOM_END
from md_mm.main_mm a, md_mm.st_doc_mm b, md_mm.SUBS_LSLED_MM c, md_mm.SUBS_LOK_MM d
where a.idf_mm = b.idf_doc
    and b.idf_doc = c.idf_doc
    and b.idf_doc = d.idf_doc
    and c.idf_tps = d.idf_tps
        and depo = 4508 -- ���� ����� ������ ��
        and type_mm = 1 -- ������� ������������ �� 
        and a.status = 0 -- ������� ���������� ������
        and DATE_MM= 201410 -- ������� �����
        and NOM_MRM= 3494 -- ����� ��
        and c.OZN_TAKS in (0,3) -- ������� ���������� ��� ���������� 
    order by NPP -- ���������� �� ������ ������ ����������