select nom_mrm, depo, date_calc, JAVKA, END_RAB
from md_mm.main_mm a, md_mm.st_doc_mm b
where a.idf_mm = b.idf_doc
        and depo = 4508 -- ���� ����� ������ ��
        and type_mm = 0 -- ������� ������������ �� 
        and a.status = 0 -- ������� ���������� ������
        and DATE_MM= 201409 -- ������� �����
--        and NOM_MRM= 3415 -- ����� ��and depo = 4508
order by JAVKA

