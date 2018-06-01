SELECT a.br_tab_nom,
       a.br_fam,
       a.br_name,
       a.br_mid_name,
       a.l_kod_ser,
       a.l_nom,
       a.p_napr,
      a.p_kod_dor,
       a.br_kod_dor
       ,A.P_ESR_FORM
       ,A.P_NOM_SOST
       ,A.P_ESR_NAZN
       ,B.MNAME
       ,B.SHORT_NAME
  FROM ASKVP_VIEW.V_OKDB_FULL_UZ_ACT a, ASKVP_VIEW.v_dic_depo b
 WHERE     a.BR_DEPO_PRIP = :depo
       AND (a.p_kod_dor = :kod_dor OR a.br_kod_dor = :kod_dor)
and trunc(a.br_date_op,'dd') = :date1 
and b.id_depo = :depo