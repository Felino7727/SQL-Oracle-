declare
s varchar2(32000):='<?xml version="1.0" encoding="windows-1251" standalone="yes" ?> 
<UZ-XDOC schema="uzvp" doc_version="1.0" doc_type="data" subtype="normal">
<HEAD messcode="LM001" from="change" password="tiger" ARM_version="19.08.2015" /> 
<BODY>
<MM kpz="501" nom="2055552" kos="501" kso="501" date="13.01.2016" depo="4502" ozn_long_dist="0" plech="" vid_rob="2" depo_prip_mash="4502" tab_mash="564" dolg_pr_mash="0" depo_prip_pom="4502" tab_pom="89" dolg_pr_pom="0" depo_prip_3l="" tab_3l="" dolg_pr_3l="" depo_prip_4l="" tab_4l="" dolg_pr_4l="" lok_nom="" lok_kod_sek="0" lok_id_ser="" javka="13.01.2016 09:20" priem="" /> 
</BODY>
</UZ-XDOC>';
v1 varchar2(20):='(77 7777 7)50';
--(11 3233 3)53'; 
v2 varchar2(20):='777777716';--'1145001002'; 
begin
  uzxdoc.Xmlmaster_V2.processing(s,v1,v2);
end;
