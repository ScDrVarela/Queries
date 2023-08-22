/*JDE Needle Variance*/
SELECT

--Columns and tables to select from

AUFK.AUFNR `Material (AUFNR)`
,AFPO.DWERK `Description (DWERK)`
,AFPO.MATNR `Description (MATNR)`
,AFKO.DISPO `Product Line (DISPO)`
,AFKO.FEVOR `see the lookup sheet (FEVOR)`
,AUFK.AUART `Char. Value (AUART)`
,AFPO.CHARG `Description (CHARG)`
,TJ02T.TXT04 `Char. Value (TXT04)`
,MAKT.MAKTX `Description (MAKTX)`
,AFKO.GAMNG `Starting Plant (GAMNG)`
,AFKO.GAMNG `Finishing Plant (GAMNG)`
,AFKO.GMEIN `Prodn Supervisor (GMEIN)`
,JCDS.UDATE `SpecProcurement (UDATE)`
,AUFK.ERDAT `P-S matl status (ERDAT)`
,AFKO.GSTRI `Safety Stock (GSTRI)`
,AFKO.GLTRS `Tot. shelf life (GLTRS)`
,AFKO.GETRI `InhseProdTime (GETRI)`
,JCDS.UDATE `Total RL time (UDATE)`
,AUFK.AEDAT `InhseProdTime (AEDAT)`
--,Not in S/4HANA - We don't have cummulative yield.Not in S/4HANA - We don't have cummulative yield `Not Required (Not in S/4HANA - We don't have cummulative yield)`
,AFVV.MGVRG `Material type (MGVRG)`
,AFVV.LMNGA `Valuation Class (LMNGA)`
,RESB.MATNR `EAN Variant (MATNR)`
,MAKT.MAKTX `Basic material (MAKTX)`
,RESB.VMENG `Possibly - Inscope for GET W3 - part of Material Classification (VMENG)`
,MARA.ZZ1_PRODUCT_LINE_PRD `Char. Value (ZZ1_PRODUCT_LINE_PRD)`
,STPO.MENGE `MRP Type (MENGE)`
,STPO.MENGE ` (MENGE)`
,AFVV.LMNGA `Standard price (LMNGA)`
,STPO.MENGE `Material type (MENGE)`
,AFVV.LMNGA `Mat.Type Desc. (LMNGA)`
,RESB.VMENG `Description (VMENG)`
,MBEW.STPRS `Description (STPRS)`
,TJ02T.TXT04 `Used in JOIN condition (TXT04)`
,AFKO.GETRI `Used in JOIN condition (GETRI)`
,AFKO.DWERK `Used in JOIN condition (DWERK)`
,MAST.WERKS `Used in JOIN condition (WERKS)`
,AUFK.AUFNR `Used in JOIN condition (AUFNR)`
,AFVC.AUFPL `Used in JOIN condition (AUFPL)`
/*
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,. `Used in JOIN condition ()`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Used in JOIN condition (Used in JOIN  condition)`
*/
,STPO.DATUV `Used in JOIN condition (DATUV)`
,AFKO.GSTRS `Material (GSTRS)`
,STPO.VALID_TO `Description (VALID_TO)`
/*
,Used in JOIN  condition.Used in JOIN  condition `Component (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Description (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Component (Used in JOIN  condition)`
,Used in JOIN  condition.Used in JOIN  condition `Description (Used in JOIN  condition)`
,Not Required, as hardcoded to standard cost.Not Required, as hardcoded to standard cost `Char. Value (Not Required, as hardcoded to standard cost)`
*/

--Tables -> AUFK, AFPO, AFKO, TJ02T, MAKT, JCDS, AFVV, RESB, MARA, STPO, MBEW, MAST, AFVC

FROM dev_hm2.AUFK
    LEFT OUTER JOIN dev_hm2.MAKT ON AFPO.MATNR = MAKT.MATNR AND SPRAS = 'E'