select nom_mrm, depo, date_calc, DATE_MM, JAVKA, END_RAB
from md_mm.main_mm a, md_mm.st_doc_mm b
where a.idf_mm = b.idf_doc
        and depo in (4303,4501, 4502, 4508, 3207, 3501, 3201, 3290, 4002) -- ���� ����� ������ ��
        and type_mm = 1 -- ������� ������������ �� 
        and a.status = 0 -- ������� ���������� ������
--        and DATE_MM= '201502' -- ������� �����
        and DATE_CALC >= to_date ('24.02.2015','dd.mm.yyyy')
        and NOM_MRM != -1 -- ����� ��and depo = 4508
order by Depo, JAVKA desc


