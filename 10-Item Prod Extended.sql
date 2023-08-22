/*Item Prod Extended*/

SELECT
MAST.MATNR `Material (MATNR)`
,MAKT.MAKTX `Description (MAKTX)`
,STPO.IDNRK `Component (IDNRK)`
,MAKT.MAKTX `Description (MAKTX)`
,STPO.IDNRK `Component (IDNRK)`
,MAKT.MAKTX `Description (MAKTX)`
,AUSP.ATWRT `Char. Value (ATWRT)`
,MARA.MATNR `Material (MATNR)`
,MARA.MATNR `Material (MATNR)`
,MARA.MEINS `Base Unit (MEINS)`
,MARA.MSTAE `X-Plant Status (MSTAE)`
,MARC.DISPO `MRP Controller (DISPO)`
,MARC.FEVOR `Prodn Supervisor (FEVOR)`
,MARC.DISPO `MRP Controller (DISPO)`
,AUSP.ATWRT `Char. Value (ATWRT)`
,AUSP.ATWRT `Char. Value (ATWRT)`
,AUSP.ATWRT `Char. Value (ATWRT)`
,MARA.ZZ1_PCS_SALES_UNIT_PRD `Pieces Per Sales Uni (ZZ1_PCS_SALES_UNIT_PRD)`
--,Inscope for GET W3 - part of Material Classification.Inscope for GET W3 - part of Mateial Classification `Inscope for GET W3 - part of Mateial Classification (Inscope for GET W3 - part of Mateial Classification)`
,MARA.ZZ1_PCS_SALES_UNIT_PRD `Pieces Per Sales Uni (ZZ1_PCS_SALES_UNIT_PRD)`
,AUSP.ATWRT `Char. Value (ATWRT)`
--,Possibly - Inscope for GET W3 - part of Material Classification.Possibly - Inscope for GET W3 - part of Material Classification `Possibly - Inscope for GET W3 - part of Material Classification (Possibly - Inscope for GET W3 - part of Material Classification)`
,AUSP.ATWRT `Char. Value (ATWRT)`
,ATWRT.Char. Value LEFT OUTER JOIN dev_hm2.INOB
	ON MARA.MATNR = INOB.OBJEK
	AND INOB.OBTAB = 'MARA'
	AND INOB.KLART = '001'
	AND _SCWM_ORDIM_C.MANDT = INOB.MANDT

LEFT OUTER JOIN (SELECT AUSP.MANDT, AUSP.OBJEK, AUSP.KLART, AUSP.ATWRT, AUSP.ATINN  FROM dev_hm2.AUSP
			INNER JOIN dev_hm2.CABN ON AUSP.ATINN = CABN.ATINN AND CABN.ATNAM = 'STERILIZATION_CYCLE_ID' AND  AUSP.MANDT = CABN.MANDT) AUSP
			ON INOB.CUOBJ = AUSP.OBJEK AND AUSP.KLART = '001' AND  AUFK.MANDT = AUSP.MANDT
,ATWRT.Char. Value LEFT OUTER JOIN dev_hm2.INOB
	ON MARA.MATNR = INOB.OBJEK
	AND INOB.OBTAB = 'MARA'
	AND INOB.KLART = '001'
	AND _SCWM_ORDIM_C.MANDT = INOB.MANDT

LEFT OUTER JOIN (SELECT AUSP.MANDT, AUSP.OBJEK, AUSP.KLART, AUSP.ATWRT, AUSP.ATINN  FROM dev_hm2.AUSP
			INNER JOIN dev_hm2.CABN ON AUSP.ATINN = CABN.ATINN AND CABN.ATNAM = 'EXPOSURE_GROUPS' AND  AUSP.MANDT = CABN.MANDT) AUSP
			ON INOB.CUOBJ = AUSP.OBJEK AND AUSP.KLART = '001' AND  AUFK.MANDT = AUSP.MANDT
,MARM.UMREN/UMREZ `Calc. (UMREN/UMREZ)`
,AUSP.ATWRT `Char. Value (ATWRT)`
FROM
