CREATE OR REPLACE PROCEDURE APPL_DBW.Update_LM005 (msg   IN OUT   s_t_uzxdoc_message) IS
    
BEGIN
    UPDATE MSG_WORK.S_ITF_LOKBRIG_SVERKA a
       SET ( a.KOD_DOR )      = ( SELECT dor
                                    FROM ASKVP_VIEW.V_DIC_DEPO
                                   WHERE id_depo = A.KPZ ) ;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END Update_LM005;
/
