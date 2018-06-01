select * from nsi.lb_brig_kolona b
join
MD_BRIG.SREZ_ACTUAL_BRIG r on (r.depo_prip = b.idf_pidpr and r.NUM_COLUMN = b.NOM_KOL) 
where b.depo_oblik=4502
or (depo_tour=4502 and PR_TOUR=1)
--or (type_obj_disl = 201 and code_obj_disl = 467004)