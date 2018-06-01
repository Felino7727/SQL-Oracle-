--Перечень ММ в АСК ВП УЗ-Е у которых нет LM003, LM004 по 2 дирекции филии "Донецкая дорога" за период 

Select IDF_MM, NOM_MRM, a.DEPO, DATE_CALC, DATE_MM, KPZ, IDF_MOD, DATE_INF, IDF_TAKS, IDF_TAKS_PAL, CODE_OP, DATE_OP
From MD_MM.SREZ_ACTUAL_MM a, ASKVP_VIEW.v_dic_depo b
Where
a.depo = b.id_depo
and b.NOD = 2
and a.type_mm = 0
and (idf_taks is null or idf_taks_pal is null)
and a.depo like '48%'
and a.date_calc >= TO_DATE('01/01/2017','DD/MM/YYYY')
and a.date_calc <= TO_DATE('23/01/2017','DD/MM/YYYY')
order by a.depo, a.date_calc


--Перечень ММ в АСК ВП УЗ-Е по 2 дирекции филии "Донецкая дорога" за период 

Select IDF_MM, NOM_MRM, a.DEPO, DATE_CALC, DATE_MM, KPZ, IDF_MOD, DATE_INF, IDF_TAKS, IDF_TAKS_PAL, CODE_OP, DATE_OP
From MD_MM.SREZ_ACTUAL_MM a, ASKVP_VIEW.v_dic_depo b
Where
a.depo = b.id_depo
and b.NOD = 2
and type_mm = 0
and a.depo like '48%'
and a.date_calc >= TO_DATE('01/01/2017','DD/MM/YYYY')
and a.date_calc <= TO_DATE('23/01/2017','DD/MM/YYYY')
order by a.depo, date_calc