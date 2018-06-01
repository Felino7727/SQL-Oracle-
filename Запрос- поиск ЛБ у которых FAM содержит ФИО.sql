select tab_nom, fam, name, mid_name, depo_prip
from md_brig.srez_actual_brig
where fam like'% %'
order by depo_prip, tab_nom