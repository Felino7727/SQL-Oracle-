select a.NOMMAR_ID, a.NOMMAR, a.DATE_DOCUM, c.JAVKA, c.ENDWORK, b.KODDDPPR, b.DATA, b.TABNOMMASH, b.KODDDP_MASH, b.FAMMASH, b.POSPRMASH, b.TABNOMPOM, b.KODDDP_POM, b.FAMPOM, b.POSPRPOM, b.RODROB
from TCHTHU.NUMBERM a, TCHTHU.R1_BASE b, TCHTHU.R3_BASE c
where 
 a.NOMMAR= b.NOMMAR
 and a.NOMMAR= c.NOMMAR
 and a.NOMMAR= 704701



select IDF_MM, CODE_OP, ESR_OP, TAB_NOM, FAM, DEPO_PRIP, PR_MASH, NOM_MM, TIME_YAVKA 
from MD_BRIG.SREZ_ACTUAL_BRIG
where
 NOM_MM=704701
 and code_op = 28