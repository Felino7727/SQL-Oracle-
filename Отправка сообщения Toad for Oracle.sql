declare
s varchar2(32000):='<?xml version="1.0" encoding="windows-1251"?>
<UZ-XDOC schema="uzvp" doc_version="1.0" doc_type="data" subtype="normal">
<HEAD messcode="LM051" from="change" password="password" id_node_src="6314502102" id_ev_node_src="1842100000000139" />
<BODY>
<PLAN idf_plg="12876202532" depo_obl="4502" code_op="501" date_op="06.02.2014 15.50" vid_rob="2" id_tjga="1" type_obj="" code_obj="" date_beg_plan="01.01.0001 0:00:00">
<BRIG idf_brig="55880613" tab_nom="518" depo_prip="4502" pr_mash="1" />
<BRIG idf_brig="750575135" tab_nom="62" depo_prip="4502" pr_mash="2" />
</PLAN>
</BODY>
</UZ-XDOC>';
v1 varchar2(20):='(77 7777 7)50';
--(11 3233 3)53'; 
v2 varchar2(20):='777777716';--'1145001002'; 
begin
  s_Xmlmaster_V2.processing(s,v1,v2);
end;
