declare
S varchar2(32000):='<?xml version="1.0" encoding="windows-1251"?>
<UZ-XDOC schema="uzvp" doc_version="1.0" doc_type="data" subtype="normal">
<HEAD messcode="LM012" from="change" password="tiger" id_node_src="6314501300" id_ev_node_src="5168500000000079" />
<BODY>
<MM type_mm="2" idf_emm="" code_op="12" id_ev_arm="" p_del="" idf_mm="" kpz="4501" nom_mrm="1584956" ozn_mm="1" date_mm="22.11.2017" date_calc="23.11.2017" kod_kol="1">
<BRIG depo="4501" type_obj_javka="205" code_obj_javka="4501" javka="22.11.2017 08:00" priem="22.11.2017 08:21" sd_lok="22.11.2017 19:40" end_rab="22.11.2017 20:00" id_depo_out="" depo_out="" id_depo_in="" depo_in="" otdyh="" type_obj_end_rab="205" code_obj_end_rab="4501">
<BRIG_PERSON idf_brig="3092391" depo_prip="4501" tab_brig="1911" fam_brig="Чуприна" dolg_mm="1" date_beg_rab="22.11.2017 08:00" date_end_rab="22.11.2017 20:00" />
<BRIG_PERSON idf_brig="760537645" depo_prip="4501" tab_brig="3444" fam_brig="Мех" dolg_mm="2" date_beg_rab="22.11.2017 08:00" date_end_rab="22.11.2017 20:00" />
</BRIG>
<LOK idf_tps="13271395760" pr_sec="2" kod_ser="530" name_lok="1064  + 1423 Б" depo_lok="4501" cnt_sek="3" ozn_taks="1" priem="22.11.2017 08:21" priem_end="" sd_lok_beg="" sd_lok="22.11.2017 19:40" id_depo_out="" depo_out="" tip_inf_depo_out="" id_depo_in="" depo_in="" tip_inf_depo_in="">
<SEC idf_sec="174198389" nom_lok="1064" kod_sek="1" sdacha_pred="22.11.2017 08:00" ozn_p="" ozn_zm="" ozn_op="" ozn_rec="">
<PER date_zam="22.11.2017 08:00" op_zam="1" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1668" topl_kg="" mas_l="" mas_kg="" temp="" />
<PER date_zam="22.11.2017 08:21" op_zam="2" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1668" topl_kg="" mas_l="" mas_kg="" temp="" />
<PER date_zam="22.11.2017 19:40" op_zam="3" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1672" topl_kg="" mas_l="" mas_kg="" temp="" />
</SEC>
<SEC idf_sec="174198390" nom_lok="1064" kod_sek="2" sdacha_pred="22.11.2017 08:00" ozn_p="" ozn_zm="" ozn_op="" ozn_rec="">
<PER date_zam="22.11.2017 08:00" op_zam="1" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1668" topl_kg="" mas_l="" mas_kg="" temp="" />
<PER date_zam="22.11.2017 08:21" op_zam="2" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1668" topl_kg="" mas_l="" mas_kg="" temp="" />
<PER date_zam="22.11.2017 19:40" op_zam="3" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1672" topl_kg="" mas_l="" mas_kg="" temp="" />
</SEC>
<SEC idf_sec="174197958" nom_lok="1423" kod_sek="2" sdacha_pred="22.11.2017 08:00" ozn_p="" ozn_zm="" ozn_op="" ozn_rec="">
<PER date_zam="22.11.2017 08:00" op_zam="1" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1551" topl_kg="" mas_l="" mas_kg="" temp="" />
<PER date_zam="22.11.2017 08:21" op_zam="2" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1551" topl_kg="" mas_l="" mas_kg="" temp="" />
<PER date_zam="22.11.2017 19:40" op_zam="3" lich_p="" lich_zm="" lich_rec="" lich_op="" topl_l="1551" topl_kg="" mas_l="" mas_kg="" temp="" />
</SEC>
</LOK>
<WORK_MM str_nom="1" pr_rab="1" type_obj_disl="" esr="453105" kod_work="90" nom_park="1" nach="22.11.2017 08:21" konec="22.11.2017 19:40" p_man_stay_teh ="" stay_ogid_rab="612" stay_ogid_dv="" tip_inf_pr="" tip_inf_otpr="" />
</MM>
</BODY>
</UZ-XDOC>
  ';
V1 varchar2(20):='(11 3233 3)53'; 
V2 varchar2(20):='114503042';--'1145001002'; 
begin
  UZXDOC.XMLMASTER_V2.PROCESSING(S,V1,V2);
end;