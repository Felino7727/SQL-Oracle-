--Анализ сообщения LM002 в EVENT.EV_ALL_EVENTS на наявность программных ошибок за период
Select e.IDF_EVENT, ID_1, ID_2, ID_3, e.KOD_MESS, KOD_OBR, KOD_ERR, PR_MOD, SUBTYPE, DATE_BEG, MSG_LOG
From EVENT.EV_ALL_EVENTS e
join EVENT.LOG_MSG MSG on e.IDF_EVENT = MSG.IDF_EVENT 
Where
e.KOD_MESS in ('LM011')
and e.PART in (5)
--and kod_obr = 9
--and ID_2 like '48%'
--and e.IDF_EVENT = 4697815241
and DATE_BEG > to_date ('15.12.2017 00:00:00','DD.MM.YYYY hh24:mi:ss')
and DATE_BEG < to_date ('16.12.2017 00:00:00','DD.MM.YYYY hh24:mi:ss')
and (MSG_LOG like '%ORA%')-- or  MSG_LOG like '%APPL_DBW%' or  MSG_LOG like '%ОШИБКА%' or  MSG_LOG like '%ПОМИЛКА%')
order by DATE_BEG desc