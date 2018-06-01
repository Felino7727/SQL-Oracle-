select tab_nom, CODE_OBJ_DISL, depo_prip
from md_brig.srez_actual_brig
where (tab_nom, CODE_OBJ_DISL) in 
(
select tab_nom, CODE_OBJ_DISL
from md_brig.srez_actual_brig
where type_obj_disl = 205
having count(*)>1
group by tab_nom, CODE_OBJ_DISL
)
order by tab_nom, CODE_OBJ_DISL
