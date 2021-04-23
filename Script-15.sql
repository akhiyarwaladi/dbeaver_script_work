
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
SELECT char1 AS item, char2 AS descp,char9 AS merek,char10 AS kat  
FROM ZTAMPUNGAN z  WHERE pk = 'itemDNA' AND char10 IS NOT null
),

cust AS (
SELECT no_kartu, 
JENIS_KELAMIN , 
to_char(sysdate, 'YYYY') -  to_char(EXTRACT (YEAR FROM TGL_LAHIR)) AS umur, 
STATUS_NIKAH ,
telp,
alamat_email AS email,
kota_rmh
FROM MASTER_CUST mc 
),

customer_online AS (
SELECT TRO_MEMBERS AS mmb, COUNT(DISTINCT TRO_DATE_ORDER) AS ol_order FROM report.RPT_TRANS_OSHOP rto 
WHERE TRO_MEMBERS IN (SELECT char2 FROM ZTAMPUNGAN z2 WHERE pk = 'test_dn' )
AND TRO_DATE_ORDER BETWEEN '01jan21' AND '28feb21'
AND tro_plu IN (SELECT char1 FROM ZTAMPUNGAN z  WHERE pk = 'itemDNA' AND char10 = 'COOKING')
GROUP BY TRO_MEMBERS
)

--payment_online AS (
--SELECT TRO_PAYMENT_METHOD AS payment_online, count(DISTINCT TRO_MEMBERS) FROM report.RPT_TRANS_OSHOP rto 
--WHERE TRO_MEMBERS IN (SELECT char2 FROM ZTAMPUNGAN z2 WHERE pk = 'test_dn' )
--AND TRO_DATE_ORDER BETWEEN '01jan21' AND '28feb21'
--AND tro_plu IN (SELECT char1 FROM ZTAMPUNGAN z  WHERE pk = 'itemDNA' AND char10 = 'COOKING')
--GROUP BY TRO_PAYMENT_METHOD
--)

SELECT MEMBER, jenis_kelamin, umur, status_nikah,telp, email,kota_rmh,ol_order,cooking, havebaby,games,cookspend,babyspend,gamespend,
round(cookspend/TOTALSPEND * 100,2) SPEND_FOR_COOK,
round(babyspend/TOTALSPEND * 100,2) SPEND_FOR_BABY,
round(gamespend/TOTALSPEND * 100,2) SPEND_FOR_GAMES,
TOTALSPEND

FROM (

SELECT MEMBER,jenis_kelamin, umur, status_nikah,telp, email,kota_rmh,ol_order, sum(COOKING), sum(HAVEBABY),sum(GAMES),
CASE WHEN SUM(COOKING)>0 THEN 'Y' ELSE 'N' END COOKING ,
CASE WHEN SUM(HAVEBABY)>0 THEN 'Y' ELSE 'N' END HAVEBABY,
CASE WHEN SUM(GAMES)>0 THEN 'Y' ELSE 'N' END GAMES,
sum(COOKINGSPEND) cookspend,sum(HAVEBABYSPEND)babyspend,sum(GAMESSPEND)gamespend,
SUM(COOKINGSPEND)+SUM(HAVEBABYSPEND)+SUM(GAMESSPEND) TOTALSPEND
FROM (

SELECT MEMBER,
CASE WHEN  jenis_kelamin = 0 THEN 'WANITA'
WHEN jenis_kelamin = 1 THEN 'PRIA'
ELSE 'NO DATA'
END JENIS_KELAMIN, 
umur, status_nikah ,telp, email,kota_rmh,plu,descp,merek,struk,netsales,promo,ol_order,
CASE WHEN kat = 'COOKING' THEN 1 ELSE 0 END COOKING,
CASE WHEN kat = 'HAVE BABY' THEN 1 ELSE 0 END HAVEBABY,
CASE WHEN KAT = 'GAMES' THEN 1 ELSE 0 END GAMES,
CASE WHEN kat = 'COOKING' THEN netsales ELSE 0 END COOKINGSPEND,
CASE WHEN kat = 'HAVE BABY' THEN netsales ELSE 0 END HAVEBABYSPEND,
CASE WHEN KAT = 'GAMES' THEN netsales ELSE 0 END GAMESSPEND

FROM transaksi 
LEFT JOIN cust ON MEMBER = no_kartu
LEFT JOIN produk ON plu = item
LEFT JOIN customer_online ON MEMBER = mmb
--LEFT JOIN payment_online ON MEMBER = mmb2

)

GROUP BY MEMBER,jenis_kelamin, umur, status_nikah,telp, email,kota_rmh,ol_order

)




