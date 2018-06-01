CREATE OR REPLACE PROCEDURE APPL_DBW.Insert_LMM005(
    msg   IN OUT s_t_uzxdoc_message )
IS
    mm   stat_nom.ITF_LOKBRIG_SVERKA.nom_mm%TYPE;
BEGIN
  

 FOR j IN (SELECT * FROM stat_nom.ITF_LOKBRIG_SVERKA)
      LOOP     
              DELETE stat_nom.LOKBRIG_SVERKA
         WHERE nom_mm = j.nom_mm;
      END LOOP;


    INSERT INTO stat_nom.LOKBRIG_SVERKA( KOD_DOR
                                        ,DEPO_MM
                                        ,NOM_MM
                                        ,KPZ
                                        ,DATE_OP
                                        ,DATE_CALC
                                        ,KOP
                                        ,OZN_MM
                                        ,PR_TAKS
                                        ,ozn_del
                                        ,DATE_INF )
        ( SELECT KOD_DOR
                ,DEPO_MM
                ,NOM_MM
                ,KPZ
                ,date_op
                ,DATE_CALC
                ,KOP
                ,OZN_MM
                ,PR_TAKS
                ,ozn_del
                ,SYSDATE
            FROM stat_nom.ITF_LOKBRIG_SVERKA );
EXCEPTION
    WHEN NO_DATA_FOUND
    THEN
        NULL;
    WHEN OTHERS
    THEN
        RAISE;
END Insert_LMM005;
/
