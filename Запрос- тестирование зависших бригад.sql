select IDF_BRIG, DEPO_PRIP, DEPO_TOUR, FAM, NAME, TYPE_OBJ_DISL, CODE_OBJ_DISL, DATE_OP, CODE_OP, CODE_OPER, PR_WORK 
from md_brig.srez_actual_brig
where  PR_WORK = Null
or (DATE_OP <= to_date ('26.03.2015','dd.mm.yyyy') and (PR_WORK = 1 or (PR_WORK = 0 and CODE_OBJ_DISL != DEPO_PRIP))
order by DATE_OP

--1.    Якщо в роботі то час здійснення останньої операції не повинен перевищувати 3 доби;
--2.    Якщо на відпочинку не в своєму депо (депо приписки/відрядження) то час здійснення останньої операції не повинен перевищувати 3 доби;
--3.    Якщо відсутня ознака роботи.

select * FROM
(select idf_mod,idf_brig,depo_prip,tab_nom,date_op,code_op, esr_op, date_beg_work, code_oper,idf_mm, date_beg_mm, date_end_mm, pr_work, pr_mash,nom_mm, time_yavka from md_brig.srez_actual_brig
where pr_work is null and depo_prip in (select id_depo from askvp_view.v_dic_depo where kod_adm=22 and kod_gosp=5)
and  code_op not in (100,99,971,972,101,973)---or idf_mm is not null 
union all
select idf_mod,idf_brig,depo_prip,tab_nom,date_op,code_op, esr_op, date_beg_work, code_oper,idf_mm, date_beg_mm, date_end_mm, pr_work, pr_mash,nom_mm, time_yavka from md_brig.srez_actual_brig
where pr_work is null and depo_prip in (select id_depo from askvp_view.v_dic_depo where kod_adm=22 and kod_gosp=5)
and  code_op in (973) and idf_mm is not null)


select idf_mod,idf_brig,depo_prip,tab_nom,code_obj_disl,date_op,code_op, esr_op, date_beg_work, code_oper,idf_mm, date_beg_mm, date_end_mm, pr_work, pr_mash,nom_mm, time_yavka from md_brig.srez_actual_brig
where TYPE_OBJ_DISL=103 and depo_prip in (select id_depo from askvp_view.v_dic_depo where kod_adm=22 and kod_gosp=5)
and  DATE_OP<= to_date ('31.03.2015 17:24','dd.mm.yyyy HH24:MI')--<SYSDATE-16



select * from md_lok.srez_actual_tps
where idf_tps =174190246