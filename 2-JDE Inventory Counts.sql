/* JDE Inventory Counts */
SELECT
ISEG.WERKS `Plant (WERKS)`
,ISEG.MATNR `Material (MATNR)`
,MAKT.MAKTX `Description (MAKTX)`
,MARC.MAABC `ABC Indicator (MAABC)`
,ISEG.LGORT `Stor. Loc. (LGORT)`
,ISEG.CHARG `Batch (CHARG)`
,ISEG.BUCHM `Book Quantity (BUCHM)`
,ISEG.MENGE `Quantity (MENGE)`
,ISEG.BUCHM * STPRS `Standard Price (BUCHM * STPRS)`
,ISEG.MENGE * STPRS `Standard Price (MENGE * STPRS)`
,ISEG.IBLNR `Phys. Inv. Doc. (IBLNR)`
,ISEG.USNAM `Changed By (USNAM)`
,ISEG.ZLDAT `Count Date (ZLDAT)`
,ISEG.AEDAT `Changed On (AEDAT)`
,ISEG.USNAZ `Counted By (USNAZ)`
,ISEG.GRUND `Reason f. Diff. (GRUND)`
FROM prd_hmd.ISEG
  LEFT OUTER JOIN prd_hmd.MARC ON ISEG.WERKS = MARC.WERKS AND ISEG.MATNR = MARC.MATNR AND MARC.MANDT = ISEG.MANDT
  LEFT OUTER JOIN prd_hmd.MBEW ON MBEW.BWKEY = MARC.WERKS AND MBEW.MATNR = MARC.MATNR AND MBEW.MANDT = ISEG.MANDT
  LEFT OUTER JOIN prd_hmd.MAKT ON ISEG.MATNR = MAKT.MATNR AND MAKT.MANDT = ISEG.MANDT
WHERE ISEG.MANDT = '100'
--AND ISEG.WERKS IN (<To be parameterized>)
