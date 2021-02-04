SELECT DESCP, UKURAN 
FROM MASTER_NAS_M mnm 
WHERE lower(mnm.DESCP) LIKE '%lifebuoy b.w%'
AND mnm.UKURAN = 250


SELECT TR_MEMBERS, TR_PLU_PCS, TR_DATE, TR_JAM_TRANSAKSI, NVL(TR_TYPE,'N'), NVL(rt.tr_flag_rpt,'KOSONG') AS TR_FLAG_RPT FROM RPT_TRANS rt WHERE
rt.TR_DATE BETWEEN '01jan21' AND '04jan21'
AND rt.DW_BRANCH_CODE = 'TZ01'
and NVL(rt.tr_members,'N') not like '%#%'
and NVL(rt.tr_members,'N') not in (select mcp_no_kartu from report.rpt_ms_ssp)
and NVL(rt.tr_type,'N') not like '%R%'
and NVL(rt.tr_type,'-') not like '%X%'
and NVL(rt.tr_type,'-') not like '%V%'
and NVL(rt.tr_flag_rpt,'N') not in ('S','B','X')
and NVL(rt.tr_type, '-') not in ('S', 'B')
and length(rt.tr_members) in (10,12,16)

SELECT * FROM report.RPT_TRANS rt 
WHERE rt.TR_MEMBERS = '9990010044784645'
--AND rt.TR_PLU_PCS = '120764'
AND rt.TR_DATE BETWEEN '29Aug20' AND '29Aug20'

--AND DW_BRANCH_CODE = 'TZ01'
--AND LOG_PROMO IS NOT NULL 


SELECT * FROM report.MASTER_PLU_ALFAGIFT	
WHERE lower(MPA_DESC) LIKE 'sgm%'



SELECT count(*)
--DATE1 tanggal, 
--char2 MEMBER,
--char1 toko, 
--num1 kasir, 
--num2 bon, 
--char4 invoice,  
--char3 plu, 
--descp_sub_dept
--num3 sales, 
--num4 qty
FROM ZTAMPUNGAN 
WHERE PK = 'susubayi'



SELECT * FROM report.ZTAMPUNGAN z
WHERE z.PK = 'alfagift_member'



