
WITH transaksi AS 
(
SELECT char2 AS MEMBER,
char3 AS plu, 
trim(char1||num2||num3||date1) AS struk,
num4 netsales,
num5 promo
FROM ztampungan WHERE pk = 'test_dn'
),

produk AS (
SELECT char1 AS item, char2 AS descp,char4 AS TYPE, char6 AS kat, char8 AS dept, char9 AS merek,char10 AS kat  
FROM ZTAMPUNGAN z  WHERE pk = 'itemDNA' AND char10 = 'COOKING'
),

cust AS (
SELECT no_kartu, JENIS_KELAMIN , to_char(sysdate, 'YYYY') -  to_char(EXTRACT (YEAR FROM TGL_LAHIR)) AS umur, STATUS_NIKAH FROM MASTER_CUST mc 
)

--cust_trx AS(
--SELECT char2 AS mmb, 
--max(date1),
--count(DISTINCT date1)
--FROM ztampungan WHERE pk = 'test_dn'
--GROUP BY char2
--)
SELECT sum(cookspend), sum(babyspend), sum(gamespend) FROM (

SELECT MEMBER,jenis_kelamin, umur, status_nikah, sum(COOKING), sum(HAVEBABY),sum(GAMES),
CASE WHEN SUM(COOKING)>0 THEN 'Y' ELSE 'N' END COOKING ,
CASE WHEN SUM(HAVEBABY)>0 THEN 'Y' ELSE 'N' END HAVEBABY,
CASE WHEN SUM(GAMES)>0 THEN 'Y' ELSE 'N' END GAMES,
sum(COOKINGSPEND) cookspend,sum(HAVEBABYSPEND)babyspend,sum(GAMESSPEND)gamespend,
SUM(COOKINGSPEND)+SUM(HAVEBABYSPEND)+SUM(GAMESSPEND) TOTALSPEND,
count(DISTINCT struk) struk
FROM (

SELECT MEMBER,
CASE WHEN  jenis_kelamin = 0 THEN 'WANITA'
WHEN jenis_kelamin = 1 THEN 'PRIA'
ELSE 'NO DATA'
END JENIS_KELAMIN, 
umur, status_nikah ,plu,descp,merek,struk,netsales,promo,
CASE WHEN kat = 'COOKING' THEN 1 ELSE 0 END COOKING,
CASE WHEN kat = 'HAVE BABY' THEN 1 ELSE 0 END HAVEBABY,
CASE WHEN KAT = 'GAMES' THEN 1 ELSE 0 END GAMES,
CASE WHEN kat = 'COOKING' THEN netsales ELSE 0 END COOKINGSPEND,
CASE WHEN kat = 'HAVE BABY' THEN netsales ELSE 0 END HAVEBABYSPEND,
CASE WHEN KAT = 'GAMES' THEN netsales ELSE 0 END GAMESSPEND

FROM transaksi 
LEFT JOIN cust ON MEMBER = no_kartu
LEFT JOIN produk ON plu = item
--WHERE MEMBER = '9990010190422513'
)

GROUP BY MEMBER,jenis_kelamin, umur, status_nikah

)


SELECT * FROM report.RPT_TRANS_OSHOP rto 




