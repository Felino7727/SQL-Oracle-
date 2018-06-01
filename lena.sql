/* Formatted on 30/05/2017 12:50:35 (QP5 v5.252.13127.32867) */
SELECT a.nom_mm, 1, a.OZN_MM
  FROM STAT_NOM.lokbrig_sverka a
 WHERE     a.DATE_OP = TO_DATE( :date_op, 'dd.mm.yyyy' )
       AND (    a.OZN_MM = :ozn_mm
             OR :ozn_mm IS NULL
             OR (     :ozn_mm = 3
                  AND ozn_mm IN (1
                                ,2
                                ,3
                                ,4
                                ,5
                                ,6
                                ,7
                                ,8
                                ,9) ) )
       AND a.depo_mm = :depo
       AND ( a.KPZ = :kpz OR :kpz IS NULL )
       AND a.ozn_del = 0
UNION
SELECT b.NOM_MRM, 2, b.OZN_MM
  FROM MD_MM.SREZ_ACTUAL_MM b
 WHERE     b.DATE_CALC = TO_DATE( :date_op, 'dd.mm.yyyy' )
       AND b.TYPE_MM = 0
       AND b.DEPO = :depo
       AND ( b.KPZ = :kpz OR :kpz IS NULL )
       AND (( :ozn_mm1 = 1 and (b.ozn_mm is null or b.ozn_mm = 1)) OR (:ozn_mm1 = 2  AND b.ozn_mm= 2) )