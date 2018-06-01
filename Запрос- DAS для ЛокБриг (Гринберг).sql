SELECT w.B_DEPO_OBL, w.B_NOM_MM, nvl(w.PR_MASH,1)PR_MASH, w.B_TAB_NOM, w.B_FAM, w.B_NAME,  w.B_MID_NAME, w.B_DEPO_PRIP, w.B_VID_ROB, w.DATE_JAVKA, e.ID_SER, e.nom,  e.ID_DEPO,  e.DATE_PRIJOM,  r.DATE_VUHID_KP, t.DATE_ZAHID_KP, u.DATE_ZDACHA, DATE_VIDPOCH
      FROM   
               (select Q.B_DEPO_OBL, Q.B_NOM_MM,  Q.CODE_OP as JAVKA, Q.DATE_OP as DATE_JAVKA, Q.B_TAB_NOM, Q.B_FAM, Q.B_NAME, Q.B_MID_NAME, Q.B_DEPO_PRIP, Q.PR_MASH, Q.B_VID_ROB  
                     from rktme.ro_lok q where  Q.CODE_OP in (28,31,35)) w
      left join
               (select Q.B_DEPO_OBL, Q.B_NOM_MM, Q.CODE_OP as PRIJOM, Q.ID_SER, q.nom, Q.ID_DEPO, Q.DATE_OP AS DATE_PRIJOM, q.B_TIME_YAVKA  
                     from rktme.ro_lok q  where  Q.CODE_OP in (24,43,124,114)) e 
                        on (w.B_NOM_MM=e.B_NOM_MM and w.B_DEPO_OBL=e.B_DEPO_OBL and w.DATE_JAVKA=e.B_TIME_YAVKA )    
      left join
               (select Q.B_DEPO_OBL, Q.B_NOM_MM, Q.CODE_OP as VUHID_KP, Q.DATE_OP AS DATE_VUHID_KP, q.B_TIME_YAVKA  
                     from rktme.ro_lok q where Q.CODE_OP in (902)) r 
                        on (w.B_NOM_MM=r.B_NOM_MM and w.B_DEPO_OBL=r.B_DEPO_OBL and w.DATE_JAVKA=r.B_TIME_YAVKA )  
      left join
               (select Q.B_DEPO_OBL, Q.B_NOM_MM, Q.CODE_OP as ZAHID_KP, Q.DATE_OP AS DATE_ZAHID_KP, q.B_TIME_YAVKA  
                     from rktme.ro_lok q where Q.CODE_OP in (901)) t 
                        on (w.B_NOM_MM=t.B_NOM_MM and w.B_DEPO_OBL=t.B_DEPO_OBL and w.DATE_JAVKA=t.B_TIME_YAVKA )                
      left join
               (select Q.B_DEPO_OBL, Q.B_NOM_MM, Q.CODE_OP as ZDACHA, Q.DATE_OP AS DATE_ZDACHA, Q.B_TAB_NOM, q.B_TIME_YAVKA   
                     from rktme.ro_lok q where Q.CODE_OP in (25, 41, 125, 115,141)) u 
                        on (w.B_NOM_MM=u.B_NOM_MM and w.B_DEPO_OBL=u.B_DEPO_OBL and w.DATE_JAVKA=u.B_TIME_YAVKA )                
      left join
               (select Q.B_DEPO_OBL, Q.B_NOM_MM, Q.CODE_OP as VIDPOCH, Q.DATE_OP AS DATE_VIDPOCH, Q.B_TAB_NOM, q.B_TIME_YAVKA   
         from rktme.ro_lok q where  Q.CODE_OP in (31, 37, 131, 137)) p 
                        on (w.B_NOM_MM=p.B_NOM_MM and w.B_DEPO_OBL=p.B_DEPO_OBL and w.DATE_JAVKA=p.B_TIME_YAVKA  and w.B_TAB_NOM=p.B_TAB_NOM)
     where 
     w.B_NOM_MM=:mnum and 
     w.DATE_JAVKA<=to_date(:d1,'dd.mm.yyyy')and
     w.DATE_JAVKA>=to_date(:d0,'dd.mm.yyyy')
     


SELECT SRC, CODE_OP, B_DEPO_OBL, B_NOM_MM, nvl(PR_MASH,1)PR_MASH, B_TAB_NOM, B_FAM, B_NAME,  B_MID_NAME, B_DEPO_PRIP, B_VID_ROB,DATE_OP, B_TIME_YAVKA, ID_SER, nom,  ID_DEPO
 from rktme.ro_lok
      where 
     B_NOM_MM=:mnum and 
     B_TIME_YAVKA<=to_date(:d1,'dd.mm.yyyy') and
     B_TIME_YAVKA>=to_date(:d0,'dd.mm.yyyy') and 
     SRC in (0,2) --CODE_OP  in (28, 31, 35, 128, 24, 43, 124, 114, 902, 901, 25, 41, 125, 115, 141, 31, 37, 131, 137) --not in (1,2,3, 201) 
     order by date_op

