select 
*
from 
(
    select 
        t1.nod,
        t1.esr_op,
        CODE_TEST,
--     (t1.pr_test||t1.code_err||COMMENT_ERR_U) text_err, 
     count(*) kol
    from 
    (
       select 
        e.kod_dor,  
        e.nod,
        e.esr_op,
        o.CODE_ERR, 
        o.CODE_TEST,
        l.COMMENT_ERR_U ,
           e.ID_4, (k.P1 || '  ' || k.P2) tro, k.P5, k.P6, k.P8, (e.ID_1 || '+' ||  e.ID_2|| '+' ||  e.ID_3) sum_id
            ,k.P1,k.P2, k.P3, k.P4, i.FAM ,O.PR_TEST  ,r.TIME_YAVKA,e.kod_mess, t.idf_mm  
        from event.EV_ALL_EVENTS e, event.EV_MESS_ERR o, event.EV_ADD_MESS_PAR k, log_control.LIST_TEST_LK l, 
             MD_BRIG.OPERS_BRIG t, MD_BRIG.ST_TID_BRIG i, MD_BRIG.ST_MM_BRIG r--,ASKVP_VIEW.V_D_SERII u
        where 
            e.IDF_EVENT=k.IDF_EVENT 
            and e.IDF_EVENT=o.IDF_EVENT
            and k.P5= i.DEPO_PRIP
            and k.P6= i.tab_nom
            and e.IDF_EVENT = t.IDF_MOD
            and t.idf_tid= i.idf_tid
            and t.IDF_MM = r.IDF_MM
            and  o.CODE_TEST= l.code_test 
            and i.part= '300101'
            and e.type_inf = 1
            and t.tip_ist = 2
            and o.CODE_TEST in ('1123199080501', '1123199080502', '1123199080503', '1123199080504', '1123199080505', '1121199080002', '1121199080021', '1121199080020') 
            and (e.kod_dor=:kod_dr or :kod_dr = 0 )
    --        and (e.nod=:kod_dir or :kod_dir = 0)
    --       and (e.esr_op=:kod_stan or :kod_stan= -1)
            and trunc(e.date_op)=to_date (:dat,'dd.mm.yy')
            )t1
    join ASKVP_VIEW.V_D_SERII t2 on( t2.id_ser= nvl(t1.p1,0))
    join NSI.LD_PIDPR  t3  on (nvl(t1.p5,0) =    t3.id_pidpr)
    group by kod_dor,  
        nod,
        esr_op,
        CODE_TEST,
     t1.pr_test,t1.code_err,COMMENT_ERR_U
    ) 
    pivot 
    (
    sum(kol)
    for code_test in ('1123199080501' as code_test_01,
    '1123199080502' as code_test_02,'1123199080503'  as code_test_03,
    '1123199080504' as code_test_04,'1123199080505' as code_test_05,
    '1121199080002' as code_test_06,'1121199080021' as code_test_07,
    '1121199080020' as code_test_08)
     )
order by nod, esr_op 